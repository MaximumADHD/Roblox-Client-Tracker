local HttpService = game:GetService("HttpService")

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local Dash = require(Packages.Dash)

local Text = require(Foundation.Components.Text)
local Button = require(Foundation.Components.Button)
local View = require(Foundation.Components.View)
local OverlayProvider = require(script.Parent.OverlayProvider)
local useOverlay = require(script.Parent.useOverlay)

local Wrappers = require(Foundation.Utility.Wrappers)
local CoreGui = Wrappers.Services.CoreGui
local RunService = Wrappers.Services.RunService
local Players = Wrappers.Services.Players

local PlayerGui = if Players.LocalPlayer and RunService:IsRunning()
	then Players.LocalPlayer:WaitForChild("PlayerGui", 3)
	else nil
local isPluginSecurity = require(Foundation.Utility.isPluginSecurity)
local mainGui = if isPluginSecurity() then CoreGui else PlayerGui :: PlayerGui

local function getFoundationOverlays()
	return Dash.filter(mainGui:GetChildren(), function(child)
		return child.Name == "FoundationOverlay"
	end)
end

local overlayIdCache = {}

local function OverlayRenderer()
	local overlay = useOverlay()
	local name = if overlay ~= nil then overlay:GetFullName() else "N/A"
	local overlayGuid = if overlay ~= nil
		then Dash.getOrSet(overlayIdCache, overlay, function()
			return HttpService:GenerateGUID(false)
		end)
		else "N/A"

	return React.createElement(React.Fragment, nil, {
		Text = React.createElement(Text, {
			tag = "auto-xy text-wrap text-align-x-left",
			Text = `Overlay: {name}\nUUID: {overlayGuid}`,
			LayoutOrder = 2,
		}),
		Overlay = if overlay
			then ReactRoblox.createPortal(
				React.createElement(View, {
					tag = "auto-xy padding-medium bg-system-contrast",
					Position = UDim2.fromScale(0.5, 0.5),
				}, {
					OverlayContent = React.createElement(Text, {
						tag = "auto-xy content-inverse-emphasis",
						Text = "Overlay content",
					}),
				}),
				overlay
			)
			else nil,
	})
end

local function OverlayConsumer()
	local isMounted, setIsMounted = React.useState(false)

	return React.createElement(View, {
		tag = "row gap-medium size-full-1500 auto-x align-y-center items-center",
	}, {
		Text = if isMounted
			then React.createElement(OverlayRenderer)
			else React.createElement(Text, {
				tag = "auto-xy text-wrap text-align-x-left",
				Text = "Overlay not mounted",
				LayoutOrder = 2,
			}),
		Button = React.createElement(Button, {
			tag = "auto-y size-full-0 text-wrap text-align-x-left",
			text = isMounted and "Unmount Overlay" or "Mount Overlay",
			LayoutOrder = 1,
			onActivated = function()
				setIsMounted(not isMounted)
			end,
		}),
	})
end

return {
	summary = "useOverlay",
	stories = {
		useOverlay = {
			name = "useOverlay",
			summary = "Provides access to the overlay",
			story = function()
				local overlay = useOverlay()
				local name = if overlay ~= nil then overlay:GetFullName() else "N/A"
				local text = `Overlay Name: {name}`

				return React.createElement(Text, {
					tag = "auto-y align-x-center size-full-0 text-wrap",
					Text = text,
				})
			end,
		},
		lazyOverlay = {
			name = "Lazy Overlay Mounting",
			summary = "Does not eagerly pollute workspace with FoundationOverlay instances (Flags.FoundationLazyOverlayLoading must be enabled)",
			story = function()
				local initialOverlays = React.useRef(getFoundationOverlays()).current
				local currentOverlays, setCurrentOverlays = React.useState({})

				React.useEffect(function()
					for _, overlay in initialOverlays do
						local guid = HttpService:GenerateGUID(false)
						overlayIdCache[overlay] = guid
					end
				end, {})

				local updateCurrentOverlays = React.useCallback(function()
					setCurrentOverlays(getFoundationOverlays())
				end, { mainGui })

				React.useEffect(function()
					local connections = {
						mainGui.ChildAdded:Connect(updateCurrentOverlays),
						mainGui.ChildRemoved:Connect(updateCurrentOverlays),
					}

					updateCurrentOverlays()

					return function()
						for _, connection in connections do
							connection:Disconnect()
						end
					end
				end, { mainGui })

				local overlayConsumers: { React.ReactNode } = {
					React.createElement(Text, {
						key = "OverlayCount",
						tag = "auto-y size-full-0 text-wrap text-align-x-left margin-bottom-medium",
						Text = `Initial FoundationOverlay Count: {#initialOverlays}\nCurrent FoundationOverlay Count: {#currentOverlays}`,
					}),
				}

				for i = 1, 10 do
					table.insert(
						overlayConsumers,
						React.createElement(OverlayProvider, {}, {
							[`OverlayConsumer{i}`] = React.createElement(OverlayConsumer) :: React.ReactNode,
						})
					)
				end

				return React.createElement(View, {
					tag = "col gap-small auto-xy",
				}, overlayConsumers)
			end,
		},
	},
}
