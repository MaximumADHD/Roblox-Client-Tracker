local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local useTokens = require(Foundation.Providers.Style.useTokens)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)

local useDialog = require(script.Parent.useDialog)
local getResponsiveSize = require(script.Parent.getResponsiveSize)

local function useDialogResponsiveSize(size: DialogSize)
	local tokens = useTokens()
	local overlay = useOverlay()
	local dialog = useDialog()

	local updateSize = React.useCallback(function()
		if not overlay then
			return
		end
		dialog.setResponsiveSize(getResponsiveSize(overlay.AbsoluteSize.X, size, tokens))
	end, { overlay :: unknown, size, tokens, dialog.size })

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
