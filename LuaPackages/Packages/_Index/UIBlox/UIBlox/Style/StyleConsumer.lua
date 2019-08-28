local StyleRoot = script.Parent
local UIBloxRoot = StyleRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)

local StyleConsumer = Roact.Component:extend("StyleConsumer")

local validateProps = t.strictInterface({
	render = t.callback,
})

function StyleConsumer:init()
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