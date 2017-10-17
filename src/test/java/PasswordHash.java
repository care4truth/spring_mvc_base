import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

import junit.framework.TestCase;
import junit.framework.Test;

public class PasswordHash extends TestCase {
	
	public void testMD5Hash() {
		String password = "secret";
		Md5PasswordEncoder passwordEncoder = new Md5PasswordEncoder();
		String hashedPassword =  passwordEncoder.encodePassword(password,null);
		System.out.println(hashedPassword);
	}
}
