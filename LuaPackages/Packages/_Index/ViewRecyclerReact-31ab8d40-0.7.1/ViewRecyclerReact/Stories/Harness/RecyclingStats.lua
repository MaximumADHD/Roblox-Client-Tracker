local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "RecyclingStats must be mounted under view-recycler-react")

local React = require(Root.Parent.React)

export type Stats = {
	mounted: number,
	mounts: number,
	reassignments: number,
}

type Actions = {
	allocateMountId: () -> number,
	onMount: () -> (),
	onUnmount: () -> (),
	onReassignment: () -> (),
}

local Context = React.createContext(nil :: Actions?)
local RecyclingStats = {}

function RecyclingStats.useStats(): (Stats, Actions)
	local stats, setStats = React.useState({
		mounted = 0,
		mounts = 0,
		reassignments = 0,
	} :: Stats)
	local nextMountId = React.useRef(0)

	local actions = React.useMemo(function(): Actions
		return {
			allocateMountId = function()
				nextMountId.current += 1
				return nextMountId.current
			end,
			onMount = function()
				setStats(function(previous)
					return {
						mounted = previous.mounted + 1,
						mounts = previous.mounts + 1,
						reassignments = previous.reassignments,
					}
				end)
			end,
			onUnmount = function()
				setStats(function(previous)
					return {
						mounted = previous.mounted - 1,
						mounts = previous.mounts,
						reassignments = previous.reassignments,
					}
				end)
			end,
			onReassignment = function()
				setStats(function(previous)
					return {
						mounted = previous.mounted,
						mounts = previous.mounts,
						reassignments = previous.reassignments + 1,
					}
				end)
			end,
		}
	end, {})

	return stats, actions
end

function RecyclingStats.Provider(props)
	return React.createElement(Context.Provider, {
		value = props.actions,
	}, props.children)
end

function RecyclingStats.useAssignment(itemKey: string): number
	local actions = React.useContext(Context)
	local mountId = React.useState(function()
		return if actions == nil then 0 else actions.allocateMountId()
	end)
	local previousKey = React.useRef(nil :: string?)

	React.useEffect(function()
		if actions == nil then
			return nil
		end
		actions.onMount()
		return actions.onUnmount
	end, { actions })

	React.useEffect(function()
		if actions ~= nil and previousKey.current ~= nil and previousKey.current ~= itemKey then
			actions.onReassignment()
		end
		previousKey.current = itemKey
	end, { actions, itemKey })

	return mountId
end

function RecyclingStats.format(stats: Stats): string
	return `Mounted: {stats.mounted}   Total mounts: {stats.mounts}   Reassignments: {stats.reassignments}`
end

return RecyclingStats
