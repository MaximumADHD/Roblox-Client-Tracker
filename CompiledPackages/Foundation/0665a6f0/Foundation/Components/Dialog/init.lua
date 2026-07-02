local DialogActions = require(script.Actions)
local DialogContent = require(script.Content)
local DialogHeroMedia = require(script.HeroMedia)
local DialogRoot = require(script.Dialog)
local DialogText = require(script.Text)
local DialogTitle = require(script.Title)

export type DialogProps = DialogRoot.DialogProps
export type DialogActionsProps = DialogActions.DialogActionsProps
export type DialogContentProps = DialogContent.DialogContentProps
export type DialogTextProps = DialogText.DialogTextProps
export type DialogHeroMediaProps = DialogHeroMedia.DialogHeroMediaProps
export type DialogTitleProps = DialogTitle.DialogTitleProps

return {
	Root = DialogRoot,
	Actions = DialogActions,
	Content = DialogContent,
	Text = DialogText,
	HeroMedia = DialogHeroMedia,
	Title = DialogTitle,
}
