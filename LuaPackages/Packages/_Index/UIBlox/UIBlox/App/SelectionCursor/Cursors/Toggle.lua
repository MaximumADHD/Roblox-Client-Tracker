local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)

local CursorComponent = require(script.Parent.Parent.CursorComponent)

local CORNER_RADIUS = UDim.new(0, 13)
local OFFSET = 0
local BORDER_WIDTH = 3

export type Props = {
	isVisible: boolean,
}

return React.forwardRef(function(props: Props, ref: React.Ref<any>)
	return React.createElement(CursorComponent, {
		isVisible = props.isVisible,
		cornerRadius = CORNER_RADIUS,
		offset = OFFSET - BORDER_WIDTH,
		borderWidth = BORDER_WIDTH,
		ref = ref,
	})
end)
