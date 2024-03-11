/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package flowerStore.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author TG DD
 */
public class API {
    public static String getName(String fullname){
        String s ="";
        for(int i=fullname.length()-1; i>=0 ;i--){
            if(fullname.charAt(i)==' ')break;
            s = fullname.charAt(i) + s;
        }
        return s;
    }
    
    public static String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(password.getBytes());
            byte[] bytes = md.digest();
            StringBuilder sb = new StringBuilder();
            for (byte aByte : bytes) {
                sb.append(Integer.toString((aByte & 0xff) + 0x100, 16).substring(1));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            // Handle the exception or rethrow it
            throw new RuntimeException("Hashing algorithm not available", e);
        }
    }
}
