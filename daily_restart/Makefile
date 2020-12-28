install:
	eval $(shell ssh-agent -s)
	ssh root@remarkable systemctl disable daily.timer || true
	scp daily.timer root@remarkable:/etc/systemd/system/daily.timer
	scp restart.service root@remarkable:/etc/systemd/system/daily.service
	ssh root@remarkable systemctl daemon-reload
	ssh root@remarkable systemctl enable --now daily.timer 
