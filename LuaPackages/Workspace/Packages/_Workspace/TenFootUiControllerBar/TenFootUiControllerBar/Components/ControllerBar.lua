local root = script:FindFirstAncestor("TenFootUiControllerBar")
local Packages = root.Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local ContextBar = UIBlox.App.Navigation.PrimaryNavBar.ContextBar

export type ContextBarItem = {
	-- icon of the shortcut
	icon: string | UIBlox.ImageSetImage,
	-- shortcut description
	text: string,
}

export type Props = {
	items: {
		[number]: ContextBarItem,
	},
}

function ControllerBar(props: Props)
	return React.createElement(
		"Frame",
		{
			Position = UDim2.fromScale(0, 0),
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		},
		if #props.items > 0
			then React.createElement(
				ContextBar,
				{ items = props.items, position = UDim2.fromScale(0.5, 0), anchorPoint = Vector2.new(0.5, 0) }
			)
			else nil
	)
end
return ControllerBar
