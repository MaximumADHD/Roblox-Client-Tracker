--[[
	A stylized button showing a thumbs up and down along with various states for if the user already voted.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Util = require(Framework.Util)
local prioritize = Util.prioritize
local StyleModifier = require(Framework.Util.StyleModifier)

local Button = require(Framework.UI.Components.DEPRECATED_Button)
local HoverArea = require(Framework.UI.Components.HoverArea)
local Pane = require(Framework.UI.Components.Pane)

local VoteButton = Roact.PureComponent:extend("VoteButton")

VoteButton.VoteType = {
	UpVote = "UpVote",
	DownVote = "DownVote",
}

export type VoteType = "UpVote" | "DownVote"

export type Props<T> = {
	LayoutOrder: number?,
	OnClick: () -> nil,
	Size: UDim2?,
	VoteType: VoteType,
	CanVote: boolean?,
	UserVote: boolean?,
}

type _Props<T> = Props<T> & {
	Style: string?,
	Stylizer: { [string]: any },
}

function VoteButton:init()
	self.onClick = function()
		local props = self.props
		if props.CanVote then
			props.OnClick()
		end
	end
end

function VoteButton:render()
	local props = self.props
	local theme = props.Stylizer
	local size = prioritize(props.Size, theme.Size)

	local voteStyle = prioritize(props.Style, theme["&" .. props.VoteType])
	local buttonStyle = props.CanVote and voteStyle.CanVote or voteStyle

	local isUpVote = props.VoteType == VoteButton.VoteType.UpVote

	local styleModifier
	if props.CanVote then
		if props.UserVote == true and isUpVote or props.UserVote == false and not isUpVote then
			styleModifier = StyleModifier.Selected
		end
	else
		styleModifier = StyleModifier.Disabled
	end

	return Roact.createElement(Button, {
		LayoutOrder = props.LayoutOrder,
		Style = buttonStyle,
		StyleModifier = styleModifier,
		OnClick = self.onClick,
		Size = size,
	}, {
		UIListLayout = Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),

		Thumb = Roact.createElement("ImageLabel", buttonStyle.ThumbStyle),

		HoverArea = props.CanVote and Roact.createElement(HoverArea, {
			Cursor = "PointingHand",
		}),
	})
end

VoteButton = withContext({
	Stylizer = ContextServices.Stylizer,
})(VoteButton)

return VoteButton
