local StyleRoot = script.Parent
local UIBloxRoot = StyleRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)

local StyleConsumer = Roact.Component:extend("StyleConsumer")

--Note: remove along with styleRefactorConfig
local UIBloxConfig = require(UIBloxRoot.UIBloxConfig)
local styleRefactorConfig = UIBloxConfig.styleRefactorConfig
---

local validateProps = t.strictInterface({
	render = t.callback,
})

function StyleConsumer:init()
	if styleRefactorConfig then
		warn("Using deprecated `UIBlox.Style.withStyle`. Please use `UIBlox.Core.Style.withStyle`")
	end

	self.appStyle = self._context.AppStyle
	local currentStyle = self.appStyle.style

	self.state = {
		style = currentStyle,
	}
end

function StyleConsumer:render()
	assert(validateProps(self.props))
	return self.props.render(self.state.style)
end

function StyleConsumer:didMount()
	self.disconnectStyleListener = self.appStyle.signal:subscribe(function(newStyle)
		self:setState({
			style = newStyle,
		})
	end)
end

function StyleConsumer:willUnmount()
	self.disconnectStyleListener()
end

return StyleConsumer