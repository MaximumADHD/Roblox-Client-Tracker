--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)
local FONT = Constants.Font.Mono

local WINDOW_DURATION = 30
local LABEL_WIDTH = 130
local QUEUE_HEIGHT = 24
local TIMELINE_HEIGHT = 28

local CACHE_GRID_MARGIN = 4
local CACHE_COLUMNS = 12
local CACHE_ROWS = 4
local CACHE_SQUARE_SIZE = 8
local CACHE_SQUARE_PITCH = 10
local CACHE_GRID_WIDTH = CACHE_COLUMNS * CACHE_SQUARE_PITCH
-- Must equal Data's CACHE_MAX_ITEMS (the reducer's FIFO cap).
local CACHE_MAX_ITEMS = CACHE_COLUMNS * CACHE_ROWS
local CACHE_LABEL_HEIGHT = 12
local CACHE_DECAY_DURATION = 0.6

-- Cache grid sits in a fixed left gutter, so the bands start past it.
local CONTENT_LEFT = LABEL_WIDTH + CACHE_GRID_MARGIN + CACHE_GRID_WIDTH + CACHE_GRID_MARGIN

local OP_SIZE = 16
local OP_MARGIN = 3
-- Cap on op squares per row; the queue frame clips the rest.
local MAX_VISIBLE_OPS = 30
-- Width of the "N/M ops Xs" readout that precedes the squares.
local QUEUE_INFO_WIDTH = 120
local QUEUE_BATCH_PAD = 4
-- The stroke straddles the border; inset keeps it off the timeline frame below.
local QUEUE_BATCH_OUTLINE_THICKNESS = 1.5
local QUEUE_BATCH_OUTLINE_TRANSPARENCY = 0.15
local QUEUE_OUTLINE_RIGHT_MARGIN = 8
-- Glide window so the strip slides between states instead of popping.
local QUEUE_ANIM_DURATION = 0.25
-- Retry-blink angular frequency (~0.9s period).
local QUEUE_RETRY_BLINK_FREQ = 7
-- Retry squares oscillate transparency between 0 (opaque) and this ceiling.
local QUEUE_RETRY_MAX_TRANSPARENCY = 0.75

local COLORS = {
	inflight = Color3.fromRGB(255, 165, 0),
	retrying = Color3.fromRGB(255, 165, 0),
	success = Color3.fromRGB(66, 135, 245),
	failure = Color3.fromRGB(220, 50, 50),
	exhausted = Color3.fromRGB(220, 50, 50),
	queueOp = Color3.fromRGB(0, 149, 235),
	queueRetry = Color3.fromRGB(239, 68, 68),
	batchOutline = Color3.fromRGB(255, 171, 37),
	labelText = Color3.fromRGB(200, 200, 200),
	queueText = Color3.fromRGB(160, 160, 160),
	-- Cold is teal so a resident-but-cold item stays distinct from empty gray.
	cacheHot = Color3.fromRGB(100, 255, 180),
	cacheCold = Color3.fromRGB(60, 120, 95),
	cacheEmpty = Constants.Color.BaseGray,
	idleText = Color3.fromRGB(70, 70, 70),
	timelineTick = Color3.fromRGB(50, 50, 50),
	timelineBackground = Color3.fromRGB(20, 20, 20),
	rowBackground = Color3.fromRGB(28, 28, 28),
}

local function lerp(a, b, t)
	return a + (b - a) * t
end

-- smoothstep ease-in-out
local function smooth(t)
	return t * t * (3 - 2 * t)
end

local function renderTypeLabel(orchestratorType)
	return Roact.createElement("TextLabel", {
		Size = UDim2.new(0, LABEL_WIDTH, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundTransparency = 1,
		Text = orchestratorType,
		TextColor3 = COLORS.labelText,
		TextSize = 12,
		Font = FONT,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
	})
end

-- Max batch size observed on BatchCreated, or nil to hide the outline.
local function resolveMaxSize(props)
	local observedMax = props.observedMaxBatchSize
	if observedMax and observedMax > 0 then
		return observedMax
	end
	return nil
end

-- Row-level (not inside the queue frame) so UIListLayout won't flow it inline.
local function renderBatchOutline(props, maxSize)
	-- Clamp slots to min(maxSize, op cap, slots that fit the panel); "»" marks truncation.
	local outlineLeft = CONTENT_LEFT + QUEUE_INFO_WIDTH - QUEUE_BATCH_PAD
	local slotCap = math.min(maxSize, MAX_VISIBLE_OPS)
	local panelWidth = props.panelWidth
	if panelWidth and panelWidth > 0 then
		local fitWidth = panelWidth - outlineLeft - QUEUE_OUTLINE_RIGHT_MARGIN - QUEUE_BATCH_PAD * 2 + OP_MARGIN
		local slotsThatFit = math.floor(fitWidth / (OP_SIZE + OP_MARGIN))
		slotCap = math.min(slotCap, slotsThatFit)
	end
	local visualSlots = math.max(1, slotCap)
	local truncated = visualSlots < maxSize

	local outlineWidth = visualSlots * OP_SIZE + math.max(0, visualSlots - 1) * OP_MARGIN + QUEUE_BATCH_PAD * 2
	local outlineHeight = math.min(OP_SIZE + QUEUE_BATCH_PAD * 2, QUEUE_HEIGHT - QUEUE_BATCH_OUTLINE_THICKNESS * 2)
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, outlineWidth, 0, outlineHeight),
		Position = UDim2.new(0, outlineLeft, 0, (QUEUE_HEIGHT - outlineHeight) / 2),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, {
		Corner = Roact.createElement("UICorner", { CornerRadius = UDim.new(0, 4) }),
		Stroke = Roact.createElement("UIStroke", {
			Color = COLORS.batchOutline,
			Thickness = QUEUE_BATCH_OUTLINE_THICKNESS,
			Transparency = QUEUE_BATCH_OUTLINE_TRANSPARENCY,
		}),
		Overflow = if truncated
			then Roact.createElement("TextLabel", {
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -2, 0.5, 0),
				Size = UDim2.new(0, 10, 1, 0),
				BackgroundTransparency = 1,
				Text = "»",
				TextColor3 = COLORS.batchOutline,
				TextSize = 12,
				Font = FONT,
				TextXAlignment = Enum.TextXAlignment.Right,
				TextYAlignment = Enum.TextYAlignment.Center,
			})
			else nil,
	})
end

local function renderIdleQueue()
	return Roact.createElement("TextLabel", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = "idle",
		TextColor3 = COLORS.idleText,
		TextSize = 10,
		Font = FONT,
		TextXAlignment = Enum.TextXAlignment.Left,
	})
end

local function renderCacheChildren(cache, now)
	local cacheChildren = {}
	local items = if cache then cache.items else {}
	local itemCount = #items

	cacheChildren.Count = Roact.createElement("TextLabel", {
		Size = UDim2.new(1, 0, 0, CACHE_LABEL_HEIGHT),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundTransparency = 1,
		Text = string.format("cache %d", itemCount),
		TextColor3 = COLORS.queueText,
		TextSize = 10,
		Font = FONT,
		TextXAlignment = Enum.TextXAlignment.Left,
	})

	for i, item in ipairs(items) do
		if i > CACHE_MAX_ITEMS then
			break
		end
		local col = (i - 1) % CACHE_COLUMNS
		local row = math.floor((i - 1) / CACHE_COLUMNS)
		local t = 0
		if item.lastHitTime then
			t = math.clamp(1 - (now - item.lastHitTime) / CACHE_DECAY_DURATION, 0, 1)
		end
		cacheChildren["c" .. i] = Roact.createElement("Frame", {
			Position = UDim2.new(0, col * CACHE_SQUARE_PITCH, 0, CACHE_LABEL_HEIGHT + row * CACHE_SQUARE_PITCH),
			Size = UDim2.new(0, CACHE_SQUARE_SIZE, 0, CACHE_SQUARE_SIZE),
			BackgroundColor3 = COLORS.cacheCold:Lerp(COLORS.cacheHot, t),
			BorderSizePixel = 0,
		}, {
			Corner = Roact.createElement("UICorner", { CornerRadius = UDim.new(0, 2) }),
		})
	end

	for i = itemCount + 1, CACHE_MAX_ITEMS do
		local col = (i - 1) % CACHE_COLUMNS
		local row = math.floor((i - 1) / CACHE_COLUMNS)
		cacheChildren["e" .. i] = Roact.createElement("Frame", {
			Position = UDim2.new(0, col * CACHE_SQUARE_PITCH, 0, CACHE_LABEL_HEIGHT + row * CACHE_SQUARE_PITCH),
			Size = UDim2.new(0, CACHE_SQUARE_SIZE, 0, CACHE_SQUARE_SIZE),
			BackgroundColor3 = COLORS.cacheEmpty,
			BorderSizePixel = 0,
		}, {
			Corner = Roact.createElement("UICorner", { CornerRadius = UDim.new(0, 2) }),
		})
	end

	return cacheChildren
end

local function renderTimelineChildren(batches, now)
	local windowStart = now - WINDOW_DURATION
	local timelineChildren = {}

	for id, batch in pairs(batches) do
		local attempts = batch.attempts or {}
		local lastIndex = #attempts
		for i, att in ipairs(attempts) do
			local endTime = att.finish or now
			-- Clamp both edges so an off-left start still shows (clipped) and an
			-- in-flight span never overshoots the right.
			if endTime >= windowStart then
				local startFrac = math.max(0, (att.start - windowStart) / WINDOW_DURATION)
				local endFrac = math.min(1, (endTime - windowStart) / WINDOW_DURATION)
				if endFrac > startFrac then
					-- Final attempt carries the batch state; earlier attempts were retried (orange).
					local color = if i == lastIndex then (COLORS[batch.state] or COLORS.inflight) else COLORS.retrying

					timelineChildren["batch_" .. id .. "_" .. i] = Roact.createElement("Frame", {
						Position = UDim2.new(startFrac, 0, 0, 2),
						Size = UDim2.new(endFrac - startFrac, 0, 1, -4),
						BackgroundColor3 = color,
						BorderSizePixel = 0,
					}, {
						Corner = Roact.createElement("UICorner", { CornerRadius = UDim.new(0, 4) }),
					})
				end
			end
		end
	end

	for i = 0, 2 do
		local frac = 1 - (i * 10) / WINDOW_DURATION
		timelineChildren["tick_" .. i] = Roact.createElement("Frame", {
			Position = UDim2.new(frac, 0, 0, 0),
			Size = UDim2.new(0, 1, 1, 0),
			BackgroundColor3 = COLORS.timelineTick,
			BorderSizePixel = 0,
		})
	end

	return timelineChildren
end

local OrchestratorRow = Roact.Component:extend("OrchestratorRow")

-- Per-op glide state ({ [opKey] = {fromX, toX, start} }). A plain field, not
-- state: written during render, never re-renders (Heartbeat drives repaint).
function OrchestratorRow:init()
	self.opAnim = {}
end

-- A method (not a local fn) because it reads/writes self.opAnim across renders.
function OrchestratorRow:renderQueueChildren(queue, maxSize, now)
	local queueChildren = {}

	local allOps = {}
	for _, opId in ipairs(queue.retryOps or {}) do
		table.insert(allOps, { id = opId, isRetry = true })
	end
	for _, opId in ipairs(queue.ops or {}) do
		table.insert(allOps, { id = opId, isRetry = false })
	end

	local elapsed = now - queue.createdTime
	local opCount = #allOps

	queueChildren.Info = Roact.createElement("TextLabel", {
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(0, QUEUE_INFO_WIDTH, 1, 0),
		BackgroundTransparency = 1,
		Text = if maxSize
			then string.format("%d/%d ops  %.1fs", opCount, maxSize, elapsed)
			else string.format("%d ops  %.1fs", opCount, elapsed),
		TextColor3 = COLORS.queueText,
		TextSize = 10,
		Font = FONT,
		TextXAlignment = Enum.TextXAlignment.Left,
	})

	-- Positioned from `now` (not UIListLayout) so squares glide; opAnim eases each to its slot.
	local pitch = OP_SIZE + OP_MARGIN
	local seen = {}
	for i, op in ipairs(allOps) do
		if i > MAX_VISIBLE_OPS then
			break
		end

		-- Disambiguate duplicate/missing messages so two ops never share a key.
		local opKey = op.id
		if seen[opKey] then
			opKey = opKey .. "#" .. i
		end
		seen[opKey] = true

		local toX = QUEUE_INFO_WIDTH + (i - 1) * pitch
		local a = self.opAnim[opKey]
		if not a then
			-- Retries slide in from the left; plain enqueues appear at the tail slot.
			local fromX = if op.isRetry then (toX - pitch) else toX
			a = { fromX = fromX, toX = toX, start = now }
			self.opAnim[opKey] = a
		elseif a.toX ~= toX then
			-- Slot moved (drain shifted left): re-baseline from current X so chained drains stay smooth.
			a.fromX = lerp(a.fromX, a.toX, smooth(math.clamp((now - a.start) / QUEUE_ANIM_DURATION, 0, 1)))
			a.toX = toX
			a.start = now
		end

		local x = lerp(a.fromX, a.toX, smooth(math.clamp((now - a.start) / QUEUE_ANIM_DURATION, 0, 1)))

		local color = COLORS.queueOp
		local transparency = 0
		if op.isRetry then
			color = COLORS.queueRetry
			transparency = QUEUE_RETRY_MAX_TRANSPARENCY * (0.5 + 0.5 * math.sin(now * QUEUE_RETRY_BLINK_FREQ))
		end

		queueChildren["op_" .. opKey] = Roact.createElement("Frame", {
			Position = UDim2.new(0, x, 0.5, -OP_SIZE / 2),
			Size = UDim2.new(0, OP_SIZE, 0, OP_SIZE),
			BackgroundColor3 = color,
			BackgroundTransparency = transparency,
			BorderSizePixel = 0,
		}, {
			Corner = Roact.createElement("UICorner", { CornerRadius = UDim.new(0, 3) }),
		})
	end

	-- Drop anim state for drained ops.
	for opKey in pairs(self.opAnim) do
		if not seen[opKey] then
			self.opAnim[opKey] = nil
		end
	end

	return queueChildren
end

function OrchestratorRow:render()
	local orchestratorType = self.props.orchestratorType
	local batches = self.props.batches
	local queue = self.props.queue
	local now = self.props.now
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder

	local children = {}

	children.Label = renderTypeLabel(orchestratorType)

	children.CacheGrid = Roact.createElement("Frame", {
		Size = UDim2.new(0, CACHE_GRID_WIDTH, 1, 0),
		Position = UDim2.new(0, LABEL_WIDTH + CACHE_GRID_MARGIN, 0, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
	}, renderCacheChildren(self.props.cache, now))

	local maxSize = resolveMaxSize(self.props)
	if maxSize then
		children.BatchOutline = renderBatchOutline(self.props, maxSize)
	end

	local queueChildren
	if queue then
		queueChildren = self:renderQueueChildren(queue, maxSize, now)
	else
		-- Reset anim state when the queue drains.
		self.opAnim = {}
		queueChildren = { Idle = renderIdleQueue() }
	end
	children.Queue = Roact.createElement("Frame", {
		Size = UDim2.new(1, -CONTENT_LEFT, 0, QUEUE_HEIGHT),
		Position = UDim2.new(0, CONTENT_LEFT, 0, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
	}, queueChildren)

	children.Timeline = Roact.createElement("Frame", {
		Size = UDim2.new(1, -CONTENT_LEFT, 0, TIMELINE_HEIGHT),
		Position = UDim2.new(0, CONTENT_LEFT, 0, QUEUE_HEIGHT),
		BackgroundColor3 = COLORS.timelineBackground,
		BorderSizePixel = 0,
		ClipsDescendants = true,
	}, renderTimelineChildren(batches, now))

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundColor3 = COLORS.rowBackground,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
	}, children)
end

return OrchestratorRow
