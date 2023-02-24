
if [[ $CI_JOB_STATUS == "success" ]]; then
    CI_JOB_STATUS="success"
else
  CI_JOB_STATUS="failed"
fi

TELEGRAM_USER_ID=789640078
TELEGRAM_BOT_TOKEN="5927752679:AAEA28KmUcl0yjOG3sqMP-IBXfJpNO7kVRQ"

URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"
TEXT="Status: $CI_JOB_STATUS%0A%0AProject:+$CI_PROJECT_NAME%0AName:+$CI_JOB_NAME"

curl -s -d "chat_id=$TELEGRAM_USER_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
