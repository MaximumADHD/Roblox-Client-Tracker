-- Returns the per-clip sub-table from an AQ measurement summary, skipping the
-- aggregate measurement_score key. The backend returns measurement data nested
-- under the animation clip name (e.g. "Model_Animation"), which varies by asset.
local function getAQEmotePartData(summary: { [string]: any }?): { [string]: any }?
	if not summary then
		return nil
	end
	for key, value in pairs(summary) do
		if key ~= "measurement_score" and type(value) == "table" then
			return value
		end
	end
	return nil
end

return getAQEmotePartData
