--[[
	A toolbar that lets the user interface with the plugin
	TODO: RIDE-3501 Create Toolbar
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local Pane = UI.Pane

local ContextServices = Framework.ContextServices
local Stylizer = Framework.Style.Stylizer

local RunTests = require(Plugin.Src.Thunks.GetTests)
local ExpandAll = require(Plugin.Src.Actions.ExpandAll)
local CollapseAll = require(Plugin.Src.Actions.CollapseAll)
local ResetTestCache = require(Plugin.Src.Actions.ResetTestCache)

local Toolbar = Roact.PureComponent:extend("Toolbar")

function Toolbar:init()
	local props = self.props
	self.runTests = function()
		local testSubset = props.Selected
		props.dispatchRunTests(testSubset)
	end
	self.stopTests = function()
		-- TODO: RIDE-3501 Allow tests to stop
		print("Stop tests")
	end
	self.expandAll = function()
		props.dispatchExpandAll()
	end
	self.collapseAll = function()
		props.dispatchCollapseAll()
	end
	self.showSettings = function()
		-- TODO: RIDE-3501 Show settings
		print("Show settings")
	end
	self.filter = function()
		-- TODO: RIDE-3501 filter tests
		print("filter")
	end
	self.onSearchRequested = function(searchTerm: string)
		-- TODO: RIDE-3501 handle search behaviour
		print(searchTerm)
	end
	self.resetCache = function()
		props.dispachResetTestCache()
	end
end

local layout = Roact.createElement("UIListLayout", {
	Padding = UDim.new(0, 10),
	FillDirection = Enum.FillDirection.Horizontal,
	VerticalAlignment = Enum.VerticalAlignment.Center,
	SortOrder = Enum.SortOrder.LayoutOrder
})


function Toolbar:render()
	-- TODO: RIDE-3501 add buttons that let you interact with the hierarchy
	-- TODO: RIDE-3501 add a "clear" button for selection/display/etc & a hide button

	return Roact.createElement(Pane, {
		Size = UDim2.fromScale(1, 1),
	})
end

ContextServices.mapToProps(Toolbar, {
	Stylizer = Stylizer,
})

return RoactRodux.connect(
	function(state, props)
		return {
			Selected = state.TestCache.Selected,
		}
	end,
	function(dispatch)
		return {
			dispatchRunTests = function()
				dispatch(RunTests())
			end,
			dispatchExpandAll = function()
				dispatch(ExpandAll())
			end,
			dispatchCollapseAll = function()
				dispatch(CollapseAll())
			end,
			dispatchResetTestCache = function()
				dispatch(ResetTestCache())
			end,
		}
	end
)(Toolbar)
