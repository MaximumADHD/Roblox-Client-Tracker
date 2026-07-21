PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_onInstalledPluginsChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R5 K9 [{[1], ["_pluginManagementService"], ["_permissionsService"], ["_marketplaceService"], ["_pluginPolicyService"], ["_installedPluginData"] = "{}", ["_installedPlugins"], ["_installedPluginIds"]}]
        1 SETTABLEKS                       R0 R5 K0 ["_studioService"]
        3 SETTABLEKS                       R1 R5 K1 ["_pluginManagementService"]
        5 SETTABLEKS                       R2 R5 K2 ["_permissionsService"]
        7 SETTABLEKS                       R3 R5 K3 ["_marketplaceService"]
        9 SETTABLEKS                       R4 R5 K4 ["_pluginPolicyService"]
       11 NEWTABLE                         R6 0 0
       13 SETTABLEKS                       R6 R5 K7 ["_installedPlugins"]
       15 NEWTABLE                         R6 0 0
       17 SETTABLEKS                       R6 R5 K8 ["_installedPluginIds"]
       19 GETTABLEKS                       R6 R5 K0 ["_studioService"]
       21 GETTABLEKS                       R6 R6 K10 ["OnPluginInstalledFromToolbox"]
       23 SETTABLEKS                       R6 R5 K10 ["OnPluginInstalledFromToolbox"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K11 ["new"]
       28 CALL                             R6 0 1
       29 SETTABLEKS                       R6 R5 K12 ["InstalledPluginsChanged"]
       31 GETUPVAL                         R8 1
       32 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       34 MOVE                             R7 R5
       35 GETIMPORT                        R6 K14 [setmetatable]
       37 CALL                             R6 2 1
       38 MOVE                             R5 R6
       39 GETTABLEKS                       R6 R5 K0 ["_studioService"]
       41 LOADK                            R8 K15 ["InstalledPluginData"]
       42 NAMECALL                         R6 R6 K16 ["GetPropertyChangedSignal"]
       44 CALL                             R6 2 1
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          REF R5
       47 NAMECALL                         R6 R6 K17 ["Connect"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K18 ["_installedPluginDataChangedConnection"]
       52 NAMECALL                         R6 R5 K19 ["_onInstalledPluginsChanged"]
       54 CALL                             R6 1 0
       55 CLOSEUPVALS                      R5
       56 RETURN                           R5 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_installedPluginDataChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_installedPluginDataChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_installedPluginDataChangedConnection"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_installedPlugins"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_installedPluginIds"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_studioService"]
        2 GETTABLEKS                       R1 R1 K1 ["InstalledPluginData"]
        4 SETTABLEKS                       R1 R0 K2 ["_installedPluginData"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R3 R0 K2 ["_installedPluginData"]
        9 NAMECALL                         R1 R1 K3 ["JSONDecode"]
       11 CALL                             R1 2 1
       12 NEWTABLE                         R2 0 0
       14 NEWTABLE                         R3 0 0
       16 MOVE                             R4 R1
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 FASTCALL1                        TONUMBER R7 ; [+3]
       21 MOVE                             R10 R7
       22 GETIMPORT                        R9 K5 [tonumber]
       24 CALL                             R9 1 1
       25 LOADK                            R13 K6 ["PluginManagement received invalid plugin id %*"]
       26 MOVE                             R15 R7
       27 NAMECALL                         R13 R13 K7 ["format"]
       29 CALL                             R13 2 1
       30 MOVE                             R12 R13
       31 FASTCALL2                        ASSERT R9 R12 ; [+4]
       33 MOVE                             R11 R9
       34 GETIMPORT                        R10 K9 [assert]
       36 CALL                             R10 2 0
       37 NEWTABLE                         R10 8 0
       39 SETTABLEKS                       R9 R10 K10 ["assetId"]
       41 GETTABLEKS                       R11 R8 K11 ["Enabled"]
       43 SETTABLEKS                       R11 R10 K12 ["enabled"]
       45 GETTABLEKS                       R11 R8 K13 ["AssetVersion"]
       47 SETTABLEKS                       R11 R10 K14 ["installedVersion"]
       49 GETTABLEKS                       R11 R8 K15 ["Moderated"]
       51 SETTABLEKS                       R11 R10 K16 ["isModerated"]
       53 GETTABLEKS                       R11 R8 K17 ["AutoUpdate"]
       55 SETTABLEKS                       R11 R10 K18 ["autoUpdateEnabled"]
       57 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       59 MOVE                             R12 R2
       60 MOVE                             R13 R10
       61 GETIMPORT                        R11 K21 [table.insert]
       63 CALL                             R11 2 0
       64 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       66 MOVE                             R12 R3
       67 MOVE                             R13 R9
       68 GETIMPORT                        R11 K21 [table.insert]
       70 CALL                             R11 2 0
       71 FORGLOOP                         R4 2 ; [-52]
       73 SETTABLEKS                       R2 R0 K22 ["_installedPlugins"]
       75 SETTABLEKS                       R3 R0 K23 ["_installedPluginIds"]
       77 GETTABLEKS                       R4 R0 K24 ["InstalledPluginsChanged"]
       79 NAMECALL                         R4 R4 K25 ["Fire"]
       81 CALL                             R4 1 0
       82 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_studioService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["TryInstallPlugin"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["UninstallPlugin"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_studioService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["IsPluginUpToDate"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_studioService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["SetPluginEnabled"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["_pluginManagementService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["SetAutoUpdate"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["OpenInBrowser_DONOTUSE"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_permissionsService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["GetPermissions"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_permissionsService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["SetPermissions"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_marketplaceService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["GetProductInfoAsync"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_15:
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
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Signal"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R3 R3 K9 ["ContextItem"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Src"]
       31 GETTABLEKS                       R5 R5 K11 ["Util"]
       33 GETTABLEKS                       R5 R5 K12 ["Types"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K14 [game]
       38 LOADK                            R7 K15 ["HttpService"]
       39 NAMECALL                         R5 R5 K16 ["GetService"]
       41 CALL                             R5 2 1
       42 LOADK                            R8 K17 ["PluginManagementApi"]
       43 NAMECALL                         R6 R3 K18 ["extend"]
       45 CALL                             R6 2 1
       46 DUPCLOSURE                       R7 K19 [PROTO_1]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R7 R6 K20 ["new"]
       51 DUPCLOSURE                       R7 K21 [PROTO_2]
       52 SETTABLEKS                       R7 R6 K22 ["Destroy"]
       54 DUPCLOSURE                       R7 K23 [PROTO_3]
       55 SETTABLEKS                       R7 R6 K24 ["GetInstalledPlugins"]
       57 DUPCLOSURE                       R7 K25 [PROTO_4]
       58 SETTABLEKS                       R7 R6 K26 ["GetInstalledPluginIds"]
       60 DUPCLOSURE                       R7 K27 [PROTO_5]
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R7 R6 K28 ["_onInstalledPluginsChanged"]
       64 DUPCLOSURE                       R7 K29 [PROTO_6]
       65 SETTABLEKS                       R7 R6 K30 ["TryInstallPlugin"]
       67 DUPCLOSURE                       R7 K31 [PROTO_7]
       68 SETTABLEKS                       R7 R6 K32 ["UninstallPlugin"]
       70 DUPCLOSURE                       R7 K33 [PROTO_8]
       71 SETTABLEKS                       R7 R6 K34 ["IsPluginUpToDate"]
       73 DUPCLOSURE                       R7 K35 [PROTO_9]
       74 SETTABLEKS                       R7 R6 K36 ["SetPluginEnabled"]
       76 DUPCLOSURE                       R7 K37 [PROTO_10]
       77 SETTABLEKS                       R7 R6 K38 ["SetAutoUpdate"]
       79 DUPCLOSURE                       R7 K39 [PROTO_11]
       80 SETTABLEKS                       R7 R6 K40 ["OpenInBrowser_DONOTUSE"]
       82 DUPCLOSURE                       R7 K41 [PROTO_12]
       83 SETTABLEKS                       R7 R6 K42 ["GetPermissions"]
       85 DUPCLOSURE                       R7 K43 [PROTO_13]
       86 SETTABLEKS                       R7 R6 K44 ["SetPermissions"]
       88 DUPCLOSURE                       R7 K45 [PROTO_14]
       89 SETTABLEKS                       R7 R6 K46 ["GetProductInfoAsync"]
       91 DUPCLOSURE                       R7 K47 [PROTO_15]
       92 SETTABLEKS                       R7 R6 K48 ["GetPluginPolicy"]
       94 RETURN                           R6 1
