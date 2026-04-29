local RunService = game:GetService("RunService")
local Src = script:FindFirstAncestor("ultimate-list")

local DataSources = require(Src.DataSources)
local Dimensions = require(Src.Dimensions)
local React = require(Src.Parent.React)
local ReactBindingsRenderer = require(Src.Renderers.ReactBindingsRenderer)
local ReactStateRenderer = require(Src.Renderers.ReactStateRenderer)
local Renderers = require(Src.Renderers)
local createVirtualizedListController = require(Src.createVirtualizedListController)
local exhaustiveMatch = require(Src.Util.exhaustiveMatch)

local e = React.createElement

local function ScrollingFrame<T>(
	props: {
		dataSource: DataSources.DataSource<T>,
		dimensions: Dimensions.Dimensions<T>,
		renderer: Renderers.Renderer<T>,

		-- Will use index as key otherwise, which is fine for append-only cases.
		getKey: ((value: T, index: number) -> string)?,

		direction: "x" | "y",

		scrollingFrameRef: React.Ref<ScrollingFrame>?,
		onAbsoluteWindowSizeChanged: ((newWindowSize: Vector2) -> ())?,
		onScrollAxisChanged: ((newScrollAxis: number) -> ())?,

		tag: string?,
		native: { [any]: any }?,
	}
)
	local virtualizedListController = React.useState(function()
		return createVirtualizedListController(props.dataSource, props.dimensions, props.direction)
	end)

	React.useEffect(function()
		return function()
			return virtualizedListController.destroy()
		end
	end, {})

	local canvasSizeBinding, setCanvasSize = React.useBinding(virtualizedListController.getCanvasSize())
	local windowSizeBinding, setWindowSize = React.useBinding(Vector2.zero)
	local scrollAxisBinding, setScrollAxis = React.useBinding(0)

	React.useEffect(function()
		return virtualizedListController.bindToUpdate(function()
			setCanvasSize(virtualizedListController.getCanvasSize())
		end)
	end, {})

	local onAbsoluteWindowSizeChanged = React.useCallback(function(instance: ScrollingFrame)
		setWindowSize(instance.AbsoluteWindowSize)
		virtualizedListController.setWindowSize(instance.AbsoluteWindowSize)

		if props.onAbsoluteWindowSizeChanged ~= nil then
			props.onAbsoluteWindowSizeChanged(instance.AbsoluteWindowSize)
		end
	end, { props.direction, props.onAbsoluteWindowSizeChanged } :: { unknown })

	local onCanvasPositionChanged = React.useCallback(function(instance: ScrollingFrame)
		local scrollAxis = if props.direction == "x"
			then instance.CanvasPosition.X
			elseif props.direction == "y" then instance.CanvasPosition.Y
			else exhaustiveMatch(props.direction)

		-- In deferred signals, position properties update only on the frame *after*,
		-- which causes visible flickering.
		RunService.Heartbeat:Once(function()
			virtualizedListController.setScrollAxis(scrollAxis)
			setScrollAxis(scrollAxis)

			if props.onScrollAxisChanged ~= nil then
				props.onScrollAxisChanged(scrollAxis)
			end
		end)
	end, { props.direction, props.onScrollAxisChanged } :: { unknown })

	React.useEffect(function()
		virtualizedListController.setDataSource(props.dataSource)
	end, { props.dataSource })

	React.useEffect(function()
		virtualizedListController.setDimensions(props.dimensions)
	end, { props.dimensions })

	local scrollingFrameProps = {
		Size = UDim2.fromScale(1, 1),

		CanvasSize = canvasSizeBinding,

		-- Luau: No multiple indexers
		[React.Change.AbsoluteWindowSize] = onAbsoluteWindowSizeChanged :: any,
		[React.Change.CanvasPosition] = onCanvasPositionChanged :: any,
		[React.Tag] = props.tag,

		ref = props.scrollingFrameRef,
	}

	if props.native ~= nil then
		for key, value in props.native do
			if scrollingFrameProps[key] ~= nil then
				error(`{key} is already used by UltimateList`)
			end

			scrollingFrameProps[key] = value
		end
	end

	return e("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
	}, {
		ScrollingFrame = e("ScrollingFrame", scrollingFrameProps),

		-- This is outside of the scrolling frame because CanvasPosition updates a bit too late even
		-- in the case of bindings, showing you emptiness before we have a chance to react.
		RendererOverlay = e("Frame", {
			BackgroundTransparency = 1,
			ClipsDescendants = true,
			-- Match window size so you can still see scroll bar
			Size = windowSizeBinding:map(function(windowSize: Vector2)
				return UDim2.fromOffset(windowSize.X, windowSize.Y)
			end),
			ZIndex = 2,
		}, {
			Renderer = if props.renderer.type == "byState"
				then e(ReactStateRenderer, {
					virtualizedListController = virtualizedListController,

					config = props.renderer.config,

					dimensions = props.dimensions,
					direction = props.direction,

					callback = props.renderer.callback,
					getKey = props.getKey,

					scrollAxisBinding = scrollAxisBinding,
				})
				elseif props.renderer.type == "byBinding" then e(ReactBindingsRenderer, {
					virtualizedListController = virtualizedListController,
					scrollAxisBinding = scrollAxisBinding,

					dimensions = props.dimensions,
					direction = props.direction,

					callback = props.renderer.callback,
					getKey = props.getKey,
				})
				else exhaustiveMatch(props.renderer.type),
		}),
	})
end

return ScrollingFrame
