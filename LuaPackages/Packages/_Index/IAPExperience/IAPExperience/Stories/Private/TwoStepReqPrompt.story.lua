local PrivateRoot = script.Parent
local StoryRoot = PrivateRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local XBOX_A_ICON = Images["icons/controls/keys/xboxA"]
local XBOX_B_ICON = Images["icons/controls/keys/xboxB"]

local TwoStepReqPrompt = require(IAPExperienceRoot.Generic.TwoStepReqPrompt)

local TwoStepReqPromptContainer = Roact.PureComponent:extend("TwoStepReqPromptContainer")

function TwoStepReqPromptContainer:init()
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

function TwoStepReqPromptContainer:render(props)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		TwoStepReqPrompt = Roact.createElement(TwoStepReqPrompt, {
			position = UDim2.new(0.5, 0, 0.5, 0),
			anchorPoint = Vector2.new(0.5, 0.5),
			screenSize = self.state.screenSize,

			doneControllerIcon = self.props.controls.showController and XBOX_A_ICON or nil,
			cancelControllerIcon = self.props.controls.showController and XBOX_B_ICON or nil,

			closePrompt = function()
				print("OK")
			end,
			openSecuritySettings = self.props.controls.settingsLink and function()
				print("Cancel")
			end or nil,
		}),
	})
end

return {
	controls = {
		showController = true,
		settingsLink = true,
	},
	story = TwoStepReqPromptContainer,
}
