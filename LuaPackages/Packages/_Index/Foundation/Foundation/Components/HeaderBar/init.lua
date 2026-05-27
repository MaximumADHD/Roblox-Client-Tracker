local HeaderBarActions = require(script.Actions)
local HeaderBarContent = require(script.Content)
local HeaderBarLeading = require(script.Leading)
local HeaderBarRoot = require(script.HeaderBar)
local HeaderBarTrailing = require(script.Trailing)

local HeaderBar = {
	Root = HeaderBarRoot,
	Leading = HeaderBarLeading,
	Trailing = HeaderBarTrailing,
	Content = HeaderBarContent,
	Actions = HeaderBarActions,
}

export type HeaderBarProps = HeaderBarRoot.HeaderBarProps
export type HeaderBarLeadingProps = HeaderBarLeading.HeaderBarLeadingProps
export type HeaderBarTrailingProps = HeaderBarTrailing.HeaderBarTrailingProps
export type HeaderBarContentProps = HeaderBarContent.HeaderBarContentProps
export type HeaderBarActionsProps = HeaderBarActions.HeaderBarActionsProps
export type HeaderBarAction = HeaderBarActions.HeaderBarAction

return HeaderBar
