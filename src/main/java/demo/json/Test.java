package demo.json;

import com.alibaba.fastjson.JSON;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by zhoumeng on
 * 2017.6.26.
 * 下午 07:16.
 */
public class Test {
    public static void main(String[] args) throws IOException {

        Weather weather = new Weather("33", "50", "12");
        System.out.println(JSON.toJSONString(weather));

        List<Weather> weathers = new ArrayList<>();
        for (int i = 0; i < 3; i++) {
            weathers.add(new Weather("tmp" + i, "hum" + i, "spd" + i));
        }
        System.out.println(JSON.toJSONString(weathers));

        String jsonObjectString = "{\"hum\":\"50\",\"spd\":\"12\",\"tmp\":\"33\"}";
        System.out.println(JSON.parseObject(jsonObjectString, Weather.class));

        String jsonArrayString = "[{\"hum\":\"hum0\",\"spd\":\"spd0\",\"tmp\":\"tmp0\"},{\"hum\":\"hum1\",\"spd\":\"spd1\",\"tmp\":\"tmp1\"},{\"hum\":\"hum2\",\"spd\":\"spd2\",\"tmp\":\"tmp2\"}]";
        System.out.println(JSON.parseArray(jsonArrayString, Weather.class));
    }
}
