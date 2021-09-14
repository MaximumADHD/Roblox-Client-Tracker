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
local Constants = require(Plugin.Src.Util.Constants)
local Orientation = require(Plugin.Src.Util.Orientation)

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
	local selectedObject = props.selectedObject
	local revertSliceCenter = selectedObject.SliceCenter
	local pixelDimensions = props.pixelDimensions

	local minX = revertSliceCenter.Min.X
	local maxX = revertSliceCenter.Max.X
	local minY = revertSliceCenter.Min.Y
	local maxY = revertSliceCenter.Max.Y

	local initSlice = { minX, maxX, minY, maxY }
	if checkEqualSlices(initSlice, {0, 0, 0, 0}) then
		-- if the SliceCenter is currently {0, 0, 0, 0} then init the slice as 0 offset
		initSlice = { 0, pixelDimensions.X, 0, pixelDimensions.Y }
		revertSliceCenter = Rect.new(initSlice[LEFT], initSlice[TOP], initSlice[RIGHT], initSlice[BOTTOM])
		selectedObject.SliceCenter = revertSliceCenter
	end

	self:setState({
		revertDisabled = false, -- (bool) whether Revert button should be unpressable
		sliceRect = initSlice, -- {X0, X1, Y0, Y1} current Slice in the editors in Rect coords
	})

	self.setSliceRect = function(newValue, shouldClamp)
		local minX, maxX, minY, maxY
		if shouldClamp then
			minX = math.clamp(math.round(newValue[LEFT]), 0, pixelDimensions.X)
			maxX = math.clamp(math.round(newValue[RIGHT]), 0, pixelDimensions.X)
			minY = math.clamp(math.round(newValue[TOP]), 0, pixelDimensions.Y)
			maxY = math.clamp(math.round(newValue[BOTTOM]), 0, pixelDimensions.Y)
		else
			minX, maxX, minY, maxY = table.unpack(newValue)
		end

		local roundedSlice = { minX, maxX, minY, maxY }
		local sliceRect = self.state.sliceRect
		if checkEqualSlices(roundedSlice, sliceRect) then
			-- if no change then return
			return
		end

		local noRevert = false
		if checkEqualSlices(roundedSlice, initSlice) then
			-- if sliceRect is equivalent to revert value then no revert
			noRevert = true
		end

		self:setState({
			revertDisabled = noRevert,
			sliceRect = {minX, maxX, minY, maxY},
		})

		ChangeHistoryService:SetWaypoint("Changing SliceCenter")
		props.selectedObject.SliceCenter = Rect.new(minX, minY, maxX, maxY)
		ChangeHistoryService:SetWaypoint("Changed SliceCenter")
	end

	self.onRevert = function()
		-- when revert button clicked, revert SliceCenter to initial values
		selectedObject.SliceCenter = revertSliceCenter
		local minX = revertSliceCenter.Min.X
		local maxX = revertSliceCenter.Max.X
		local minY = revertSliceCenter.Min.Y
		local maxY = revertSliceCenter.Max.Y

		local slice = { minX, maxX, minY, maxY }
		self.setSliceRect(slice, false) -- can revert to invalid inputs
		self:setState({
			revertDisabled = true,
		})
	end

	self.onUndoRedo = function(waypoint)
		-- when undo/redo is clicked in Studio
		if waypoint == "SliceCenter" then
			local sliceCenter = selectedObject.SliceCenter
			local slice = { sliceCenter.Min.X, sliceCenter.Max.X, sliceCenter.Min.Y, sliceCenter.Max.Y }
			self.setSliceRect(slice, true)
		end
	end
	ChangeHistoryService.OnUndo:Connect(self.onUndoRedo)
	ChangeHistoryService.OnRedo:Connect(self.onUndoRedo)

	selectedObject:GetPropertyChangedSignal("SliceCenter"):Connect(function()
		-- check if user is editing SliceCenter outside of the window and update
		local sliceCenter = selectedObject.SliceCenter
		local slice = { sliceCenter.Min.X, sliceCenter.Max.X, sliceCenter.Min.Y, sliceCenter.Max.Y }
		self.setSliceRect(slice, false)
	end)
end

function SliceEditor:render()
	-- Renders SliceEditor as a pane, ImageEditor, TextEditor, and Close/Revert
	local props = self.props
	local selectedObject = props.selectedObject
	local pixelDimensions = props.pixelDimensions
	local setSliceRect = self.setSliceRect
	local sliceRect = self.state.sliceRect
	local revertDisabled = self.state.revertDisabled
	local localization = props.Localization
	local buttonStyle = props.Stylizer.Button

	return Roact.createElement(Pane, {
		Style = "Box",
	}, {
		ImageEditorComponent = Roact.createElement(ImageEditor, {
			selectedObject = selectedObject,
			pixelDimensions = pixelDimensions,
			setSliceRect = setSliceRect,
			sliceRect = sliceRect,
		}),
		TextEditorComponent = Roact.createElement(TextEditor, {
			pixelDimensions = pixelDimensions,
			setSliceRect = setSliceRect,
			sliceRect = sliceRect,
		}),
		revertButton = Roact.createElement(Button, {
			AnchorPoint = Vector2.new(0, 1),
			OnClick = self.onRevert,
			Position = UDim2.new(0.5, Constants.BUTTON_FROMCENTER_PADDING, 1, -Constants.BUTTON_FROMEDGE_PADDING),
			Size = buttonStyle.Size,
			Style = buttonStyle.Style,
			StyleModifier = revertDisabled and StyleModifier.Disabled or nil,
			Text = localization:getText("SliceEditor", "RevertButton"),
		}),
		closeButton = Roact.createElement(Button, {
			AnchorPoint = Vector2.new(1, 1),
			OnClick = props.onClose,
			Position = UDim2.new(0.5, -Constants.BUTTON_FROMCENTER_PADDING, 1, -Constants.BUTTON_FROMEDGE_PADDING),
			Size = buttonStyle.Size,
			Style = buttonStyle.Style,
			Text = localization:getText("SliceEditor", "CloseButton"),
		}),
	})
end

SliceEditor = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
})(SliceEditor)

return SliceEditor
