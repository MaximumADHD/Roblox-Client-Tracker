local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)
local Types = require(Src.Core.Types)

export type ItemRevisionTracker = {
	get: (key: string) -> number,
	applyChange: (change: Types.DataSourceChange) -> (),
}

local function createItemRevisionTracker(): ItemRevisionTracker
	local nextVersion = 0
	local resetVersion = 0
	local versionByKey: { [string]: number } = {}

	local function get(key: string): number
		return versionByKey[key] or resetVersion
	end

	local function bump(keys: { string })
		for _, key in keys do
			nextVersion += 1
			versionByKey[key] = nextVersion
		end
	end

	local function applyChange(change: Types.DataSourceChange)
		if change.type == DataSourceChangeType.Reset then
			local resetChange = change :: Types.ResetDataSourceChange
			nextVersion += 1
			resetVersion = nextVersion
			versionByKey = {}
			bump(resetChange.keys)
		elseif change.type == DataSourceChangeType.Update or change.type == DataSourceChangeType.Insert then
			bump((change :: Types.UpdateDataSourceChange | Types.InsertDataSourceChange).keys)
		elseif change.type == DataSourceChangeType.Remove then
			for _, key in (change :: Types.RemoveDataSourceChange).keys do
				versionByKey[key] = nil
			end
		end
	end

	return {
		get = get,
		applyChange = applyChange,
	}
end

return createItemRevisionTracker
