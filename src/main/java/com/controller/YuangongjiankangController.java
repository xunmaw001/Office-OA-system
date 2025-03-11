package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.YuangongjiankangEntity;
import com.entity.view.YuangongjiankangView;

import com.service.YuangongjiankangService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 员工健康
 * 后端接口
 * @author 
 * @email 
 * @date 2020-12-28 17:10:33
 */
@RestController
@RequestMapping("/yuangongjiankang")
public class YuangongjiankangController {
    @Autowired
    private YuangongjiankangService yuangongjiankangService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,YuangongjiankangEntity yuangongjiankang, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yuangong")) {
			yuangongjiankang.setYuangonggonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<YuangongjiankangEntity> ew = new EntityWrapper<YuangongjiankangEntity>();
    	PageUtils page = yuangongjiankangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yuangongjiankang), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,YuangongjiankangEntity yuangongjiankang, HttpServletRequest request){
        EntityWrapper<YuangongjiankangEntity> ew = new EntityWrapper<YuangongjiankangEntity>();
    	PageUtils page = yuangongjiankangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, yuangongjiankang), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( YuangongjiankangEntity yuangongjiankang){
       	EntityWrapper<YuangongjiankangEntity> ew = new EntityWrapper<YuangongjiankangEntity>();
      	ew.allEq(MPUtil.allEQMapPre( yuangongjiankang, "yuangongjiankang")); 
        return R.ok().put("data", yuangongjiankangService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(YuangongjiankangEntity yuangongjiankang){
        EntityWrapper< YuangongjiankangEntity> ew = new EntityWrapper< YuangongjiankangEntity>();
 		ew.allEq(MPUtil.allEQMapPre( yuangongjiankang, "yuangongjiankang")); 
		YuangongjiankangView yuangongjiankangView =  yuangongjiankangService.selectView(ew);
		return R.ok("查询员工健康成功").put("data", yuangongjiankangView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        YuangongjiankangEntity yuangongjiankang = yuangongjiankangService.selectById(id);
        return R.ok().put("data", yuangongjiankang);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        YuangongjiankangEntity yuangongjiankang = yuangongjiankangService.selectById(id);
        return R.ok().put("data", yuangongjiankang);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody YuangongjiankangEntity yuangongjiankang, HttpServletRequest request){
    	yuangongjiankang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yuangongjiankang);

        yuangongjiankangService.insert(yuangongjiankang);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody YuangongjiankangEntity yuangongjiankang, HttpServletRequest request){
    	yuangongjiankang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(yuangongjiankang);

        yuangongjiankangService.insert(yuangongjiankang);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody YuangongjiankangEntity yuangongjiankang, HttpServletRequest request){
        //ValidatorUtils.validateEntity(yuangongjiankang);
        yuangongjiankangService.updateById(yuangongjiankang);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        yuangongjiankangService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<YuangongjiankangEntity> wrapper = new EntityWrapper<YuangongjiankangEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yuangong")) {
			wrapper.eq("yuangonggonghao", (String)request.getSession().getAttribute("username"));
		}

		int count = yuangongjiankangService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
