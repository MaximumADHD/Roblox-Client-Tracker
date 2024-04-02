-- upstream https://github.com/react-navigation/react-navigation/blob/72e8160537954af40f1b070aa91ef45fc02bba69/packages/core/src/routers/KeyGenerator.ts
local uniqueBaseId = "id-" .. tostring(math.random(100000, 1000000))
local uuidCount = 0

local KeyGenerator = {}

-- NOTE: FOR TESTING ONLY.
-- Normalize keys so that tests can be consistent.
function KeyGenerator._TESTING_ONLY_normalize_keys()
	uniqueBaseId = "id-"
	uuidCount = 0
end

-- Get a string key that is unique for this session.
function KeyGenerator.generateKey()
	local key = uniqueBaseId .. tostring(uuidCount)
	uuidCount = uuidCount + 1
	return key
end

return KeyGenerator
