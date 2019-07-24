local Packages = script.Parent.Parent.Parent

local Otter = require(Packages.Otter)
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)
local withStyle = require(Packages.UIBlox.Style.withStyle)
local ModalBottomSheetButton = require(script.Parent.ModalBottomSheetButton)

local ModalBottomSheet = Roact.PureComponent:extend("ModalBottomSheet")

local ELEMENT_HEIGHT = 44

local MOTOR_OPTIONS = {
	frequency = 4,
	dampingRatio = 1,
}

ModalBottomSheet.defaultProps = {
	bottomGap = 0,
}

local PropTypes = t.strictInterface({
	bottomGap = t.optional(t.number),
	-- a callback that when fired should result in this component no longer being rendered
	-- this should probably relate to closeCentralOverlay in CI
	onDismiss = t.callback,
	buttonModels = t.array(t.table),
})

function ModalBottomSheet:init()
	self.motor = Otter.createSingleMotor(0)
	self.ref = Roact.createRef()
	self.active = true
end

function ModalBottomSheet:render()
	assert(PropTypes(self.props))
	self.sheetHeight = #self.props.buttonModels * ELEMENT_HEIGHT
	local children = {}
	for index, buttonProps in ipairs(self.props.buttonModels) do
		local mergedProps = Cryo.Dictionary.join(buttonProps, {
			hasRoundTop = index == 1,
			hasRoundBottom = index == #self.props.buttonModels,
			elementHeight = ELEMENT_HEIGHT,
			LayoutOrder = index,
		})
		children["button " .. index] = Roact.createElement(ModalBottomSheetButton, mergedProps)
	end

	children.layout = Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		FillDirection = Enum.FillDirection.Vertical,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	return withStyle(function(stylePalette)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			Background = Roact.createElement("TextButton", {
				ZIndex = 0,
				AutoButtonColor = false,
				BackgroundColor3 = stylePalette.Theme.Overlay.Color,
				BackgroundTransparency = stylePalette.Theme.Overlay.Transparency,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Text = "",
				[Roact.Event.Activated] = function()
					self.active = false
					self.motor:setGoal(Otter.spring(0, MOTOR_OPTIONS))
				end
			}),
			SheetContent = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, self.sheetHeight),
				Position = UDim2.new(0, 0, 1, 0),
				[Roact.Ref] = self.ref,
			}, children),
		})
	end)
end

function ModalBottomSheet:didMount()
	self.motor:onStep(function(value)
		if self.ref.current then
			self.ref.current.Position = UDim2.new(0, 0, 1, -(self.sheetHeight + self.props.bottomGap) * value)
		end
	end)
	self.motor:setGoal(Otter.spring(1, MOTOR_OPTIONS))
	self.motor:onComplete(function()
		if not self.active then
			self.props.onDismiss()
		end
	end)
	self.motor:start()
end

return ModalBottomSheet