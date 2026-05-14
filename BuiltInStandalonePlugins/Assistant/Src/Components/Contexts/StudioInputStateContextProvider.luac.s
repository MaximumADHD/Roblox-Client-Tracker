PROTO_0:
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
       17 GETUPVAL                         R0 1
       18 LOADNIL                          R1
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R4 R0 K0 ["dataModel"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K1 ["useState"]
       11 LOADNIL                          R5
       12 CALL                             R4 1 2
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R5
       19 CAPTURE                          UPVAL U4
       20 NEWTABLE                         R8 0 3
       22 MOVE                             R9 R2
       23 MOVE                             R10 R3
       24 MOVE                             R11 R1
       25 SETLIST                          R8 R9 3 [1]
       27 CALL                             R6 2 0
       28 GETUPVAL                         R6 5
       29 GETUPVAL                         R7 6
       30 GETTABLEKS                       R7 R7 K3 ["Components"]
       32 GETTABLEKS                       R7 R7 K4 ["Contexts"]
       34 GETTABLEKS                       R7 R7 K5 ["InputStateContextProvider"]
       36 DUPTABLE                         R8 K7 [{"override"}]
       37 SETTABLEKS                       R4 R8 K6 ["override"]
       39 GETTABLEKS                       R9 R0 K8 ["children"]
       41 CALL                             R6 3 -1
       42 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["useExperimentFeatureGetter"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K12 ["useFocusedDataModelType"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K13 ["useNotificationServiceConnected"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R1 K14 ["Resources"]
       50 GETTABLEKS                       R6 R6 K15 ["Localization"]
       52 GETTABLEKS                       R6 R6 K16 ["Translator"]
       54 GETTABLEKS                       R7 R2 K17 ["createElement"]
       56 DUPCLOSURE                       R8 K18 [PROTO_1]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R1
       64 RETURN                           R8 1
