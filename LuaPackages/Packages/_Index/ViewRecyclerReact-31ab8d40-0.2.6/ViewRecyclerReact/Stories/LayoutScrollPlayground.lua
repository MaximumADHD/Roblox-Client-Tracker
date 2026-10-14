local Root = script:FindFirstAncestor("ViewRecyclerReact")
assert(Root ~= nil, "LayoutScrollPlayground must be mounted under view-recycler-react")

local JumpControls = require(script.Parent.Harness.JumpControls)
local React = require(Root.Parent.React)
local RecyclingStats = require(script.Parent.Harness.RecyclingStats)
local RowFixtures = require(script.Parent.Harness.RowFixtures)
local StoryControls = require(script.Parent.Harness.StoryControls)
local StoryShell = require(script.Parent.Harness.StoryShell)
local ViewRecycler = require(Root)
local useManagedLayout = require(script.Parent.Harness.useManagedLayout)

local e = React.createElement

local Scenario = table.freeze({
	Fixed = "fixed",
	KnownVariable = "knownVariable",
	Measured = "measured",
})

local DEFAULT_VALUES = table.freeze({
	scenario = Scenario.Fixed,
	itemCount = 1000,
	overscan = 2,
	axis = "vertical",
	jumpTarget = 500,
	alignment = "center",
	diagnostics = true,
	itemLength = 44,
	spacing = 4,
	shortLength = 48,
	longLength = 96,
	measuredEstimate = 72,
	presentationMode = "immediate",
})

local CONTROLS = {
	scenario = { Scenario.Fixed, Scenario.KnownVariable, Scenario.Measured },
	itemCount = StoryControls.options(DEFAULT_VALUES.itemCount, { 100, 5000, 10000, 100000 }),
	overscan = StoryControls.OverscanOptions,
	axis = StoryControls.AxisOptions,
	jumpTarget = DEFAULT_VALUES.jumpTarget,
	alignment = StoryControls.AlignmentOptions,
	diagnostics = DEFAULT_VALUES.diagnostics,
	itemLength = DEFAULT_VALUES.itemLength,
	spacing = DEFAULT_VALUES.spacing,
	shortLength = DEFAULT_VALUES.shortLength,
	longLength = DEFAULT_VALUES.longLength,
	measuredEstimate = DEFAULT_VALUES.measuredEstimate,
	presentationMode = StoryControls.PresentationModeOptions,
}

local FIXED_VALUES = table.freeze({
	scenario = Scenario.Fixed,
	itemCount = 100000,
	jumpTarget = 50000,
	itemLength = 44,
	spacing = 4,
})
local FIXED_FOCUSED_VALUES = table.freeze({
	scenario = Scenario.Fixed,
	itemCount = 1000,
	jumpTarget = 500,
	itemLength = 44,
	spacing = 4,
})
local KNOWN_VARIABLE_VALUES = table.freeze({
	scenario = Scenario.KnownVariable,
	itemCount = 1000,
	jumpTarget = 500,
	shortLength = 48,
	longLength = 96,
	spacing = 6,
})
local MEASURED_VALUES = table.freeze({
	scenario = Scenario.Measured,
	itemCount = 5000,
	jumpTarget = 2500,
	axis = "vertical",
	measuredEstimate = 72,
	spacing = 6,
})
local PRESETS = {
	FixedFocused = {
		name = "Fixed Sizes",
		summary = "Provides a focused uniform-row scenario for tuning fixed item geometry and scroll alignment.",
		details = {
			title = "Fixed Sizes",
			instructions = "Tune item length, spacing, alignment, and overscan while scrolling a focused uniform list.",
			itemUpdate = "Comparison — render-driven ReadyOnCommit or binding-driven ReadyOnAssignment rows.",
			acceptanceCriteria = "Uniform rows remain aligned and mounted hosts stay bounded near the rendered range.",
		},
		values = FIXED_FOCUSED_VALUES,
		controls = {
			itemCount = StoryControls.options(FIXED_FOCUSED_VALUES.itemCount, { 100, 5000, 10000 }),
			overscan = StoryControls.OverscanOptions,
			axis = StoryControls.AxisOptions,
			jumpTarget = FIXED_FOCUSED_VALUES.jumpTarget,
			alignment = StoryControls.AlignmentOptions,
			diagnostics = true,
			itemLength = FIXED_FOCUSED_VALUES.itemLength,
			spacing = FIXED_FOCUSED_VALUES.spacing,
			presentationMode = StoryControls.PresentationModeOptions,
		},
	},
	Fixed = {
		name = "100K Row Viewport",
		summary = "Demonstrates bounded recycling and random access across 100,000 uniform log rows.",
		values = FIXED_VALUES,
		controls = {
			itemCount = StoryControls.options(FIXED_VALUES.itemCount, { 1000, 10000, 50000 }),
			overscan = StoryControls.OverscanOptions,
			axis = StoryControls.AxisOptions,
			jumpTarget = FIXED_VALUES.jumpTarget,
			alignment = StoryControls.AlignmentOptions,
			diagnostics = true,
			itemLength = FIXED_VALUES.itemLength,
			spacing = FIXED_VALUES.spacing,
			presentationMode = StoryControls.PresentationModeOptions,
		},
	},
	KnownVariable = {
		name = "Known Variable Sizes",
		summary = "Uses exact alternating row geometry for measurement-free distant jumps.",
		values = KNOWN_VARIABLE_VALUES,
		controls = {
			itemCount = StoryControls.options(KNOWN_VARIABLE_VALUES.itemCount, { 100, 500, 5000 }),
			overscan = StoryControls.OverscanOptions,
			axis = StoryControls.AxisOptions,
			jumpTarget = KNOWN_VARIABLE_VALUES.jumpTarget,
			alignment = StoryControls.AlignmentOptions,
			diagnostics = true,
			shortLength = KNOWN_VARIABLE_VALUES.shortLength,
			longLength = KNOWN_VARIABLE_VALUES.longLength,
			spacing = KNOWN_VARIABLE_VALUES.spacing,
			presentationMode = StoryControls.PresentationModeOptions,
		},
	},
	Measured = {
		name = "Dynamic Measured Rows",
		summary = "Shows estimated row geometry correcting as wrapped text is measured.",
		values = MEASURED_VALUES,
		controls = {
			itemCount = StoryControls.options(MEASURED_VALUES.itemCount, { 100, 1000, 10000 }),
			overscan = StoryControls.OverscanOptions,
			jumpTarget = MEASURED_VALUES.jumpTarget,
			alignment = StoryControls.AlignmentOptions,
			diagnostics = true,
			measuredEstimate = MEASURED_VALUES.measuredEstimate,
			spacing = MEASURED_VALUES.spacing,
			presentationMode = StoryControls.PresentationModeOptions,
		},
	},
}

local SCENARIO_DETAILS = {
	[Scenario.Fixed] = {
		title = "100K Row Viewport",
		instructions = "Scroll the event log, jump to the middle and either boundary, then vary alignment, row geometry, and overscan.",
		itemUpdate = "Comparison — render-driven ReadyOnCommit or binding-driven ReadyOnAssignment rows.",
		acceptanceCriteria = "Random access remains immediate, rows stay aligned, and mounted hosts remain bounded near the visible range regardless of total row count.",
	},
	[Scenario.KnownVariable] = {
		title = "Known Variable Sizes",
		instructions = "Jump between distant alternating short/long rows, then vary both exact lengths and spacing.",
		itemUpdate = "Comparison — render-driven ReadyOnCommit or binding-driven ReadyOnAssignment rows.",
		acceptanceCriteria = "Alternating geometry has no overlap or gaps beyond spacing, and start/center/end jumps land exactly without measurement correction.",
	},
	[Scenario.Measured] = {
		title = "Dynamic Measured Rows",
		instructions = "Use a vertical axis, vary row spacing, jump deep into wrapped content, and compare the initial estimate with the corrected scroll position.",
		itemUpdate = "Comparison — measured render-driven or fully binding-driven rows.",
		acceptanceCriteria = "A deep jump may land from estimated geometry, then its target reaches the requested start, center, or end alignment as measurements settle; scrolling manually releases that target anchor.",
	},
}

local function resolveControls(controls)
	controls = StoryControls.merge(DEFAULT_VALUES, controls)
	local scenario = if SCENARIO_DETAILS[controls.scenario] ~= nil then controls.scenario else DEFAULT_VALUES.scenario
	local itemCount = StoryControls.positiveInteger(controls.itemCount, DEFAULT_VALUES.itemCount)
	local axisName = if controls.axis == "horizontal" then "horizontal" else "vertical"
	local axis = StoryControls.resolveAxis(axisName, ViewRecycler)
	local alignmentName = string.lower(tostring(controls.alignment))
	alignmentName = if alignmentName == "start" or alignmentName == "end" then alignmentName else "center"
	local alignment = StoryControls.resolveAlignment(alignmentName, ViewRecycler)

	return {
		scenario = scenario,
		itemCount = itemCount,
		overscan = StoryControls.nonNegativeNumber(controls.overscan, DEFAULT_VALUES.overscan),
		axis = axis,
		axisName = axisName,
		jumpTarget = math.clamp(
			StoryControls.positiveInteger(controls.jumpTarget, DEFAULT_VALUES.jumpTarget),
			1,
			itemCount
		),
		alignment = alignment,
		alignmentName = alignmentName,
		diagnostics = controls.diagnostics ~= false,
		itemLength = StoryControls.positiveInteger(controls.itemLength, DEFAULT_VALUES.itemLength),
		spacing = StoryControls.nonNegativeNumber(controls.spacing, DEFAULT_VALUES.spacing),
		shortLength = StoryControls.positiveInteger(controls.shortLength, DEFAULT_VALUES.shortLength),
		longLength = StoryControls.positiveInteger(controls.longLength, DEFAULT_VALUES.longLength),
		measuredEstimate = StoryControls.positiveInteger(controls.measuredEstimate, DEFAULT_VALUES.measuredEstimate),
		presentationMode = StoryControls.resolvePresentationMode(controls.presentationMode, ViewRecycler),
	}
end

local function mergeControls(...)
	local result = table.clone(DEFAULT_VALUES)
	for _, source in { ... } do
		result = StoryControls.merge(result, source)
	end
	return result
end

local function createLayout(config)
	if config.scenario == Scenario.KnownVariable then
		local pairLength = config.shortLength + config.longLength + 2 * config.spacing
		return ViewRecycler.Layout.create({
			getItemLayout = function(index)
				local pairsBefore = (index - 1) // 2
				local isShort = index % 2 == 1
				return {
					startOffset = pairsBefore * pairLength + if isShort then 0 else config.shortLength + config.spacing,
					length = if isShort then config.shortLength else config.longLength,
				}
			end,
		})
	elseif config.scenario == Scenario.Measured then
		return ViewRecycler.Layout.measured({
			estimatedItemLength = config.measuredEstimate,
		})
	else
		return ViewRecycler.Layout.uniform({
			itemLength = config.itemLength,
			spacing = config.spacing,
		})
	end
end

local function createItems(scenario, itemCount, shortLength, longLength, spacing)
	if scenario == Scenario.KnownVariable then
		return RowFixtures.buildKnownVariableRows(itemCount, shortLength, longLength)
	elseif scenario == Scenario.Measured then
		return RowFixtures.buildMeasuredRows(itemCount, spacing)
	elseif scenario == Scenario.Fixed then
		return RowFixtures.buildLogRows(itemCount)
	else
		return RowFixtures.buildSimpleRows(itemCount)
	end
end

local function LayoutScrollPlayground(props)
	local config = resolveControls(props.controls)
	local layoutGeneration, setLayoutGeneration = React.useState(0)
	local layout = useManagedLayout(React, function()
		return createLayout(config)
	end, {
		config.itemLength,
		config.longLength,
		config.measuredEstimate,
		config.scenario,
		config.shortLength,
		config.spacing,
		layoutGeneration,
	})
	local scenario = config.scenario
	local itemCount = config.itemCount
	local shortLength = config.shortLength
	local longLength = config.longLength
	local spacing = config.spacing
	local items = React.useMemo(function()
		return createItems(scenario, itemCount, shortLength, longLength, spacing)
	end, { itemCount, longLength, scenario, shortLength, spacing })
	local stats, statsActions = RecyclingStats.useStats()
	local listRef = React.useRef(nil :: ViewRecycler.VirtualListHandle?)
	local offsetRef = React.useRef(0)
	local diagnosticEventsRef = React.useRef(0)
	local statsTextRef = React.useRef("")
	local configRef = React.useRef(config)
	configRef.current = config
	statsTextRef.current = RecyclingStats.format(stats)
	local status, setStatus = React.useBinding("")

	local updateStatus = React.useCallback(function()
		local currentConfig = configRef.current
		local rangeText = ""
		if currentConfig.scenario == Scenario.Fixed then
			local stride = currentConfig.itemLength + currentConfig.spacing
			local first = math.clamp(math.floor(offsetRef.current / stride) + 1, 1, currentConfig.itemCount)
			local last = math.min(currentConfig.itemCount, first + math.ceil(500 / stride))
			local fullRange = currentConfig.itemCount * stride - currentConfig.spacing
			rangeText = `   Visible: {first}–{last} / {currentConfig.itemCount}   Range: {math.round(fullRange)}px`
		end
		setStatus(
			`{statsTextRef.current}   Offset: {math.round(offsetRef.current)}px{rangeText}   Diagnostics: {diagnosticEventsRef.current}`
		)
	end, { setStatus })
	local onScrollOffsetChanged = React.useCallback(function(offset)
		offsetRef.current = offset
		updateStatus()
	end, { updateStatus })
	local diagnostics = React.useCallback(function(_event: ViewRecycler.DiagnosticEvent)
		diagnosticEventsRef.current += 1
		updateStatus()
	end, { updateStatus })
	React.useEffect(updateStatus, { stats, updateStatus })
	local details = props.details or SCENARIO_DETAILS[config.scenario]

	return e(RecyclingStats.Provider, {
		actions = statsActions,
	}, {
		Shell = e(StoryShell.Component, {
			acceptanceCriteria = details.acceptanceCriteria,
			instructions = details.instructions,
			itemUpdate = details.itemUpdate,
			size = UDim2.fromOffset(760, 700),
			status = status,
			title = `Layout & Scroll Playground — {details.title}`,
			toolbar = e("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				Jumps = e(JumpControls, {
					alignment = config.alignment,
					itemCount = config.itemCount,
					listRef = listRef,
					target = config.jumpTarget,
				}),
				ResetEstimate = if config.scenario == Scenario.Measured
					then e("TextButton", {
						Position = UDim2.fromOffset(424, 6),
						Size = UDim2.fromOffset(132, 30),
						Text = "Reset estimate",
						[React.Event.Activated] = function()
							setLayoutGeneration(function(value)
								return value + 1
							end)
						end,
					})
					else nil,
			}),
		}, {
			List = e(ViewRecycler.VirtualList, {
				axis = config.axis,
				data = {
					items = items,
					getItemKey = RowFixtures.getItemKey,
				},
				diagnostics = if config.diagnostics then diagnostics else nil,
				itemType = if config.scenario == Scenario.Measured
					then if config.presentationMode == ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment
						then RowFixtures.ImmediateMeasuredRow
						else RowFixtures.MeasuredRow
					elseif config.presentationMode == ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment
						then RowFixtures.ImmediateSimpleRow
					else RowFixtures.SimpleRow,
				layout = layout,
				listRef = listRef,
				onScrollOffsetChanged = onScrollOffsetChanged,
				overscan = config.overscan,
			}),
		}),
	})
end

local LayoutScrollPlaygroundModule = {
	Component = LayoutScrollPlayground,
	controls = CONTROLS,
	defaultValues = DEFAULT_VALUES,
	presets = PRESETS,
	Scenario = Scenario,
	mergeControls = mergeControls,
	resolveControls = resolveControls,
	scenarioDetails = SCENARIO_DETAILS,
}

function LayoutScrollPlaygroundModule.createPreset(presetName: string)
	local preset = PRESETS[presetName]
	assert(preset ~= nil, `Unknown LayoutScrollPlayground preset {presetName}`)

	local function PresetStory(storyProps)
		return e(LayoutScrollPlayground, {
			controls = mergeControls(preset.values, storyProps and storyProps.controls),
			details = preset.details,
		})
	end

	return {
		name = preset.name,
		summary = preset.summary,
		roact = React,
		story = PresetStory,
		controls = preset.controls,
		presetControls = preset.values,
	}
end

return LayoutScrollPlaygroundModule
