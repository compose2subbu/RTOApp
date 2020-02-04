package commonlogger;
import org.apache.log4j.Logger;
public class CommonLogger {
    /**
     * Contains the Logger instance
     */
    private Logger logger = null;

    /**
     * Constructor that takes Log Name String as arguement
     *
     * @param logName
     */
    private CommonLogger(String logName) {
        logger = Logger.getLogger(logName);
    }

    /**
     * Constructor that takes Log Name String as arguement
     *
     * @param component
     */
    @SuppressWarnings("unchecked")
	private CommonLogger(Class component) {
        logger = Logger.getLogger(component);
    }

    /**
     * Method getInstance to get the instance of the logger.
     *
     * @param logName Class to construct a category instance
     * @return
     */
    public static synchronized CommonLogger getLogger(String logName) {
        return new CommonLogger(logName);
    }

    /**
     * Method getInstance to get the instance of the logger.
     *
     * @param component Class to construct a category instance
     * @return
     */
    @SuppressWarnings("unchecked")
	public static synchronized CommonLogger getLogger(Class component) {
        return new CommonLogger(component);
    }

    /**
     * Logs the message with severity as DEBUG.
     *
     * @param message Explicit message to Log
     */
    public void debug(Object message) {
        if (logger.isDebugEnabled()) {
            logger.debug(message);
        }
    }

    /**
     * Logs the Exception with a message and severity as DEBUG.
     *
     * @param message   Explicit message to Log
     * @param throwable Exception to Log
     */
    public void debug(Object message, Throwable throwable) {
        if (logger.isDebugEnabled()) {
            logger.debug(message, throwable);
        }
    }

    /**
     * Logs the message with severity as ERROR.
     *
     * @param message Explicit message to Log
     */
    public void error(Object message) {
        logger.error(message);
    }

    /**
     * Logs the Exception with a message and severity as ERROR.
     *
     * @param message   Explicit message to Log
     * @param throwable Exception to Log
     */
    public void error(Object message, Throwable throwable) {
        logger.error(message, throwable);
    }

    /**
     * Logs the message with severity as FATAL.
     *
     * @param message Explicit message to Log
     */
    public void fatal(Object message) {
        logger.fatal(message);
    }

    /**
     * Logs the Exception with a message and severity as FATAL.
     *
     * @param message   Explicit message to Log
     * @param throwable Exception to Log
     */
    public void fatal(Object message, Throwable throwable) {
        logger.fatal(message, throwable);
    }

    /**
     * Logs the message with severity as INFO.
     *
     * @param message Explicit message to Log
     */
    public void info(Object message) {
        if (logger.isInfoEnabled()) {
            logger.info(message);
        }
    }

    /**
     * Logs the Exception with a message and severity as INFO.
     *
     * @param message   Explicit message to Log
     * @param throwable Exception to Log
     */
    public void info(Object message, Throwable throwable) {
        if (logger.isInfoEnabled()) {
            logger.info(message, throwable);
        }
    }

    /**
     * Logs the message with severity as WARNING.
     *
     * @param message Explicit message to Log
     */
    public void warn(Object message) {
        logger.warn(message);
    }

    /**
     * Logs the Exception with a message  and severity as WARNING.
     *
     * @param message   Explicit message to Log
     * @param throwable Exception to Log
     */
    public void warn(Object message, Throwable throwable) {
        logger.warn(message, throwable);
    }
}
