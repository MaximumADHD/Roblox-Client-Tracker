local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local useDialogLayout = require(script.Parent.useDialogLayout)

local useTokens = require(Foundation.Providers.Style.useTokens)

local getResponsiveSize = require(script.Parent.getResponsiveSize)

local function useDialogResponsiveSize(overlay: GuiBase2d?, size: DialogSize)
	local tokens = useTokens()
	local layout = useDialogLayout()

	local updateSize = React.useCallback(function()
		if not overlay then
			return
		end
		layout.setResponsiveSize(getResponsiveSize(overlay.AbsoluteSize.X, size, tokens))
	end, { overlay :: unknown, size, tokens, layout })

	React.useEffect(function()
		if not overlay then
			return
		end

		updateSize()

		local connection = overlay:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateSize)

		return function()
			connection:Disconnect()
		end
	end, { overlay, size })
end

return useDialogResponsiveSize
