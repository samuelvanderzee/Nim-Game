tokens = 12
count = 2

if count == 2
Message = sprintf('There are 12 tokens in the pile. You must take either 1, 2, or 3 tokens on your turn. You are playing against me (the computer). The winner is the player who takes the last token from the pile.')
h = msgbox(Message)
end


while tokens > 0
if mod(count, 2) == 0
prompt1 = 'Your turn. Enter number of tokens you want to take from the pile (must be either 1, 2, or 3)'
thumbs = inputdlg(prompt1)
str = thumbs{[1, 1]}
usernumber = str2num(str)
count++;
end


if usernumber ~= 1 && usernumber ~= 2 && usernumber ~= 3 
   Message = sprintf('YOU VIOLATED THE RULES!! YOU CAN ONLY TAKE ONE, TWO, OR THREE TOKENS! YOU ARE DISQUALIFIED!!!')
   h = msgbox(Message)
end

if usernumber == 1 || usernumber == 2 || usernumber == 3
tokens = tokens - usernumber
end





if mod(count, 2) == 1 && (usernumber == 1 || usernumber == 2 || usernumber == 3) && tokens ~= 0
  Message = sprintf('Number of tokens left in pile: %d \n', tokens)
  h = msgbox(Message)  
 computernumber = 4 - usernumber
 
 Message = sprintf('Computer took %d tokens \n', computernumber)
 h = msgbox(Message)
end

 

tokens = tokens - computernumber

if mod(count, 2) == 1 && (usernumber == 1 || usernumber == 2 || usernumber == 3) && tokens ~= 0
Message = sprintf('Number of tokens left in pile: %d \n', tokens)
h = msgbox(Message)

count++;
end 


if tokens == 0
  Message =sprintf('I (the computer) WIN!!! You LOSE! HAHAHAHA!!')
  h = msgbox(Message)
end
end


  




