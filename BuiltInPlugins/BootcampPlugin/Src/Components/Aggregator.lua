--[[
    Packages all components created under TutorialComponents into one.
]]


-- List fast flags at the top of the file!
local FFlagRIDE4799 = game:GetFastFlag("RIDE4799")
local FFlagRIDE4798 = game:GetFastFlag("RIDE4798")
 
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
 
local ContextServices = Framework.ContextServices
local Stylizer = Framework.Style.Stylizer
 
local TutorialComponents = Plugin.Src.Components.TutorialComponents
local RIDE4799 = require(TutorialComponents.RIDE4799)
local RIDE4798 = require(TutorialComponents.RIDE4798)
 
local Aggregator = Roact.PureComponent:extend("Aggregator")
 
function Aggregator:render()
	return Roact.createFragment({
		-- Add your flagged components below. Don't forget to end the line with a comma for better diffs!
		Example = FFlagRIDE4799 and Roact.createElement(RIDE4799) or nil,
		Example2 = FFlagRIDE4798 and Roact.createElement(RIDE4798) or nil,
	})
end
 
ContextServices.mapToProps(Aggregator, {
    Stylizer = Stylizer,
})
 
return Aggregator
