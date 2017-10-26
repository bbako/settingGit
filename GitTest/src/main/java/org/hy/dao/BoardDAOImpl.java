package org.hy.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.hy.domain.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class BoardDAOImpl implements BoardDAO {
	
	private static String namespace = "BoardDAO";
	
	@Autowired
	SqlSession sess;

	@Override
	public void create(BoardVO vo) throws Exception {
			sess.insert(namespace+".create", vo);
	}

	@Override
	public List<BoardVO> readALL() throws Exception {
		return sess.selectList(namespace+".readAll");

	}

	@Override
	public BoardVO readOne(String seq_id) throws Exception {
			return sess.selectOne(namespace+".readOne",seq_id);
	}

	@Override
	public void update(BoardVO vo) throws Exception {
			sess.update(namespace+".update",vo);
	}

	@Override
	public void delete(String seq_id) throws Exception {
		sess.delete(namespace+".delete", seq_id);
	}



}
