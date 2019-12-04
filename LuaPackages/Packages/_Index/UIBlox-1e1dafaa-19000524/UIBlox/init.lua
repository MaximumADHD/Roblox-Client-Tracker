local makeConfigurable = require(script.Core.Config.makeConfigurable)
local UIBloxDefaultConfig = require(script.UIBloxDefaultConfig)
local Packages = script.Parent

local function initializeLibrary()
	local strict = require(script.Utility.strict)

	local UIBlox = {}

	UIBlox.Core = strict({
		Animation = strict({
			SpringAnimatedItem = require(script.Utility.SpringAnimatedItem),
		}),

		ImageSet = strict({
			Button = require(script.Core.ImageSet.ImageSetComponent).Button,
			Label = require(script.Core.ImageSet.ImageSetComponent).Label,
			Validator = strict({
				validateImage = require(script.Core.ImageSet.Validator.validateImage),
			}),
		}),

		Control = strict({
			Enum = strict({
				ControlState = require(script.Core.Control.Enum.ControlState)
			}),
		}),

		Style = strict({
			Provider = require(script.Style.StyleProvider),
			withStyle = require(script.Style.withStyle),
			Validator = strict({
				validateStyle = require(script.Style.Validator.validateStyle),
				validateFont = require(script.Style.Validator.validateFont),
				validateFontInfo = require(script.Style.Validator.validateFontInfo),
				validateTheme = require(script.Style.Validator.validateTheme),
				validateColorInfo = require(script.Style.Validator.validateColorInfo),
			}),
		}),

		InfiniteScroller = strict(require(Packages.InfiniteScroller)),
	})

	UIBlox.App = strict({
		ImageSet = strict({
			Images = require(script.App.ImageSet.Images),
		}),

		Accordion = strict({
			AccordionView = require(script.App.Accordion.AccordionView),
		}),

		Button = strict({
			PrimaryContextualButton = require(script.App.Button.PrimaryContextualButton),
			PrimarySystemButton = require(script.App.Button.PrimarySystemButton),
			SecondaryButton = require(script.App.Button.SecondaryButton),
			AlertButton = require(script.App.Button.AlertButton),
		}),

		Text = strict({
			ExpandableTextArea = require(script.App.Text.ExpandableTextArea.ExpandableTextArea),
		}),

		Loading = strict({
			LoadableImage = require(script.App.Loading.LoadableImage),
			ShimmerPanel = require(script.App.Loading.ShimmerPanel),
		}),

		InputButton = strict({
			RadioButtonList = require(script.App.InputButton.RadioButtonList),
			CheckboxList = require(script.App.InputButton.CheckboxList),
		}),

		Grid = strict({
			GridView = require(script.App.Grid.GridView),
			GridMetrics = require(script.App.Grid.GridMetrics),
			DefaultMetricsGridView = require(script.App.Grid.DefaultMetricsGridView),
		}),

		Tile = strict({
			Enum = strict({
				ItemTileEnums = require(script.App.Tile.Enum.ItemTileEnums),
			}),
			SaveTile = require(script.App.Tile.SaveTile.SaveTile),
			ItemTile = require(script.App.Tile.ItemTile.ItemTile),
			ItemTileFooter = require(script.App.Tile.ItemTile.ItemTileFooter),
		}),

		Dialog = strict({
			Toast = require(script.App.Dialog.Toast.SlideFromTopToast),
		}),

		Constant = strict({
			IconSize = require(script.App.Constant.IconSize),
		})
	})

	-- DEPRECATED SECTION

	-- DEPRECATED: Use Core.Style instead
	UIBlox.Style = {
		Provider = require(script.Style.StyleProvider),
		withStyle = require(script.Style.withStyle),
		Validator = {
			validateStyle = require(script.Style.Validator.validateStyle),
			validateFont = require(script.Style.Validator.validateFont),
			validateFontInfo = require(script.Style.Validator.validateFontInfo),
			validateTheme = require(script.Style.Validator.validateTheme),
			validateColorInfo = require(script.Style.Validator.validateColorInfo),
		},
	}

	-- DEPRECATED: This is kept for compatibility. Use App.Accordion.AccordionView instead.
	UIBlox.AccordionView = require(script.App.Accordion.AccordionView)

	-- DEPRECATED: This is kept for compatibility. This should not be used because it is an old design.
	-- An up to date version will be added later.
	UIBlox.ModalBottomSheet = require(script.ModalBottomSheet.ModalBottomSheet)

	-- DEPRECATED: This is kept for compatibility.
	UIBlox.Utility = {
		ExternalEventConnection = require(script.Utility.ExternalEventConnection),
		--Use Core.Animation.SpringAnimatedItem instead
		SpringAnimatedItem = require(script.Utility.SpringAnimatedItem),
	}

	-- DEPRECATED: use Core.Loading instead.
	UIBlox.Loading = {
		LoadableImage = require(script.App.Loading.LoadableImage),
		ShimmerPanel = require(script.App.Loading.ShimmerPanel),
	}

	-- DEPRECATED: use App.Tile instead.
	UIBlox.Tile = {
		SaveTile = require(script.App.Tile.SaveTile.SaveTile),
		ItemTile = require(script.App.Tile.ItemTile.ItemTile),
		ItemTileEnums = require(script.App.Tile.Enum.ItemTileEnums),
	}

	-- END DEPRECATED SECTION

	return UIBlox
end

return makeConfigurable(initializeLibrary, "UIBlox", UIBloxDefaultConfig)
