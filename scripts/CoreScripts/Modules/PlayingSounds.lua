local PlayingSounds = {}
PlayingSounds.__index = PlayingSounds

type soundIdDataType = { count: number, starttime: number, maxLoopCount: number, instances: { [string]: number } }

function PlayingSounds.new(aggregate)
	local self = {}
	setmetatable(self, PlayingSounds)
	self.aggregatedData = aggregate
	self.sounds = {}
	return self
end

function PlayingSounds:addSound(soundid: string, instanceid: string)
	local soundIdData: soundIdDataType = self.sounds[soundid]

	if soundIdData == nil then
		-- This is the first Sound playing this assetid
		self.sounds[soundid] = { count = 0, starttime = os.time(), maxLoopCount = 1, instances = {} }
		soundIdData = self.sounds[soundid]
	end

	if soundIdData.instances[instanceid] == nil then
		-- This Sound instance is not already being tracked
		soundIdData.instances[instanceid] = 1
		soundIdData.count += 1
	end
end

function PlayingSounds:removeSound(soundid: string, instanceid: string)
	local soundIdData: soundIdDataType = self.sounds[soundid]

	if soundIdData == nil then
		-- We didn't think any instances were playing this sound id, how did that happen?
		return
	end

	if soundIdData.instances[instanceid] then
		-- We are currently tracking this Instance (this should always be true)
		soundIdData.instances[instanceid] = nil
		soundIdData.count -= 1
	end

	if soundIdData.count == 0 then
		-- No more instances are playing this assetid, so aggregate all data.
		self.aggregatedData:addPlay(soundid, os.time() - soundIdData.starttime, soundIdData.maxLoopCount)

		-- Remove it since it's no longer being played
		self.sounds[soundid] = nil
	end
end

function PlayingSounds:loopSound(soundid: string, instanceid: string)
	local soundIdData: soundIdDataType = self.sounds[soundid]
	if soundIdData == nil or soundIdData.instances[instanceid] == nil then
		-- Error case?
		return
	end
	soundIdData.instances[instanceid] += 1
	soundIdData.maxLoopCount = math.max(soundIdData.maxLoopCount, soundIdData.instances[instanceid])
end

return PlayingSounds
