FROM wso2/wso2am

# remove default deployment.toml from repository/conf
RUN \
	rm -f ${WSO2_SERVER_HOME}/repository/conf/deployment.toml
	
# copy custom deployment.toml to repository/conf
COPY --chown=wso2carbon:wso2 deployment.toml ${WSO2_SERVER_HOME}/repository/conf/