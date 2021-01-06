local Round = require(script.Parent.Round)

-- Returns the three new indices with any nils filled in and any misorderings corrected.
-- new and old should be tables containing an anchorIndex, a leadIndex and a trailIndex.
return function(new, old, listSize)
	local newAnchor = new.anchorIndex
	local newLead = new.leadIndex
	local newTrail = new.trailIndex

	-- There are 8 possibilities here as any combination of these could be deleted. Also, we can't use findIndexAt
	-- here since that requires access to the children's measurements.
	if not newAnchor then
		if newLead and newTrail then
			-- Estimate that the new anchor is proportionally the same distance from the lead and trail indices.
			if newLead == newTrail then
				-- Guard against divide by zero.
				newAnchor = newLead
			else
				local oldRatio = (old.anchorIndex - old.leadIndex) / (old.trailIndex - old.leadIndex)
				newAnchor = Round.nearest((newTrail - newLead) * oldRatio + newLead)
				newAnchor = math.min(math.max(newAnchor, 1), listSize)
			end
		elseif newLead then
			-- Given only the new leading index, estimate that the new anchor is the same distance away as it was.
			newAnchor = newLead + old.anchorIndex - old.leadIndex
			newAnchor = math.min(math.max(newAnchor, 1), listSize)
		elseif newTrail then
			-- Given only the new trailing index, estimate that the new anchor is the same distance away as it was.
			newAnchor = newTrail + old.anchorIndex - old.trailIndex
			newAnchor = math.min(math.max(newAnchor, 1), listSize)
		else
			-- Everything is gone. Just reuse the same index if that's still within the bounds of the list.
			newAnchor = math.min(math.max(old.anchorIndex, 1), listSize)
		end
	end

	-- If the leading and trailing indices haven't been worked out yet, estimate that the new ones should be the
	-- same distance from the anchor as the old ones were.
	if not newTrail then
		newTrail = newAnchor + old.trailIndex - old.anchorIndex
		newTrail = math.min(math.max(newTrail, 1), listSize)
	end
	if not newLead then
		newLead = newAnchor + old.leadIndex - old.anchorIndex
		newLead = math.min(math.max(newLead, 1), listSize)
	end

	-- Make sure the resulting indices are in the right order.
	local minIndex = math.min(newAnchor, newLead, newTrail)
	local maxIndex = math.max(newAnchor, newLead, newTrail)

	return {
		trailIndex = minIndex,
		anchorIndex = newAnchor,
		leadIndex = maxIndex,
	}
end
