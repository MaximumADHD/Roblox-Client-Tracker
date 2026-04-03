local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")

local ReactUtils = require(CorePackages.Packages.ReactUtils)
local React = require(CorePackages.Packages.React)
local UnibarMenu = require(Root.Unibar.UnibarMenu)
local UnibarStyle = require(CorePackages.Workspace.Packages.Chrome).UnibarStyle
local TooltipProvider = require(Root.Unibar.Tooltips.TooltipProvider)
local RoactAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy).RoactAppPolicy
local AppFeaturePolicies = require(CorePackages.Workspace.Packages.UniversalAppPolicy).AppFeaturePolicies

local ChromeSharedFlags = require(Root.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local function UnibarMenuWrapper(props: UnibarMenu.UnibarMenuProp)
	return React.createElement(ReactUtils.ContextStack, {
		providers = {
			React.createElement(RoactAppPolicy.Provider, {
				policy = {
					AppFeaturePolicies,
				},
			}),
			React.createElement(TooltipProvider),
			if FFlagTokenizeUnibarConstantsWithStyleProvider
				then React.createElement(UnibarStyle.Provider)
				else nil :: any,
		},
	}, {
		UnibarMenu = React.createElement(UnibarMenu, props),
	})
end

return UnibarMenuWrapper
