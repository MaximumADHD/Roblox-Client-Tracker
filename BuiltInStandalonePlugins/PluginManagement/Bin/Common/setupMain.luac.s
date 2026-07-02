PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Rodux"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["Src"]
       13 GETTABLEKS                       R2 R2 K5 ["Reducers"]
       15 GETTABLEKS                       R2 R2 K6 ["MainReducer"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R0 K7 ["Store"]
       20 GETTABLEKS                       R2 R2 K8 ["new"]
       22 MOVE                             R3 R1
       23 LOADNIL                          R4
       24 NEWTABLE                         R5 0 1
       26 GETTABLEKS                       R6 R0 K9 ["thunkMiddleware"]
       28 SETLIST                          R5 R6 1 [1]
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["Resources"]
        7 GETTABLEKS                       R1 R1 K4 ["makeTheme"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Src"]
        3 GETTABLEKS                       R0 R0 K1 ["Resources"]
        5 GETTABLEKS                       R0 R0 K2 ["SourceStrings"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["Src"]
       10 GETTABLEKS                       R1 R1 K1 ["Resources"]
       12 GETTABLEKS                       R1 R1 K3 ["LocalizedStrings"]
       14 GETIMPORT                        R2 K5 [require]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K6 ["Packages"]
       19 GETTABLEKS                       R3 R3 K7 ["Framework"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R2 R2 K8 ["ContextServices"]
       24 GETTABLEKS                       R2 R2 K9 ["Localization"]
       26 GETTABLEKS                       R3 R2 K10 ["new"]
       28 DUPTABLE                         R4 K15 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "PluginInstallation"}]
       29 SETTABLEKS                       R0 R4 K11 ["stringResourceTable"]
       31 SETTABLEKS                       R1 R4 K12 ["translationResourceTable"]
       33 CALL                             R3 1 -1
       34 RETURN                           R3 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["Flags"]
        7 GETTABLEKS                       R1 R1 K4 ["getFFlagStudioPluginManagementUpgradeHttp"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+27]
       13 GETIMPORT                        R1 K1 [require]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K5 ["Packages"]
       18 GETTABLEKS                       R2 R2 K6 ["Framework"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R2 R1 K7 ["ContextServices"]
       23 GETTABLEKS                       R2 R2 K8 ["API"]
       25 GETTABLEKS                       R3 R1 K9 ["Http"]
       27 GETTABLEKS                       R3 R3 K10 ["Networking"]
       29 GETTABLEKS                       R4 R2 K11 ["new"]
       31 DUPTABLE                         R5 K13 [{"networking"}]
       32 GETTABLEKS                       R6 R3 K11 ["new"]
       34 DUPTABLE                         R7 K18 [{["isInternal"] = True, ["loggingLevel"] = 0}]
       35 CALL                             R6 1 1
       36 SETTABLEKS                       R6 R5 K12 ["networking"]
       38 CALL                             R4 1 -1
       39 RETURN                           R4 -1
       40 GETIMPORT                        R1 K1 [require]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K5 ["Packages"]
       45 GETTABLEKS                       R2 R2 K9 ["Http"]
       47 CALL                             R1 1 1
       48 GETTABLEKS                       R2 R1 K8 ["API"]
       50 GETTABLEKS                       R2 R2 K11 ["new"]
       52 DUPTABLE                         R3 K13 [{"networking"}]
       53 GETTABLEKS                       R4 R1 K10 ["Networking"]
       55 GETTABLEKS                       R4 R4 K11 ["new"]
       57 DUPTABLE                         R5 K18 [{["isInternal"] = True, ["loggingLevel"] = 0}]
       58 CALL                             R4 1 1
       59 SETTABLEKS                       R4 R3 K12 ["networking"]
       61 CALL                             R2 1 -1
       62 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["Util"]
        7 GETTABLEKS                       R1 R1 K4 ["getAnalyticsContextItem"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 CALL                             R1 0 -1
       12 RETURN                           R1 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["Util"]
        7 GETTABLEKS                       R1 R1 K4 ["PluginManagementApi"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K6 [game]
       12 LOADK                            R3 K7 ["StudioService"]
       13 NAMECALL                         R1 R1 K8 ["GetService"]
       15 CALL                             R1 2 1
       16 GETIMPORT                        R2 K6 [game]
       18 LOADK                            R4 K9 ["PluginManagementService"]
       19 NAMECALL                         R2 R2 K8 ["GetService"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K6 [game]
       24 LOADK                            R5 K10 ["MarketplaceService"]
       25 NAMECALL                         R3 R3 K8 ["GetService"]
       27 CALL                             R3 2 1
       28 GETIMPORT                        R4 K6 [game]
       30 LOADK                            R6 K11 ["PermissionsService"]
       31 NAMECALL                         R4 R4 K8 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K6 [game]
       36 LOADK                            R7 K12 ["PluginPolicyService"]
       37 NAMECALL                         R5 R5 K8 ["GetService"]
       39 CALL                             R5 2 1
       40 GETTABLEKS                       R6 R0 K13 ["new"]
       42 MOVE                             R7 R1
       43 MOVE                             R8 R2
       44 MOVE                             R9 R4
       45 MOVE                             R10 R3
       46 MOVE                             R11 R5
       47 CALL                             R6 5 -1
       48 RETURN                           R6 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETIMPORT                        R3 K1 [require]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["Src"]
        7 GETTABLEKS                       R4 R4 K3 ["Resources"]
        9 GETTABLEKS                       R4 R4 K4 ["makeTheme"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 2
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 3
       15 CALL                             R5 0 1
       16 GETIMPORT                        R7 K1 [require]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K2 ["Src"]
       21 GETTABLEKS                       R8 R8 K5 ["Util"]
       23 GETTABLEKS                       R8 R8 K6 ["getAnalyticsContextItem"]
       25 CALL                             R7 1 1
       26 MOVE                             R8 R7
       27 CALL                             R8 0 1
       28 MOVE                             R6 R8
       29 GETUPVAL                         R7 4
       30 CALL                             R7 0 1
       31 GETIMPORT                        R8 K1 [require]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K2 ["Src"]
       36 GETTABLEKS                       R9 R9 K7 ["runPluginManagementPlugin"]
       38 CALL                             R8 1 1
       39 MOVE                             R9 R8
       40 MOVE                             R10 R0
       41 MOVE                             R11 R2
       42 MOVE                             R12 R3
       43 MOVE                             R13 R4
       44 MOVE                             R14 R5
       45 MOVE                             R15 R6
       46 MOVE                             R16 R7
       47 MOVE                             R17 R1
       48 CALL                             R9 8 0
       49 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PluginManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 DUPCLOSURE                       R2 K5 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 DUPCLOSURE                       R3 K6 [PROTO_2]
       12 CAPTURE                          VAL R0
       13 DUPCLOSURE                       R4 K7 [PROTO_3]
       14 CAPTURE                          VAL R0
       15 DUPCLOSURE                       R5 K8 [PROTO_4]
       16 CAPTURE                          VAL R0
       17 DUPCLOSURE                       R6 K9 [PROTO_5]
       18 CAPTURE                          VAL R0
       19 DUPCLOSURE                       R7 K10 [PROTO_6]
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R6
       25 RETURN                           R7 1
