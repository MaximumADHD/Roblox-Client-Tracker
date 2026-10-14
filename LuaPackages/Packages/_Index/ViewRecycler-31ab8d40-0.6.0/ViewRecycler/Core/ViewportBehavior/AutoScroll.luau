local Src = script:FindFirstAncestor("ViewRecycler")

local AutoScrollPolicy = require(Src.Core.Enums.AutoScrollPolicy)
local AutoScrollTarget = require(Src.Core.Enums.AutoScrollTarget)
local Types = require(Src.Core.Types)

export type ScrollStateBeforeChange = Types.ScrollStateBeforeChange
export type Result = false | AutoScrollTarget.AutoScrollTarget
export type Callback = (Types.DataSourceChangeBatch, ScrollStateBeforeChange) -> Result
export type Policy = AutoScrollPolicy.AutoScrollPolicy | Callback

-- Holds the edge a list stays settled at while Content settles. A pinned
-- edge comes from app intent and survives changes the policy declines.
export type AutoScroll = {
	onDataSourceChanged: (decision: Result) -> Result,
	settleAt: (edge: AutoScrollTarget.AutoScrollTarget) -> (),
	pin: (edge: AutoScrollTarget.AutoScrollTarget) -> (),
	getSettleOffset: (contentLength: number, viewportLength: number) -> number?,
	onScrollOffsetChanged: (
		scrollState: Types.ScrollState,
		threshold: number,
		followedEdge: AutoScrollTarget.AutoScrollTarget?
	) -> (),
}

local AutoScroll = {}

function AutoScroll.followedEdge(policy: Policy?): AutoScrollTarget.AutoScrollTarget?
	if policy == AutoScrollPolicy.WhenAtStart then
		return AutoScrollTarget.Start
	elseif policy == AutoScrollPolicy.WhenAtEnd then
		return AutoScrollTarget.End
	end
	return nil
end

function AutoScroll.distanceFromEdge(edge: AutoScrollTarget.AutoScrollTarget, scrollState: Types.ScrollState): number
	return if edge == AutoScrollTarget.Start then scrollState.scrollOffset else scrollState.distanceFromEnd
end

function AutoScroll.resolveTarget(
	policy: Policy?,
	changeBatch: Types.DataSourceChangeBatch,
	before: ScrollStateBeforeChange,
	threshold: number
): Result
	if type(policy) == "function" then
		return policy(changeBatch, before)
	end
	local edge = AutoScroll.followedEdge(policy)
	if edge ~= nil and AutoScroll.distanceFromEdge(edge, before) <= threshold then
		return edge
	end
	return false
end

function AutoScroll.getTargetOffset(
	target: AutoScrollTarget.AutoScrollTarget,
	contentLength: number,
	viewportLength: number
): number
	return if target == AutoScrollTarget.Start then 0 else math.max(0, contentLength - viewportLength)
end

function AutoScroll.create(): AutoScroll
	local settledEdge: AutoScrollTarget.AutoScrollTarget? = nil
	local pinned = false

	local function settle(edge: AutoScrollTarget.AutoScrollTarget?)
		pinned = pinned and edge == settledEdge
		settledEdge = edge
	end

	return {
		onDataSourceChanged = function(decision)
			if decision == false then
				if pinned then
					return settledEdge :: AutoScrollTarget.AutoScrollTarget
				end
				settle(nil)
				return false
			end
			settle(decision)
			return decision
		end,

		settleAt = settle,

		pin = function(edge)
			settledEdge = edge
			pinned = true
		end,

		getSettleOffset = function(contentLength, viewportLength)
			local edge = settledEdge
			if edge == nil then
				return nil
			end
			return AutoScroll.getTargetOffset(edge, contentLength, viewportLength)
		end,

		onScrollOffsetChanged = function(scrollState, threshold, followedEdge)
			local edge = settledEdge
			if edge ~= nil and AutoScroll.distanceFromEdge(edge, scrollState) <= threshold then
				return
			end
			if followedEdge ~= nil and AutoScroll.distanceFromEdge(followedEdge, scrollState) <= threshold then
				settle(followedEdge)
			else
				settle(nil)
			end
		end,
	}
end

return AutoScroll
