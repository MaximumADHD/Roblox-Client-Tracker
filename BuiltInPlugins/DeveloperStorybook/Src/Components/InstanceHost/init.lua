local function makeInstanceHost(Roact)
	local InstanceHost = Roact.PureComponent:extend("InstanceHost")

	function InstanceHost:init()
		self.ref = Roact.createRef()
	end

	function InstanceHost:didMount()
		-- Pcall to prevent errors from being thrown after the Instance has been destroyed
		pcall(function()
			self.props.Instance.Parent = self.ref.current
		end)
	end

	function InstanceHost:render()
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			[Roact.Ref] = self.ref,
		})
	end

	return InstanceHost
end

return makeInstanceHost
