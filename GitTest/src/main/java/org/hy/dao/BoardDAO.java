package org.hy.dao;

import java.util.List;

import org.hy.domain.BoardVO;

public interface BoardDAO {
	
	public void create(BoardVO vo) throws Exception;
	public List<BoardVO> readALL() throws Exception;
	public BoardVO readOne(String seq_id) throws Exception;
	public void update(BoardVO vo) throws Exception;
	public void delete(String seq_id) throws Exception;

}
