package com.blank.project.infra.log;

import java.util.logging.Logger;

public class LoggerFactory {

	public static Logger log(Class<?> clazz) {
		return Logger.getLogger(clazz.getName());
	}
}