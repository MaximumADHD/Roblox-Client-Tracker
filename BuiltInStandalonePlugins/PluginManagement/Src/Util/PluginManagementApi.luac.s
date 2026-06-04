PROTO_0:
        0 DUPTABLE                         R5 K5 [{"_studioService", "_pluginManagementService", "_permissionsService", "_marketplaceService", "_pluginPolicyService"}]
        1 SETTABLEKS                       R0 R5 K0 ["_studioService"]
        3 SETTABLEKS                       R1 R5 K1 ["_pluginManagementService"]
        5 SETTABLEKS                       R2 R5 K2 ["_permissionsService"]
        7 SETTABLEKS                       R3 R5 K3 ["_marketplaceService"]
        9 SETTABLEKS                       R4 R5 K4 ["_pluginPolicyService"]
       11 GETUPVAL                         R6 0
       12 CALL                             R6 0 1
       13 JUMPIF                           R6 ; [+6]
       14 GETTABLEKS                       R6 R5 K0 ["_studioService"]
       16 GETTABLEKS                       R6 R6 K6 ["OnPluginInstalledFromWeb"]
       18 SETTABLEKS                       R6 R5 K6 ["OnPluginInstalledFromWeb"]
       20 GETTABLEKS                       R6 R5 K0 ["_studioService"]
       22 GETTABLEKS                       R6 R6 K7 ["OnPluginInstalledFromToolbox"]
       24 SETTABLEKS                       R6 R5 K7 ["OnPluginInstalledFromToolbox"]
       26 GETUPVAL                         R8 1
       27 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       29 MOVE                             R7 R5
       30 GETIMPORT                        R6 K9 [setmetatable]
       32 CALL                             R6 2 1
       33 RETURN                           R6 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R1 K1 ["InstalledPluginData"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["GetPropertyChangedSignal"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["PluginManagementApi:GetUserId is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_studioService"]
       11 NAMECALL                         R1 R1 K4 ["GetUserId"]
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_studioService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["TryInstallPlugin"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["UninstallPlugin"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_studioService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["IsPluginUpToDate"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_studioService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["SetPluginEnabled"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_pluginManagementService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["SetAutoUpdate"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["OpenInBrowser_DONOTUSE"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_permissionsService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["GetPermissions"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_permissionsService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["SetPermissions"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_marketplaceService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["GetProductInfoAsync"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_pluginPolicyService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["GetPluginPolicy"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K10 ["ContextServices"]
       27 GETTABLEKS                       R3 R3 K11 ["ContextItem"]
       29 LOADK                            R6 K12 ["PluginManagementApi"]
       30 NAMECALL                         R4 R3 K13 ["extend"]
       32 CALL                             R4 2 1
       33 DUPCLOSURE                       R5 K14 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R5 R4 K15 ["new"]
       38 DUPCLOSURE                       R5 K16 [PROTO_1]
       39 SETTABLEKS                       R5 R4 K17 ["GetInstalledPluginData"]
       41 DUPCLOSURE                       R5 K18 [PROTO_2]
       42 SETTABLEKS                       R5 R4 K19 ["GetPropertyChangedSignal"]
       44 DUPCLOSURE                       R5 K20 [PROTO_3]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R5 R4 K21 ["GetUserId"]
       48 DUPCLOSURE                       R5 K22 [PROTO_4]
       49 SETTABLEKS                       R5 R4 K23 ["TryInstallPlugin"]
       51 DUPCLOSURE                       R5 K24 [PROTO_5]
       52 SETTABLEKS                       R5 R4 K25 ["UninstallPlugin"]
       54 DUPCLOSURE                       R5 K26 [PROTO_6]
       55 SETTABLEKS                       R5 R4 K27 ["IsPluginUpToDate"]
       57 DUPCLOSURE                       R5 K28 [PROTO_7]
       58 SETTABLEKS                       R5 R4 K29 ["SetPluginEnabled"]
       60 DUPCLOSURE                       R5 K30 [PROTO_8]
       61 SETTABLEKS                       R5 R4 K31 ["SetAutoUpdate"]
       63 DUPCLOSURE                       R5 K32 [PROTO_9]
       64 SETTABLEKS                       R5 R4 K33 ["OpenInBrowser_DONOTUSE"]
       66 DUPCLOSURE                       R5 K34 [PROTO_10]
       67 SETTABLEKS                       R5 R4 K35 ["GetPermissions"]
       69 DUPCLOSURE                       R5 K36 [PROTO_11]
       70 SETTABLEKS                       R5 R4 K37 ["SetPermissions"]
       72 DUPCLOSURE                       R5 K38 [PROTO_12]
       73 SETTABLEKS                       R5 R4 K39 ["GetProductInfoAsync"]
       75 DUPCLOSURE                       R5 K40 [PROTO_13]
       76 SETTABLEKS                       R5 R4 K41 ["GetPluginPolicy"]
       78 RETURN                           R4 1
