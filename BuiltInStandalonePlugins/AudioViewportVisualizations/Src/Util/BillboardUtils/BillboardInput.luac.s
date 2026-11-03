PROTO_0:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R2 K0 ["WorldToViewportPoint"]
        3 CALL                             R3 2 2
        4 GETTABLEKS                       R5 R3 K1 ["Z"]
        6 LOADN                            R6 0
        7 JUMPIFNOTLE                      R5 R6 ; [+3]
        9 LOADNIL                          R5
       10 RETURN                           R5 1
       11 DUPTABLE                         R5 K6 [{"center", "canvasCenter", "depth", "onScreen"}]
       12 GETIMPORT                        R6 K9 [Vector2.new]
       14 GETTABLEKS                       R7 R3 K10 ["X"]
       16 GETTABLEKS                       R8 R3 K11 ["Y"]
       18 CALL                             R6 2 1
       19 SETTABLEKS                       R6 R5 K2 ["center"]
       21 GETTABLEKS                       R7 R0 K12 ["AbsolutePosition"]
       23 GETTABLEKS                       R9 R0 K14 ["AbsoluteSize"]
       25 DIVK                             R8 R9 K13 [2]
       26 ADD                              R6 R7 R8
       27 SETTABLEKS                       R6 R5 K3 ["canvasCenter"]
       29 GETTABLEKS                       R6 R3 K1 ["Z"]
       31 SETTABLEKS                       R6 R5 K4 ["depth"]
       33 SETTABLEKS                       R4 R5 K5 ["onScreen"]
       35 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R5 R4 K1 ["X"]
        4 LOADN                            R6 0
        5 JUMPIFLE                         R5 R6 ; [+6]
        7 GETTABLEKS                       R5 R4 K2 ["Y"]
        9 LOADN                            R6 0
       10 JUMPIFNOTLE                      R5 R6 ; [+3]
       12 LOADB                            R5 0
       13 RETURN                           R5 1
       14 GETTABLEKS                       R6 R1 K3 ["AbsolutePosition"]
       16 DIVK                             R7 R4 K4 [2]
       17 ADD                              R5 R6 R7
       18 GETTABLEKS                       R7 R2 K5 ["center"]
       20 GETTABLEKS                       R9 R2 K6 ["canvasCenter"]
       22 SUB                              R8 R5 R9
       23 ADD                              R6 R7 R8
       24 DIVK                             R7 R4 K4 [2]
       25 LOADB                            R8 0
       26 GETTABLEKS                       R11 R0 K1 ["X"]
       28 GETTABLEKS                       R12 R6 K1 ["X"]
       30 SUB                              R10 R11 R12
       31 FASTCALL1                        MATH_ABS R10 ; [+2]
       32 GETIMPORT                        R9 K9 [math.abs]
       34 CALL                             R9 1 1
       35 GETTABLEKS                       R10 R7 K1 ["X"]
       37 JUMPIFNOTLE                      R9 R10 ; [+24]
       39 LOADB                            R8 0
       40 GETTABLEKS                       R9 R0 K2 ["Y"]
       42 GETTABLEKS                       R11 R6 K2 ["Y"]
       44 GETTABLEKS                       R12 R7 K2 ["Y"]
       46 SUB                              R10 R11 R12
       47 JUMPIFNOTLE                      R10 R9 ; [+14]
       49 GETTABLEKS                       R9 R0 K2 ["Y"]
       51 GETTABLEKS                       R12 R6 K2 ["Y"]
       53 GETTABLEKS                       R13 R7 K2 ["Y"]
       55 ADD                              R11 R12 R13
       56 ORK                              R12 R3 K10 [0]
       57 ADD                              R10 R11 R12
       58 JUMPIFLE                         R9 R10 ; [+2]
       60 LOADB                            R8 0 +1
       61 LOADB                            R8 1
       62 RETURN                           R8 1

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R2 K0 ["rows"]
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 GETTABLEKS                       R9 R8 K1 ["billboard"]
        9 GETTABLE                         R10 R1 R9
       10 GETTABLEKS                       R12 R2 K2 ["billboards"]
       12 GETTABLE                         R11 R12 R9
       13 JUMPIFNOT                        R11 ; [+3]
       14 GETTABLEKS                       R12 R11 K3 ["namesPanel"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R12
       18 JUMPIFNOT                        R10 ; [+31]
       19 JUMPIFNOT                        R12 ; [+30]
       20 GETTABLEKS                       R13 R7 K4 ["Visible"]
       22 JUMPIFNOT                        R13 ; [+27]
       23 GETTABLEKS                       R13 R12 K4 ["Visible"]
       25 JUMPIFNOT                        R13 ; [+24]
       26 GETTABLEKS                       R13 R11 K5 ["namesHost"]
       28 GETTABLEKS                       R13 R13 K4 ["Visible"]
       30 JUMPIFNOT                        R13 ; [+19]
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R13 R13 K6 ["isPointInChild"]
       34 MOVE                             R14 R0
       35 MOVE                             R15 R12
       36 MOVE                             R16 R10
       37 CALL                             R13 3 1
       38 JUMPIFNOT                        R13 ; [+11]
       39 GETUPVAL                         R13 0
       40 GETTABLEKS                       R13 R13 K6 ["isPointInChild"]
       42 MOVE                             R14 R0
       43 MOVE                             R15 R7
       44 MOVE                             R16 R10
       45 CALL                             R13 3 1
       46 JUMPIFNOT                        R13 ; [+3]
       47 GETTABLEKS                       R13 R8 K7 ["instance"]
       49 SETTABLE                         R13 R3 R9
       50 FORGLOOP                         R4 2 ; [-44]
       52 LOADNIL                          R4
       53 LOADNIL                          R5
       54 LOADK                            R6 K8 [Infinity]
       55 GETTABLEKS                       R7 R2 K2 ["billboards"]
       57 LOADNIL                          R8
       58 LOADNIL                          R9
       59 FORGPREP                         R7
       60 GETTABLE                         R12 R1 R10
       61 JUMPIFNOT                        R12 ; [+42]
       62 GETTABLEKS                       R13 R12 K9 ["depth"]
       64 JUMPIFLE                         R6 R13 ; [+39]
       66 GETTABLE                         R13 R3 R10
       67 LOADB                            R14 1
       68 JUMPIFNOTEQKNIL                  R13 ; [+30]
       70 GETTABLEKS                       R15 R11 K10 ["iconHost"]
       72 GETTABLEKS                       R15 R15 K4 ["Visible"]
       74 JUMPIFNOT                        R15 ; [+11]
       75 GETUPVAL                         R14 0
       76 GETTABLEKS                       R14 R14 K6 ["isPointInChild"]
       78 MOVE                             R15 R0
       79 GETTABLEKS                       R16 R11 K10 ["iconHost"]
       81 MOVE                             R17 R12
       82 GETTABLEKS                       R18 R2 K11 ["iconBottomPadding"]
       84 CALL                             R14 4 1
       85 JUMPIF                           R14 ; [+13]
       86 GETTABLEKS                       R14 R11 K5 ["namesHost"]
       88 GETTABLEKS                       R14 R14 K4 ["Visible"]
       90 JUMPIFNOT                        R14 ; [+8]
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R14 R14 K6 ["isPointInChild"]
       94 MOVE                             R15 R0
       95 GETTABLEKS                       R16 R11 K5 ["namesHost"]
       97 MOVE                             R17 R12
       98 CALL                             R14 3 1
       99 JUMPIFNOT                        R14 ; [+4]
      100 MOVE                             R4 R10
      101 MOVE                             R5 R13
      102 GETTABLEKS                       R6 R12 K9 ["depth"]
      104 FORGLOOP                         R7 2 ; [-45]
      106 RETURN                           R4 2

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K0 ["Get"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 LOADB                            R7 1
        8 GETTABLEKS                       R8 R0 K1 ["source"]
       10 JUMPIFEQ                         R6 R8 ; [+7]
       12 GETTABLEKS                       R7 R0 K1 ["source"]
       14 MOVE                             R9 R6
       15 NAMECALL                         R7 R7 K2 ["IsDescendantOf"]
       17 CALL                             R7 2 1
       18 JUMPIF                           R7 ; [+16]
       19 GETTABLEKS                       R8 R0 K3 ["members"]
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 FORGPREP                         R8
       24 JUMPIFEQ                         R6 R12 ; [+6]
       26 MOVE                             R15 R6
       27 NAMECALL                         R13 R12 K2 ["IsDescendantOf"]
       29 CALL                             R13 2 1
       30 JUMPIFNOT                        R13 ; [+2]
       31 LOADB                            R7 1
       32 JUMP                             ; [+2]
       33 FORGLOOP                         R8 2 ; [-10]
       35 JUMPIF                           R7 ; [+7]
       36 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       38 MOVE                             R9 R1
       39 MOVE                             R10 R6
       40 GETIMPORT                        R8 K6 [table.insert]
       42 CALL                             R8 2 0
       43 FORGLOOP                         R2 2 ; [-37]
       45 GETUPVAL                         R2 0
       46 MOVE                             R4 R1
       47 NAMECALL                         R2 R2 K7 ["Set"]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 LENGTH                           R2 R1
        5 JUMPIFNOTEQKN                    R2 K1 [1] ; [+11]
        7 GETTABLEN                        R2 R1 1
        8 JUMPIFNOTEQ                      R0 R2 ; [+8]
       10 GETUPVAL                         R2 0
       11 NEWTABLE                         R4 0 0
       13 NAMECALL                         R2 R2 K2 ["Set"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 0
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R0
       21 SETLIST                          R4 R5 1 [1]
       23 NAMECALL                         R2 R2 K2 ["Set"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["members"]
        2 LENGTH                           R2 R3
        3 JUMPIFNOTEQKN                    R2 K1 [1] ; [+5]
        5 GETTABLEKS                       R2 R0 K0 ["members"]
        7 GETTABLEN                        R1 R2 1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K2 ["source"]
       11 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["soloed"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 0
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 NEWTABLE                         R1 0 0
        9 GETTABLEKS                       R2 R0 K1 ["cluster"]
       11 JUMPIF                           R2 ; [+5]
       12 NEWTABLE                         R2 0 1
       14 MOVE                             R3 R0
       15 SETLIST                          R2 R3 1 [1]
       17 MOVE                             R3 R2
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 GETTABLEKS                       R12 R7 K2 ["members"]
       23 LENGTH                           R11 R12
       24 JUMPIFNOTEQKN                    R11 K3 [1] ; [+5]
       26 GETTABLEKS                       R11 R7 K2 ["members"]
       28 GETTABLEN                        R10 R11 1
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R10 R7 K4 ["source"]
       32 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       34 MOVE                             R9 R1
       35 GETIMPORT                        R8 K7 [table.insert]
       37 CALL                             R8 2 0
       38 FORGLOOP                         R3 2 ; [-18]
       40 GETUPVAL                         R3 1
       41 MOVE                             R5 R1
       42 NAMECALL                         R3 R3 K8 ["Set"]
       44 CALL                             R3 2 0
       45 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 MOVE                             R6 R0
        6 MOVE                             R7 R5
        7 CALL                             R6 1 1
        8 JUMPIFNOT                        R6 ; [+2]
        9 LOADB                            R6 1
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-7]
       13 LOADB                            R1 0
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["Selection"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 NEWTABLE                         R3 8 0
       22 DUPCLOSURE                       R4 K12 [PROTO_0]
       23 SETTABLEKS                       R4 R3 K13 ["projectBillboard"]
       25 DUPCLOSURE                       R4 K14 [PROTO_1]
       26 SETTABLEKS                       R4 R3 K15 ["isPointInChild"]
       28 DUPCLOSURE                       R4 K16 [PROTO_2]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R4 R3 K17 ["hitTest"]
       32 DUPCLOSURE                       R4 K18 [PROTO_3]
       33 CAPTURE                          VAL R2
       34 DUPCLOSURE                       R5 K19 [PROTO_4]
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R5 R3 K20 ["selectBillboardRow"]
       38 DUPCLOSURE                       R5 K21 [PROTO_5]
       39 DUPCLOSURE                       R6 K22 [PROTO_6]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R6 R3 K23 ["selectBillboardIcon"]
       44 DUPCLOSURE                       R6 K24 [PROTO_7]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R6 R3 K25 ["hasAudioSelection"]
       48 RETURN                           R3 1
