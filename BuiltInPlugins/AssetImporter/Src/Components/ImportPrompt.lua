local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ShowImportPrompt = require(Plugin.Src.Thunks.ShowImportPrompt)

local ImportPrompt = Roact.PureComponent:extend("ImportPrompt")

function ImportPrompt:init()
	self.promptClosed = function(succeeded)
		if self.props.OnPromptClosed then
			self.props.OnPromptClosed(succeeded)
		end
	end
end

function ImportPrompt:render()
	self.props.showImportPrompt(self.promptClosed)
end

local function mapDispatchToProps(dispatch)
	return {
		showImportPrompt = function(promptClosedHandler)
			dispatch(ShowImportPrompt(promptClosedHandler))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(ImportPrompt)
