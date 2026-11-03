local Src = script:FindFirstAncestor("ViewRecycler")

local AutoScrollPolicy = require(Src.Core.Enums.AutoScrollPolicy)
local AutoScrollTarget = require(Src.Core.Enums.AutoScrollTarget)
local Types = require(Src.Core.Types)

export type ScrollStateBeforeChange = Types.ScrollStateBeforeChange
export type Result = false | AutoScrollTarget.AutoScrollTarget
export type Callback = (Types.DataSourceChangeBatch, ScrollStateBeforeChange) -> Result
export type Policy = AutoScrollPolicy.AutoScrollPolicy | Callback

export type AutoScroll = {
	onDataSourceChanged: (decision: Result) -> Result,
	getContentLengthCorrection: (contentLength: number, viewportLength: number) -> number?,
	onScrollOffsetChanged: (atEnd: boolean, canArmAtEnd: boolean) -> (),
}

local AutoScroll = {}

function AutoScroll.resolveTarget(
	policy: Policy?,
	changeBatch: Types.DataSourceChangeBatch,
	before: ScrollStateBeforeChange
): Result
	if policy == AutoScrollPolicy.WhenAtEnd then
		return if before.atEnd then AutoScrollTarget.End else false
	elseif type(policy) == "function" then
		return policy(changeBatch, before)
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
	local settleAtEnd = false

	return {
		onDataSourceChanged = function(decision)
			if decision == AutoScrollTarget.End then
				settleAtEnd = true
			else
				settleAtEnd = false
			end
			return decision
		end,

		getContentLengthCorrection = function(contentLength, viewportLength)
			if not settleAtEnd then
				return nil
			end
			return math.max(0, contentLength - viewportLength)
		end,

		onScrollOffsetChanged = function(atEnd, canArmAtEnd)
			settleAtEnd = atEnd and canArmAtEnd
		end,
	}
end

return AutoScroll
