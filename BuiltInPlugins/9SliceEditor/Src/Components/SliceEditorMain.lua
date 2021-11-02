--[[
	The main container of the 9SliceEditor that contains the ImageEditor and TextEditor.
	Updates changes to the plugin to SliceCenter live.
	Also creates the Close and Revert buttons, handling all logic with button disabled.

	Props:
		selectedObject -- selected object either an image label or an image button
		pixelDimensions (Vector2) -- dimensions of the image in pixels
		sliceRect -- current slice ordered in { X0, X1, Y0, Y1 } format
		setSliceRect -- callback to change sliceRect in SliceEditor
]]

local ChangeHistoryService = game:GetService("ChangeHistoryService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Orientation = require(Plugin.Src.Util.Orientation)
local MouseCursorManager = require(Plugin.Src.Util.MouseCursorManager)

local Components = Plugin.Src.Components
local ImageEditor = require(Components.ImageEditor)
local TextEditor = require(Components.TextEditor)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization
local StyleModifier = Framework.Util.StyleModifier

local UI = Framework.UI
local Pane = UI.Pane
local Button = UI.Button

local SliceEditor = Roact.PureComponent:extend("SliceEditor")

local LEFT = Orientation.Left.rawValue()
local RIGHT = Orientation.Right.rawValue()
local TOP = Orientation.Top.rawValue()
local BOTTOM = Orientation.Bottom.rawValue()

local function checkEqualSlices(slice1, slice2)
	-- checks if values in slice1 == values in slice2
	return
		slice1[LEFT] == slice2[LEFT]
		and slice1[RIGHT] == slice2[RIGHT]
		and slice1[TOP] == slice2[TOP]
		and slice1[BOTTOM] == slice2[BOTTOM]
end

function SliceEditor:init(props)
	--[[
		To clarify notation between SliceCenter Rect and Offsets Rect:
		SliceCenter (order not value) = { Min.X, Min.Y, Max.X, Max.Y } = { left, top, right, bottom }
		Offsets (order not value) = { Min.X, Max.X, Min.Y, Max.Y } = { left, right, top, bottom }

		Right and bottom are calculated by distance from the right and bottom sides.
		Max.X and Max.Y are calculated by distance from (0, 0) of the rect, so
		Max.X = pixelDimensions.X - right, Max.Y = pixelDimensions.Y - bottom
		(left = Min.X and top = Min.Y no need for conversion)

		sliceRect will be stored as { Min.X, Min.Y, Max.X, Max.Y } or { left, right, top, bottom }
		order to align with offsets order and use the SliceCenter coordinate system of calculating from (0, 0)
	]]--

	self.clampAndRoundSliceRect = function(newValue)
		local pixelDimensions = self.props.pixelDimensions
		local minX, maxX, minY, maxY
		minX = math.clamp(math.round(newValue[LEFT]), 0, pixelDimensions.X)
		maxX = math.clamp(math.round(newValue[RIGHT]), 0, pixelDimensions.X)
		minY = math.clamp(math.round(newValue[TOP]), 0, pixelDimensions.Y)
		maxY = math.clamp(math.round(newValue[BOTTOM]), 0, pixelDimensions.Y)
		return { minX, maxX, minY, maxY }
	end

	-- Called when SliceRect changed due to interaction with this editor.
	self.setSliceRect = function(newValueRaw, shouldClamp)
		local newValue = newValueRaw
		if shouldClamp then
			newValue = self.clampAndRoundSliceRect(newValueRaw)
		end

		if self.props.selectedObject then
			self.props.selectedObject.SliceCenter = Rect.new(newValue[LEFT], newValue[TOP], newValue[RIGHT], newValue[BOTTOM])
		end
		ChangeHistoryService:SetWaypoint("9SliceEditor changed SliceCenter")
	end

	self.onRevert = function()
		-- when revert button clicked, revert SliceCenter to initial values
		self.setSliceRect(self.props.revertSliceRect, false) -- can revert to invalid inputs
	end
end

function SliceEditor:didMount()
	MouseCursorManager.resetCursor(self.props.Mouse)
end

function SliceEditor:render()
	-- Renders SliceEditor as a pane, ImageEditor, TextEditor, and Close/Revert
	local props = self.props
	local style = props.Stylizer

	local selectedObject = props.selectedObject
	local pixelDimensions = props.pixelDimensions
	local setSliceRect = self.setSliceRect
	local sliceRect = props.sliceRect
	local localization = props.Localization
	local buttonStyle = props.Stylizer.Button
	local revertEnabled = false

	local childrenComponents

	if not selectedObject then
		-- Display an informational message instead of the 9SliceEditor
		local infoText = localization:getText("SliceEditor", "NoImageSelectedMessage")
		if props.loading then
			infoText = localization:getText("SliceEditor", "ImageLoadingMessage")
		end

		childrenComponents = {
			Message = Roact.createElement(UI.Decoration.TextLabel, {
				Text = infoText,
				TextWrapped = true,
				Size = style.InfoBoxSize,
			}),
		}
	else
		-- Display 9SliceEditor
		if not checkEqualSlices(props.sliceRect, props.revertSliceRect) then
			revertEnabled = true
		end

		childrenComponents = {
			VerticalLayout = Roact.createElement(Pane, {
				Layout = Enum.FillDirection.Vertical,
				Spacing = style.VerticalSpacing,
			}, {
				ImageArea = Roact.createElement(Pane, {
					LayoutOrder = 1,
					Layout = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Spacing = style.HorizontalSpacing,
					Size = style.ImageAreaSize,
				}, {
					ImageEditorComponent = Roact.createElement(ImageEditor, {
						layoutOrder = 1,
						selectedObject = selectedObject,
						pixelDimensions = pixelDimensions,
						setSliceRect = setSliceRect,
						sliceRect = sliceRect,
						position = style.ImageEditorPos,
					}),
					TextEditorComponent = Roact.createElement(TextEditor, {
						layoutOrder = 2,
						pixelDimensions = pixelDimensions,
						setSliceRect = setSliceRect,
						sliceRect = sliceRect,
						position = style.TextEditorPos,
					}),
				}),

				ButtonsArea = Roact.createElement(Pane, {
					LayoutOrder = 2,
					Layout = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					Size = style.ButtonsAreaSize,
					Position = UDim2.fromOffset(0, style.ButtonsAreaYPos),
					Spacing = style.ButtonsSpacing,
				}, {
					RevertButton = Roact.createElement(Button, {
						OnClick = self.onRevert,
						Size = buttonStyle.Size,
						Style = buttonStyle.Style,
						StyleModifier = (not revertEnabled) and StyleModifier.Disabled or nil,
						Text = localization:getText("SliceEditor", "RevertButton"),
					}),
					CloseButton = Roact.createElement(Button, {
						OnClick = props.onClose,
						Size = buttonStyle.Size,
						Style = buttonStyle.Style,
						Text = localization:getText("SliceEditor", "CloseButton"),
					}),
				})
			}),
		}
	end

	return Roact.createElement(Pane, {
		Style = "Box",
		Size = UDim2.fromScale(1, 1),
		Position = UDim2.fromOffset(0, 0),
	}, {
		EntireFrame = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
		}, childrenComponents),
	})
end

SliceEditor = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
	Mouse = ContextServices.Mouse,
})(SliceEditor)

return SliceEditor
