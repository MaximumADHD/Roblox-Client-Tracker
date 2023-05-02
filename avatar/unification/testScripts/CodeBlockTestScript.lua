-- This script is not intended to be run, only to be parsed by Script Analysis Tests
local a = 10
local b = 5
local function foo()
    local c = 5
    if c == 5 then
        local func = function()
            print("Hello World")
        end

        func()
    end

    for i = 1, 10 do
        if i % 2 == 0 then
            local s = "a"
            print(s)
        elseif i % 3 == 0 then
            local s = "b"
            print(s)
        else
            local s = "c"
            print(s)
        end
    end

    local x = 1
    local y = 1
    repeat
        y = 1
        while y < 10 do
            y += 1
        end
        x = x + 1
    until x == 10
end
