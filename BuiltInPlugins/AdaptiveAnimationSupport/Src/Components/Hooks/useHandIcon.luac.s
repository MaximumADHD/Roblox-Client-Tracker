PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R4 K0 ["> DigitsRigDescription [Side = %*]"]
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R6 R6 K1 ["Name"]
        5 NAMECALL                         R4 R4 K2 ["format"]
        7 CALL                             R4 2 1
        8 MOVE                             R3 R4
        9 NAMECALL                         R1 R1 K3 ["QueryDescendants"]
       11 CALL                             R1 2 1
       12 GETTABLEN                        R0 R1 1
       13 JUMPIF                           R0 ; [+6]
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K4 ["ADD"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0
       20 LOADN                            R1 0
       21 GETUPVAL                         R2 4
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 FORGPREP                         R2
       25 MOVE                             R9 R6
       26 NAMECALL                         R7 R0 K5 ["GetJoint"]
       28 CALL                             R7 2 1
       29 JUMPIFEQKNIL                     R7 ; [+2]
       31 ADDK                             R1 R1 K6 [1]
       32 FORGLOOP                         R2 2 ; [-8]
       34 JUMPIFNOTEQKN                    R1 K7 [0] ; [+7]
       36 GETUPVAL                         R2 2
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R3 R3 K8 ["DRD_EMPTY"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R2 5
       43 JUMPIFNOTLE                      R2 R1 ; [+7]
       45 GETUPVAL                         R2 2
       46 GETUPVAL                         R3 3
       47 GETTABLEKS                       R3 R3 K9 ["DRD_FULL"]
       49 CALL                             R2 1 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R2 2
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R3 R3 K10 ["DRD_HALF_FULL"]
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["DigitsRigDescription"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+19]
        5 GETTABLEKS                       R1 R0 K2 ["Side"]
        7 GETUPVAL                         R2 0
        8 JUMPIFNOTEQ                      R1 R2 ; [+15]
       10 GETUPVAL                         R1 1
       11 CALL                             R1 0 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R3 R0 K3 ["Changed"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U1
       17 NAMECALL                         R3 R3 K4 ["Connect"]
       19 CALL                             R3 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R1 K7 [table.insert]
       23 CALL                             R1 -1 0
       24 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["DigitsRigDescription"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K0 ["ADD"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 4
       13 JUMPIFNOTEQKS                    R1 K1 ["left"] ; [+4]
       15 GETIMPORT                        R0 K5 [Enum.DigitsRigDescriptionSide.Left]
       17 JUMP                             ; [+2]
       18 GETIMPORT                        R0 K7 [Enum.DigitsRigDescriptionSide.Right]
       20 GETUPVAL                         R1 5
       21 GETTABLEKS                       R1 R1 K8 ["handRigLabels"]
       23 LENGTH                           R2 R1
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 MOVE                             R4 R3
       32 CALL                             R4 0 0
       33 NEWTABLE                         R4 0 0
       35 MOVE                             R6 R4
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K9 ["ChildAdded"]
       39 NEWCLOSURE                       R9 P1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 NAMECALL                         R7 R7 K10 ["Connect"]
       45 CALL                             R7 2 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R5 K13 [table.insert]
       49 CALL                             R5 -1 0
       50 MOVE                             R6 R4
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K14 ["ChildRemoved"]
       54 NEWCLOSURE                       R9 P2
       55 CAPTURE                          VAL R3
       56 NAMECALL                         R7 R7 K10 ["Connect"]
       58 CALL                             R7 2 -1
       59 FASTCALL                         TABLE_INSERT ; [+2]
       60 GETIMPORT                        R5 K13 [table.insert]
       62 CALL                             R5 -1 0
       63 GETUPVAL                         R5 1
       64 NAMECALL                         R5 R5 K15 ["GetChildren"]
       66 CALL                             R5 1 3
       67 FORGPREP                         R5
       68 LOADK                            R12 K16 ["DigitsRigDescription"]
       69 NAMECALL                         R10 R9 K17 ["IsA"]
       71 CALL                             R10 2 1
       72 JUMPIFNOT                        R10 ; [+16]
       73 GETTABLEKS                       R10 R9 K18 ["Side"]
       75 JUMPIFNOTEQ                      R10 R0 ; [+13]
       77 MOVE                             R11 R4
       78 GETTABLEKS                       R12 R9 K19 ["Changed"]
       80 NEWCLOSURE                       R14 P3
       81 CAPTURE                          VAL R3
       82 NAMECALL                         R12 R12 K10 ["Connect"]
       84 CALL                             R12 2 -1
       85 FASTCALL                         TABLE_INSERT ; [+2]
       86 GETIMPORT                        R10 K13 [table.insert]
       88 CALL                             R10 -1 0
       89 FORGLOOP                         R5 2 ; [-22]
       91 NEWCLOSURE                       R5 P4
       92 CAPTURE                          VAL R4
       93 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["ADD"]
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U3
       17 NEWTABLE                         R6 0 2
       19 MOVE                             R7 R0
       20 MOVE                             R8 R1
       21 SETLIST                          R6 R7 2 [1]
       23 CALL                             R4 2 0
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["AdaptiveAnimationTools"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Resources"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Flags"]
       36 GETTABLEKS                       R5 R5 K13 ["getFFlagAdaptiveAnimationHandRigQoL"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_7]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 RETURN                           R5 1
