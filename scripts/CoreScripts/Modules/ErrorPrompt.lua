local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local TweenService = game:GetService("TweenService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TextService = game:GetService("TextService")
local GuiService = game:GetService("GuiService")
local LocalizationService = game:GetService("LocalizationService")

local create = require(RobloxGui.Modules.Common.Create)
local MouseIconOverrideService = require(CorePackages.InGameServices.MouseIconOverrideService)
local Constants = require(RobloxGui.Modules.Common.Constants)
local Shimmer = require(RobloxGui.Modules.Shimmer)

local fflagLocalizeErrorCodeString = settings():GetFFlag("LocalizeErrorCodeString")

local DEFAULT_ERROR_PROMPT_KEY = "ErrorPrompt"

-- Animation Preset --
local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, 0, false, 0)
-- Animation Preset --

local coreScriptTableTranslator
local function onLocaleIdChanged()
	coreScriptTableTranslator = CoreGui.CoreScriptLocalization:GetTranslator(LocalizationService.RobloxLocaleId)
end

onLocaleIdChanged()
LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):connect(onLocaleIdChanged)


local function attemptTranslate(key, defaultString, parameters)
	if not coreScriptTableTranslator then
		return defaultString
	end

	local success,result = pcall(function()
		return coreScriptTableTranslator:FormatByKey(key, parameters)
	end)
	return success and result or defaultString
end

-- Frame styles for different platforms
local styledFrame = {
	["Default"] = function()
		return create 'Frame' {
			Name = 'ErrorPrompt',
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			BackgroundColor3 = Constants.COLORS.FLINT,
			AnchorPoint= Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, Constants.ERROR_PROMPT_MAX_WIDTH.Default, 0, Constants.ERROR_PROMPT_HEIGHT.Default),
			Visible = false,
			AutoLocalize = false,
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
				Size = UDim2.new(1, 0, 0, Constants.ERROR_TITLE_FRAME_HEIGHT.Default),
				BorderSizePixel = 0,
				ZIndex = 8,
				create 'UIPadding' {
					Name = "TitleFramePadding",
					PaddingBottom = UDim.new(0, 11),
					PaddingTop = UDim.new(0, 11),
				},
				create 'TextLabel' {
					Name = "ErrorTitle",
					TextColor3 = Constants.COLORS.WHITE,
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
				Size = UDim2.new(1, -2 * Constants.SIDE_PADDING, 0, Constants.SPLIT_LINE_THICKNESS),
				BackgroundColor3 = Constants.COLORS.PUMICE,
				BorderSizePixel = 0,
				ZIndex = 8,
			},
			create 'Frame' {
				Name = "MessageArea",
				LayoutOrder = 3,
				Size = UDim2.new(1, 0, 1, - Constants.ERROR_TITLE_FRAME_HEIGHT.Default - Constants.SPLIT_LINE_THICKNESS),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = 8,
				create 'UIPadding' {
					Name = "MessageAreaPadding",
					PaddingBottom = UDim.new(0, Constants.SIDE_PADDING),
					PaddingLeft = UDim.new(0, Constants.SIDE_PADDING),
					PaddingRight = UDim.new(0, Constants.SIDE_PADDING),
					PaddingTop = UDim.new(0, Constants.SIDE_PADDING),
				},
				create 'Frame' {
					Name = "ErrorFrame",
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					ZIndex = 8,
					create 'UIListLayout' {
						Name = "ErrorFrameLayout",
						Padding = UDim.new(0, Constants.LAYOUT_PADDING),
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
					},
					create 'TextLabel' {
						Name = "ErrorMessage",
						LayoutOrder = 1,
						Size = UDim2.new(1, 0, 1, -Constants.BUTTON_HEIGHT - Constants.LAYOUT_PADDING),
						TextSize = 20,
						TextColor3 = Constants.COLORS.PUMICE,
						ZIndex = 8,
						BackgroundTransparency = 1,
						TextWrapped = true,
						Font = Enum.Font.SourceSans,
					},
					create 'Frame' {
						Name = "ButtonArea",
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, Constants.BUTTON_HEIGHT),
						ZIndex = 8,
						LayoutOrder = 2,
						create 'UIGridLayout' {
							Name = "ButtonLayout",
							CellPadding = UDim2.new(0, Constants.BUTTON_CELL_PADDING, 0, 0),
							CellSize = UDim2.new(1, 0, 0, Constants.BUTTON_HEIGHT),
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
			ImageColor3 = primary and Constants.COLORS.WHITE or Constants.COLORS.PUMICE,
			AnchorPoint= Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, 0, 1, 0),
			Image = primary and Constants.PRIMARY_BUTTON_TEXTURE or Constants.SECONDARY_BUTTON_TEXTURE,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(8, 8, 9, 9),
			LayoutOrder = layoutOrder,
			ZIndex = 8,
			create 'TextLabel' {
				Name = "ButtonText",
				Text = name,
				Size = UDim2.new(1, 0, 1, 0),
				TextColor3 = primary and Constants.COLORS.SLATE or Constants.COLORS.PUMICE,
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

--[[
	extraConfiguration:
	* MessageTextScaled	-- Message Text Scale to fit
	* HideErrorCode		-- If set to true, no errorCode will be appended
	* PlayAnimation		-- Skip animation of the errorPrompt
	* MenuIsOpenKey     -- The menu to mark opened and closed using GuiService:SetMenuIsOpen
]]
function ErrorPrompt.new(style, extraConfiguration)
	local self = setmetatable({}, ErrorPrompt)
	self._frame = style and styledFrame[style]() or styledFrame["Default"]()

	-- prevent duplicate open/close animation if two errors occurs concurrently
	self._isOpen = false
	self._openAnimation = TweenService:Create(self._frame.PromptScale, tweenInfo, {Scale = 1})
	self._closeAnimation = TweenService:Create(self._frame.PromptScale, tweenInfo, {Scale = 0})

	-- re-layout when there is no button
	self._buttonCount = 0
	self._playAnimation = true
	self._hideErrorCode = false
	self._menuIsOpenKey = DEFAULT_ERROR_PROMPT_KEY

	if extraConfiguration then
		if extraConfiguration.PlayAnimation ~= nil then
			self._playAnimation = extraConfiguration.PlayAnimation
		end

		if extraConfiguration.HideErrorCode ~= nil then
			self._hideErrorCode = extraConfiguration.HideErrorCode
		end

		if extraConfiguration.MenuIsOpenKey ~= nil then
			self._menuIsOpenKey = extraConfiguration.MenuIsOpenKey
		end

		local errorLabel = self._frame.MessageArea.ErrorFrame.ErrorMessage
		errorLabel.TextScaled = extraConfiguration.MessageTextScaled or false
	end

	return self
end

function ErrorPrompt:_open(errorMsg, errorCode)
	self:setErrorText(errorMsg, errorCode)
	self:resizeHeight()
	if not self._isOpen then
		MouseIconOverrideService.push("ErrorPromptOverride", Enum.OverrideMouseIconBehavior.ForceShow)
		GuiService:SetMenuIsOpen(true, self._menuIsOpenKey)
		self._frame.Visible = true
		self._isOpen = true
		if self._playAnimation then
			self._openAnimation:Play()
			self._openAnimation.Completed:wait()
			self._frame.PromptScale.Scale = 1
		else
			self._frame.PromptScale.Scale = 1
		end
	end
end

function ErrorPrompt:_close()
	if self._isOpen then
		MouseIconOverrideService.pop("ErrorPromptOverride")
		GuiService:SetMenuIsOpen(false, self._menuIsOpenKey)
		self._isOpen = false
		if self._playAnimation then
			self._closeAnimation:Play()
			self._closeAnimation.Completed:wait()
		else
			self._frame.PromptScale.Scale = 0
		end
		self._frame.Visible = false
	end
end

function ErrorPrompt:setParent(parent)
	self._frame.Parent = parent
end

function ErrorPrompt:setErrorText(errorMsg, errorCode)

	-- Any unknown error that uses guiservices will have errno(UNKNOWN) as -1
	local errorLabel = self._frame.MessageArea.ErrorFrame.ErrorMessage
	if self._hideErrorCode then
		errorLabel.Text = errorMsg
	else
		if fflagLocalizeErrorCodeString then
			local errorCodeValue = -1
			if errorCode then
				errorCodeValue = errorCode.Value
			end
			local defaultErrorCodeString = ("Error Code: %d"):format(errorCodeValue)
			local localizedErrorCodeString = attemptTranslate(
				"InGame.ConnectionError.Message.ErrorCode",
				defaultErrorCodeString,
				{ERROR_CODE = tostring(errorCodeValue)})
			errorLabel.Text = ("%s\n(%s)"):format(errorMsg,localizedErrorCodeString)
		else
			if not errorCode then
				errorLabel.Text = ("%s\n(Error Code: -1)"):format(errorMsg)
			else
				errorLabel.Text = ("%s\n(Error Code: %d)"):format(errorMsg, errorCode.Value)
			end
		end
	end
end

function ErrorPrompt:setErrorTitle(title, localizationKey)
	if not title then
		return
	end
	local errorTitle = self._frame.TitleFrame.ErrorTitle
	if localizationKey then
		errorTitle.Text = attemptTranslate(localizationKey, title)
	else
		errorTitle.Text = title
	end
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
		local gridWidth = (self._frame.Size.X.Offset - (self._buttonCount - 1) * Constants.BUTTON_CELL_PADDING
			- 2 * Constants.SIDE_PADDING) / self._buttonCount
		buttonArea.Visible = true
		buttonArea.ButtonLayout.CellSize = UDim2.new(0, gridWidth, 0, Constants.BUTTON_HEIGHT)
	end
end

function ErrorPrompt:clearButtons()
	local buttonArea = self._frame.MessageArea.ErrorFrame.ButtonArea
	if self._primaryShimmer then

		-- free previous shimmer Object
		self._primaryShimmer = nil
	end
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
			LocalizationKey = "InGame.ConnectionError.Button.Retry"
			Callback = relaunchCallback,
			LayoutOrder = 1,
			Primary = true
		},
		leaveButton = {
			Text = "Cancel",
			LocalizationKey = "Feature.SettingsHub.Action.CancelSearch"
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

		local buttonText = buttonData.Text
		if buttonData.LocalizationKey then
			buttonText = attemptTranslate(buttonData.LocalizationKey, buttonData.Text)
		end
		local button = styledButton[style](buttonText, buttonData.LayoutOrder, buttonData.Primary)
		if buttonData.Primary then
			self._primaryShimmer = Shimmer.new(button, "PrimaryButton")
		end
		button.Parent = buttonArea
		button.Activated:connect(buttonData.Callback)
		buttonCount = buttonCount + 1
	end

	if self._buttonCount ~= buttonCount then
		self._buttonCount = buttonCount
		self:_relayout()
	end
end

function ErrorPrompt:primaryShimmerPlay()
	if self._primaryShimmer then
		self._primaryShimmer:play()
	end
end

function ErrorPrompt:primaryShimmerStop()
	if self._primaryShimmer then
		self._primaryShimmer:stop()
	end
end

function ErrorPrompt:resizeWidth(screenWidth)
	local currentWidth = self._frame.Size.X.Offset
	local targetWidth = screenWidth - 2 * Constants.SIDE_MARGIN

	if targetWidth > Constants.ERROR_PROMPT_MAX_WIDTH.Default then
		if currentWidth == Constants.ERROR_PROMPT_MAX_WIDTH.Default then
			return
		else
			targetWidth = Constants.ERROR_PROMPT_MAX_WIDTH.Default
		end
	end

	if targetWidth < Constants.ERROR_PROMPT_MIN_WIDTH.Default then
		if currentWidth == Constants.ERROR_PROMPT_MIN_WIDTH.Default then
			return
		else
			targetWidth = Constants.ERROR_PROMPT_MIN_WIDTH.Default
		end
	end

	self._frame.Size = UDim2.new(0, targetWidth, 0, self._frame.Size.Y.Offset)
	self:resizeHeight()
	self:_relayout()
end

function ErrorPrompt:resizeHeight()
	local errorTextLabel = self._frame.MessageArea.ErrorFrame.ErrorMessage
	local frameSize = Vector2.new(self._frame.Size.X.Offset - 2 * Constants.SIDE_PADDING, 1000)
	local textLabelSize = TextService:GetTextSize(errorTextLabel.Text, errorTextLabel.TextSize, errorTextLabel.Font, frameSize)

	-- errorMessageLabel height is the *ONLY* dynamically changing factor that could affect the prompt size
	-- calulate the prompt height manually to avoid circular reference for size calculation
	local targetHeight = Constants.ERROR_TITLE_FRAME_HEIGHT.Default + textLabelSize.Y + Constants.SPLIT_LINE_THICKNESS
						+ Constants.BUTTON_HEIGHT + Constants.LAYOUT_PADDING + 2 * Constants.SIDE_PADDING + 1
	self._frame.Size = UDim2.new(0, self._frame.Size.X.Offset, 0, targetHeight)
end

return ErrorPrompt
