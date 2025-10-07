local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui.RobloxGui

local ReactPageFactory = require(RobloxGui.Modules.Settings.ReactPageFactory)

local PlayerProfileContainer = require(script.PlayerProfileContainer)

function createPlayerProfilePage()
	local this = ReactPageFactory:createNewPage("PlayerProfile")

	this:setPage(PlayerProfileContainer)

	return this
end

return createPlayerProfilePage()
