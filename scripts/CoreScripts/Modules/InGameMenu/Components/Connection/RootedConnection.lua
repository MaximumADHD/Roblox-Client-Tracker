--[[
	Helper component that will determine when its subtree has been
	rooted to the datamodel and pass this to a render prop.
]]

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local RootedConnection = Roact.PureComponent:extend("RootedConnection")

RootedConnection.validateProps = t.strictInterface({
	render = t.callback,
})

function RootedConnection:init()
	self.state = {
		isRooted = false,
	}

	self.rootRef = Roact.createRef()

	self.onAncestryChanged = function(rbx)
		if rbx:IsDescendantOf(game) then
			self:setState({
				isRooted = true,
			})
		end
	end
end

function RootedConnection:render()
	return Roact.createFragment({
		Content = self.props.render(self.state.isRooted),
		Folder = Roact.createElement("Folder", {
			[Roact.Event.AncestryChanged] = self.onAncestryChanged,
			[Roact.Ref] = self.rootRef,
		}),
	})
end

function RootedConnection:didMount()
	if self.rootRef:getValue():IsDescendantOf(game) then
		self:setState({
			isRooted = true,
		})
	end
end

return RootedConnection
