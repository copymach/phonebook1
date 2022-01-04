package com.javaex.dao;

public class TestDao {

	   public static void main(String[] args) {
	      
//	      PhoneDao pd= new PhoneDao();
//	      pd.PersonSelect();

	      PhoneDao phoneDao= new PhoneDao();
	      


	    PhoneDao phoneDao = new PhoneDao();
	    List<PersonVo> personList =phoneDao.PersonSelect();
	    List<PersonVo> personList = phoneDao.getPersonList();
	    List<PersonVo> personList = new ArrayList<PersonVo>();
	      
	      
	      List personList = phoneDao.PersonSelect();
	      
	      List<PersonVo> personList  = phoneDao.PersonSelect();

	      List<PersonVo> personList = phoneDao.PersonSelect();
	      System.out.println("---------------------");
	    List<PersonVo> personList = phoneDao.getPersonList();
	    System.out.println("---------------------");
	    List<PersonVo> personList = new ArrayList<PersonVo>();
	   }
	}
