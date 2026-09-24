--[[
	Provides a base implementation of style tables for the Framework
	that are completely empty and only used so that the Framework
	can run for testing.
]]

local Framework = script.Parent.Parent

local function newDefaults()
	return {
		Default = {},
	}
end

--[[
	PLEASE READ

	FrameworkStyles are generated directly from the Components folder.

	To add or remove a component please introduce a shared flag:
	local FFlagDevFrameworkMyComponent = SharedFlags.getFFlagDevFrameworkMyComponent()

	Then in the flaggedComponents table add an entry for your component gated with your flag:
	MyComponent = if FFlagDevFrameworkMyComponent then newDefaults() else nil

	If you are removing a component then use Dash.None instead of nil to delete the key:
	MyComponent = if FFlagDevFrameworkRemoveMyComponent then Dash.None else newDefaults()

	Please avoid renaming components while Stylizer is still in use.
]]
local FrameworkStyles = {}
local Dash = require(Framework.Parent.Dash)
local assign = Dash.assign
local collect = Dash.collect

local flaggedComponents = {}

function FrameworkStyles.new()
	-- Export the UI styles automatically, so they do not need to be added to this file manually
	local styles = collect(Framework.UI.Components:GetChildren(), function(_, child: Instance)
		if child:IsA("ModuleScript") and flaggedComponents[child.Name] == nil then
			return child.Name, newDefaults()
		else
			return nil
		end
	end)
	assign(styles, flaggedComponents)
	return styles
end

return FrameworkStyles
