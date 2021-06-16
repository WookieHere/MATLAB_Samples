%Luke Nasby
%ECE29700_Hw7_part3
%This part simulates the dice rolls and looks for yahtzees (5 dice of the
%same value) and outputs them to a text file.

clear all;

dice_array = randi(6,5);
total_yahtzees = zeros(6,1);
temp = 0;

for i = 1:1:100000
    for j = 1:1:4
        if(dice_array(j) == dice_array(j+1))
            temp = temp + 1;
        end
    end
    if(temp == 4)
        total_yahtzees(dice_array(1)) = total_yahtzees(dice_array(1)) + 1;
    end
    dice_array = randi(6,5);
    temp = 0;
end

output_file = fopen('Yahtzee_output.txt', 'w');

fprintf(output_file, "Out of 100000 rolls, %d landed as all ones\n", total_yahtzees(1));

fprintf(output_file, "Out of 100000 rolls, %d landed as all twos\n", total_yahtzees(2));

fprintf(output_file, "Out of 100000 rolls, %d landed as all threes\n", total_yahtzees(3));

fprintf(output_file, "Out of 100000 rolls, %d landed as all fours\n", total_yahtzees(4));

fprintf(output_file, "Out of 100000 rolls, %d landed as all fives\n", total_yahtzees(5));

fprintf(output_file, "Out of 100000 rolls, %d landed as all sixes\n", total_yahtzees(6));