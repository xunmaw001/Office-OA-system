package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.GongsigonggaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.GongsigonggaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.GongsigonggaoView;


/**
 * 公司公告
 *
 * @author 
 * @email 
 * @date 2020-12-28 17:10:33
 */
public interface GongsigonggaoService extends IService<GongsigonggaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<GongsigonggaoVO> selectListVO(Wrapper<GongsigonggaoEntity> wrapper);
   	
   	GongsigonggaoVO selectVO(@Param("ew") Wrapper<GongsigonggaoEntity> wrapper);
   	
   	List<GongsigonggaoView> selectListView(Wrapper<GongsigonggaoEntity> wrapper);
   	
   	GongsigonggaoView selectView(@Param("ew") Wrapper<GongsigonggaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<GongsigonggaoEntity> wrapper);
   	
}

