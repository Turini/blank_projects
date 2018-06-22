package com.blank.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

import java.util.logging.Logger;

import static com.blank.project.infra.log.LoggerFactory.log;

@SpringBootApplication
public class Application extends SpringBootServletInitializer {

    private static final Logger LOG = log(SpringBootServletInitializer.class);

    public static void main(String[] args) {
        LOG.info("Starting spring boot application");
        SpringApplication.run(Application.class, args);
    }
}