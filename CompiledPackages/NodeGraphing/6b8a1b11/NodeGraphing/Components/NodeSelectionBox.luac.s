PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 JUMPIFNOTEQKNIL                  R7 ; [+2]
        8 LOADB                            R9 0 +1
        9 LOADB                            R9 1
       10 FASTCALL2K                       ASSERT R9 K0 ; [+4]
       12 LOADK                            R10 K0 ["Luau"]
       13 GETIMPORT                        R8 K2 [assert]
       15 CALL                             R8 2 0
       16 GETIMPORT                        R8 K5 [Rect.new]
       18 GETTABLEKS                       R9 R7 K6 ["position"]
       20 GETTABLEKS                       R11 R7 K6 ["position"]
       22 GETIMPORT                        R12 K8 [Vector2.new]
       24 GETTABLEKS                       R13 R7 K9 ["size"]
       26 GETTABLEKS                       R13 R13 K10 ["X"]
       28 GETTABLEKS                       R15 R7 K9 ["size"]
       30 GETTABLEKS                       R15 R15 K11 ["Y"]
       32 MINUS                            R14 R15
       33 CALL                             R12 2 1
       34 ADD                              R10 R11 R12
       35 CALL                             R8 2 1
       36 LOADB                            R9 0
       37 GETTABLEKS                       R10 R8 K12 ["Min"]
       39 GETTABLEKS                       R10 R10 K10 ["X"]
       41 GETTABLEKS                       R11 R1 K13 ["Max"]
       43 GETTABLEKS                       R11 R11 K10 ["X"]
       45 JUMPIFNOTLT                      R10 R11 ; [+35]
       47 LOADB                            R9 0
       48 GETTABLEKS                       R10 R8 K13 ["Max"]
       50 GETTABLEKS                       R10 R10 K10 ["X"]
       52 GETTABLEKS                       R11 R1 K12 ["Min"]
       54 GETTABLEKS                       R11 R11 K10 ["X"]
       56 JUMPIFNOTLT                      R11 R10 ; [+24]
       58 LOADB                            R9 0
       59 GETTABLEKS                       R10 R8 K12 ["Min"]
       61 GETTABLEKS                       R10 R10 K11 ["Y"]
       63 GETTABLEKS                       R11 R1 K13 ["Max"]
       65 GETTABLEKS                       R11 R11 K11 ["Y"]
       67 JUMPIFNOTLT                      R10 R11 ; [+13]
       69 GETTABLEKS                       R10 R8 K13 ["Max"]
       71 GETTABLEKS                       R10 R10 K11 ["Y"]
       73 GETTABLEKS                       R11 R1 K12 ["Min"]
       75 GETTABLEKS                       R11 R11 K11 ["Y"]
       77 JUMPIFLT                         R11 R10 ; [+2]
       79 LOADB                            R9 0 +1
       80 LOADB                            R9 1
       81 JUMPIFNOT                        R9 ; [+2]
       82 LOADB                            R10 1
       83 SETTABLE                         R10 R2 R6
       84 FORGLOOP                         R3 2 ; [-79]
       86 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R4 K3 [Enum.ModifierKey.Shift]
        2 NAMECALL                         R2 R1 K4 ["IsModifierKeyDown"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R2 R3 K5 ["current"]
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["nodeRenderInfoDispatcher"]
        8 GETTABLEKS                       R3 R3 K1 ["getMap"]
       10 CALL                             R3 0 1
       11 GETIMPORT                        R4 K4 [Rect.new]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R0
       15 CALL                             R4 2 -1
       16 CALL                             R2 -1 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K5 ["selectNodes"]
       20 MOVE                             R4 R2
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K6 ["current"]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R3 4
       26 JUMPIFNOT                        R3 ; [+10]
       27 MOVE                             R3 R2
       28 LOADNIL                          R4
       29 LOADNIL                          R5
       30 FORGPREP                         R3
       31 GETUPVAL                         R8 5
       32 GETUPVAL                         R9 2
       33 MOVE                             R10 R6
       34 CALL                             R8 2 0
       35 FORGLOOP                         R3 1 ; [-5]
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K2 [Rect.new]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K3 ["nodeRenderInfoDispatcher"]
       15 GETTABLEKS                       R3 R3 K4 ["getMap"]
       17 CALL                             R3 0 1
       18 MOVE                             R4 R1
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K5 ["selectNodes"]
       23 MOVE                             R4 R2
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K6 ["current"]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R3 5
       29 MOVE                             R4 R0
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["useContext"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K2 ["Context"]
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K3 ["useRef"]
       20 LOADB                            R7 0
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          VAL R6
       27 NEWTABLE                         R9 0 1
       29 MOVE                             R10 R6
       30 SETLIST                          R9 R10 1 [1]
       32 CALL                             R7 2 1
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K5 ["useEventCallback"]
       36 NEWCLOSURE                       R9 P1
       37 CAPTURE                          VAL R7
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R6
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CALL                             R8 1 1
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       47 NEWCLOSURE                       R10 P2
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 NEWTABLE                         R11 0 2
       52 MOVE                             R12 R2
       53 MOVE                             R13 R4
       54 SETLIST                          R11 R12 2 [1]
       56 CALL                             R9 2 1
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       60 NEWCLOSURE                       R11 P3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R9
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R4
       67 NEWTABLE                         R12 0 5
       69 MOVE                             R13 R1
       70 MOVE                             R14 R6
       71 MOVE                             R15 R4
       72 GETTABLEKS                       R16 R5 K6 ["selectNodes"]
       74 GETTABLEKS                       R17 R5 K7 ["nodeRenderInfoDispatcher"]
       76 SETLIST                          R12 R13 5 [1]
       78 CALL                             R10 2 1
       79 GETUPVAL                         R11 0
       80 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       82 NEWCLOSURE                       R12 P4
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R4
       85 NEWTABLE                         R13 0 2
       87 MOVE                             R14 R2
       88 MOVE                             R15 R4
       89 SETLIST                          R13 R14 2 [1]
       91 CALL                             R11 2 1
       92 GETTABLEKS                       R13 R0 K9 ["ZIndex"]
       94 ORK                              R12 R13 K8 [1]
       95 GETUPVAL                         R13 0
       96 GETTABLEKS                       R13 R13 K10 ["createElement"]
       98 GETUPVAL                         R14 0
       99 GETTABLEKS                       R14 R14 K11 ["Fragment"]
      101 NEWTABLE                         R15 0 0
      103 DUPTABLE                         R16 K14 [{"Box", "BoxInputDetector"}]
      104 JUMPIFNOT                        R1 ; [+70]
      105 JUMPIFNOT                        R3 ; [+69]
      106 GETUPVAL                         R17 0
      107 GETTABLEKS                       R17 R17 K10 ["createElement"]
      109 GETUPVAL                         R18 6
      110 GETTABLEKS                       R18 R18 K15 ["Panel"]
      112 DUPTABLE                         R19 K22 [{["Rect"], ["BackgroundColor3"], ["BorderColor3"], ["BackgroundTransparency"] = 0.8, ["BorderThickness"] = 1, ["ZIndex"]}]
      113 GETIMPORT                        R20 K24 [Rect.new]
      115 GETTABLEKS                       R22 R1 K25 ["X"]
      117 GETTABLEKS                       R23 R3 K25 ["X"]
      119 FASTCALL2                        MATH_MIN R22 R23 ; [+3]
      121 GETIMPORT                        R21 K28 [math.min]
      123 CALL                             R21 2 1
      124 GETTABLEKS                       R23 R1 K29 ["Y"]
      126 GETTABLEKS                       R24 R3 K29 ["Y"]
      128 FASTCALL2                        MATH_MIN R23 R24 ; [+3]
      130 GETIMPORT                        R22 K28 [math.min]
      132 CALL                             R22 2 1
      133 GETTABLEKS                       R24 R1 K25 ["X"]
      135 GETTABLEKS                       R25 R3 K25 ["X"]
      137 FASTCALL2                        MATH_MAX R24 R25 ; [+3]
      139 GETIMPORT                        R23 K31 [math.max]
      141 CALL                             R23 2 1
      142 GETTABLEKS                       R25 R1 K29 ["Y"]
      144 GETTABLEKS                       R26 R3 K29 ["Y"]
      146 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
      148 GETIMPORT                        R24 K31 [math.max]
      150 CALL                             R24 2 1
      151 CALL                             R20 4 1
      152 SETTABLEKS                       R20 R19 K16 ["Rect"]
      154 GETIMPORT                        R20 K34 [Color3.fromRGB]
      156 LOADN                            R21 0
      157 LOADN                            R22 162
      158 LOADN                            R23 255
      159 CALL                             R20 3 1
      160 SETTABLEKS                       R20 R19 K17 ["BackgroundColor3"]
      162 GETIMPORT                        R20 K34 [Color3.fromRGB]
      164 LOADN                            R21 0
      165 LOADN                            R22 162
      166 LOADN                            R23 255
      167 CALL                             R20 3 1
      168 SETTABLEKS                       R20 R19 K18 ["BorderColor3"]
      170 ADDK                             R20 R12 K35 [90]
      171 SETTABLEKS                       R20 R19 K9 ["ZIndex"]
      173 CALL                             R17 2 1
      174 JUMP                             ; [+1]
      175 LOADNIL                          R17
      176 SETTABLEKS                       R17 R16 K12 ["Box"]
      178 GETUPVAL                         R17 0
      179 GETTABLEKS                       R17 R17 K10 ["createElement"]
      181 GETUPVAL                         R18 6
      182 GETTABLEKS                       R18 R18 K36 ["InputDetector"]
      184 DUPTABLE                         R19 K48 [{["TreatMouseAsAnchor"] = True, ["OnPress"], ["OnHoverStart"], ["OnHoverMoved"], ["OnHoverEnded"], ["OnScroll"], ["OnRelease"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnded"], ["ZIndex"]}]
      185 SETTABLEKS                       R8 R19 K39 ["OnPress"]
      187 SETTABLEKS                       R7 R19 K40 ["OnHoverStart"]
      189 SETTABLEKS                       R7 R19 K41 ["OnHoverMoved"]
      191 SETTABLEKS                       R7 R19 K42 ["OnHoverEnded"]
      193 SETTABLEKS                       R7 R19 K43 ["OnScroll"]
      195 SETTABLEKS                       R7 R19 K44 ["OnRelease"]
      197 SETTABLEKS                       R9 R19 K45 ["OnDragStart"]
      199 SETTABLEKS                       R10 R19 K46 ["OnDragMoved"]
      201 SETTABLEKS                       R11 R19 K47 ["OnDragEnded"]
      203 SETTABLEKS                       R12 R19 K9 ["ZIndex"]
      205 CALL                             R17 2 1
      206 SETTABLEKS                       R17 R16 K13 ["BoxInputDetector"]
      208 CALL                             R13 3 -1
      209 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUI_DynamicZIndex"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["GraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Graphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["NodeViewTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K10 ["Parent"]
       37 GETTABLEKS                       R6 R6 K13 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K10 ["Parent"]
       44 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K15 ["Util"]
       51 GETTABLEKS                       R8 R8 K16 ["bumpNodeZIndex"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K17 [PROTO_0]
       55 DUPCLOSURE                       R9 K18 [PROTO_6]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R3
       63 RETURN                           R9 1
