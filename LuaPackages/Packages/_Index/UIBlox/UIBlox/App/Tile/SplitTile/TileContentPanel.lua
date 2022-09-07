local SplitTileRoot = script.Parent
local TileRoot = SplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local React = require(Packages.React)
local t = require(Packages.t)
local useStyle = require(Core.Style.useStyle)

local setDefault = require(UIBlox.Utility.setDefault)

local TEXT_LINE_COUNT = 2
local TITLE_PADDING = 8

export type TileContentPanelProps = {
	-- The total height of the panel. Width will span its parent
	panelHeight: number,
	-- The height of the panel's footer. Width will span its parent
	footerHeight: number,
	-- The title for the panel's content
	contentTitle: string?,
	-- Footer to be shown below the panel's title
	contentFooter: table?,
	-- The number of text lines in the panel's title
	textLineCount: number?,
	-- Whether or not the panel includes side padding
	hasSidePadding: boolean?,
}

local function TileContentPanel(props: TileContentPanelProps)
	local contentTitle = props.contentTitle
	local contentFooter = props.contentFooter
	local titleTextLineCount = setDefault(props.textLineCount, TEXT_LINE_COUNT)
	local hasSidePadding = setDefault(props.hasSidePadding, true)
	local panelHeight = props.panelHeight
	local footerHeight = props.footerHeight

	local titleSize = if contentFooter then UDim2.new(1, 0, 1, -footerHeight) else UDim2.new(1, 0, 1, 0)

	local stylePalette = useStyle()
	local font = stylePalette.Font
	local theme = stylePalette.Theme

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, panelHeight),
		BackgroundTransparency = 1,
		LayoutOrder = 2,
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingLeft = if hasSidePadding then UDim.new(0, TITLE_PADDING) else nil,
			PaddingRight = if hasSidePadding then UDim.new(0, TITLE_PADDING) else nil,
			PaddingTop = UDim.new(0, TITLE_PADDING),
			PaddingBottom = UDim.new(0, TITLE_PADDING),
		}),
		TitleText = if titleTextLineCount > 0
				and contentTitle
				and string.len(contentTitle) > 0
			then React.createElement("TextLabel", {
				Size = titleSize,
				BackgroundTransparency = 1,
				Text = contentTitle,
				Font = font.Header2.Font,
				TextSize = font.BaseSize * font.Header2.RelativeSize,
				TextTransparency = theme.TextEmphasis.Transparency,
				TextColor3 = theme.TextEmphasis.Color,
				TextWrapped = true,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			})
			else nil,
		ContentFooter = if contentFooter
			then React.createElement("Frame", {
				Position = UDim2.new(0, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				Size = UDim2.new(1, 0, 0, footerHeight),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				contentFooter,
			})
			else nil,
	})
end

return TileContentPanel
