PROTO_0:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["Dev"]
        7 GETTABLEKS                       R2 R2 K4 ["JestGlobals"]
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
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["Dev"]
        7 GETTABLEKS                       R2 R2 K4 ["JestGlobals"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K5 ["jest"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 DUPTABLE                         R5 K16 [{"ListAsync", "GetAsync", "CreateAsync", "MultiBindToActivatedAsync", "BindToActivatedAsync", "MultiBindToChangedAsync", "BindToChangedAsync", "ActivateAsync", "UpdateAsync", "IsContextManagedAsync"}]
       15 GETTABLEKS                       R6 R2 K17 ["fn"]
       17 CALL                             R6 0 1
       18 SETTABLEKS                       R6 R5 K6 ["ListAsync"]
       20 GETTABLEKS                       R6 R2 K17 ["fn"]
       22 CALL                             R6 0 1
       23 SETTABLEKS                       R6 R5 K7 ["GetAsync"]
       25 GETTABLEKS                       R6 R2 K17 ["fn"]
       27 CALL                             R6 0 1
       28 SETTABLEKS                       R6 R5 K8 ["CreateAsync"]
       30 GETTABLEKS                       R6 R2 K17 ["fn"]
       32 CALL                             R6 0 1
       33 SETTABLEKS                       R6 R5 K9 ["MultiBindToActivatedAsync"]
       35 GETTABLEKS                       R6 R2 K17 ["fn"]
       37 CALL                             R6 0 1
       38 SETTABLEKS                       R6 R5 K10 ["BindToActivatedAsync"]
       40 GETTABLEKS                       R6 R2 K17 ["fn"]
       42 CALL                             R6 0 1
       43 SETTABLEKS                       R6 R5 K11 ["MultiBindToChangedAsync"]
       45 GETTABLEKS                       R6 R2 K17 ["fn"]
       47 CALL                             R6 0 1
       48 SETTABLEKS                       R6 R5 K12 ["BindToChangedAsync"]
       50 GETTABLEKS                       R6 R2 K17 ["fn"]
       52 CALL                             R6 0 1
       53 SETTABLEKS                       R6 R5 K13 ["ActivateAsync"]
       55 GETTABLEKS                       R6 R2 K17 ["fn"]
       57 CALL                             R6 0 1
       58 SETTABLEKS                       R6 R5 K14 ["UpdateAsync"]
       60 GETTABLEKS                       R6 R2 K17 ["fn"]
       62 CALL                             R6 0 1
       63 SETTABLEKS                       R6 R5 K15 ["IsContextManagedAsync"]
       65 CALL                             R3 2 -1
       66 RETURN                           R3 -1

PROTO_2:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["Dev"]
        7 GETTABLEKS                       R2 R2 K4 ["JestGlobals"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K5 ["jest"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 DUPTABLE                         R5 K16 [{"BindAsync", "CreateAsync", "DeleteAsync", "GetAsync", "ListAsync", "MultiBindAsync", "SetBoolAsync", "SetNumberAsync", "SetStringAsync", "UpdateAsync"}]
       15 GETTABLEKS                       R6 R2 K17 ["fn"]
       17 DUPCLOSURE                       R7 K18 [PROTO_2]
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

PROTO_4:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["Dev"]
        7 GETTABLEKS                       R2 R2 K4 ["JestGlobals"]
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

PROTO_5:
        0 LOADN                            R0 1
        1 RETURN                           R0 1

PROTO_6:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["Dev"]
        7 GETTABLEKS                       R2 R2 K4 ["JestGlobals"]
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
       43 DUPCLOSURE                       R8 K28 [PROTO_5]
       44 CALL                             R7 1 1
       45 SETTABLEKS                       R7 R6 K11 ["getDaysSinceFirstUserLogin"]
       47 GETTABLEKS                       R7 R2 K27 ["fn"]
       49 DUPCLOSURE                       R8 K29 [PROTO_6]
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
       97 GETUPVAL                         R7 2
       98 GETTABLEKS                       R7 R7 K30 ["new"]
      100 CALL                             R7 0 1
      101 SETTABLEKS                       R7 R6 K21 ["LocalGamesFromRegistryUpdatedSignal"]
      103 GETUPVAL                         R7 2
      104 GETTABLEKS                       R7 R7 K30 ["new"]
      106 CALL                             R7 0 1
      107 SETTABLEKS                       R7 R6 K22 ["RecentApiGamesFromRegistryUpdatedSignal"]
      109 GETUPVAL                         R7 2
      110 GETTABLEKS                       R7 R7 K30 ["new"]
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

PROTO_10:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["Dev"]
        7 GETTABLEKS                       R2 R2 K4 ["JestGlobals"]
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADB                            R0 1
        3 RETURN                           R0 1
        4 LOADB                            R0 0
        5 RETURN                           R0 1

PROTO_12:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K2 ["Packages"]
        5 GETTABLEKS                       R3 R3 K3 ["Dev"]
        7 GETTABLEKS                       R3 R3 K4 ["JestGlobals"]
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

PROTO_13:
        0 LOADN                            R1 -1
        1 RETURN                           R1 1

PROTO_14:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_15:
        0 JUMPIFNOT                        R1 ; [+2]
        1 LOADB                            R2 1
        2 JUMP                             ; [+1]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R0 K0 ["IsLoggedIn"]
        6 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R2 K1 [{"__index"}]
        3 GETUPVAL                         R3 0
        4 SETTABLEKS                       R3 R2 K0 ["__index"]
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K3 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_17:
        0 RETURN                           R1 1

PROTO_18:
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
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K6 ["resolve"]
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

PROTO_19:
        0 DUPTABLE                         R5 K4 [{[1], ["Method"] = "DELETE", ["Headers"]}]
        1 SETTABLEKS                       R1 R5 K0 ["Url"]
        3 SETTABLEKS                       R2 R5 K3 ["Headers"]
        5 NAMECALL                         R3 R0 K5 ["request"]
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_20:
        0 DUPTABLE                         R5 K4 [{[1], ["Method"] = "GET", ["Headers"]}]
        1 SETTABLEKS                       R1 R5 K0 ["Url"]
        3 SETTABLEKS                       R2 R5 K3 ["Headers"]
        5 NAMECALL                         R3 R0 K5 ["request"]
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_21:
        0 DUPTABLE                         R6 K5 [{[1], ["Method"] = "PATCH", ["Headers"], ["Body"]}]
        1 SETTABLEKS                       R1 R6 K0 ["Url"]
        3 SETTABLEKS                       R3 R6 K3 ["Headers"]
        5 SETTABLEKS                       R2 R6 K4 ["Body"]
        7 NAMECALL                         R4 R0 K6 ["request"]
        9 CALL                             R4 2 -1
       10 RETURN                           R4 -1

PROTO_22:
        0 DUPTABLE                         R6 K5 [{[1], ["Method"] = "POST", ["Headers"], ["Body"]}]
        1 SETTABLEKS                       R1 R6 K0 ["Url"]
        3 SETTABLEKS                       R3 R6 K3 ["Headers"]
        5 SETTABLEKS                       R2 R6 K4 ["Body"]
        7 NAMECALL                         R4 R0 K6 ["request"]
        9 CALL                             R4 2 -1
       10 RETURN                           R4 -1

PROTO_23:
        0 DUPTABLE                         R5 K4 [{[1], ["Method"] = "PUT", ["Headers"]}]
        1 SETTABLEKS                       R1 R5 K0 ["Url"]
        3 SETTABLEKS                       R2 R5 K3 ["Headers"]
        5 NAMECALL                         R3 R0 K5 ["request"]
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_24:
        0 SETTABLEKS                       R1 R0 K0 ["apis"]
        2 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["RbxAnalyticsService"]
        4 CALL                             R3 1 0
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["ActionsBridge"]
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 3
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["SettingsBridge"]
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 4
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K3 ["StartPageBridge"]
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 5
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K4 ["StartPageManager"]
       24 CALL                             R3 1 0
       25 GETUPVAL                         R3 6
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K5 ["StudioService"]
       29 MOVE                             R5 R1
       30 CALL                             R3 2 0
       31 GETGLOBAL                        R3 K6 ["resetStudioUserServiceMock"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K7 ["StudioUserService"]
       36 MOVE                             R5 R2
       37 CALL                             R3 2 0
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K8 ["Networking"]
       41 SETTABLEKS                       R0 R3 K9 ["apis"]
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K10 ["DialogManager"]
       46 GETIMPORT                        R4 K12 [require]
       48 GETUPVAL                         R5 7
       49 GETTABLEKS                       R5 R5 K13 ["Packages"]
       51 GETTABLEKS                       R5 R5 K14 ["Dev"]
       53 GETTABLEKS                       R5 R5 K15 ["JestGlobals"]
       55 CALL                             R4 1 1
       56 GETTABLEKS                       R5 R4 K16 ["jest"]
       58 GETUPVAL                         R6 8
       59 MOVE                             R7 R3
       60 DUPTABLE                         R8 K18 [{"ShowDialogAsync"}]
       61 GETTABLEKS                       R9 R5 K19 ["fn"]
       63 CALL                             R9 0 1
       64 SETTABLEKS                       R9 R8 K17 ["ShowDialogAsync"]
       66 CALL                             R6 2 1
       67 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isCli"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["StartPageBridge"]
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

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isCli"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["SettingsBridge"]
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isCli"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["DialogManager"]
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isCli"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["ActionsBridge"]
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K2 ["use"]
       12 CALL                             R0 1 1
       13 NAMECALL                         R0 R0 K3 ["get"]
       15 CALL                             R0 1 1
       16 LOADK                            R3 K4 ["Actions"]
       17 NAMECALL                         R1 R0 K5 ["GetPluginComponent"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["TestLoader"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["TypedPromise"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["TypedNetworking"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Types"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K15 ["ContextServices"]
       55 GETTABLEKS                       R7 R7 K16 ["Plugin"]
       57 GETTABLEKS                       R8 R1 K17 ["assign"]
       59 GETTABLEKS                       R9 R2 K11 ["Util"]
       61 GETTABLEKS                       R9 R9 K18 ["Signal"]
       63 DUPCLOSURE                       R10 K19 [PROTO_0]
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R8
       66 DUPCLOSURE                       R11 K20 [PROTO_1]
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R8
       69 DUPCLOSURE                       R12 K21 [PROTO_3]
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R8
       72 DUPCLOSURE                       R13 K22 [PROTO_4]
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R8
       75 DUPCLOSURE                       R14 K23 [PROTO_9]
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 DUPCLOSURE                       R15 K24 [PROTO_10]
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R8
       82 DUPCLOSURE                       R16 K25 [PROTO_12]
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R8
       85 NEWTABLE                         R17 2 0
       87 DUPCLOSURE                       R18 K26 [PROTO_13]
       88 SETTABLEKS                       R18 R17 K27 ["GetUserId"]
       90 DUPCLOSURE                       R18 K28 [PROTO_14]
       91 SETTABLEKS                       R18 R17 K29 ["HasInternalPermission"]
       93 DUPTABLE                         R18 K32 [{["IsLoggedIn"] = True}]
       94 DUPCLOSURE                       R19 K33 [PROTO_15]
       95 SETGLOBAL                        R19 K34 ["resetStudioUserServiceMock"]
       97 DUPTABLE                         R19 K36 [{"apis"}]
       98 NEWTABLE                         R20 0 0
      100 SETTABLEKS                       R20 R19 K35 ["apis"]
      102 DUPCLOSURE                       R20 K37 [PROTO_16]
      103 CAPTURE                          VAL R19
      104 SETTABLEKS                       R20 R19 K38 ["new"]
      106 DUPCLOSURE                       R20 K39 [PROTO_17]
      107 SETTABLEKS                       R20 R19 K40 ["parseJson"]
      109 DUPCLOSURE                       R20 K41 [PROTO_18]
      110 CAPTURE                          VAL R4
      111 SETTABLEKS                       R20 R19 K42 ["request"]
      113 DUPCLOSURE                       R20 K43 [PROTO_19]
      114 SETTABLEKS                       R20 R19 K44 ["delete"]
      116 DUPCLOSURE                       R20 K45 [PROTO_20]
      117 SETTABLEKS                       R20 R19 K46 ["get"]
      119 DUPCLOSURE                       R20 K47 [PROTO_21]
      120 SETTABLEKS                       R20 R19 K48 ["patch"]
      122 DUPCLOSURE                       R20 K49 [PROTO_22]
      123 SETTABLEKS                       R20 R19 K50 ["post"]
      125 DUPCLOSURE                       R20 K51 [PROTO_23]
      126 SETTABLEKS                       R20 R19 K52 ["put"]
      128 DUPCLOSURE                       R20 K53 [PROTO_24]
      129 LOADNIL                          R21
      130 DUPTABLE                         R22 K68 [{"Networking", "RbxAnalyticsService", "ActionsBridge", "SettingsBridge", "StartPageBridge", "StartPageManager", "StudioService", "StudioUserService", "DialogManager", "mock", "getStartPageBridge", "getSettingsBridge", "getDialogManager", "getActionsBridge"}]
      131 GETTABLEKS                       R24 R3 K69 ["isCli"]
      133 CALL                             R24 0 1
      134 JUMPIFNOT                        R24 ; [+2]
      135 MOVE                             R23 R19
      136 JUMP                             ; [+1]
      137 MOVE                             R23 R5
      138 SETTABLEKS                       R23 R22 K54 ["Networking"]
      140 GETTABLEKS                       R24 R3 K69 ["isCli"]
      142 CALL                             R24 0 1
      143 JUMPIFNOT                        R24 ; [+3]
      144 NEWTABLE                         R23 0 0
      146 JUMP                             ; [+6]
      147 GETIMPORT                        R23 K71 [game]
      149 LOADK                            R25 K55 ["RbxAnalyticsService"]
      150 NAMECALL                         R23 R23 K72 ["GetService"]
      152 CALL                             R23 2 1
      153 SETTABLEKS                       R23 R22 K55 ["RbxAnalyticsService"]
      155 NEWTABLE                         R23 0 0
      157 SETTABLEKS                       R23 R22 K56 ["ActionsBridge"]
      159 NEWTABLE                         R23 0 0
      161 SETTABLEKS                       R23 R22 K57 ["SettingsBridge"]
      163 NEWTABLE                         R23 0 0
      165 SETTABLEKS                       R23 R22 K58 ["StartPageBridge"]
      167 GETTABLEKS                       R24 R3 K69 ["isCli"]
      169 CALL                             R24 0 1
      170 JUMPIFNOT                        R24 ; [+3]
      171 NEWTABLE                         R23 0 0
      173 JUMP                             ; [+6]
      174 GETIMPORT                        R23 K71 [game]
      176 LOADK                            R25 K73 ["StartPageService"]
      177 NAMECALL                         R23 R23 K72 ["GetService"]
      179 CALL                             R23 2 1
      180 SETTABLEKS                       R23 R22 K59 ["StartPageManager"]
      182 GETTABLEKS                       R24 R3 K69 ["isCli"]
      184 CALL                             R24 0 1
      185 JUMPIFNOT                        R24 ; [+2]
      186 MOVE                             R23 R17
      187 JUMP                             ; [+6]
      188 GETIMPORT                        R23 K71 [game]
      190 LOADK                            R25 K60 ["StudioService"]
      191 NAMECALL                         R23 R23 K72 ["GetService"]
      193 CALL                             R23 2 1
      194 SETTABLEKS                       R23 R22 K60 ["StudioService"]
      196 GETTABLEKS                       R24 R3 K69 ["isCli"]
      198 CALL                             R24 0 1
      199 JUMPIFNOT                        R24 ; [+2]
      200 MOVE                             R23 R18
      201 JUMP                             ; [+6]
      202 GETIMPORT                        R23 K71 [game]
      204 LOADK                            R25 K61 ["StudioUserService"]
      205 NAMECALL                         R23 R23 K72 ["GetService"]
      207 CALL                             R23 2 1
      208 SETTABLEKS                       R23 R22 K61 ["StudioUserService"]
      210 NEWTABLE                         R23 0 0
      212 SETTABLEKS                       R23 R22 K62 ["DialogManager"]
      214 NEWCLOSURE                       R23 P19
      215 CAPTURE                          VAL R10
      216 CAPTURE                          REF R21
      217 CAPTURE                          VAL R11
      218 CAPTURE                          VAL R12
      219 CAPTURE                          VAL R13
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R16
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R8
      224 SETTABLEKS                       R23 R22 K63 ["mock"]
      226 NEWCLOSURE                       R23 P20
      227 CAPTURE                          VAL R3
      228 CAPTURE                          REF R21
      229 CAPTURE                          VAL R7
      230 SETTABLEKS                       R23 R22 K64 ["getStartPageBridge"]
      232 NEWCLOSURE                       R23 P21
      233 CAPTURE                          VAL R3
      234 CAPTURE                          REF R21
      235 CAPTURE                          VAL R7
      236 SETTABLEKS                       R23 R22 K65 ["getSettingsBridge"]
      238 NEWCLOSURE                       R23 P22
      239 CAPTURE                          VAL R3
      240 CAPTURE                          REF R21
      241 CAPTURE                          VAL R7
      242 SETTABLEKS                       R23 R22 K66 ["getDialogManager"]
      244 NEWCLOSURE                       R23 P23
      245 CAPTURE                          VAL R3
      246 CAPTURE                          REF R21
      247 CAPTURE                          VAL R7
      248 SETTABLEKS                       R23 R22 K67 ["getActionsBridge"]
      250 MOVE                             R21 R22
      251 CLOSEUPVALS                      R21
      252 RETURN                           R21 1
