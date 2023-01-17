local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local dependencies = require(ContactImporter.dependencies)
local jest = devDependencies.jest
local Promise = dependencies.Promise

return function()
	return {
		default = {
			sendSMS = jest.fn().mockReturnValue(Promise.resolve(true)),
			supportsSMS = jest.fn().mockReturnValue(Promise.resolve(true)),
			switchToSettingsApp = jest.fn().mockReturnValue(Promise.resolve()),
			supportsSwitchToSettingsApp = jest.fn().mockReturnValue(Promise.resolve(true)),
		},
	}
end
