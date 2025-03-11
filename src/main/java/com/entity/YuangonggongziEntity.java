package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 员工工资
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2020-12-28 17:10:33
 */
@TableName("yuangonggongzi")
public class YuangonggongziEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YuangonggongziEntity() {
		
	}
	
	public YuangonggongziEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 工资单号
	 */
					
	private String gongzidanhao;
	
	/**
	 * 工资名称
	 */
					
	private String gongzimingcheng;
	
	/**
	 * 月份
	 */
					
	private String yuefen;
	
	/**
	 * 年份
	 */
					
	private Integer nianfen;
	
	/**
	 * 员工工号
	 */
					
	private String yuangonggonghao;
	
	/**
	 * 员工姓名
	 */
					
	private String yuangongxingming;
	
	/**
	 * 部门
	 */
					
	private String bumen;
	
	/**
	 * 职位
	 */
					
	private String zhiwei;
	
	/**
	 * 底薪
	 */
					
	private Integer dixin;
	
	/**
	 * 绩效
	 */
					
	private Integer jixiao;
	
	/**
	 * 补贴
	 */
					
	private Integer butie;
	
	/**
	 * 奖励
	 */
					
	private Integer jiangli;
	
	/**
	 * 加班工资
	 */
					
	private Integer jiabangongzi;
	
	/**
	 * 工龄工资
	 */
					
	private Integer gonglinggongzi;
	
	/**
	 * 五险一金
	 */
					
	private Integer wuxianyijin;
	
	/**
	 * 考勤扣款
	 */
					
	private Integer kaoqinkoukuan;
	
	/**
	 * 其他扣款
	 */
					
	private Integer qitakoukuan;
	
	/**
	 * 实发工资
	 */
					
	private Integer shifagongzi;
	
	/**
	 * 备注
	 */
					
	private String beizhu;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：工资单号
	 */
	public void setGongzidanhao(String gongzidanhao) {
		this.gongzidanhao = gongzidanhao;
	}
	/**
	 * 获取：工资单号
	 */
	public String getGongzidanhao() {
		return gongzidanhao;
	}
	/**
	 * 设置：工资名称
	 */
	public void setGongzimingcheng(String gongzimingcheng) {
		this.gongzimingcheng = gongzimingcheng;
	}
	/**
	 * 获取：工资名称
	 */
	public String getGongzimingcheng() {
		return gongzimingcheng;
	}
	/**
	 * 设置：月份
	 */
	public void setYuefen(String yuefen) {
		this.yuefen = yuefen;
	}
	/**
	 * 获取：月份
	 */
	public String getYuefen() {
		return yuefen;
	}
	/**
	 * 设置：年份
	 */
	public void setNianfen(Integer nianfen) {
		this.nianfen = nianfen;
	}
	/**
	 * 获取：年份
	 */
	public Integer getNianfen() {
		return nianfen;
	}
	/**
	 * 设置：员工工号
	 */
	public void setYuangonggonghao(String yuangonggonghao) {
		this.yuangonggonghao = yuangonggonghao;
	}
	/**
	 * 获取：员工工号
	 */
	public String getYuangonggonghao() {
		return yuangonggonghao;
	}
	/**
	 * 设置：员工姓名
	 */
	public void setYuangongxingming(String yuangongxingming) {
		this.yuangongxingming = yuangongxingming;
	}
	/**
	 * 获取：员工姓名
	 */
	public String getYuangongxingming() {
		return yuangongxingming;
	}
	/**
	 * 设置：部门
	 */
	public void setBumen(String bumen) {
		this.bumen = bumen;
	}
	/**
	 * 获取：部门
	 */
	public String getBumen() {
		return bumen;
	}
	/**
	 * 设置：职位
	 */
	public void setZhiwei(String zhiwei) {
		this.zhiwei = zhiwei;
	}
	/**
	 * 获取：职位
	 */
	public String getZhiwei() {
		return zhiwei;
	}
	/**
	 * 设置：底薪
	 */
	public void setDixin(Integer dixin) {
		this.dixin = dixin;
	}
	/**
	 * 获取：底薪
	 */
	public Integer getDixin() {
		return dixin;
	}
	/**
	 * 设置：绩效
	 */
	public void setJixiao(Integer jixiao) {
		this.jixiao = jixiao;
	}
	/**
	 * 获取：绩效
	 */
	public Integer getJixiao() {
		return jixiao;
	}
	/**
	 * 设置：补贴
	 */
	public void setButie(Integer butie) {
		this.butie = butie;
	}
	/**
	 * 获取：补贴
	 */
	public Integer getButie() {
		return butie;
	}
	/**
	 * 设置：奖励
	 */
	public void setJiangli(Integer jiangli) {
		this.jiangli = jiangli;
	}
	/**
	 * 获取：奖励
	 */
	public Integer getJiangli() {
		return jiangli;
	}
	/**
	 * 设置：加班工资
	 */
	public void setJiabangongzi(Integer jiabangongzi) {
		this.jiabangongzi = jiabangongzi;
	}
	/**
	 * 获取：加班工资
	 */
	public Integer getJiabangongzi() {
		return jiabangongzi;
	}
	/**
	 * 设置：工龄工资
	 */
	public void setGonglinggongzi(Integer gonglinggongzi) {
		this.gonglinggongzi = gonglinggongzi;
	}
	/**
	 * 获取：工龄工资
	 */
	public Integer getGonglinggongzi() {
		return gonglinggongzi;
	}
	/**
	 * 设置：五险一金
	 */
	public void setWuxianyijin(Integer wuxianyijin) {
		this.wuxianyijin = wuxianyijin;
	}
	/**
	 * 获取：五险一金
	 */
	public Integer getWuxianyijin() {
		return wuxianyijin;
	}
	/**
	 * 设置：考勤扣款
	 */
	public void setKaoqinkoukuan(Integer kaoqinkoukuan) {
		this.kaoqinkoukuan = kaoqinkoukuan;
	}
	/**
	 * 获取：考勤扣款
	 */
	public Integer getKaoqinkoukuan() {
		return kaoqinkoukuan;
	}
	/**
	 * 设置：其他扣款
	 */
	public void setQitakoukuan(Integer qitakoukuan) {
		this.qitakoukuan = qitakoukuan;
	}
	/**
	 * 获取：其他扣款
	 */
	public Integer getQitakoukuan() {
		return qitakoukuan;
	}
	/**
	 * 设置：实发工资
	 */
	public void setShifagongzi(Integer shifagongzi) {
		this.shifagongzi = shifagongzi;
	}
	/**
	 * 获取：实发工资
	 */
	public Integer getShifagongzi() {
		return shifagongzi;
	}
	/**
	 * 设置：备注
	 */
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}

}
