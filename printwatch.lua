local version = "Version 1.0.2";
if not cloneref then
    getgenv().cloneref = newcclosure(function(ref)
        local newref = newproxy(true);
        setmetatable(newref, getmetatable(ref));
        return newref;
    end);
    return warn('Run this script again! You are all set! ('..identifyexecutor()..')');
else
    local playersService = cloneref(game:GetService("Players"));
    local lplr = playersService.LocalPlayer;
    print(lplr.Name..' ('..lplr.UserId..') is watching you!');

    for i,v in pairs(playersService:GetPlayers()) do
        print(lplr.Name..' ('..lplr.UserId..') is watching '..v.Name);
    end;
    print('Executor: '..identifyexecutor()..' ('..version..')');
end;

--[[
    You can choose between the both of these, or implement both

    print(lplr.Name..' ('..lplr.UserId..') is watching '..v.Name);
    print(v.Name..' ('..v.UserId..') is watching '..lplr.Name);
]]
