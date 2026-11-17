local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local InExperienceShop = require(CorePackages.Workspace.Packages.InExperienceShop)
local FFlagEnableFreeTrialTopBarChip = InExperienceShop.FFlagEnableFreeTrialTopBarChip
local FreeTrialTopBarSlot = if FFlagEnableFreeTrialTopBarChip then InExperienceShop.FreeTrialTopBarSlot else nil

local Chrome = script.Parent.Parent.Parent.Parent.Chrome
local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled

local FreeTrialChipHostView = require(script.Parent.FreeTrialChipHostView)

-- V2 shares a parent with the health bar, so the default lifts the chip above that sibling.
local DEFAULT_ZINDEX = 100

type ViewProps = FreeTrialChipHostView.Props

export type Props = {
	-- Right edge of the chip, in the parent frame.
	position: UDim2,
	-- Width budget. The chip stays on the right edge of this box and may cover controls inside it.
	size: UDim2,
	zIndex: number?,
	visible: (boolean | React.Binding<boolean>)?,
}

local function openInExperienceShop()
	if not ChromeEnabled() then
		return
	end
	if InExperienceShop.FFlagCenterInExperienceShopWindow then
		require(Chrome.Integrations.InExperienceShop.ShopWindowLayout).toggleInExperienceShopWindow()
	else
		local ChromeConstants = require(Chrome.ChromeShared.Unibar.Constants)
		require(Chrome.Service):toggleWindow(ChromeConstants.IN_EXPERIENCE_SHOP_ID)
	end
end

local function useFreeTrialChipHostViewModel(props: Props): ViewProps?
	local maxWidth, setMaxWidth = React.useState(nil :: number?)
	local slot = FreeTrialTopBarSlot
	if slot == nil then
		return nil
	end

	return {
		position = props.position,
		size = props.size,
		zIndex = if props.zIndex ~= nil then props.zIndex else DEFAULT_ZINDEX,
		visible = props.visible,
		maxWidth = maxWidth,
		onAbsoluteSizeChanged = function(rbx: GuiObject)
			local width = rbx.AbsoluteSize.X
			if width > 0 and width ~= maxWidth then
				setMaxWidth(width)
			end
		end,
		onActivated = openInExperienceShop,
		slot = slot,
	}
end

return useFreeTrialChipHostViewModel
