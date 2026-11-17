MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ToolboxEnableAudioGrantDialog"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K56 [{["All"] = "All", ["UserId"] = "userId", ["UserName"] = "userName", ["GroupId"] = "groupId", ["GroupName"] = "groupName", ["RoleId"] = "rolesetId", ["RoleName"] = "rolesetName", ["RoleRank"] = "rank", ["UpToVersion"] = "upToVersion", ["Action"] = "action", ["UseViewAction"] = "UseView", ["EditAction"] = "Edit", ["RevokedAction"] = "Revoked", ["UseAction"] = "Use", ["GrantAssetPermissionsAction"] = "GrantAssetPermissions", ["SubjectType"] = "subjectType", ["SubjectId"] = "subjectId", ["PermissionLevel"] = "permissionLevel", ["PermissionSource"] = "permissionSource", ["UserSubject"] = "User", ["GroupSubject"] = "Group", ["RoleSubject"] = "Roleset", ["GroupRolesetSubject"] = "GroupRoleset", ["Requests"] = "requests", ["Universe"] = "Universe", ["UnknownError"] = "UnknownError", ["HasPermission"] = "HasPermission", ["NoPermission"] = "NoPermission", ["AssetNotFound"] = "AssetNotFound"}]
        8 DUPTABLE                         R2 K66 [{["AccountPermissionLevel"] = "Account", ["UniversePermissionLevel"] = "Universe", ["AssetPermissionLevel"] = "Asset", ["AssetPermissionSource"] = "AssetPermissions", ["GroupPermissionSource"] = "GroupRolesetPermissions"}]
        9 DUPTABLE                         R3 K69 [{"webKeys", "webValues"}]
       10 SETTABLEKS                       R1 R3 K67 ["webKeys"]
       12 SETTABLEKS                       R2 R3 K68 ["webValues"]
       14 RETURN                           R3 1
