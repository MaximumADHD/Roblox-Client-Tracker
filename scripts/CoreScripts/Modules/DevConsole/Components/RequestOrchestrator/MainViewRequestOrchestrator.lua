local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Components = script.Parent.Parent.Parent.Components
local UtilAndTab = require(Components.UtilAndTab)

local MainViewRequestOrchestrator = Roact.PureComponent:extend("MainViewRequestOrchestrator")

function MainViewRequestOrchestrator:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = 3,
	}, {
		UtilAndTab = Roact.createElement(UtilAndTab, {
			windowWidth = size.X.Offset,
			formFactor = formFactor,
			tabList = tabList,
			layoutOrder = 1,
		}),
	})
end

return MainViewRequestOrchestrator
