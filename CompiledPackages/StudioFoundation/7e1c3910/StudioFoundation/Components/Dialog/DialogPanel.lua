local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local Foundation = require(Packages.Foundation)
local Framework = require(Packages.Framework)
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local Signals = require(Packages.Signals)
local FoundationProviderAdapter = require(Main.Components.FoundationProviderAdapter)
local StudioUri = require(Main.Util.StudioUri)
local uriToTestId = require(Main.Util.uriToTestId)

local Plugin = Framework.ContextServices.Plugin
local e = React.createElement
local useTokens = Foundation.Hooks.useTokens

export type Props = {
	uri: StudioUri,
	getSize: Signals.getter<Vector2>,
	onClose: () -> ()?,
	children: React.ReactNode?,
}

local function DialogPanel(props: Props)
	local plugin: Plugin = Plugin.use():get()
	local tokens = useTokens()
	local titleBarColor = tokens.Color.Surface.Surface_200.Color3

	-- TODO (STUDIOPLAT-41649): This shouldn't be needed once PanelsManager:CreateAsync exists
	local dialogId = React.useMemo(function()
		return `Dialog_{uriToTestId(props.uri)}`
	end, { props.uri })

	local panels = React.useMemo(function()
		return plugin:GetPluginComponent("Panels") :: Panels
	end, { plugin })

	-- TODO (STUDIOPLAT-41649): This shouldn't be needed once PanelsManager:CreateAsync exists
	local panelUri = React.useMemo(function()
		return StudioUri.join(plugin:GetUri(), {
			Category = "Panels",
			ItemId = dialogId,
		})
	end, { plugin, dialogId } :: { unknown })

	-- TODO: When the turbofish operator is added to Luau, replace with this:
	-- local panel, setPanel = React.useState<<PluginGui?>>(nil)
	local panel: PluginGui?, setPanel = React.useState(nil :: PluginGui?)

	React.useEffect(
		function()
			local newPanel

			local thread = task.spawn(function()
				newPanel = plugin:CreateQWidgetPluginGui(dialogId, {
					Id = dialogId,
					InitialEnabled = true,
					Modal = true,
					-- Vector2.max is not in the selene standard library yet
					-- selene: allow(incorrect_standard_library_use)
					Size = Vector2.max(props.getSize(false), Vector2.new(1, 1)),
					DisableTitleBar = props.onClose == nil,
					TitleBarColor = titleBarColor,
				})
				if newPanel:IsA("PluginGui") and props.onClose then
					newPanel:BindToClose(props.onClose)
				end
				newPanel.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				setPanel(newPanel)
			end)

			return function()
				task.cancel(thread)
				if newPanel then
					newPanel:Destroy()
				end
				setPanel(nil)
			end
		end,
		{
			plugin,
			dialogId,
			props.getSize,
			setPanel,
			titleBarColor,
		} :: { unknown }
	)

	React.useEffect(function(): (() -> ())?
		if not panel then
			return nil
		end

		-- Update the panel size when the getSize signal updates
		-- Returns a disposal function
		return Signals.createEffect(function(scope)
			-- selene: allow(incorrect_standard_library_use)
			local size = Vector2.max(props.getSize(scope), Vector2.new(1, 1))
			task.spawn(function()
				panels:SetSizeAsync(panelUri, size)
			end)
		end)
	end, { panel, props.getSize, panels, panelUri } :: { unknown })

	-- Don't render anything, including children, if the dialog is not yet created
	if not panel then
		return nil
	end

	return ReactRoblox.createPortal(
		e(FoundationProviderAdapter, {
			overlayGui = panel :: GuiBase2d,
		}, props.children),
		panel
	)
end

return React.memo(DialogPanel)
