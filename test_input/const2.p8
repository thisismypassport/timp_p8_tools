pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
stop() -- for pure syntax check
_ENV["min"]=123
function x()
    function max()
    end
    local function min()
    end
    --[[const]] local M,m = max(1,2),min(1,2)
    ?M
    ?m
end
--[[const]] local M,m = max(1,2),min(1,2)
?M
?m
local M,m = max(1,2),min(1,2)
?M
?m
--[[preserve]]ssog1 = 123; ?ssog1
--[[const]]ssog2 = 123; ?ssog2
--[[const]]ssog3 = 123; ssog3 += 1; ?ssog3