local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local DetailsPageTypes = require(DetailsPage.Types)
type DetailsPageRenderItem = DetailsPageTypes.DetailsPageRenderItem

local React = require(Packages.React)

local TRANSPARENCY_ERROR = 1

export type DetailsPageRenderItemProps = {
	items: { DetailsPageRenderItem },
	safeArea: Vector2,
	itemPadding: number,
}

local function DetailsPageRenderItem(props)
	local item = props.item
	local safeArea = props.safeArea
	local itemPadding = props.itemPadding

	local renderComponent = React.useMemo(function()
		return item.renderComponent()
	end, { item.renderComponent })

	local groupTransparency, setGroupTransparency = React.useBinding(0)

	local canvasRef = React.useRef(nil)
	local onAbsolutePositionChanged = React.useCallback(function(rbx: CanvasGroup)
		local scrollingframe = rbx:FindFirstAncestorOfClass("ScrollingFrame")
		if scrollingframe == nil then
			return nil
		end

		local yPos = (rbx.AbsolutePosition.Y - (scrollingframe :: ScrollingFrame).AbsolutePosition.Y) - safeArea.Y
		local minYPos = -(rbx.AbsoluteSize.Y + itemPadding)
		if yPos < TRANSPARENCY_ERROR and yPos + safeArea.Y + TRANSPARENCY_ERROR > minYPos then
			local transparencyRatio = yPos / minYPos
			setGroupTransparency(transparencyRatio)
		else
			setGroupTransparency(0)
		end
		return nil
	end, { safeArea, itemPadding } :: { any })

	return React.createElement("CanvasGroup", {
		key = item.key,
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		ref = canvasRef,
		[React.Change.AbsolutePosition] = onAbsolutePositionChanged,
		GroupTransparency = groupTransparency,
		BackgroundTransparency = 1,
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, safeArea.X),
			PaddingRight = UDim.new(0, safeArea.X),
		}),
		View = renderComponent,
	})
end

return DetailsPageRenderItem
