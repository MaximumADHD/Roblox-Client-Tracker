export type ThreadInfo = {
	threadId: number,
	displayString: string,
}

local kInvalidNumber = -1
local kInvalidString = ""

local function new() : ThreadInfo
	return {
		threadId = kInvalidNumber,
		displayString = kInvalidString,
	}
end

local function fromData(data) : ThreadInfo
	return {
		threadId = data.threadId or kInvalidNumber,
		displayString = data.displayString or kInvalidString,
	}
end

return {
	new = new,
	fromData = fromData,
}
