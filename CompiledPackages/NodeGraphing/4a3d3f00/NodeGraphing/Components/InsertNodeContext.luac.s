PROTO_0:
        0 GETUPVAL                         R3 0
        1 LOADNIL                          R4
        2 SETTABLEKS                       R4 R3 K0 ["current"]
        4 GETUPVAL                         R3 1
        5 DUPTABLE                         R4 K4 [{"targetPinPosition", "sourcePinInfo", "initialPinValue"}]
        6 SETTABLEKS                       R0 R4 K1 ["targetPinPosition"]
        8 SETTABLEKS                       R1 R4 K2 ["sourcePinInfo"]
       10 SETTABLEKS                       R2 R4 K3 ["initialPinValue"]
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 0
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R2 R3 K0 ["current"]
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 0
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETIMPORT                        R1 K3 [task.spawn]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K5 [{"visibleMenuState", "hideMenu", "dismissMenu", "showMenu", "showMenuWithDismissAction"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["visibleMenuState"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["hideMenu"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["dismissMenu"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["showMenu"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["showMenuWithDismissAction"]
       16 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R2
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R7 0 1
       30 MOVE                             R8 R4
       31 SETLIST                          R7 R8 1 [1]
       33 CALL                             R5 2 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       37 NEWCLOSURE                       R7 P2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R8 0 1
       42 MOVE                             R9 R2
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       49 NEWCLOSURE                       R8 P3
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 NEWTABLE                         R9 0 1
       54 MOVE                             R10 R6
       55 SETLIST                          R9 R10 1 [1]
       57 CALL                             R7 2 1
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K3 ["useMemo"]
       61 NEWCLOSURE                       R9 P4
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 NEWTABLE                         R10 0 5
       69 MOVE                             R11 R1
       70 MOVE                             R12 R6
       71 MOVE                             R13 R7
       72 MOVE                             R14 R4
       73 MOVE                             R15 R5
       74 SETLIST                          R10 R11 5 [1]
       76 CALL                             R8 2 1
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K4 ["createElement"]
       80 GETUPVAL                         R10 1
       81 GETTABLEKS                       R10 R10 K5 ["Provider"]
       83 DUPTABLE                         R11 K7 [{"value"}]
       84 SETTABLEKS                       R8 R11 K6 ["value"]
       86 GETTABLEKS                       R12 R0 K8 ["children"]
       88 CALL                             R9 3 -1
       89 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       25 CALL                             R3 1 1
       26 DUPTABLE                         R4 K16 [{["visibleMenuState"] = , ["showMenu"], ["showMenuWithDismissAction"], ["hideMenu"], ["dismissMenu"]}]
       27 GETTABLEKS                       R5 R3 K17 ["createUnimplemented"]
       29 LOADK                            R6 K12 ["showMenu"]
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R5 R4 K12 ["showMenu"]
       33 GETTABLEKS                       R5 R3 K17 ["createUnimplemented"]
       35 LOADK                            R6 K13 ["showMenuWithDismissAction"]
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K13 ["showMenuWithDismissAction"]
       39 GETTABLEKS                       R5 R3 K17 ["createUnimplemented"]
       41 LOADK                            R6 K14 ["hideMenu"]
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K14 ["hideMenu"]
       45 GETTABLEKS                       R5 R3 K17 ["createUnimplemented"]
       47 LOADK                            R6 K15 ["dismissMenu"]
       48 CALL                             R5 1 1
       49 SETTABLEKS                       R5 R4 K15 ["dismissMenu"]
       51 GETTABLEKS                       R5 R2 K18 ["createContext"]
       53 MOVE                             R6 R4
       54 CALL                             R5 1 1
       55 DUPCLOSURE                       R6 K19 [PROTO_5]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 DUPTABLE                         R7 K22 [{"Context", "Provider"}]
       59 SETTABLEKS                       R5 R7 K20 ["Context"]
       61 SETTABLEKS                       R6 R7 K21 ["Provider"]
       63 RETURN                           R7 1
