package com.entity.view;

import com.entity.YuangongjiankangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 员工健康
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2020-12-28 17:10:33
 */
@TableName("yuangongjiankang")
public class YuangongjiankangView  extends YuangongjiankangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YuangongjiankangView(){
	}
 
 	public YuangongjiankangView(YuangongjiankangEntity yuangongjiankangEntity){
 	try {
			BeanUtils.copyProperties(this, yuangongjiankangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
