return {
	-- DEPRECATED: This is kept for compatibility. Use Accordion.AccordionView
	-- instead.
	AccordionView = require(script.Accordion.AccordionView),

	Accordion = {
		AccordionView = require(script.Accordion.AccordionView),
	},
	Style = {
		Provider = require(script.Style.StyleProvider),
		Consumer = require(script.Style.StyleConsumer),
		withStyle = require(script.Style.withStyle),
		Validator = {
			validateStyle = require(script.Style.Validator.validateStyle),
			validateFont = require(script.Style.Validator.validateFont),
			validateTheme = require(script.Style.Validator.validateTheme),
		},
	},
	ImageSet = {
		Button = require(script.ImageSet.ImageSetComponent).Button,
		Label = require(script.ImageSet.ImageSetComponent).Label,
	},
	Tile = {
		ItemTile = require(script.Tile.ItemTile.ItemTile),
		ItemTileEnums = require(script.Tile.ItemTile.ItemTileEnums),
	},
	Grid = {
		Metrics = require(script.Grid.GridMetrics),
		DefaultMetricsView = require(script.Grid.DefaultMetricsGridView),
	},
	Loading = {
		LoadableImage = require(script.Loading.LoadableImage),
		ShimmerPanel = require(script.Loading.ShimmerPanel),
	},
	ModalBottomSheet = require(script.ModalBottomSheet.ModalBottomSheet),
	Utility = {
		ExternalEventConnection = require(script.Utility.ExternalEventConnection),
		SpringAnimatedItem = require(script.Utility.SpringAnimatedItem),
	},
	ExpandableTextArea = require(script.ExpandableTextArea.ExpandableTextArea),
}
