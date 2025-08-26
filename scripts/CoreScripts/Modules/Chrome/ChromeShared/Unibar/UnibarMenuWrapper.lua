local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")

local ReactUtils = require(CorePackages.Packages.ReactUtils)
local React = require(CorePackages.Packages.React)
local UnibarMenu = require(Root.Unibar.UnibarMenu)
local UnibarStyle = require(Root.Unibar.UnibarStyle)
local TooltipProvider = require(Root.Unibar.Tooltips.TooltipProvider)
local FFlagEnableUnibarTooltipQueue = require(Root.Parent.Flags.FFlagEnableUnibarTooltipQueue)()
local UIBlox = require(CorePackages.Packages.UIBlox)
local RoactAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy).RoactAppPolicy
local AppFeaturePolicies = require(CorePackages.Workspace.Packages.UniversalAppPolicy).AppFeaturePolicies

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagAdaptUnibarAndTiltSizing = SharedFlags.GetFFlagAdaptUnibarAndTiltSizing()

local ChromeSharedFlags = require(Root.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local SelectionCursorProvider = if FFlagAdaptUnibarAndTiltSizing
	then nil
	else UIBlox.App.SelectionImage.SelectionCursorProvider

local function UnibarMenuWrapper(props: UnibarMenu.UnibarMenuProp)
	return React.createElement(ReactUtils.ContextStack, {
		providers = if FFlagAdaptUnibarAndTiltSizing
			then {
				React.createElement(RoactAppPolicy.Provider, {
					policy = {
						AppFeaturePolicies,
					},
				}),
				if FFlagEnableUnibarTooltipQueue then React.createElement(TooltipProvider) else nil :: any,
				if FFlagTokenizeUnibarConstantsWithStyleProvider
					then React.createElement(UnibarStyle.Provider)
					else nil :: any,
			}
			else {
				React.createElement(SelectionCursorProvider),
				React.createElement(RoactAppPolicy.Provider, {
					policy = {
						AppFeaturePolicies,
					},
				}),
				if FFlagEnableUnibarTooltipQueue then React.createElement(TooltipProvider) else nil :: any,
				if FFlagTokenizeUnibarConstantsWithStyleProvider
					then React.createElement(UnibarStyle.Provider)
					else nil :: any,
			},
	}, {
		UnibarMenu = React.createElement(UnibarMenu, props),
	})
end

return UnibarMenuWrapper
