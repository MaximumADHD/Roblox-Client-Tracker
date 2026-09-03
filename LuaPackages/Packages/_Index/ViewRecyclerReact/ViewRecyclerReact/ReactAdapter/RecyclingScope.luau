local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)

local React = require(Root.Parent.React)
local RecyclingRoot = require(Root.ReactAdapter.Private.RecyclingRoot)
local RecyclingScopeContext = require(Root.ReactAdapter.Private.RecyclingScopeContext)

local e = React.createElement

export type Props = {
	maxPoolSize: number?,
	diagnostics: Core.DiagnosticCallback?,
	children: React.Node,
}

export type AdapterOptions = {
	createPortal: ((children: React.Node, target: Instance) -> React.Node)?,
}

local function createRecyclingScope(adapterOptions: AdapterOptions?)
	local createPortal = if adapterOptions == nil then nil else adapterOptions.createPortal

	local function RecyclingScope(props: Props)
		assert(createPortal ~= nil, "RecyclingScope requires a configured portal renderer")
		local _version, setVersion = React.useState(0)
		local consumerCountRef = React.useRef(0)
		local destroyingRef = React.useRef(false)
		local destroyedRef = React.useRef(false)
		local root = React.useState(function()
			return RecyclingRoot.new(function()
				if not destroyingRef.current then
					setVersion(function(version)
						return version + 1
					end)
				end
			end)
		end)

		local function destroyRootIfReady()
			if destroyingRef.current and consumerCountRef.current == 0 and not destroyedRef.current then
				destroyedRef.current = true
				root.destroy()
			end
		end

		local registerConsumer = React.useState(function()
			return function()
				assert(not destroyedRef.current, "RecyclingScope: cannot register after destruction")
				destroyingRef.current = false
				consumerCountRef.current += 1
				local registered = true
				return function()
					if not registered then
						return
					end
					registered = false
					consumerCountRef.current -= 1
					task.defer(destroyRootIfReady)
				end
			end
		end)
		local contextValue = React.useMemo(function()
			return {
				root = root,
				listOptions = {
					maxPoolSize = props.maxPoolSize,
					diagnostics = props.diagnostics,
				},
				registerConsumer = registerConsumer,
			}
		end, { props.maxPoolSize, props.diagnostics, registerConsumer, root } :: { unknown })

		React.useEffect(function()
			destroyingRef.current = false
			return function()
				destroyingRef.current = true
				task.defer(destroyRootIfReady)
			end
		end, { root })

		local children = {
			Consumers = e(RecyclingScopeContext.Provider, {
				value = contextValue,
			}, props.children),
		}
		for key, host in root.getPortalChildren(createPortal :: any) do
			children[key] = host
		end
		return e(React.Fragment, nil, children)
	end

	return RecyclingScope
end

return {
	create = createRecyclingScope,
}
