clear;

% Request Level of Difficulty
display('Welcome to Descartes and the Fly! With this program, you will learn to imitate functions.')
display('***All parameter values are between -50 and 50, with the exception of p in the polynomial function, which is between 2 and 5 incluvive.')
% Enter main loop/if statements
play_again = true;
while play_again
    close all; 
    error_check = true;
    while error_check == true;
        level = input('Level of Difficulty (1-3): ');
        if level <= 3 && level >= 1
            error_check = false;
        end
    end
    
    incorrect = true;
    play_again = true;
    
    % Linear Function
    if level == 1
        display('Linear Function!')
        display('Function Rule: y = mx + b')
        correctM = rng; correctM = randi([-50, 50]);
        correctB = rng; correctB = randi([-50, 50]);
        y = @(x) correctM*x + correctB;
        figure
        fplot(y, [-50 50])
        % axis([0 xmax correctB- ymax])
        % hold on;
        while incorrect
            m = input('Enter the slope (m): ');
            b = input('Enter the y-intercept (b): ');
            y_new = @(x) m*x + b;
            figure
            fplot(y_new, [-50 50])
            if m == correctM && b == correctB
                incorrect = false;
                display('Congratulations on completing a linear function!')
            else
                display('Sorry, that was incorrect. Compare the graphs and try again!')
            end
        end
        
        % Exponential Function
     elseif level == 2
        correctA = rng; correctA = randi([-50, 50]);
        correctB = rng; correctB = randi([1, 50]);
        correctH = rng; correctH = randi([-50, 50]);
        correctK = rng; correctK = randi([-50, 50]);
        display('Exponential Function!') 
        display('Function Rule: y = ab^(x-h)+k')
        y = @(x) correctA*correctB.^(x-correctH) + correctK;
        figure
        fplot(y, [-50 50])
        while incorrect
            a = input('Enter the constant (a): ');
            b = input('Enter the base (b): ');
            h = input('Enter the component of exponent (h): ');
            k = input('Enter the constant (k): ');
            y_new = @(x) a*b.^(x-h) + k;
            figure
            fplot(y_new, [-50 50])
            if a == correctA && b == correctB && h == correctH && k == correctK
                incorrect = false;
                display('Congratulations on completing an exponential function!')
            else
                display('Sorry, that was incorrect. Compare the graphs and try again!')
            end
        end
        
    % Polynomial Function
    elseif level == 3
        display('Polynomial Function! (^2 through ^5)');
        display('Function Rule: ax^p + bx^(p-1) + cx^(p-2) ... zx^(p-p)')
        % Generate random function
        correctP = rng; 
        correctP = randi([2 5]);
        var_list = zeros(1, (correctP + 1));
        for i = 1:(correctP+1)
            temp_var = rng; temp_var = randi([-50, 50]);
            var_list(i) = temp_var;
        end
        if correctP == 2   %quadraticcccccc
            correctA = rng;
            correctA = randi([-50, 50]);
            while correctA == 0
                correctA = randi([-50, 50]);
            end


            correctB = rng;
            correctB = randi([-50, 50]);
            correctC = rng;
            correctC = randi([-50, 50]);

            y = @(x) correctA * x.^2 + correctB * x + correctC;

        else if correctP == 3     %cubiccc
            correctA = rng;
            correctA = randi([-50, 50]);
            while correctA == 0
                correctA = randi([-50, 50]);
            end


            correctB = rng;
            correctB = randi([-50, 50]);
            correctC = rng;
            correctC = randi([-50, 50]);
            correctD = rng;
            correctD = randi([-50, 50]);

            y = @(x) correctA * x.^3 + correctB * x.^2 + correctC * x + correctD;

        else if correctP == 4       %quartic
            correctA = rng;
            correctA = randi([-50, 50]);
            while correctA == 0
                correctA = randi([-50, 50]);
            end

            correctB = rng;
            correctB = randi([-50, 50]);
            correctC = rng;
            correctC = randi([-50, 50]);
            correctD = rng;
            correctD = randi([-50, 50]);
            correctE = rng; 
            correctE = randi([-50, 50]);

            y = @(x) correctA * x.^4 + correctB * x.^3 + correctC * x.^2 + correctD * x + correctE;

        else  %to the fifth power
            correctA = rng;
            correctA = randi([-50, 50]);
            while correctA == 0
                correctA = randi([-50, 50]);
                end

            correctB = rng;
            correctB = randi([-50, 50]);
            correctC = rng;
            correctC = randi([-50, 50]);
            correctD = rng;
            correctD = randi([-50, 50]);
            correctE = rng; 
            correctE = randi([-50, 50]);
            correctF = rng;
            correctF = randi([-50, 50]);

            y = @(x) correctA * x.^5 + correctB * x.^4 + correctC * x.^3 + correctD * x.^2 + correctE * x + correctF;
        end
end
        % correctEq = 0;
        %y = @(x) 0;
        %for i = 1:correctP+1
            % correctEq = correctEq + (var_list(i) * (x^(p-i-1)));
            %y = @(x) y + (var_list(i) * (x^(p-i-1)));
        %end
        % y = @(x) correctEq;
        figure
        fplot(y, [-50 50])
        
        %user_var_list = zeros(1, (p + 1));
        %for i = 1:(p+1)
        %    temp_var = rng; temp_var = randi([-50, 50]);
        %    user_var_list(i) = temp_var;
        %end
       % userEq = 0;
        %for i = 1:p+1
            % userEq = userEq + (user_var_list(i) * (x^(p-i-1)));
        %end
        noCorrecto = true;
        while noCorrecto
            % Request user input
            p = input('Enter the constant (p): ');
            if p == 2
                display('You chose quadratic. Function Rule: ax^2 + bx + c')
                a = input('Enter the first constant (a): ');
                b = input('Enter the second constant (b): ');
                c = input('Enter the third constant (c): ');

                y = @(x) a*x.^2 + b*x + c;

                if p == correctP
                    if a == correctA && b == correctB && c == correctC
                        display('Congratulations on completing a quadratic function!')
                        noCorrecto = false;
                    else
                        display('Sorry, that was incorrect. Compare the graphs and try again!')
                    end
                else
                    display('Sorry, that was incorrect. Compare the graphs and try again!')
                end

            elseif p == 3
                display('You chose cubic. Function Rule: ax^3 + bx^2 + cx + d')
                a = input('Enter the first constant (a): ');
                b = input('Enter the second constant (b): ');
                c = input('Enter the third constant (c): ');
                d = input('Enter the fourth constant (d): ');

                y = @(x) a*x.^3 + b*x.^2 + c*x + d;
                figure
                fplot(y, [-50 50])

                if p == correctP
                    if a == correctA && b == correctB && c == correctC && d == correctD
                        display('Congratulations on completing a cubic function!')
                        noCorrecto = false;
                    else
                        display('Sorry, that was incorrect. Compare the graphs and try again!')
                    end
                else
                    display('Sorry, that was incorrect. Compare the graphs and try again!')
                end

            elseif p == 4
                display('You chose quartic. Function Rule: ax^4 + bx^3 + cx^2 + dx + e')
                a = input('Enter the first constant (a): ');
                b = input('Enter the second constant (b): ');
                c = input('Enter the third constant (c): ');
                d = input('Enter the fourth constant (d): ');
                e = input('Enter the fifth constant (e): ');

                y = @(x) a*x.^4 + b*x.^3 + c*x.^2 + d*x + e;
                figure
                fplot(y, [-50 50])

                if p == correctP
                    if a == correctA && b == correctB && c == correctC && d == correctD && e == correctE
                        display('Congratulations on completing a quartic function!')
                        noCorrecto = false;
                    else
                        display('Sorry, that was incorrect. Compare the graphs and try again!')
                    end
                else
                    display('Sorry, that was incorrect. Compare the graphs and try again!')
                end

            else
                display('You chose quintic. Function Rule: ax^5 + bx^4 + cx^3 + dx^2 + ex + f')
                a = input('Enter the first constant (a): ');
                b = input('Enter the second constant (b): ');
                c = input('Enter the third constant (c): ');
                d = input('Enter the fourth constant (d): ');
                e = input('Enter the fifth constant (e): ');
                f = input('Enter the sixth constant (f): ');

                y = @(x) a*x.^5 + b*x.^4 + c*x.^3 + d*x.^2 + e*x + f;
                figure
                fplot(y, [-50 50])

                if p == correctP
                    if a == correctA && b == correctB && c == correctC && d == correctD && e == correctE && f == correctF
                        display('Congratulations on completing a quintic function!')
                        noCorrecto = false;
                    else
                        display('Sorry, that was incorrect. Compare the graphs and try again!')
                    end
                else
                    display('Sorry, that was incorrect. Compare the graphs and try again!')
                end
            end
        
        % y = @(x) correctEq;
        
        end
        %if isequal(var_list, user_var_list)
         %   if p == 2
          %      display('Congratulations on completing a quadratic function!')
           % elseif p == 3
            %    display('Congratulations on completing a cubic function!')
            %elseif p == 4
            %    display('Congratulations on completing a quartic function!')
            %else
            %    display('Congratulations on completing a quintic function!')
            %end
        %else
         %   display('Sorry, that was incorrect. Compare the graphs and try again!')
        %end
    end
    
    % Play again
    play_again_str = input('Press return to play again, and any other key to quit. ');
    if play_again_str ~= ''
        play_again = false;
    end
    end
end