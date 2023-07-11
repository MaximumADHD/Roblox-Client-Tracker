return function()
	local CorePackages = game:GetService("CorePackages")

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local AssetPreviewViewport = require(script.Parent.AssetPreviewViewport)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local closePreviewView = function() end

	describe("AssetPreviewViewport", function()
		it("should create and destroy without errors for an AnimationClip", function()
			local animationClip = Instance.new("KeyframeSequence")
			local keyframe = Instance.new("Keyframe")
			keyframe.Parent = animationClip

			local element = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				AssetPreviewViewport = Roact.createElement(AssetPreviewViewport, {
					asset = animationClip,
					closePreviewView = closePreviewView,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should create and destroy without errors for a Model", function()
			local model = Instance.new("Model")
			local part = Instance.new("Part")
			part.Parent = model

			local element = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				AssetPreviewViewport = Roact.createElement(AssetPreviewViewport, {
					asset = model,
					closePreviewView = closePreviewView,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
