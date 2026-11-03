local tokens = script.tokens
local ComponentTypes = require(tokens.Schema.Types.ComponentType)
local GlobalTypes = require(tokens.Schema.Types.GlobalType)
local SemanticTypes = require(tokens.Schema.Types.SemanticType)

export type ComponentType = ComponentTypes.TYPE
export type GlobalType = GlobalTypes.TYPE
export type SemanticType = SemanticTypes.TYPE

return {
	tokens = {
		Common = {
			Builder = {
				Dark = {
					Component = require(tokens.Common.Builder.Dark.Component),
					Global = require(tokens.Common.Builder.Dark.Global),
					Semantic = require(tokens.Common.Builder.Dark.Semantic),
				},
				Light = {
					Component = require(tokens.Common.Builder.Light.Component),
					Global = require(tokens.Common.Builder.Light.Global),
					Semantic = require(tokens.Common.Builder.Light.Semantic),
				},
			},
			Dark = {
				Component = require(tokens.Common.Dark.Component),
				Global = require(tokens.Common.Dark.Global),
				Semantic = require(tokens.Common.Dark.Semantic),
			},
			Light = {
				Component = require(tokens.Common.Light.Component),
				Global = require(tokens.Common.Light.Global),
				Semantic = require(tokens.Common.Light.Semantic),
			},
		},
		Console = {
			Dark = {
				Component = require(tokens.Console.Dark.Component),
				Global = require(tokens.Console.Dark.Global),
				Semantic = require(tokens.Console.Dark.Semantic),
			},
			Light = {
				Component = require(tokens.Console.Light.Component),
				Global = require(tokens.Console.Light.Global),
				Semantic = require(tokens.Console.Light.Semantic),
			},
		},
		Desktop = {
			Builder = {
				Dark = {
					Component = require(tokens.Desktop.Builder.Dark.Component),
					Global = require(tokens.Desktop.Builder.Dark.Global),
					Semantic = require(tokens.Desktop.Builder.Dark.Semantic),
				},
				Light = {
					Component = require(tokens.Desktop.Builder.Light.Component),
					Global = require(tokens.Desktop.Builder.Light.Global),
					Semantic = require(tokens.Desktop.Builder.Light.Semantic),
				},
			},
			Dark = {
				Component = require(tokens.Desktop.Dark.Component),
				Global = require(tokens.Desktop.Dark.Global),
				Semantic = require(tokens.Desktop.Dark.Semantic),
			},
			Light = {
				Component = require(tokens.Desktop.Light.Component),
				Global = require(tokens.Desktop.Light.Global),
				Semantic = require(tokens.Desktop.Light.Semantic),
			},
		},
		Schema = {
			Map = {
				Component = require(tokens.Schema.Map.Component),
				Global = require(tokens.Schema.Map.Global),
				Semantic = require(tokens.Schema.Map.Semantic),
			},
			Validators = {
				validateComponent = require(tokens.Schema.Validators.validateComponent),
				validateGlobal = require(tokens.Schema.Validators.validateGlobal),
				validateSemantic = require(tokens.Schema.Validators.validateSemantic),
			},
		},
	},
}
