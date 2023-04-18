local PrivateRoot = script.Parent
local StoryRoot = PrivateRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local InsufficientRobuxPrompt = require(IAPExperienceRoot.Generic.InsufficientRobuxPrompt)

local InsufficientRobuxPromptContainer = Roact.PureComponent:extend("InsufficientRobuxPromptContainer")

function InsufficientRobuxPromptContainer:init()
	self.screenRef = Roact.createRef()
	self.state = {
		screenSize = Vector2.new(0, 0),
	}

	self.changeScreenSize = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize,
			})
		end
	end
end

function InsufficientRobuxPromptContainer:render(props)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		InsufficientRobuxPrompt = Roact.createElement(InsufficientRobuxPrompt, {
			position = UDim2.new(0.5, 0, 0.5, 0),
			anchorPoint = Vector2.new(0.5, 0.5),
			screenSize = self.state.screenSize,

			robuxBalance = 500,

			closePrompt = function()
				print("Cancel!")
			end,
			buyRobux = function()
				print("Buy Robux!")
			end,
		}),
	})
end

return {
	controls = {},
	story = InsufficientRobuxPromptContainer,
}
