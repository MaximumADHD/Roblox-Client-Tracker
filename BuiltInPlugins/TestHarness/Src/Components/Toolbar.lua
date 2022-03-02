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
local Button = UI.Button
local Decoration = UI.Decoration
local TextLabel = UI.Decoration.TextLabel

local StudioUI = Framework.StudioUI
local SearchBar = StudioUI.SearchBar

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Stylizer = Framework.Style.Stylizer

local StatusCount = require(Plugin.Src.Components.Elements.StatusCount)

local Icons = require(Plugin.Src.Resources.Icons)

local RunTests = require(Plugin.Src.Thunks.GetTests)
local ExpandAll = require(Plugin.Src.Actions.ExpandAll)
local CollapseAll = require(Plugin.Src.Actions.CollapseAll)
local ResetTestCache = require(Plugin.Src.Actions.ResetTestCache)

local FFlagDevFrameworkSearchBarSize = game:GetFastFlag("DevFrameworkSearchBarSize")

local Toolbar = Roact.PureComponent:extend("Toolbar")

function Toolbar:init()
	self.state = {
		isFiltering = false,
	}
	local props = self.props
	self.runTests = function()
		-- RIDE-3504 Run a subset of tests
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
	self.filter = function(filter)
		-- TODO: RIDE-3501 filter tests
		self:setState(function(previous, props)
			return {
				isFiltering = not previous.isFiltering,
			}
		end)
	end

	self.filterFailed = function()
		print("filter failed tests")
	end

	self.filterSuccess = function()
		print("filter successful tests")
	end

	self.filterPending = function()
		print("filter pending tests")
	end

	self.filterWarning = function()
		print("filter warning tests")
	end

	self.onSearchRequested = function(searchTerm: string)
		-- TODO: RIDE-3501 handle search behaviour
		print(searchTerm)
	end
	self.resetCache = function()
		-- TODO: RIDE-3501 filter tests
		props.dispachResetTestCache()
	end
end

-- TODO: RIDE-3501 add buttons that let you interact with the hierarchy
-- TODO: RIDE-3501 add a "clear" button for selection/display/etc. & a hide button
function Toolbar:render()
	-- TODO: RIDE-3761 Use the DevFramework Stylizer correctly
	local toolbarSize = self.props.Size
	local toolbarPos = self.props.Position
	local labelSize = 50
	local buttonSize = UDim2.fromOffset(30, 30)
	local isFiltering = self.state.isFiltering
	local filterIcon = isFiltering and Icons.Toolbar.Filter.Filled
		or Icons.Toolbar.Filter.Empty

	-- TODO: RIDE-3507 display test results
	local testCount = "# tests"
	local failCount = "1"
	local successCount = "2"
	local warnCount = "1"
	local pendingCount = "2"

	return Roact.createElement(Pane, {
		Size = toolbarSize,
		Position = toolbarPos,
	}, {
		LeftHalf = Roact.createElement(Pane, {
			Size = UDim2.new(0.5, 0, 1, 0),
			Position = UDim2.fromScale(0, 0),
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Spacing = 10,
		}, {
			Filter = Roact.createElement(Button, {
				LayoutOrder = 1,
				OnClick = self.filter,
				Style = {
					Size = buttonSize,
					Padding = 5,
					Foreground = Decoration.Image,
					ForegroundStyle = {
						Image = filterIcon,
					}
				},
			}),
			Search = Roact.createElement(SearchBar, {
				OnSearchRequested = self.onSearchRequested,
				LayoutOrder = 2,
				Width = FFlagDevFrameworkSearchBarSize and 200 or nil,
			}),
			Summary = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.X,
				LayoutOrder = 4,
				Padding = 2,
				Spacing = 5,
				Layout = Enum.FillDirection.Horizontal,
			}, {
				TestCount = Roact.createElement(TextLabel, {
					Size = UDim2.new(0, labelSize, 1, 0),
					LayoutOrder = 1,
					Text = testCount,
				}),
				Fail = Roact.createElement(StatusCount, {
					LayoutOrder = 2,
					Text = failCount,
					OnClick = self.filterFailed,
					Icon = Icons.Status.Failed,
				}),
				Success = Roact.createElement(StatusCount, {
					LayoutOrder = 3,
					Text = successCount,
					OnClick = self.filterSuccess,
					Icon = Icons.Status.Success,
				}),
				Warning = Roact.createElement(StatusCount, {
					LayoutOrder = 4,
					Text = warnCount,
					OnClick = self.filterWarning,
					Icon = Icons.Status.Warning,
				}),
				Pending = Roact.createElement(StatusCount, {
					LayoutOrder = 5,
					Text = pendingCount,
					OnClick = self.filterPending,
					Icon = Icons.Status.Pending,
				}),
			})
		}),
		RightHalf = Roact.createElement(Pane, {
			Size = UDim2.new(0, 0, 1, 0),
			AutomaticSize = Enum.AutomaticSize.X,
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.fromScale(1, 0),
			Layout = Enum.FillDirection.Horizontal,
			Padding = 5,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}, {
			RunAll = Roact.createElement(Button, {
				LayoutOrder = 1,
				OnClick = self.runTests,
				Style = {
					Size = buttonSize,
					Padding = 5,
					Foreground = Decoration.Image,
					ForegroundStyle = {
						Image = Icons.Controller.RunAll,
					}
				},
			}),
			RunTest = Roact.createElement(Button, {
				LayoutOrder = 2,
				OnClick = self.runTests,
				Style = {
					Size = buttonSize,
					Padding = 5,
					Foreground = Decoration.Image,
					ForegroundStyle = {
						Image = Icons.Controller.Run,
					}
				},
			}),
			StopTests = Roact.createElement(Button, {
				LayoutOrder = 3,
				OnClick = self.stopTests,
				Style = {
					Size = buttonSize,
					Padding = 5,
					Foreground = Decoration.Image,
					ForegroundStyle = {
						Image = Icons.Controller.Stop,
					}
				},
			}),
			Expand = Roact.createElement(Button, {
				LayoutOrder = 4,
				OnClick = self.expandAll,
				Style = {
					Size = buttonSize,
					Padding = 5,
					Foreground = Decoration.Image,
					ForegroundStyle = {
						Image = Icons.Toolbar.Expand,
					}
				},
			}),
			Collapse = Roact.createElement(Button, {
				LayoutOrder = 5,
				OnClick = self.collapseAll,
				Style = {
					Size = buttonSize,
					Padding = 5,
					Foreground = Decoration.Image,
					ForegroundStyle = {
						Image = Icons.Toolbar.Collapse,
					}
				},
			}),
			Settings = Roact.createElement(Button, {
				LayoutOrder = 6,
				OnClick = self.showSettings,
				Style = {
					Size = buttonSize,
					Padding = 5,
					Foreground = Decoration.Image,
					ForegroundStyle = {
						Image = Icons.Toolbar.Settings,
					}
				},
			}),
		}),
	})
end

Toolbar = withContext({
	Stylizer = Stylizer,
})(Toolbar)

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
