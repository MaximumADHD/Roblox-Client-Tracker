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
       19 GETTABLEKS                       R7 R5 K3 ["_studioService"]
       21 GETTABLEKS                       R6 R7 K9 ["OnPluginInstalledFromWeb"]
       23 SETTABLEKS                       R6 R5 K9 ["OnPluginInstalledFromWeb"]
       25 GETTABLEKS                       R7 R5 K3 ["_studioService"]
       27 GETTABLEKS                       R6 R7 K10 ["OnPluginInstalledFromToolbox"]
       29 SETTABLEKS                       R6 R5 K10 ["OnPluginInstalledFromToolbox"]
       31 GETUPVAL                         R8 1
       32 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       34 MOVE                             R7 R5
       35 GETIMPORT                        R6 K12 [setmetatable]
       37 CALL                             R6 2 1
       38 RETURN                           R6 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R2 K1 ["InstalledPluginData"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["GetPropertyChangedSignal"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_studioService"]
        2 NAMECALL                         R1 R1 K1 ["GetUserId"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R3 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R4 K8 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       25 GETTABLEKS                       R3 R4 K10 ["ContextItem"]
       27 LOADK                            R6 K11 ["PluginManagementApi"]
       28 NAMECALL                         R4 R3 K12 ["extend"]
       30 CALL                             R4 2 1
       31 DUPCLOSURE                       R5 K13 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R5 R4 K14 ["new"]
       36 DUPCLOSURE                       R5 K15 [PROTO_1]
       37 SETTABLEKS                       R5 R4 K16 ["GetInstalledPluginData"]
       39 DUPCLOSURE                       R5 K17 [PROTO_2]
       40 SETTABLEKS                       R5 R4 K18 ["GetPropertyChangedSignal"]
       42 DUPCLOSURE                       R5 K19 [PROTO_3]
       43 SETTABLEKS                       R5 R4 K20 ["GetUserId"]
       45 DUPCLOSURE                       R5 K21 [PROTO_4]
       46 SETTABLEKS                       R5 R4 K22 ["TryInstallPlugin"]
       48 DUPCLOSURE                       R5 K23 [PROTO_5]
       49 SETTABLEKS                       R5 R4 K24 ["UninstallPlugin"]
       51 DUPCLOSURE                       R5 K25 [PROTO_6]
       52 SETTABLEKS                       R5 R4 K26 ["IsPluginUpToDate"]
       54 DUPCLOSURE                       R5 K27 [PROTO_7]
       55 SETTABLEKS                       R5 R4 K28 ["SetPluginEnabled"]
       57 DUPCLOSURE                       R5 K29 [PROTO_8]
       58 SETTABLEKS                       R5 R4 K30 ["SetAutoUpdate"]
       60 DUPCLOSURE                       R5 K31 [PROTO_9]
       61 SETTABLEKS                       R5 R4 K32 ["OpenInBrowser_DONOTUSE"]
       63 DUPCLOSURE                       R5 K33 [PROTO_10]
       64 SETTABLEKS                       R5 R4 K34 ["GetPermissions"]
       66 DUPCLOSURE                       R5 K35 [PROTO_11]
       67 SETTABLEKS                       R5 R4 K36 ["SetPermissions"]
       69 DUPCLOSURE                       R5 K37 [PROTO_12]
       70 SETTABLEKS                       R5 R4 K38 ["GetProductInfoAsync"]
       72 DUPCLOSURE                       R5 K39 [PROTO_13]
       73 SETTABLEKS                       R5 R4 K40 ["GetPluginPolicy"]
       75 RETURN                           R4 1
