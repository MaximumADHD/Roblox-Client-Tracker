local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent

--Note: remove along with styleRefactorConfig
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local styleRefactorConfig = UIBloxConfig.styleRefactorConfig

if not styleRefactorConfig then
	return require(UIBlox.Style.withStyle)
end
---

local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Palette = require(Style.Symbol.Palette)

local StyleConsumer = Roact.Component:extend("StyleConsumer")

local validateProps = t.strictInterface({
	render = t.callback,
})

function StyleConsumer:init()
	self.palette = self._context[Palette]
	local currentStyle = self.palette.style

	self.state = {
		style = currentStyle,
	}
end

function StyleConsumer:render()
	assert(validateProps(self.props))
	return self.props.render(self.state.style)
end

function StyleConsumer:didMount()
	self.disconnectStyleListener = self.palette.signal:subscribe(function(newStyle)
		self:setState({
			style = newStyle,
		})
	end)
end

function StyleConsumer:willUnmount()
	self.disconnectStyleListener()
end

return StyleConsumer