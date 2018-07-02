local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui").RobloxGui

local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local borderWidth = Constants.TabRowFormatting.TabDropDownBorderWidth
local tabDropDownWidth = Constants.TabRowFormatting.TabDropDownWidth
local tabDropDownHeight = Constants.TabRowFormatting.TabDropDownHeight
local tabRowHeight = Constants.TabRowFormatting.FrameHeight

local TabDropDown = Roact.Component:extend("TabDropDown")

function TabDropDown:init()
	self.startDropDownView = function()
		self:setState({
			selectionScreenExpanded = true
		})
	end

	self.state = {
		selectionScreenExpanded = false,
	}
end

function TabDropDown:render()
	local tabs = self.props.tabList
	local currTabIndex = self.props.currTabIndex
	local onTabButtonClicked = self.props.onTabButtonClicked

	local isSelecting = self.state.selectionScreenExpanded

	local nodes = {}
	local scrollingFrameHeight = 0
	if isSelecting then
		nodes["UIListLayout"] = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			FillDirection = Enum.FillDirection.Vertical,
		})

		if tabs then
			for ind,tab in ipairs(tabs) do
				nodes[ind] = Roact.createElement("TextButton", {
					Text = tab.label,
					Font = Constants.Font.TabBar,
					TextSize = Constants.DefaultFontSize.DropDownTabBar,
					TextColor3 = Constants.Color.Text,
					TextScaled = false,

					Size = UDim2.new(.8, 0, 0, tabRowHeight),
					BackgroundColor3 = Constants.Color.TabUnselectedGray,
					LayoutOrder = ind,

					[Roact.Event.Activated] = function(rbx)
						self:setState({
							selectionScreenExpanded = false
						})
						onTabButtonClicked(ind)
					end,
				})

				scrollingFrameHeight = scrollingFrameHeight + tabRowHeight
			end
		end
	end

	return Roact.createElement("TextButton", {
		Size = UDim2.new(0, tabDropDownWidth, 0, tabDropDownHeight), -- how to handle size here
		BackgroundColor3 = Constants.Color.UnselectedGray,
		Text = "",
		[Roact.Event.Activated] = self.startDropDownView,
	}, {
		text = Roact.createElement("TextLabel",{
			Size = UDim2.new(.7, 0, 1, 0),
			Position = UDim2.new(.2, 0, 0, 0),
			Text = tabs[currTabIndex].label,
			Font = Constants.Font.TabBar,
			TextSize = Constants.DefaultFontSize.DropDownTabBar,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = Constants.Color.Text,
			TextScaled = false,

			BackgroundTransparency = 1,
		}),

		arrow = Roact.createElement("ImageLabel", {

		}),

		selectionView = isSelecting and Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			TempScreen = Roact.createElement("ScreenGui", {}, {
				GreyOutFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = Constants.Color.Black,
					BackgroundTransparency = .64,
				},{
					BorderFrame = Roact.createElement("Frame", {
						Size = UDim2.new(0, borderWidth, 1, 0),
						Position = UDim2.new(.5, -borderWidth / 2, 0, 0),
						BackgroundColor3 = Constants.Color.UnselectedGray,
						BackgroundTransparency = .64,
					}, {
						SelectionFrame = Roact.createElement("Frame", {
							Size = UDim2.new(.8, 0, 0, scrollingFrameHeight),
							Position = UDim2.new(.1, 0, .5, -.5*scrollingFrameHeight),
							BackgroundTransparency = 1,
						}, nodes)
					})

				})
			})
		})
	})
end

return TabDropDown