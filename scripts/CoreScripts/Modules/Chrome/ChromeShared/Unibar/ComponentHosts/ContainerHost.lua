local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local Constants = require(Root.Unibar.Constants)
local ChromeTypes = require(Root.Service.Types)
local UnibarStyle = require(Root.Unibar.UnibarStyle)

local ChromeSharedFlags = require(Root.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

export type ContainerHostProps = {
	integration: ChromeTypes.IntegrationComponentProps,
	toggleTransition: any?,
	position: React.Binding<UDim2> | UDim2 | nil,
	visible: React.Binding<boolean> | boolean | nil,
	containerWidthSlots: number,
}

-- TODO APPEXP-1378: Add more + cleanup this ContainerHost stub.
local ContainerHost = function(props: ContainerHostProps)
	local unibarStyle
	local iconCellWidth
	local containerPaddingTopBottom
	local containerPaddingLeftRight
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		iconCellWidth = unibarStyle.ICON_CELL_WIDTH
		containerPaddingTopBottom = unibarStyle.CONTAINER_PADDING_TOP_BOTTOM
		containerPaddingLeftRight = unibarStyle.CONTAINER_PADDING_LEFT_RIGHT
	else
		iconCellWidth = Constants.ICON_CELL_WIDTH
		containerPaddingTopBottom = Constants.CONTAINER_PADDING_TOP_BOTTOM
		containerPaddingLeftRight = Constants.CONTAINER_PADDING_LEFT_RIGHT
	end

	return React.createElement("Frame", {
		Size = UDim2.new(0, props.containerWidthSlots * iconCellWidth, 1, 0),
		LayoutOrder = props.integration.order,
		BackgroundTransparency = 1,
		Position = props.position,
		Visible = props.visible,
		ZIndex = props.integration.order,
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingTop = containerPaddingTopBottom,
			PaddingRight = containerPaddingLeftRight,
			PaddingBottom = containerPaddingTopBottom,
			PaddingLeft = containerPaddingLeftRight,
		}),

		IntegrationContainer = if props.integration.integration
				and props.integration.integration.components.Container
			then props.integration.integration.components.Container(props.integration)
			else nil,
	})
end

return ContainerHost
