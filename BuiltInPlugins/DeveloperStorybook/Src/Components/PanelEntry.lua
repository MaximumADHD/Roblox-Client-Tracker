--[[
	An entry in the InfoPanel with a header and automatic size from contents.

	Required Props:
		string Header: The header text of this component.

	Optional Props:
		string Description: A description which displays beneath the header. It also supports Markdown syntax.
		number LayoutOrder: The sort order of this component.
]]
local Main = script.Parent.Parent.Parent
local React = require(Main.Packages.React)
local Dash = require(Main.Packages.Dash)
local mapOne = Dash.mapOne

local Markdown = require(Main.Packages.Markdown)
local MarkdownViewer = Markdown.Components.MarkdownViewer

local Foundation = require(Main.Packages.Foundation)
local View = Foundation.View
local Text = Foundation.Text

function PanelEntry(props: {
	Header: string,
	Description: string,
	LayoutOrder: number?,
	IsTitle: boolean?,
	Size: UDim2?,
	children: React.ReactNode,
})
	local description = props.Description

	local contentChildren = props.children
	local hasChild = contentChildren and mapOne(contentChildren)
	local hasDescription = typeof(description) == "string" and description ~= ""

	local children = {
		Name = React.createElement(Text, {
			LayoutOrder = 1,
			Text = props.Header,
			tag = {
				["size-full-0 auto-y text-wrap text-align-x-left"] = true,
				["text-heading-medium"] = props.IsTitle,
				["text-heading-small"] = not props.IsTitle,
			},
		}),
		Description = hasDescription and React.createElement(MarkdownViewer, {
			Markdown = description,
			WrapperProps = {
				LayoutOrder = 2,
			},
		}),
		Content = hasChild and React.createElement(View, {
			LayoutOrder = 3,
			tag = "col gap-medium size-full-0 auto-y padding-medium",
		}, contentChildren),
	}
	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		Size = props.Size,
		tag = "col gap-medium size-full-0 auto-y padding-medium",
	}, children)
end

return PanelEntry
