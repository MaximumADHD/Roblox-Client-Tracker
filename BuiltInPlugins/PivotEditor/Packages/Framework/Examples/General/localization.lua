return function(plugin)
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Plugin = ContextServices.Plugin
	local Localization = ContextServices.Localization
	local Dialog = require(Framework.StudioUI).Dialog

	local Label = require(script.Label)

	local stringResourceTable = script.DevelopmentReferenceTable
	local translationResourceTable = script.TranslationReferenceTable

	local pluginItem = Plugin.new(plugin)
	local localization = Localization.new({
		stringResourceTable = stringResourceTable,
		translationResourceTable = translationResourceTable,
		pluginName = "Framework",
	})

	local ExampleLabel = Roact.PureComponent:extend("ExampleLabel")

	function ExampleLabel:init()
		self.state = {
			enabled = true,
		}

		self.close = function()
			self:setState({
				enabled = false,
			})
		end
	end

	function ExampleLabel:render()
		local enabled = self.state.enabled
		if not enabled then
			return
		end

		return ContextServices.provide({pluginItem, localization}, {
			Main = Roact.createElement(Dialog, {
				Enabled = enabled,
				Title = "Localization Example",
				Size = Vector2.new(200, 200),
				Resizable = false,
				OnClose = self.close,
			}, {
				Label = Roact.createElement(Label, {
					Name = "ZeroIndex",
				}),
			})
		})
	end

	local element = Roact.createElement(ExampleLabel)
	local handle = Roact.mount(element)

	local function stop()
		Roact.unmount(handle)
	end

	return stop
end
