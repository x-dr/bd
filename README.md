> ql repo https://gh.tryxd.cn/https://github.com/x-dr/bd.git "jd_" "activity|backUp|old" "^jd[^_]|USER|JDJRValidator_Pure|sign_graphics_validate|code.sh|ZooFaker_Necklace.js|gitlog.sh|JD_DailyBonus.js|ql.js|sendNotify.js" "main"





IOS/安卓： 快手极速版
脚本地址：
https://raw.githubusercontent.com/leafxcy/JavaScript/main/ksjsb.js

加了几个任务，现在一天可以到9毛以上
脚本目前会做签到和翻倍，开宝箱和翻倍，看广告任务，逛街任务，抽奖和翻倍，多账户互助
看直播任务暂时未解决

青龙把任意包里的kuaishou.api_st=xxxxxxxxxxxx;这一串东西放到变量ksjsbCookie里，多账户换行隔开
export ksjsbCookie='kuaishou.api_st=xxxxxxxxxxxx;'

默认每天15点兑换金币和提现，要改的话把提现时间填到变量ksjsbWithdrawTime里
默认提现3块，要改的话把提现金额填到变量ksjsbCash里。如果提现失败，手动接验证码提现一次

定时一天15次，最好改掉默认时间，不然太多人同一时间跑

重写：
[task_local]
#快手极速版
38 7-22 * * * https://raw.githubusercontent.com/leafxcy/JavaScript/main/ksjsb.js, tag=快手极速版, enabled=true
[rewrite_local]
appsupport/yoda/biz/info url script-request-header https://raw.githubusercontent.com/leafxcy/JavaScript/main/ksjsb.js
ksapp/client/package/renew url script-request-header https://raw.githubusercontent.com/leafxcy/JavaScript/main/ksjsb.js
[MITM]
#IOS用第一个，安卓用第二个
hostname = api.kuaisho*.com
hostname = open.kuaisho*.com



一天一块多