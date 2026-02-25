PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADB                            R1 0
        4 GETIMPORT                        R2 K3 [Enum.StudioDataModelType.Edit]
        6 JUMPIFEQ                         R0 R2 ; [+7]
        8 GETIMPORT                        R2 K5 [Enum.StudioDataModelType.Standalone]
       10 JUMPIFNOTEQ                      R0 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 DUPTABLE                         R1 K2 [{"overrideText", "iconType"}]
        4 GETUPVAL                         R2 2
        5 LOADK                            R4 K3 ["InputArea"]
        6 LOADK                            R5 K4 ["StudioNotificationServiceWarning"]
        7 NAMECALL                         R2 R2 K5 ["getText"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K0 ["overrideText"]
       12 LOADK                            R2 K6 ["loading"]
       13 SETTABLEKS                       R2 R1 K1 ["iconType"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R1 R2 K7 ["value"]
       20 GETTABLEKS                       R0 R1 K8 ["isTestAutomationEnabled"]
       22 CALL                             R0 0 1
       23 JUMPIF                           R0 ; [+31]
       24 GETUPVAL                         R1 4
       25 JUMPIF                           R1 ; [+2]
       26 LOADB                            R0 0
       27 JUMP                             ; [+11]
       28 LOADB                            R0 0
       29 GETIMPORT                        R2 K12 [Enum.StudioDataModelType.Edit]
       31 JUMPIFEQ                         R1 R2 ; [+7]
       33 GETIMPORT                        R2 K14 [Enum.StudioDataModelType.Standalone]
       35 JUMPIFNOTEQ                      R1 R2 ; [+2]
       37 LOADB                            R0 0 +1
       38 LOADB                            R0 1
       39 JUMPIFNOT                        R0 ; [+15]
       40 GETUPVAL                         R0 1
       41 DUPTABLE                         R1 K2 [{"overrideText", "iconType"}]
       42 GETUPVAL                         R2 2
       43 LOADK                            R4 K3 ["InputArea"]
       44 LOADK                            R5 K15 ["StudioPlaySoloWarning"]
       45 NAMECALL                         R2 R2 K5 ["getText"]
       47 CALL                             R2 3 1
       48 SETTABLEKS                       R2 R1 K0 ["overrideText"]
       50 LOADK                            R2 K16 ["error"]
       51 SETTABLEKS                       R2 R1 K1 ["iconType"]
       53 CALL                             R0 1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R0 1
       56 LOADNIL                          R1
       57 CALL                             R0 1 0
       58 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R4 R0 K0 ["dataModel"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R4 R5 K1 ["useState"]
       11 LOADNIL                          R5
       12 CALL                             R4 1 2
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K2 ["useEffect"]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R5
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R8 0 3
       24 MOVE                             R9 R2
       25 MOVE                             R10 R3
       26 MOVE                             R11 R1
       27 SETLIST                          R8 R9 3 [1]
       29 CALL                             R6 2 0
       30 GETUPVAL                         R6 5
       31 GETUPVAL                         R10 6
       32 GETTABLEKS                       R9 R10 K3 ["Components"]
       34 GETTABLEKS                       R8 R9 K4 ["Contexts"]
       36 GETTABLEKS                       R7 R8 K5 ["InputStateContextProvider"]
       38 DUPTABLE                         R8 K7 [{"override"}]
       39 SETTABLEKS                       R4 R8 K6 ["override"]
       41 GETTABLEKS                       R9 R0 K8 ["children"]
       43 CALL                             R6 3 -1
       44 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R5 K11 ["useExperimentFeatureGetter"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Hooks"]
       36 GETTABLEKS                       R5 R6 K12 ["useFocusedDataModelType"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R8 K10 ["Hooks"]
       45 GETTABLEKS                       R6 R7 K13 ["useNotificationServiceConnected"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R8 R1 K14 ["Resources"]
       50 GETTABLEKS                       R7 R8 K15 ["Localization"]
       52 GETTABLEKS                       R6 R7 K16 ["Translator"]
       54 GETTABLEKS                       R7 R2 K17 ["createElement"]
       56 DUPCLOSURE                       R8 K18 [PROTO_0]
       57 DUPCLOSURE                       R9 K19 [PROTO_2]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 RETURN                           R9 1
