local DetailsPage = script.Parent
local Template = DetailsPage.Parent
local App = Template.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

export type DetailsPageRenderItem = {
	index: number,
	key: string,
	showCornerGradient: boolean?,
	renderComponent: () -> React.React_Node,
	useSelectionBumper: boolean?,
}

export type ComponentList = {
	[string]: {
		portraitLayoutOrder: number,
		landscapeLayoutOrder: number,
		landscapePosition: any,
		renderComponent: () -> React.React_Node,
		showCornerGradient: boolean?,
		useSelectionBumper: boolean?,
		visible: boolean?,
	},
}

return {}
