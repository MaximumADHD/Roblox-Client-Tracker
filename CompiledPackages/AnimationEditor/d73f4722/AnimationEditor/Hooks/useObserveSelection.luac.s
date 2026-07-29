PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["isOpen"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["selectionService"]
        9 RETURN                           R0 1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["isOpen"]
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["selectionService"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SelectionChanged"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R1
       11 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 JUMPIFNOTEQKNIL                  R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["of"]
        7 GETUPVAL                         R2 2
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["provide"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R0
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_7]
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U3
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R4 0 0
       24 CALL                             R2 2 2
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R6 0 2
       35 GETTABLEKS                       R7 R0 K4 ["selectionService"]
       37 GETTABLEKS                       R8 R1 K5 ["isOpen"]
       39 SETLIST                          R6 R7 2 [1]
       41 CALL                             R4 2 0
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       45 NEWCLOSURE                       R5 P2
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R2
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U6
       50 NEWTABLE                         R6 0 1
       52 MOVE                             R7 R2
       53 SETLIST                          R6 R7 1 [1]
       55 CALL                             R4 2 1
       56 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["SelectionServiceContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Signals"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Util"]
       32 GETTABLEKS                       R5 R5 K10 ["Signals"]
       34 GETTABLEKS                       R5 R5 K12 ["SignalsInstanceUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K13 ["VisibleContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K15 [game]
       46 LOADK                            R8 K16 ["AnimGraphUIDisableSelectionWhenClosed"]
       47 LOADB                            R9 0
       48 NAMECALL                         R6 R6 K17 ["DefineFastFlag"]
       50 CALL                             R6 3 1
       51 GETIMPORT                        R7 K20 [table.freeze]
       53 NEWTABLE                         R8 0 0
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K21 [PROTO_9]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R7
       64 RETURN                           R8 1
