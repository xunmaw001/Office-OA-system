package com.dao;

import com.entity.YuangongjiankangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YuangongjiankangVO;
import com.entity.view.YuangongjiankangView;


/**
 * 员工健康
 * 
 * @author 
 * @email 
 * @date 2020-12-28 17:10:33
 */
public interface YuangongjiankangDao extends BaseMapper<YuangongjiankangEntity> {
	
	List<YuangongjiankangVO> selectListVO(@Param("ew") Wrapper<YuangongjiankangEntity> wrapper);
	
	YuangongjiankangVO selectVO(@Param("ew") Wrapper<YuangongjiankangEntity> wrapper);
	
	List<YuangongjiankangView> selectListView(@Param("ew") Wrapper<YuangongjiankangEntity> wrapper);

	List<YuangongjiankangView> selectListView(Pagination page,@Param("ew") Wrapper<YuangongjiankangEntity> wrapper);
	
	YuangongjiankangView selectView(@Param("ew") Wrapper<YuangongjiankangEntity> wrapper);
	
}
