package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Course;
import entity.Student;

@WebServlet("/find_student")
public class FindStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		/*
		 * 在MVC模式下，Servlet处理请求的步骤大致如下: 
		 * 1.接收参数 
		 * 2.根据参数处理业务
		 * 3.重定向或转发
		 * 重定向特点：
		 * 	1.二次请求
		 * 	2.地址改变
		 * 	3.两个组件使用两个request，不能通过它共享数据
		 * 	4.可以重定向到项目之外的组件
		 * 
		 * 转发特点：
		 * 	1.一次请求
		 * 	2.地址不变
		 * 	3.两个组件公用一个request，可以共享其内部数据
		 * 	4.只能转发给内部项目组件
		 */
		//模拟一个学生
		Student stu = new Student();
		stu.setName("张三");
		stu.setAge(20);
		stu.setSex("M");
		stu.setInterests(new String[]{"电影","看书","跑步"});
		Course c = new Course();
		c.setCourseId(1);
		c.setName("Java");
		c.setDays(80);
		stu.setCourse(c);
		//转发
		req.setAttribute("stu", stu);
		req.getRequestDispatcher("student.jsp").forward(req, res);
	}

}
