local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ShareGameComponents = script.Parent

local ShareGameContainer = require(ShareGameComponents.ShareGameContainer)
local ModalShareGamePageFrame = require(ShareGameComponents.ModalShareGamePageFrame)
local LayoutProvider = require(ShareGameComponents.LayoutProvider)

local FullModalShareGameComponent = Roact.PureComponent:extend("FullModalShareGameComponent")

function FullModalShareGameComponent:render()
	local isVisible = self.props.isVisible
	local analytics = self.props.analytics
	local onAfterClosePage = self.props.onAfterClosePage
	local store = self.props.store

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		screenGui = Roact.createElement("ScreenGui", {
			Enabled = isVisible,
			DisplayOrder = -1,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			layoutProvider = Roact.createElement(LayoutProvider, nil, {
				ShareGameContainer = Roact.createElement(ShareGameContainer, {
					analytics = analytics,
					isVisible = isVisible,
					skeletonComponent = ModalShareGamePageFrame,
					onAfterClosePage = function()
						local sentToUserIds = {}
						for userId, _ in pairs(store:getState().Invites) do
							table.insert(sentToUserIds, userId)
						end
						onAfterClosePage(sentToUserIds)
					end,
				})
			})
		}),
	})
end

return FullModalShareGameComponent