local Modules = script.Parent.Parent

local Create = require(Modules.Create)
local Constants = require(Modules.Constants)
local ActionType = require(Modules.ActionType)

local ToastComponent = {}
ToastComponent.__index = ToastComponent

local POSITION_HIDE = UDim2.new(0.5, 0, 1, 72)
local POSITION_SHOW = UDim2.new(0.5, 0, 1, -56-48)
local TEXT_SIZE = Constants.Font.FONT_SIZE_16
local PADDING = 12

function ToastComponent.new(appState, route)
	local self = {}
	self.appState = appState
	self.route = route
	setmetatable(self, ToastComponent)

	self.rbx = Create.new"Frame" {
		Name = "ToastComponent",
		Size = UDim2.new(1, -48*2, 0, 56),
		Position = POSITION_HIDE,
		AnchorPoint = Vector2.new(0.5, 0),
		BackgroundTransparency = 0.1,
		BackgroundColor3 = Constants.Color.GRAY1,
		BorderSizePixel = 0,
		Visible = true,
		Create.new"TextLabel" {
			Name = "Message",
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Font = Enum.Font.SourceSans,
			TextSize = TEXT_SIZE,
			TextColor3 = Constants.Color.WHITE,
			Text = "",
			Size = UDim2.new(1, 0, 1, 0),
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
		}
	}

	self.appState.store.Changed:Connect(function(current, previous)
		if current ~= previous then
			self:Update(current.Toast)
		end
	end)

	return self
end

function ToastComponent:Update(toast)
	if toast == nil then
		return
	end

	-- We don't want to show the toast if another one with the same id is being shown.
	if self.toast and (self.toast.id == toast.id) then
		return
	end

	self.toast = toast
	self:Show(toast)
end

function ToastComponent:Hide()
	self.rbx:TweenPosition(POSITION_HIDE, Enum.EasingDirection.In,
			Enum.EasingStyle.Quad, 0.25, false, function(status)

		self.appState.store:Dispatch({
			type = ActionType.ToastComplete,
			toast = self.toast,
		})
		self.toast = nil
	end)
end

function ToastComponent:Show(toast)

	local message = toast.messageKey ~= nil and
		self.appState.localization:Format(toast.messageKey, toast.messageArguments) or ""
	self.rbx.Message.Text = message

	local textWidth = self.rbx.Message.TextBounds.X

	self.rbx.Size = UDim2.new(0, textWidth + PADDING * 2, 0, 56)
	self.rbx.Position = POSITION_HIDE

	self.rbx:TweenPosition(POSITION_SHOW, Enum.EasingDirection.Out,
			Enum.EasingStyle.Quad, 0.25, false, function(status)
		wait(2)
		if self.toast.id == toast.id then
			self:Hide()
		end
	end)
end

return ToastComponent