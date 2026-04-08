--[[
	A hook used to consume the UIBlox Style.
]]

local StyleRoot = script.Parent
local UIBloxRoot = StyleRoot.Parent.Parent
local Packages = UIBloxRoot.Parent

local StyleTypes = require(UIBloxRoot.App.Style.StyleTypes)
local StyleContext = require(StyleRoot.StyleContext)
local React = require(Packages.React)

type AppStyle = StyleTypes.AppStyle

local function useStyle(): AppStyle
	local styleContainer = React.useContext(StyleContext)
	return (styleContainer :: any).style :: AppStyle
end

return useStyle
