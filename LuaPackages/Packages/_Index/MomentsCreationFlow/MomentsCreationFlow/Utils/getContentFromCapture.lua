-- Mockable wrapper around Content.fromObject() for tests.
local function getContentFromCapture(capture: Capture): any
	return Content.fromObject(capture)
end

return getContentFromCapture
