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
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R0 K0 ["plotToView"]
        8 GETTABLEKS                       R9 R7 K1 ["Position"]
       10 CALL                             R8 1 1
       11 GETTABLEKS                       R10 R7 K2 ["LeftTangent"]
       13 JUMPIFNOT                        R10 ; [+3]
       14 GETTABLEKS                       R9 R7 K2 ["LeftTangent"]
       16 JUMP                             ; [+5]
       17 GETIMPORT                        R9 K5 [Vector2.new]
       19 LOADN                            R10 0
       20 LOADN                            R11 0
       21 CALL                             R9 2 1
       22 GETTABLEKS                       R11 R7 K6 ["RightTangent"]
       24 JUMPIFNOT                        R11 ; [+3]
       25 GETTABLEKS                       R10 R7 K6 ["RightTangent"]
       27 JUMP                             ; [+5]
       28 GETIMPORT                        R10 K5 [Vector2.new]
       30 LOADN                            R11 0
       31 LOADN                            R12 0
       32 CALL                             R10 2 1
       33 GETTABLEKS                       R11 R0 K0 ["plotToView"]
       35 GETTABLEKS                       R13 R7 K1 ["Position"]
       37 ADD                              R12 R13 R9
       38 CALL                             R11 1 1
       39 SUB                              R9 R11 R8
       40 GETTABLEKS                       R11 R0 K0 ["plotToView"]
       42 GETTABLEKS                       R13 R7 K1 ["Position"]
       44 ADD                              R12 R13 R10
       45 CALL                             R11 1 1
       46 SUB                              R10 R11 R8
       47 MOVE                             R12 R2
       48 GETIMPORT                        R13 K8 [Path2DControlPoint.new]
       50 GETIMPORT                        R14 K11 [UDim2.fromScale]
       52 GETTABLEKS                       R15 R8 K12 ["X"]
       54 GETTABLEKS                       R16 R8 K13 ["Y"]
       56 CALL                             R14 2 1
       57 GETIMPORT                        R15 K11 [UDim2.fromScale]
       59 GETTABLEKS                       R16 R9 K12 ["X"]
       61 GETTABLEKS                       R17 R9 K13 ["Y"]
       63 CALL                             R15 2 1
       64 GETIMPORT                        R16 K11 [UDim2.fromScale]
       66 GETTABLEKS                       R17 R10 K12 ["X"]
       68 GETTABLEKS                       R18 R10 K13 ["Y"]
       70 CALL                             R16 2 -1
       71 CALL                             R13 -1 -1
       72 FASTCALL                         TABLE_INSERT ; [+2]
       73 GETIMPORT                        R11 K16 [table.insert]
       75 CALL                             R11 -1 0
       76 FORGLOOP                         R3 2 ; [-71]
       78 RETURN                           R2 1

PROTO_2:
        0 LOADN                            R3 1
        1 NAMECALL                         R4 R0 K0 ["GetChildren"]
        3 CALL                             R4 1 3
        4 FORGPREP                         R4
        5 NEWTABLE                         R9 0 0
        7 LENGTH                           R10 R1
        8 MOVE                             R13 R3
        9 ADD                              R14 R3 R2
       10 SUBK                             R11 R14 K1 [1]
       11 LOADN                            R12 1
       12 FORNPREP                         R11
       13 JUMPIFLT                         R10 R13 ; [+9]
       15 GETTABLE                         R16 R1 R13
       16 FASTCALL2                        TABLE_INSERT R9 R16 ; [+4]
       18 MOVE                             R15 R9
       19 GETIMPORT                        R14 K4 [table.insert]
       21 CALL                             R14 2 0
       22 FORNLOOP                         R11
       23 MOVE                             R13 R9
       24 NAMECALL                         R11 R8 K5 ["SetControlPoints"]
       26 CALL                             R11 2 0
       27 SUBK                             R11 R2 K1 [1]
       28 ADD                              R3 R3 R11
       29 FORGLOOP                         R4 2 ; [-25]
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["viewportRectGetter"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R0
        9 CALL                             R3 1 -1
       10 CALL                             R1 -1 1
       11 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["viewportRectGetter"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["ObserveThickness"]
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K0 ["ObserveThickness"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K1 ["get"]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 1
       19 JUMPIFNOT                        R3 ; [+14]
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R3
       22 MOVE                             R6 R1
       23 GETUPVAL                         R7 4
       24 CALL                             R4 3 0
       25 JUMPIFNOT                        R2 ; [+8]
       26 NAMECALL                         R4 R3 K2 ["GetChildren"]
       28 CALL                             R4 1 3
       29 FORGPREP                         R4
       30 SETTABLEKS                       R2 R8 K3 ["Thickness"]
       32 FORGLOOP                         R4 2 ; [-3]
       34 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["ObservePoints"]
        4 JUMPIFNOT                        R1 ; [+13]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["ObservePoints"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["createComputed"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 1
       16 MOVE                             R0 R2
       17 JUMP                             ; [+15]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K2 ["Points"]
       21 JUMPIF                           R1 ; [+2]
       22 NEWTABLE                         R1 0 0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K1 ["createComputed"]
       27 NEWCLOSURE                       R3 P1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R1
       31 CALL                             R2 1 1
       32 MOVE                             R0 R2
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K3 ["createEffect"]
       36 NEWCLOSURE                       R2 P2
       37 CAPTURE                          REF R0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U6
       42 CALL                             R1 1 -1
       43 CLOSEUPVALS                      R0
       44 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Points"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 LENGTH                           R2 R1
        5 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 LOADK                            R2 K2 [∞]
       10 LOADK                            R3 K2 [∞]
       11 LOADK                            R4 K3 [-∞]
       12 LOADK                            R5 K3 [-∞]
       13 MOVE                             R6 R1
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 NEWTABLE                         R11 0 1
       19 GETTABLEKS                       R12 R10 K4 ["Position"]
       21 SETLIST                          R11 R12 1 [1]
       23 GETTABLEKS                       R12 R10 K5 ["LeftTangent"]
       25 JUMPIFNOT                        R12 ; [+11]
       26 GETTABLEKS                       R15 R10 K4 ["Position"]
       28 GETTABLEKS                       R16 R10 K5 ["LeftTangent"]
       30 ADD                              R14 R15 R16
       31 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
       33 MOVE                             R13 R11
       34 GETIMPORT                        R12 K8 [table.insert]
       36 CALL                             R12 2 0
       37 GETTABLEKS                       R12 R10 K9 ["RightTangent"]
       39 JUMPIFNOT                        R12 ; [+11]
       40 GETTABLEKS                       R15 R10 K4 ["Position"]
       42 GETTABLEKS                       R16 R10 K9 ["RightTangent"]
       44 ADD                              R14 R15 R16
       45 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
       47 MOVE                             R13 R11
       48 GETIMPORT                        R12 K8 [table.insert]
       50 CALL                             R12 2 0
       51 MOVE                             R12 R11
       52 LOADNIL                          R13
       53 LOADNIL                          R14
       54 FORGPREP                         R12
       55 GETTABLEKS                       R17 R16 K10 ["X"]
       57 JUMPIFNOTLT                      R17 R2 ; [+3]
       59 GETTABLEKS                       R2 R16 K10 ["X"]
       61 GETTABLEKS                       R17 R16 K11 ["Y"]
       63 JUMPIFNOTLT                      R17 R3 ; [+3]
       65 GETTABLEKS                       R3 R16 K11 ["Y"]
       67 GETTABLEKS                       R17 R16 K10 ["X"]
       69 JUMPIFNOTLT                      R4 R17 ; [+3]
       71 GETTABLEKS                       R4 R16 K10 ["X"]
       73 GETTABLEKS                       R17 R16 K11 ["Y"]
       75 JUMPIFNOTLT                      R5 R17 ; [+3]
       77 GETTABLEKS                       R5 R16 K11 ["Y"]
       79 FORGLOOP                         R12 2 ; [-25]
       81 FORGLOOP                         R6 2 ; [-65]
       83 GETTABLEKS                       R6 R0 K12 ["isRectInViewport"]
       85 GETIMPORT                        R7 K15 [Rect.new]
       87 MOVE                             R8 R2
       88 MOVE                             R9 R3
       89 MOVE                             R10 R4
       90 MOVE                             R11 R5
       91 CALL                             R7 4 -1
       92 CALL                             R6 -1 -1
       93 RETURN                           R6 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 2
        6 JUMPIF                           R3 ; [+11]
        7 GETIMPORT                        R3 K3 [Instance.new]
        9 LOADK                            R4 K4 ["Path2D"]
       10 CALL                             R3 1 1
       11 NAMECALL                         R4 R3 K5 ["GetMaxControlPoints"]
       13 CALL                             R4 1 1
       14 SETUPVAL                         R4 2
       15 NAMECALL                         R4 R3 K6 ["Destroy"]
       17 CALL                             R4 1 0
       18 GETUPVAL                         R4 2
       19 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       21 LOADK                            R5 K7 ["MAX_POINTS_PER_PATH was nil"]
       22 GETIMPORT                        R3 K9 [assert]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K10 ["useRef"]
       29 LOADNIL                          R4
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K11 ["current"]
       33 JUMPIFNOTEQKNIL                  R4 ; [+13]
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R4 R4 K12 ["createSignal"]
       38 LOADNIL                          R5
       39 CALL                             R4 1 2
       40 DUPTABLE                         R6 K15 [{"get", "set"}]
       41 SETTABLEKS                       R4 R6 K13 ["get"]
       43 SETTABLEKS                       R5 R6 K14 ["set"]
       45 SETTABLEKS                       R6 R3 K11 ["current"]
       47 GETTABLEKS                       R4 R3 K11 ["current"]
       49 GETTABLEKS                       R5 R0 K16 ["PointCount"]
       51 JUMPIF                           R5 ; [+8]
       52 GETTABLEKS                       R6 R0 K17 ["Points"]
       54 JUMPIFNOT                        R6 ; [+4]
       55 GETTABLEKS                       R6 R0 K17 ["Points"]
       57 LENGTH                           R5 R6
       58 JUMPIF                           R5 ; [+1]
       59 LOADN                            R5 0
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K18 ["useLayoutEffect"]
       63 NEWCLOSURE                       R7 P0
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R1
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R4
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R2
       71 NEWTABLE                         R8 0 4
       73 MOVE                             R9 R1
       74 GETTABLEKS                       R10 R0 K19 ["ObservePoints"]
       76 GETTABLEKS                       R11 R0 K17 ["Points"]
       78 GETTABLEKS                       R12 R0 K20 ["ObserveThickness"]
       80 SETLIST                          R8 R9 4 [1]
       82 CALL                             R6 2 0
       83 GETUPVAL                         R6 6
       84 NEWCLOSURE                       R7 P1
       85 CAPTURE                          VAL R0
       86 NEWTABLE                         R8 0 1
       88 GETTABLEKS                       R9 R0 K17 ["Points"]
       90 SETLIST                          R8 R9 1 [1]
       92 CALL                             R6 2 1
       93 JUMPIF                           R6 ; [+2]
       94 LOADNIL                          R7
       95 RETURN                           R7 1
       96 GETTABLEKS                       R8 R0 K22 ["Tag"]
       98 ORK                              R7 R8 K21 [""]
       99 GETTABLEKS                       R9 R0 K23 ["ClipContents"]
      101 JUMPIFEQKNIL                     R9 ; [+4]
      103 GETTABLEKS                       R8 R0 K23 ["ClipContents"]
      105 JUMP                             ; [+1]
      106 LOADB                            R8 0
      107 NEWTABLE                         R9 0 0
      109 LOADN                            R10 1
      110 LOADN                            R13 2
      111 MOVE                             R11 R5
      112 SUBK                             R12 R2 K24 [1]
      113 FORNPREP                         R11
      114 FASTCALL1                        TOSTRING R10 ; [+3]
      115 MOVE                             R15 R10
      116 GETIMPORT                        R14 K26 [tostring]
      118 CALL                             R14 1 1
      119 GETUPVAL                         R15 0
      120 GETTABLEKS                       R15 R15 K27 ["createElement"]
      122 LOADK                            R16 K4 ["Path2D"]
      123 NEWTABLE                         R17 4 0
      125 GETTABLEKS                       R18 R0 K28 ["Color3"]
      127 JUMPIF                           R18 ; [+3]
      128 GETUPVAL                         R18 7
      129 GETTABLEKS                       R18 R18 K29 ["CURVE_COLOR3"]
      131 SETTABLEKS                       R18 R17 K28 ["Color3"]
      133 GETTABLEKS                       R18 R0 K30 ["Thickness"]
      135 JUMPIF                           R18 ; [+3]
      136 GETUPVAL                         R18 7
      137 GETTABLEKS                       R18 R18 K31 ["CURVE_THICKNESS"]
      139 SETTABLEKS                       R18 R17 K30 ["Thickness"]
      141 GETTABLEKS                       R18 R0 K32 ["ZIndex"]
      143 SETTABLEKS                       R18 R17 K32 ["ZIndex"]
      145 GETUPVAL                         R18 0
      146 GETTABLEKS                       R18 R18 K22 ["Tag"]
      148 SETTABLE                         R7 R17 R18
      149 CALL                             R15 2 1
      150 SETTABLE                         R15 R9 R14
      151 ADDK                             R10 R10 K24 [1]
      152 FORNLOOP                         R11
      153 GETUPVAL                         R11 0
      154 GETTABLEKS                       R11 R11 K27 ["createElement"]
      156 JUMPIFNOT                        R8 ; [+2]
      157 LOADK                            R12 K33 ["CanvasGroup"]
      158 JUMP                             ; [+1]
      159 LOADK                            R12 K34 ["Frame"]
      160 DUPTABLE                         R13 K40 [{["ref"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["ZIndex"]}]
      161 GETTABLEKS                       R14 R4 K14 ["set"]
      163 SETTABLEKS                       R14 R13 K35 ["ref"]
      165 GETIMPORT                        R14 K43 [UDim2.fromScale]
      167 LOADN                            R15 1
      168 LOADN                            R16 1
      169 CALL                             R14 2 1
      170 SETTABLEKS                       R14 R13 K39 ["Size"]
      172 GETTABLEKS                       R14 R0 K32 ["ZIndex"]
      174 SETTABLEKS                       R14 R13 K32 ["ZIndex"]
      176 MOVE                             R14 R9
      177 CALL                             R11 3 -1
      178 RETURN                           R11 -1

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
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["CanvasContext"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R6 K11 ["StyleUtil"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Types"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K10 ["Util"]
       40 GETTABLEKS                       R8 R8 K13 ["useViewportBinding"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R7 K14 ["useViewportVisibility"]
       45 LOADNIL                          R9
       46 NEWCLOSURE                       R10 P0
       47 CAPTURE                          REF R9
       48 DUPCLOSURE                       R11 K15 [PROTO_1]
       49 DUPCLOSURE                       R12 K16 [PROTO_2]
       50 NEWCLOSURE                       R13 P3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          REF R9
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R11
       56 CAPTURE                          VAL R12
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R5
       59 SETGLOBAL                        R13 K17 ["Curve"]
       61 GETGLOBAL                        R13 K17 ["Curve"]
       63 CLOSEUPVALS                      R9
       64 RETURN                           R13 1
