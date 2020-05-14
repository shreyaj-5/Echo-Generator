function output = echo_gen(s, Fs, delay, amp)
    dt = 1/Fs;
 
    N = round(delay/dt);
    
    s1 = [s; zeros(N, 1)];

    s2 = [zeros(N, 1); s.*amp];

    output = s1 + s2;
 
    if max(abs(output)) > 1
        output = output./max(abs(output));
    end

end
    
