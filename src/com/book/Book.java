package com.book;

public class Book {
	private MongodbBean itsMongodbBean;
	private String bid;
	private String bnumber;
	private String btype;
	private String bname;

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String getBnumber() {
		return bnumber;
	}

	public void setBnumber(String bnumber) {
		this.bnumber = bnumber;
	}

	public String getBtype() {
		return btype;
	}

	public void setBtype(String btype) {
		this.btype = btype;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

}
