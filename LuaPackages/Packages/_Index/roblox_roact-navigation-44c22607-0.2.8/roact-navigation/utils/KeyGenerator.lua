local uniqueBaseId = "id-" .. tostring(math.random(100000, 1000000))
local uuidCount = 0

local KeyGenerator = {}

-- NOTE: FOR TESTING ONLY.
-- Normalize keys so that tests can be consistent.
function KeyGenerator.normalizeKeys()
	uniqueBaseId = "id-test-"
	uuidCount = 0
end

-- Get a string key that is unique for this session.
function KeyGenerator.generateKey()
	uuidCount = uuidCount + 1
	return uniqueBaseId .. tostring(uuidCount)
end

return KeyGenerator
