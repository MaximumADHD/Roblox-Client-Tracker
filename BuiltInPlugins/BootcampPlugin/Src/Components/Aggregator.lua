--[[
	Packages all components created under TutorialComponents into one.
]]

-- List fast flags at the top of the file!
local FFlagBootcampPluginMyJiraTicket = game:GetFastFlag("BootcampPluginMyJiraTicket ")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local Stylizer = Framework.Style.Stylizer

local TutorialComponents = Plugin.Src.Components.TutorialComponents
local MyJiraTicket = require(TutorialComponents.MyJiraTicket)

local Aggregator = Roact.PureComponent:extend("Aggregator")

function Aggregator:render()
	return Roact.createFragment({
		-- Add your flagged components below. Don't forget to end the line with a comma for better diffs!
		Example = FFlagBootcampPluginMyJiraTicket and Roact.createElement(MyJiraTicket) or nil,
	})
end

ContextServices.mapToProps(Aggregator, {
	Stylizer = Stylizer,
})

return Aggregator
