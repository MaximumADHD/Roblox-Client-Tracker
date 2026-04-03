--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Framework = require(ViewportToolingFramework.Parent.Framework)
local React = require(ViewportToolingFramework.Parent.React)

local Button = require(ViewportToolingFramework.Components.Button)
local Dropdown = require(ViewportToolingFramework.Components.Dropdown)
local Label = require(ViewportToolingFramework.Components.Label)
local Radio = require(ViewportToolingFramework.Components.Radio)
local Separator = require(ViewportToolingFramework.Components.Separator)
local Slider = require(ViewportToolingFramework.Components.Slider)
local SplitButton = require(ViewportToolingFramework.Components.SplitButton)
local TextButton = require(ViewportToolingFramework.Components.TextButton)
local ToolbarBaseContext = require(ViewportToolingFramework.Util.ToolbarBaseContext)
local Types = require(ViewportToolingFramework.Types)
local getToolbarDirection = require(ViewportToolingFramework.Util.getToolbarDirection)
local getToolbarItems = require(ViewportToolingFramework.Util.getToolbarItems)

local LayoutOrderIterator: any = Framework.Util.LayoutOrderIterator

local getFFlagViewportToolingFrameworkMoreComponents =
	require(ViewportToolingFramework.Flags.getFFlagViewportToolingFrameworkMoreComponents)
local getFFlagAvatarCompatibilityPreviewerFixUnitTests =
	require(ViewportToolingFramework.Flags.getFFlagAvatarCompatibilityPreviewerFixUnitTests)

local itemComponentTypes: {
	[string]: React.ComponentType<{
		Item: any,
		NextOrder: () -> number,
	}>,
} = {
	Button = Button,
	Dropdown = if getFFlagViewportToolingFrameworkMoreComponents() then Dropdown else nil :: never,
	Label = Label,
	Radio = Radio,
	Separator = Separator,
	Slider = Slider,
	SplitButton = SplitButton,
	TextButton = TextButton,
}

local function ToolbarBase(props: Types.Toolbar)
	local children: { React.ReactNode } = {}

	local layoutOrderIterator = LayoutOrderIterator.new()

	for index, toolbarItem in getToolbarItems(props) do
		local componentType = itemComponentTypes[toolbarItem.Type]
		if componentType == nil then
			error(`Unimplemented type: {toolbarItem.Type}`)
		end

		table.insert(
			children,
			React.createElement(componentType, {
				key = if getFFlagAvatarCompatibilityPreviewerFixUnitTests() then `{index}` else nil,
				Item = toolbarItem,
				NextOrder = function()
					return layoutOrderIterator:getNextOrder()
				end,
			})
		)
	end

	local toolbarBaseContext: ToolbarBaseContext.ContextType = {
		Direction = getToolbarDirection(props),
	}

	return React.createElement(ToolbarBaseContext.Provider, {
		value = toolbarBaseContext,
	}, {
		ToolbarBase = React.createElement("Frame", {
			[React.Tag] = Framework.Styling.joinTags(
				"VPF-ToolbarBase",
				if getToolbarDirection(props) == "Horizontal"
					then "X-Middle VPF-ToolbarBase--Horizontal"
					else "X-Center VPF-ToolbarBase--Vertical"
			),
		}, children),
	})
end

return ToolbarBase
