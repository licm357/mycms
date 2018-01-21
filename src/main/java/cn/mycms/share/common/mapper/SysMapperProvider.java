package cn.mycms.share.common.mapper;

import static org.apache.ibatis.jdbc.SqlBuilder.BEGIN;
import static org.apache.ibatis.jdbc.SqlBuilder.DELETE_FROM;
import static org.apache.ibatis.jdbc.SqlBuilder.SQL;

import java.awt.image.AreaAveragingScaleFilter;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.Table;

import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.scripting.xmltags.ForEachSqlNode;
import org.apache.ibatis.scripting.xmltags.MixedSqlNode;
import org.apache.ibatis.scripting.xmltags.SqlNode;
import org.apache.ibatis.scripting.xmltags.StaticTextSqlNode;

import com.github.abel533.mapper.MapperProvider;
import com.github.abel533.mapperhelper.EntityHelper;
import com.github.abel533.mapperhelper.MapperHelper;


public class SysMapperProvider extends MapperProvider {

    public SysMapperProvider(Class<?> mapperClass, MapperHelper mapperHelper) {
        super(mapperClass, mapperHelper);
    }

    public SqlNode deleteByIDS(MappedStatement ms) {
        Class<?> entityClass = getSelectReturnType(ms);
        Set<EntityHelper.EntityColumn> entityColumns = EntityHelper.getPKColumns(entityClass);
        EntityHelper.EntityColumn column = null;
        for (EntityHelper.EntityColumn entityColumn : entityColumns) {
            column = entityColumn;
            break;
        }
        
        List<SqlNode> sqlNodes = new ArrayList<SqlNode>();
        // 开始拼sql
        BEGIN();
        // delete from table
        DELETE_FROM(tableName(entityClass));
        // 得到sql
        String sql = SQL();
        // 静态SQL部分
        sqlNodes.add(new StaticTextSqlNode(sql + " WHERE " + column.getColumn() + " IN "));
        // 构造foreach sql
        SqlNode foreach = new ForEachSqlNode(ms.getConfiguration(), new StaticTextSqlNode("#{"
                + column.getProperty() + "}"), "ids", "index", column.getProperty(), "(", ")", ",");
        sqlNodes.add(foreach);
        return new MixedSqlNode(sqlNodes);
    }
    /**
     * MyBatis接收sql的工具
     * SqlNode:sql存储的工具
     * MappedStatement：Mybatis内置对象
     * 问题：如何动态获取表名
     * 步骤：
     * 1.获取当前执行的Mapper的路径 com.jt.manage.mapper.ItemMapper.findAll()
     * 2.截取子串  com.jt.manage.mapper.ItemMapper
     * 3.通过反射可以获取Class ItemMapper.class
     * 4.获取类的父级接口  SysMapper<Item>
     * 5.获取泛型的参数 Item.class
     * 6.获取Item的注解@Table注解
     * 7.获取@Table的name属性值
     * 8.拼接sql语句： select count(*) from "name"
     * @param ms
     * @return
     * @throws ClassNotFoundException 
     */
    public SqlNode findCount(MappedStatement ms) {
    	//获取当前mapper执行的方法全路径 com.jt.manage.mapper.ItemMapper.findAll()
    	String methodPath=ms.getId();
    	//获取接口的路径 com.jt.manage.mapper.ItemMapper
    	String interfacePath=methodPath.substring(0, methodPath.lastIndexOf("."));
    	//通过反射获得class类型
    	try {
			Class<?> targetClass=Class.forName(interfacePath);
			//因为接口可多继承，但是类不可多继承，接口的父级为Type
			Type[] parentTypes = targetClass.getGenericInterfaces();
			//获取父级Type
			Type parentType = parentTypes[0];
			//判断当前上级是否为一个泛型接口
			if(parentType instanceof ParameterizedType){
				//将tupe类型转化为泛型，调用对应的方法
				ParameterizedType parameteriaedType =(ParameterizedType) parentType;
				Type[] argsTypes = parameteriaedType.getActualTypeArguments();
				//获取泛型参数的类型Class
				Class<?> argsClass = (Class<?>) argsTypes[0];
				//获取注解,先进行判断
				if(argsClass.isAnnotationPresent(Table.class)){
					//获取table注解
					Table table = argsClass.getAnnotation(Table.class);
					//获取name属性值
					String tableName = table.name();
					//拼接sql语句
					String sql="select count(*) from "+tableName;
					//准备sqlNode对象
					SqlNode sqlNode=new StaticTextSqlNode(sql);
					return sqlNode;
				}
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
		
    	
		
    	
    }

}
























