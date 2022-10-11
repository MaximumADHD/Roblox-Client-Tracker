-- singleton

local Page = script.Parent.Parent

local StateModelTemplate = require(Page.Util.StateModelTemplate)

local Templates = {}

function Templates.getStateModelTemplate(props)
	return props.StateTemplates
		and props.StateTemplates.templates
		and props.template
		and props.StateTemplates.templates[props.template]
end

function Templates.getStateModelTemplateCopy(props)
	return StateModelTemplate.makeCopy(Templates.getStateModelTemplate(props))
end

return Templates
