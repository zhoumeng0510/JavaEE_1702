package demo.util;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by zhoumeng on
 * 2017.6.15.
 * 上午 08:37.
 */
@WebListener
public class RequestListenerTest implements ServletRequestListener,ServletContextAttributeListener{
    @Override
    public void requestDestroyed(ServletRequestEvent sre) {//requestDestroyed 请求并销毁 Event 事件
        HttpServletRequest request =(HttpServletRequest) sre.getServletRequest();
        System.out.println("requestDestroyed  "+ request.getRequestURL());
    }

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        HttpServletRequest request =(HttpServletRequest) sre.getServletRequest();
        System.out.println("requestInitialized  "+request.getRequestURL());
    }

    @Override
    public void attributeAdded(ServletContextAttributeEvent srae) {
//        request.setAttribute
        System.out.println("attributeAdded: "+srae.getName()+","+srae.getValue());
    }

    @Override
    public void attributeRemoved(ServletContextAttributeEvent srae) {
        //
        System.out.println("attributeRemoved: "+srae.getName()+","+srae.getValue());
    }

    @Override
    public void attributeReplaced(ServletContextAttributeEvent srae) {
        //
        System.out.println("attributeReplaced: "+srae.getName()+","+srae.getValue());
    }
}
