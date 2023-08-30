local RunService = game:GetService("RunService")

local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local t = dependencies.t
local Cryo = dependencies.Cryo

local withStyle = UIBlox.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local ExternalEventConnection = require(script.Parent.ExternalEventConnection)

local RETRY_SPINNER_IMAGE = "icons/common/refresh"

local Spinner = Roact.PureComponent:extend("Spinner")

Spinner.defaultProps = {
	Size = UDim2.new(0, 20, 0, 20),
	spinSpeed = 540,
}

Spinner.validateProps = t.interface({
	isSpinning = t.optional(t.boolean),
	spinSpeed = t.optional(t.number),
	Size = t.optional(t.UDim2),
	Position = t.optional(t.UDim2),
	AnchorPoint = t.optional(t.Vector2),
	ImageColor3 = t.optional(t.Color3),
	ImageTransparency = t.optional(t.number),
	forwardRef = t.optional(t.table),
})

function Spinner:init()
	self.renderSteppedCallback = function(dt)
		local isSpinning = self.props.isSpinning
		local spinSpeed = self.props.spinSpeed

		if isSpinning and self.ref.current then
			self.ref.current.Rotation = self.ref.current.Rotation + spinSpeed * dt
		end
	end
end

function Spinner:render()
	local size = self.props.Size
	local position = self.props.Position
	local anchorPoint = self.props.AnchorPoint
	local imageColor3 = self.props.ImageColor3
	local imageTransparency = self.props.ImageTransparency
	local isSpinning = self.props.isSpinning

	local forwardRef = self.props.forwardRef

	self.ref = forwardRef or self.ref or Roact.createRef()

	return withStyle(function(style)
		return Roact.createElement(ImageSetLabel, {
			Size = size,
			Position = position,
			AnchorPoint = anchorPoint,
			BackgroundTransparency = 1,
			Image = Images[RETRY_SPINNER_IMAGE],
			ImageColor3 = imageColor3 or style.Theme.SystemPrimaryDefault.Color,
			ImageTransparency = imageTransparency or style.Theme.SystemPrimaryDefault.Transparency,
			[Roact.Ref] = self.ref,
		}, {
			renderStepped = isSpinning and Roact.createElement(ExternalEventConnection, {
				event = RunService.renderStepped,
				callback = self.renderSteppedCallback,
			}),
		})
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		Spinner,
		Cryo.Dictionary.join(props, {
			forwardRef = ref,
		})
	)
end)
