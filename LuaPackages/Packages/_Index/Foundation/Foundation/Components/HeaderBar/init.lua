local HeaderBarContent = require(script.Content)
local HeaderBarLeading = require(script.Leading)
local HeaderBarRoot = require(script.HeaderBar)
local HeaderBarTrailing = require(script.Trailing)

local HeaderBar = {
	Root = HeaderBarRoot,
	Leading = HeaderBarLeading,
	Trailing = HeaderBarTrailing,
	Content = HeaderBarContent,
}

export type HeaderBarProps = HeaderBarRoot.HeaderBarProps
export type HeaderBarLeadingProps = HeaderBarLeading.HeaderBarLeadingProps
export type HeaderBarTrailingProps = HeaderBarTrailing.HeaderBarTrailingProps
export type HeaderBarContentProps = HeaderBarContent.HeaderBarContentProps

return HeaderBar
