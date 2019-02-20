local CorePackages = game:GetService("CorePackages")

local ShareGameDirectory = script.Parent

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)

local AppReducer = require(ShareGameDirectory.AppReducer)

local ShareGameContainer = require(ShareGameDirectory.Components.ShareGameContainer)
local ModalShareGamePageFrame = require(ShareGameDirectory.Components.ModalShareGamePageFrame)
local LayoutProvider = require(ShareGameDirectory.Components.LayoutProvider)

return function(root, props)
	local store = Rodux.Store.new(AppReducer, nil, { Rodux.thunkMiddleware })

	local instance
	local shareGameApp = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		screenGui = Roact.createElement("ScreenGui", {
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			layoutProvider = Roact.createElement(LayoutProvider, nil, {
				ShareGameContainer = Roact.createElement(ShareGameContainer, {
					analytics = props.analytics,
					skeletonComponent = ModalShareGamePageFrame,
					onAfterClosePage = function()
						local sentToUserIds = {}
						for userId, _ in pairs(store:getState().Invites) do
							table.insert(sentToUserIds, userId)
						end
						Roact.unmount(instance)
						props.onAfterClosePage(sentToUserIds)
					end,
				})
			})
		}),
	})

	instance = Roact.mount(shareGameApp, root, "root")
	return instance
end

