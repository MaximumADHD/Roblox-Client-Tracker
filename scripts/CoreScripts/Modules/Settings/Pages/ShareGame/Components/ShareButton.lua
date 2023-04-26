local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Theme = require(RobloxGui.Modules.Settings.Theme)

local SHARE_TEXT_FONT = Theme.font(Enum.Font.SourceSansSemibold, "Semibold")
local SHARE_TEXT_SIZE = Theme.textSize(19)
local HOVERED_BACKGROUND_COLOR = Color3.fromRGB(222, 225, 227)
local BACKGROUND_COLOR = Color3.fromRGB(255, 255, 255)

local ShareButton = Roact.PureComponent:extend("ShareButton")

function ShareButton:init()
	self.state = {
		isHovering = false,
	}
end

function ShareButton:render()
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local onShare = self.props.onShare
	local isEnabled = self.props.isEnabled
	local text = self.props.text

	return Roact.createElement("TextButton", {
		LayoutOrder = layoutOrder,
		Size = size,
		Text = text,
		TextSize = SHARE_TEXT_SIZE,
		Font = SHARE_TEXT_FONT,
		AutoButtonColor = false,
		BackgroundColor3 = if self.state.isHovering and isEnabled then HOVERED_BACKGROUND_COLOR else BACKGROUND_COLOR,
		BorderSizePixel = 0,
		Transparency = if isEnabled then 0 else 0.5,

		[Roact.Event.Activated] = function()
			if isEnabled then
				onShare()
			end
		end,
		[Roact.Event.InputBegan] = function()
			self:setState({ isHovering = true })
		end,
		[Roact.Event.InputEnded] = function()
			self:setState({ isHovering = false })
		end,
	}, {
		Corner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 4),
		}),
	})
end

return ShareButton
