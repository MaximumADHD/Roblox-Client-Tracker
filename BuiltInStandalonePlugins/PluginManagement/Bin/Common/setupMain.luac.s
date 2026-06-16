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
       28 DUPTABLE                         R4 K14 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       29 SETTABLEKS                       R0 R4 K11 ["stringResourceTable"]
       31 SETTABLEKS                       R1 R4 K12 ["translationResourceTable"]
       33 LOADK                            R5 K15 ["PluginInstallation"]
       34 SETTABLEKS                       R5 R4 K13 ["pluginName"]
       36 CALL                             R3 1 -1
       37 RETURN                           R3 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Http"]
        7 CALL                             R0 1 1
        8 GETTABLEKS                       R1 R0 K4 ["API"]
       10 GETTABLEKS                       R1 R1 K5 ["new"]
       12 DUPTABLE                         R2 K7 [{"networking"}]
       13 GETTABLEKS                       R3 R0 K8 ["Networking"]
       15 GETTABLEKS                       R3 R3 K5 ["new"]
       17 DUPTABLE                         R4 K11 [{"isInternal", "loggingLevel"}]
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K9 ["isInternal"]
       21 LOADN                            R5 0
       22 SETTABLEKS                       R5 R4 K10 ["loggingLevel"]
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R2 K6 ["networking"]
       27 CALL                             R1 1 -1
       28 RETURN                           R1 -1

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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["main requires FFlagStudioLazyPluginManagement"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 GETIMPORT                        R3 K4 [require]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K5 ["Src"]
       15 GETTABLEKS                       R4 R4 K6 ["Resources"]
       17 GETTABLEKS                       R4 R4 K7 ["makeTheme"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 3
       21 CALL                             R4 0 1
       22 GETUPVAL                         R5 4
       23 CALL                             R5 0 1
       24 GETIMPORT                        R7 K4 [require]
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R8 R8 K5 ["Src"]
       29 GETTABLEKS                       R8 R8 K8 ["Util"]
       31 GETTABLEKS                       R8 R8 K9 ["getAnalyticsContextItem"]
       33 CALL                             R7 1 1
       34 MOVE                             R8 R7
       35 CALL                             R8 0 1
       36 MOVE                             R6 R8
       37 GETUPVAL                         R7 5
       38 CALL                             R7 0 1
       39 GETIMPORT                        R8 K4 [require]
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R9 R9 K5 ["Src"]
       44 GETTABLEKS                       R9 R9 K10 ["runPluginManagementPlugin"]
       46 CALL                             R8 1 1
       47 MOVE                             R9 R8
       48 MOVE                             R10 R0
       49 MOVE                             R11 R2
       50 MOVE                             R12 R3
       51 MOVE                             R13 R4
       52 MOVE                             R14 R5
       53 MOVE                             R15 R6
       54 MOVE                             R16 R7
       55 MOVE                             R17 R1
       56 CALL                             R9 8 0
       57 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PluginManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagStudioLazyPluginManagement"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R0
       18 DUPCLOSURE                       R3 K10 [PROTO_1]
       19 CAPTURE                          VAL R0
       20 DUPCLOSURE                       R4 K11 [PROTO_2]
       21 CAPTURE                          VAL R0
       22 DUPCLOSURE                       R5 K12 [PROTO_3]
       23 CAPTURE                          VAL R0
       24 DUPCLOSURE                       R6 K13 [PROTO_4]
       25 CAPTURE                          VAL R0
       26 DUPCLOSURE                       R7 K14 [PROTO_5]
       27 CAPTURE                          VAL R0
       28 DUPCLOSURE                       R8 K15 [PROTO_6]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R7
       35 RETURN                           R8 1
