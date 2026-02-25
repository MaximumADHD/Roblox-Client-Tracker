PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeAnimationRoots"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 MOVE                             R7 R6
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 SETTABLE                         R11 R1 R10
       11 FORGLOOP                         R7 2 ; [-2]
       13 FORGLOOP                         R2 2 ; [-8]
       15 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["forEach"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["createComputed"]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          VAL R2
       13 CALL                             R3 1 1
       14 RETURN                           R3 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R5
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 1 ; [-8]
       15 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createComputed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["of"]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K1 ["observeAnimSaveRoots"]
       11 MOVE                             R2 R0
       12 GETUPVAL                         R3 2
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["of"]
        4 NEWTABLE                         R2 1 0
        6 SETTABLE                         R0 R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K1 ["switchMap"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K2 ["observeCharacter"]
       15 GETUPVAL                         R3 2
       16 CALL                             R2 1 1
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U3
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_7:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["of"]
        8 NEWTABLE                         R3 1 0
       10 SETTABLE                         R0 R3 R0
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K2 ["observeFirstAncestor"]
       16 MOVE                             R3 R0
       17 MOVE                             R4 R1
       18 CALL                             R2 2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K3 ["switchMap"]
       22 MOVE                             R4 R2
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CALL                             R3 2 -1
       29 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K1 [next]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+3]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 1
       12 RETURN                           R2 1

PROTO_9:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["of"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["observeChildrenWhichIsA"]
       10 MOVE                             R2 R0
       11 LOADK                            R3 K2 ["Humanoid"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K3 ["createComputed"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_10:
        0 LOADNIL                          R1
        1 LOADK                            R4 K0 ["Model"]
        2 NAMECALL                         R2 R0 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["of"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 MOVE                             R1 R2
       12 JUMP                             ; [+7]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K3 ["observeFirstAncestor"]
       16 MOVE                             R3 R0
       17 LOADK                            R4 K0 ["Model"]
       18 CALL                             R2 2 1
       19 MOVE                             R1 R2
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K4 ["switchMap"]
       23 MOVE                             R3 R1
       24 DUPCLOSURE                       R4 K5 [PROTO_9]
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 GETUPVAL                         R9 1
        7 NAMECALL                         R7 R6 K0 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+2]
       11 GETUPVAL                         R7 2
       12 SETTABLE                         R7 R1 R6
       13 FORGLOOP                         R2 2 ; [-8]
       15 RETURN                           R1 1

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETIMPORT                        R3 K1 [game]
        3 NAMECALL                         R1 R0 K2 ["IsDescendantOf"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+7]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K3 ["of"]
       10 NEWTABLE                         R2 0 0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K4 ["observeChildren"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K5 ["createComputed"]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CALL                             R2 1 -1
       27 RETURN                           R2 -1

PROTO_13:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["of"]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["properties"]
       11 GETTABLEKS                       R1 R2 K2 ["observeInstance"]
       13 MOVE                             R2 R0
       14 LOADK                            R3 K3 ["Value"]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K4 ["switchMap"]
       19 MOVE                             R3 R1
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeFirstNamedChildWhichIsA"]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K1 ["ObjectValue"]
        5 LOADK                            R5 K2 ["AnimSaves"]
        6 CALL                             R2 3 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["switchMap"]
       10 MOVE                             R4 R2
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R5 K7 ["Signals"]
       20 GETTABLEKS                       R3 R4 K9 ["SignalsInstanceUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Util"]
       27 GETTABLEKS                       R5 R6 K7 ["Signals"]
       29 GETTABLEKS                       R4 R5 K10 ["TypedInstanceSignals"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Types"]
       36 CALL                             R4 1 1
       37 NEWTABLE                         R5 8 0
       39 DUPCLOSURE                       R6 K12 [PROTO_2]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R6 R5 K13 ["observeRootAnimationsMap"]
       45 DUPCLOSURE                       R6 K14 [PROTO_4]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R6 R5 K15 ["observeKeysAsList"]
       49 DUPCLOSURE                       R6 K16 [PROTO_7]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R6 R5 K17 ["observeAnimationRoots"]
       54 DUPCLOSURE                       R6 K18 [PROTO_10]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R6 R5 K19 ["observeCharacter"]
       59 DUPCLOSURE                       R6 K20 [PROTO_14]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R6 R5 K21 ["observeAnimSaveRoots"]
       65 RETURN                           R5 1
