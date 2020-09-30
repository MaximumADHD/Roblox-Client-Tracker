--!nocheck

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local GameSettings = settings():FindFirstChild("Game Options") or error("Game Options does not exist", 0)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle
local ContextualMenu = UIBlox.App.Menu.ContextualMenu
local MenuDirection = UIBlox.App.Menu.MenuDirection

local InGameMenu = script.Parent.Parent

local withLocalization = require(InGameMenu.Localization.withLocalization)

local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local StartLeavingGame = require(InGameMenu.Actions.StartLeavingGame)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local Assets = require(InGameMenu.Resources.Assets)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local Constants = require(InGameMenu.Resources.Constants)

local KeyLabel = require(script.Parent.KeyLabel)
local PageNavigation = require(script.Parent.PageNavigation)
local GameIconHeader = require(script.Parent.GameIconHeader)

local FFlagRecordRecording = require(InGameMenu.Flags.FFlagRecordRecording)
local FFlagTakeAScreenshotOfThis = game:DefineFastFlag("TakeAScreenshotOfThis", false)
local FFlagShowContextMenuWhenButtonsArePresent = game:DefineFastFlag("ShowContextMenuWhenButtonsArePresent", false)
local GetFFlagUseNewLeaveGamePrompt = require(InGameMenu.Flags.GetFFlagUseNewLeaveGamePrompt)

local Images = UIBlox.App.ImageSet.Images

local MAIN_PAGE_WIDTH = 400
local RECORD_UPDATE_STEP = 0.2

local MainPage = Roact.PureComponent:extend("MainPage")

local function areCapturesAllowed()
	if not FFlagTakeAScreenshotOfThis then
		return true
	end
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	local PolicyService = require(RobloxGui.Modules.Common:WaitForChild("PolicyService"))
	return not PolicyService:IsSubjectToChinaPolicies()
end

local function renderButtonModels(self, style, localized)
	local buttons = {}

	-- Favorite Button
	-- Follow Button
	-- Report Button

	if areCapturesAllowed() then

		-- Screenshot Button
		if FFlagTakeAScreenshotOfThis then
			table.insert(buttons, {
				icon = Images["icons/controls/screenshot"],
				text = localized.screenCapture,
				onActivated = function()
					self:setState({
						modalOpen = false,
					})
					self.props.closeMenu()
					for _ = 1, 2 do -- wait for top-bar to update
						RunService.RenderStepped:Wait()
					end
					CoreGui:TakeScreenshot()
				end,
			})
		end

		-- Record Button
		if GameSettings.VideoCaptureEnabled and FFlagRecordRecording then
			local recordingText = localized.recordVideo
			local colorOverride = nil
			if self.props.recording then
				local d = os.date("*t", self.state.recordingDuration)
				local formattedTime = ("%d:%02d"):format(d.min, d.sec)
				recordingText = localized.recording:gsub("{DURATION}", formattedTime)
				colorOverride = style.Theme.Alert.Color
			end
			table.insert(buttons, {
				icon = Images["icons/controls/screenrecord"],
				text = recordingText,
				onActivated = function()
					CoreGui:ToggleRecording()
					self:setState({
						modalOpen = false,
					})
				end,
				keyCodeLabel = Enum.KeyCode.F12,
				iconColorOverride = colorOverride,
				textColorOverride = colorOverride,
			})
		end

	end

	-- Respawn Button
	if self.props.respawnButtonVisible then
		table.insert(buttons, {
			icon = Assets.Images.RespawnIcon,
			text = localized.respawnCharacter,
			onActivated = function()
				self:setState({
					modalOpen = false,
				})

				self.props.startRespawning()
			end,
			keyCodeLabel = Enum.KeyCode.R,
		})
	end

	return buttons
end

MainPage.validateProps = t.strictInterface({
	open = t.boolean,
	respawnButtonVisible = t.boolean,
	startLeavingGame = t.callback,
	startRespawning = t.callback,
	closeMenu = t.callback,
	recording = t.boolean,
	screenSize = t.Vector2,
})

function MainPage:init()
	self.state = {
		modalOpen = false,
		recordingDuration = 0,
	}
end

function MainPage:render()

	return withStyle(function(style)
		return withLocalization({
			leaveGame = "CoreScripts.InGameMenu.LeaveGame",
			respawnCharacter = "CoreScripts.InGameMenu.RespawnCharacter",
			recordVideo = "CoreScripts.InGameMenu.Record.StartRecording",
			recording = "CoreScripts.InGameMenu.Record.Duration",
			screenCapture = "CoreScripts.InGameMenu.Controls.Screenshot",
		})(function(localized)
			local moreButton = Roact.createElement(UIBlox.App.Button.SecondaryButton, {
				size = UDim2.fromOffset(44, 44),
				onActivated = function()
					self:setState({
						modalOpen = true,
					})
				end,
				icon = Assets.Images.MoreActions,
			})

			local buttonModels = renderButtonModels(self, style, localized)
			local showContextMenu = self.props.respawnButtonVisible

			if FFlagShowContextMenuWhenButtonsArePresent then
				showContextMenu = #buttonModels > 0
			end

			local leaveGameSizeOffset = showContextMenu and -(44 + 12) or 0

			return Roact.createElement("TextButton", {
				Size = UDim2.new(0, MAIN_PAGE_WIDTH, 1, 0),
				BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				Visible = self.props.open,
				Text = "",
				AutoButtonColor = false,
			}, {
				GameIconHeader = Roact.createElement(GameIconHeader),
				PageNavigation = Roact.createElement(PageNavigation, {
					Position = UDim2.new(0, 0, 0, 148),
				}),

				ContextualMenu = Roact.createElement(ContextualMenu, {
					buttonProps = buttonModels,

					open = self.state.modalOpen,
					menuDirection = MenuDirection.Up,
					openPositionY = UDim.new(1, -84),

					closeBackgroundVisible = true,
					screenSize = self.props.screenSize,

					onDismiss = function()
						self:setState({
							modalOpen = false,
						})
					end,
				}),

				BottomButtons = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 84),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					BackgroundTransparency = 1,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingTop = UDim.new(0, 24),
						PaddingBottom = UDim.new(0, 24),
						PaddingLeft = UDim.new(0, 24),
						PaddingRight = UDim.new(0, 24),
					}),
					LeaveGame = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, leaveGameSizeOffset, 0, 44),
						Position = UDim2.fromScale(1, 0),
						AnchorPoint = Vector2.new(1, 0),
					}, {
						Button = Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
							size = UDim2.fromScale(1, 1),
							onActivated = self.props.startLeavingGame,
							text = localized.leaveGame,
						}),
						KeyLabel = Roact.createElement(KeyLabel, {
							input = Enum.KeyCode.L,
							borderThemeKey = "UIDefault",
							textThemeKey = "SystemPrimaryContent",
							AnchorPoint = Vector2.new(1, 0.5),
							Position = UDim2.new(1, -16, 0.5, 0),
							ZIndex = 2,
						})
					}),
					MoreButton = showContextMenu and moreButton,
				}),
			})
		end)
	end)
end

function MainPage:willUnmount()
	self.recording = false
end

function MainPage:didUpdate(prevProps)
	if prevProps.open and not self.props.open then
		self:setState({
			modalOpen = false,
		})
	end
	if FFlagRecordRecording then
		if self.props.recording then
			if not prevProps.recording then
				self.recording = true
				local startTime = tick() -- TODO: Switch to os.clock() when it becomes available
				local function loop()
					if self.recording then
						delay(RECORD_UPDATE_STEP, loop)
					end
					self:setState({
						recordingDuration = tick() - startTime
					})
				end
				self:setState({
					recordingDuration = 0
				})
				delay(RECORD_UPDATE_STEP, loop)
			end
		else
			self.recording = false
		end
	end
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		open = state.isMenuOpen,
		respawnButtonVisible = state.respawn.enabled,
		recording = state.recording,
		screenSize = state.screenSize,
	}
end, function(dispatch)
	return {
		startLeavingGame = function()
			if GetFFlagUseNewLeaveGamePrompt() then
				dispatch(SetCurrentPage(Constants.LeaveGamePromptPageKey))
			else
				dispatch(StartLeavingGame())
			end
		end,
		startRespawning = function()
			dispatch(SetRespawning(true))
		end,
		closeMenu = function()
			dispatch(CloseMenu)
		end,
	}
end)(MainPage)
