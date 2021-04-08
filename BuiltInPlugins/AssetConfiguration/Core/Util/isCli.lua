local FFlagFixToolboxInCli = game:GetFastFlag("FixToolboxInCli")

if FFlagFixToolboxInCli then
    local isCli, _ = pcall(function()
        return game:GetService("ProcessService")
    end)
    
    -- Return true if Toolbox is running in roblox-cli
    return function()
        return isCli
    end
else
    return function()
        return false
    end
end

