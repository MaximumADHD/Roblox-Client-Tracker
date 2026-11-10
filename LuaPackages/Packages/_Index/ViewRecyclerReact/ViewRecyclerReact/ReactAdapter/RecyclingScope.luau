local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecyclerReact").Flags).FFlagViewRecyclerReact08
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

type ObservePool = (diagnostics: Core.DiagnosticCallback) -> () -> ()

local PoolObserver, withPoolObserver
if FFlagViewRecyclerReact08 then
	function PoolObserver(props: {
		observePool: ObservePool,
		diagnostics: Core.DiagnosticCallback?,
	})
		local observePool = props.observePool
		local diagnostics = props.diagnostics
		React.useLayoutEffect(function()
			if diagnostics == nil then
				return nil
			end
			return observePool(diagnostics)
		end, { observePool, diagnostics } :: { unknown })
		return nil
	end

	-- The observer renders before the children, so its layout effect subscribes
	-- before any descendant's layout effect binds views.
	function withPoolObserver(observePool: ObservePool, diagnostics: Core.DiagnosticCallback?, children: React.Node)
		return e(
			React.Fragment,
			nil,
			e(PoolObserver, {
				observePool = observePool,
				diagnostics = diagnostics,
			}),
			e(React.Fragment, nil, children)
		)
	end
end

local function createRecyclingScope(adapterOptions: AdapterOptions?)
	local createPortal = if adapterOptions == nil then nil else adapterOptions.createPortal

	local CreatedRecyclingScope
	if FFlagViewRecyclerReact08 then
		function CreatedRecyclingScope(props: Props)
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
				end, props.maxPoolSize)
			end)

			local function destroyRootIfReady()
				if destroyingRef.current and consumerCountRef.current == 0 and not destroyedRef.current then
					destroyedRef.current = true
					root.destroy()
				end
			end

			local contextValue = React.useState(function()
				return table.freeze({
					getScope = root.getScope,
					observePool = root.observePool,
					registerConsumer = function()
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
					end,
				})
			end)

			React.useLayoutEffect(function()
				root.setMaxPoolSize(props.maxPoolSize)
			end, { root, props.maxPoolSize } :: { unknown })

			React.useEffect(function()
				destroyingRef.current = false
				return function()
					destroyingRef.current = true
					task.defer(destroyRootIfReady)
				end
			end, { root })

			-- Hosts render inside the provider, so a scope consumer nested in a
			-- hosted view (such as a list row) joins this scope.
			local children = {
				Consumers = withPoolObserver(root.observePool, props.diagnostics, props.children),
			}
			for key, host in root.getPortalChildren(createPortal :: any) do
				children[key] = host
			end
			return e(RecyclingScopeContext.Provider, {
				value = contextValue,
			}, children)
		end
	end

	-- Joins the nearest enclosing scope, or creates one. `maxPoolSize` applies
	-- only to a scope this component creates; `diagnostics` observes whichever
	-- scope it uses.
	local function RecyclingScope(props: Props)
		local enclosing, _version, setVersion, consumerCountRef, destroyingRef, destroyedRef, root, destroyRootIfReady, registerConsumer, contextValue, children
		if FFlagViewRecyclerReact08 then
			enclosing = React.useContext(RecyclingScopeContext)
			if enclosing == nil then
				return e(CreatedRecyclingScope, props)
			end
		else
			assert(createPortal ~= nil, "RecyclingScope requires a configured portal renderer")
			_version, setVersion = React.useState(0)
			consumerCountRef = React.useRef(0)
			destroyingRef = React.useRef(false)
			destroyedRef = React.useRef(false)
			root = React.useState(function()
				return RecyclingRoot.new(function()
					if not destroyingRef.current then
						setVersion(function(version)
							return version + 1
						end)
					end
				end)
			end)

			function destroyRootIfReady()
				if destroyingRef.current and consumerCountRef.current == 0 and not destroyedRef.current then
					destroyedRef.current = true
					root.destroy()
				end
			end

			registerConsumer = React.useState(function()
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
			contextValue = React.useMemo(function()
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

			children = {
				Consumers = e(RecyclingScopeContext.Provider, {
					value = contextValue,
				}, props.children),
			}
			for key, host in root.getPortalChildren(createPortal :: any) do
				children[key] = host
			end
		end
		return (if FFlagViewRecyclerReact08 then withPoolObserver else e)(
			(if FFlagViewRecyclerReact08 then enclosing.observePool else React.Fragment),
			(if FFlagViewRecyclerReact08 then props.diagnostics else nil),
			(if FFlagViewRecyclerReact08 then props.children else children)
		)
	end

	return RecyclingScope
end

return {
	create = createRecyclingScope,
}
