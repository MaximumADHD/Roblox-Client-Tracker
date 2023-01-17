local UserSearch = script:FindFirstAncestor("UserSearch")
local CollectionService = game:GetService("CollectionService")

local Packages = UserSearch.Parent

local React = require(Packages.React)
local Roact = require(Packages.Roact)

local ITEMINDEX_ATTRIBUTE = "ITEMINDEX"

type Props = {
	index: number,
	impressionsTag: string,
	renderComponent: () -> React.Element<any>,
}

local ImpressionsTagWrapper = React.PureComponent:extend("ImpressionsTagWrapper")

function ImpressionsTagWrapper:init()
	self.tileRef = React.createRef()

	self.setImpressionsTag = function()
		local props: Props = self.props

		local tileInstance = self.tileRef and self.tileRef.current
		if tileInstance then
			local index = props.index
			local impressionsTag = props.impressionsTag
			if index and impressionsTag then
				tileInstance:SetAttribute(ITEMINDEX_ATTRIBUTE, index)
				if not CollectionService:HasTag(tileInstance, impressionsTag) then
					CollectionService:AddTag(tileInstance, impressionsTag)
				end
			else
				warn("AppPlayerTile: MISSING itemIndex or impressionsTag")
			end
		end
	end

	self.removeImpressionsTag = function()
		local props: Props = self.props

		local tileInstance = self.tileRef and self.tileRef.current
		if tileInstance then
			local impressionsTag = props.impressionsTag
			if impressionsTag then
				CollectionService:RemoveTag(tileInstance, impressionsTag)
			end
		end
	end
end

function ImpressionsTagWrapper:didMount()
	self.setImpressionsTag()
end

function ImpressionsTagWrapper:didUpdate(prevProps, prevState)
	local props: Props = self.props

	local index = props.index
	if prevProps.index ~= index then
		self.setImpressionsTag()
	end
end

function ImpressionsTagWrapper:willUnmount()
	self.removeImpressionsTag()
end

function ImpressionsTagWrapper:render()
	local props: Props = self.props

	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		LayoutOrder = props.index,
		[Roact.Ref] = self.tileRef,
	}, {
		ComponentWithImpressionsTag = props.renderComponent(),
	})
end

return ImpressionsTagWrapper
