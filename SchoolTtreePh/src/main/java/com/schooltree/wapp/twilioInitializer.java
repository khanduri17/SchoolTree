package com.schooltree.wapp;

import org.springframework.context.annotation.Configuration;

import com.twilio.Twilio;
@Configuration
public class twilioInitializer {

	TwilioProperties twilioprop;
	public twilioInitializer(TwilioProperties twilioprop) {
		this.twilioprop=twilioprop;
		Twilio.init(twilioprop.getAccountSid(), twilioprop.getAuthToken());
	}

}
