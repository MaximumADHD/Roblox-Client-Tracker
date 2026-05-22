PROTO_0:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        4 LOADK                            R7 K0 ["PluginManagementApi requires FFlagStudioFixPluginManagementPluginTests"]
        5 GETIMPORT                        R5 K2 [assert]
        7 CALL                             R5 2 0
        8 DUPTABLE                         R5 K8 [{"_studioService", "_pluginManagementService", "_permissionsService", "_marketplaceService", "_pluginPolicyService"}]
        9 SETTABLEKS                       R0 R5 K3 ["_studioService"]
       11 SETTABLEKS                       R1 R5 K4 ["_pluginManagementService"]
       13 SETTABLEKS                       R2 R5 K5 ["_permissionsService"]
       15 SETTABLEKS                       R3 R5 K6 ["_marketplaceService"]
       17 SETTABLEKS                       R4 R5 K7 ["_pluginPolicyService"]
       19 GETUPVAL                         R6 1
       20 CALL                             R6 0 1
       21 JUMPIF                           R6 ; [+6]
       22 GETTABLEKS                       R6 R5 K3 ["_studioService"]
       24 GETTABLEKS                       R6 R6 K9 ["OnPluginInstalledFromWeb"]
       26 SETTABLEKS                       R6 R5 K9 ["OnPluginInstalledFromWeb"]
       28 GETTABLEKS                       R6 R5 K3 ["_studioService"]
       30 GETTABLEKS                       R6 R6 K10 ["OnPluginInstalledFromToolbox"]
       32 SETTABLEKS                       R6 R5 K10 ["OnPluginInstalledFromToolbox"]
       34 GETUPVAL                         R8 2
       35 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       37 MOVE                             R7 R5
       38 GETIMPORT                        R6 K12 [setmetatable]
       40 CALL                             R6 2 1
       41 RETURN                           R6 1

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
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Bin"]
       20 GETTABLEKS                       R3 R3 K7 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       32 GETTABLEKS                       R4 R4 K11 ["ContextItem"]
       34 LOADK                            R7 K12 ["PluginManagementApi"]
       35 NAMECALL                         R5 R4 K13 ["extend"]
       37 CALL                             R5 2 1
       38 DUPCLOSURE                       R6 K14 [PROTO_0]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 SETTABLEKS                       R6 R5 K15 ["new"]
       44 DUPCLOSURE                       R6 K16 [PROTO_1]
       45 SETTABLEKS                       R6 R5 K17 ["GetInstalledPluginData"]
       47 DUPCLOSURE                       R6 K18 [PROTO_2]
       48 SETTABLEKS                       R6 R5 K19 ["GetPropertyChangedSignal"]
       50 DUPCLOSURE                       R6 K20 [PROTO_3]
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R6 R5 K21 ["GetUserId"]
       54 DUPCLOSURE                       R6 K22 [PROTO_4]
       55 SETTABLEKS                       R6 R5 K23 ["TryInstallPlugin"]
       57 DUPCLOSURE                       R6 K24 [PROTO_5]
       58 SETTABLEKS                       R6 R5 K25 ["UninstallPlugin"]
       60 DUPCLOSURE                       R6 K26 [PROTO_6]
       61 SETTABLEKS                       R6 R5 K27 ["IsPluginUpToDate"]
       63 DUPCLOSURE                       R6 K28 [PROTO_7]
       64 SETTABLEKS                       R6 R5 K29 ["SetPluginEnabled"]
       66 DUPCLOSURE                       R6 K30 [PROTO_8]
       67 SETTABLEKS                       R6 R5 K31 ["SetAutoUpdate"]
       69 DUPCLOSURE                       R6 K32 [PROTO_9]
       70 SETTABLEKS                       R6 R5 K33 ["OpenInBrowser_DONOTUSE"]
       72 DUPCLOSURE                       R6 K34 [PROTO_10]
       73 SETTABLEKS                       R6 R5 K35 ["GetPermissions"]
       75 DUPCLOSURE                       R6 K36 [PROTO_11]
       76 SETTABLEKS                       R6 R5 K37 ["SetPermissions"]
       78 DUPCLOSURE                       R6 K38 [PROTO_12]
       79 SETTABLEKS                       R6 R5 K39 ["GetProductInfoAsync"]
       81 DUPCLOSURE                       R6 K40 [PROTO_13]
       82 SETTABLEKS                       R6 R5 K41 ["GetPluginPolicy"]
       84 RETURN                           R5 1
