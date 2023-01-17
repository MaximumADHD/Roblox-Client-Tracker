local QRCodeDisplay = script:FindFirstAncestor("QRCodeDisplay")
local Packages = QRCodeDisplay.Parent

local DisplayQRCodeFromMatrix = require(script.Parent.DisplayQRCodeFromMatrix)
local React = require(Packages.React)
local QRCode = require(Packages.QRCode)

return {
	SimpleMatrix = function()
		return React.createElement(DisplayQRCodeFromMatrix, {
			qrCodeMatrix = { { 1, 0 }, { 1, 0 } },
			sideLength = 100,
		})
	end,

	ComplexMatrix = function()
		local _, matrix = QRCode.qrcode("https://www.bbc.com/news", 4)
		return React.createElement(DisplayQRCodeFromMatrix, {
			qrCodeMatrix = matrix,
			sideLength = 200,
		})
	end,

	SuperComplexMatrix = function()
		local _, matrix = QRCode.qrcode(
			"https://ro.blox.com/Ebh5?pid=share&is_retargeting=true&af_dp=roblox%3A%2F%2Fnavigation%2Fshare_links%3Fcode%3D6e5de960f12ec44797d1d974c76605ff%26type%3DFriendInvite&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fshare-links%3Fcode%3D6e5de960f12ec44797d1d974c76605ff%26type%3DFriendInvite",
			2
		)
		return React.createElement(DisplayQRCodeFromMatrix, {
			qrCodeMatrix = matrix,
			sideLength = 400,
		})
	end,

	CustomisedMatrix = function()
		local _, matrix = QRCode.qrcode(
			"https://ro.blox.com/Ebh5?pid=share&is_retargeting=true&af_dp=roblox%3A%2F%2Fnavigation%2Fshare_links%3Fcode%3D6e5de960f12ec44797d1d974c76605ff%26type%3DFriendInvite&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fshare-links%3Fcode%3D6e5de960f12ec44797d1d974c76605ff%26type%3DFriendInvite",
			4
		)
		return React.createElement(DisplayQRCodeFromMatrix, {
			qrCodeMatrix = matrix,
			sideLength = 200,
			pixelColor3 = Color3.new(1, 0, 1),
			backgroundColor3 = Color3.new(0, 1, 0),
		})
	end,

	ReallySmallSideLength = function()
		local _, matrix = QRCode.qrcode(
			"https://ro.blox.com/Ebh5?pid=share&is_retargeting=true&af_dp=roblox%3A%2F%2Fnavigation%2Fshare_links%3Fcode%3D6e5de960f12ec44797d1d974c76605ff%26type%3DFriendInvite&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fshare-links%3Fcode%3D6e5de960f12ec44797d1d974c76605ff%26type%3DFriendInvite",
			4
		)
		return React.createElement(DisplayQRCodeFromMatrix, {
			qrCodeMatrix = matrix,
			sideLength = 1,
		})
	end,
}
