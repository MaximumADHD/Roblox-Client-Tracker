local root = script

local ArtifactLoader = require(root.ArtifactLoader)
local RecordPlayback = require(root.RecordPlayback)
local Resolver = require(root.Resolver)

type RecordPlayback = RecordPlayback.RecordPlayback

export type Configuration = {
	instanceParent: Instance,
	fileSystemPath: string,
}

local function createRecordPlayback(configuration: Configuration): (string) -> RecordPlayback
	local resolver = Resolver.new(configuration.instanceParent, configuration.fileSystemPath)
	local loader = ArtifactLoader.new(resolver)

	local function create(location: string)
		assert(typeof(location) == "string", "location should be a string")
		return RecordPlayback.new(loader, location)
	end

	return create
end

return {
	createRecordPlayback = createRecordPlayback,
}
