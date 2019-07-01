package com.zjw.ssm.util;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Aspect
@Service
public class SSMAspect {
	@Pointcut(value ="execution(* com.zjw.ssm.service.AdminService.*(..))")
	public void pointcut() {}
	@Before("execution(* com.zjw.ssm.service.AdminService.*(..))")
	public void before() {
		System.out.println("权限检查");
	}
	@After("pointcut()")
	public void after() {
		System.out.println("日志记录");
	}
	
}
