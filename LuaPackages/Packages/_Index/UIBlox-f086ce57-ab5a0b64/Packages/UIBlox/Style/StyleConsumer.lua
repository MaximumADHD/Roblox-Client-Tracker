local StyleRoot = script.Parent
local UIBloxRoot = StyleRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)

local StyleConsumer = Roact.Component:extend("StyleConsumer")

function StyleConsumer:init()
	self.appStyle = self._context.AppStyle
	local currentStyle = self.appStyle.style

	self.state = {
		style = currentStyle,
	}
end

function StyleConsumer:render()
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