package cn.mycms.share.service;

import java.util.List;

import cn.mycms.share.pojo.Course;

public interface CourseServcie {
/**
 * 找到主图
 * @return
 */
	Course findCourse();
/**
 * 查找课程信息
 * @return
 */
List<Course> findCourseList();

}
