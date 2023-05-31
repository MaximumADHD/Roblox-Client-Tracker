--!nonstrict
local Bar = script.Parent
local App = Bar.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local withStyle = require(UIBlox.Core.Style.withStyle)

local ControllerBarHint = require(script.Parent.ControllerBarHint)

local GetTextSize = require(UIBlox.Core.Text.GetTextSize)

local HINT_INNER_PADDING = require(script.Parent.BarConstants).ControllerBarHintInternalPadding
local ICON_SIZE = require(App.Menu.MenuConstants).DefaultKeyLabelSize

local CONTROLLER_BAR_HEIGHT = 72
local SCREENSIDE_PADDING = 24
local PADDING = 40
local MINIMUM_DIST_BETWEEN_LEFT_AND_RIGHT = 36
local BIG_ENOUGH_NOT_TO_WRAP = 10000
local INITIAL_REQUIRED_SPACE = (SCREENSIDE_PADDING * 2) + MINIMUM_DIST_BETWEEN_LEFT_AND_RIGHT

local ControllerBar = Roact.PureComponent:extend("ControllerBar")

local hintValidation = t.strictInterface({
	-- Key to trigger animation
	keyCode = t.enum(Enum.KeyCode),
	-- Shortcut description
	text = t.string,
})

ControllerBar.validateProps = t.strictInterface({
	-- A `hint` struct which specifies a keyImage (a Enum.Keycode for a gamepad button icon)
	-- and the text to display next to that image
	leftHint = hintValidation,
	-- The bar takes a `hints` parameter which is a list of 'hints'.
	-- Each hint is a table which specifies a keyCode (a Enum.Keycode for a gamepad button icon)
	-- and the text to display next to that image
	rightHints = t.optional(t.map(t.number, hintValidation)),
})

function ControllerBar:init()
	self.state = {
		controllerBarWidth = 0,
		hintStringsConcat = nil,
		requiredSpace = nil,
		hintRatios = nil,
	}
end

-- TODO: memoize this function so not recomputed at each render
function ControllerBar.calculateHintRatios(leftHint, rightHints)
	local requiredSpace = INITIAL_REQUIRED_SPACE
	local hintStringsConcat = ""

	--  calculate the relative sizes of all the hint label text
	local hintSizes = {}
	local hintSizeSum = 0
	local mergedHints = Cryo.List.join({ leftHint }, rightHints or {})
	for _, hint in ipairs(mergedHints) do
		-- using 17 as font size and font enum 2 as font (just placeholders,
		-- these values don't matter for relative size calculations)
		hintSizes[hint.text] =
			GetTextSize(hint.text, 17, 2, Vector2.new(BIG_ENOUGH_NOT_TO_WRAP, BIG_ENOUGH_NOT_TO_WRAP)).X

		hintSizeSum = hintSizeSum + hintSizes[hint.text]
		-- add icon size and padding for within each hint
		requiredSpace = requiredSpace + ICON_SIZE + HINT_INNER_PADDING

		hintStringsConcat = hintStringsConcat .. hint.text
	end

	for id, hintSize in pairs(hintSizes) do
		hintSizes[id] = hintSize / hintSizeSum
	end

	-- add padding for between each rightside hint (subtract 2, one for Back button and one for first right side hint.)
	local hintCount = #mergedHints
	requiredSpace = requiredSpace + (math.max((hintCount - 2), 0) * PADDING)

	return hintSizes, requiredSpace, hintStringsConcat
end

function ControllerBar.getDerivedStateFromProps(nextProps)
	local hintRatios, requiredSpace, hintStringsConcat =
		ControllerBar.calculateHintRatios(nextProps.leftHint, nextProps.rightHints)

	return {
		hintRatios = hintRatios,
		requiredSpace = requiredSpace,
		hintStringsConcat = hintStringsConcat,
	}
end

function ControllerBar:calculateHintSize(controllerBarWidth, font)
	-- calculate available/usable space by subtracting space for padding/icons from screen width.
	local availableSpace = controllerBarWidth - self.state.requiredSpace

	local MAX_FONT_SIZE = font.Header2.RelativeSize * font.BaseSize
	local MIN_FONT_SIZE = font.Header2.RelativeMinSize * font.BaseSize

	-- If we use the minimum font size, can we fit it in availabe space?
	-- if so, calculate font size, otherwise resort to truncation.
	local minSize = GetTextSize(
		self.state.hintStringsConcat,
		MIN_FONT_SIZE,
		font.Header2.Font,
		Vector2.new(BIG_ENOUGH_NOT_TO_WRAP, BIG_ENOUGH_NOT_TO_WRAP)
	).X

	if minSize <= availableSpace then
		-- Linear regression to find best font size
		local maxSize = GetTextSize(
			self.state.hintStringsConcat,
			MAX_FONT_SIZE,
			font.Header2.Font,
			Vector2.new(BIG_ENOUGH_NOT_TO_WRAP, BIG_ENOUGH_NOT_TO_WRAP)
		).X
		local m = (MAX_FONT_SIZE - MIN_FONT_SIZE) / (maxSize - minSize)
		local b = MAX_FONT_SIZE - (m * maxSize)

		return nil, math.clamp(availableSpace * m + b, MIN_FONT_SIZE, MAX_FONT_SIZE)
	else
		-- if we've bottomed out the font size, resort to resizing the GenericTextLabels which will truncate text
		local recalcedHintSizes = {}
		for hint, size in pairs(self.state.hintRatios) do
			recalcedHintSizes[hint] = size * availableSpace
		end

		return recalcedHintSizes
	end
end

function ControllerBar:render()
	return withStyle(function(style)
		local theme = style.Theme

		local hintSizes, hintTextSize = self:calculateHintSize(self.state.controllerBarWidth, style.Font)

		local function makeHint(hint, keySuffix)
			-- Set font size for  hint
			local hintProps = Cryo.Dictionary.join(hint, {
				key = "Hint" .. tostring(keySuffix),
				hintTextSize = hintTextSize,
				maxWidth = hintSizes and hintSizes[hint.text] or nil,
			})

			return Roact.createElement(ControllerBarHint, hintProps)
		end

		local hintsFragment
		if self.props.rightHints then
			hintsFragment = Roact.createFragment(Cryo.List.map(self.props.rightHints, makeHint))
		end

		return Roact.createElement("Frame", {
			BorderSizePixel = 0,
			BackgroundTransparency = theme.BackgroundUIContrast.Transparency,
			BackgroundColor3 = theme.BackgroundUIContrast.Color,
			Size = UDim2.new(1, 0, 0, CONTROLLER_BAR_HEIGHT),
			Position = UDim2.fromScale(0, 1),
			AnchorPoint = Vector2.new(0, 1),
			[Roact.Change.AbsoluteSize] = function(rbx)
				self:setState({
					controllerBarWidth = rbx.AbsoluteSize.X,
				})
			end,
			[Roact.Event.AncestryChanged] = function(rbx)
				self:setState({
					controllerBarWidth = rbx.AbsoluteSize.X,
				})
			end,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, SCREENSIDE_PADDING),
				PaddingRight = UDim.new(0, SCREENSIDE_PADDING),
			}),

			LeftFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(0.5, 1),
			}, {
				Roact.createElement("UIListLayout", {
					-- selene: allow(roblox_incorrect_roact_usage)
					key = "Layout",
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, PADDING),
				}),

				makeHint(self.props.leftHint, "Left"),
			}),

			RightFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(0.5, 1),
				Position = UDim2.fromScale(1, 0),
				AnchorPoint = Vector2.new(1, 0),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, PADDING),
				}),
				RightHints = hintsFragment,
			}),
		})
	end)
end

return ControllerBar
