ADMINS="@Hlcpereira @baalajimaestro @AndroidPie9 @Dyneteve"

function sendMaintainers() {
    curl -s "https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendmessage" --data "text=${*}&chat_id=-1001287849567&disable_web_page_preview=true&parse_mode=Markdown" > /dev/null
}

sendMaintainers "\`Xiaomi Vendor Cron%0A%0AI have recieved PR $(cat /tmp/gh_number)\`%0A%0A\`Please look in\` ${ADMINS}%0A%0A[PR Link]($(cat /tmp/gh_url))"

echo "Build Finished!"
