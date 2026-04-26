PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+11]
        2 GETIMPORT                        R0 K2 [Instance.new]
        4 LOADK                            R1 K3 ["Path2D"]
        5 CALL                             R0 1 1
        6 NAMECALL                         R1 R0 K4 ["GetMaxControlPoints"]
        8 CALL                             R1 1 1
        9 SETUPVAL                         R1 0
       10 NAMECALL                         R1 R0 K5 ["Destroy"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 0
       14 FASTCALL2K                       ASSERT R1 K6 ; [+4]
       16 LOADK                            R2 K6 ["MAX_POINTS_PER_PATH was nil"]
       17 GETIMPORT                        R0 K8 [assert]
       19 CALL                             R0 2 0
       20 GETUPVAL                         R0 0
       21 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 LOADN                            R2 1
        6 NAMECALL                         R3 R1 K1 ["GetChildren"]
        8 CALL                             R3 1 3
        9 FORGPREP                         R3
       10 NEWTABLE                         R8 0 0
       12 LENGTH                           R9 R0
       13 MOVE                             R12 R2
       14 GETUPVAL                         R14 1
       15 ADD                              R13 R2 R14
       16 SUBK                             R10 R13 K2 [1]
       17 LOADN                            R11 1
       18 FORNPREP                         R10
       19 JUMPIFLT                         R9 R12 ; [+9]
       21 GETTABLE                         R15 R0 R12
       22 FASTCALL2                        TABLE_INSERT R8 R15 ; [+4]
       24 MOVE                             R14 R8
       25 GETIMPORT                        R13 K5 [table.insert]
       27 CALL                             R13 2 0
       28 FORNLOOP                         R10
       29 MOVE                             R12 R8
       30 NAMECALL                         R10 R7 K6 ["SetControlPoints"]
       32 CALL                             R10 2 0
       33 GETUPVAL                         R11 1
       34 SUBK                             R10 R11 K2 [1]
       35 ADD                              R2 R2 R10
       36 FORGLOOP                         R3 2 ; [-27]
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ObserveControlPoints"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["ObserveControlPoints"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["createEffect"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R0 R1 K2 ["ControlPoints"]
       18 JUMPIFNOT                        R0 ; [+5]
       19 GETUPVAL                         R0 2
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K2 ["ControlPoints"]
       23 CALL                             R0 1 0
       24 DUPCLOSURE                       R0 K3 [PROTO_3]
       25 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 JUMPIF                           R3 ; [+11]
        7 GETIMPORT                        R3 K3 [Instance.new]
        9 LOADK                            R4 K4 ["Path2D"]
       10 CALL                             R3 1 1
       11 NAMECALL                         R4 R3 K5 ["GetMaxControlPoints"]
       13 CALL                             R4 1 1
       14 SETUPVAL                         R4 1
       15 NAMECALL                         R4 R3 K6 ["Destroy"]
       17 CALL                             R4 1 0
       18 GETUPVAL                         R4 1
       19 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       21 LOADK                            R5 K7 ["MAX_POINTS_PER_PATH was nil"]
       22 GETIMPORT                        R3 K9 [assert]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R3 R0 K10 ["PointCount"]
       28 JUMPIF                           R3 ; [+8]
       29 GETTABLEKS                       R4 R0 K11 ["ControlPoints"]
       31 JUMPIFNOT                        R4 ; [+4]
       32 GETTABLEKS                       R4 R0 K11 ["ControlPoints"]
       34 LENGTH                           R3 R4
       35 JUMPIF                           R3 ; [+1]
       36 LOADN                            R3 0
       37 NEWCLOSURE                       R4 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K12 ["useLayoutEffect"]
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R4
       47 NEWTABLE                         R7 0 2
       49 GETTABLEKS                       R8 R0 K13 ["ObserveControlPoints"]
       51 GETTABLEKS                       R9 R0 K11 ["ControlPoints"]
       53 SETLIST                          R7 R8 2 [1]
       55 CALL                             R5 2 0
       56 GETTABLEKS                       R6 R0 K15 ["Tag"]
       58 ORK                              R5 R6 K14 [""]
       59 GETTABLEKS                       R7 R0 K16 ["ClipContents"]
       61 JUMPIFEQKNIL                     R7 ; [+4]
       63 GETTABLEKS                       R6 R0 K16 ["ClipContents"]
       65 JUMP                             ; [+1]
       66 LOADB                            R6 1
       67 NEWTABLE                         R7 0 0
       69 LOADN                            R8 1
       70 LOADN                            R11 2
       71 MOVE                             R9 R3
       72 SUBK                             R10 R2 K17 [1]
       73 FORNPREP                         R9
       74 FASTCALL1                        TOSTRING R8 ; [+3]
       75 MOVE                             R13 R8
       76 GETIMPORT                        R12 K19 [tostring]
       78 CALL                             R12 1 1
       79 GETUPVAL                         R14 0
       80 GETTABLEKS                       R13 R14 K20 ["createElement"]
       82 LOADK                            R14 K4 ["Path2D"]
       83 NEWTABLE                         R15 4 0
       85 GETTABLEKS                       R16 R0 K21 ["Color3"]
       87 SETTABLEKS                       R16 R15 K21 ["Color3"]
       89 GETTABLEKS                       R16 R0 K22 ["Thickness"]
       91 SETTABLEKS                       R16 R15 K22 ["Thickness"]
       93 GETTABLEKS                       R16 R0 K23 ["ZIndex"]
       95 SETTABLEKS                       R16 R15 K23 ["ZIndex"]
       97 GETUPVAL                         R17 0
       98 GETTABLEKS                       R16 R17 K15 ["Tag"]
      100 SETTABLE                         R5 R15 R16
      101 CALL                             R13 2 1
      102 SETTABLE                         R13 R7 R12
      103 ADDK                             R8 R8 K17 [1]
      104 FORNLOOP                         R9
      105 GETUPVAL                         R10 0
      106 GETTABLEKS                       R9 R10 K20 ["createElement"]
      108 JUMPIFNOT                        R6 ; [+2]
      109 LOADK                            R10 K24 ["CanvasGroup"]
      110 JUMP                             ; [+1]
      111 LOADK                            R10 K25 ["Frame"]
      112 DUPTABLE                         R11 K30 [{"ref", "BackgroundTransparency", "BorderSizePixel", "Size", "ZIndex"}]
      113 SETTABLEKS                       R1 R11 K26 ["ref"]
      115 LOADN                            R12 1
      116 SETTABLEKS                       R12 R11 K27 ["BackgroundTransparency"]
      118 LOADN                            R12 0
      119 SETTABLEKS                       R12 R11 K28 ["BorderSizePixel"]
      121 GETIMPORT                        R12 K33 [UDim2.fromScale]
      123 LOADN                            R13 1
      124 LOADN                            R14 1
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K29 ["Size"]
      128 GETTABLEKS                       R12 R0 K23 ["ZIndex"]
      130 SETTABLEKS                       R12 R11 K23 ["ZIndex"]
      132 MOVE                             R12 R7
      133 CALL                             R9 3 -1
      134 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Signals"]
       18 CALL                             R3 1 1
       19 LOADNIL                          R4
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          REF R4
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          REF R4
       25 CAPTURE                          VAL R3
       26 SETGLOBAL                        R6 K9 ["Path2DWrapper"]
       28 GETGLOBAL                        R6 K9 ["Path2DWrapper"]
       30 CLOSEUPVALS                      R4
       31 RETURN                           R6 1
