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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["countActionCreated"]
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 3
       11 LOADNIL                          R2
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K1 ["updateAction"]
       16 LOADNIL                          R2
       17 DUPTABLE                         R3 K5 [{"name", "parentUuid", "type"}]
       18 SETTABLEKS                       R0 R3 K2 ["name"]
       20 GETUPVAL                         R4 5
       21 SETTABLEKS                       R4 R3 K3 ["parentUuid"]
       23 GETUPVAL                         R4 1
       24 SETTABLEKS                       R4 R3 K4 ["type"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["useContext"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["Context"]
       16 CALL                             R2 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K2 ["useState"]
       22 LOADNIL                          R4
       23 CALL                             R3 1 2
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       27 DUPCLOSURE                       R6 K4 [PROTO_0]
       28 CAPTURE                          UPVAL U4
       29 NEWTABLE                         R7 0 0
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       35 NEWCLOSURE                       R7 P1
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R4
       38 NEWTABLE                         R8 0 1
       40 MOVE                             R9 R4
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       47 NEWCLOSURE                       R8 P2
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R0
       54 NEWTABLE                         R9 0 5
       56 MOVE                             R10 R3
       57 MOVE                             R11 R1
       58 MOVE                             R12 R4
       59 MOVE                             R13 R2
       60 MOVE                             R14 R0
       61 SETLIST                          R9 R10 5 [1]
       63 CALL                             R7 2 1
       64 MOVE                             R8 R5
       65 MOVE                             R9 R3
       66 MOVE                             R10 R6
       67 MOVE                             R11 R7
       68 RETURN                           R8 4

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
       68 GETTABLEKS                       R8 R0 K9 ["Src"]
       70 GETTABLEKS                       R8 R8 K19 ["Flags"]
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R8 K20 ["getFFlagIAMTelemetry"]
       76 CALL                             R9 1 1
       77 DUPCLOSURE                       R10 K21 [PROTO_3]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 RETURN                           R10 1
