rootPath=$1

#Accelerator Only
arrUseCases=(10-Engineer 20-SystemExpert 30-Operator)
arrTop=(00-Common 10-Acc 20-Tgt 30-NSS)
arrAcc=(00-Overview 010-ISrc 020-LEBT 030-MEBT 040-DTL 050-Spoke 99-RF 99-PBI 99-Vac 99-MPS 99-PSS)
for case in ${arrUseCases[@]}; do
	for top in ${arrTop[@]}; do
		case $top in
			00-Common)
				mkdir -p "$rootPath/$case/$top"
				;;
			10-Acc)
				if [ "$top == 10-Acc" ]; then
					for discipline in ${arrAcc[@]}; do
						mkdir -p "$rootPath/$case/$top/$discipline"
					done
				fi
				;;
			20-Tgt)
				mkdir -p "$rootPath/$case/$top"
				;;
			30-NSS)
				mkdir -p "$rootPath/$case/$top"
				;;
		esac
	done
done
