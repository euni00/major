module fa(a, b, cin, s, cout);

input a, b, cin;
output s, cout;

reg s, cout;

always @(a, b, cin)
begin 
    if ( a == 0 && b == 0 && cin == 0 ) begin cout = 0; s = 0; end
    else if ( a == 0 && b == 0 && cin ==1 ) begin cout = 0; s = 1; end
    else if ( a == 0 && b == 1 && cin == 0 ) begin cout = 0; s = 1; end
    else if ( a == 0 && b == 1 && cin == 1 ) begin cout = 1; s = 0; end
    else if ( a == 1 && b == 0 && cin == 0 ) begin cout = 0; s = 0; end
    else if ( a == 1 && b == 0 && cin == 1 ) begin cout = 1; s = 0; end
    else if ( a == 1 && b == 1 && cin == 0 ) begin cout = 1; s = 0; end
    else if ( a === 1 && b == 1 && cin == 1 ) begin cout = 1; s = 0; end
end 
endmodule