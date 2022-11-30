local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local t = dependencies.t

local Tooltip = UIBlox.App.Dialog.Tooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
local withLocalization = dependencies.withLocalization
local LocalizedKeys = require(SocialTab.Enums.LocalizedKeys)

local TOOLTIP_MARGIN = -12

local AddFriendHint = Roact.PureComponent:extend("AddFriendHint")
AddFriendHint.defaultProps = {
	layoutOrder = 0,
	maxHintHeight = 100,
}

AddFriendHint.validateProps = t.interface({
	layoutOrder = t.optional(t.number),
	maxHintHeight = t.number,
})

function AddFriendHint:render()
	return withLocalization({
		addFriendsHintText = LocalizedKeys.AddFriendsHintText.rawValue(),
		addFriendsHintTitle = LocalizedKeys.AddFriendsHintTitle.rawValue(),
	})(function(localizedStrings)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
			LayoutOrder = self.props.layoutOrder,
			BackgroundTransparency = 1,
		}, {
			HintFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, self.props.maxHintHeight),
				BackgroundTransparency = 1,
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					triggerPosition = Vector2.new(0, self.props.maxHintHeight),
					triggerSize = Vector2.new(TOOLTIP_MARGIN, self.props.maxHintHeight),
					bodyText = localizedStrings.addFriendsHintText,
					headerText = localizedStrings.addFriendsHintTitle,
					orientation = TooltipOrientation.Right,
					forceClickTriggerPoint = true,
					isDirectChild = true,
				}),
			}),
		})
	end)
end

return AddFriendHint
