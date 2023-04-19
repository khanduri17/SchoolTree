package com.schooltree.wapp;

import org.springframework.beans.factory.annotation.Autowired;
 
import org.springframework.stereotype.Service;

import com.schooltree.service.VerificationResult;
 import com.twilio.exception.ApiException;
import com.twilio.rest.verify.v2.service.Verification;
import com.twilio.rest.verify.v2.service.VerificationCheck;

@Service
public class PhoneverificationService {

	private final TwilioProperties twilioproperties;

	@Autowired
	public PhoneverificationService(TwilioProperties twilioproperties) {
		this.twilioproperties=twilioproperties;
	}
	
	
	//method to send to otp
    public VerificationResult startVerification(String phone) {
        try {
        	
            Verification verification = Verification.creator(twilioproperties.getServiceId(), phone, "sms").create();
         	 
            if("approved".equals(verification.getStatus())|| "pending".equals(verification.getStatus())) {
           
			return new VerificationResult(verification.getSid());
			}
            
        } catch (ApiException exception) {
        	 
            return new VerificationResult(new String[] {exception.getMessage()});
        }
        return null;
    }


	public VerificationResult checkverification(String phone, String otp) {
		 
		try {
		
            VerificationCheck verification = VerificationCheck.creator(twilioproperties.getServiceId(), otp).setTo(phone).create();
            if("approved".equals(verification.getStatus())) {
                return new VerificationResult(verification.getSid());
            }
            return new VerificationResult(new String[]{"Invalid code."});
        } catch (ApiException exception) {
            return new VerificationResult(new String[]{exception.getMessage()});
        }
    }
	
   

    
}
