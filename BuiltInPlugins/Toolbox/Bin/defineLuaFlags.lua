
-- Corrects the UI's portrayal of group permissions. Specifically, it limits
-- the apparent ability to modify group role permissions in Studio that are more
-- properly set in Group Configuration.
game:DefineFastFlag("LimitGroupRoleSetPermissionsInGui", false)

game:DefineFastFlag("ToolboxFixDragInsertRemains", false)

return nil
