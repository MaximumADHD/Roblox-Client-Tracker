local CoreGuiService = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local withLocalization = require(InGameMenu.Localization.withLocalization)

local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local StartLeavingGame = require(InGameMenu.Actions.StartLeavingGame)
local Assets = require(InGameMenu.Resources.Assets)
local divideTransparency = require(InGameMenu.Utility.divideTransparency)

local ThemedTextLabel = require(script.Parent.ThemedTextLabel)
local SystemPrimaryButton = require(script.Parent.SystemPrimaryButton)
local SystemSecondaryButton = require(script.Parent.SystemSecondaryButton)
local KeyLabel = require(script.Parent.KeyLabel)
local PageNavigation = require(script.Parent.PageNavigation)
local GameIconHeader = require(script.Parent.GameIconHeader)
local getFFlagInGameMenuSinglePaneDesign = require(InGameMenu.Flags.GetFFlagInGameMenuSinglePaneDesign)
local fflagInGameMenuSinglePaneDesign = getFFlagInGameMenuSinglePaneDesign()

local FFlagInGameMenuSmallerSideBar = require(InGameMenu.Flags.FFlagInGameMenuSmallerSideBar)
local FFlagRecordRecording = require(InGameMenu.Flags.FFlagRecordRecording)
local GameSettings = settings():FindFirstChild("Game Options") or error("Game Options does not exist", 0)

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images

local MAIN_PAGE_WIDTH = 400
local RECORD_UPDATE_STEP = 0.2

local MainPage = Roact.PureComponent:extend("MainPage")

local function renderButtonModels(self, style, localized)
	local buttons = {}

	-- Favorite Button
	-- Follow Button
	-- Report Button
	-- Screenshot Button

	-- Record Button
	if GameSettings.VideoCaptureEnabled and FFlagRecordRecording then

		local recordingText = localized.recordVideo
		
		if self.props.recording then
			local d = os.date("*t", self.state.recordingDuration)
			local formattedTime = ("%d:%02d"):format(d.min, d.sec)
			recordingText = localized.recording:gsub("{DURATION}", formattedTime)
		end

		table.insert(buttons, {
			icon = Images["icons/controls/screenrecord"],
			text = recordingText,
			onActivated = function ()
				CoreGuiService:ToggleRecording()
			end,
			renderRightElement = function ()
				return Roact.createElement(KeyLabel, {
					input = Enum.KeyCode.F12,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
				})
			end,
		})

	end
	
	-- Respawn Button
	table.insert(buttons, {
		icon = Assets.Images.RespawnIcon,
		text = localized.respawnCharacter,
		onActivated = self.props.startRespawning,
		renderRightElement = function()
			return Roact.createElement(KeyLabel, {
				input = Enum.KeyCode.R,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			})
		end,
	})

	return buttons
end

MainPage.validateProps = t.strictInterface({
	open = t.boolean,
	respawnButtonVisible = t.boolean,
	startLeavingGame = t.callback,
	startRespawning = t.callback,
	recording = t.boolean,
})

function MainPage:init()
	self.state = {
		modalOpen = false,
		recordingDuration = 0,
	}
end

function MainPage:render()
	local leaveGameSizeOffset = self.props.respawnButtonVisible and -(44 + 12) or 0

	local pageOffset = FFlagInGameMenuSmallerSideBar and 64 or 100

	return withStyle(function(style)
		return withLocalization({
			leaveGame = "CoreScripts.InGameMenu.LeaveGame",
			respawnCharacter = "CoreScripts.InGameMenu.RespawnCharacter",
			recordVideo = "CoreScripts.InGameMenu.Record.StartRecording",
			recording = "CoreScripts.InGameMenu.Record.Duration",
		})(function(localized)
			return Roact.createElement("TextButton", {
				Size = UDim2.new(0, MAIN_PAGE_WIDTH, 1, 0),
				Position = UDim2.new(0, fflagInGameMenuSinglePaneDesign and 0 or pageOffset, 0, 0),
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
				ModalBottomSheet = self.state.modalOpen and Roact.createElement(UIBlox.ModalBottomSheet, {
					bottomGap = 84,
					screenWidth = MAIN_PAGE_WIDTH,
					onDismiss = function()
						self:setState({
							modalOpen = false,
						})
					end,
					buttonModels = renderButtonModels(self, style, localized)
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
					LeaveGame = Roact.createElement(SystemPrimaryButton, {
						Position = UDim2.new(1, 0, 0, 0),
						AnchorPoint = Vector2.new(1, 0),
						Size = UDim2.new(1, leaveGameSizeOffset, 0, 44),
						onActivated = self.props.startLeavingGame,
						renderChildren = function(transparency)
							return {
								ButtonText = Roact.createElement(ThemedTextLabel, {
									themeKey = "SystemPrimaryContent",
									fontKey = "Header2",
									Size = UDim2.new(1, 0, 1, 0),
									Text = localized.leaveGame,
								}),

								KeyLabel = Roact.createElement(KeyLabel, {
									input = Enum.KeyCode.L,
									borderThemeKey = "UIDefault",
									textThemeKey = "SystemPrimaryContent",
									AnchorPoint = Vector2.new(1, 0.5),
									Position = UDim2.new(1, -16, 0.5, 0),
								})
							}
						end,
					}),
					MoreButton = self.props.respawnButtonVisible and Roact.createElement(SystemSecondaryButton, {
						Size = UDim2.new(0, 44, 0, 44),
						onActivated = function()
							self:setState({
								modalOpen = true,
							})
						end,
						renderChildren = function(transparency, isHovered, isPressed)
							local iconColor = isHovered and style.Theme.IconOnHover or style.Theme.IconDefault
							local iconColor3 = iconColor.Color
							local iconTransparency = divideTransparency(iconColor.Transparency, isPressed and 2 or 1)

							return {
								ButtonIcon = Roact.createElement(ImageSetLabel, {
									BackgroundTransparency = 1,
									Size = UDim2.new(0, 36, 0, 36),
									Position = UDim2.new(0.5, 0, 0.5, 0),
									AnchorPoint = Vector2.new(0.5, 0.5),
									Image = Assets.Images.MoreActions,
									ImageColor3 = iconColor3,
									ImageTransparency = iconTransparency,
								})
							}
						end,
					})
				})
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
	}
end, function(dispatch)
	return {
		startLeavingGame = function()
			dispatch(StartLeavingGame())
		end,
		startRespawning = function()
			dispatch(SetRespawning(true))
		end,
	}
end)(MainPage)