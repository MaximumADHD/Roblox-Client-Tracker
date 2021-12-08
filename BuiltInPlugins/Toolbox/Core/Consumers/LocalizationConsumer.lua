local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local ContextGetter = require(Plugin.Core.Util.ContextGetter)

local getLocalization = ContextGetter.getLocalization

local LocalizationConsumer = Roact.PureComponent:extend("LocalizationConsumer")

function LocalizationConsumer:init()
	local localization = getLocalization(self)

	self.localization = localization
	self.state = {
		localizedContent = self.localization:getLocalizedContent()
	}
end

function LocalizationConsumer:render()
	return self.props.render(self.localization, self.state.localizedContent)
end

function LocalizationConsumer:didMount()
	self.disconnectLocalizationListener = self.localization:subscribe(function(localizedContent)
		self:setState({
			localizedContent = localizedContent
		})
	end)
end

function LocalizationConsumer:willUnmount()
	if self.disconnectLocalizationListener then
		self.disconnectLocalizationListener()
	end
end

return LocalizationConsumer
