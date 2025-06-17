local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Wrappers = require(Foundation.Utility.Wrappers)
local Signal = Wrappers.Signal
local Connection = Wrappers.Connection

local function findLayerCollector(instance: Instance?): Instance?
	if not instance then
		return nil
	end

	return instance:FindFirstAncestorWhichIsA("LayerCollector")
end

local function useLayerCollector(guiObject: GuiObject?): Instance?
	local layerCollector, setLayerCollector = React.useState(nil :: Instance?)

	local updateLayerCollector = React.useCallback(function()
		setLayerCollector(findLayerCollector(guiObject))
	end, { guiObject })

	React.useEffect(function(): (() -> ())?
		if guiObject then
			updateLayerCollector()

			local connection = Signal.Connect(guiObject.AncestryChanged, updateLayerCollector)

			return function()
				Connection.Disconnect(connection)
			end
		end
		return nil
	end, { guiObject })

	return layerCollector
end

return useLayerCollector
