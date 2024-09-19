--!nonstrict
--[[
	A hook used to access the UIBlox Style metadata.
]]

local StyleRoot = script.Parent
local UIBloxRoot = StyleRoot.Parent.Parent
local Packages = UIBloxRoot.Parent

local StyleContext = require(StyleRoot.StyleContext)
local React = require(Packages.React)

local function useStyleMetadata()
	local styleContainer = React.useContext(StyleContext)
	return styleContainer.styleMetadata
end

return useStyleMetadata
