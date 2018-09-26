local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local create = require(RobloxGui.Modules.Common.Create)

-- CONSTANTS --
local CONSTANTS = {
	COLORS = {
		SLATE = Color3.fromRGB(35, 37, 39),
		FLINT = Color3.fromRGB(57, 59, 61),
		GRAPHITE = Color3.fromRGB(101, 102, 104),
		PUMICE = Color3.fromRGB(189, 190, 190),
		WHITE = Color3.fromRGB(255, 255, 255),
	},
	ERROR_PROMPT_HEIGHT = {
		Default = 236,
		XBox = 180,
	},
	ERROR_PROMPT_WIDTH = {
		Default = 400,
		XBox = 400,
	},
	ERROR_TITLE_FRAME_HEIGHT = {
		Default = 50,
	},
	SPLIT_LINE_WIDTH = 1,
	BUTTON_CELL_PADDING = 10,
	BUTTON_HEIGHT = 36,
	SIDE_PADDING = 20,
	LAYOUT_PADDING = 20,

	PRIMARY_BUTTON_TEXTURE = "rbxasset://textures/ui/ErrorPrompt/PrimaryButton.png",
	SECONDARY_BUTTON_TEXTURE = "rbxasset://textures/ui/ErrorPrompt/SecondaryButton.png",
}
-- CONSTANTS --

-- Animation Preset --
local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, 0, false, 0)
-- Animation Preset --

-- Frame styles for different platforms
local styledFrame = {
	["Default"] = function()
		return create 'Frame' {
			Name = 'ErrorPrompt',
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			BackgroundColor3 = CONSTANTS.COLORS.FLINT,
			AnchorPoint= Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, CONSTANTS.ERROR_PROMPT_WIDTH.Default, 0, CONSTANTS.ERROR_PROMPT_HEIGHT.Default),
			ZIndex = 8,
			create 'UIListLayout' {
				Name = "PromptLayout",
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			},
			create 'UIScale' {
				Name = "PromptScale",
				Scale = 0,
			},
			create 'Frame' {
				Name = "TitleFrame",
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, CONSTANTS.ERROR_TITLE_FRAME_HEIGHT.Default),
				BorderSizePixel = 0,
				ZIndex = 8,
				create 'UIPadding' {
					Name = "TitleFramePadding",
					PaddingBottom = UDim.new(0, 11),
					PaddingTop = UDim.new(0, 11),
				},
				create 'TextLabel' {
					Name = "ErrorTitle",
					TextColor3 = CONSTANTS.COLORS.WHITE,
					TextSize = 25,
					Size = UDim2.new(1, 0, 0, 28),
					BackgroundTransparency = 1,
					Font = Enum.Font.SourceSansSemibold,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					ZIndex = 8,
				},
			},
			create 'Frame' {
				Name = "SplitLine",
				LayoutOrder = 2,
				Size = UDim2.new(1, -2 * CONSTANTS.SIDE_PADDING, 0, CONSTANTS.SPLIT_LINE_WIDTH),
				BackgroundColor3 = CONSTANTS.COLORS.PUMICE,
				BorderSizePixel = 0,
				ZIndex = 8,
			},
			create 'Frame' {
				Name = "MessageArea",
				LayoutOrder = 3,
				Size = UDim2.new(1, 0, 1, - CONSTANTS.ERROR_TITLE_FRAME_HEIGHT.Default - CONSTANTS.SPLIT_LINE_WIDTH),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = 8,
				create 'UIPadding' {
					Name = "MessageAreaPadding",
					PaddingBottom = UDim.new(0, CONSTANTS.SIDE_PADDING),
					PaddingLeft = UDim.new(0, CONSTANTS.SIDE_PADDING),
					PaddingRight = UDim.new(0, CONSTANTS.SIDE_PADDING),
					PaddingTop = UDim.new(0, CONSTANTS.SIDE_PADDING),
				},
				create 'Frame' {
					Name = "ErrorFrame",
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					ZIndex = 8,
					create 'UIListLayout' {
						Name = "ErrorFrameLayout",
						Padding = UDim.new(0, CONSTANTS.LAYOUT_PADDING),
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
					},
					create 'TextLabel' {
						Name = "ErrorMessage",
						LayoutOrder = 1,
						Size = UDim2.new(1, 0, 1, -CONSTANTS.BUTTON_HEIGHT - CONSTANTS.LAYOUT_PADDING),
						TextSize = 20,
						TextColor3 = CONSTANTS.COLORS.PUMICE,
						ZIndex = 8,
						BackgroundTransparency = 1,
						TextWrapped = true,
						Font = Enum.Font.SourceSans,
					},
					create 'Frame' {
						Name = "ButtonArea",
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, CONSTANTS.BUTTON_HEIGHT),
						ZIndex = 8,
						LayoutOrder = 2,
						create 'UIGridLayout' {
							Name = "ButtonLayout",
							CellPadding = UDim2.new(0, CONSTANTS.BUTTON_CELL_PADDING, 0, 0),
							CellSize = UDim2.new(1, 0, 0, CONSTANTS.BUTTON_HEIGHT),
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							SortOrder = Enum.SortOrder.LayoutOrder,
						},
					}, -- ButtonArea
				}, -- ErrorFrame
			}, -- MessageArea
		} -- ErrorPrompt
	end,
}

local styledButton = {
	["Default"] = function(name, layoutOrder, primary)
		return create 'ImageButton' {
			Name = name.."Button",
			BackgroundTransparency = 1,
			ImageColor3 = primary and CONSTANTS.COLORS.WHITE or CONSTANTS.COLORS.PUMICE,
			AnchorPoint= Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, 0, 1, 0),
			Image = primary and CONSTANTS.PRIMARY_BUTTON_TEXTURE or CONSTANTS.SECONDARY_BUTTON_TEXTURE,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(8, 8, 9, 9),
			LayoutOrder = layoutOrder,
			ZIndex = 8,
			create 'TextLabel' {
				Text = name,
				Size = UDim2.new(1, 0, 1, 0),
				TextColor3 = primary and CONSTANTS.COLORS.SLATE or CONSTANTS.COLORS.PUMICE,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				Font = Enum.Font.SourceSans,
				TextSize = 20,
				ZIndex = 8,
			}
		}
	end,
}

local ErrorPrompt = {}
ErrorPrompt.__index = ErrorPrompt

function ErrorPrompt.new(style)
	local self = setmetatable({}, ErrorPrompt)
	self._frame = style and styledFrame[style]() or styledFrame["Default"]()

	-- prevent duplicate open/close animation if two errors occurs concurrently
	self._isOpen = false
	self._openAnimation = TweenService:Create(self._frame.PromptScale, tweenInfo, {Scale = 1})
	self._closeAnimation = TweenService:Create(self._frame.PromptScale, tweenInfo, {Scale = 0})

	-- re-layout when there is no button
	self._buttonCount = 0

	return self
end

function ErrorPrompt:_open(errorMsg, errorCode)
	self:setErrorText(errorMsg, errorCode)
	if not self._isOpen then
		self._isOpen = true
		self._openAnimation:Play()
	end
end

function ErrorPrompt:_close()
	if self._isOpen then
		self._isOpen = false
		self._closeAnimation:Play()
	end
end

function ErrorPrompt:setParent(parent)
	self._frame.Parent = parent
end

function ErrorPrompt:setErrorText(errorMsg, errorCode)

	-- Any unknown error that uses guiservices will have errno(UNKNOWN) as -1
	local errorLabel = self._frame.MessageArea.ErrorFrame.ErrorMessage
	if not errorCode then
		errorLabel.Text = ("%s\n(Error Code: -1)"):format(errorMsg)
	else
		errorLabel.Text = ("%s\n(Error Code: %d)"):format(errorMsg, errorCode.Value)
	end
end

function ErrorPrompt:setErrorTitle(title)
	if not title then
		return
	end
	local errorTitle = self._frame.TitleFrame.ErrorTitle
	errorTitle.Text = title
end

function ErrorPrompt:onErrorChanged(errorMsg, errorCode)
	if errorMsg == "" then
		self:_close()
	elseif errorMsg ~= "" then
		self:_open(errorMsg, errorCode)
	end
end

-- centralize the text when there is no button enabled
function ErrorPrompt:_relayout()
	local buttonArea = self._frame.MessageArea.ErrorFrame.ButtonArea
	if self._buttonCount == 0 then
		buttonArea.Visible = false
	else
		local gridWidth = (CONSTANTS.ERROR_PROMPT_WIDTH.Default - (self._buttonCount - 1) * CONSTANTS.BUTTON_CELL_PADDING - 2 * CONSTANTS.SIDE_PADDING) / self._buttonCount
		buttonArea.Visible = true
		buttonArea.ButtonLayout.CellSize = UDim2.new(0, gridWidth, 0, CONSTANTS.BUTTON_HEIGHT)
	end
end

function ErrorPrompt:clearButtons()
	local buttonArea = self._frame.MessageArea.ErrorFrame.ButtonArea
	local children = buttonArea:GetChildren()
	for _, child in pairs(children) do
		if child.name ~= "ButtonLayout" then
			child:Destroy()
		end
	end
end

--[[
	sample buttonlist:
	{
		relaunchButton = {
			Text = "Retry",
			Callback = relaunchCallback,
			LayoutOrder = 1,
			Primary = true
		},
		leaveButton = {
			Text = "Cancel",
			Callback = leaveCallback,
			LayoutOrder = 2,
		}
	}
]]
function ErrorPrompt:updateButtons(buttonList, style)
	if not buttonList then
		buttonList = {}
	end
	if not style then
		style = "Default"
	end

	self:clearButtons()

	local buttonArea = self._frame.MessageArea.ErrorFrame.ButtonArea

	local buttonCount = 0
	for _, buttonData in pairs(buttonList) do
		local button = styledButton[style](buttonData.Text, buttonData.LayoutOrder, buttonData.Primary)
		button.Parent = buttonArea
		button.Activated:connect(buttonData.Callback)
		buttonCount = buttonCount + 1
	end

	if self._buttonCount ~= buttonCount then
		self._buttonCount = buttonCount
		self:_relayout()
	end
end

return ErrorPrompt