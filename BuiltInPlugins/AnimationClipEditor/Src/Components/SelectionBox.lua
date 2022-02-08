--[[
	A selection box which appears when the user clicks and drags
	in the timeline window.

	Props:
		Vector2 SelectionStart = The absolute position where the selection began.
		Vector2 SelectionEnd = The absolute position where the selection is currently.
		Rect SourceExtents = The extents of the Dope sheet, as a Rect.

		function OnDragMoved(input) = A callback for when the user drags.
		function OnDragEnded = A callback for when the user stops dragging.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local DragTarget = Framework.UI.DragListener

local SelectionBox = Roact.PureComponent:extend("SelectionBox")

function SelectionBox:render()
		local props = self.props
		local theme = THEME_REFACTOR and props.Stylizer.PluginTheme or props.Theme:get("PluginTheme")
		local selectionStart = props.SelectionStart
		local selectionEnd = props.SelectionEnd
		local sourceExtents = props.SourceExtents

		return Roact.createElement(DragTarget, {
			OnDragMoved = props.OnDragMoved,
			OnDragEnded = props.OnDragEnded,
		}, {
			Extents = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, sourceExtents.Min.X, 0, sourceExtents.Min.Y),
				Size = UDim2.new(0, sourceExtents.Width, 0, sourceExtents.Height),
				ClipsDescendants = true,
			}, {
				Box = Roact.createElement("Frame", {
					BackgroundColor3 = theme.selectionBox,
					BackgroundTransparency = 0.8,
					Position = selectionStart and selectionStart:map(function(value)
						return UDim2.new(0, value.X - sourceExtents.Min.X,
							0, value.Y - sourceExtents.Min.Y)
					end),
					Size = selectionStart and selectionEnd
						and Roact.joinBindings({selectionStart, selectionEnd}):map(function(extents)
						local selectionStart = extents[1]
						local selectionEnd = extents[2]
						local selectionExtents = selectionEnd - selectionStart
						return UDim2.new(0, selectionExtents.X, 0, selectionExtents.Y)
					end),
				})
			}),
		})
end


SelectionBox = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(SelectionBox)




return SelectionBox