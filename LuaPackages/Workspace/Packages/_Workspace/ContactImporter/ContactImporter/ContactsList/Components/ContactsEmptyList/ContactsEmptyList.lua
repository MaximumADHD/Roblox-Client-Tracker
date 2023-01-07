local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization

local Images = UIBlox.App.ImageSet.Images
local TextKeys = require(ContactImporter.Common.TextKeys)
local ContactsInformationModal = require(ContactImporter.ContactsList.Components.ContactsInformationModal)

local ContactsEmptyList = Roact.PureComponent:extend("ContactsEmptyList")

export type Props = {
	errorTextKey: string,
	layoutOrder: number?,
}

ContactsEmptyList.defaultProps = {
	errorTextKey = TextKeys.EMPTY_STATE,
}

function ContactsEmptyList:render()
	local props: Props = self.props

	return withLocalization({
		emptyState = props.errorTextKey,
	})(function(localizedStrings)
		return Roact.createElement(ContactsInformationModal, {
			image = Images["icons/status/oof_xlarge"],
			layoutOrder = props.layoutOrder,
			text = localizedStrings.emptyState,
		})
	end)
end

return ContactsEmptyList
