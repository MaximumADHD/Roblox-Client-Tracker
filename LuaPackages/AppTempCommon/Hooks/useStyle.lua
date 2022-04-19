--[[
	A hook used to consume the UIBlox Style.
]]

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)

local function useStyle()
	-- Our style consumer receives the whole update-able container
	-- so we need to return only the contained style value
	local styleContainer = React.useContext(UIBlox.Style.Context)
	return styleContainer.style
end

return useStyle
