local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local SetContactImporterDisplayLogic = require(ContactImporter.Actions.SetContactImporterDisplayLogic)
local UpdateContactImporterModalLogic = dependencies.SocialModalsCommon.Actions.UpdateContactImporterModalLogic
local SetIsPhoneVerified = require(ContactImporter.Actions.SetIsPhoneVerified)
local UpdateIsDiscoverabilityUnset = dependencies.SocialModalsCommon.Actions.UpdateIsDiscoverabilityUnset

local Rodux = dependencies.Rodux
local llama = dependencies.llama
local Constants = require(ContactImporter.Common.Constants)

type State = {
	[string]: boolean,
	shouldShowContactImporterFeature: boolean,
	hasOSPermissions: boolean,
	isPhoneVerified: boolean,
	canUploadContacts: boolean?,
	shouldShowContactImporterUpsellModal: boolean,
	isDiscoverabilityUnset: boolean,
}

type UpdateContactImporterModalLogicAction = {
	hasOSPermissions: boolean,
	shouldShowContactImporterUpsellModal: boolean,
}

type UpdateIsDiscoverabilityUnsetAction = {
	isDiscoverabilityUnset: boolean,
}

local DEFAULT_STATE: State = {
	[Constants.SHOULD_SHOW_CONTACT_IMPORTER_FEATURE] = false,
	[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = false,
	hasOSPermissions = false,
	isPhoneVerified = false,
	canUploadContacts = false,
	isDiscoverabilityUnset = false,
}

return Rodux.createReducer(DEFAULT_STATE, {
	[SetContactImporterDisplayLogic.name] = function(state: State, action: SetContactImporterDisplayLogic.ParamsType)
		local hasOSPermissions = action.hasOSPermissions
		local isPhoneVerified = action.isPhoneVerified
		local shouldShowContactImporterUpsellAgain = action.shouldShowContactImporterUpsellAgain
		local canUploadContacts = action.canUploadContacts
		local phoneNumberDiscoverability = action.phoneNumberDiscoverability

		local hasUserOptedIntoContactImporter = hasOSPermissions and action.isUserOptedInLocalStorage
		local shouldShowContactImporterFeature = canUploadContacts ~= false

		return {
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_FEATURE] = shouldShowContactImporterFeature,
			-- do not show contact importer upsell if user is already opted in
			-- OR if not enough time has passed since user last seen it
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = not hasUserOptedIntoContactImporter
				and shouldShowContactImporterUpsellAgain,
			hasOSPermissions = hasOSPermissions,
			isPhoneVerified = isPhoneVerified,
			canUploadContacts = canUploadContacts,
			isDiscoverabilityUnset = phoneNumberDiscoverability == Constants.DISCOVERABILITY_UNSET,
		}
	end :: (state: State, action: any) -> State,
	[UpdateContactImporterModalLogic.name] = function(state: State, action: UpdateContactImporterModalLogicAction)
		local newState = llama.Dictionary.join(state, {
			hasOSPermissions = action.hasOSPermissions,
			[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = action[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL],
		})

		return newState
	end,
	[SetIsPhoneVerified.name] = function(state: State, action: SetIsPhoneVerified.ParamsType)
		return llama.Dictionary.join(state, {
			isPhoneVerified = action.isPhoneVerified,
		})
	end,
	[UpdateIsDiscoverabilityUnset.name] = function(state: State, action: UpdateIsDiscoverabilityUnsetAction)
		return llama.Dictionary.join(state, {
			isDiscoverabilityUnset = action.isDiscoverabilityUnset,
		})
	end,
})
