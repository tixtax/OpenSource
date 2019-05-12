
#! /bin/bash

#=================== Main Menu======================
main()
{
	
	echo "=============================================================================================="
	echo "             Customer Account Banking System            "
	echo "=============================================================================================="

	echo "1) Create a New Customer Account"
	echo "2) Update Account Data"
	echo "3) View and Manage Transaction"
	echo "4) Check Customer's Account Details"
	echo "5) Delete Customer's Account"
	echo "6) Exit"

	echo "Enter the Option:"

	read menuInput

if [ $menuInput -eq 1 ]; then
	createAccount
elif [ $menuInput -eq 2 ]; then
	editAccount
elif [ $menuInput -eq 3 ]; then
	manageTransaction
elif [ $menuInput -eq 4 ]; then
	viewAccount
elif [ $menuInput -eq 5 ]; then
	deleteAccount
elif [ $menuInput -eq 6 ]; then
	exit 1
fi
}
deleteAccount()
{
	
	echo -e "Input the ID number of the account you want to delete: \n"
	read idInput
	awk -v id=$idInput -F "," '{if($1 != id)print}' accounts.csv > accounts.tmp && mv accounts.tmp accounts.csv

      echo -e "\nTo return to the previous menu press any key: "
        read return

        if [ return != % ]; then
                clear
        fi
}

manageTransaction()
{

	clear
	echo -e "Input the ID number of the account you want to do transactions on: \n"
	read idInput
	clear
	echo -e "To add amount enter a positive digit. To deduct, Enter a negative digit: "
	read money
	awk -v id=$idInput -v input=$money 'BEGIN{FS=","; OFS=","} { if ($1 ~ id) $10+=input; print}' accounts.csv > accounts.tmp && mv accounts.tmp accounts.csv
	
      echo -e "\nTo return to the previous menu press any key: "
        read return

        if [ return != % ]; then
                clear
        fi
}
viewAccount()
{
	clear
	echo -e "Input the ID number of the account you want to view: \n"
	read idInput
	clear
		echo -e "ID", "Name", "Date of Birth", "National ID", "Email", "City", "Country", "Number", "Type", "Balance"
        	awk -v id=$idInput 'BEGIN{FS=","; OFS="\t"; NR==1} { if ($1 == id) { print } }' accounts.csv | head
      echo -e "\nTo return to the previous menu press any key: "
        read return

        if [ return != % ]; then
                clear
        fi

}

editAccount()
{
	clear
	echo "1) Edit Name"
	echo "2) Edit Birth date"
	echo "3) Edit National Number"
	echo "4) Edit Email"
	echo "5) Edit City"
	echo "6) Edit Country"
	echo "7) Phone Number"
	echo "8) Edit Account Type"
	echo "9) Edit Account Balance: "

	echo "Enter the option: " 

	read editInput

	if [ $editInput -eq 1 ]; then

		echo -e "insert the ID of the account you want to edit: \n"
		read idInput

		echo -e "Insert the new data"
		read nameInput

		

	awk -v id=$idInput -v name="$nameInput" 'BEGIN{FS=","; OFS=","} { if ($1 ~ id) $2=name; print}' accounts.csv > accounts.tmp && mv accounts.tmp accounts.csv


	echo -e "\nThe change was made Successfully\n"
	echo -e "\nTo return to the previous menu press any key: "
	read return

	if [ return != % ]; then
		clear
	fi
	
	elif [ $editInput -eq 2 ]; then

		echo -e "insert the ID of the account you want to edit: \n"
		read idInput

		echo -e "Insert the new data"
		read birthInput

		
	awk -v id=$idInput -v input=$birthInput 'BEGIN{FS=","; OFS=","} { if ($1 ~ id) $3=input; print}' accounts.csv > accounts.tmp && mv accounts.tmp accounts.csv



	echo -e "\nThe change was made Successfully\n"
	echo -e "\nTo return to the previous menu press any key: "
	read return

	if [ return != % ]; then
		clear
	fi
	
	elif [ $editInput -eq 3 ]; then

		echo -e "insert the ID of the account you want to edit: \n"
		read idInput

		echo -e "Insert the new data"
		read nationalInput

		
	awk -v id=$idInput -v input=$nationalInput 'BEGIN{FS=","; OFS=","} { if ($1 ~ id) $4=input; print}' accounts.csv > accounts.tmp && mv accounts.tmp accounts.csv



	echo -e "\nThe change was made Successfully\n"
	echo -e "\nTo return to the previous menu press any key: "
	read return

	if [ return != % ]; then
		clear
	fi
	elif [ $editInput -eq 4 ]; then

		echo -e "insert the ID of the account you want to edit: \n"
		read idInput

		echo -e "Insert the new data"
		read emailInput

		
	awk -v id=$idInput -v input="$emailInput" 'BEGIN{FS=","; OFS=","} { if ($1 ~ id) $5=input; print}' accounts.csv > accounts.tmp && mv accounts.tmp accounts.csv


	echo -e "\nThe change was made Successfully\n"
	echo -e "\nTo return to the previous menu press any key: "
	read return

	if [ return != % ]; then
		clear
	fi

	
	elif [ $editInput -eq 5 ]; then

		echo -e "insert the ID of the account you want to edit: \n"
		read idInput

		echo -e "Insert the new data"
		read cityInput

		
	awk -v id=$idInput -v input="$cityInput" 'BEGIN{FS=","; OFS=","} { if ($1 ~ id) $6=input; print}' accounts.csv > accounts.tmp && mv accounts.tmp accounts.csv


	echo -e "\nThe change was made Successfully\n"
	echo -e "\nTo return to the previous menu press any key: "
	read return

	if [ return != % ]; then
		clear
	fi

	elif [ $editInput -eq 6 ]; then

		echo -e "insert the ID of the account you want to edit: \n"
		read idInput

		echo -e "Insert the new data"
		read countryInput

		

	awk -v id=$idInput -v input="$countryInput" 'BEGIN{FS=","; OFS=","} { if ($1 ~ id) $7=input; print}' accounts.csv > accounts.tmp && mv accounts.tmp accounts.csv

	echo -e "\nThe change was made Successfully\n"
	echo -e "\nTo return to the previous menu press any key: "
	read return

	if [ return != % ]; then
		clear
	fi

	elif [ $editInput -eq 7 ]; then

		echo -e "insert the ID of the account you want to edit: \n"
		read idInput

		echo -e "Insert the new data"
		read phoneInput

	awk -v id=$idInput -v input="$phoneInput" 'BEGIN{FS=","; OFS=","} { if ($1 ~ id) $8=input; print}' accounts.csv > accounts.tmp && mv accounts.tmp accounts.csv
		


	echo -e "\nThe change was made Successfully\n"
	echo -e "\nTo return to the previous menu press any key: "
	read return

	if [ return != % ]; then
		clear
	fi

	
	elif [ $editInput -eq 8 ]; then

		echo -e "insert the ID of the account you want to edit: \n"
		read idInput

		echo -e "Insert the new data"
		read accountInput

		

	awk -v id=$idInput -v input="$accountInput" 'BEGIN{FS=","; OFS=","} { if ($1 ~ id) $9=input; print}' accounts.csv > accounts.tmp && mv accounts.tmp accounts.csv

	echo -e "\nThe change was made Successfully\n"
	echo -e "\nTo return to the previous menu press any key: "
	read return

	if [ return != % ]; then
		clear
	fi

	
	elif [ $editInput -eq 9 ]; then

		echo -e "insert the ID of the account you want to edit: \n"
		read idInput

		echo -e "Insert the new data"
		read balanceInput

		

	awk -v id=$idInput -v input="$balanceInput" 'BEGIN{FS=","; OFS=","} { if ($1 ~ id) $10=input; print}' accounts.csv > accounts.tmp && mv accounts.tmp accounts.csv

	echo -e "\nThe change was made Successfully\n"
	echo -e "\nTo return to the previous menu press any key: "
	read return

	if [ return != % ]; then
		clear
	fi
fi	
	
}	

createAccount()
{
	
#===========Gathering Data============


	echo "Enter your name: "
	read name
	name=${name^}

	echo "Enter your birth date (dd/mm/yy): "
	read birth

	echo "Enter your national number: "
	read nationalNum
	nationalNum=${nationalNum^}

	echo "Enter your email address: "
	read email

	echo "Enter your city: "
	read city
	city=${city^}

	echo "Enter your country: "
	read country
	country=${country^}

	echo "Enter your phone number:  "
	read phoneNum

	echo "Select your preferred account type: "
		echo "1) Savings Account"
		echo "2) Current Account"
		read accountInput
		if [ $accountInput -eq 1 ]; then
			accountType="Savings Account"
		elif [ $accountInput -eq 2 ]; then
			accountType="Current Account"
		fi
	
	echo "Enter Initial Deposit Amount in Dollars: "
	read initialDeposit

#=============Updating the CSV file===============
	
echo "$(($(tail -1 accounts.csv | awk '{print $1}' FS=",")+1)),$name,$birth,$nationalNum,$email,$city,$country,$phoneNum,$accountType,$initialDeposit" >> /home/booman/Desktop/accounts.csv 

echo -e "\nThe change was made Successfully\n"
echo -e "\nTo return to the previous menu press any key: "
read return

if [ return != % ]; then
	clear
fi

}

while(true)
do
	main "$@"
done
