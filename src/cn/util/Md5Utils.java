package cn.util;

import java.math.BigInteger;
import java.security.MessageDigest;

/**
 * @author wgy
 * @version V1.0
 * @Project gp7xiaomi
 * @Package com.qf.utils
 * @Description: ${TODO}
 * @Date 2021/4/30 15:49
 */
public class Md5Utils {

    public static String md5(String str){

        try {
            //1获取消息摘要算法
            MessageDigest md5= MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes("utf-8");
            for(int i=0;i<bytes.length;i++){
                bytes[i]-=5;
            }
            //2更新数据
            md5.update(bytes);
            //3加密
            byte[] digest = md5.digest();
            //4返回
            return new BigInteger(1,digest).toString(16);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
