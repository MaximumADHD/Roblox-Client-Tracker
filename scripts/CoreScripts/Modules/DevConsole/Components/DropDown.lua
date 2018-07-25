local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui").RobloxGui
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local FONT = Constants.Font.UtilBar
local FONT_SIZE = Constants.DefaultFontSize.UtilBar
local ARROW_SIZE = Constants.GeneralFormatting.DropDownArrowHeight
local ARROW_OFFSET = ARROW_SIZE / 2
local OPEN_ARROW = Constants.Image.DownArrow
local INNER_FRAME_PADDING = 12

local DropDown = Roact.Component:extend("DropDown")

function DropDown:init()
	self.onMainButtonPressed = function(rbx, input)
		self:setState({
			showDropDown = true,
		})
	end

	self.nonDropDownSelection = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or
			(input.UserInputType == Enum.UserInputType.Touch and
			input.UserInputState == Enum.UserInputState.End) then
			self:setState({
				showDropDown = false
			})
		end
	end

	self.state = {
		showDropDown = false,
	}

	self.ref = Roact.createRef()
end

function DropDown:render()
	local buttonSize = self.props.buttonSize
	local dropDownList = self.props.dropDownList
	local selectedIndex = self.props.selectedIndex

	local onSelection = self.props.onSelection
	local layoutOrder = self.props.layoutOrder

	local showDropDown = self.ref.current and self.state.showDropDown

	local children = {}
	local absolutePosition
	local outerFrameSize
	local frameHeight = 0
	local frameWidth = 0

	if self.ref.current and showDropDown then
		local absolutePos = self.ref.current.AbsolutePosition
		local absoluteSize = self.ref.current.AbsoluteSize

		frameWidth = absoluteSize.X

		children["UIListLayout"] = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		})

		for ind, name in pairs(dropDownList) do
			local color = (ind == selectedIndex) and Constants.Color.SelectedGray or Constants.Color.UnselectedGray

			children[name] = Roact.createElement("TextButton", {
				Size = buttonSize,
				Text = name,
				TextColor3 = Constants.Color.Text,
				TextSize = FONT_SIZE,
				Font = FONT,

				AutoButtonColor = false,
				BackgroundColor3 = color,
				BackgroundTransparency = 0,
				BorderSizePixel = 0,

				LayoutOrder = ind,

				[Roact.Event.Activated] = function()
					onSelection(ind)
					self:setState({
						showDropDown = false
					})
				end
			})
			frameHeight = frameHeight + absoluteSize.Y
		end

		local padding = 2 * INNER_FRAME_PADDING
		outerFrameSize = UDim2.new(0, frameWidth + padding, 0, frameHeight + padding)
		absolutePosition = UDim2.new(0, absolutePos.X, 0, absolutePos.Y + absoluteSize.Y)
	end

	return Roact.createElement("TextButton", {
		Size = buttonSize,
		Text = dropDownList[selectedIndex],
		TextColor3 = Constants.Color.Text,
		TextSize = FONT_SIZE,
		Font = FONT,

		AutoButtonColor = false,
		BackgroundColor3 = Constants.Color.UnselectedGray,
		BackgroundTransparency = 0,
		LayoutOrder = layoutOrder,

		[Roact.Event.Activated] = self.onMainButtonPressed,

		[Roact.Ref] = self.ref,
	}, {
		arrow = Roact.createElement("ImageLabel", {
			Image = OPEN_ARROW,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, ARROW_SIZE, 0, ARROW_SIZE),
			Position = UDim2.new(1, -ARROW_SIZE - ARROW_OFFSET, .5, -ARROW_OFFSET),
		}),

		DropDown = showDropDown and Roact.createElement(Roact.Portal, {
			target = RobloxGui,
		}, {
			FullScreen = Roact.createElement("ScreenGui", {
			}, {
				InputCatcher = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					Position = UDim2.new(0, 0, 0, 0),
					BackgroundTransparency = 1,

					[Roact.Event.InputEnded] = self.nonDropDownSelection,
				}, {
					OuterFrame = Roact.createElement("ImageButton", {
						Size = outerFrameSize,
						AutoButtonColor = false,
						Position = absolutePosition,
						BackgroundColor3 = Constants.Color.TextBoxGray,
						BackgroundTransparency = 0,
					}, {
						innerFrame = Roact.createElement("Frame", {
							Position = UDim2.new(0, INNER_FRAME_PADDING, 0 , INNER_FRAME_PADDING),
							Size = UDim2.new(0, frameWidth, 0, frameHeight),
							BackgroundTransparency = 1,
						}, children)
					})
				})
			})
		})
	})

end

return DropDown