PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["trigger"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 0
        8 LOADB                            R1 1
        9 RETURN                           R1 1
       10 LOADB                            R1 0
       11 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"id", "isDisabled", "text"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["id"]
        4 GETUPVAL                         R2 1
        5 NOT                              R1 R2
        6 JUMPIF                           R1 ; [+6]
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K4 ["enabled"]
       12 NOT                              R1 R2
       13 SETTABLEKS                       R1 R0 K1 ["isDisabled"]
       15 GETUPVAL                         R2 2
       16 JUMPIFNOT                        R2 ; [+4]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K2 ["text"]
       20 JUMP                             ; [+1]
       21 LOADK                            R1 K5 ["..."]
       22 SETTABLEKS                       R1 R0 K2 ["text"]
       24 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["ActionsContext"]
        6 GETTABLEKS                       R2 R3 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["useContext"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K2 ["Context"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K3 ["onlySelectingNodes"]
       18 GETTABLEKS                       R3 R1 K4 ["useActionState"]
       20 MOVE                             R4 R0
       21 CALL                             R3 1 1
       22 LOADK                            R5 K5 ["action_%*"]
       23 GETUPVAL                         R10 3
       24 GETTABLEKS                       R9 R10 K6 ["Util"]
       26 GETTABLEKS                       R8 R9 K7 ["StudioUri"]
       28 GETTABLEKS                       R7 R8 K8 ["toString"]
       30 MOVE                             R8 R0
       31 CALL                             R7 1 1
       32 NAMECALL                         R5 R5 K9 ["format"]
       34 CALL                             R5 2 1
       35 MOVE                             R4 R5
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R5 R6 K10 ["useEventCallback"]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R0
       43 CALL                             R5 1 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R6 R7 K11 ["useMemo"]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 NEWTABLE                         R8 0 4
       53 MOVE                             R9 R4
       54 MOVE                             R10 R2
       55 MOVE                             R11 R3
       56 JUMPIFNOT                        R11 ; [+2]
       57 GETTABLEKS                       R11 R3 K12 ["enabled"]
       59 MOVE                             R12 R3
       60 JUMPIFNOT                        R12 ; [+2]
       61 GETTABLEKS                       R12 R3 K13 ["text"]
       63 SETLIST                          R8 R9 4 [1]
       65 CALL                             R6 2 1
       66 DUPTABLE                         R7 K16 [{"tryActivate", "menuItem"}]
       67 SETTABLEKS                       R5 R7 K14 ["tryActivate"]
       69 SETTABLEKS                       R6 R7 K15 ["menuItem"]
       71 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["CrossEnvironment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Contexts"]
       32 GETTABLEKS                       R5 R6 K11 ["NodesSelectedContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R7 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R8 K13 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K14 [PROTO_2]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 RETURN                           R7 1
