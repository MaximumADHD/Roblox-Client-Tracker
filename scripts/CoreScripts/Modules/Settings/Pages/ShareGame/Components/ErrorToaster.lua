local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame

local Constants = require(ShareGame.Constants)
local StoppedToastTimer = require(ShareGame.Actions.StoppedToastTimer)
local Theme = require(RobloxGui.Modules.Settings.Theme)
local InviteStatus = Constants.InviteStatus

local INNER_TEXT_PADDING = 6
local TEXT_SIZE = 16
local TIMER_LENGTH = 4

local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()

local ErrorToaster = Roact.PureComponent:extend("ErrorToaster")

function ErrorToaster:restartTimer()
	if not self.timerConnection then
		self.timerConnection = RunService.RenderStepped:Connect(function()
			local failedInvites = self.props.failedInvites

			if #failedInvites == 0 then
				self:stopTimer()
				return
			end

			local lastModerated = failedInvites[#failedInvites]
			local goalTick = lastModerated.timeStamp + TIMER_LENGTH

			local now = tick()
			if now > goalTick then
				self:stopTimer()
			end
		end)
	end
end

function ErrorToaster:stopTimer()
	if self.timerConnection then
		self.timerConnection:Disconnect()
		self.timerConnection = nil
	end

	self.props.stoppedTimerDispatch()
end

function ErrorToaster:didUpdate()
	local failedInvites = self.props.failedInvites

	if #failedInvites ~= 0 then
		self:restartTimer()
	end
end

function ErrorToaster:render()
	local deviceLayout = self.props.deviceLayout
	local failedInvites = self.props.failedInvites

	local layoutSpecific = Constants.LayoutSpecific[deviceLayout]
	local toastHeight = layoutSpecific.TOAST_HEIGHT

	if #failedInvites == 0 then
		return
	end

	local errorMessageKey
	local inviteStatus = failedInvites[#failedInvites].status
	if inviteStatus == InviteStatus.Moderated then
		errorMessageKey = "Feature.SettingsHub.Label.ModeratedInviteError"
	elseif inviteStatus == InviteStatus.Failed then
		errorMessageKey = "Feature.SettingsHub.Label.GameInviteError"
	else
		return
	end

	return Roact.createElement("ScreenGui", {
		DisplayOrder = 2,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		ToastFrame = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundColor3 = Constants.Color.RED,
			BorderSizePixel = 0,
			Position = UDim2.new(0.5, 0, 0, 0),
			Size = UDim2.new(0.5, 0, 0, toastHeight),
		}, {
			InnerTextPadding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, INNER_TEXT_PADDING),
				PaddingRight = UDim.new(0, INNER_TEXT_PADDING),
			}),
			ToastText = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Font = Theme.font(Enum.Font.SourceSansSemibold, "Semibold"),
				Size = UDim2.new(1, 0, 1, 0),
				Text = RobloxTranslator:FormatByKey(errorMessageKey),
				TextColor3 = Constants.Color.WHITE,
				TextSize = Theme.textSize(TEXT_SIZE),
				TextWrapped = true,
			}),
		}),
	})
end

local function mapStateToProps(state)
	return {
		deviceLayout = state.DeviceInfo.DeviceLayout,
		failedInvites = state.Toasts.failedInvites,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		stoppedTimerDispatch = function()
			dispatch(StoppedToastTimer())
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(ErrorToaster)
