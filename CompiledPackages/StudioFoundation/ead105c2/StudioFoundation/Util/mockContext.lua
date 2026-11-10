local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local StylingService = game:GetService("StylingService")

local Framework = require(Packages.Framework)
local React = require(Packages.React)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local FoundationProviderAdapter = require(Main.Components.FoundationProviderAdapter)

local provideMockContext = Framework.TestHelpers.provideMockContext
local document = ReactTestingLibrary.document
local e = React.createElement

-- Wrapper that forces StylingService to update after each render
local function StyleWrapper(props)
	React.useEffect(function()
		StylingService:UpdateUnitTestOnly()
	end)

	return e(React.Fragment, nil, props.children)
end

return function(children: { [any]: any })
	return provideMockContext({}, {
		Root = e(FoundationProviderAdapter, {
			theme = "Dark",
			overlayGui = document.Parent,
		}, {
			Wrapped = e(StyleWrapper, nil, children),
		}),
	})
end
