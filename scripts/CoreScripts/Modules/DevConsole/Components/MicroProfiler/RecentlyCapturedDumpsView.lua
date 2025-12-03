local CorePackages = game:GetService("CorePackages")

local MicroProfilerPanel = require(script.Parent.MicroProfilerPanel)
local Roact = require(CorePackages.Packages.Roact)

local RecentlyCapturedDumpsView = Roact.Component:extend("RecentlyCapturedDumpsView")

function RecentlyCapturedDumpsView:render()
	return Roact.createElement(MicroProfilerPanel, {
		Title = "Recently captured MicroProfiler dumps",
		LayoutOrder = self.props.LayoutOrder,
		Sections = {
			{
				Name = "RecentlyCapturedDumps",
				Rows = {
					{},
				},
			},
		},
	})
end

return RecentlyCapturedDumpsView
