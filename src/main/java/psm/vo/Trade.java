package psm.vo;

import java.util.Date;

public class Trade {
	protected int no;
	protected String title;
	protected Date createDate;
	protected int id;
	protected int price;
	protected int condition;
	protected int state;
	protected String content;
	protected int dealId;
	
	public int getNo() {
		return no;
	}
	public Trade setNo(int no) {
		this.no = no;
		return this;
	}
	public String getTitle() {
		return title;
	}
	public Trade setTitle(String title) {
		this.title = title;
		return this;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public Trade setCreateDate(Date createDate) {
		this.createDate = createDate;
		return this;
	}
	public int getId() {
		return id;
	}
	public Trade setId(int id) {
		this.id = id;
		return this;
	}
	public int getPrice() {
		return price;
	}
	public Trade setPrice(int price) {
		this.price = price;
		return this;
	}
	public int getState() {
		return state;
	}
	public Trade setState(int state) {
		this.state = state;
		return this;
	}
	public String getContent() {
		return content;
	}
	public Trade setContetnt(String content) {
		this.content = content;
		return this;
	}
	public int getDealId() {
		return id;
	}
	public Trade setDealId(int dealId) {
		this.dealId = dealId;
		return this;
	}
	
}