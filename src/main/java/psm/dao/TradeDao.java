package psm.dao;

import java.util.List;

import psm.vo.Trade;

public interface TradeDao {
	List<Trade> selectList() throws Exception;
	List<Trade> selectOwnList(String id) throws Exception;
	List<Trade> selectBidList(String dealId) throws Exception;
	int insert(Trade trade) throws Exception;
	Trade selectOne(int no) throws Exception;
	int updateContent(Trade trade) throws Exception;
	int updateState(int no,int state) throws Exception;
	int updateDealId(int no, String dealId) throws Exception;
	//int delete(int no) throws Exception;
}
