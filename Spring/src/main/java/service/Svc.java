package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import actionSvc.DataOperation;
import modeling2.New_table;
import modeling2.member;

@Service
public class Svc {
	
	@Autowired
	DataOperation dy;
	
	public List<New_table> svcSelect() {
		List<New_table> arr = new ArrayList<New_table>();
		arr = dy.select();
		return arr;
	} // svcSelect
	
	public void svcInsert(New_table mo) {
		dy.insert2(mo);
	} //svcInsert()
	
	public void svcDelete(Integer no) {
		dy.delete2(no);
	} // svcDelete
	
	public String svcLogin(member login) {
		
		String loginId = dy.login(login);

		return loginId;
	} // svcLogin
	
	public New_table svcSelectPost(Integer no) {
		
		New_table one = new New_table();
		
		one = dy.selectPost(no);
		
		return one;
	} //svcDp

}
