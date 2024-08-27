local Root = script:FindFirstAncestor("ReactSceneUnderstanding")

local Cryo = require(Root.Parent.Cryo)
local React = require(Root.Parent.React)
local SceneUnderstanding = require(Root.Parent.SceneUnderstanding)

local useEffect = React.useEffect
local useMemo = React.useMemo
local useState = React.useState

type DataModelTraversalOptions = SceneUnderstanding.DataModelTraversalOptions

local function useLazyInstanceCollector(
	parents: { Instance },
	predicate: ((descendant: Instance) -> boolean)?,
	options: DataModelTraversalOptions?
)
	local collector = useMemo(function()
		return SceneUnderstanding.createLazyInstanceCollector(parents, predicate, options)
	end, Cryo.List.join(parents, { predicate }))

	local instances: { Instance }, setInstances = useState({} :: { Instance })

	useEffect(function()
		collector.onStepped(function(newInstances)
			-- The collector mutates the table of instances it collects, so in
			-- order to make React state updates work correctly we need to clone
			-- it so it has a new identity
			setInstances(table.clone(newInstances))
		end)
		collector.listen()

		return function()
			collector.destroy()
		end
	end, { collector })

	return instances
end

return useLazyInstanceCollector
