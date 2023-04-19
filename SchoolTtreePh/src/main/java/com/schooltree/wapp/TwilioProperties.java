package com.schooltree.wapp;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConfigurationProperties("twilio")
public class TwilioProperties {

	private String accountSid="ACc0829d6df5d86ae21f679ee5d97249e9";
	private String authToken="a8d692e34d8a03228a1a594d8cdd5dda";
	private String serviceId="VAd716fa5208b3dbab49dc5158cb0ef162";
	public TwilioProperties() {
		super();
	}
	public String getAccountSid() {
		return accountSid;
	}
	public void setAccountSid(String accountSid) {
		this.accountSid = accountSid;
	}
	public String getAuthToken() {
		return authToken;
	}
	public void setAuthToken(String authToken) {
		this.authToken = authToken;
	}
	public String getServiceId() {
		return serviceId;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
}
