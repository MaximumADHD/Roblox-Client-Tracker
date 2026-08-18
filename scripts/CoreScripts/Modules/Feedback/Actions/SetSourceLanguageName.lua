--[[
	Action that stores the experience's source language display name, used to label
	the "Original Text" section of the feedback report dialog.
]]
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function(sourceLanguageName)
	return {
		sourceLanguageName = sourceLanguageName,
	}
end)
