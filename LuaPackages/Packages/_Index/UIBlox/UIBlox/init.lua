return {
	Style = {
		Provider = require(script.Style.StyleProvider),
		withStyle = require(script.Style.withStyle),
		Validator = {
			validateStyle = require(script.Style.Validator.validateStyle),
			validateFont = require(script.Style.Validator.validateFont),
			validateFontInfo = require(script.Style.Validator.validateFontInfo),
			validateTheme = require(script.Style.Validator.validateTheme),
			validateColorInfo = require(script.Style.Validator.validateColorInfo),
		},
	},

	Core = {
		Animation = {
			SpringAnimatedItem = require(script.Utility.SpringAnimatedItem),
		},

		ImageSet = {
			Button = require(script.ImageSet.ImageSetComponent).Button,
			Label = require(script.ImageSet.ImageSetComponent).Label,
		},

		Control = {
			Enum = {
				ControlState = require(script.Core.Control.Enum.ControlState)
			},
		},
	},

	App = {
		Accordion = {
			AccordionView = require(script.App.Accordion.AccordionView),
		},

		Button = {
			PrimaryContextualButton = require(script.App.Button.PrimaryContextualButton),
			PrimarySystemButton = require(script.App.Button.PrimarySystemButton),
			SecondaryButton = require(script.App.Button.SecondaryButton),
			AlertButton = require(script.App.Button.AlertButton),
		},

		Text = {
			ExpandableTextArea = require(script.App.Text.ExpandableTextArea.ExpandableTextArea),
		},

		Loading = {
			LoadableImage = require(script.App.Loading.LoadableImage),
			ShimmerPanel = require(script.App.Loading.ShimmerPanel),
		},
		InputButton = {
			RadioButtonList = require(script.App.InputButton.RadioButtonList),
			CheckboxList = require(script.App.InputButton.CheckboxList),
		},

		Grid = {
			GridMetrics = require(script.App.Grid.GridMetrics),
			DefaultMetricsGridView = require(script.App.Grid.DefaultMetricsGridView),
		},

		Tile = {
			Enum = {
				ItemTileEnums = require(script.App.Tile.Enum.ItemTileEnums),
			},
			SaveTile = require(script.App.Tile.SaveTile.SaveTile),
			ItemTile = require(script.App.Tile.ItemTile.ItemTile),
		},

		Dialog = {
			Toast = require(script.App.Dialog.Toast.SlideFromTopToast),
		},
	},

	Story = {
		OverviewStoryItem = require(script.Story.OverviewStoryItem),
	},

	-- DEPRECATED SECTION
	-- DEPRECATED: This is kept for compatibility. Use App.Accordion.AccordionView
	-- instead.
	AccordionView = require(script.App.Accordion.AccordionView),

	-- DEPRECATED: This is kept for compatibility. This should not be used because it is an old design.
	-- An up to date version will be added later.
	ModalBottomSheet = require(script.ModalBottomSheet.ModalBottomSheet),

	-- DEPRECATED: This is kept for compatibility.
	Utility = {
		ExternalEventConnection = require(script.Utility.ExternalEventConnection),
		--Use Core.Animation.SpringAnimatedItem instead
		SpringAnimatedItem = require(script.Utility.SpringAnimatedItem),
	},

	--DEPRECATED
	--use Core.Loading instead
	Loading = {
		LoadableImage = require(script.App.Loading.LoadableImage),
		ShimmerPanel = require(script.App.Loading.ShimmerPanel),
	},
	--DEPRECATED
	--use App.Tile instead
	Tile = {
		SaveTile = require(script.App.Tile.SaveTile.SaveTile),
		ItemTile = require(script.App.Tile.ItemTile.ItemTile),
		ItemTileEnums = require(script.App.Tile.Enum.ItemTileEnums),
	},
	-- END DEPRECATED SECTION
}