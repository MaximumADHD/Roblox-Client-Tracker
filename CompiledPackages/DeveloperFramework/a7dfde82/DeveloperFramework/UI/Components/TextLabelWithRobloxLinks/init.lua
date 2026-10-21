--[[
	Automatically finds valid roblox.com links within a given string and creates
	multiple TextLabels and LinkTexts from them.
	See getRobloxLinksFromString for validity of roblox.com links.
	Note that links are appended as new lines and are NOT inline.
]]
local GuiService = game:GetService("GuiService")

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local UI = Framework.UI
local Pane = require(UI.Components.Pane)
local LinkText = require(UI.Components.LinkText)
local TextLabel = require(UI.Components.TextLabel)

local Util = Framework.Util
local getRobloxLinksFromString = require(Util.getRobloxLinksFromString)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local prioritize = require(Util.prioritize)

local TextLabelWithRobloxLinks = Roact.PureComponent:extend("TextLabelWithRobloxLinks")
local FFlagDevFrameworkFixMissingKeyErrors = require(Framework.SharedFlags.getFFlagDevFrameworkFixMissingKeyErrors)()
local isRoact17 = require(Framework.Util.isRoact17)(Roact)

export type Props = {
	AutomaticSize: Enum.AutomaticSize?,
	ClipsDescendants: boolean?,
	Font: Enum.Font,
	HorizontalAlignment: Enum.HorizontalAlignment?,
	LayoutOrder: number?,
	OnClickLink: ((url: string) -> ())?,
	Position: UDim2?,
	Size: UDim2?,
	RichText: boolean?,
	Text: string,
	TextColor: Color3?,
	TextSize: number?,
	TextTruncate: Enum.TextTruncate?,
	TextWrapped: boolean?,
	TextXAlignment: Enum.TextXAlignment?,
	TextYAlignment: Enum.TextYAlignment?,
	VerticalAlignment: Enum.VerticalAlignment?,
}

type _Props = Props & {
	Stylizer: { [string]: any },
}

export type State = {
	linkifyItems: { getRobloxLinksFromString.LinkifyItem },
}

TextLabelWithRobloxLinks.defaultProps = {
	HorizontalAlignment = Enum.HorizontalAlignment.Left,
	TextXAlignment = Enum.TextXAlignment.Left,
}

function TextLabelWithRobloxLinks:init()
	self.state = {
		linkifyItems = {},
	}

	self.onClickLink = function(url: string)
		local props: _Props = self.props
		if props.OnClickLink then
			props.OnClickLink(url)
		end
		GuiService:OpenBrowserWindow(url)
	end

	self.createLinkifiedItems = function()
		local props: _Props = self.props
		local linkifyItems = getRobloxLinksFromString(props.Text)

		self:setState(function()
			return {
				linkifyItems = linkifyItems,
			}
		end)
	end
end

function TextLabelWithRobloxLinks:didMount()
	self.createLinkifiedItems()
end

function TextLabelWithRobloxLinks:didUpdate(prevProps: Props)
	local props: _Props = self.props
	if prevProps.Text ~= props.Text then
		self.createLinkifiedItems()
	end
end

function TextLabelWithRobloxLinks:render()
	local props: _Props = self.props
	local state: State = self.state

	local style = props.Stylizer
	local font = prioritize(props.Font, style.Font)
	local textSize = prioritize(props.TextSize, style.TextSize)
	local textColor = prioritize(props.TextColor, style.TextColor)
	local textXAlignment = prioritize(props.TextXAlignment, style.TextXAlignment)
	local textYAlignment = prioritize(props.TextYAlignment, style.TextYAlignment)

	local layoutOrderIterator = LayoutOrderIterator.new()
	local elements = {}
	for i, item in pairs(state.linkifyItems) do
		if item.IsLink then
			local urlLink = item.UrlInfo.Link
			elements[i] = Roact.createElement(LinkText, {
				key = if FFlagDevFrameworkFixMissingKeyErrors and isRoact17 then tostring(i) else nil,
				Font = font,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = UDim2.new(1, 0, 0, 0),
				Text = item.Text,
				TextSize = textSize,
				TextTruncate = props.TextTruncate,
				TextWrapped = props.TextWrapped,
				TextXAlignment = textXAlignment,
				TextYAlignment = textYAlignment,
				OnClick = function()
					self.onClickLink(urlLink)
				end,
			})
		else
			elements[i] = Roact.createElement(TextLabel, {
				key = if FFlagDevFrameworkFixMissingKeyErrors and isRoact17 then tostring(i) else nil,
				AutomaticSize = Enum.AutomaticSize.Y,
				Font = font,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				RichText = props.RichText,
				Size = UDim2.new(1, 0, 0, 0),
				Text = item.Text,
				TextColor = textColor,
				TextSize = textSize,
				TextTruncate = props.TextTruncate,
				TextWrapped = props.TextWrapped,
				TextXAlignment = textXAlignment,
				TextYAlignment = textYAlignment,
			})
		end
	end

	return Roact.createElement(Pane, {
		AutomaticSize = props.AutomaticSize,
		ClipsDescendants = props.ClipsDescendants,
		HorizontalAlignment = props.HorizontalAlignment,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
		Position = props.Position,
		Size = props.Size,
		Spacing = style.Spacing,
		VerticalAlignment = props.VerticalAlignment,
	}, elements)
end

TextLabelWithRobloxLinks = withContext({
	Stylizer = ContextServices.Stylizer,
})(TextLabelWithRobloxLinks)

return TextLabelWithRobloxLinks
