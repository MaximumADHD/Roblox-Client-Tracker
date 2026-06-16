PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_onInstalledPluginsChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R5 K8 [{"_studioService", "_pluginManagementService", "_permissionsService", "_marketplaceService", "_pluginPolicyService", "_installedPluginData", "_installedPlugins", "_installedPluginIds"}]
        1 SETTABLEKS                       R0 R5 K0 ["_studioService"]
        3 SETTABLEKS                       R1 R5 K1 ["_pluginManagementService"]
        5 SETTABLEKS                       R2 R5 K2 ["_permissionsService"]
        7 SETTABLEKS                       R3 R5 K3 ["_marketplaceService"]
        9 SETTABLEKS                       R4 R5 K4 ["_pluginPolicyService"]
       11 LOADK                            R6 K9 ["{}"]
       12 SETTABLEKS                       R6 R5 K5 ["_installedPluginData"]
       14 NEWTABLE                         R6 0 0
       16 SETTABLEKS                       R6 R5 K6 ["_installedPlugins"]
       18 NEWTABLE                         R6 0 0
       20 SETTABLEKS                       R6 R5 K7 ["_installedPluginIds"]
       22 GETTABLEKS                       R6 R5 K0 ["_studioService"]
       24 GETTABLEKS                       R6 R6 K10 ["OnPluginInstalledFromToolbox"]
       26 SETTABLEKS                       R6 R5 K10 ["OnPluginInstalledFromToolbox"]
       28 GETUPVAL                         R6 0
       29 CALL                             R6 0 1
       30 JUMPIFNOT                        R6 ; [+32]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K11 ["new"]
       34 CALL                             R6 0 1
       35 SETTABLEKS                       R6 R5 K12 ["InstalledPluginsChanged"]
       37 GETUPVAL                         R8 2
       38 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R6 K14 [setmetatable]
       43 CALL                             R6 2 1
       44 MOVE                             R5 R6
       45 GETTABLEKS                       R6 R5 K0 ["_studioService"]
       47 LOADK                            R8 K15 ["InstalledPluginData"]
       48 NAMECALL                         R6 R6 K16 ["GetPropertyChangedSignal"]
       50 CALL                             R6 2 1
       51 NEWCLOSURE                       R8 P0
       52 CAPTURE                          REF R5
       53 NAMECALL                         R6 R6 K17 ["Connect"]
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K18 ["_installedPluginDataChangedConnection"]
       58 NAMECALL                         R6 R5 K19 ["_onInstalledPluginsChanged"]
       60 CALL                             R6 1 0
       61 CLOSEUPVALS                      R5
       62 RETURN                           R5 1
       63 GETUPVAL                         R8 2
       64 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       66 MOVE                             R7 R5
       67 GETIMPORT                        R6 K14 [setmetatable]
       69 CALL                             R6 2 1
       70 CLOSEUPVALS                      R5
       71 RETURN                           R6 1

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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["PluginManagementApi:DEPRECATED_GetInstalledPluginData is deprecated with FFlagStudioCacheExtractedInstalledPlugins"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["_studioService"]
       11 GETTABLEKS                       R1 R1 K4 ["InstalledPluginData"]
       13 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["PluginManagementApi:DEPRECATED_GetPropertyChangedSignal is deprecated with FFlagStudioCacheExtractedInstalledPlugins"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R0 K3 ["_studioService"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K4 ["GetPropertyChangedSignal"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["PluginManagementApi:GetInstalledPlugins requires FFlagStudioCacheExtractedInstalledPlugins"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["_installedPlugins"]
       10 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["PluginManagementApi:GetInstalledPlugins requires FFlagStudioCacheExtractedInstalledPlugins"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["_installedPluginIds"]
       10 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["PluginManagementApi:_onInstalledPluginsChanged requires FFlagStudioCacheExtractedInstalledPlugins"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["_studioService"]
       10 GETTABLEKS                       R1 R1 K4 ["InstalledPluginData"]
       12 SETTABLEKS                       R1 R0 K5 ["_installedPluginData"]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R3 R0 K5 ["_installedPluginData"]
       17 NAMECALL                         R1 R1 K6 ["JSONDecode"]
       19 CALL                             R1 2 1
       20 NEWTABLE                         R2 0 0
       22 NEWTABLE                         R3 0 0
       24 MOVE                             R4 R1
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 FASTCALL1                        TONUMBER R7 ; [+3]
       29 MOVE                             R10 R7
       30 GETIMPORT                        R9 K8 [tonumber]
       32 CALL                             R9 1 1
       33 LOADK                            R13 K9 ["PluginManagement received invalid plugin id %*"]
       34 MOVE                             R15 R7
       35 NAMECALL                         R13 R13 K10 ["format"]
       37 CALL                             R13 2 1
       38 MOVE                             R12 R13
       39 FASTCALL2                        ASSERT R9 R12 ; [+4]
       41 MOVE                             R11 R9
       42 GETIMPORT                        R10 K2 [assert]
       44 CALL                             R10 2 0
       45 NEWTABLE                         R10 8 0
       47 SETTABLEKS                       R9 R10 K11 ["assetId"]
       49 GETTABLEKS                       R11 R8 K12 ["Enabled"]
       51 SETTABLEKS                       R11 R10 K13 ["enabled"]
       53 GETTABLEKS                       R11 R8 K14 ["AssetVersion"]
       55 SETTABLEKS                       R11 R10 K15 ["installedVersion"]
       57 GETTABLEKS                       R11 R8 K16 ["Moderated"]
       59 SETTABLEKS                       R11 R10 K17 ["isModerated"]
       61 GETTABLEKS                       R11 R8 K18 ["AutoUpdate"]
       63 SETTABLEKS                       R11 R10 K19 ["autoUpdateEnabled"]
       65 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       67 MOVE                             R12 R2
       68 MOVE                             R13 R10
       69 GETIMPORT                        R11 K22 [table.insert]
       71 CALL                             R11 2 0
       72 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       74 MOVE                             R12 R3
       75 MOVE                             R13 R9
       76 GETIMPORT                        R11 K22 [table.insert]
       78 CALL                             R11 2 0
       79 FORGLOOP                         R4 2 ; [-52]
       81 SETTABLEKS                       R2 R0 K23 ["_installedPlugins"]
       83 SETTABLEKS                       R3 R0 K24 ["_installedPluginIds"]
       85 GETTABLEKS                       R4 R0 K25 ["InstalledPluginsChanged"]
       87 NAMECALL                         R4 R4 K26 ["Fire"]
       89 CALL                             R4 1 0
       90 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_studioService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["TryInstallPlugin"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["UninstallPlugin"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["_studioService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["IsPluginUpToDate"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_studioService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["SetPluginEnabled"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["_pluginManagementService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["SetAutoUpdate"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_studioService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["OpenInBrowser_DONOTUSE"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_permissionsService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["GetPermissions"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_permissionsService"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["SetPermissions"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["_marketplaceService"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["GetProductInfoAsync"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_17:
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
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioCacheExtractedInstalledPlugins"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Signal"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Packages"]
       29 GETTABLEKS                       R4 R4 K10 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["ContextServices"]
       34 GETTABLEKS                       R4 R4 K12 ["ContextItem"]
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R6 R0 K5 ["Src"]
       40 GETTABLEKS                       R6 R6 K13 ["Util"]
       42 GETTABLEKS                       R6 R6 K14 ["Types"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K16 [game]
       47 LOADK                            R8 K17 ["HttpService"]
       48 NAMECALL                         R6 R6 K18 ["GetService"]
       50 CALL                             R6 2 1
       51 LOADK                            R9 K19 ["PluginManagementApi"]
       52 NAMECALL                         R7 R4 K20 ["extend"]
       54 CALL                             R7 2 1
       55 DUPCLOSURE                       R8 K21 [PROTO_1]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R7
       59 SETTABLEKS                       R8 R7 K22 ["new"]
       61 DUPCLOSURE                       R8 K23 [PROTO_2]
       62 SETTABLEKS                       R8 R7 K24 ["Destroy"]
       64 DUPCLOSURE                       R8 K25 [PROTO_3]
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R8 R7 K26 ["DEPRECATED_GetInstalledPluginData"]
       68 DUPCLOSURE                       R8 K27 [PROTO_4]
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R8 R7 K28 ["DEPRECATED_GetPropertyChangedSignal"]
       72 DUPCLOSURE                       R8 K29 [PROTO_5]
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R8 R7 K30 ["GetInstalledPlugins"]
       76 DUPCLOSURE                       R8 K31 [PROTO_6]
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R8 R7 K32 ["GetInstalledPluginIds"]
       80 DUPCLOSURE                       R8 K33 [PROTO_7]
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 SETTABLEKS                       R8 R7 K34 ["_onInstalledPluginsChanged"]
       85 DUPCLOSURE                       R8 K35 [PROTO_8]
       86 SETTABLEKS                       R8 R7 K36 ["TryInstallPlugin"]
       88 DUPCLOSURE                       R8 K37 [PROTO_9]
       89 SETTABLEKS                       R8 R7 K38 ["UninstallPlugin"]
       91 DUPCLOSURE                       R8 K39 [PROTO_10]
       92 SETTABLEKS                       R8 R7 K40 ["IsPluginUpToDate"]
       94 DUPCLOSURE                       R8 K41 [PROTO_11]
       95 SETTABLEKS                       R8 R7 K42 ["SetPluginEnabled"]
       97 DUPCLOSURE                       R8 K43 [PROTO_12]
       98 SETTABLEKS                       R8 R7 K44 ["SetAutoUpdate"]
      100 DUPCLOSURE                       R8 K45 [PROTO_13]
      101 SETTABLEKS                       R8 R7 K46 ["OpenInBrowser_DONOTUSE"]
      103 DUPCLOSURE                       R8 K47 [PROTO_14]
      104 SETTABLEKS                       R8 R7 K48 ["GetPermissions"]
      106 DUPCLOSURE                       R8 K49 [PROTO_15]
      107 SETTABLEKS                       R8 R7 K50 ["SetPermissions"]
      109 DUPCLOSURE                       R8 K51 [PROTO_16]
      110 SETTABLEKS                       R8 R7 K52 ["GetProductInfoAsync"]
      112 DUPCLOSURE                       R8 K53 [PROTO_17]
      113 SETTABLEKS                       R8 R7 K54 ["GetPluginPolicy"]
      115 RETURN                           R7 1
