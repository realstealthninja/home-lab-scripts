# DISCORD BOTS ALPINE LXC
# location /etc/init.d/luna-bot
# Runs a discord bot using openrc on boot
#!/sbin/openrc-run


command="/usr/local/bin/luna-bot"
pidfile="/run/$RC_SVCNAME/$RC_SVCNAME.pid"
command_args="-p ${pidfile} --make-pidfile --remove-pidfile"
command_background=True
output_log="/var/log/$RC_SVCNAME/luna-bot.log"
error_log="/var/log/$RC_SVCNAME/luna-bot.err"


start_pre() {
        checkpath --directory --mode 0700 --owner root:root "/run/$RC_SVCNAME/"
}



depend() {
        need net
}
