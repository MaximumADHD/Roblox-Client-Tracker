return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local PreviewViewport = require(script.Parent.PreviewViewport)

	local closePreviewView = function() end

	describe("PreviewViewport", function()
		it("should create and destroy without errors for an AnimationClip", function()
			local animationClip = Instance.new("KeyframeSequence")
			local keyframe = Instance.new("Keyframe")
			keyframe.Parent = animationClip

			local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				PreviewViewport = Roact.createElement(PreviewViewport, {
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

			local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				PreviewViewport = Roact.createElement(PreviewViewport, {
					asset = model,
					closePreviewView = closePreviewView,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
