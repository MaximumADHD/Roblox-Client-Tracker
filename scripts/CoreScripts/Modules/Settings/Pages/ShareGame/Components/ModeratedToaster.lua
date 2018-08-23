local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame

local Constants = require(ShareGame.Constants)
local StoppedToastTimer = require(ShareGame.Actions.StoppedToastTimer)

local INNER_TEXT_PADDING = 6
local TEXT_SIZE = 16
local TIMER_LENGTH = 4

local ModeratedToaster = Roact.PureComponent:extend("ModeratedToaster")

function ModeratedToaster:restartTimer()
	if not self.timerConnection then
		self.timerConnection = RunService.RenderStepped:Connect(function()
			local moderatedToasts = self.props.moderatedToasts

			if #moderatedToasts == 0 then
				self:stopTimer()
				return
			end

			local lastModerated = moderatedToasts[#moderatedToasts]
			local goalTick = lastModerated.timeStamp + TIMER_LENGTH

			local now = tick()
			if now > goalTick then
				self:stopTimer()
			end
		end)
	end
end

function ModeratedToaster:stopTimer()
	if self.timerConnection then
		self.timerConnection:Disconnect()
		self.timerConnection = nil
	end

	self.props.stoppedTimerDispatch()
end

function ModeratedToaster:didUpdate()
	local moderatedToasts = self.props.moderatedToasts

	if #moderatedToasts ~= 0 then
		self:restartTimer()
	end
end

function ModeratedToaster:render()
	local deviceLayout = self.props.deviceLayout
	local moderatedToasts = self.props.moderatedToasts

	local layoutSpecific = Constants.LayoutSpecific[deviceLayout]
	local toastHeight = layoutSpecific.TOAST_HEIGHT

	if #moderatedToasts == 0 then
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
				Font = Enum.Font.SourceSansSemibold,
				Size = UDim2.new(1, 0, 1, 0),
				Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.ModeratedInviteError"),
				TextColor3 = Constants.Color.WHITE,
				TextSize = TEXT_SIZE,
				TextWrapped = true,
			})
		}),
	})
end

local function mapStateToProps(state)
	return {
		deviceLayout = state.DeviceInfo.DeviceLayout,
		moderatedToasts = state.Toasts.moderated,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		stoppedTimerDispatch = function()
			dispatch(StoppedToastTimer())
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(ModeratedToaster)
