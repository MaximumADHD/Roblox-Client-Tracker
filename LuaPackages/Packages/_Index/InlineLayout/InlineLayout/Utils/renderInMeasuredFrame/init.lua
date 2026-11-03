local Root = script:FindFirstAncestor("Utils").Parent
local Packages = Root.Parent

local React = require(Packages.React)
local Flags = require(Packages.MarkdownCore).Flags

-- Places a rendered inline element inside a frame of exactly its measured width, so the next element
-- starts where InlineLayout measured this one to end. Elements fill the frame's width.
local function renderInMeasuredFrame(rendered: React.ReactNode, width: number, layoutOrder: number): React.ReactNode
	return React.createElement(
		"Frame",
		{
			key = tostring(layoutOrder),
			LayoutOrder = layoutOrder,
			Size = UDim2.fromOffset(width, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		},
		if Flags.FFlagMarkdownTables or Flags.FFlagMarkdownTagFallbacks
			then rendered
			else {
				Element = rendered,
			}
	)
end

return renderInMeasuredFrame
