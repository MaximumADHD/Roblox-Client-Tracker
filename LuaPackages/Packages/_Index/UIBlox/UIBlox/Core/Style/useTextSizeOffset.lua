--!nonstrict
--[[
	A hook used to access the text size offset calculated by the PreferredTextSize setting
]]

local StyleRoot = script.Parent
local UIBloxRoot = StyleRoot.Parent.Parent
local Packages = UIBloxRoot.Parent

local StyleContext = require(StyleRoot.StyleContext)
local React = require(Packages.React)

local function useTextSizeOffset()
	-- Our style consumer receives the whole update-able container
	-- so we need to return only conatined value's derived value text size offset property
	local styleContainer = React.useContext(StyleContext)
	return styleContainer.derivedValues.textSizeOffset
end

return useTextSizeOffset
