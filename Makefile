SOURCE=sms battery_check.sh
PREFIX=~/bin

.PHONY: install

install: $(SOURCE)
	cp $(SOURCE) $(PREFIX)
