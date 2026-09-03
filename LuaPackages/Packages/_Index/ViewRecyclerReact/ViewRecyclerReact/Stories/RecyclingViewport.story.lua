local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "RecyclingViewport story must be mounted under view-recycler-react")
local Packages = Root.Parent

local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local TweenService = game:GetService("TweenService")

local e = React.createElement

local ROW_HEIGHT = 132
local ROW_GAP = 12
local ROW_STRIDE = ROW_HEIGHT + ROW_GAP
local DEFAULT_CONTROLS = {
	activationMargin = 0,
	captureMode = false,
	childItemLength = 142,
	childOverscan = 0,
	childSpacing = 8,
	itemsPerSection = 10,
	maxPoolSize = 20,
	retentionMargin = 40,
	sectionCount = 12,
}
local CONTROLS = {
	activationMargin = DEFAULT_CONTROLS.activationMargin,
	captureMode = DEFAULT_CONTROLS.captureMode,
	childItemLength = DEFAULT_CONTROLS.childItemLength,
	childOverscan = StoryControls.options(DEFAULT_CONTROLS.childOverscan, StoryControls.OverscanOptions),
	childSpacing = DEFAULT_CONTROLS.childSpacing,
	itemsPerSection = StoryControls.options(DEFAULT_CONTROLS.itemsPerSection, { 4, 8, 20 }),
	maxPoolSize = DEFAULT_CONTROLS.maxPoolSize,
	retentionMargin = DEFAULT_CONTROLS.retentionMargin,
	sectionCount = StoryControls.options(DEFAULT_CONTROLS.sectionCount, { 4, 8, 20 }),
}

type Item = {
	id: string,
	label: string,
}

type Section = {
	id: string,
	data: any,
	layout: any,
}

local MountContext = React.createContext(nil :: {
	onMount: () -> (),
	onUnmount: () -> (),
}?)

local function ItemView(props)
	local mounts = React.useContext(MountContext)
	assert(mounts ~= nil)
	React.useEffect(function()
		mounts.onMount()
		return mounts.onUnmount
	end, { mounts })
	return e("TextLabel", {
		BackgroundColor3 = Color3.fromRGB(54, 78, 102),
		BorderSizePixel = 0,
		Font = Enum.Font.BuilderSans,
		Size = UDim2.fromScale(1, 1),
		Text = SignalsReact.useSignalBinding(function(scope)
			local item = props.itemSignal(scope)
			return item.label
		end),
		TextColor3 = Color3.new(1, 1, 1),
		TextSize = 15,
	})
end

local RecycledItemView = ViewRecycler.createRecyclableView(ItemView)

local function Component(storyProps)
	local controls = StoryControls.merge(DEFAULT_CONTROLS, storyProps.controls)
	local captureMode = controls.captureMode == true
	local sectionCount = StoryControls.positiveInteger(controls.sectionCount, DEFAULT_CONTROLS.sectionCount)
	local itemsPerSection = StoryControls.positiveInteger(controls.itemsPerSection, DEFAULT_CONTROLS.itemsPerSection)
	local childItemLength = StoryControls.positiveInteger(controls.childItemLength, DEFAULT_CONTROLS.childItemLength)
	local childSpacing = StoryControls.nonNegativeNumber(controls.childSpacing, DEFAULT_CONTROLS.childSpacing)
	local childOverscan = StoryControls.nonNegativeNumber(controls.childOverscan, DEFAULT_CONTROLS.childOverscan)
	local retentionMargin = StoryControls.nonNegativeNumber(controls.retentionMargin, DEFAULT_CONTROLS.retentionMargin)
	local activationMargin =
		StoryControls.nonNegativeNumber(controls.activationMargin, DEFAULT_CONTROLS.activationMargin)
	local maxPoolSize = StoryControls.positiveInteger(controls.maxPoolSize, DEFAULT_CONTROLS.maxPoolSize)
	local viewportRef = React.useRef(nil :: ScrollingFrame?)
	local captureTweenRef = React.useRef(nil :: Tween?)
	local sections = React.useMemo(function(): { Section }
		local result = {}
		for sectionIndex = 1, sectionCount do
			local items = {}
			for itemIndex = 1, itemsPerSection do
				table.insert(items, {
					id = `{sectionIndex}:{itemIndex}`,
					label = `Section {sectionIndex} · Item {itemIndex}`,
				})
			end
			table.insert(result, {
				id = tostring(sectionIndex),
				data = ViewRecycler.DataSource.sequence(items, function(item: Item)
					return item.id
				end),
				layout = ViewRecycler.Layout.uniform({
					itemLength = childItemLength,
					spacing = childSpacing,
				}),
			})
		end
		return result
	end, { childItemLength, childSpacing, itemsPerSection, sectionCount })
	React.useEffect(function()
		return function()
			for _, section in sections do
				section.layout.destroy()
			end
		end
	end, { sections })

	local mounted, setMounted = React.useState(0)
	local mounts = React.useMemo(function()
		return {
			onMount = function()
				setMounted(function(value)
					return value + 1
				end)
			end,
			onUnmount = function()
				setMounted(function(value)
					return value - 1
				end)
			end,
		}
	end, {})
	React.useEffect(function()
		return function()
			if captureTweenRef.current ~= nil then
				captureTweenRef.current:Cancel()
			end
		end
	end, {})

	local function resetCapture()
		if captureTweenRef.current ~= nil then
			captureTweenRef.current:Cancel()
			captureTweenRef.current = nil
		end
		if viewportRef.current ~= nil then
			viewportRef.current.CanvasPosition = Vector2.zero
		end
	end

	local function playCapture()
		resetCapture()
		if viewportRef.current == nil then
			return
		end
		local viewportHeight = 540 - 64
		local canvasHeight = sectionCount * ROW_STRIDE - ROW_GAP
		local target = math.max(0, canvasHeight - viewportHeight)
		local tween = TweenService:Create(
			viewportRef.current,
			TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, true),
			{ CanvasPosition = Vector2.new(0, target) }
		)
		captureTweenRef.current = tween
		tween:Play()
	end
	local rows = {}
	for sectionIndex, section in sections do
		rows[section.id] = e("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(0, (sectionIndex - 1) * ROW_STRIDE),
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
		}, {
			Title = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.BuilderSansBold,
				Size = UDim2.new(1, 0, 0, 28),
				Text = `Section {sectionIndex}`,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 17,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			ListClip = e("Frame", {
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				Position = UDim2.fromOffset(0, 32),
				Size = UDim2.new(1, 0, 0, 100),
			}, {
				List = e(ViewRecycler.VirtualList, {
					axis = ViewRecycler.Axis.X,
					data = section.data,
					itemType = RecycledItemView,
					layout = section.layout,
					overscan = childOverscan,
					scrollingFrameProps = {
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						ScrollBarThickness = 4,
					},
				}),
			}),
		})
	end

	return e(MountContext.Provider, {
		value = mounts,
	}, {
		Root = e("Frame", {
			BackgroundColor3 = Color3.fromRGB(22, 22, 28),
			Size = UDim2.fromOffset(680, 540),
		}, {
			Play = if captureMode
				then e("TextButton", {
					BackgroundColor3 = Color3.fromRGB(52, 95, 82),
					BorderSizePixel = 0,
					Position = UDim2.fromOffset(12, 8),
					Size = UDim2.fromOffset(76, 36),
					Text = "Play",
					TextColor3 = Color3.new(1, 1, 1),
					TextSize = 15,
					[React.Event.Activated] = playCapture,
				})
				else nil,
			Reset = if captureMode
				then e("TextButton", {
					BackgroundColor3 = Color3.fromRGB(59, 59, 70),
					BorderSizePixel = 0,
					Position = UDim2.fromOffset(96, 8),
					Size = UDim2.fromOffset(76, 36),
					Text = "Reset",
					TextColor3 = Color3.new(1, 1, 1),
					TextSize = 15,
					[React.Event.Activated] = resetCapture,
				})
				else nil,
			Status = e("TextLabel", {
				BackgroundColor3 = Color3.fromRGB(31, 31, 39),
				BorderSizePixel = 0,
				Position = UDim2.fromOffset(if captureMode then 180 else 12, 8),
				Size = UDim2.new(1, if captureMode then -192 else -24, 0, 36),
				Text = `Mounted physical ItemViews: {mounted} · Scroll vertically to transfer them`,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 16,
			}),
			ViewportClip = e("Frame", {
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				Position = UDim2.fromOffset(12, 52),
				Size = UDim2.new(1, -24, 1, -64),
			}, {
				Viewport = e(ViewRecycler.RecyclingViewport, {
					activationMargin = activationMargin,
					axis = ViewRecycler.Axis.Y,
					maxPoolSize = maxPoolSize,
					retentionMargin = retentionMargin,
					scrollingFrameProps = {
						AutomaticCanvasSize = Enum.AutomaticSize.None,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						CanvasSize = UDim2.fromOffset(0, sectionCount * ROW_STRIDE - ROW_GAP),
						ScrollBarThickness = 6,
						[React.Event.AncestryChanged] = function(instance)
							viewportRef.current = instance
						end,
					},
				}, rows),
			}),
		}),
	})
end

local Story = StoryShell.createStory({
	title = "Viewport-coordinated Recycling",
	instructions = "Scroll the outer vertical viewport across section boundaries, then horizontally scroll visible child lists.",
	itemUpdate = "ReadyOnAssignment — child tiles update leaf properties without React reconciliation.",
	acceptanceCriteria = "Only visible child lists retain assignments, physical ItemViews transfer across sections, and the mounted count stays bounded after warm-up.",
	size = UDim2.fromOffset(720, 700),
}, Component)

return {
	name = "Viewport-coordinated Recycling",
	summary = "Scrolls arbitrary descendant lists through one viewport while retaining a bounded shared ItemView pool.",
	roact = React,
	story = Story,
	controls = CONTROLS,
}
