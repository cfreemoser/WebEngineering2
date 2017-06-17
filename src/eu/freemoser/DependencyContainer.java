package eu.freemoser;


import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by freim on 16.06.2017.
 */
public class DependencyContainer {
    private static Map<java.lang.Class, Object> map;

    static {
        map = new HashMap<>();
    }

    public static Object loadInstance(java.lang.Class key) {
        if (map.get(key) == null) {
            Constructor ctor = key.getDeclaredConstructors()[0];
            ctor.setAccessible(true);
            try {
                map.put(key, ctor.newInstance());
            } catch (InstantiationException | IllegalAccessException | InvocationTargetException e) {
                e.printStackTrace();
            }
        }
        return map.get(key);
    }


}
