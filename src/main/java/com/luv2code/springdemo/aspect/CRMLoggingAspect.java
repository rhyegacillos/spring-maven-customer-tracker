package com.luv2code.springdemo.aspect;

import java.util.logging.Logger;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class CRMLoggingAspect {
	
	private  Logger logger = Logger.getLogger(getClass().getName());
	
	@Pointcut("execution(* com.luv2code.springdemo.controller.*.*(..))")
	private void forControllerPackage() {}
	
	@Pointcut("execution(* com.luv2code.springdemo.service.*.*(..))")
	private void forServicePackage() {}
	
	@Pointcut("execution(* com.luv2code.springdemo.dao.*.*(..))")
	private void forDaoPackage() {}
	
	@Pointcut("forControllerPackage() || forServicePackage() || forDaoPackage()")
	private void forAppFlow() {}
	
	@Before("forAppFlow()")
	private void before(JoinPoint joinPoint) {
		String methodSignature = joinPoint.getSignature().toShortString();
		logger.info("========> in @Before: calling method: " + methodSignature);
	
		//display the arguments to the method signature
		Object[] args = joinPoint.getArgs();
		
		for (Object arg : args) {
			logger.info("====> argument: " + arg );
		}
	
	}
	
	
	@AfterReturning(pointcut="forAppFlow()", returning="result")
	public void afterReturning(JoinPoint joinPoint, Object result){
		String methodSignature = joinPoint.getSignature().toShortString();
		logger.info("========> in @AfterReturning: from method: " + methodSignature);
		
		// display data returned
		logger.info("====> result: " + result);
	}

}
