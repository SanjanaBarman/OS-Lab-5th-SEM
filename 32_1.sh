#!/bin/bash

# Function to display the student records
display_records() {
    echo "Student Records:"
    echo "-----------------"
    cat student_records.txt
    echo "-----------------"
}

# Function to update a student's marks
update_marks() {
    echo "Enter the Roll Number of the student whose marks you want to update:"
    read roll_no

    # Check if the student exists in the records
    student_line=$(grep "^$roll_no" student_records.txt)

    if [ -z "$student_line" ]; then
        echo "No student found with Roll Number: $roll_no"
    else
        echo "Enter the new marks for student Roll Number $roll_no:"
        #read new_marks

        # Update the marks in the file
        #sed -i "s/^$roll_no[[:space:]]\+[a-zA-Z ]\+[[:space:]]\+[0-9]\+/$roll_no $(echo $student_line | awk '{print $2}') $new_marks/" student_records.txt
        grep -v "^.*|$roll_no|.*" student_records.txt >> temp && mv temp student_records.txt
        read new_marks
        echo "Marks updated successfully."
    fi
}

# Main logic

if [ ! -f student_records.txt ]; then
    echo "Error: student_records.txt not found!"
    exit 1
fi

while true
do
    #clear
    echo "Welcome to Student Record Management"
    echo "1. Display all student records"
    echo "2. Update student marks"
    echo "3. Exit"
    echo -n "Please choose an option (1-3): "
    read choice

    case $choice in
        1)
            display_records
            ;;
        2)
            update_marks
            ;;
        3)
            echo "Exiting program."
            exit 0
            ;;
        *)
            echo "Invalid option. Please select again."
            ;;
    esac

    # Pause to view the output
    #echo "Press any key to continue..."
    #read -n 1 -s
done
