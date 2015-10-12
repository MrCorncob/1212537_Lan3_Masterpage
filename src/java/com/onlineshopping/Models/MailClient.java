/*
 * Copyright 2015 Corncob.
 *
 */
package com.onlineshopping.Models;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailClient {

    static Properties mailServerProperties;
    static Session getMailSession;
    static MimeMessage generateMailMessage;
    private static final String USERNAME = "megarockc00@gmail.com";
    private static final String PASSWORD = "123Abc456";

    public void sendMail(String recipient, String subject, String content) throws AddressException, MessagingException {

        /*
         * Mail server setting 
         */
        mailServerProperties = System.getProperties();
        mailServerProperties.put("mail.smtp.port", "587");
        mailServerProperties.put("mail.smtp.auth", "true");
        mailServerProperties.put("mail.smtp.starttls.enable", "true");

        /*
         * Prepare mail content
         */
        getMailSession = Session.getDefaultInstance(mailServerProperties, null);
        generateMailMessage = new MimeMessage(getMailSession);
        generateMailMessage.setHeader("Content-Type", "text/html;charset=UTF-8");
        generateMailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
        generateMailMessage.setSubject(subject, "UTF-8");
        generateMailMessage.setContent(content, "text/html;charset=UTF-8");

        /*
         * Send mail
         */
        Transport transport = getMailSession.getTransport("smtp");
        transport.connect("smtp.gmail.com", USERNAME, PASSWORD);
        transport.sendMessage(generateMailMessage, generateMailMessage.getAllRecipients());
        transport.close();
    }
}
