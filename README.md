# Zabbix APC Template (without SNMP)

Zabbix APC Template dedicated for not-Windows APC PowerChute Business Edition installations which don't provide SNMP feature.
Especially for using VMA based installation (under vmWare ESXi).

### Features

Monitoring following items:
- Last update	 	
- Internal Temperature
- Frequency
- Battery Capacity
- UPS Load
- Output Frequency	 
- Line Voltage
- Output Voltage
- Battery Voltage

### Prerequisities

Linux based OS with installed 
- APC PowerChute Business Edition agent
- Zabbix Agent
- connected APC Smart-UPS


### Installing

1. Log in into PowerChute BE Web Interface (usually https://IP_ADDRESS:6547/logon), 
	- go to Logging -> Log settings
    - in Data Log Configuration section check Enable Data Logging
    - set Data Recording Interval to lowest value (0:10 - every 10 seconds)
    - click Apply
2. Put zabbix_apc.conf into your zabbix-agent include directory (ie. /etc/zabbix/zabbix-agentd.d)
3. Put apcget.sh into your zabbix-agent scripts directory (ie. /etc/zabbix/scripts)
4. Restart zabbix-agent
5. Import apc_powerchute_template.xml template into your Zabbix Server
6. Create new host (or edit existing) pointing to zabbix-agent configured above
7. Assign imported template to created host

## Authors

* **Dawid Mos** - (https://github.com/daftu)
