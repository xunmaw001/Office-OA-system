package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YuangongqingjiaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YuangongqingjiaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YuangongqingjiaView;


/**
 * 员工请假
 *
 * @author 
 * @email 
 * @date 2020-12-28 17:10:33
 */
public interface YuangongqingjiaService extends IService<YuangongqingjiaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YuangongqingjiaVO> selectListVO(Wrapper<YuangongqingjiaEntity> wrapper);
   	
   	YuangongqingjiaVO selectVO(@Param("ew") Wrapper<YuangongqingjiaEntity> wrapper);
   	
   	List<YuangongqingjiaView> selectListView(Wrapper<YuangongqingjiaEntity> wrapper);
   	
   	YuangongqingjiaView selectView(@Param("ew") Wrapper<YuangongqingjiaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YuangongqingjiaEntity> wrapper);
   	
}

