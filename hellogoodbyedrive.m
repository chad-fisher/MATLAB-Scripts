%Chad Fisher, CAAM 210, Spring 17, Lab 0.1
%hellogoodbyedrive
%This program takes the input x=1 and applies it to many binary functions
%that display either 'Hello!' or 'Goodbye!' depending on the conditions
%hellogoodbyedrive
%hellogoodbyedrive will input x=1 to hellogoodbye1, hellogoodbye12,
%hellogoodbye1or2, hellogoodbyegetpi, hellogoodbyelete, hellogoodbyem1to2,
%and hellogoodbyeene1
function hellogoodbyedrive
hellogoodbye1(1);
hellogoodbye12(1);
hellogoodbye1or2(1);
hellogoodbyegetpi(1);
hellogoodbyelete(1);
hellogoodbyem1to2(1);
hellogoodbyene1(1);
return
function hellogoodbye1(x)
if x==1
    disp('Hello!');
else
    disp('Goodbye!');
end
%'Hello!' will be displayed if the input takes the value 1 and 'Goodbye!'
%will be displayed if it does not
%hellogoodbye1(x)
%hellogoodbye1(2) will display 'Goodbye!'
return
function hellogoodbye12 (x)
if x==12
    disp('Hello!');
else
    disp('Goodbye!');
end
%This function will take in one input and display 'Hello!' if the input
%takes the value of 12 and will display 'Goodbye!' otherwise
%hellogoodbye12(x)
%hellogoodbye12(12) will display 'Hello!'
return
function hellogoodbye1or2 (x)

if x==1 || x==2
    disp('Hello!');
else
    disp('Goodbye!');
end
return
function hellogoodbyegetpi (x)
if x>=pi
    disp('Hello!');
else
    disp('Goodbye!');
end
%This function will take one input x and display 'Hello!' if the input
%takes a value greater than or equal to 12 and 'Goodbye!' otherwise
%hellogoodbyegetpi(x)
%hellogoodbyegetpi(pi) will display 'Hello!'
return
function hellogoodbyelete (x)
if x<=exp(1)
    disp('Hello!');
else
    disp('Goodbye!');
end
%This function takes in one input x and displays 'Hello! if the value is
%strictly less than Euler's number and 'Goodbye!' otherwise
%hellogoodbyelete(x)
%hellogoodbyelete(100) will display 'Hello!'
return
function hellogoodbyem1to2 (x)
if x>-1 && x<2
    disp('Hello!');
else
    disp('Goodbye!');
end
%This function will take in one input x and will display 'Hello!' if that
%input takes a value stricly greater than -1 and strictly less than 2 and
%'Goodbye!' otherwise
%hellogoodbyem1to2(x)
%hellogoodbyem1to2(0) will display 'Hello!'
return
function hellogoodbyene1 (x)
if x~=1
    disp('Hello!');
else
    disp('Goodbye!');
end
%This function will take in one input x and display 'Hello!' if that input
%takes a value other than 1 and 'Goodbye!' if that value equals 1
%hellogoodbyene1(x)
%hellogoodbyene1(0) will display 'Hello!'
return