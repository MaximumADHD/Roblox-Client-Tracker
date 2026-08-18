PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["CREATE_ACTION_BOOL"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETIMPORT                        R2 K4 [Enum.InputActionType.Bool]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["CREATE_ACTION_DIRECTION1D"]
       15 JUMPIFNOTEQ                      R0 R1 ; [+6]
       17 GETUPVAL                         R1 1
       18 GETIMPORT                        R2 K7 [Enum.InputActionType.Direction1D]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K8 ["CREATE_ACTION_DIRECTION2D"]
       25 JUMPIFNOTEQ                      R0 R1 ; [+6]
       27 GETUPVAL                         R1 1
       28 GETIMPORT                        R2 K10 [Enum.InputActionType.Direction2D]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K11 ["CREATE_ACTION_DIRECTION3D"]
       35 JUMPIFNOTEQ                      R0 R1 ; [+5]
       37 GETUPVAL                         R1 1
       38 GETIMPORT                        R2 K13 [Enum.InputActionType.Direction3D]
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["countActionCreated"]
        5 GETUPVAL                         R2 0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 LOADNIL                          R2
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K1 ["updateAction"]
       13 LOADNIL                          R2
       14 DUPTABLE                         R3 K5 [{"name", "parentUuid", "type"}]
       15 SETTABLEKS                       R0 R3 K2 ["name"]
       17 GETUPVAL                         R4 4
       18 SETTABLEKS                       R4 R3 K3 ["parentUuid"]
       20 GETUPVAL                         R4 0
       21 SETTABLEKS                       R4 R3 K4 ["type"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useState"]
       17 LOADNIL                          R4
       18 CALL                             R3 1 2
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       22 DUPCLOSURE                       R6 K4 [PROTO_0]
       23 CAPTURE                          UPVAL U3
       24 NEWTABLE                         R7 0 0
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       30 NEWCLOSURE                       R7 P1
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R4
       33 NEWTABLE                         R8 0 1
       35 MOVE                             R9 R4
       36 SETLIST                          R8 R9 1 [1]
       38 CALL                             R6 2 1
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       42 NEWCLOSURE                       R8 P2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R0
       48 NEWTABLE                         R9 0 5
       50 MOVE                             R10 R3
       51 MOVE                             R11 R1
       52 MOVE                             R12 R4
       53 MOVE                             R13 R2
       54 MOVE                             R14 R0
       55 SETLIST                          R9 R10 5 [1]
       57 CALL                             R7 2 1
       58 MOVE                             R8 R5
       59 MOVE                             R9 R3
       60 MOVE                             R10 R6
       61 MOVE                             R11 R7
       62 RETURN                           R8 4

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["InputConfiguration"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Contexts"]
       43 GETTABLEKS                       R6 R6 K13 ["Telemetry"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Util"]
       52 GETTABLEKS                       R7 R7 K15 ["Menus"]
       54 GETTABLEKS                       R7 R7 K16 ["getActionTypeMenu"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K14 ["Util"]
       63 GETTABLEKS                       R8 R8 K17 ["Constants"]
       65 GETTABLEKS                       R8 R8 K18 ["MenuIdentifiers"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K19 [PROTO_3]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R7
       74 RETURN                           R8 1
