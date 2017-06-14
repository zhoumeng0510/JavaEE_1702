package demo.util;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by zhoumeng on
 * 2017.6.14.
 * 下午 02:08.
 */
@WebFilter (urlPatterns = "/*")
public class EncodingFilter implements Filter {//filter 过滤器 encoding 编码

    private static final String ENCODING = "UTF-8";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // initialization  初始化
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding(ENCODING);
        response.setCharacterEncoding(ENCODING);
        //chain  链
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {//destroy 销毁

    }
}
