local makeDefaultReadPolicy = require(script.Parent.utils.makeDefaultReadPolicy)

return {
	fields = {
		-- Apollo has a sharp corner where because the ExperienceMedia type can
		-- vary in shape for images and Youtube videos we need to ensure some
		-- fields have default read policies, otherwise errors occur when Apollo
		-- tries to access the cache
		imageId = {
			read = makeDefaultReadPolicy("-1"),
		},
	},
}
