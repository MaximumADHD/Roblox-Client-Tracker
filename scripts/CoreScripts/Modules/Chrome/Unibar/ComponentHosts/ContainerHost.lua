local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local Chrome = script:FindFirstAncestor("Chrome")
local Constants = require(Chrome.Unibar.Constants)
local ChromeTypes = require(Chrome.Service.Types)

export type ContainerHostProps = {
	integration: ChromeTypes.IntegrationComponentProps,
	toggleTransition: any?,
	position: React.Binding<UDim2> | UDim2 | nil,
	visible: React.Binding<boolean> | boolean | nil,
	containerWidthSlots: number,
}

-- TODO APPEXP-1378: Add more + cleanup this ContainerHost stub.
local ContainerHost = function(props: ContainerHostProps)
	return React.createElement("Frame", {
		Size = UDim2.new(0, props.containerWidthSlots * Constants.ICON_CELL_WIDTH, 1, 0),
		LayoutOrder = props.integration.order,
		BackgroundTransparency = 1,
		Position = props.position,
		Visible = props.visible,
		ZIndex = props.integration.order,
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingTop = Constants.CONTAINER_PADDING_TOP_BOTTOM,
			PaddingRight = Constants.CONTAINER_PADDING_LEFT_RIGHT,
			PaddingBottom = Constants.CONTAINER_PADDING_TOP_BOTTOM,
			PaddingLeft = Constants.CONTAINER_PADDING_LEFT_RIGHT,
		}),

		IntegrationContainer = if props.integration.integration
				and props.integration.integration.components.Container
			then props.integration.integration.components.Container(props.integration)
			else nil,
	})
end

return ContainerHost
