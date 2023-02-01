local mapDispatchToProps = function(_dispatch: any)
	return {}
end

export type Props = typeof(mapDispatchToProps(...))

return mapDispatchToProps
