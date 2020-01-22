local Root = script.Parent.Parent.Parent
local ContextActionService = game:GetService("ContextActionService")

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local connectToStore = require(Root.connectToStore)

local TextLocalizer = require(script.Parent.Parent.Connection.TextLocalizer)
local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local Button = Roact.PureComponent:extend("Button")

function Button:init()
	local onClick = self.props.onClick
	local imageDown = self.props.imageDown
	local imageUp = self.props.imageUp

	self.state = {
		currentImage = imageUp
	}

	self.inputBegan = function()
		self:setState({
			currentImage = imageDown
		})
	end

	self.inputEnded = function()
		self:setState({
			currentImage = imageUp
		})
	end

	self.activated = function()
		onClick()
		self:setState({
			currentImage = imageUp
		})
	end
end

function Button:didMount()
	-- Some buttons need to support additional button bindings
	local bindings = self.props.additionalBindings or {}
	table.insert(bindings, self.props.gamepadButton)

	ContextActionService:BindCoreAction(
		self.props.stringKey,
		function(actionName, inputState, inputObj)
			--[[
				CLILUACORE-521:
				InputState MUST be 'Begin' in this case; otherwise, opening
				the settings menu it will create new ContextActionService
				bindings. When it does this, they trigger the 'Cancel' input
				state, which invoke our binding (in order to tell it that
				it's being canceled)
			]]
			if inputState == Enum.UserInputState.Begin then
				self.props.onClick()
			end
		end,
		false,
		unpack(bindings)
	)
end

function Button:willUnmount()
	ContextActionService:UnbindCoreAction(self.props.stringKey)
end

function Button:render()
	assert(typeof(self.props.gamepadButton) == "EnumItem"
		and self.props.gamepadButton.EnumType == Enum.KeyCode,
		"Prop 'gamepadButton' is required and must be of type Enum.KeyCode")

	return withLayoutValues(function(values)
		local stringKey = self.props.stringKey
		local font = self.props.font
		local size = self.props.size
		local position = self.props.position

		local gamepadEnabled = self.props.gamepadEnabled
		local gamepadButton = self.props.gamepadButton

		local imageData = values.Image[self.state.currentImage]

		local buttonContents = {
			ButtonLabel = Roact.createElement(TextLocalizer, {
				key = stringKey,
				render = function(localizedText)
					return Roact.createElement("TextLabel", {
						Text = localizedText,
						Font = font,
						Size = UDim2.new(0.6, 0, 0.8, 0),
						Position = UDim2.new(0.2, 0, 0.1, 0),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextColor3 = Color3.new(1, 1, 1),
						TextSize = values.TextSize.Button,
						TextScaled = true,
						TextWrapped = false,
						LayoutOrder = 2,
					}, {
						TextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
							MaxTextSize = values.TextSize.Button,
						}),
					})
				end,
			})
		}

		if gamepadEnabled then
			-- Using a frame allows the icon to be left-aligned and still
			-- be in a size-constrained section of the overall button
			buttonContents.ButtonIcon = Roact.createElement("Frame", {
				Size = UDim2.new(0.2, 0, 0.8, 0),
				Position = UDim2.new(0, 0, 0.1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				Icon = Roact.createElement("ImageLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					Position = UDim2.new(0, values.Size.ButtonIconPadding, 0, values.Size.ButtonIconYOffset),
					SizeConstraint = Enum.SizeConstraint.RelativeYY,
					ScaleType = Enum.ScaleType.Fit,
					Image = values.Image[gamepadButton.Name].Path,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				})
			})
		end

		return Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			AutoButtonColor = false,
			Modal = true,

			Size = size,
			Position = position,
			ScaleType = Enum.ScaleType.Slice,
			Image = imageData.Path,
			SliceCenter = imageData.SliceCenter,

			[Roact.Event.InputBegan] = self.inputBegan,
			[Roact.Event.InputEnded] = self.inputEnded,
			[Roact.Event.Activated] = self.activated,
		}, buttonContents)
	end)
end

local function mapStateToProps(state)
	return {
		gamepadEnabled = state.gamepadEnabled
	}
end

Button = connectToStore(mapStateToProps)(Button)

return Button