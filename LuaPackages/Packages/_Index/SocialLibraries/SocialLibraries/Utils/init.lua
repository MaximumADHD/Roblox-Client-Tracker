local ROOT = script

return {
	presenceSortComparator = require(ROOT.presenceSortComparator),
	pruneConsecutiveNewLines = require(ROOT.pruneConsecutiveNewLines),
	formatAlias = require(ROOT.formatAlias),
	searchFilterPredicate = require(ROOT.searchFilterPredicate),
	isEnum = require(ROOT.isEnum),
}
