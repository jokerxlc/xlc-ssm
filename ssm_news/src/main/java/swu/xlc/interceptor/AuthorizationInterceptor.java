package swu.xlc.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import swu.xlc.domain.User;

import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthorizationInterceptor implements HandlerInterceptor {

    /*
    不拦截"/loginForm","/login","/forelist_new","/forelist"
     */
    private static final String[] IGNORE_URI={"/loginForm","/login","/forelist_new","/forelist","forenew_view","foreview_new","add_comment"};

    /*
    该方法是进行处理器拦截用的，该方法将在Controller处理之前调用
    该方法的返回值为true拦截器才会继续往下执行，该方法的返回值为false的时候整个请求就结束了
     */
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        System.out.println("AuthorizationInterceptor preHandle -->");
        //flag用于判断用户是否登录默认为false
        boolean flag=false;
        //获取请求的路径进行判断
        String servletPath = httpServletRequest.getServletPath();
        //判断请求是否需要拦截
        for (String s: IGNORE_URI){
            if (servletPath.contains(s)){
                flag=true;
                break;
            }
        }
        //拦截请求
        if (!flag){
            //获取session中的用户
            User user = (User) httpServletRequest.getSession().getAttribute("user");
            //判断用户是否已经登录
            if(user==null){
                System.out.println("AuthorizationInterceptor拦截请求：");
                httpServletRequest.setAttribute("message","请先登录再访问后台！");
                httpServletRequest.getRequestDispatcher("loginForm").forward(httpServletRequest,httpServletResponse);
            }
            else {
                //如果用户已经登录，则验证通过放行
                System.out.println("AuthorizationInterceptor放行请求：");
                flag=true;
            }
        }

        return flag;
    }

    /*
    该方法在Controller的方法调用后执行，方法中可以对ModelAndView进行操作
    该方法只能在当期的Interceptor的preHandle方法返回值为true时才会执行
     */
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        System.out.println("AuthorizationInterceptor postHandle -->");
}

    /*
    该方法在请求完成之后执行，主要作用是用于清理资源
    该方法只有在当前的Interceptor的preHandle方法的返回值为true时才会执行
     */
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        System.out.println("AuthorizationInterceptor afterCompletion -->");
    }
}
