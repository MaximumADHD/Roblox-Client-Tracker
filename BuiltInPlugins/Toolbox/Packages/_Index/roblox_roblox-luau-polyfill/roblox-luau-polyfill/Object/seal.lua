local preventExtensions = require(script.Parent.preventExtensions)

local function seal(t)
	-- FIXME: We don't have needed VM support to mimic the functionality of
	-- seal, so we approximate with preventExtensions Seal should also support:
	-- * Reassigning to a value that was set to nil
	-- * Preventing removal of a field; this is hard to define given lua's
	--   understanding of 'nil' and table membership
	return preventExtensions(t)
end

return seal