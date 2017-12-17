local DEBUG_MODE = 'tablet' -- phone/tablet

local userInputService = game:GetService'UserInputService'
local screenGui = script.Parent
local flagManager = require(script.Parent.FlagManager)
local isCoreSetup = pcall(function()
	return game:GetService("CoreGui"):FindFirstChild("RobloxGui")
end)

local phoneMode = false
local tabletMode = false

if DEBUG_MODE and not isCoreSetup then
	if DEBUG_MODE == 'phone' then
		phoneMode = true
	elseif DEBUG_MODE == 'tablet' then
		tabletMode = true
	end
else
    if userInputService.TouchEnabled then
        local windowSize

        if not isCoreSetup then
            windowSize = screenGui.AbsoluteSize
        else
            windowSize = game:GetService("CoreGui").RobloxGui.AbsoluteSize
        end

        if windowSize.x < windowSize.y then
            phoneMode = true
        else
            tabletMode = true
        end
    end
end

local module = {
	Mode =
		phoneMode and 'phone' or
		tabletMode and 'tablet' or
		'unknown'
}

return module
