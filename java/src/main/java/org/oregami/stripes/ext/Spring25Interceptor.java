package org.oregami.stripes.ext;

import javax.servlet.ServletContext;

import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.controller.ExecutionContext;
import net.sourceforge.stripes.controller.Interceptor;
import net.sourceforge.stripes.controller.Intercepts;
import net.sourceforge.stripes.controller.LifecycleStage;
import net.sourceforge.stripes.controller.StripesFilter;

import org.springframework.beans.factory.config.AutowireCapableBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.util.StringUtils;
import org.springframework.web.context.support.WebApplicationContextUtils;

@Intercepts(LifecycleStage.ActionBeanResolution)
public class Spring25Interceptor implements Interceptor {

	public Resolution intercept(ExecutionContext context) throws Exception {
		Resolution resolution = context.proceed();
		ServletContext servletContext = StripesFilter.getConfiguration().getServletContext();
		ApplicationContext applicationContext = WebApplicationContextUtils.getWebApplicationContext(servletContext);
		AutowireCapableBeanFactory beanFactory = applicationContext.getAutowireCapableBeanFactory();
		beanFactory.autowireBeanProperties(context.getActionBean(), AutowireCapableBeanFactory.AUTOWIRE_NO, false);
		beanFactory.initializeBean(context.getActionBean(), StringUtils.uncapitalize(context.getActionBean().getClass().getSimpleName()));
		return resolution;
	}
}
