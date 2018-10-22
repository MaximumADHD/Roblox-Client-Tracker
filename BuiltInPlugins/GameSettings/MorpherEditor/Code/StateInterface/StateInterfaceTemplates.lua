-- singleton

local paths = require(script.Parent.Parent.Paths)

local Templates = {}

function Templates.getStateModelTemplate(props)
	return props.StateTemplates and props.StateTemplates.templates and props.template
	and props.StateTemplates.templates[props.template]
end

function Templates.getStateModelTemplateCopy(props)
	return paths.StateModelTemplate.makeCopy(Templates.getStateModelTemplate(props))
end

return Templates