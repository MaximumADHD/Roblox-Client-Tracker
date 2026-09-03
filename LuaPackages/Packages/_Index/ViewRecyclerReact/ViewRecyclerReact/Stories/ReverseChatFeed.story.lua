local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "ReverseChatFeed story must be mounted under view-recycler-react")
local Packages = Root.Parent

local React = require(Packages.React)
local SignalsReact = require(Packages.SignalsReact)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local useManagedLayout = require(script.Parent.Harness.useManagedLayout)

local e = React.createElement

local DEFAULT_VALUES = table.freeze({
	initialMessageCount = 40,
	prependBatchSize = 10,
	startReachedThreshold = 40,
	estimatedItemLength = 52,
	spacing = 4,
	streamInterval = 0.08,
	overscan = 2,
})

local CONTROLS = {
	initialMessageCount = StoryControls.options(DEFAULT_VALUES.initialMessageCount, { 10, 20, 80, 160 }),
	prependBatchSize = StoryControls.options(DEFAULT_VALUES.prependBatchSize, { 1, 5, 20, 50 }),
	startReachedThreshold = DEFAULT_VALUES.startReachedThreshold,
	estimatedItemLength = DEFAULT_VALUES.estimatedItemLength,
	spacing = DEFAULT_VALUES.spacing,
	streamInterval = DEFAULT_VALUES.streamInterval,
	overscan = StoryControls.OverscanOptions,
}

type Message = {
	gap: number,
	id: number,
	text: string,
	textBinding: any?,
}

local function MessageView(props)
	local message = SignalsReact.useSignalState(props.itemSignal)
	return e("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 0),
	}, {
		Content = e("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = if message.id % 2 == 0
				then Color3.fromRGB(225, 236, 252)
				else Color3.fromRGB(238, 238, 242),
			Font = Enum.Font.BuilderSans,
			Name = "MessageText",
			Position = UDim2.fromOffset(10, 0),
			-- Work around https://devforum.roblox.com/t/3483894: wrapped automatic-size text can clip in scrolling frames.
			RichText = message.textBinding ~= nil,
			Size = UDim2.new(1, -20, 0, 0),
			Text = message.textBinding or message.text,
			TextColor3 = Color3.fromRGB(25, 25, 30),
			TextSize = 18,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Padding = e("UIPadding", {
			PaddingBottom = UDim.new(0, 10 + message.gap),
			PaddingTop = UDim.new(0, 10),
		}),
	})
end

local MessageRow = ViewRecycler.createRecyclableView(MessageView)

local function createData(initialMessageCount: number, gap: number)
	local initial: { Message } = {}
	for id = 101, 100 + initialMessageCount do
		table.insert(initial, { gap = gap, id = id, text = `  Message #{id}` })
	end
	return ViewRecycler.DataSource.sequence(initial, function(message: Message)
		return tostring(message.id)
	end)
end

local function resolveControls(controls)
	controls = StoryControls.merge(DEFAULT_VALUES, controls)
	return {
		initialMessageCount = StoryControls.positiveInteger(
			controls.initialMessageCount,
			DEFAULT_VALUES.initialMessageCount
		),
		prependBatchSize = StoryControls.positiveInteger(controls.prependBatchSize, DEFAULT_VALUES.prependBatchSize),
		startReachedThreshold = StoryControls.nonNegativeNumber(
			controls.startReachedThreshold,
			DEFAULT_VALUES.startReachedThreshold
		),
		estimatedItemLength = StoryControls.positiveInteger(
			controls.estimatedItemLength,
			DEFAULT_VALUES.estimatedItemLength
		),
		spacing = StoryControls.nonNegativeNumber(controls.spacing, DEFAULT_VALUES.spacing),
		streamInterval = StoryControls.nonNegativeNumber(controls.streamInterval, DEFAULT_VALUES.streamInterval),
		overscan = StoryControls.nonNegativeNumber(controls.overscan, DEFAULT_VALUES.overscan),
	}
end

local STREAMED_RESPONSES = {
	"I can help with that. I’m checking the recycler state now, then I’ll compare the measured row geometry against the current viewport before suggesting a change.",
	"The trace looks healthy so far. Each token updates the mounted label directly, while measurement corrections keep the growing response anchored at the end.",
	"Here is the concise result: use bindings for the live text property and reserve React updates for adding or removing complete message rows.",
}

local function streamResponse(response: string, interval: number, shouldContinue: () -> boolean, setText)
	local streamedText = ""
	for word in string.gmatch(response, "%S+") do
		if not shouldContinue() then
			return false
		end
		streamedText ..= if streamedText == "" then word else ` {word}`
		setText(`  {streamedText} ▍`)
		if interval > 0 then
			task.wait(interval)
		end
	end
	if not shouldContinue() then
		return false
	end
	setText(`  {streamedText}`)
	return true
end

local function Scenario(props)
	local config = props.config
	local data = React.useState(function()
		return createData(config.initialMessageCount, config.spacing)
	end)
	local nextOlderId = React.useRef(100)
	local nextNewerId = React.useRef(101 + config.initialMessageCount)
	local listRef = React.useRef(nil :: ViewRecycler.VirtualListHandle?)
	local batches, setBatches = React.useState(0)
	local messageCount, setMessageCount = React.useState(config.initialMessageCount)
	local offsetRef = React.useRef(0)
	local contentLengthRef = React.useRef(0)
	local streamGenerationRef = React.useRef(0)
	local streamingRef = React.useRef(false)
	local followingEnd, setFollowingEnd = React.useBinding(true)
	local streamButtonText, setStreamButtonText = React.useBinding("Stream LLM response")
	local viewportLength = 494
	local updateFollowingEnd = React.useCallback(function()
		setFollowingEnd(offsetRef.current >= math.max(0, contentLengthRef.current - viewportLength) - 2)
	end, { setFollowingEnd })
	local prependOlder = React.useCallback(function()
		data.transaction(function()
			for _ = 1, config.prependBatchSize do
				local id = nextOlderId.current
				data.prepend({ gap = config.spacing, id = id, text = `  Older message #{id}` })
				nextOlderId.current -= 1
			end
		end)
		setBatches(function(value)
			return value + 1
		end)
		setMessageCount(function(value)
			return value + config.prependBatchSize
		end)
	end, { config.prependBatchSize, config.spacing, data, nextOlderId })
	local streamMessage = React.useCallback(function()
		if streamingRef.current then
			return
		end
		streamingRef.current = true
		streamGenerationRef.current += 1
		local generation = streamGenerationRef.current
		local id = nextNewerId.current
		nextNewerId.current += 1
		local textBinding, setText = React.createBinding("▍")
		data.append({
			gap = config.spacing,
			id = id,
			text = "",
			textBinding = textBinding,
		})
		setMessageCount(function(value)
			return value + 1
		end)
		setStreamButtonText("Streaming…")

		task.spawn(function()
			local response = STREAMED_RESPONSES[(id - 1) % #STREAMED_RESPONSES + 1]
			local completed = streamResponse(response, config.streamInterval, function()
				return streamGenerationRef.current == generation
			end, setText)
			if completed then
				streamingRef.current = false
				setStreamButtonText("Stream LLM response")
			end
		end)
	end, { config.spacing, config.streamInterval, data, nextNewerId, setStreamButtonText })
	local goToLatest = React.useCallback(function()
		local handle = listRef.current
		if handle ~= nil then
			handle.scrollToIndex(data.getItemCount(), { alignment = ViewRecycler.ScrollAlignment.End })
		end
	end, { data })
	React.useEffect(function()
		return function()
			streamGenerationRef.current += 1
		end
	end, {})
	local listProps: any = table.clone(ViewRecycler.ChatPreset.create({
		startReachedThreshold = config.startReachedThreshold,
	}))
	listProps.data = data
	listProps.layout = props.layout
	listProps.axis = ViewRecycler.Axis.Y
	listProps.itemType = MessageRow
	listProps.listRef = listRef
	listProps.onStartReached = prependOlder
	listProps.onContentLengthChanged = function(contentLength)
		contentLengthRef.current = contentLength
		updateFollowingEnd()
	end
	listProps.onScrollOffsetChanged = function(offset)
		offsetRef.current = offset
		updateFollowingEnd()
	end
	listProps.overscan = config.overscan

	return e("Frame", {
		BackgroundColor3 = Color3.fromRGB(22, 22, 28),
		Size = UDim2.fromOffset(420, 560),
	}, {
		Status = e("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.BuilderSans,
			Text = followingEnd:map(function(isFollowingEnd)
				return `Messages: {messageCount}   Older batches: {batches}   {if isFollowingEnd
					then "Following end"
					else "Reading history"}`
			end),
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = 15,
			Size = UDim2.new(1, 0, 0, 30),
		}),
		Load = e("TextButton", {
			Position = UDim2.fromOffset(4, 32),
			Size = UDim2.fromOffset(130, 30),
			Text = "Load earlier",
			[React.Event.Activated] = prependOlder,
		}),
		Stream = e("TextButton", {
			Font = Enum.Font.BuilderSans,
			Position = UDim2.fromOffset(140, 32),
			Size = UDim2.fromOffset(126, 30),
			Text = streamButtonText,
			TextColor3 = Color3.fromRGB(25, 25, 30),
			TextSize = 14,
			[React.Event.Activated] = streamMessage,
		}),
		Latest = e("TextButton", {
			Position = UDim2.fromOffset(272, 32),
			Size = UDim2.fromOffset(138, 30),
			Text = "Go to latest",
			Active = followingEnd:map(function(isFollowingEnd)
				return not isFollowingEnd
			end),
			AutoButtonColor = followingEnd:map(function(isFollowingEnd)
				return not isFollowingEnd
			end),
			[React.Event.Activated] = goToLatest,
		}),
		ListContainer = e("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(0, 66),
			Size = UDim2.new(1, 0, 1, -66),
		}, {
			List = e(ViewRecycler.VirtualList, listProps),
		}),
	})
end

local function Component(props)
	local config = resolveControls(props.controls)
	local layout = useManagedLayout(React, function()
		return ViewRecycler.Layout.measured({
			estimatedItemLength = config.estimatedItemLength,
		})
	end, { config.estimatedItemLength, config.spacing })

	return e(Scenario, {
		config = config,
		key = `{config.initialMessageCount}:{config.prependBatchSize}:{config.spacing}`,
		layout = layout,
	})
end

local Story = StoryShell.createStory({
	title = "Reverse Chat Feed",
	instructions = "Stream an LLM-style response and watch its measured row grow token by token, then load earlier messages to verify anchored prepends.",
	itemUpdate = "Mixed — message structure is render-driven, while live response text streams through a binding.",
	acceptanceCriteria = "Streaming text wraps without React rerenders, measured geometry follows the growing response, and prepending history preserves the visible anchor.",
	size = UDim2.fromOffset(560, 700),
}, Component)

return {
	name = "Reverse Chat Feed",
	summary = "Demonstrates binding-driven LLM text streaming in a measured, end-anchored chat feed.",
	roact = React,
	story = Story,
	controls = CONTROLS,
	_streamResponseForTest = streamResponse,
}
