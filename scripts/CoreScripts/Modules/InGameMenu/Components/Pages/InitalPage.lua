--[[
	Inital page for when the menu opens. Right now this is an empty page
]]
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact

local InitalPage = Roact.PureComponent:extend("InitalPage")

function InitalPage:render()
end

return InitalPage
