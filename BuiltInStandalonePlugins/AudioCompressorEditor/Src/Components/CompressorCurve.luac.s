PROTO_0:
        0 JUMPIF                           R0 ; [+4]
        1 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
        3 CALL                             R3 0 -1
        4 RETURN                           R3 -1
        5 JUMPIFNOT                        R1 ; [+1]
        6 JUMPIF                           R2 ; [+11]
        7 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
        9 GETIMPORT                        R4 K5 [UDim2.fromOffset]
       11 GETTABLEKS                       R5 R0 K6 ["X"]
       13 GETTABLEKS                       R6 R0 K7 ["Y"]
       15 CALL                             R4 2 -1
       16 CALL                             R3 -1 -1
       17 RETURN                           R3 -1
       18 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
       20 GETIMPORT                        R4 K5 [UDim2.fromOffset]
       22 GETTABLEKS                       R5 R0 K6 ["X"]
       24 GETTABLEKS                       R6 R0 K7 ["Y"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K5 [UDim2.fromOffset]
       29 GETTABLEKS                       R6 R1 K6 ["X"]
       31 GETTABLEKS                       R7 R1 K7 ["Y"]
       33 CALL                             R5 2 1
       34 GETIMPORT                        R6 K5 [UDim2.fromOffset]
       36 GETTABLEKS                       R7 R2 K6 ["X"]
       38 GETTABLEKS                       R8 R2 K7 ["Y"]
       40 CALL                             R6 2 -1
       41 CALL                             R3 -1 -1
       42 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R4 R5 K0 ["plotToAbs"]
        5 MOVE                             R5 R0
        6 GETUPVAL                         R7 3
        7 GETTABLEKS                       R6 R7 K1 ["PlotAbsoluteSize"]
        9 CALL                             R4 2 -1
       10 CALL                             R3 -1 -1
       11 FASTCALL                         TABLE_INSERT ; [+2]
       12 GETIMPORT                        R1 K4 [table.insert]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 GETIMPORT                        R2 K2 [Vector2.new]
        9 LOADN                            R3 0
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K3 ["DataHook"]
       13 GETTABLEKS                       R4 R5 K4 ["makeupGain"]
       15 CALL                             R2 2 1
       16 GETIMPORT                        R4 K2 [Vector2.new]
       18 LOADN                            R5 176
       19 LOADN                            R6 176
       20 CALL                             R4 2 1
       21 ADD                              R3 R4 R2
       22 MOVE                             R5 R0
       23 GETUPVAL                         R6 0
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K5 ["plotToAbs"]
       27 MOVE                             R8 R3
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R9 R10 K6 ["PlotAbsoluteSize"]
       31 CALL                             R7 2 -1
       32 CALL                             R6 -1 -1
       33 FASTCALL                         TABLE_INSERT ; [+2]
       34 GETIMPORT                        R4 K9 [table.insert]
       36 CALL                             R4 -1 0
       37 GETIMPORT                        R4 K2 [Vector2.new]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R6 R7 K3 ["DataHook"]
       42 GETTABLEKS                       R5 R6 K10 ["threshold"]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R7 R8 K3 ["DataHook"]
       47 GETTABLEKS                       R6 R7 K10 ["threshold"]
       49 CALL                             R4 2 1
       50 ADD                              R3 R4 R2
       51 MOVE                             R5 R0
       52 GETUPVAL                         R6 0
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R7 R8 K5 ["plotToAbs"]
       56 MOVE                             R8 R3
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R9 R10 K6 ["PlotAbsoluteSize"]
       60 CALL                             R7 2 -1
       61 CALL                             R6 -1 -1
       62 FASTCALL                         TABLE_INSERT ; [+2]
       63 GETIMPORT                        R4 K9 [table.insert]
       65 CALL                             R4 -1 0
       66 GETIMPORT                        R5 K2 [Vector2.new]
       68 GETUPVAL                         R8 2
       69 GETTABLEKS                       R7 R8 K3 ["DataHook"]
       71 GETTABLEKS                       R6 R7 K10 ["threshold"]
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R8 R9 K3 ["DataHook"]
       76 GETTABLEKS                       R7 R8 K10 ["threshold"]
       78 CALL                             R5 2 1
       79 ADD                              R4 R5 R2
       80 GETIMPORT                        R5 K2 [Vector2.new]
       82 GETUPVAL                         R9 2
       83 GETTABLEKS                       R8 R9 K3 ["DataHook"]
       85 GETTABLEKS                       R7 R8 K10 ["threshold"]
       87 SUBRK                            R6 R11 K7 ["table"]
       88 GETUPVAL                         R11 2
       89 GETTABLEKS                       R10 R11 K3 ["DataHook"]
       91 GETTABLEKS                       R9 R10 K10 ["threshold"]
       93 SUBRK                            R8 R11 K9 [table.insert]
       94 GETUPVAL                         R11 2
       95 GETTABLEKS                       R10 R11 K3 ["DataHook"]
       97 GETTABLEKS                       R9 R10 K12 ["ratio"]
       99 DIV                              R7 R8 R9
      100 CALL                             R5 2 1
      101 ADD                              R3 R4 R5
      102 MOVE                             R5 R0
      103 GETUPVAL                         R6 0
      104 GETUPVAL                         R8 1
      105 GETTABLEKS                       R7 R8 K5 ["plotToAbs"]
      107 MOVE                             R8 R3
      108 GETUPVAL                         R10 2
      109 GETTABLEKS                       R9 R10 K6 ["PlotAbsoluteSize"]
      111 CALL                             R7 2 -1
      112 CALL                             R6 -1 -1
      113 FASTCALL                         TABLE_INSERT ; [+2]
      114 GETIMPORT                        R4 K9 [table.insert]
      116 CALL                             R4 -1 0
      117 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["DataHook"]
        2 GETTABLEKS                       R2 R3 K1 ["bypass"]
        4 NOT                              R1 R2
        5 GETUPVAL                         R2 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R4 0 2
       12 GETTABLEKS                       R5 R0 K0 ["DataHook"]
       14 GETTABLEKS                       R6 R0 K2 ["PlotAbsoluteSize"]
       16 SETLIST                          R4 R5 2 [1]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R0 K3 ["Enabled"]
       21 JUMPIFNOT                        R3 ; [+36]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R3 R4 K4 ["createElement"]
       25 LOADK                            R4 K5 ["CanvasGroup"]
       26 DUPTABLE                         R5 K9 [{"Size", "BackgroundTransparency", "ZIndex"}]
       27 GETIMPORT                        R6 K12 [UDim2.fromScale]
       29 LOADN                            R7 1
       30 LOADN                            R8 1
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K6 ["Size"]
       34 LOADN                            R6 1
       35 SETTABLEKS                       R6 R5 K7 ["BackgroundTransparency"]
       37 LOADN                            R6 4
       38 SETTABLEKS                       R6 R5 K8 ["ZIndex"]
       40 DUPTABLE                         R6 K14 [{"Curve"}]
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R7 R8 K4 ["createElement"]
       44 GETUPVAL                         R8 4
       45 DUPTABLE                         R9 K17 [{"ControlPoints", "Tag"}]
       46 SETTABLEKS                       R2 R9 K15 ["ControlPoints"]
       48 JUMPIFNOT                        R1 ; [+2]
       49 LOADK                            R10 K13 ["Curve"]
       50 JUMP                             ; [+1]
       51 LOADK                            R10 K18 ["CurveDisabled"]
       52 SETTABLEKS                       R10 R9 K16 ["Tag"]
       54 CALL                             R7 2 1
       55 SETTABLEKS                       R7 R6 K13 ["Curve"]
       57 CALL                             R3 3 1
       58 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AudioCompressorEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R4 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R4 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useMemo"]
       20 GETIMPORT                        R4 K6 [require]
       22 GETTABLEKS                       R6 R1 K10 ["Src"]
       24 GETTABLEKS                       R5 R6 K11 ["Types"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Path2DWrapper"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R9 R1 K10 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Util"]
       38 GETTABLEKS                       R7 R8 K14 ["PlotUtil"]
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K15 [PROTO_0]
       42 DUPCLOSURE                       R8 K16 [PROTO_3]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 RETURN                           R8 1
