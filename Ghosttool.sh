#!/bin/bash




echo "
   ________  ______  __________  __________  ____  __
  / ____/ / / / __ \/ ___/_  __/ /_  __/ __ \/ __ \/ /
 / / __/ /_/ / / / /\__ \ / /     / / / / / / / / / / 
/ /_/ / __  / /_/ /___/ // /     / / / /_/ / /_/ / /  
\____/_/ /_/\____//____//_/     /_/  \____/\____/_/   

[1] dalfox                   [2] Arjun
[3] nuclei                   [4] gf 
[5] gau                      [6] waybackurls
[7] xsser                    [8] Xsstrike
"
read -p "Tool Seç : " secenek


if [ "$secenek" = "1" ] ; then
	go install github.com/hahwul/dalfox/v2@latest

	grep -qxF 'export PATH=$PATH:$HOME/go/bin' ~/.bashrc || \
	echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bashrc

	source ~/.bashrc


elif [ "$secenek" = "2" ] ; then
	python3 -m venv myenv
	source myenv/bin/activate
        pip install arjun   
        deactivate    
elif [ "$secenek" = "3" ] ; then
	go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
	grep -qxF 'export PATH=$PATH:$HOME/go/bin' ~/.bashrc || \
	echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bashrc

	source ~/.bashrc

elif [ "$secenek" = "4" ]; then
    	go install github.com/tomnomnom/gf@latest
        mkdir -p ~/.gf
    	[ -d "Gf-Patterns" ] || git clone https://github.com/1ndianl33t/Gf-Patterns
    	cp Gf-Patterns/*.json ~/.gf/
elif [ "$secenek" = "5" ]; then
    	go install github.com/lc/gau/v2/cmd/gau@latest
    	export PATH=$PATH:$HOME/go/bin
    	gau --version


elif [ "$secenek" = "6" ] ; then
	go install github.com/tomnomnom/waybackurls@latest
	grep -qxF 'export PATH=$PATH:$HOME/go/bin' ~/.bashrc || \
	echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bashrc

	source ~/.bashrc



elif [ "$secenek" = "7" ] ; then
	git clone https://github.com/epsylon/xsser.git
	python3 -m venv venv
	source venv/bin/activate
	cd xsser
	pip install -r requirements.txt
	deactivate
	xsser -h


elif [ "$secenek" = "8" ] ; then
	git clone https://github.com/s0md3v/XSStrike
	cd XSStrike
	python3 -m venv myenv
	source myenv/bin/activate
	pip install -r requirements.txt
	deactivate
else
	echo "İşlem geçersiz lütfen tekrar deneyin" 
	bash Ghosttool.sh
fi
