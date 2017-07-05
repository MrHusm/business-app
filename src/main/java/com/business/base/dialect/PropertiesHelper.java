package com.business.base.dialect;
import java.util.Properties;
/**
 * @author hushengmeng
 * @date 2017/7/5.
 */

public class PropertiesHelper
{
    private static Properties properties;

    public PropertiesHelper(Properties properties)
    {
        properties = properties;
    }
    public static String getRequiredString(String key) {
        return (String)properties.get(key);
    }
}
