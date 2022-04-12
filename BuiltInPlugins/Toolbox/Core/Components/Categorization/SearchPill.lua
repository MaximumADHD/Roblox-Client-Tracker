--!strict
--[[
	A generic clickable Search Pill.
]]
local FFlagToolboxAssetCategorization = game:GetFastFlag("ToolboxAssetCategorization3")
if not FFlagToolboxAssetCategorization then
	-- needed for withAbsoluteSizeAndPosition
	return {}
end

local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)

local ContextServices = Framework.ContextServices
local HoverArea = Framework.UI.HoverArea

local withContext = ContextServices.withContext

local CORNER_RADIUS = 14

type _ExternalProps = {
	AutomaticSize: Enum.AutomaticSize?,
	Key: string,
	LayoutOrder: number?,
	OnClick: ((searchText: string) -> ())?,
	Size: UDim2?,
	Text: string,
}

type _InternalProps = {
	Stylizer: any,
}

export type SearchPillProps = _ExternalProps & _InternalProps

local SearchPill = Roact.PureComponent:extend("SearchPill")

function SearchPill:init()
	self.state = {
		isHovered = false,
	}

	self.onMouseEnter = function()
		self:setState(function(prevState)
			if not prevState.isHovered then
				return {
					isHovered = true,
				}
			else
				return prevState
			end
		end)
	end

	self.onMouseLeave = function()
		self:setState(function(prevState)
			if prevState.isHovered then
				return {
					isHovered = false,
				}
			else
				return prevState
			end
		end)
	end

	self.onClick = function()
		local props: SearchPillProps = self.props
		if props.OnClick ~= nil then
			props.OnClick(props.Text)
		end
	end
end

function SearchPill:render()
	local props: SearchPillProps = self.props
	local theme = props.Stylizer

	local automaticSize = props.AutomaticSize
	local layoutOrder = props.LayoutOrder
	local onClick = props.OnClick
	local size = props.Size
	local text = props.Text

	local isHovered = self.state.isHovered

	local searchPillTheme = theme.searchPill

	local backgroundColor
	if isHovered then
		backgroundColor = searchPillTheme.backgroundColorHovered
	else
		backgroundColor = searchPillTheme.backgroundColor
	end

	local paddingHorizontal = if size then 0 else searchPillTheme.padding.left + searchPillTheme.padding.right

	return Roact.createElement("TextButton", { -- TextButton used for Activated support
		AutomaticSize = automaticSize,
		AutoButtonColor = false,
		BackgroundColor3 = backgroundColor,
		ClipsDescendants = true,
		Font = searchPillTheme.font,
		LayoutOrder = layoutOrder,
		Size = size,
		Text = text,
		TextColor3 = searchPillTheme.textColor,
		TextSize = searchPillTheme.textSize,
		[Roact.Event.Activated] = self.onClick,
		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.MouseLeave] = self.onMouseLeave,
	}, {
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, CORNER_RADIUS),
		}),

		UIPadding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, searchPillTheme.padding.top),
			PaddingLeft = UDim.new(0, paddingHorizontal),
			PaddingRight = UDim.new(0, paddingHorizontal),
			PaddingTop = UDim.new(0, searchPillTheme.padding.top),
		}),

		HoverArea = onClick and Roact.createElement(HoverArea, {
			Cursor = "PointingHand",
			Size = UDim2.new(1, 0, 1, 0),
		}),
	})
end

SearchPill = withContext({
	Stylizer = ContextServices.Stylizer,
})(SearchPill)

return SearchPill
