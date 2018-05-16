package dao;

import java.util.ArrayList;
import java.util.List;

import entity.Emp;

public class EmpDao {
	public List<Emp> findAll() {
		List<Emp> list = new ArrayList<Emp>();
		Emp e1 = new Emp();
		e1.setEmpno(1);
		e1.setEname("甲");
		e1.setJob("员工");
		e1.setSal(1111.1);
		list.add(e1);
		
		Emp e2 = new Emp();
		e2.setEmpno(2);
		e2.setEname("乙");
		e2.setJob("员工");
		e2.setSal(2333.3);
		list.add(e2);
		
		Emp e3 = new Emp();
		e3.setEmpno(3);
		e3.setEname("丙");
		e3.setJob("领导");
		e3.setSal(3333.3);
		list.add(e3);
		return list;
	}
	public void save(Emp e) {
		System.out.println("已增加员工"+e.getEname());
	}
}
