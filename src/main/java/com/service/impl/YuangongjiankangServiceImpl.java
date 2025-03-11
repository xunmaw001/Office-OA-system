package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.YuangongjiankangDao;
import com.entity.YuangongjiankangEntity;
import com.service.YuangongjiankangService;
import com.entity.vo.YuangongjiankangVO;
import com.entity.view.YuangongjiankangView;

@Service("yuangongjiankangService")
public class YuangongjiankangServiceImpl extends ServiceImpl<YuangongjiankangDao, YuangongjiankangEntity> implements YuangongjiankangService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YuangongjiankangEntity> page = this.selectPage(
                new Query<YuangongjiankangEntity>(params).getPage(),
                new EntityWrapper<YuangongjiankangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YuangongjiankangEntity> wrapper) {
		  Page<YuangongjiankangView> page =new Query<YuangongjiankangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YuangongjiankangVO> selectListVO(Wrapper<YuangongjiankangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YuangongjiankangVO selectVO(Wrapper<YuangongjiankangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YuangongjiankangView> selectListView(Wrapper<YuangongjiankangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YuangongjiankangView selectView(Wrapper<YuangongjiankangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
