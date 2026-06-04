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
        5 GETTABLEKS                       R2 R2 K0 ["selectNodes"]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["nodeRenderInfoDispatcher"]
       11 GETTABLEKS                       R4 R4 K2 ["getMap"]
       13 CALL                             R4 0 1
       14 GETIMPORT                        R5 K5 [Rect.new]
       16 MOVE                             R6 R0
       17 MOVE                             R7 R0
       18 CALL                             R5 2 -1
       19 CALL                             R3 -1 1
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K6 ["current"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

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
       38 CAPTURE                          VAL R5
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R6
       41 CALL                             R8 1 1
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       45 NEWCLOSURE                       R10 P2
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 NEWTABLE                         R11 0 2
       50 MOVE                             R12 R2
       51 MOVE                             R13 R4
       52 SETLIST                          R11 R12 2 [1]
       54 CALL                             R9 2 1
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       58 NEWCLOSURE                       R11 P3
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R9
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R4
       65 NEWTABLE                         R12 0 5
       67 MOVE                             R13 R1
       68 MOVE                             R14 R6
       69 MOVE                             R15 R4
       70 GETTABLEKS                       R16 R5 K6 ["selectNodes"]
       72 GETTABLEKS                       R17 R5 K7 ["nodeRenderInfoDispatcher"]
       74 SETLIST                          R12 R13 5 [1]
       76 CALL                             R10 2 1
       77 GETUPVAL                         R11 0
       78 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       80 NEWCLOSURE                       R12 P4
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R4
       83 NEWTABLE                         R13 0 2
       85 MOVE                             R14 R2
       86 MOVE                             R15 R4
       87 SETLIST                          R13 R14 2 [1]
       89 CALL                             R11 2 1
       90 GETTABLEKS                       R13 R0 K9 ["ZIndex"]
       92 ORK                              R12 R13 K8 [1]
       93 GETUPVAL                         R13 0
       94 GETTABLEKS                       R13 R13 K10 ["createElement"]
       96 GETUPVAL                         R14 0
       97 GETTABLEKS                       R14 R14 K11 ["Fragment"]
       99 NEWTABLE                         R15 0 0
      101 DUPTABLE                         R16 K14 [{"Box", "BoxInputDetector"}]
      102 JUMPIFNOT                        R1 ; [+76]
      103 JUMPIFNOT                        R3 ; [+75]
      104 GETUPVAL                         R17 0
      105 GETTABLEKS                       R17 R17 K10 ["createElement"]
      107 GETUPVAL                         R18 4
      108 GETTABLEKS                       R18 R18 K15 ["Panel"]
      110 DUPTABLE                         R19 K21 [{"Rect", "BackgroundColor3", "BorderColor3", "BackgroundTransparency", "BorderThickness", "ZIndex"}]
      111 GETIMPORT                        R20 K23 [Rect.new]
      113 GETTABLEKS                       R22 R1 K24 ["X"]
      115 GETTABLEKS                       R23 R3 K24 ["X"]
      117 FASTCALL2                        MATH_MIN R22 R23 ; [+3]
      119 GETIMPORT                        R21 K27 [math.min]
      121 CALL                             R21 2 1
      122 GETTABLEKS                       R23 R1 K28 ["Y"]
      124 GETTABLEKS                       R24 R3 K28 ["Y"]
      126 FASTCALL2                        MATH_MIN R23 R24 ; [+3]
      128 GETIMPORT                        R22 K27 [math.min]
      130 CALL                             R22 2 1
      131 GETTABLEKS                       R24 R1 K24 ["X"]
      133 GETTABLEKS                       R25 R3 K24 ["X"]
      135 FASTCALL2                        MATH_MAX R24 R25 ; [+3]
      137 GETIMPORT                        R23 K30 [math.max]
      139 CALL                             R23 2 1
      140 GETTABLEKS                       R25 R1 K28 ["Y"]
      142 GETTABLEKS                       R26 R3 K28 ["Y"]
      144 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
      146 GETIMPORT                        R24 K30 [math.max]
      148 CALL                             R24 2 1
      149 CALL                             R20 4 1
      150 SETTABLEKS                       R20 R19 K16 ["Rect"]
      152 GETIMPORT                        R20 K33 [Color3.fromRGB]
      154 LOADN                            R21 0
      155 LOADN                            R22 162
      156 LOADN                            R23 255
      157 CALL                             R20 3 1
      158 SETTABLEKS                       R20 R19 K17 ["BackgroundColor3"]
      160 GETIMPORT                        R20 K33 [Color3.fromRGB]
      162 LOADN                            R21 0
      163 LOADN                            R22 162
      164 LOADN                            R23 255
      165 CALL                             R20 3 1
      166 SETTABLEKS                       R20 R19 K18 ["BorderColor3"]
      168 LOADK                            R20 K34 [0.8]
      169 SETTABLEKS                       R20 R19 K19 ["BackgroundTransparency"]
      171 LOADN                            R20 1
      172 SETTABLEKS                       R20 R19 K20 ["BorderThickness"]
      174 ADDK                             R20 R12 K35 [90]
      175 SETTABLEKS                       R20 R19 K9 ["ZIndex"]
      177 CALL                             R17 2 1
      178 JUMP                             ; [+1]
      179 LOADNIL                          R17
      180 SETTABLEKS                       R17 R16 K12 ["Box"]
      182 GETUPVAL                         R17 0
      183 GETTABLEKS                       R17 R17 K10 ["createElement"]
      185 GETUPVAL                         R18 4
      186 GETTABLEKS                       R18 R18 K36 ["InputDetector"]
      188 DUPTABLE                         R19 K47 [{"TreatMouseAsAnchor", "OnPress", "OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnScroll", "OnRelease", "OnDragStart", "OnDragMoved", "OnDragEnded", "ZIndex"}]
      189 LOADB                            R20 1
      190 SETTABLEKS                       R20 R19 K37 ["TreatMouseAsAnchor"]
      192 SETTABLEKS                       R8 R19 K38 ["OnPress"]
      194 SETTABLEKS                       R7 R19 K39 ["OnHoverStart"]
      196 SETTABLEKS                       R7 R19 K40 ["OnHoverMoved"]
      198 SETTABLEKS                       R7 R19 K41 ["OnHoverEnded"]
      200 SETTABLEKS                       R7 R19 K42 ["OnScroll"]
      202 SETTABLEKS                       R7 R19 K43 ["OnRelease"]
      204 SETTABLEKS                       R9 R19 K44 ["OnDragStart"]
      206 SETTABLEKS                       R10 R19 K45 ["OnDragMoved"]
      208 SETTABLEKS                       R11 R19 K46 ["OnDragEnded"]
      210 SETTABLEKS                       R12 R19 K9 ["ZIndex"]
      212 CALL                             R17 2 1
      213 SETTABLEKS                       R17 R16 K13 ["BoxInputDetector"]
      215 CALL                             R13 3 -1
      216 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Graphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["NodeViewTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K13 [PROTO_0]
       41 DUPCLOSURE                       R7 K14 [PROTO_6]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 RETURN                           R7 1
