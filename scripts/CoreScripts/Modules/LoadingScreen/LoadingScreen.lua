--!nonstrict
-- Services
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalizationService = game:GetService("LocalizationService")
local ContextActionService = game:GetService("ContextActionService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
-- Dependencies
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui:WaitForChild("Modules")
local InGameMenuDependencies = require(CorePackages:WaitForChild("InGameMenuDependencies"))
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local ExternalEventConnection = require(CorePackages.RoactUtilities.ExternalEventConnection)
local GetGameProductInfo = require(Modules.LoadingScreen.Thunks.GetGameProductInfo)
local GetIsSubjectToChinaPolicies = require(Modules.LoadingScreen.Thunks.GetIsSubjectToChinaPolicies)
local GetUniverseId = require(Modules.LoadingScreen.Thunks.GetUniverseId)

local AppTempCommon = CorePackages:WaitForChild("AppTempCommon")
local AppDarkTheme = require(AppTempCommon.LuaApp.Style.Themes.DarkTheme)
local AppFont = require(AppTempCommon.LuaApp.Style.Fonts.Gotham)
local AppStyle = {
	Theme = AppDarkTheme,
	Font = AppFont,
}
local CoreScriptTranslator = CoreGui.CoreScriptLocalization:GetTranslator(LocalizationService.RobloxLocaleId)
local httpRequest = require(AppTempCommon.Temp.httpRequest)
local networking = httpRequest(HttpRbxApiService)
-- Constants
local GAME_ICON_URL = "rbxthumb://type=GameIcon&id=%d&w=256&h=256"
local GAME_THUMBNAIL_URL = "rbxthumb://type=GameThumbnail&id=%d&w=768&h=432"

local BASE_SCREEN_ORDER = 7
local THUMBNAIL_SIZE = Vector2.new(768, 432)
local THUMBNAIL_TO_SCREEN_WIDTH_RATIO = 1.5
local GAME_ICON_FALLBACK_COLOR = Color3.fromRGB(101, 102, 104)
local INFO_FRAME_TRANSPARENCY = 0.8
local SHIMMER_SPEED = 3
local CLOSE_BTN_SHOW_TIMER = 5
local PADDING = {
	MOBILE_PORTRAIT = { TOP = 44, BOTTOM = 44, LEFT = 24, RIGHT = 24},
	MOBILE_LANDSCAPE = { TOP = 24, BOTTOM = 24, LEFT = 44, RIGHT = 44},
	DESKTOP = { TOP = 24, BOTTOM = 24, LEFT = 24, RIGHT = 24},
	CONSOLE = { TOP = 64, BOTTOM = 64, LEFT = 64, RIGHT = 64},
}
local TENFOOT_CANCEL_BTN_OFFSET = 48

local isTenFootInterface = GuiService:IsTenFootInterface()
local platform = UserInputService:GetPlatform()
local isMobilePlatform = platform == Enum.Platform.IOS or platform == Enum.Platform.Android
local debugMode = false

local ICON_SIZE_FOR_SCREEN = isTenFootInterface and 256 or 150

local connectionHealthCloseEvent = nil
local numberOfTaps = 0
local lastTapTime = math.huge

-- helper functions
local function getPadding(isPortrait)
	if isMobilePlatform then
		return isPortrait and PADDING.MOBILE_PORTRAIT or PADDING.MOBILE_LANDSCAPE
	elseif isTenFootInterface then
		return PADDING.CONSOLE
	else
		return PADDING.DESKTOP
	end
end

local function lerp(range, t)
	if type(range) == "table" and #range >= 2 then
		local tNomralized = math.clamp(t, 0, 1)
		return range[1] * (1 - tNomralized) + range[2] * tNomralized
	end
	return 0
end

local ANIMATIONS = {
	FadeIn = function(timeElapsed, animationProps, updateBindings, endCallback)
		local AnimationSteps = {
			AnimateIconThumbnail = 1,
			AnimateUniverseText = 2,
			AnimateCreatorText = 3,
		}
		local AnimationLength = {
			 [AnimationSteps.AnimateIconThumbnail] = 1,
			 [AnimationSteps.AnimateUniverseText] = 0.5,
			 [AnimationSteps.AnimateCreatorText] = 0.5,
		}

		local iconSizeRange = {0.5, 1.0}
		local transparencyRange = {1.0, 0.0}
		local currentStepLength = 0
		local step = 0
		for i = 1, #AnimationLength do
			currentStepLength = currentStepLength + AnimationLength[i]
			if timeElapsed <= currentStepLength then
				step = i
				break
			end
		end
		-- no animation for info frame but the value needs to be set
		updateBindings.infoFrameTransparency(INFO_FRAME_TRANSPARENCY)
		if step == AnimationSteps.AnimateIconThumbnail then
			local t = 1.0 - ((currentStepLength - timeElapsed) / AnimationLength[step])
			updateBindings.iconTransparency(lerp(transparencyRange, t))
			updateBindings.iconSize(lerp(iconSizeRange, t))
			updateBindings.thumbnailTransparency(lerp(transparencyRange, t))
		elseif step == AnimationSteps.AnimateUniverseText then
			local t = 1.0 - ((currentStepLength - timeElapsed) / AnimationLength[step])
			updateBindings.placeTextTransparency(lerp(transparencyRange, t))
		elseif step == AnimationSteps.AnimateCreatorText then
			local t = 1.0 - ((currentStepLength - timeElapsed) / AnimationLength[step])
			updateBindings.creatorTextTransparency(lerp(transparencyRange, t))
		else
			-- force set values in case the system is skipping frames
			updateBindings.iconTransparency(lerp(transparencyRange, 1.0))
			updateBindings.iconSize(lerp(iconSizeRange, 1.0))
			updateBindings.thumbnailTransparency(lerp(transparencyRange, 1.0))
			updateBindings.placeTextTransparency(lerp(transparencyRange, 1.0))
			updateBindings.creatorTextTransparency(lerp(transparencyRange, 1.0))
			endCallback()
		end
	end,
	FadeOut = function(timeElapsed, animationProps, updateBindings, endCallback)
		local AnimationSteps = {
			AnimateCreatorText = 1,
			AnimateUniverseText = 2,
			AnimateIconThumbnail = 3,
		}
		local AnimationLength = {
			 [AnimationSteps.AnimateIconThumbnail] = 0.5,
			 [AnimationSteps.AnimateUniverseText] = 0.5,
			 [AnimationSteps.AnimateCreatorText] = 0.5,
		}

		local iconSizeRange = {1.0, 0.0}
		local transparencyRange = {0.0, 1.0}
		local infoframeTransparencyRange = {INFO_FRAME_TRANSPARENCY, 1.0}
		local currentStepLength = 0
		local step = 0
		for i = 1, #AnimationLength do
			currentStepLength = currentStepLength + AnimationLength[i]
			if timeElapsed <= currentStepLength then
				step = i
				break
			end
		end

		if step == AnimationSteps.AnimateIconThumbnail then
			local t = 1.0 - ((currentStepLength - timeElapsed) / AnimationLength[step])
			updateBindings.iconTransparency(lerp(transparencyRange, t))
			updateBindings.iconSize(lerp(iconSizeRange, t))
			updateBindings.thumbnailTransparency(lerp(transparencyRange, t))
		elseif step == AnimationSteps.AnimateUniverseText then
			local t = 1.0 - ((currentStepLength - timeElapsed) / AnimationLength[step])
			updateBindings.placeTextTransparency(lerp(transparencyRange, t))
			updateBindings.infoFrameTransparency(lerp(infoframeTransparencyRange, t))
		elseif step == AnimationSteps.AnimateCreatorText then
			local t = 1.0 - ((currentStepLength - timeElapsed) / AnimationLength[step])
			updateBindings.creatorTextTransparency(lerp(transparencyRange, t))
		else
			RunService:SetRobloxGuiFocused(false)
			-- force set values in case the system is skipping frames
			updateBindings.iconTransparency(lerp(transparencyRange, 1.0))
			updateBindings.iconSize(lerp(iconSizeRange, 1.0))
			updateBindings.infoFrameTransparency(lerp(infoframeTransparencyRange, 1.0))
			updateBindings.thumbnailTransparency(lerp(transparencyRange, 1.0))
			updateBindings.placeTextTransparency(lerp(transparencyRange, 1.0))
			updateBindings.creatorTextTransparency(lerp(transparencyRange, 1.0))
			endCallback()
		end
	end,
}

local function disconnectAndCloseHealthStat()
	if connectionHealthCloseEvent then
		connectionHealthCloseEvent:disconnect()
		connectionHealthCloseEvent = nil
		GuiService:CloseStatsBasedOnInputString("ConnectionHealth")
	end
end

-- Class
local LoadingScreen = Roact.Component:extend("LoadingScreen")

function LoadingScreen:playAnimation(animFunc, animProps, endcallback)
	self.animationStartTime = tick()
	self.animationFunction = animFunc

	if not self.renderSteppedConnection then
		self.renderSteppedConnection = RunService.RenderStepped:Connect(function()
			self.animationFunction(tick() - self.animationStartTime, animProps, self.updateBindings, function()
				self:stopAnimation()
				if endcallback then
					endcallback()
				end
			end)
		end)
	end
end

function LoadingScreen:stopAnimation()
	if self.renderSteppedConnection then
		self.renderSteppedConnection:Disconnect()
		self.renderSteppedConnection = nil
	end
end

function LoadingScreen:renderBackground(style)
	local thumbnailScaledWidth = self.state.thumbnailScaledWidth
	local thumbnailScaledHeight = self.state.thumbnailScaledHeight
	local thumbnailPositionX = self.state.thumbnailPositionX
	local thumbnailURL = ""
	if self.props.placeId and self.props.placeId > 0 then
		thumbnailURL = GAME_THUMBNAIL_URL:format(self.props.placeId)
	end
	return Roact.createElement("ScreenGui", {
		DisplayOrder = BASE_SCREEN_ORDER,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Roact.createElement("Frame", {
			Name = "BackgroundFrame",
			[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChange,
			BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Active = true,
		}, {
			ThumbnailImage = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Image = thumbnailURL,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(thumbnailPositionX, 0.5),
				Size = UDim2.fromOffset(thumbnailScaledWidth, thumbnailScaledHeight),
				ImageTransparency = self.bindings.thumbnailTransparency,
			}),
			renderStepped = Roact.createElement(ExternalEventConnection, {
				event = RunService.renderStepped,
				callback = self.renderBackgroundSteppedCallback,
			}),
		})
	})
end

function LoadingScreen:showConnnectionHealthDebugMenu(input)
	local doubleTapTimeThreshold = 0.5
	if numberOfTaps == 0 then
		numberOfTaps = 1
		lastTapTime = tick()
		return
	end
	if isMobilePlatform then
		if tick() - lastTapTime <= doubleTapTimeThreshold then
			GuiService:ShowStatsBasedOnInputString("ConnectionHealth")
		end
	end

	numberOfTaps = 0
	lastTapTime = math.huge
end

function LoadingScreen:renderPlaceIcon()
	local shimPos = self.state.shimPos
	local iconURL = ""
	if self.props.universeId and self.props.universeId > 0 then
		iconURL = GAME_ICON_URL:format(self.props.universeId)
	end
	return Roact.createElement("Frame", {
		Name = "IconFrame",
		BackgroundTransparency = 0,
		BackgroundColor3 = GAME_ICON_FALLBACK_COLOR,
		BorderSizePixel = 0,
		Size = self.bindings.iconSize,
		Position = UDim2.fromScale(0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Active = true,
	}, {
		Shimmer = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = Color3.new(1, 1, 1),
			BackgroundTransparency = 0,
		}, {
			Corner = Roact.createElement("UICorner"),
			Gradient = Roact.createElement("UIGradient", {
				Rotation = 25,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.new(0.5, 0.5, 0.5)),
					ColorSequenceKeypoint.new(0.5, Color3.new(1.0, 1.0, 1.0)),
					ColorSequenceKeypoint.new(1.0, Color3.new(0.5, 0.5, 0.5)),
				}),
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0.7),
					NumberSequenceKeypoint.new(0.5, 0.3),
					NumberSequenceKeypoint.new(1, 0.7),
				}),
				Offset = Vector2.new(shimPos, 0),
			}),
			renderStepped = Roact.createElement(ExternalEventConnection, {
				event = RunService.renderStepped,
				callback = self.renderShimmerCallback,
			}),
		}),
		GameIconImage = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = iconURL,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromScale(1, 1),
			ImageTransparency = self.bindings.iconTransparency,
		}, {
			Corner = Roact.createElement("UICorner"),
		}),
		Corner = Roact.createElement("UICorner"),
	})
end

function LoadingScreen:renderInfoFrame(style)
	local productInfo = self.props.productInfo
	local placeName = productInfo and productInfo.Name or ""
	local creatorName = productInfo and productInfo.Creator.Name or ""

	return Roact.createElement("Frame", {
		Name = "InfoFrame",
		BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
		BackgroundTransparency = self.bindings.infoFrameTransparency,
		BorderSizePixel = 0,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = self.isPortrait and UDim2.fromScale(0.8, 0.2) or UDim2.fromScale(0.6, 0.4),
		Active = true,
	}, {
		PlaceIcon = self:renderPlaceIcon(),
		TextLayoutFrame = Roact.createElement("Frame", {
			Name = "TextLayout",
			BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, ICON_SIZE_FOR_SCREEN / 2),
			Size = UDim2.new(1.0, 0, 1.0, - ICON_SIZE_FOR_SCREEN / 2),
			Active = true,
		}, {
			PlaceLabel = Roact.createElement("TextLabel", {
				Name = 'PlaceLabel',
				BackgroundTransparency = 1,
				TextTransparency = self.bindings.placeTextTransparency,
				Size = UDim2.fromScale(0.8, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.0),
				Font = style.Font.Header1.Font,
				TextSize = 24,
				TextScaled = true,
				TextWrapped = true,
				TextColor3 = style.Theme.TextEmphasis.Color,
				TextStrokeTransparency = 1,
				Text = placeName,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				ZIndex = 2,
				LayoutOrder = 1,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}, {
				UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = 48,
					MinTextSize = 12,
				})
			}),
			CreatorLabel = Roact.createElement("TextLabel", {
				Name = 'CreatorLabel',
				BackgroundTransparency = 1,
				TextTransparency = self.bindings.creatorTextTransparency,
				Size = UDim2.fromScale(0.6, 0.3),
				AnchorPoint = Vector2.new(0.5, 1.0),
				Font = style.Font.SubHeader1.Font,
				TextSize = 12,
				TextWrapped = true,
				TextScaled = true,
				TextColor3 = style.Theme.TextEmphasis.Color,
				TextStrokeTransparency = 1,
				Text = creatorName,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				ZIndex = 2,
				LayoutOrder = 2,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}, {
				UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
					MaxTextSize = 24,
					MinTextSize = 12,
				})
			}),
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, 2),
			}),
		}),
		UISizeConstraint = Roact.createElement("UISizeConstraint", {
			MinSize = Vector2.new(200, 125),
		}),
		Corner = Roact.createElement("UICorner"),
	})
end

function LoadingScreen:renderMain(style)
	local padding = getPadding(self.isPortrait)
	return Roact.createElement("ScreenGui", {
		DisplayOrder = BASE_SCREEN_ORDER + 1,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		OnTopOfCoreBlur = true,
	}, {
		DarkGradient = Roact.createElement("Frame", {
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
		},{
			Gradient = Roact.createElement("UIGradient", {
				Rotation = 90,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),
					ColorSequenceKeypoint.new(0.5, Color3.new(0, 0, 0)),
					ColorSequenceKeypoint.new(1.0, Color3.new(0, 0, 0)),
				}),
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 1.0),
					NumberSequenceKeypoint.new(0.5, 1.0),
					NumberSequenceKeypoint.new(1.0, 0.5),
				}),
			}),
			infoFrame = self:renderInfoFrame(style),
			serverFrame = self:renderServerFrame(style),
			closeBtn = self:renderCloseBtn(style),
			tenfootCancelBtn = self:renderTenFootCancelBtn(style),
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, padding.LEFT),
				PaddingRight = UDim.new(0, padding.RIGHT),
				PaddingTop = UDim.new(0, padding.TOP),
				PaddingBottom = UDim.new(0, padding.BOTTOM),
			}),
		}),
	})
end

function LoadingScreen:renderCloseBtn(style)
	if not self.state.showCloseBtn and (tick() - self.startTime) > CLOSE_BTN_SHOW_TIMER and not isTenFootInterface then
		self:setState({
			showCloseBtn = true
		})
	end
	return self.state.showCloseBtn and Roact.createElement("ImageButton", {
		Name = 'CloseButton',
		Image = 'rbxasset://textures/loading/cancelButton.png',
		ImageTransparency = 0,
		BackgroundTransparency = 1,
		Position = UDim2.new(1, -37, 0, 5),
		Size = UDim2.fromOffset(32, 32),
		Active = false,
		ZIndex = 10,
		[Roact.Event.MouseButton1Click] = function()
			game:Shutdown()
		end
	})
end

function LoadingScreen:renderServerFrame(style)
	local serverStatusText =  self.state.serverStatusText
	local showPolicyText = self.props.isSubjectToChinaPolicies
	return Roact.createElement("Frame", {
		Name = "ServerFrame",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		AnchorPoint = Vector2.new(0.5, 1),
		Position = UDim2.fromScale(0.5, 1),
		Size = UDim2.fromScale(0.5, 0.2),
		Active = true,
	}, {
		PolicyLabel = showPolicyText and Roact.createElement("TextLabel", {
			Name = 'PolicyLabel',
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 20),
			Position = UDim2.fromScale(0, 0.5),
			Font = style.Font.Footer.Font,
			TextSize = isTenFootInterface and 20 or 10,
			TextWrapped = true,
			TextScaled = true,
			TextColor3 = style.Theme.TextEmphasis.Color,
			TextStrokeTransparency = 1,
			Text = CoreScriptTranslator:FormatByKey("Authentication.Login.WeChat.AntiAddictionText"),
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			ZIndex = 2,
		}),
		JoinServerLabel = Roact.createElement("TextLabel", {
			Name = 'JoinText',
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 12),
			Position = UDim2.fromScale(0, 1),
			Font = style.Font.Footer.Font,
			TextSize = isTenFootInterface and 24 or 12,
			TextWrapped = true,
			TextScaled = true,
			TextColor3 = style.Theme.TextDefault.Color,
			TextStrokeTransparency = 1,
			Text = serverStatusText,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			ZIndex = 2,
			[Roact.Event.InputBegan] = (not self.props.isSubjectToChinaPolicies) and self.showConnnectionHealthDebugMenu or nil,
		}),
	})
end

function LoadingScreen:renderTenFootCancelBtn(style)
	return self.state.showTenFootCancelBtn and Roact.createElement("Frame", {
		Name = "TenfootCancelFrame",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, TENFOOT_CANCEL_BTN_OFFSET, 0, -TENFOOT_CANCEL_BTN_OFFSET),
		Size = UDim2.fromOffset(150, TENFOOT_CANCEL_BTN_OFFSET),
		Active = true,
	}, {
		CancelIcon = Roact.createElement("ImageLabel", {
			Name = 'TenfootCancel',
			Image = 'rbxasset://textures/ui/Controls/xboxB.png',
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(24, 24),
			Active = false,
			ZIndex = 10,
			LayoutOrder = 0,
		}),
		CancelLabel = Roact.createElement("TextLabel", {
			Name = 'CancelText',
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			Font = style.Font.SubHeader1.Font,
			TextSize = 24,
			TextWrapped = true,
			TextColor3 = style.Theme.TextEmphasis.Color,
			TextStrokeTransparency = 1,
			Text = CoreScriptTranslator:FormatByKey("Feature.SettingsHub.Action.Cancel"),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			ZIndex = 2,
			LayoutOrder = 1,
		}),
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 5),
		}),
	})
end

function LoadingScreen:init()
	-- Animation constants
	self.thumbnailMoveSpd = 0.05
	self.fadeinComplete = false
	self.isPortrait = false
	self.startTime = tick()

	-- Health connection debug menu
	self.numberOfTaps = 0
	self.lastTapTime = math.huge

	-- states
	self:setState({
		visible = true,
		absoluteSize = Vector2.new(0, 0),
		thumbnailPositionX = 0.5,
		thumbnailScaledWidth = THUMBNAIL_SIZE.x,
		thumbnailScaledHeight = THUMBNAIL_SIZE.y,
		shimPos = 0,
		serverStatusText = "",
		showCloseBtn = false,
		showTenFootCancelBtn = isTenFootInterface,
	})

	self.onAbsoluteSizeChange = function(frame)
		self:setState({
			absoluteSize = frame.AbsoluteSize,
		})
		self.isPortrait = frame.AbsoluteSize.X < frame.AbsoluteSize.Y
	end

	-- auto unmount
	game.Loaded:Connect(function()
		while debugMode or not self.fadeinComplete do
			wait() -- wait until fade in animation finished
		end
		self:stopAnimation()
		self:playAnimation(ANIMATIONS["FadeOut"], {}, function()
			self:setState({
				visible = false
			})
		end)
	end)

	-- bindings for one time animation
	local thumbnailTransparency, updatethumbnailTransparency = Roact.createBinding(1)
	local iconTransparency, updateIconTransparency = Roact.createBinding(1)
	local iconSize, updateIconSize = Roact.createBinding(0)
	local placeTextTransparency, updatePlaceTextTransparency = Roact.createBinding(1)
	local creatorTextTransparency, updateCreatorTextTransparency = Roact.createBinding(1)
	local infoFrameTransparency, updateInfoFrameTransparency = Roact.createBinding(INFO_FRAME_TRANSPARENCY)

	self.bindings = {
		thumbnailTransparency = thumbnailTransparency,
		iconTransparency = iconTransparency,
		iconSize = iconSize:map(function(size)
			return UDim2.fromOffset(ICON_SIZE_FOR_SCREEN * size, ICON_SIZE_FOR_SCREEN * size)
		end),
		placeTextTransparency = placeTextTransparency,
		creatorTextTransparency = creatorTextTransparency,
		infoFrameTransparency = infoFrameTransparency,
	}

	self.updateBindings = {
		thumbnailTransparency = updatethumbnailTransparency,
		iconTransparency = updateIconTransparency,
		iconSize = updateIconSize,
		placeTextTransparency = updatePlaceTextTransparency,
		creatorTextTransparency = updateCreatorTextTransparency,
		infoFrameTransparency = updateInfoFrameTransparency,
	}

	-- continous animation
	self.renderBackgroundSteppedCallback = function(dt)
		local absoluteSize = self.state.absoluteSize
		local thumbnailScaledWidth = absoluteSize.x * THUMBNAIL_TO_SCREEN_WIDTH_RATIO
		local thumbnailScaledHeight = thumbnailScaledWidth / THUMBNAIL_SIZE.x * THUMBNAIL_SIZE.y
		-- if scaled height is less than screen height, scale based on height
		if absoluteSize.y > thumbnailScaledHeight then
			thumbnailScaledWidth = absoluteSize.y / THUMBNAIL_SIZE.y * THUMBNAIL_SIZE.x
			thumbnailScaledHeight = absoluteSize.y
		end
		local thumbnailPositionScaledPercentage = thumbnailScaledWidth / absoluteSize.x / 2
		local thumbnailPositionXMax = math.max(thumbnailPositionScaledPercentage, 1.0 - thumbnailPositionScaledPercentage)
		local thumbnailPositionXMin = math.min(thumbnailPositionScaledPercentage, 1.0 - thumbnailPositionScaledPercentage)
		local nextThumbnailPositionX = self.state.thumbnailPositionX + self.thumbnailMoveSpd * dt
		if nextThumbnailPositionX >= thumbnailPositionXMax or nextThumbnailPositionX <= thumbnailPositionXMin then
			self.thumbnailMoveSpd =  -self.thumbnailMoveSpd
			nextThumbnailPositionX = math.clamp(nextThumbnailPositionX, thumbnailPositionXMin, thumbnailPositionXMax)
		end

		self:setState({
			thumbnailPositionX = nextThumbnailPositionX,
			thumbnailScaledHeight = thumbnailScaledHeight,
			thumbnailScaledWidth = thumbnailScaledWidth,
		})
	end

	self.renderShimmerCallback = function(dt)
		local nextShimPos = self.state.shimPos
		nextShimPos = nextShimPos + dt * SHIMMER_SPEED
		if nextShimPos > 1.0 then
			nextShimPos = -1.0
		end
		self:setState({
			shimPos = nextShimPos,
		})
	end

	GuiService.UiMessageChanged:Connect(function(type, newMessage)
		if type == Enum.UiMessageType.UiMessageInfo then
			self:setState({
				serverStatusText = newMessage,
			})
		end
	end)

	if isTenFootInterface then
		local seenBButtonBegin = false
		ContextActionService:BindCoreAction("CancelGameLoad",
			function(actionName, inputState, inputObject)
				if inputState == Enum.UserInputState.Begin then
					seenBButtonBegin = true
				elseif inputState == Enum.UserInputState.End and seenBButtonBegin then
					self:setState({
						showTenFootCancelBtn = false
					})
					ContextActionService:UnbindCoreAction('CancelGameLoad')
					game:Shutdown()
				end
			end,
			false,
			Enum.KeyCode.ButtonB
		)
	end
end

function LoadingScreen:render()
	-- Blur effect can only apply to screengui and it's not recommended to nest screengui
	-- Use Folder as Roact parent to organize two screenguis
	return self.state.visible and Roact.createElement("Folder", {
	}, {
		BackgroundScreen = self:renderBackground(AppStyle),
		MainScreen = self:renderMain(AppStyle),
	})
end

function LoadingScreen:willUpdate(nextProps, nextState)

end

function LoadingScreen:didMount()

	RunService:SetRobloxGuiFocused(true)

	self.props.fetchUniverseId(self.props.placeId)

	self.props.fetchGameProductInfo(self.props.placeId)

	self.props.fetchSubjectToChinaPolicies()

	self:playAnimation(ANIMATIONS["FadeIn"], {}, function()
		self.fadeinComplete = true
		end
	)
end

function LoadingScreen:willUnmount()
	RunService:SetRobloxGuiFocused(false)
	if isTenFootInterface then
		ContextActionService:UnbindCoreAction('CancelGameLoad')
	end
	if not connectionHealthCloseEvent then
		connectionHealthCloseEvent = UserInputService.InputBegan:Connect(function()
			disconnectAndCloseHealthStat()
		end)
	end
end

LoadingScreen = RoactRodux.connect(
	function(state, props)
		return {
			productInfo = state.productInfo,
			isSubjectToChinaPolicies = state.isSubjectToChinaPolicies,
			placeId = state.gameIds and state.gameIds.placeId or props.placeId,
			universeId = state.gameIds and state.gameIds.universeId or 0,
		}
	end,
	function(dispatch)
		return {
			fetchGameProductInfo = function(placeId)
				dispatch(GetGameProductInfo(placeId))
			end,
			fetchSubjectToChinaPolicies = function()
				dispatch(GetIsSubjectToChinaPolicies())
			end,
			fetchUniverseId = function(placeId)
				dispatch(GetUniverseId(networking, placeId))
			end,
		}
	end
)(LoadingScreen)

return LoadingScreen
