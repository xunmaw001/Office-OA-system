package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YuangongjiankangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YuangongjiankangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YuangongjiankangView;


/**
 * 员工健康
 *
 * @author 
 * @email 
 * @date 2020-12-28 17:10:33
 */
public interface YuangongjiankangService extends IService<YuangongjiankangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YuangongjiankangVO> selectListVO(Wrapper<YuangongjiankangEntity> wrapper);
   	
   	YuangongjiankangVO selectVO(@Param("ew") Wrapper<YuangongjiankangEntity> wrapper);
   	
   	List<YuangongjiankangView> selectListView(Wrapper<YuangongjiankangEntity> wrapper);
   	
   	YuangongjiankangView selectView(@Param("ew") Wrapper<YuangongjiankangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YuangongjiankangEntity> wrapper);
   	
}

