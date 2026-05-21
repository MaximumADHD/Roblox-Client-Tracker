local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local function useDialogSize(ref: { current: GuiBase2d? })
	local binding, setBinding = React.useBinding(Vector2.new(0, 0))

	React.useEffect(function()
		local instance = ref.current
		if not instance then
			return
		end

		local function updateDialogSize()
			local size = instance.AbsoluteSize
			if size.X == 0 or size.Y == 0 then
				return
			end
			setBinding(size)
		end

		updateDialogSize()

		local sizeConnection = instance:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateDialogSize)

		return function()
			sizeConnection:Disconnect()
		end
	end, {})

	return binding
end

return useDialogSize
