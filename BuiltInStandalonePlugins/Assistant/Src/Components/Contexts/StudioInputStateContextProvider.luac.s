PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 DUPTABLE                         R1 K3 [{[1], ["iconType"] = "loading"}]
        4 GETUPVAL                         R2 2
        5 LOADK                            R4 K4 ["InputArea"]
        6 LOADK                            R5 K5 ["StudioNotificationServiceWarning"]
        7 NAMECALL                         R2 R2 K6 ["getText"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K0 ["overrideText"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 1
       15 LOADNIL                          R1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["useState"]
        9 LOADNIL                          R5
       10 CALL                             R4 1 2
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K1 ["useEffect"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R5
       17 CAPTURE                          UPVAL U4
       18 NEWTABLE                         R8 0 3
       20 MOVE                             R9 R2
       21 MOVE                             R10 R3
       22 MOVE                             R11 R1
       23 SETLIST                          R8 R9 3 [1]
       25 CALL                             R6 2 0
       26 GETUPVAL                         R6 5
       27 GETUPVAL                         R7 6
       28 GETTABLEKS                       R7 R7 K2 ["Components"]
       30 GETTABLEKS                       R7 R7 K3 ["Contexts"]
       32 GETTABLEKS                       R7 R7 K4 ["InputStateContextProvider"]
       34 DUPTABLE                         R8 K6 [{"override"}]
       35 SETTABLEKS                       R4 R8 K5 ["override"]
       37 GETTABLEKS                       R9 R0 K7 ["children"]
       39 CALL                             R6 3 -1
       40 RETURN                           R6 -1

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
