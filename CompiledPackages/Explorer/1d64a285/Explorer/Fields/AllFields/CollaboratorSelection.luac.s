PROTO_0:
        0 GETTABLEKS                       R5 R0 K1 ["R"]
        2 MULK                             R4 R5 K0 [255]
        3 FASTCALL2K                       BIT32_LSHIFT R4 K2 ; [+4]
        5 LOADK                            R5 K2 [16]
        6 GETIMPORT                        R3 K5 [bit32.lshift]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R6 R0 K6 ["G"]
       11 MULK                             R5 R6 K0 [255]
       12 FASTCALL2K                       BIT32_LSHIFT R5 K7 ; [+4]
       14 LOADK                            R6 K7 [8]
       15 GETIMPORT                        R4 K5 [bit32.lshift]
       17 CALL                             R4 2 1
       18 ADD                              R2 R3 R4
       19 GETTABLEKS                       R5 R0 K8 ["B"]
       21 MULK                             R4 R5 K0 [255]
       22 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       23 GETIMPORT                        R3 K11 [math.floor]
       25 CALL                             R3 1 1
       26 ADD                              R1 R2 R3
       27 GETUPVAL                         R3 0
       28 GETTABLE                         R2 R3 R1
       29 JUMPIFNOTEQKNIL                  R2 ; [+4]
       31 GETUPVAL                         R3 0
       32 SETTABLE                         R0 R3 R1
       33 RETURN                           R0 1
       34 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["get"]
        5 CALL                             R3 0 -1
        6 CALL                             R2 -1 1
        7 NEWTABLE                         R3 0 0
        9 MOVE                             R4 R1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 LOADB                            R9 1
       14 SETTABLE                         R9 R3 R8
       15 FORGLOOP                         R4 2 ; [-3]
       17 GETTABLEKS                       R9 R0 K5 ["R"]
       19 MULK                             R8 R9 K4 [255]
       20 FASTCALL2K                       BIT32_LSHIFT R8 K6 ; [+4]
       22 LOADK                            R9 K6 [16]
       23 GETIMPORT                        R7 K9 [bit32.lshift]
       25 CALL                             R7 2 1
       26 GETTABLEKS                       R10 R0 K10 ["G"]
       28 MULK                             R9 R10 K4 [255]
       29 FASTCALL2K                       BIT32_LSHIFT R9 K11 ; [+4]
       31 LOADK                            R10 K11 [8]
       32 GETIMPORT                        R8 K9 [bit32.lshift]
       34 CALL                             R8 2 1
       35 ADD                              R6 R7 R8
       36 GETTABLEKS                       R9 R0 K12 ["B"]
       38 MULK                             R8 R9 K4 [255]
       39 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       40 GETIMPORT                        R7 K15 [math.floor]
       42 CALL                             R7 1 1
       43 ADD                              R5 R6 R7
       44 GETUPVAL                         R7 1
       45 GETTABLE                         R6 R7 R5
       46 JUMPIFNOTEQKNIL                  R6 ; [+5]
       48 GETUPVAL                         R7 1
       49 SETTABLE                         R0 R7 R5
       50 MOVE                             R4 R0
       51 JUMP                             ; [+1]
       52 MOVE                             R4 R6
       53 SETTABLE                         R3 R2 R4
       54 GETUPVAL                         R4 2
       55 MOVE                             R5 R2
       56 CALL                             R4 1 0
       57 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["create"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETTABLEKS                       R3 R0 K1 ["createCollaboratorSelectionWatcher"]
        8 JUMPIFNOT                        R3 ; [+7]
        9 GETTABLEKS                       R3 R0 K1 ["createCollaboratorSelectionWatcher"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R2
       15 CALL                             R3 1 1
       16 DUPTABLE                         R4 K3 [{"collaboratorsSelectionsObservable"}]
       17 SETTABLEKS                       R1 R4 K2 ["collaboratorsSelectionsObservable"]
       19 MOVE                             R5 R3
       20 RETURN                           R4 2

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+4]
        2 NEWTABLE                         R1 0 0
        4 RETURN                           R1 1
        5 LENGTH                           R1 R0
        6 LOADN                            R2 10
        7 JUMPIFNOTLT                      R2 R1 ; [+11]
        9 GETIMPORT                        R1 K2 [table.move]
       11 MOVE                             R2 R0
       12 LOADN                            R3 1
       13 LOADN                            R4 10
       14 LOADN                            R5 1
       15 NEWTABLE                         R6 0 0
       17 CALL                             R1 5 -1
       18 RETURN                           R1 -1
       19 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 LENGTH                           R4 R0
        4 MULK                             R3 R4 K3 [16]
        5 LOADN                            R4 1
        6 LOADN                            R5 0
        7 CALL                             R1 4 -1
        8 RETURN                           R1 -1

PROTO_5:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 0
        2 JUMPIFLT                         R3 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_6:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+11]
        3 GETIMPORT                        R1 K3 [ColorSequence.new]
        5 GETIMPORT                        R2 K5 [Color3.new]
        7 LOADN                            R3 0
        8 LOADN                            R4 0
        9 LOADN                            R5 0
       10 CALL                             R2 3 -1
       11 CALL                             R1 -1 -1
       12 RETURN                           R1 -1
       13 NEWTABLE                         R1 0 1
       15 GETIMPORT                        R2 K7 [ColorSequenceKeypoint.new]
       17 LOADN                            R3 0
       18 GETTABLEN                        R4 R0 1
       19 CALL                             R2 2 -1
       20 SETLIST                          R1 R2 -1 [1]
       22 MOVE                             R2 R0
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 JUMPIFEQKN                       R5 K8 [1] ; [+27]
       28 MOVE                             R8 R1
       29 GETIMPORT                        R9 K7 [ColorSequenceKeypoint.new]
       31 SUBK                             R12 R5 K8 [1]
       32 LENGTH                           R13 R0
       33 DIV                              R11 R12 R13
       34 SUBK                             R10 R11 K9 [0.001]
       35 SUBK                             R12 R5 K8 [1]
       36 GETTABLE                         R11 R0 R12
       37 CALL                             R9 2 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R7 K12 [table.insert]
       41 CALL                             R7 -1 0
       42 MOVE                             R8 R1
       43 GETIMPORT                        R9 K7 [ColorSequenceKeypoint.new]
       45 SUBK                             R11 R5 K8 [1]
       46 LENGTH                           R12 R0
       47 DIV                              R10 R11 R12
       48 MOVE                             R11 R6
       49 CALL                             R9 2 -1
       50 FASTCALL                         TABLE_INSERT ; [+2]
       51 GETIMPORT                        R7 K12 [table.insert]
       53 CALL                             R7 -1 0
       54 FORGLOOP                         R2 2 ; [-29]
       56 MOVE                             R3 R1
       57 GETIMPORT                        R4 K7 [ColorSequenceKeypoint.new]
       59 LOADN                            R5 1
       60 LENGTH                           R7 R0
       61 GETTABLE                         R6 R0 R7
       62 CALL                             R4 2 -1
       63 FASTCALL                         TABLE_INSERT ; [+2]
       64 GETIMPORT                        R2 K12 [table.insert]
       66 CALL                             R2 -1 0
       67 GETIMPORT                        R2 K3 [ColorSequence.new]
       69 MOVE                             R3 R1
       70 CALL                             R2 1 -1
       71 RETURN                           R2 -1

PROTO_7:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+6]
        3 GETIMPORT                        R1 K3 [NumberSequence.new]
        5 LOADN                            R2 1
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETIMPORT                        R1 K3 [NumberSequence.new]
       10 LOADN                            R2 0
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_8:
        0 DUPCLOSURE                       R3 K0 [PROTO_3]
        1 NAMECALL                         R1 R0 K1 ["map"]
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 0
        5 LOADK                            R3 K2 ["ImageLabel"]
        6 DUPTABLE                         R4 K9 [{"BackgroundTransparency", "Image", "ScaleType", "TileSize", "Size", "Visible"}]
        7 LOADN                            R5 1
        8 SETTABLEKS                       R5 R4 K3 ["BackgroundTransparency"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K10 ["standard"]
       13 LOADK                            R6 K11 ["collaboratorSelection"]
       14 CALL                             R5 1 1
       15 SETTABLEKS                       R5 R4 K4 ["Image"]
       17 GETIMPORT                        R5 K14 [Enum.ScaleType.Tile]
       19 SETTABLEKS                       R5 R4 K5 ["ScaleType"]
       21 GETIMPORT                        R5 K17 [UDim2.new]
       23 LOADN                            R6 0
       24 LOADN                            R7 16
       25 LOADN                            R8 1
       26 LOADN                            R9 0
       27 CALL                             R5 4 1
       28 SETTABLEKS                       R5 R4 K6 ["TileSize"]
       30 DUPCLOSURE                       R7 K18 [PROTO_4]
       31 NAMECALL                         R5 R1 K1 ["map"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K7 ["Size"]
       36 DUPCLOSURE                       R7 K19 [PROTO_5]
       37 NAMECALL                         R5 R1 K1 ["map"]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K8 ["Visible"]
       42 DUPTABLE                         R5 K21 [{"UIGradient"}]
       43 GETUPVAL                         R6 0
       44 LOADK                            R7 K20 ["UIGradient"]
       45 DUPTABLE                         R8 K24 [{"Color", "Transparency"}]
       46 DUPCLOSURE                       R11 K25 [PROTO_6]
       47 NAMECALL                         R9 R1 K1 ["map"]
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K22 ["Color"]
       52 DUPCLOSURE                       R11 K26 [PROTO_7]
       53 NAMECALL                         R9 R1 K1 ["map"]
       55 CALL                             R9 2 1
       56 SETTABLEKS                       R9 R8 K23 ["Transparency"]
       58 CALL                             R6 2 1
       59 SETTABLEKS                       R6 R5 K20 ["UIGradient"]
       61 CALL                             R2 3 -1
       62 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["R"]
        2 GETTABLEKS                       R4 R1 K0 ["R"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["collaboratorsSelectionsObservable"]
        5 GETTABLEKS                       R1 R2 K1 ["get"]
        7 CALL                             R1 0 3
        8 FORGPREP                         R1
        9 GETUPVAL                         R7 1
       10 GETTABLE                         R6 R5 R7
       11 JUMPIFNOT                        R6 ; [+7]
       12 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R4
       16 GETIMPORT                        R6 K4 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-11]
       21 GETUPVAL                         R1 2
       22 CALL                             R1 0 1
       23 JUMPIFNOT                        R1 ; [+5]
       24 LENGTH                           R1 R0
       25 JUMPIFNOTEQKN                    R1 K5 [0] ; [+3]
       27 LOADNIL                          R1
       28 RETURN                           R1 1
       29 GETIMPORT                        R1 K7 [table.sort]
       31 MOVE                             R2 R0
       32 DUPCLOSURE                       R3 K8 [PROTO_9]
       33 CALL                             R1 2 0
       34 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 GETTABLEKS                       R5 R2 K0 ["collaboratorsSelectionsObservable"]
        6 GETTABLEKS                       R4 R5 K1 ["changedSignal"]
        8 NEWCLOSURE                       R6 P1
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R3
       11 NAMECALL                         R4 R4 K2 ["Connect"]
       13 CALL                             R4 2 1
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          VAL R4
       16 MOVE                             R6 R3
       17 CALL                             R6 0 1
       18 MOVE                             R7 R5
       19 RETURN                           R6 2

PROTO_14:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R3 K7 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["ImageUrl"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Flags"]
       39 GETTABLEKS                       R6 R7 K14 ["getFFlagExplorerFieldColumns"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K15 ["createElement"]
       44 NEWTABLE                         R7 0 0
       46 DUPCLOSURE                       R8 K16 [PROTO_0]
       47 CAPTURE                          VAL R7
       48 DUPCLOSURE                       R9 K17 [PROTO_2]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R7
       51 DUPCLOSURE                       R10 K18 [PROTO_8]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 DUPCLOSURE                       R11 K19 [PROTO_13]
       55 CAPTURE                          VAL R5
       56 DUPTABLE                         R12 K27 [{"key", "icon", "init", "render", "watch", "validateArgs", "permanent"}]
       57 LOADK                            R13 K28 ["collaboratorSelection"]
       58 SETTABLEKS                       R13 R12 K20 ["key"]
       60 LOADK                            R13 K29 [""]
       61 SETTABLEKS                       R13 R12 K21 ["icon"]
       63 SETTABLEKS                       R9 R12 K22 ["init"]
       65 SETTABLEKS                       R10 R12 K23 ["render"]
       67 SETTABLEKS                       R11 R12 K24 ["watch"]
       69 DUPCLOSURE                       R13 K30 [PROTO_14]
       70 SETTABLEKS                       R13 R12 K25 ["validateArgs"]
       72 LOADB                            R13 1
       73 SETTABLEKS                       R13 R12 K26 ["permanent"]
       75 RETURN                           R12 1
