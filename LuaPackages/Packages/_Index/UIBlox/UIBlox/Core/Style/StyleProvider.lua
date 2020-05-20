local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent

--Note: remove along with styleRefactorConfig
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local styleRefactorConfig = UIBloxConfig.styleRefactorConfig

if not styleRefactorConfig then
	return require(UIBlox.Style.StyleProvider)
end
---

local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local StylePalette = require(Style.StylePalette)
local Palette = require(Style.Symbol.Palette)

local StyleProvider = Roact.Component:extend("StyleProvider")

local validateProps = t.strictInterface({
	-- The current style of the app.
	style = t.table,
	[Roact.Children] = t.table,
})

function StyleProvider:init()
	local style = self.props.style
	self.stylePalette = StylePalette.new(style)
	self._context[Palette] = self.stylePalette
end

function StyleProvider:render()
	assert(validateProps(self.props))
	return Roact.oneChild(self.props[Roact.Children])
end

function StyleProvider:didUpdate(previousProps)
	if self.props.style ~= previousProps.style then
		self.style:update(self.props.style)
	end
end

return StyleProvider