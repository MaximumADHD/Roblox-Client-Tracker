local TextService = game:GetService("TextService")

local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "RichTextRecycling story must be mounted under view-recycler-react")
local Packages = Root.Parent

local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local useManagedLayout = require(script.Parent.Harness.useManagedLayout)

local e = React.createElement
local MAX_IMMEDIATE_SLOTS = 16
local DEFAULT_CONTROLS = {
	captureMode = false,
	contentWidth = 416,
	fragmentSlotCap = 12,
	itemCount = 1000,
	jumpTarget = 750,
	messageGap = 6,
	messageComplexity = 3,
	overscan = 2,
	randomSeed = 8675309,
	strategy = "hybrid",
}
local CONTROLS = {
	captureMode = DEFAULT_CONTROLS.captureMode,
	contentWidth = DEFAULT_CONTROLS.contentWidth,
	fragmentSlotCap = { DEFAULT_CONTROLS.fragmentSlotCap, 4, 8, 16 },
	itemCount = StoryControls.options(DEFAULT_CONTROLS.itemCount, { 100, 500, 2000 }),
	jumpTarget = DEFAULT_CONTROLS.jumpTarget,
	messageGap = DEFAULT_CONTROLS.messageGap,
	messageComplexity = { DEFAULT_CONTROLS.messageComplexity, 1, 2, 4 },
	overscan = StoryControls.options(DEFAULT_CONTROLS.overscan, StoryControls.OverscanOptions),
	randomSeed = DEFAULT_CONTROLS.randomSeed,
	strategy = { DEFAULT_CONTROLS.strategy, "structural", "cappedImmediate" },
}

local FragmentKind = table.freeze({
	Text = "text" :: "text",
	Chip = "chip" :: "chip",
	Badge = "badge" :: "badge",
})
type FragmentKind = typeof(FragmentKind.Text) | typeof(FragmentKind.Chip) | typeof(FragmentKind.Badge)
local FragmentTone = table.freeze({
	Blue = "blue" :: "blue",
	Code = "code" :: "code",
	Green = "green" :: "green",
	Mention = "mention" :: "mention",
	Priority = "priority" :: "priority",
	Status = "status" :: "status",
	Yellow = "yellow" :: "yellow",
})
type FragmentTone =
	typeof(FragmentTone.Blue)
	| typeof(FragmentTone.Code)
	| typeof(FragmentTone.Green)
	| typeof(FragmentTone.Mention)
	| typeof(FragmentTone.Priority)
	| typeof(FragmentTone.Status)
	| typeof(FragmentTone.Yellow)
type Fragment = {
	kind: FragmentKind,
	x: number,
	y: number,
	width: number,
	height: number,
	text: string?,
	tone: FragmentTone?,
}
type Item = {
	id: number,
	height: number,
	startOffset: number,
	fragments: { Fragment },
}
type StoryContextValue = {
	onFragmentMount: () -> (),
	onRowMount: () -> (),
	onRowRender: () -> (),
	recycleFragments: boolean,
}

local StoryContext = React.createContext(nil :: StoryContextValue?)
local CHIP_COLORS = {
	code = Color3.fromRGB(92, 94, 112),
	mention = Color3.fromRGB(68, 120, 215),
	priority = Color3.fromRGB(205, 75, 67),
	status = Color3.fromRGB(62, 164, 99),
}
local BADGE_COLORS = {
	blue = Color3.fromRGB(70, 135, 220),
	green = Color3.fromRGB(71, 183, 105),
	yellow = Color3.fromRGB(220, 183, 60),
}

local function useMountCounter(onMount: () -> ())
	React.useEffect(function()
		onMount()
	end, {})
end

local function useRowInstrumentation()
	local context = React.useContext(StoryContext)
	assert(context ~= nil, "rich-text row rendered without story context")
	context.onRowRender()
	useMountCounter(context.onRowMount)
end

local function useDeferredCounter()
	local binding, setBinding = React.useBinding(0)
	local countRef = React.useRef(0)
	local flushScheduledRef = React.useRef(false)
	local mountedRef = React.useRef(true)
	local increment = React.useCallback(function()
		countRef.current += 1
		if flushScheduledRef.current then
			return
		end
		flushScheduledRef.current = true
		task.defer(function()
			flushScheduledRef.current = false
			if mountedRef.current then
				setBinding(countRef.current)
			end
		end)
	end, { setBinding })
	React.useEffect(function()
		mountedRef.current = true
		return function()
			mountedRef.current = false
		end
	end, {})
	return binding, increment
end

local function TextFragmentView(props): React.Node
	useMountCounter(props.onMount)
	return e("TextLabel", {
		BackgroundTransparency = 1,
		Font = Enum.Font.BuilderSans,
		Size = UDim2.fromScale(1, 1),
		Text = props.text,
		TextColor3 = Color3.fromRGB(32, 32, 38),
		TextSize = 16,
		TextXAlignment = Enum.TextXAlignment.Left,
	})
end

local function ChipFragmentView(props): React.Node
	useMountCounter(props.onMount)
	return e("Frame", {
		BackgroundColor3 = props.backgroundColor3,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1, 1),
	}, {
		Corner = e("UICorner", {
			CornerRadius = UDim.new(0, 6),
		}),
		Label = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSansMedium,
			Size = UDim2.fromScale(1, 1),
			Text = props.text,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 14,
		}),
	})
end

local function BadgeFragmentView(props): React.Node
	useMountCounter(props.onMount)
	return e("Frame", {
		BackgroundColor3 = props.backgroundColor3,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1, 1),
	}, {
		Corner = e("UICorner", {
			CornerRadius = UDim.new(0.5, 0),
		}),
	})
end

local RecyclableText = ViewRecycler.createRecyclableComponent(TextFragmentView, {
	readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
})
local RecyclableChip = ViewRecycler.createRecyclableComponent(ChipFragmentView, {
	readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
})
local RecyclableBadge = ViewRecycler.createRecyclableComponent(BadgeFragmentView, {
	readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
})

local function FragmentView(props: { fragment: Fragment }): React.Node
	local context = React.useContext(StoryContext)
	assert(context ~= nil, "rich-text fragment rendered without story context")
	local fragment = props.fragment
	local content
	if fragment.kind == FragmentKind.Chip then
		local component = if context.recycleFragments then RecyclableChip else ChipFragmentView
		content = e(component, {
			backgroundColor3 = CHIP_COLORS[fragment.tone or FragmentTone.Mention],
			onMount = context.onFragmentMount,
			text = fragment.text or "",
		})
	elseif fragment.kind == FragmentKind.Badge then
		local component = if context.recycleFragments then RecyclableBadge else BadgeFragmentView
		content = e(component, {
			backgroundColor3 = BADGE_COLORS[fragment.tone or FragmentTone.Green],
			onMount = context.onFragmentMount,
		})
	else
		local component = if context.recycleFragments then RecyclableText else TextFragmentView
		content = e(component, {
			onMount = context.onFragmentMount,
			text = fragment.text or "",
		})
	end

	return e("Frame", {
		BackgroundTransparency = 1,
		Name = "RichFragment",
		Position = UDim2.fromOffset(fragment.x, fragment.y),
		Size = UDim2.fromOffset(fragment.width, fragment.height),
	}, {
		Content = content,
	})
end

local function RichMessageView(props): React.Node
	useRowInstrumentation()
	local item = SignalsReact.useSignalState(props.itemSignal)

	local children = {}
	for index, fragment in item.fragments do
		children[`Fragment{index}`] = e(FragmentView, {
			fragment = fragment,
		})
	end
	return e("Frame", {
		BackgroundColor3 = Color3.fromRGB(238, 239, 244),
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1, 1),
	}, children)
end

local RichMessage = ViewRecycler.createRecyclableView(RichMessageView)

local function immediateFragmentColor(fragment: Fragment?): Color3
	if fragment == nil or fragment.kind == FragmentKind.Text then
		return Color3.new(1, 1, 1)
	elseif fragment.kind == FragmentKind.Badge then
		return BADGE_COLORS[fragment.tone or FragmentTone.Green]
	else
		return CHIP_COLORS[fragment.tone or FragmentTone.Mention]
	end
end

local function ImmediateFragmentSlot(props): React.Node
	local fragment = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		return item.fragments[props.index]
	end)
	return e("Frame", {
		BackgroundColor3 = fragment:map(immediateFragmentColor),
		BackgroundTransparency = fragment:map(function(value)
			return if value == nil or value.kind == FragmentKind.Text then 1 else 0
		end),
		BorderSizePixel = 0,
		Name = `ImmediateSlot{props.index}`,
		Position = fragment:map(function(value)
			return if value == nil then UDim2.new() else UDim2.fromOffset(value.x, value.y)
		end),
		Size = fragment:map(function(value)
			return if value == nil then UDim2.new() else UDim2.fromOffset(value.width, value.height)
		end),
		Visible = fragment:map(function(value)
			return value ~= nil
		end),
	}, {
		Corner = e("UICorner", {
			CornerRadius = fragment:map(function(value)
				return if value ~= nil and value.kind == FragmentKind.Badge then UDim.new(0.5, 0) else UDim.new(0, 6)
			end),
		}),
		Label = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSans,
			Size = UDim2.fromScale(1, 1),
			Text = fragment:map(function(value)
				return if value == nil then "" else value.text or ""
			end),
			TextColor3 = fragment:map(function(value)
				return if value ~= nil and value.kind == FragmentKind.Text
					then Color3.fromRGB(32, 32, 38)
					else Color3.new(1, 1, 1)
			end),
			TextSize = fragment:map(function(value)
				return if value ~= nil and value.kind == FragmentKind.Text then 16 else 14
			end),
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

local function ImmediateRichMessageView(props): React.Node
	useRowInstrumentation()
	local children = {}
	for index = 1, MAX_IMMEDIATE_SLOTS do
		children[`Slot{index}`] = e(ImmediateFragmentSlot, {
			index = index,
			itemSignal = props.itemSignal,
		})
	end
	return e("Frame", {
		BackgroundColor3 = Color3.fromRGB(238, 239, 244),
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1, 1),
	}, children)
end

local ImmediateRichMessage = ViewRecycler.createRecyclableView(ImmediateRichMessageView, {
	readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
})
local LINE_HEIGHT = 24
local AUTHORS = { "@Alice", "@Jordan", "@Maya", "@Theo", "@RobloxDev" }
local TOPICS = { "#avatar-editor", "#app-chat", "#performance", "#release-review" }
local PHRASES = {
	"the latest build now keeps composed fragments mounted while their message assignments change. ",
	"I checked the scrolling trace and the frame budget stayed stable through the entire conversation. ",
	"could you review the updated layout contract before the next release candidate? ",
	"the long paragraph wraps at word boundaries while mentions and status chips remain atomic. ",
	"we reproduced the issue on mobile and confirmed the same fix behaves correctly on desktop. ",
}
local TEXT_WIDTH_CACHE: { [string]: number } = {}

local function textWidth(text: string, textSize: number): number
	local key = `{textSize}:{text}`
	local cached = TEXT_WIDTH_CACHE[key]
	if cached ~= nil then
		return cached
	end
	local width =
		math.ceil(TextService:GetTextSize(text, textSize, Enum.Font.BuilderSans, Vector2.new(10000, LINE_HEIGHT)).X)
	TEXT_WIDTH_CACHE[key] = width
	return width
end

local function makeItem(
	index: number,
	startOffset: number,
	contentWidth: number,
	complexity: number,
	random: Random
): Item
	local fragments: { Fragment } = {}
	local x = 12
	local y = 10

	local function append(kind: FragmentKind, text: string?, tone: FragmentTone?, width: number, height: number)
		if x > 12 and x + width > contentWidth + 12 then
			x = 12
			y += LINE_HEIGHT
		end
		table.insert(fragments, {
			kind = kind,
			x = x,
			y = y + (LINE_HEIGHT - height) // 2,
			width = width,
			height = height,
			text = text,
			tone = tone,
		})
		x += width
	end

	local function appendText(text: string)
		local run = ""
		for word in string.gmatch(text, "%S+%s*") do
			local candidate = run .. word
			if run ~= "" and x + textWidth(candidate, 16) > contentWidth + 12 then
				append(FragmentKind.Text, run, nil, textWidth(run, 16), LINE_HEIGHT)
				run = word
			else
				run = candidate
			end
		end
		if run ~= "" then
			append(FragmentKind.Text, run, nil, textWidth(run, 16), LINE_HEIGHT)
		end
	end

	local function appendChip(text: string, tone: FragmentTone)
		append(FragmentKind.Chip, text, tone, textWidth(text, 14) + 14, 22)
		x += 4
	end

	appendChip(AUTHORS[random:NextInteger(1, #AUTHORS)], FragmentTone.Mention)
	appendText(" shared an update in ")
	appendChip(TOPICS[random:NextInteger(1, #TOPICS)], FragmentTone.Code)
	appendText(" ")
	append(FragmentKind.Badge, nil, if index % 3 == 0 then FragmentTone.Yellow else FragmentTone.Blue, 18, 18)
	x += 5
	for _ = 1, random:NextInteger(1, complexity) do
		appendText(PHRASES[random:NextInteger(1, #PHRASES)])
	end
	appendChip(
		if index % 4 == 0 then "P1" else "resolved",
		if index % 4 == 0 then FragmentTone.Priority else FragmentTone.Status
	)

	return {
		id = index,
		height = y + LINE_HEIGHT + 10,
		startOffset = startOffset,
		fragments = fragments,
	}
end

local function Component(storyProps): React.Node
	local controls = StoryControls.merge(DEFAULT_CONTROLS, storyProps.controls)
	local captureMode = controls.captureMode == true
	local itemCount = StoryControls.positiveInteger(controls.itemCount, DEFAULT_CONTROLS.itemCount)
	local contentWidth =
		math.min(520, StoryControls.positiveInteger(controls.contentWidth, DEFAULT_CONTROLS.contentWidth))
	local fragmentSlotCap = math.min(
		MAX_IMMEDIATE_SLOTS,
		StoryControls.positiveInteger(controls.fragmentSlotCap, DEFAULT_CONTROLS.fragmentSlotCap)
	)
	local messageGap = StoryControls.nonNegativeNumber(controls.messageGap, DEFAULT_CONTROLS.messageGap)
	local messageComplexity =
		math.min(4, StoryControls.positiveInteger(controls.messageComplexity, DEFAULT_CONTROLS.messageComplexity))
	local overscan = StoryControls.nonNegativeNumber(controls.overscan, DEFAULT_CONTROLS.overscan)
	local randomSeed = math.round(StoryControls.nonNegativeNumber(controls.randomSeed, DEFAULT_CONTROLS.randomSeed))
	local strategy = if controls.strategy == "structural" or controls.strategy == "cappedImmediate"
		then controls.strategy
		else "hybrid"
	local jumpTarget =
		math.min(itemCount, StoryControls.positiveInteger(controls.jumpTarget, DEFAULT_CONTROLS.jumpTarget))
	local items = React.useMemo(function(): { Item }
		local result: { Item } = table.create(itemCount)
		local nextOffset = 0
		local random = Random.new(randomSeed)
		for index = 1, itemCount do
			local item = makeItem(index, nextOffset, contentWidth, messageComplexity, random)
			result[index] = item
			nextOffset += item.height + messageGap
		end
		return result
	end, { contentWidth, itemCount, messageComplexity, messageGap, randomSeed })
	local data = React.useMemo(function()
		return {
			items = items,
			getItemKey = function(item: Item)
				return tostring(item.id)
			end,
		}
	end, { items })
	local immediateEligibleCount = 0
	for _, item in items do
		if #item.fragments <= fragmentSlotCap then
			immediateEligibleCount += 1
		end
	end
	local fallbackCount = if strategy == "structural" then itemCount else itemCount - immediateEligibleCount
	local getItemType = React.useCallback(function(item: Item)
		if strategy == "structural" or #item.fragments > fragmentSlotCap then
			return RichMessage
		end
		return ImmediateRichMessage
	end, { fragmentSlotCap, strategy })
	local layout = useManagedLayout(React, function()
		return ViewRecycler.Layout.create({
			getItemLayout = function(index)
				local item = items[index]
				if item == nil then
					local lastItem = items[#items]
					return {
						startOffset = lastItem.startOffset
							+ lastItem.height
							+ (index - #items - 1) * (lastItem.height + messageGap),
						length = lastItem.height,
					}
				end
				return {
					startOffset = item.startOffset,
					length = item.height,
				}
			end,
		})
	end, { items, messageGap })
	local fragmentMounts, onFragmentMount = useDeferredCounter()
	local rowMounts, onRowMount = useDeferredCounter()
	local rowRenders, onRowRender = useDeferredCounter()
	local visiblePaths, setVisiblePaths = React.useBinding("visible rows: pending")
	local listRef = React.useRef(nil :: ViewRecycler.VirtualListHandle?)
	local captureRunRef = React.useRef(0)
	local context = React.useMemo(function(): StoryContextValue
		return {
			onFragmentMount = onFragmentMount,
			onRowMount = onRowMount,
			onRowRender = onRowRender,
			recycleFragments = strategy == "hybrid",
		}
	end, { onFragmentMount, onRowMount, onRowRender, strategy })
	local onVisibleRangeChanged = React.useCallback(function(range)
		local immediateCount = 0
		local structuralCount = 0
		for index = range.firstIndex, range.lastIndex do
			local item = items[index]
			if item ~= nil and strategy ~= "structural" and #item.fragments <= fragmentSlotCap then
				immediateCount += 1
			else
				structuralCount += 1
			end
		end
		setVisiblePaths(`visible rows: {immediateCount} ReadyOnAssignment / {structuralCount} structural`)
	end, { fragmentSlotCap, items, setVisiblePaths, strategy })

	local function jump(index: number)
		local handle = listRef.current
		if handle ~= nil then
			handle.scrollToIndex(index, { alignment = ViewRecycler.ScrollAlignment.Center })
		end
	end

	local function resetCapture()
		captureRunRef.current += 1
		jump(1)
	end

	local function playCapture()
		captureRunRef.current += 1
		local run = captureRunRef.current
		task.spawn(function()
			for _ = 1, 2 do
				if captureRunRef.current ~= run then
					return
				end
				jump(jumpTarget)
				task.wait(0.9)
				if captureRunRef.current ~= run then
					return
				end
				jump(1)
				task.wait(0.9)
			end
		end)
	end

	return e(StoryContext.Provider, {
		value = context,
	}, {
		Content = e("Frame", {
			BackgroundColor3 = Color3.fromRGB(22, 22, 28),
			Size = UDim2.fromOffset(contentWidth + 24, 560),
		}, {
			RowMountStatus = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.BuilderSans,
				Size = UDim2.new(1, 0, 0, 22),
				Text = rowMounts:map(function(value)
					return `{strategy} · row mounts: {value}`
				end),
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 15,
			}),
			RowRenderStatus = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.BuilderSans,
				Position = UDim2.fromOffset(0, 22),
				Size = UDim2.new(1, 0, 0, 22),
				Text = rowRenders:map(function(value)
					return `row renders: {value}`
				end),
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 15,
			}),
			FragmentStatus = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.BuilderSans,
				Position = UDim2.fromOffset(0, 44),
				Size = UDim2.new(1, 0, 0, 22),
				Text = fragmentMounts:map(function(value)
					return `rich-fragment mounts: {value} · eligible: {immediateEligibleCount} · fallback: {fallbackCount}`
				end),
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 15,
			}),
			VisibleStatus = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.BuilderSans,
				Position = UDim2.fromOffset(0, 66),
				Size = UDim2.new(1, 0, 0, 22),
				Text = visiblePaths,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = 15,
			}),
			JumpFar = e("TextButton", {
				Position = UDim2.fromOffset(4, 92),
				Size = UDim2.fromOffset(120, 30),
				Text = if captureMode then "Play demo" else `Jump to #{jumpTarget}`,
				[React.Event.Activated] = if captureMode
					then playCapture
					else function()
						jump(jumpTarget)
					end,
			}),
			JumpBack = e("TextButton", {
				Position = UDim2.fromOffset(130, 92),
				Size = UDim2.fromOffset(120, 30),
				Text = if captureMode then "Reset" else "Jump to #1",
				[React.Event.Activated] = if captureMode
					then resetCapture
					else function()
						jump(1)
					end,
			}),
			Hint = e("TextLabel", {
				BackgroundTransparency = 1,
				Font = Enum.Font.BuilderSans,
				Position = UDim2.fromOffset(258, 92),
				Size = UDim2.new(1, -262, 0, 30),
				Text = if captureMode
					then "Two repeatable long-distance cycles · mount totals should plateau"
					else "Fragments recycle independently · mounts should plateau",
				TextColor3 = Color3.fromRGB(190, 190, 200),
				TextSize = 13,
			}),
			ListContainer = e("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(0, 128),
				Size = UDim2.new(1, 0, 1, -128),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = data,
					axis = ViewRecycler.Axis.Y,
					itemType = getItemType,
					layout = layout,
					listRef = listRef,
					onVisibleRangeChanged = onVisibleRangeChanged,
					overscan = overscan,
				}),
			}),
		}),
	})
end

local Story = StoryShell.createStory({
	title = "Rich Text Recycling",
	instructions = "Warm the list, jump between row 1 and the selected target repeatedly, and watch fragment component mount totals.",
	itemUpdate = "Mixed — eligible rows can update fixed slots with ReadyOnAssignment while adaptive rows use structural ReadyOnAssignment.",
	acceptanceCriteria = "Coalesced text and rich spans remain correct, overflow never truncates, and mount totals stay bounded while jumping.",
	size = UDim2.fromOffset(580, 700),
}, Component)

return {
	name = "Rich Text Recycling",
	summary = "Compares adaptive and binding-driven composed messages with safe overflow fallback.",
	roact = React,
	story = Story,
	controls = CONTROLS,
}
