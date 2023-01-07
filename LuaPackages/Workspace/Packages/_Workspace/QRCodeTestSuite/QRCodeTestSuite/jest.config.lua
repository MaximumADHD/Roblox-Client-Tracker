local Root = script.Parent
local Packages = Root.Parent

return {
	projects = {
		require(Packages.ProfileQRCode)["jest.config"] :: any,
		require(Packages.QRCodeDisplay)["jest.config"],
	},
}
