--[[
	The main view of the Roact inspector.
]]

local main = script.Parent.Parent.Parent
local Roact = require(main.Packages.Roact)
local RoactRodux = require(main.Packages.RoactRodux)
local Framework = require(main.Packages.Framework)
local RoactElementTree = require(script.Parent.RoactElementTree)
local FieldsTable = require(script.Parent.FieldsTable)
local NodeList = require(script.Parent.NodeList)
local InspectorContext = require(main.Src.Util.InspectorContext)

local DeveloperTools = require(main.Packages.DeveloperTools)
local RoactInspectorApi = DeveloperTools.RoactInspectorApi

local Util = Framework.Util
local UI = Framework.UI
local Container = UI.Container
local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel

local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local Actions = main.Src.Actions
local CloseTarget = require(Actions.CloseTarget)
local TogglePicking = require(Actions.RoactInspector.TogglePicking)
local Reset = require(Actions.RoactInspector.Reset)

local ContextServices = Framework.ContextServices

local RoactInspectorView = Roact.PureComponent:extend("RoactInspectorView")

function RoactInspectorView:init()
	self.onTogglePicking = function()
		local isPicking = not self.props.IsPicking
		local inspector = self.props.Inspector:get()
		local api = inspector:getTargetApi()
		if RoactInspectorApi.isInstance(api) then
			api:setPicking(isPicking)
		end
		self.props.togglePicking(isPicking)
	end
	self.onCloseTarget = function()
		local inspector = self.props.Inspector:get()
		inspector:closeTargetApi()
		self.props.closeTarget()
	end
end

function RoactInspectorView:render()
	local props = self.props
	local style
	if THEME_REFACTOR then
		style = props.Stylizer
	else
		style = props.Theme:getStyle("Plugin", self)
	end

	local borderSize = 1
	
	return Roact.createElement("Frame", {
		BackgroundColor3 = style.BackgroundColor,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0)
	}, {
		Top = Roact.createElement("Frame", {
			Size = UDim2.new(1, borderSize * 2, 0, style.HeaderHeight + borderSize * 2),
			Position = UDim2.fromOffset(-borderSize, -borderSize),
			BackgroundColor3 = style.Tabs.BackgroundColor,
			BorderColor3 = style.Tabs.BorderColor
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 2),
				PaddingLeft = UDim.new(0, 2),
				PaddingBottom = UDim.new(0, 2),
				PaddingRight = UDim.new(0, 2),
			}),
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			InspectButtonFrame = Roact.createElement(Container, {
				Size = UDim2.new(0, 32, 0, 24),
				Padding = 2,
				LayoutOrder = 1,
			}, { 
				InspectButton = Roact.createElement("ImageButton", {
					Image = "rbxassetid://5725479887",
					ImageColor3 = props.IsPicking and style.SelectedIconColor or style.IconColor,
					Size = UDim2.fromOffset(24, 24),
					BackgroundTransparency = 1,
					[Roact.Event.Activated] = self.onTogglePicking
				})
			}),
			Tabs = Roact.createElement(Container, {
				Size = UDim2.new(0, 700, 0, 24),
				Padding = 2,
				LayoutOrder = 2,
			}, { 
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				SelectedFrame = Roact.createElement("Frame", {
					LayoutOrder = 1,
					Size = UDim2.new(0, 80, 1, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0
				}, {
					TabFrame = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, 5),
						BackgroundColor3 = style.BackgroundColor,
						BorderColor3 = style.Tabs.BorderColor,
					}, {
						TabInnerFrame = Roact.createElement("Frame", {
							Size = UDim2.fromScale(1, 1),
							Position = UDim2.new(0, 0, 0, 1),
							BackgroundColor3 = style.BackgroundColor,
							BorderSizePixel = 0
						}, {
							ElementsLabel = Roact.createElement(TextLabel, {
								LayoutOrder = 2,
								Font = Enum.Font.SourceSansBold,
								Text = "Elements",
								Size = UDim2.fromScale(1, 1),
							})
						})
					})
				}),
				StoreLabel = Roact.createElement(TextLabel, {
					LayoutOrder = 2,
					Text = "Store",
					Size = UDim2.new(0, 80, 1, 0),
				}),
				TestsLabel = Roact.createElement(TextLabel, {
					LayoutOrder = 3,
					Text = "Tests",
					Size = UDim2.new(0, 80, 1, 0),
				}),
				StoriesLabel = Roact.createElement(TextLabel, {
					LayoutOrder = 4,
					Text = "Stories",
					Size = UDim2.new(0, 80, 1, 0),
				}),
			}),
			InspectSource = Roact.createElement(Container, {
				LayoutOrder = 3,
				Size = UDim2.new(1, -732, 0, 24)
			}, {
				InspectSourceLabel = Roact.createElement(TextLabel, {
					Text = ("%s - %s"):format(self.props.Target.SourceName, self.props.Target.Name),
					Size = UDim2.new(1, -32, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Right
				}),
				CloseButton = Roact.createElement("ImageButton", {
					Image = "rbxassetid://5896340798",
					ImageColor3 = style.IconColor,
					Size = UDim2.fromOffset(24, 24),
					BackgroundTransparency = 1,
					Position = UDim2.new(1, 0, 0, 0),
					AnchorPoint = Vector2.new(1, 0),
					[Roact.Event.Activated] = self.onCloseTarget
				})
			})
		}),
		Left = Roact.createElement(Container, {
			Position = UDim2.new(0, 0, 0, style.HeaderHeight),
			Size = UDim2.new(0.5, 0, 1, -style.HeaderHeight),
			Padding = style.Padding,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			TreeLabel = Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				Text = "Tree Branches",
				Size = UDim2.new(1, 0, 0, style.HeaderHeight),
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			TreeContainer = Roact.createElement(Container, {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0.5, 0),
			}, {
				RoactElementTree = Roact.createElement(RoactElementTree, {})
			}),
			BranchLabel = Roact.createElement(TextLabel, {
				LayoutOrder = 3,
				Text = "Branch Nodes",
				Size = UDim2.new(1, 0, 0, style.HeaderHeight),
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			ListContainer = Roact.createElement(Container, {
				LayoutOrder = 4,
				Size = UDim2.new(1, 0, 0.5, -style.HeaderHeight * 2),
			}, {
				NodeList = Roact.createElement(NodeList, {
					selectTarget = self.selectTarget
				})
			})
		}),
		Right = Roact.createElement(Container, {
			Position = UDim2.new(0.5, -style.Padding, 0, style.HeaderHeight),
			Size = UDim2.new(0.5, style.Padding, 1, -style.HeaderHeight),
			Padding = style.Padding,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			FieldsLabel = Roact.createElement(TextLabel, {
				LayoutOrder = 1,
				Text = "Fields",
				Size = UDim2.new(1, 0, 0, style.HeaderHeight),
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			FieldsContainer = Roact.createElement(Container, {
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 1, -style.HeaderHeight),
			}, {
				FieldsTable = Roact.createElement(FieldsTable, {})
			}),
		})
	})

end

ContextServices.mapToProps(RoactInspectorView, {
	Inspector = InspectorContext,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
})

return RoactRodux.connect(
	function(state, props)
		return {
			Target = state.Targets.selectedTarget,
			IsPicking = state.RoactInspector.isPicking
		}
	end,
	function(dispatch, props)
		return {
			togglePicking = function(isPicking)
				dispatch(TogglePicking(isPicking))
			end,
			closeTarget = function()
				dispatch(CloseTarget())
				dispatch(Reset())
			end
		}
	end
)(RoactInspectorView)