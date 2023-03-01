local hooks = {
	preScreenshot = function () end,
	postScreenshot = function () end,
}

return {
	setPreScreenshotHook = function(preScreenshotHook)
		hooks.preScreenshot = preScreenshotHook
	end,
	setPostScreenshotHook = function(postScreenshotHook)
		hooks.postScreenshot = postScreenshotHook
	end,
	doPreScreenshot = function()
		hooks.preScreenshot()
	end,
	doPostScreenshot = function()
		hooks.postScreenshot()
	end,
}
