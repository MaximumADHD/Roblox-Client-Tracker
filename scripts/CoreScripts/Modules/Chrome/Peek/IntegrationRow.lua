local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)

local ContainerHost = require(Chrome.Unibar.ComponentHosts.ContainerHost)
local IconHost = require(Chrome.Unibar.ComponentHosts.IconHost)
local Types = require(Chrome.Service.Types)

local useStyle = UIBlox.Core.Style.useStyle

export type Props = {
	integrations: { Types.IntegrationComponentProps },
}

local function IntegrationRow(props: Props)
	local style = useStyle()
	local children: { [string]: React.Node } = {}

	for _, integrationProps in props.integrations do
		local integration = integrationProps.integration

		if integration.components.Container then
			local containerWidthSlots = if integration.containerWidthSlots
				then integration.containerWidthSlots:get()
				else 0

			children[integration.id] = React.createElement(ContainerHost, {
				visible = true,
				integration = integrationProps,
				containerWidthSlots = containerWidthSlots,
			})
		else
			children[integration.id] = React.createElement(IconHost, {
				visible = true,
				integration = integrationProps,
			})
		end
	end

	return React.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, style.Tokens.Global.Space_25),
		}),
	}, children)
end

return IntegrationRow
