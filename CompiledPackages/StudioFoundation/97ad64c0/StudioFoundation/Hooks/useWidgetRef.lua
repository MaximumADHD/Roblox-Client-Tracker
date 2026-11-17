local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local React = require(Packages.React)
local useEffect = React.useEffect
local useRef = React.useRef

local useWidgets = require(script.Parent.useWidgets)
local StudioUri = require(Main.Util.StudioUri)

local function useWidgetRef(uri: StudioUri, forwardRef: React.RefObject<GuiBase2d?>?): React.RefObject<GuiBase2d?>
	local widgets = useWidgets()
	local customRef = useRef(nil :: GuiBase2d?)
	local ref = forwardRef or customRef

	-- Memoize on the uri string in case the uri object is recreated
	local uriString = StudioUri.toString(uri)

	useEffect(function()
		local instance = ref.current
		if not instance then
			return
		end
		if uri then
			widgets:register(uri, instance)
			return function()
				widgets:deregister(uri, instance)
			end
		end
		return nil
	end, { uriString :: any, ref.current })

	return ref
end

return useWidgetRef
