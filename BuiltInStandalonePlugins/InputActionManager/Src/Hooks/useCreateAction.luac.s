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
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["updateAction"]
        6 LOADNIL                          R2
        7 DUPTABLE                         R3 K4 [{"name", "parentUuid", "type"}]
        8 SETTABLEKS                       R0 R3 K1 ["name"]
       10 GETUPVAL                         R4 2
       11 SETTABLEKS                       R4 R3 K2 ["parentUuid"]
       13 GETUPVAL                         R4 3
       14 SETTABLEKS                       R4 R3 K3 ["type"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       15 DUPCLOSURE                       R5 K4 [PROTO_0]
       16 CAPTURE                          UPVAL U2
       17 NEWTABLE                         R6 0 0
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R7 0 1
       28 MOVE                             R8 R3
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       35 NEWCLOSURE                       R7 P2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R8 0 2
       42 MOVE                             R9 R2
       43 MOVE                             R10 R3
       44 SETLIST                          R8 R9 2 [1]
       46 CALL                             R6 2 1
       47 MOVE                             R7 R4
       48 MOVE                             R8 R2
       49 MOVE                             R9 R5
       50 MOVE                             R10 R6
       51 RETURN                           R7 4

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
       34 GETTABLEKS                       R5 R5 K12 ["DatamodelReference"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Util"]
       43 GETTABLEKS                       R6 R6 K14 ["getActionTypeMenu"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K13 ["Util"]
       52 GETTABLEKS                       R7 R7 K15 ["Constants"]
       54 GETTABLEKS                       R7 R7 K16 ["MenuIdentifiers"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K17 [PROTO_3]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 RETURN                           R7 1
