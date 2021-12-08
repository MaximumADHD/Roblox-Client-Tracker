--[[
	Packages all components created under TutorialComponents into one.
]]

-- List fast flags at the top of the file!
-- ex (remove spaces).
-- local FFlagExample = game : GetFastFlag ("Whatever")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Stylizer = Framework.Style.Stylizer

local TutorialComponents = Plugin.Src.Components.TutorialComponents
local MyJiraTicket = require(TutorialComponents.MyJiraTicket)

local Aggregator = Roact.PureComponent:extend("Aggregator")

function Aggregator:render()
	return Roact.createFragment({
		-- Add your flagged components below. Don't forget to end the line with a comma for better diffs!
		MyJiraTicket = --[[FFlagExample and]] Roact.createElement(MyJiraTicket),
	})
end

Aggregator = withContext({
	Stylizer = Stylizer,
})(Aggregator)

return Aggregator
