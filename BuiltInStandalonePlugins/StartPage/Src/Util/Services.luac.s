PROTO_0:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["Packages"]
        5 GETTABLEKS                       R3 R4 K3 ["Dev"]
        7 GETTABLEKS                       R2 R3 K4 ["JestGlobals"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K5 ["jest"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 DUPTABLE                         R5 K8 [{"GetClientId", "GetSessionId"}]
       15 GETTABLEKS                       R6 R2 K9 ["fn"]
       17 CALL                             R6 0 1
       18 SETTABLEKS                       R6 R5 K6 ["GetClientId"]
       20 GETTABLEKS                       R6 R2 K9 ["fn"]
       22 CALL                             R6 0 1
       23 SETTABLEKS                       R6 R5 K7 ["GetSessionId"]
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

PROTO_1:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["Packages"]
        5 GETTABLEKS                       R3 R4 K3 ["Dev"]
        7 GETTABLEKS                       R2 R3 K4 ["JestGlobals"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K5 ["jest"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 DUPTABLE                         R5 K16 [{"BindAsync", "CreateAsync", "DeleteAsync", "GetAsync", "ListAsync", "MultiBindAsync", "SetBoolAsync", "SetNumberAsync", "SetStringAsync", "UpdateAsync"}]
       15 GETTABLEKS                       R6 R2 K17 ["fn"]
       17 DUPCLOSURE                       R7 K18 [PROTO_1]
       18 CALL                             R6 1 1
       19 SETTABLEKS                       R6 R5 K6 ["BindAsync"]
       21 GETTABLEKS                       R6 R2 K17 ["fn"]
       23 CALL                             R6 0 1
       24 SETTABLEKS                       R6 R5 K7 ["CreateAsync"]
       26 GETTABLEKS                       R6 R2 K17 ["fn"]
       28 CALL                             R6 0 1
       29 SETTABLEKS                       R6 R5 K8 ["DeleteAsync"]
       31 GETTABLEKS                       R6 R2 K17 ["fn"]
       33 CALL                             R6 0 1
       34 SETTABLEKS                       R6 R5 K9 ["GetAsync"]
       36 GETTABLEKS                       R6 R2 K17 ["fn"]
       38 CALL                             R6 0 1
       39 SETTABLEKS                       R6 R5 K10 ["ListAsync"]
       41 GETTABLEKS                       R6 R2 K17 ["fn"]
       43 CALL                             R6 0 1
       44 SETTABLEKS                       R6 R5 K11 ["MultiBindAsync"]
       46 GETTABLEKS                       R6 R2 K17 ["fn"]
       48 CALL                             R6 0 1
       49 SETTABLEKS                       R6 R5 K12 ["SetBoolAsync"]
       51 GETTABLEKS                       R6 R2 K17 ["fn"]
       53 CALL                             R6 0 1
       54 SETTABLEKS                       R6 R5 K13 ["SetNumberAsync"]
       56 GETTABLEKS                       R6 R2 K17 ["fn"]
       58 CALL                             R6 0 1
       59 SETTABLEKS                       R6 R5 K14 ["SetStringAsync"]
       61 GETTABLEKS                       R6 R2 K17 ["fn"]
       63 CALL                             R6 0 1
       64 SETTABLEKS                       R6 R5 K15 ["UpdateAsync"]
       66 CALL                             R3 2 -1
       67 RETURN                           R3 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["Packages"]
        5 GETTABLEKS                       R3 R4 K3 ["Dev"]
        7 GETTABLEKS                       R2 R3 K4 ["JestGlobals"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K5 ["jest"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 DUPTABLE                         R5 K11 [{"CloseLoadingPageAsync", "OpenLoadingPageAsync", "SetStartPageFirstRenderTimeAsync", "GetStartPageFirstRenderTimeAsync", "GetLoginTimeAsync"}]
       15 GETTABLEKS                       R6 R2 K12 ["fn"]
       17 CALL                             R6 0 1
       18 SETTABLEKS                       R6 R5 K6 ["CloseLoadingPageAsync"]
       20 GETTABLEKS                       R6 R2 K12 ["fn"]
       22 CALL                             R6 0 1
       23 SETTABLEKS                       R6 R5 K7 ["OpenLoadingPageAsync"]
       25 GETTABLEKS                       R6 R2 K12 ["fn"]
       27 CALL                             R6 0 1
       28 SETTABLEKS                       R6 R5 K8 ["SetStartPageFirstRenderTimeAsync"]
       30 GETTABLEKS                       R6 R2 K12 ["fn"]
       32 CALL                             R6 0 1
       33 SETTABLEKS                       R6 R5 K9 ["GetStartPageFirstRenderTimeAsync"]
       35 GETTABLEKS                       R6 R2 K12 ["fn"]
       37 CALL                             R6 0 1
       38 SETTABLEKS                       R6 R5 K10 ["GetLoginTimeAsync"]
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

PROTO_4:
        0 LOADN                            R0 1
        1 RETURN                           R0 1

PROTO_5:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["Packages"]
        5 GETTABLEKS                       R3 R4 K3 ["Dev"]
        7 GETTABLEKS                       R2 R3 K4 ["JestGlobals"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K5 ["jest"]
       12 LOADB                            R3 0
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R0
       15 DUPTABLE                         R6 K26 [{"openLink", "openLocalFile", "openPlace", "getStartPageVersionForUser", "generateTempUrlInContentProvider", "getDaysSinceFirstUserLogin", "isTutorialBannerClosed", "setTutorialBannerClosed", "isTutorialPopupClosed", "setTutorialPopupClosed", "startTutorial", "removeAPIGameFromRegistry", "removeLocalFileFromRegistry", "getRecentAPIGamesFromRegistry", "getLocalGamesFromRegistry", "LocalGamesFromRegistryUpdatedSignal", "RecentApiGamesFromRegistryUpdatedSignal", "ImageImportedSignal", "shouldShowWinOSDeprecationWarning", "shouldShowMacOSDeprecationWarning"}]
       16 GETTABLEKS                       R7 R2 K27 ["fn"]
       18 CALL                             R7 0 1
       19 SETTABLEKS                       R7 R6 K6 ["openLink"]
       21 GETTABLEKS                       R7 R2 K27 ["fn"]
       23 CALL                             R7 0 1
       24 SETTABLEKS                       R7 R6 K7 ["openLocalFile"]
       26 GETTABLEKS                       R7 R2 K27 ["fn"]
       28 CALL                             R7 0 1
       29 SETTABLEKS                       R7 R6 K8 ["openPlace"]
       31 GETTABLEKS                       R7 R2 K27 ["fn"]
       33 CALL                             R7 0 1
       34 SETTABLEKS                       R7 R6 K9 ["getStartPageVersionForUser"]
       36 GETTABLEKS                       R7 R2 K27 ["fn"]
       38 CALL                             R7 0 1
       39 SETTABLEKS                       R7 R6 K10 ["generateTempUrlInContentProvider"]
       41 GETTABLEKS                       R7 R2 K27 ["fn"]
       43 DUPCLOSURE                       R8 K28 [PROTO_4]
       44 CALL                             R7 1 1
       45 SETTABLEKS                       R7 R6 K11 ["getDaysSinceFirstUserLogin"]
       47 GETTABLEKS                       R7 R2 K27 ["fn"]
       49 DUPCLOSURE                       R8 K29 [PROTO_5]
       50 CALL                             R7 1 1
       51 SETTABLEKS                       R7 R6 K12 ["isTutorialBannerClosed"]
       53 GETTABLEKS                       R7 R2 K27 ["fn"]
       55 CALL                             R7 0 1
       56 SETTABLEKS                       R7 R6 K13 ["setTutorialBannerClosed"]
       58 GETTABLEKS                       R7 R2 K27 ["fn"]
       60 NEWCLOSURE                       R8 P2
       61 CAPTURE                          REF R3
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K14 ["isTutorialPopupClosed"]
       65 GETTABLEKS                       R7 R2 K27 ["fn"]
       67 NEWCLOSURE                       R8 P3
       68 CAPTURE                          REF R3
       69 CALL                             R7 1 1
       70 SETTABLEKS                       R7 R6 K15 ["setTutorialPopupClosed"]
       72 GETTABLEKS                       R7 R2 K27 ["fn"]
       74 CALL                             R7 0 1
       75 SETTABLEKS                       R7 R6 K16 ["startTutorial"]
       77 GETTABLEKS                       R7 R2 K27 ["fn"]
       79 CALL                             R7 0 1
       80 SETTABLEKS                       R7 R6 K17 ["removeAPIGameFromRegistry"]
       82 GETTABLEKS                       R7 R2 K27 ["fn"]
       84 CALL                             R7 0 1
       85 SETTABLEKS                       R7 R6 K18 ["removeLocalFileFromRegistry"]
       87 GETTABLEKS                       R7 R2 K27 ["fn"]
       89 CALL                             R7 0 1
       90 SETTABLEKS                       R7 R6 K19 ["getRecentAPIGamesFromRegistry"]
       92 GETTABLEKS                       R7 R2 K27 ["fn"]
       94 CALL                             R7 0 1
       95 SETTABLEKS                       R7 R6 K20 ["getLocalGamesFromRegistry"]
       97 GETUPVAL                         R8 2
       98 GETTABLEKS                       R7 R8 K30 ["new"]
      100 CALL                             R7 0 1
      101 SETTABLEKS                       R7 R6 K21 ["LocalGamesFromRegistryUpdatedSignal"]
      103 GETUPVAL                         R8 2
      104 GETTABLEKS                       R7 R8 K30 ["new"]
      106 CALL                             R7 0 1
      107 SETTABLEKS                       R7 R6 K22 ["RecentApiGamesFromRegistryUpdatedSignal"]
      109 GETUPVAL                         R8 2
      110 GETTABLEKS                       R7 R8 K30 ["new"]
      112 CALL                             R7 0 1
      113 SETTABLEKS                       R7 R6 K23 ["ImageImportedSignal"]
      115 GETTABLEKS                       R7 R2 K27 ["fn"]
      117 CALL                             R7 0 1
      118 SETTABLEKS                       R7 R6 K24 ["shouldShowWinOSDeprecationWarning"]
      120 GETTABLEKS                       R7 R2 K27 ["fn"]
      122 CALL                             R7 0 1
      123 SETTABLEKS                       R7 R6 K25 ["shouldShowMacOSDeprecationWarning"]
      125 CALL                             R4 2 -1
      126 CLOSEUPVALS                      R3
      127 RETURN                           R4 -1

PROTO_9:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["Packages"]
        5 GETTABLEKS                       R3 R4 K3 ["Dev"]
        7 GETTABLEKS                       R2 R3 K4 ["JestGlobals"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K5 ["jest"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 DUPTABLE                         R5 K7 [{"ShowDialogAsync"}]
       15 GETTABLEKS                       R6 R2 K8 ["fn"]
       17 CALL                             R6 0 1
       18 SETTABLEKS                       R6 R5 K6 ["ShowDialogAsync"]
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADB                            R0 1
        3 RETURN                           R0 1
        4 LOADB                            R0 0
        5 RETURN                           R0 1

PROTO_11:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K2 ["Packages"]
        5 GETTABLEKS                       R4 R5 K3 ["Dev"]
        7 GETTABLEKS                       R3 R4 K4 ["JestGlobals"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K5 ["jest"]
       12 GETUPVAL                         R4 1
       13 MOVE                             R5 R0
       14 DUPTABLE                         R6 K8 [{"GetUserId", "HasInternalPermission"}]
       15 GETTABLEKS                       R7 R3 K9 ["fn"]
       17 CALL                             R7 0 1
       18 SETTABLEKS                       R7 R6 K6 ["GetUserId"]
       20 GETTABLEKS                       R7 R3 K9 ["fn"]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          VAL R1
       24 CALL                             R7 1 1
       25 SETTABLEKS                       R7 R6 K7 ["HasInternalPermission"]
       27 CALL                             R4 2 -1
       28 RETURN                           R4 -1

PROTO_12:
        0 LOADN                            R1 255
        1 RETURN                           R1 1

PROTO_13:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_14:
        0 JUMPIFNOT                        R1 ; [+2]
        1 LOADB                            R2 1
        2 JUMP                             ; [+1]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R0 K0 ["IsLoggedIn"]
        6 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R2 K1 [{"__index"}]
        3 GETUPVAL                         R3 0
        4 SETTABLEKS                       R3 R2 K0 ["__index"]
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K3 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_16:
        0 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["apis"]
        2 GETTABLEKS                       R4 R1 K1 ["Url"]
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+28]
        6 GETTABLEKS                       R3 R0 K0 ["apis"]
        8 GETTABLEKS                       R4 R1 K1 ["Url"]
       10 GETTABLE                         R2 R3 R4
       11 FASTCALL1                        TYPEOF R2 ; [+3]
       12 MOVE                             R5 R2
       13 GETIMPORT                        R4 K3 [typeof]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K4 ["function"] ; [+6]
       18 MOVE                             R3 R2
       19 GETTABLEKS                       R4 R1 K5 ["Body"]
       21 CALL                             R3 1 1
       22 JUMP                             ; [+1]
       23 MOVE                             R3 R2
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K6 ["resolve"]
       27 DUPTABLE                         R5 K9 [{"responseBody", "requestOptions"}]
       28 SETTABLEKS                       R3 R5 K7 ["responseBody"]
       30 SETTABLEKS                       R1 R5 K8 ["requestOptions"]
       32 CALL                             R4 1 -1
       33 RETURN                           R4 -1
       34 GETIMPORT                        R2 K11 [error]
       36 LOADK                            R4 K12 ["Unexpected url: %*"]
       37 GETTABLEKS                       R6 R1 K1 ["Url"]
       39 NAMECALL                         R4 R4 K13 ["format"]
       41 CALL                             R4 2 1
       42 MOVE                             R3 R4
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R5 K3 [{"Url", "Method", "Headers"}]
        1 SETTABLEKS                       R1 R5 K0 ["Url"]
        3 LOADK                            R6 K4 ["DELETE"]
        4 SETTABLEKS                       R6 R5 K1 ["Method"]
        6 SETTABLEKS                       R2 R5 K2 ["Headers"]
        8 NAMECALL                         R3 R0 K5 ["request"]
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1

PROTO_19:
        0 DUPTABLE                         R5 K3 [{"Url", "Method", "Headers"}]
        1 SETTABLEKS                       R1 R5 K0 ["Url"]
        3 LOADK                            R6 K4 ["GET"]
        4 SETTABLEKS                       R6 R5 K1 ["Method"]
        6 SETTABLEKS                       R2 R5 K2 ["Headers"]
        8 NAMECALL                         R3 R0 K5 ["request"]
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1

PROTO_20:
        0 DUPTABLE                         R6 K4 [{"Url", "Method", "Headers", "Body"}]
        1 SETTABLEKS                       R1 R6 K0 ["Url"]
        3 LOADK                            R7 K5 ["PATCH"]
        4 SETTABLEKS                       R7 R6 K1 ["Method"]
        6 SETTABLEKS                       R3 R6 K2 ["Headers"]
        8 SETTABLEKS                       R2 R6 K3 ["Body"]
       10 NAMECALL                         R4 R0 K6 ["request"]
       12 CALL                             R4 2 -1
       13 RETURN                           R4 -1

PROTO_21:
        0 DUPTABLE                         R6 K4 [{"Url", "Method", "Headers", "Body"}]
        1 SETTABLEKS                       R1 R6 K0 ["Url"]
        3 LOADK                            R7 K5 ["POST"]
        4 SETTABLEKS                       R7 R6 K1 ["Method"]
        6 SETTABLEKS                       R3 R6 K2 ["Headers"]
        8 SETTABLEKS                       R2 R6 K3 ["Body"]
       10 NAMECALL                         R4 R0 K6 ["request"]
       12 CALL                             R4 2 -1
       13 RETURN                           R4 -1

PROTO_22:
        0 DUPTABLE                         R5 K3 [{"Url", "Method", "Headers"}]
        1 SETTABLEKS                       R1 R5 K0 ["Url"]
        3 LOADK                            R6 K4 ["PUT"]
        4 SETTABLEKS                       R6 R5 K1 ["Method"]
        6 SETTABLEKS                       R2 R5 K2 ["Headers"]
        8 NAMECALL                         R3 R0 K5 ["request"]
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1

PROTO_23:
        0 SETTABLEKS                       R1 R0 K0 ["apis"]
        2 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["RbxAnalyticsService"]
        4 CALL                             R3 1 0
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K1 ["SettingsBridge"]
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 3
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K2 ["StartPageBridge"]
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 4
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K3 ["StartPageManager"]
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 5
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K4 ["StudioService"]
       24 MOVE                             R5 R1
       25 CALL                             R3 2 0
       26 GETGLOBAL                        R3 K5 ["resetStudioUserServiceMock"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K6 ["StudioUserService"]
       31 MOVE                             R5 R2
       32 CALL                             R3 2 0
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R3 R4 K7 ["Networking"]
       36 SETTABLEKS                       R0 R3 K8 ["apis"]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R3 R4 K9 ["DialogManager"]
       41 GETIMPORT                        R4 K11 [require]
       43 GETUPVAL                         R8 6
       44 GETTABLEKS                       R7 R8 K12 ["Packages"]
       46 GETTABLEKS                       R6 R7 K13 ["Dev"]
       48 GETTABLEKS                       R5 R6 K14 ["JestGlobals"]
       50 CALL                             R4 1 1
       51 GETTABLEKS                       R5 R4 K15 ["jest"]
       53 GETUPVAL                         R6 7
       54 MOVE                             R7 R3
       55 DUPTABLE                         R8 K17 [{"ShowDialogAsync"}]
       56 GETTABLEKS                       R9 R5 K18 ["fn"]
       58 CALL                             R9 0 1
       59 SETTABLEKS                       R9 R8 K16 ["ShowDialogAsync"]
       61 CALL                             R6 2 1
       62 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isCli"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["StartPageBridge"]
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K2 ["use"]
       12 CALL                             R0 1 1
       13 NAMECALL                         R0 R0 K3 ["get"]
       15 CALL                             R0 1 1
       16 LOADK                            R3 K1 ["StartPageBridge"]
       17 NAMECALL                         R1 R0 K4 ["GetPluginComponent"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isCli"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["SettingsBridge"]
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K2 ["use"]
       12 CALL                             R0 1 1
       13 NAMECALL                         R0 R0 K3 ["get"]
       15 CALL                             R0 1 1
       16 LOADK                            R3 K4 ["Settings"]
       17 NAMECALL                         R1 R0 K5 ["GetPluginComponent"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isCli"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["DialogManager"]
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K2 ["use"]
       12 CALL                             R0 1 1
       13 NAMECALL                         R0 R0 K3 ["get"]
       15 CALL                             R0 1 1
       16 LOADK                            R3 K1 ["DialogManager"]
       17 NAMECALL                         R1 R0 K4 ["GetPluginComponent"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["TestLoader"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Util"]
       34 GETTABLEKS                       R5 R6 K12 ["TypedPromise"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K11 ["Util"]
       43 GETTABLEKS                       R6 R7 K13 ["TypedNetworking"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R8 K14 ["Types"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R8 R2 K15 ["ContextServices"]
       55 GETTABLEKS                       R7 R8 K16 ["Plugin"]
       57 GETTABLEKS                       R8 R1 K17 ["assign"]
       59 GETTABLEKS                       R10 R2 K11 ["Util"]
       61 GETTABLEKS                       R9 R10 K18 ["Signal"]
       63 DUPCLOSURE                       R10 K19 [PROTO_0]
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R8
       66 DUPCLOSURE                       R11 K20 [PROTO_2]
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R8
       69 DUPCLOSURE                       R12 K21 [PROTO_3]
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R8
       72 DUPCLOSURE                       R13 K22 [PROTO_8]
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 DUPCLOSURE                       R14 K23 [PROTO_9]
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R8
       79 DUPCLOSURE                       R15 K24 [PROTO_11]
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R8
       82 NEWTABLE                         R16 2 0
       84 DUPCLOSURE                       R17 K25 [PROTO_12]
       85 SETTABLEKS                       R17 R16 K26 ["GetUserId"]
       87 DUPCLOSURE                       R17 K27 [PROTO_13]
       88 SETTABLEKS                       R17 R16 K28 ["HasInternalPermission"]
       90 DUPTABLE                         R17 K30 [{"IsLoggedIn"}]
       91 LOADB                            R18 1
       92 SETTABLEKS                       R18 R17 K29 ["IsLoggedIn"]
       94 DUPCLOSURE                       R18 K31 [PROTO_14]
       95 SETGLOBAL                        R18 K32 ["resetStudioUserServiceMock"]
       97 DUPTABLE                         R18 K34 [{"apis"}]
       98 NEWTABLE                         R19 0 0
      100 SETTABLEKS                       R19 R18 K33 ["apis"]
      102 DUPCLOSURE                       R19 K35 [PROTO_15]
      103 CAPTURE                          VAL R18
      104 SETTABLEKS                       R19 R18 K36 ["new"]
      106 DUPCLOSURE                       R19 K37 [PROTO_16]
      107 SETTABLEKS                       R19 R18 K38 ["parseJson"]
      109 DUPCLOSURE                       R19 K39 [PROTO_17]
      110 CAPTURE                          VAL R4
      111 SETTABLEKS                       R19 R18 K40 ["request"]
      113 DUPCLOSURE                       R19 K41 [PROTO_18]
      114 SETTABLEKS                       R19 R18 K42 ["delete"]
      116 DUPCLOSURE                       R19 K43 [PROTO_19]
      117 SETTABLEKS                       R19 R18 K44 ["get"]
      119 DUPCLOSURE                       R19 K45 [PROTO_20]
      120 SETTABLEKS                       R19 R18 K46 ["patch"]
      122 DUPCLOSURE                       R19 K47 [PROTO_21]
      123 SETTABLEKS                       R19 R18 K48 ["post"]
      125 DUPCLOSURE                       R19 K49 [PROTO_22]
      126 SETTABLEKS                       R19 R18 K50 ["put"]
      128 DUPCLOSURE                       R19 K51 [PROTO_23]
      129 LOADNIL                          R20
      130 DUPTABLE                         R21 K64 [{"Networking", "RbxAnalyticsService", "SettingsBridge", "StartPageBridge", "StartPageManager", "StudioService", "StudioUserService", "DialogManager", "mock", "getStartPageBridge", "getSettingsBridge", "getDialogManager"}]
      131 GETTABLEKS                       R23 R3 K65 ["isCli"]
      133 CALL                             R23 0 1
      134 JUMPIFNOT                        R23 ; [+2]
      135 MOVE                             R22 R18
      136 JUMP                             ; [+1]
      137 MOVE                             R22 R5
      138 SETTABLEKS                       R22 R21 K52 ["Networking"]
      140 GETTABLEKS                       R23 R3 K65 ["isCli"]
      142 CALL                             R23 0 1
      143 JUMPIFNOT                        R23 ; [+3]
      144 NEWTABLE                         R22 0 0
      146 JUMP                             ; [+6]
      147 GETIMPORT                        R22 K67 [game]
      149 LOADK                            R24 K53 ["RbxAnalyticsService"]
      150 NAMECALL                         R22 R22 K68 ["GetService"]
      152 CALL                             R22 2 1
      153 SETTABLEKS                       R22 R21 K53 ["RbxAnalyticsService"]
      155 NEWTABLE                         R22 0 0
      157 SETTABLEKS                       R22 R21 K54 ["SettingsBridge"]
      159 NEWTABLE                         R22 0 0
      161 SETTABLEKS                       R22 R21 K55 ["StartPageBridge"]
      163 GETTABLEKS                       R23 R3 K65 ["isCli"]
      165 CALL                             R23 0 1
      166 JUMPIFNOT                        R23 ; [+3]
      167 NEWTABLE                         R22 0 0
      169 JUMP                             ; [+6]
      170 GETIMPORT                        R22 K67 [game]
      172 LOADK                            R24 K69 ["StartPageService"]
      173 NAMECALL                         R22 R22 K68 ["GetService"]
      175 CALL                             R22 2 1
      176 SETTABLEKS                       R22 R21 K56 ["StartPageManager"]
      178 GETTABLEKS                       R23 R3 K65 ["isCli"]
      180 CALL                             R23 0 1
      181 JUMPIFNOT                        R23 ; [+2]
      182 MOVE                             R22 R16
      183 JUMP                             ; [+6]
      184 GETIMPORT                        R22 K67 [game]
      186 LOADK                            R24 K57 ["StudioService"]
      187 NAMECALL                         R22 R22 K68 ["GetService"]
      189 CALL                             R22 2 1
      190 SETTABLEKS                       R22 R21 K57 ["StudioService"]
      192 GETTABLEKS                       R23 R3 K65 ["isCli"]
      194 CALL                             R23 0 1
      195 JUMPIFNOT                        R23 ; [+2]
      196 MOVE                             R22 R17
      197 JUMP                             ; [+6]
      198 GETIMPORT                        R22 K67 [game]
      200 LOADK                            R24 K58 ["StudioUserService"]
      201 NAMECALL                         R22 R22 K68 ["GetService"]
      203 CALL                             R22 2 1
      204 SETTABLEKS                       R22 R21 K58 ["StudioUserService"]
      206 NEWTABLE                         R22 0 0
      208 SETTABLEKS                       R22 R21 K59 ["DialogManager"]
      210 NEWCLOSURE                       R22 P18
      211 CAPTURE                          VAL R10
      212 CAPTURE                          REF R20
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R15
      217 CAPTURE                          VAL R0
      218 CAPTURE                          VAL R8
      219 SETTABLEKS                       R22 R21 K60 ["mock"]
      221 NEWCLOSURE                       R22 P19
      222 CAPTURE                          VAL R3
      223 CAPTURE                          REF R20
      224 CAPTURE                          VAL R7
      225 SETTABLEKS                       R22 R21 K61 ["getStartPageBridge"]
      227 NEWCLOSURE                       R22 P20
      228 CAPTURE                          VAL R3
      229 CAPTURE                          REF R20
      230 CAPTURE                          VAL R7
      231 SETTABLEKS                       R22 R21 K62 ["getSettingsBridge"]
      233 NEWCLOSURE                       R22 P21
      234 CAPTURE                          VAL R3
      235 CAPTURE                          REF R20
      236 CAPTURE                          VAL R7
      237 SETTABLEKS                       R22 R21 K63 ["getDialogManager"]
      239 MOVE                             R20 R21
      240 CLOSEUPVALS                      R20
      241 RETURN                           R20 1
