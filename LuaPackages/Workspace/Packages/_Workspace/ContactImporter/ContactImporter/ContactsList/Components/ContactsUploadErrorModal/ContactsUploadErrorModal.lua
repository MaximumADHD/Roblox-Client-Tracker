local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization

local Images = UIBlox.App.ImageSet.Images
local TextKeys = require(ContactImporter.Common.TextKeys)
local ContactsInformationModal = require(ContactImporter.ContactsList.Components.ContactsInformationModal)

local ContactsUploadErrorModal = Roact.PureComponent:extend("ContactsUploadErrorModal")

function ContactsUploadErrorModal:render()
	return withLocalization({
		hasUploadError = TextKeys.UPLOAD_CONTACTS_FAILURE,
	})(function(localizedStrings)
		return Roact.createElement(ContactsInformationModal, {
			image = Images["icons/status/alert"],
			text = localizedStrings.hasUploadError,
		})
	end)
end

return ContactsUploadErrorModal
