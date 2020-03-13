ADMINS="@Hlcpereira @baalajimaestro @Shreejoy\_Dash @Dyneteve"

function sendMaintainers() {
    curl -s "https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendmessage" --data "text=${*}&chat_id=-1001287849567&disable_web_page_preview=true&parse_mode=Markdown" > /dev/null
}

sendMaintainers "\`Xiaomi Vendor Cron%0A%0AI have recieved PR $SEMAPHORE_GIT_PR_NUMBER\`%0A%0A\`Please look in\` ${ADMINS}%0A%0A[PR Link](https://github.com/PixelExperience-Devices/vendor_xiaomi/pull/$SEMAPHORE_GIT_PR_NUMBER)"

echo "Build Finished!"
