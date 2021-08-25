cp /ql/log/x-dr_bd_main_jd_bean_change_new/$(date +%Y-%m-%d)*.log /ql/gitlog
cd /ql/gitlog
git add .
git commit -m "$(date +%Y-%m-%d)"
git pull
git push