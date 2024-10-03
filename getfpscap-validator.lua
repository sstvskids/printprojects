if getfpscap and setfpscap then
    local fpscap = tostring(getfpscap());
    print('getfpscap() function testing initiated! ('..identifyexecutor()..')');
    setfpscap(9999);
    print('The FPS-Cap has been set to 9999 :) Your "executor" will print out the "fpscap" of the client.\nIf returned 0 or 60, then the function is spoofed');
    task.wait(0.85)
    if string.match(fpscap, "^60$") or string.match(fpscap, "^0$") then
        return print('getfpscap is faked! Returned '..fpscap);
    else
        return print('Your executor does not fake getfpscap! Returned '..fpscap);
    end;
else
    return print('Your executor is that bad, get a better executor. ('..identifyexecutor()..')');
end;
