MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K34 [{[1] = "userId", ["UserName"] = "userName", ["GroupId"] = "groupId", ["GroupName"] = "groupName", ["RoleId"] = "rolesetId", ["RoleName"] = "rolesetName", ["RoleRank"] = "rank", ["Action"] = "action", ["AllowedPermissions"] = "allowedPermissions", ["PlayAction"] = "Play", ["EditAction"] = "Edit", ["AdminAction"] = "Admin", ["SubjectType"] = "subjectType", ["SubjectId"] = "subjectId", ["UserSubject"] = "User", ["GroupSubject"] = "Group", ["RoleSubject"] = "Roleset"}]
        2 DUPTABLE                         R1 K36 [{"webKeys"}]
        3 SETTABLEKS                       R0 R1 K35 ["webKeys"]
        5 RETURN                           R1 1
