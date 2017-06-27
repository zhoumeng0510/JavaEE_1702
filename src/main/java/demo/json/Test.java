package demo.json;

import com.fasterxml.jackson.databind.ObjectMapper;

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
        ObjectMapper objectMapper = new ObjectMapper();
//        objectMapper.configure(SerializationFeature.INDENT_OUTPUT, true);

        Weather weather = new Weather("33", "50", "12");
        System.out.println(objectMapper.writeValueAsString(weather));


        List<Weather> weathers = new ArrayList<>();
        for (int i = 0; i < 3; i++) {
            weathers.add(new Weather("tmp" + i, "hum" + i, "spd" + i));
        }
        System.out.println(objectMapper.writeValueAsString(weathers));

        Weather newWeather = objectMapper.readValue("{\"tmp\":\"33\",\"hum\":\"50\",\"spd\":\"12\"}", Weather.class);
        System.out.println(newWeather);
    }
}
