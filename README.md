
### eclipse에서 maven으로 패키징 만들때   

####1. 로컬 
> clean package -Dspring.profiles.active=local

####2. 개발 
> clean package -Dspring.profiles.active=dev

### 톰켓에서 war로 배포할 때
tomcat/bin안에 setenv.sh(리눅스) or setenv.bat(윈도우)파일을 만든다. 

*윈도우*
> set JAVA_OPTS=%JAVA_OPTS% -Dspring.profiles.active=dev

*리눅스*
> export JAVA_OPTS="$JAVA_OPTS -Dspring.profiles.active=dev"