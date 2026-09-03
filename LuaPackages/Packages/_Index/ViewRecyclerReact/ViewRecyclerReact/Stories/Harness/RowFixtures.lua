local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "RowFixtures must be mounted under view-recycler-react")

local React = require(Root.Parent.React)
local SignalsReact = require(Root.Parent.SignalsReact)
local RecyclingStats = require(script.Parent.RecyclingStats)
local ViewRecycler = require(Root)

local e = React.createElement

export type RowItem = {
	id: string,
	label: string,
	gap: number?,
}

local WORDS = string.split(
	"measurement correction keeps visible content anchored while variable wrapped rows replace estimated geometry",
	" "
)
local LOG_EVENTS = {
	"Route match resolved",
	"Background task complete",
	"Virtual range measured",
	"Query cache updated",
	"Render batch committed",
}

local function SimpleRowView(props)
	local item = SignalsReact.useSignalState(props.itemSignal)
	local mountId = RecyclingStats.useAssignment(item.id)

	return e("TextLabel", {
		BackgroundColor3 = Color3.fromHSV((tonumber(item.id) or 1) % 17 / 17, 0.25, 0.9),
		BorderSizePixel = 0,
		Font = Enum.Font.BuilderSans,
		Size = UDim2.fromScale(1, 1),
		Text = if mountId == 0 then item.label else `[mount {mountId}] {item.label}`,
		TextColor3 = Color3.fromRGB(24, 25, 30),
		TextSize = 17,
	})
end

local function MeasuredRowView(props)
	local item = SignalsReact.useSignalState(props.itemSignal)
	local mountId = RecyclingStats.useAssignment(item.id)

	return e("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 0),
	}, {
		Content = e("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = Color3.fromRGB(238, 238, 243),
			BorderSizePixel = 0,
			Font = Enum.Font.BuilderSans,
			Size = UDim2.fromScale(1, 0),
			Text = if mountId == 0 then item.label else `[mount {mountId}] {item.label}`,
			TextColor3 = Color3.fromRGB(24, 25, 30),
			TextSize = 17,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Padding = e("UIPadding", {
			PaddingBottom = UDim.new(0, item.gap or 0),
		}),
	})
end

local function ImmediateSimpleRowView(props)
	local backgroundColor = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		return Color3.fromHSV((tonumber(item.id) or 1) % 17 / 17, 0.25, 0.9)
	end)
	local text = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		return item.label
	end)

	return e("TextLabel", {
		BackgroundColor3 = backgroundColor,
		BorderSizePixel = 0,
		Font = Enum.Font.BuilderSans,
		Size = UDim2.fromScale(1, 1),
		Text = text,
		TextColor3 = Color3.fromRGB(24, 25, 30),
		TextSize = 17,
	})
end

local function ImmediateMeasuredRowView(props)
	local text = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		return item.label
	end)
	local gap = SignalsReact.useSignalBinding(function(scope)
		local item = props.itemSignal(scope)
		return UDim.new(0, item.gap or 0)
	end)

	return e("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 0),
	}, {
		Content = e("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = Color3.fromRGB(238, 238, 243),
			BorderSizePixel = 0,
			Font = Enum.Font.BuilderSans,
			Size = UDim2.fromScale(1, 0),
			Text = text,
			TextColor3 = Color3.fromRGB(24, 25, 30),
			TextSize = 17,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Padding = e("UIPadding", {
			PaddingBottom = gap,
		}),
	})
end

local RowFixtures = {
	SimpleRow = ViewRecycler.createRecyclableView(SimpleRowView, {
		readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnCommit,
		hideWhilePending = true,
	}),
	MeasuredRow = ViewRecycler.createRecyclableView(MeasuredRowView, {
		readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnCommit,
		hideWhilePending = true,
	}),
	ImmediateSimpleRow = ViewRecycler.createRecyclableView(ImmediateSimpleRowView, {
		readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
	}),
	ImmediateMeasuredRow = ViewRecycler.createRecyclableView(ImmediateMeasuredRowView, {
		readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
	}),
}

function RowFixtures.buildSimpleRows(count: number, label: string?): { RowItem }
	local items = table.create(count)
	for index = 1, count do
		items[index] = {
			id = tostring(index),
			label = `{label or "Item"} #{index}`,
		}
	end
	return items
end

function RowFixtures.buildLogRows(count: number): { RowItem }
	local items = table.create(count)
	for index = 1, count do
		items[index] = {
			id = tostring(index),
			label = `#{string.format("%06d", index)}   {LOG_EVENTS[(index - 1) % #LOG_EVENTS + 1]}`,
		}
	end
	return items
end

function RowFixtures.buildKnownVariableRows(count: number, shortLength: number, longLength: number): { RowItem }
	local items = table.create(count)
	for index = 1, count do
		local length = if index % 2 == 1 then shortLength else longLength
		items[index] = {
			id = tostring(index),
			label = `Item #{index} — exact {length}px row`,
		}
	end
	return items
end

function RowFixtures.buildMeasuredRows(count: number, gap: number?): { RowItem }
	local random = Random.new(1337)
	local items = table.create(count)
	for index = 1, count do
		local wordCount = random:NextInteger(8, 45)
		local parts = table.create(wordCount)
		for wordIndex = 1, wordCount do
			parts[wordIndex] = WORDS[random:NextInteger(1, #WORDS)]
		end
		items[index] = {
			id = tostring(index),
			label = `Item #{index}: ` .. table.concat(parts, " "),
			gap = gap,
		}
	end
	return items
end

function RowFixtures.getItemKey(item: RowItem): string
	return item.id
end

return RowFixtures
