local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local devDependencies = require(ContactImporter.devDependencies)
local Rodux = dependencies.Rodux
local SetContactImporterDisplayLogic = require(ContactImporter.Actions.SetContactImporterDisplayLogic)
local SetIsPhoneVerified = require(ContactImporter.Actions.SetIsPhoneVerified)
local Constants = require(ContactImporter.Common.Constants)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach

local ShowContactImporterParams = require(script.Parent.ShowContactImporterParams)

describe("ShowContactImporterParams", function()
	local store

	beforeEach(function()
		store = Rodux.Store.new(ShowContactImporterParams, false, { Rodux.thunkMiddleware })
	end)

	it("SHOULD add contact importer params to state", function()
		local showParams = {
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_AGAIN] = true,
			["hasOSPermissions"] = false,
			["isPhoneVerified"] = true,
			["canUploadContacts"] = true,
			["isDiscoverabilityUnset"] = false,
		}

		store:dispatch(SetContactImporterDisplayLogic(showParams))

		jestExpect(store:getState()).toEqual({
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_FEATURE] = true,
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = true,
			["hasOSPermissions"] = false,
			["isPhoneVerified"] = true,
			["canUploadContacts"] = true,
			["isDiscoverabilityUnset"] = false,
		})
	end)

	it("SHOULD add and update contact importer params to state", function()
		local showParams = {
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_AGAIN] = true,
			["hasOSPermissions"] = false,
			["isPhoneVerified"] = true,
			["canUploadContacts"] = true,
			["isDiscoverabilityUnset"] = true,
		}

		store:dispatch(SetContactImporterDisplayLogic(showParams))

		jestExpect(store:getState()).toEqual({
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_FEATURE] = true,
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = true,
			["hasOSPermissions"] = false,
			["isPhoneVerified"] = true,
			["canUploadContacts"] = true,
			["isDiscoverabilityUnset"] = false,
		})

		local newParams = {
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_AGAIN] = false,
			["hasOSPermissions"] = false,
			["isPhoneVerified"] = true,
			["canUploadContacts"] = true,
			["isDiscoverabilityUnset"] = false,
		}

		store:dispatch(SetContactImporterDisplayLogic(newParams))

		jestExpect(store:getState()).toEqual({
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_FEATURE] = true,
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = false,
			["hasOSPermissions"] = false,
			["isPhoneVerified"] = true,
			["canUploadContacts"] = true,
			["isDiscoverabilityUnset"] = false,
		})
	end)

	it("SHOULD update isPhoneVerified to state", function()
		local showParams = {
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_AGAIN] = true,
			["hasOSPermissions"] = false,
			["isPhoneVerified"] = true,
			["canUploadContacts"] = true,
			["isDiscoverabilityUnset"] = false,
		}

		store:dispatch(SetContactImporterDisplayLogic(showParams))

		jestExpect(store:getState()).toEqual({
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_FEATURE] = true,
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = true,
			["hasOSPermissions"] = false,
			["isPhoneVerified"] = true,
			["canUploadContacts"] = true,
			["isDiscoverabilityUnset"] = false,
		})

		local phoneVerifiedParams = {
			["isPhoneVerified"] = false,
		}

		store:dispatch(SetIsPhoneVerified(phoneVerifiedParams))

		jestExpect(store:getState()).toEqual({
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_FEATURE] = true,
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = true,
			["hasOSPermissions"] = false,
			["isPhoneVerified"] = false,
			["canUploadContacts"] = true,
			["isDiscoverabilityUnset"] = false,
		})
	end)
end)
