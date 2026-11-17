MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K34 [{[1] = "userId", ["UserName"] = "userName", ["GroupId"] = "groupId", ["GroupName"] = "groupName", ["RoleId"] = "rolesetId", ["RoleName"] = "rolesetName", ["RoleRank"] = "rank", ["Action"] = "action", ["AllowedPermissions"] = "allowedPermissions", ["PlayAction"] = "Play", ["EditAction"] = "Edit", ["AdminAction"] = "Admin", ["SubjectType"] = "subjectType", ["SubjectId"] = "subjectId", ["UserSubject"] = "User", ["GroupSubject"] = "Group", ["RoleSubject"] = "Roleset"}]
        2 DUPTABLE                         R1 K70 [{["default"] = "202227", ["Invalid"] = "202227", ["Blue"] = "528BFF", ["Green"] = "01854B", ["Purple"] = "A766F5", ["Yellow"] = "976C00", ["Orange"] = "DC6423", ["Red"] = "DF281F", ["Magenta"] = "D540F5", ["Teal"] = "0494B2", ["Turquoise"] = "02353F", ["Rust"] = "A9430B", ["Pistachio"] = "0C9B5A", ["Midnight"] = "0027B8", ["Lavender"] = "5614A5", ["Pink"] = "E74E90", ["Crimson"] = "830F07", ["Plum"] = "8A0CA7"}]
        3 DUPTABLE                         R2 K87 [{["default"] = "F7F7F8", ["Invalid"] = "F7F7F8", ["Blue"] = "70A0FF", ["Green"] = "39C582", ["Purple"] = "B682F7", ["Yellow"] = "DBA61F", ["Orange"] = "FA945A", ["Red"] = "E75750", ["Magenta"] = "DF6AF7", ["Teal"] = "7EE5F8", ["Turquoise"] = "056C82", ["Rust"] = "DC6423", ["Pistachio"] = "B0F6D0", ["Midnight"] = "0035F5", ["Lavender"] = "822EE7", ["Pink"] = "F7ADCF", ["Crimson"] = "C5120A", ["Plum"] = "C00AE8"}]
        4 DUPTABLE                         R3 K91 [{"webKeys", "granularCollaboratorUpdatedLightModeColorsMap", "granularCollaboratorUpdatedDarkModeColorsMap"}]
        5 SETTABLEKS                       R0 R3 K88 ["webKeys"]
        7 SETTABLEKS                       R1 R3 K89 ["granularCollaboratorUpdatedLightModeColorsMap"]
        9 SETTABLEKS                       R2 R3 K90 ["granularCollaboratorUpdatedDarkModeColorsMap"]
       11 RETURN                           R3 1
