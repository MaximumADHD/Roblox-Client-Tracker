local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local useEffect = React.useEffect
local useRef = React.useRef

local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
type StudioUri = StudioUri.StudioUri

local useWidgetsContext = require(script.Parent.useWidgetsContext)

local function useWidgetRef(uri: StudioUri, forwardRef: React.RefObject<GuiBase2d>?): React.RefObject<GuiBase2d?>
	local widgets = useWidgetsContext()
	local customRef = useRef(nil :: GuiBase2d?)
	local ref = forwardRef or customRef

	local uriString = StudioUri.toString(uri)

	useEffect(function()
		local instance = ref.current
		if not instance then
			return
		end
		if uri and typeof(instance) == "Instance" then
			widgets.register(uri, instance)
			return function()
				widgets.deregister(uri, instance)
			end
		end
		return nil
	end, { uriString :: any, ref.current, uri, widgets.register, widgets.deregister })

	return ref
end

return useWidgetRef
