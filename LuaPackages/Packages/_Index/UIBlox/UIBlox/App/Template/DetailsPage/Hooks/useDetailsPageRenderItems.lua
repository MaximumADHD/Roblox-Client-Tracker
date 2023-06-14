local DetailsPage = script.Parent.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local DetailsPageTypes = require(DetailsPage.Types)
type DetailsPageRenderItem = DetailsPageTypes.DetailsPageRenderItem
type ComponentList = DetailsPageTypes.ComponentList

local function useDetailsPageRenderItems(
	componentList: ComponentList,
	headerElement: React.React_Node,
	containerSize: Vector2,
	safeAreaSize: Vector2
): { DetailsPageRenderItem }
	local orderedComponentList = React.useMemo(function()
		local incomingData = {} :: DetailsPageRenderItem
		for key, component in componentList do
			table.insert(incomingData, {
				index = component.portraitLayoutOrder + 1,
				renderComponent = component.renderComponent,
				showCornerGradient = component.showCornerGradient,
				useSelectionBumper = component.useSelectionBumper,
				key = key,
			})
		end

		table.sort(incomingData, function(a: DetailsPageRenderItem, b: DetailsPageRenderItem)
			if not b.index then
				return true
			end
			if not a.index then
				return false
			end
			return a.index <= b.index
		end)

		return incomingData
	end, { componentList })

	local detailsPageItems = React.useMemo(function()
		local incomingData = table.clone(orderedComponentList)

		table.insert(incomingData, 1, {
			index = 1,
			key = "Header",
			showCornerGradient = true,
			renderComponent = function()
				return React.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, containerSize.Y - safeAreaSize.Y * 2),
					BackgroundTransparency = 1,
				}, {
					Layout = React.createElement("UIListLayout", {
						VerticalAlignment = Enum.VerticalAlignment.Bottom,
					}),
					HeaderContainer = headerElement,
				})
			end,
		})
		return incomingData
	end, { orderedComponentList, headerElement, containerSize.Y, safeAreaSize.Y } :: { any })

	return detailsPageItems
end

return useDetailsPageRenderItems
