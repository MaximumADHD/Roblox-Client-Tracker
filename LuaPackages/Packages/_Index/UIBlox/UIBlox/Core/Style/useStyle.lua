--!nonstrict
--[[
	A hook used to consume the UIBlox Style.
]]

local StyleRoot = script.Parent
local UIBloxRoot = StyleRoot.Parent.Parent
local Packages = UIBloxRoot.Parent

local StyleContext = require(StyleRoot.StyleContext)
local React = require(Packages.React)

local function useStyle()
	-- Our style consumer receives the whole update-able container
	-- so we need to return only the contained style value
	local styleContainer = React.useContext(StyleContext)
	return styleContainer.style
end

return useStyle
