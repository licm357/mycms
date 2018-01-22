package cn.mycms.share.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.mycms.share.mapper.CourseMapper;
import cn.mycms.share.pojo.Course;

@Service
public class CourseServiceImpl implements CourseServcie{
	@Autowired
	private CourseMapper courseMapper;
	public Course findCourse() {
		Course course=new Course();
		course.setCourseType(0L);
		List<Course> courseList=courseMapper.select(course);
		for (Course course2 : courseList) {
			return course2;
		}
		return null;
	}
	public List<Course> findCourseList() {
		Course course=new Course();
		//course.setCourseType(1L);
		return courseMapper.select(course);
	}

}
