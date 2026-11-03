PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 SETTABLEKS                       R0 R1 K0 ["current"]
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["prepareAnimationEdit"]
        5 DUPTABLE                         R2 K5 [{"toolUseId", "versionId"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K3 ["toolUseId"]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K4 ["versionId"]
       12 CALL                             R0 2 2
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K6 ["current"]
       16 GETUPVAL                         R3 4
       17 JUMPIFEQ                         R2 R3 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 5
       21 LOADB                            R3 0
       22 CALL                             R2 1 0
       23 JUMPIF                           R0 ; [+6]
       24 GETIMPORT                        R2 K8 [warn]
       26 LOADK                            R3 K9 ["[AnimationGen] Could not prepare the selected version for editing:"]
       27 MOVE                             R4 R1
       28 CALL                             R2 2 0
       29 RETURN                           R0 0
       30 JUMPIFEQKNIL                     R1 ; [+7]
       32 GETUPVAL                         R2 6
       33 GETTABLEKS                       R2 R2 K10 ["getPendingEdit"]
       35 CALL                             R2 0 1
       36 JUMPIFEQKNIL                     R2 ; [+2]
       38 RETURN                           R0 0
       39 GETUPVAL                         R2 6
       40 GETTABLEKS                       R2 R2 K11 ["setPendingEdit"]
       42 DUPTABLE                         R3 K16 [{"priorJobId", "editSource", "savedKeyframesContentId", "duration"}]
       43 GETTABLEKS                       R4 R1 K17 ["contextId"]
       45 SETTABLEKS                       R4 R3 K12 ["priorJobId"]
       47 GETTABLEKS                       R4 R1 K13 ["editSource"]
       49 SETTABLEKS                       R4 R3 K13 ["editSource"]
       51 GETTABLEKS                       R4 R1 K3 ["toolUseId"]
       53 SETTABLEKS                       R4 R3 K14 ["savedKeyframesContentId"]
       55 GETTABLEKS                       R4 R1 K15 ["duration"]
       57 SETTABLEKS                       R4 R3 K15 ["duration"]
       59 CALL                             R2 1 0
       60 GETUPVAL                         R2 7
       61 GETTABLEKS                       R2 R2 K18 ["sendMessage"]
       63 DUPTABLE                         R3 K23 [{["text"] = "/generate_animation", ["hidden"] = True}]
       64 CALL                             R2 1 0
       65 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["toolUseId"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["versionId"]
        9 JUMPIFEQKNIL                     R0 ; [+14]
       11 GETUPVAL                         R3 2
       12 JUMPIFEQKNIL                     R3 ; [+11]
       14 JUMPIFEQKNIL                     R1 ; [+9]
       16 JUMPIFEQKNIL                     R2 ; [+7]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K3 ["getPendingEdit"]
       21 CALL                             R3 0 1
       22 JUMPIFEQKNIL                     R3 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 4
       26 LOADB                            R4 1
       27 CALL                             R3 1 0
       28 GETIMPORT                        R3 K6 [task.spawn]
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U1
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useRef"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["useState"]
       15 LOADB                            R4 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R7 0 2
       25 MOVE                             R8 R1
       26 GETTABLEKS                       R9 R0 K5 ["toolUseId"]
       28 SETLIST                          R7 R8 2 [1]
       30 CALL                             R5 2 0
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R4
       40 NEWTABLE                         R7 0 4
       42 MOVE                             R8 R1
       43 GETTABLEKS                       R9 R0 K5 ["toolUseId"]
       45 GETTABLEKS                       R10 R0 K7 ["versionId"]
       47 GETTABLEKS                       R11 R0 K8 ["sendMessage"]
       49 SETLIST                          R7 R8 4 [1]
       51 CALL                             R5 2 1
       52 DUPTABLE                         R6 K11 [{"open", "isPreparing"}]
       53 SETTABLEKS                       R5 R6 K9 ["open"]
       55 SETTABLEKS                       R3 R6 K10 ["isPreparing"]
       57 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["Actions"]
       15 GETTABLEKS                       R2 R2 K9 ["AnimationGenActionsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Util"]
       22 GETTABLEKS                       R3 R3 K11 ["AnimationGen"]
       24 GETTABLEKS                       R3 R3 K12 ["State"]
       26 GETTABLEKS                       R3 R3 K13 ["AnimationHistoryTypes"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K11 ["AnimationGen"]
       35 GETTABLEKS                       R4 R4 K14 ["EditInAssistantState"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K15 ["Parent"]
       42 GETTABLEKS                       R5 R5 K16 ["React"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K17 [PROTO_4]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 RETURN                           R5 1
