PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSlicerState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K3 [{"position", "size"}]
        6 GETIMPORT                        R3 K6 [UDim2.fromScale]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K8 ["column"]
       11 SUBK                             R5 R6 K7 [1]
       12 GETTABLEKS                       R6 R1 K9 ["grid"]
       14 GETTABLEKS                       R6 R6 K10 ["X"]
       16 DIV                              R4 R5 R6
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K11 ["row"]
       20 SUBK                             R6 R7 K7 [1]
       21 GETTABLEKS                       R7 R1 K9 ["grid"]
       23 GETTABLEKS                       R7 R7 K12 ["Y"]
       25 DIV                              R5 R6 R7
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K1 ["position"]
       29 GETIMPORT                        R3 K6 [UDim2.fromScale]
       31 GETTABLEKS                       R5 R1 K9 ["grid"]
       33 GETTABLEKS                       R5 R5 K10 ["X"]
       35 DIVRK                            R4 K7 [1] R5
       36 GETTABLEKS                       R6 R1 K9 ["grid"]
       38 GETTABLEKS                       R6 R6 K12 ["Y"]
       40 DIVRK                            R5 K7 [1] R6
       41 CALL                             R3 2 1
       42 SETTABLEKS                       R3 R2 K2 ["size"]
       44 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["position"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalBinding"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 3
       11 GETTABLEKS                       R5 R0 K2 ["row"]
       13 GETTABLEKS                       R6 R0 K3 ["column"]
       15 GETTABLEKS                       R7 R0 K4 ["observeSlicerState"]
       17 SETLIST                          R4 R5 3 [1]
       19 CALL                             R2 2 -1
       20 CALL                             R1 -1 1
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K5 ["createElement"]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K6 ["View"]
       27 DUPTABLE                         R4 K11 [{["Position"], ["Size"], ["tag"] = "stroke-emphasis stroke-system-emphasis"}]
       28 DUPCLOSURE                       R7 K12 [PROTO_2]
       29 NAMECALL                         R5 R1 K13 ["map"]
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K7 ["Position"]
       34 DUPCLOSURE                       R7 K14 [PROTO_3]
       35 NAMECALL                         R5 R1 K13 ["map"]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K8 ["Size"]
       40 CALL                             R2 2 -1
       41 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSlicerState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["offset"]
        7 GETTABLEKS                       R3 R1 K2 ["imageSize"]
        9 GETIMPORT                        R4 K5 [UDim2.fromScale]
       11 GETTABLEKS                       R6 R2 K6 ["X"]
       13 GETTABLEKS                       R7 R3 K6 ["X"]
       15 DIV                              R5 R6 R7
       16 GETTABLEKS                       R7 R2 K7 ["Y"]
       18 GETTABLEKS                       R8 R3 K7 ["Y"]
       20 DIV                              R6 R7 R8
       21 CALL                             R4 2 -1
       22 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSlicerState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["sheetSize"]
        7 GETTABLEKS                       R3 R1 K2 ["imageSize"]
        9 GETIMPORT                        R4 K5 [UDim2.fromScale]
       11 GETTABLEKS                       R6 R2 K6 ["X"]
       13 GETTABLEKS                       R7 R3 K6 ["X"]
       15 DIV                              R5 R6 R7
       16 GETTABLEKS                       R7 R2 K7 ["Y"]
       18 GETTABLEKS                       R8 R3 K7 ["Y"]
       20 DIV                              R6 R7 R8
       21 CALL                             R4 2 -1
       22 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSlicerState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["grid"]
        7 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 LOADN                            R5 1
        6 GETTABLEKS                       R3 R1 K0 ["X"]
        8 LOADN                            R4 1
        9 FORNPREP                         R3
       10 LOADN                            R8 1
       11 GETTABLEKS                       R6 R1 K1 ["Y"]
       13 LOADN                            R7 1
       14 FORNPREP                         R6
       15 MOVE                             R10 R2
       16 GETUPVAL                         R11 1
       17 GETTABLEKS                       R11 R11 K2 ["createElement"]
       19 GETUPVAL                         R12 2
       20 DUPTABLE                         R13 K7 [{"observeSlicerState", "row", "column", "key"}]
       21 GETUPVAL                         R14 3
       22 GETTABLEKS                       R14 R14 K3 ["observeSlicerState"]
       24 SETTABLEKS                       R14 R13 K3 ["observeSlicerState"]
       26 SETTABLEKS                       R8 R13 K4 ["row"]
       28 SETTABLEKS                       R5 R13 K5 ["column"]
       30 LOADK                            R14 K8 ["%*_%*"]
       31 MOVE                             R16 R5
       32 MOVE                             R17 R8
       33 NAMECALL                         R14 R14 K9 ["format"]
       35 CALL                             R14 3 1
       36 SETTABLEKS                       R14 R13 K6 ["key"]
       38 CALL                             R11 2 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R9 K12 [table.insert]
       42 CALL                             R9 -1 0
       43 FORNLOOP                         R6
       44 FORNLOOP                         R3
       45 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["createComputed"]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U1
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalBinding"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K2 ["observeSlicerState"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 -1
       16 CALL                             R1 -1 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["useSignalBinding"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R5 0 1
       28 GETTABLEKS                       R6 R0 K2 ["observeSlicerState"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 -1
       33 CALL                             R2 -1 1
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K3 ["useSignalState"]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       40 NEWCLOSURE                       R5 P2
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U3
       45 NEWTABLE                         R6 0 1
       47 GETTABLEKS                       R7 R0 K2 ["observeSlicerState"]
       49 SETLIST                          R6 R7 1 [1]
       51 CALL                             R4 2 -1
       52 CALL                             R3 -1 1
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R4 R4 K4 ["createElement"]
       56 GETUPVAL                         R5 4
       57 GETTABLEKS                       R5 R5 K5 ["View"]
       59 DUPTABLE                         R6 K11 [{["Position"], ["Size"], ["ZIndex"], ["tag"] = "size-full"}]
       60 SETTABLEKS                       R1 R6 K6 ["Position"]
       62 SETTABLEKS                       R2 R6 K7 ["Size"]
       64 GETTABLEKS                       R7 R0 K12 ["zIndex"]
       66 SETTABLEKS                       R7 R6 K8 ["ZIndex"]
       68 MOVE                             R7 R3
       69 CALL                             R4 3 -1
       70 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Signals"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["SignalsReact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K13 [PROTO_4]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 DUPCLOSURE                       R7 K14 [PROTO_12]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R1
       53 GETTABLEKS                       R8 R2 K15 ["memo"]
       55 MOVE                             R9 R7
       56 CALL                             R8 1 1
       57 MOVE                             R7 R8
       58 RETURN                           R7 1
