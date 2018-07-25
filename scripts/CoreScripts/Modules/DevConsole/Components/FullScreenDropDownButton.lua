
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui").RobloxGui
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local ENTRY_HEIGHT = Constants.GeneralFormatting.DropDownEntryHeight
local ARROW_SIZE = Constants.GeneralFormatting.DropDownArrowHeight
local ARROW_OFFSET = ARROW_SIZE / 2
local OPEN_ARROW = Constants.Image.DownArrow

local FULL_SCREEN_WIDTH = 375
local INNER_Y_OFFSET = 8
local INNER_X_OFFSET = 15

local FullScreenDropDownButton = Roact.Component:extend("FullScreenDropDownButton")

function FullScreenDropDownButton:init()
	self.startDropDownView = function()
		self:setState({
			selectionScreenExpanded = true
		})
	end

	self.noSelection = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or
			(input.UserInputType == Enum.UserInputType.Touch and
			input.UserInputState == Enum.UserInputState.End) then
			self:setState({
				selectionScreenExpanded = false
			})
		end
	end

	self.state = {
		selectionScreenExpanded = false,
	}
end

function FullScreenDropDownButton:render()
	local buttonSize = self.props.buttonSize
	local dropDownList = self.props.dropDownList
	local selectedIndex = self.props.selectedIndex
	local onSelection = self.props.onSelection
	local layoutOrder = self.props.layoutOrder

	local isSelecting = self.state.selectionScreenExpanded

	local dropDownItemList = {}
	local scrollingFrameHeight = 2 * INNER_Y_OFFSET

	if isSelecting then
		dropDownItemList["UIListLayout"] = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			FillDirection = Enum.FillDirection.Vertical,
		})

		if dropDownList then
			for ind,name in ipairs(dropDownList) do
				local color = (ind == selectedIndex) and Constants.Color.SelectedGray or Constants.Color.UnselectedGray

				dropDownItemList[ind] = Roact.createElement("TextButton", {
					Text = name,
					Font = Constants.Font.TabBar,
					TextSize = Constants.DefaultFontSize.DropDownTabBar,
					TextColor3 = Constants.Color.Text,
					AutoButtonColor = false,

					Size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
					BackgroundColor3 = color,
					LayoutOrder = ind,
					BorderSizePixel = 0,

					[Roact.Event.Activated] = function(rbx)
						self:setState({
							selectionScreenExpanded = false
						})
						onSelection(ind)
					end,
				})

				scrollingFrameHeight = scrollingFrameHeight + ENTRY_HEIGHT
			end
		end
	end

	return Roact.createElement("TextButton", {
		Size = buttonSize,
		BackgroundColor3 = Constants.Color.UnselectedGray,
		Text = "",
		AutoButtonColor = false,
		LayoutOrder = layoutOrder,

		[Roact.Event.Activated] = self.startDropDownView,
	}, {
		text = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, -ARROW_SIZE - ARROW_OFFSET, 1, 0),
			Text = dropDownList[selectedIndex],
			Font = Constants.Font.TabBar,
			TextSize = Constants.DefaultFontSize.DropDownTabBar,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextColor3 = Constants.Color.Text,

			BackgroundTransparency = 1,
		}),

		arrow = Roact.createElement("ImageLabel", {
			Image = OPEN_ARROW,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, ARROW_SIZE, 0, ARROW_SIZE),
			Position = UDim2.new(1, -ARROW_SIZE - ARROW_OFFSET, .5, -ARROW_OFFSET),
		}),

		selectionView = isSelecting and Roact.createElement(Roact.Portal, {
			target = CoreGui,
		}, {
			TempScreen = Roact.createElement("ScreenGui", {}, {
				GreyOutFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = Constants.Color.Black,
					BackgroundTransparency = .36,
					Active = true,

					[Roact.Event.InputEnded] = self.noSelection,
				}, {
					BorderFrame = Roact.createElement("Frame", {
						Size = UDim2.new(0, FULL_SCREEN_WIDTH, 0, scrollingFrameHeight),
						Position = UDim2.new(.5, -FULL_SCREEN_WIDTH / 2, 0, 0),
						BackgroundColor3 = Constants.Color.UnselectedGray,
						BorderSizePixel = 0,
					}, {
						SelectionFrame = Roact.createElement("ScrollingFrame", {
							Size = UDim2.new(1, -2 * INNER_X_OFFSET, 1, -2 * INNER_Y_OFFSET),
							Position = UDim2.new(0, INNER_X_OFFSET, 0, INNER_Y_OFFSET),
							BackgroundTransparency = 1,

							-- adding an extra entry's worth of height for easier access to last
							-- child when trying to select last child
							CanvasSize = UDim2.new(1, -2 * INNER_X_OFFSET, 1, ENTRY_HEIGHT),
							BorderSizePixel = 0,

							ScrollBarThickness = 0,
						}, dropDownItemList)
					})
				})
			})
		})
	})
end

return FullScreenDropDownButton