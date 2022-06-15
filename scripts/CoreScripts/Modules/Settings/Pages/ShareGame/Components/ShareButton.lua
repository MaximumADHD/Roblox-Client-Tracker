local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()

local SHARE_TEXT_FONT = Enum.Font.SourceSansSemibold
local SHARE_TEXT_SIZE = 19

local ShareButton = Roact.PureComponent:extend("ShareButton")

function ShareButton:render()
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local onShare = self.props.onShare

	return Roact.createElement("TextButton", {
		LayoutOrder = layoutOrder,
		Size = size,
		Text = RobloxTranslator:FormatByKey("Feature.SocialShare.Action.Share"),
		TextSize = SHARE_TEXT_SIZE,
		Font = SHARE_TEXT_FONT,
		AutoButtonColor = false,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,

		[Roact.Event.Activated] = function()
			onShare()
		end,
	}, {
		Corner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 4),
		}),
	})
end

return ShareButton
