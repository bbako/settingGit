package org.hy.service;

import java.util.List;

import org.hy.dao.BoardDAO;
import org.hy.domain.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO dao;

	@Override
	public void create(BoardVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public BoardVO readOne(String seq_id) throws Exception {
		return dao.readOne(seq_id);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
			dao.update(vo);
	}

	@Override
	public void delete(String seq_id) throws Exception {
			dao.delete(seq_id);
	}

	@Override
	public List<BoardVO> readALL() throws Exception {
		return dao.readALL();
	}

}
