-- Places Item Hosts at explicit positions: an Item of a known-geometry Layout
-- at its Layout offset, and pinned, viewport-relative, or Sticky Items at
-- their placements. A Canvas-relative Host is offset by the Canvas origin and
-- follows it. A Host whose placement has a main-axis end limit sits in an
-- EndLimitFrame, so the engine pushes it off from its painted length.
local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local CanvasItemPlacer = require(Root.RobloxAdapter.CanvasItemPlacer)
local EndLimitFrame = require(Root.RobloxAdapter.EndLimitFrame)
local HostPresentationPhase = require(Root.RobloxAdapter.HostPresentationPhase)

export type AbsolutePlacement = {
	-- Places a Host in `parent` at its Canvas placement, or at its viewport
	-- placement when not `canvasRelative`, and returns whether it is visible.
	place: (
		host: GuiObject,
		placerState: CanvasItemPlacer.State,
		parent: Instance,
		state: Core.ViewState<any>,
		canvasRelative: boolean,
		phase: HostPresentationPhase.HostPresentationPhase
	) -> boolean,
	-- Forgets a Host once it is placed elsewhere or detached.
	remove: (host: GuiObject) -> (),
	setConfiguration: (axis: Core.Axis, selfSizing: boolean) -> (),
	-- Moves placed Canvas-relative Hosts to the Canvas origin.
	setOriginOffset: (originOffset: number) -> (),
	destroy: () -> (),
}

type Placed = {
	placerState: CanvasItemPlacer.State,
	state: Core.ViewState<any>,
	geometry: CanvasItemPlacer.Geometry,
	-- The Canvas origin the Host is positioned against, if Canvas-relative.
	originOffset: number?,
	endLimitFrame: EndLimitFrame.EndLimitFrame?,
}

local AbsolutePlacement = {}

function AbsolutePlacement.new(axis: Core.Axis, selfSizing: boolean, getOriginOffset: () -> number): AbsolutePlacement
	local placed: { [GuiObject]: Placed } = {}

	local function releaseEndLimitFrame(record: Placed)
		local frame = record.endLimitFrame
		if frame ~= nil then
			record.endLimitFrame = nil
			frame.destroy()
		end
	end

	local function getGeometry(record: Placed, placement: Core.ItemPlacement, originOffset: number?)
		local state = record.state
		return CanvasItemPlacer.getGeometry(
			state.itemLayout,
			placement,
			axis,
			selfSizing or state.index == nil,
			if originOffset == nil then 0 else state.contentStartOffset + originOffset,
			record.geometry
		)
	end

	return {
		place = function(host, placerState, parent, state, canvasRelative, phase)
			local placement = if canvasRelative
				then state.canvasPlacement
				else state.viewportPlacement :: Core.ItemPlacement
			local record = placed[host]
			if record == nil then
				record = {
					placerState = placerState,
					state = state,
					geometry = {} :: any,
					originOffset = nil,
					endLimitFrame = nil,
				}
				placed[host] = record
			end
			record.placerState = placerState
			record.state = state
			local visible = phase ~= HostPresentationPhase.Hidden
			local endLimit = placement.mainAxisEndLimit
			if endLimit ~= nil then
				local geometry = getGeometry(record, {
					mainAxisOffset = 0,
					mainAxisLength = placement.mainAxisLength,
					zIndex = placement.zIndex,
				}, nil)
				local frame = record.endLimitFrame or EndLimitFrame.new()
				record.endLimitFrame = frame
				CanvasItemPlacer.place(host, frame.instance, geometry, placerState, visible)
				frame.place(parent, axis, placement.mainAxisOffset or 0, endLimit, host.ZIndex)
				record.originOffset = nil
			else
				local originOffset = if canvasRelative then getOriginOffset() else nil
				CanvasItemPlacer.place(host, parent, getGeometry(record, placement, originOffset), placerState, visible)
				releaseEndLimitFrame(record)
				record.originOffset = originOffset
			end
			return visible
		end,
		remove = function(host)
			local record = placed[host]
			if record ~= nil then
				placed[host] = nil
				releaseEndLimitFrame(record)
			end
		end,
		setConfiguration = function(nextAxis, nextSelfSizing)
			axis, selfSizing = nextAxis, nextSelfSizing
		end,
		setOriginOffset = function(originOffset)
			-- An origin change moves only the position of a placed Host; it does
			-- not replay attachment, visibility, ZIndex, or Measurement.
			for host, record in placed do
				if record.originOffset ~= nil and record.originOffset ~= originOffset then
					local geometry = getGeometry(record, record.state.canvasPlacement, originOffset)
					CanvasItemPlacer.updatePosition(host, geometry, record.placerState)
					record.originOffset = originOffset
				end
			end
		end,
		destroy = function()
			for _, record in placed do
				releaseEndLimitFrame(record)
			end
			table.clear(placed)
		end,
	}
end

return AbsolutePlacement
