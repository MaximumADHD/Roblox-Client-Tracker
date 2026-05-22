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
        5 GETTABLEKS                       R2 R2 K0 ["clearSelection"]
        7 CALL                             R2 0 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["selectNodes"]
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K2 ["nodeRenderInfoDispatcher"]
       15 GETTABLEKS                       R4 R4 K3 ["getMap"]
       17 CALL                             R4 0 1
       18 GETIMPORT                        R5 K6 [Rect.new]
       20 MOVE                             R6 R0
       21 MOVE                             R7 R0
       22 CALL                             R5 2 -1
       23 CALL                             R3 -1 1
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R4 R4 K7 ["current"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

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
       18 GETTABLEKS                       R6 R6 K1 ["useContext"]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K2 ["Context"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K3 ["useRef"]
       27 LOADB                            R8 0
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          VAL R7
       34 NEWTABLE                         R10 0 1
       36 MOVE                             R11 R7
       37 SETLIST                          R10 R11 1 [1]
       39 CALL                             R8 2 1
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R9 R9 K5 ["useEventCallback"]
       43 NEWCLOSURE                       R10 P1
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R5
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R7
       49 CALL                             R9 1 1
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       53 NEWCLOSURE                       R11 P2
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 NEWTABLE                         R12 0 2
       58 MOVE                             R13 R2
       59 MOVE                             R14 R4
       60 SETLIST                          R12 R13 2 [1]
       62 CALL                             R10 2 1
       63 GETUPVAL                         R11 0
       64 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       66 NEWCLOSURE                       R12 P3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R10
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R4
       73 NEWTABLE                         R13 0 5
       75 MOVE                             R14 R1
       76 MOVE                             R15 R7
       77 MOVE                             R16 R4
       78 GETTABLEKS                       R17 R5 K6 ["selectNodes"]
       80 GETTABLEKS                       R18 R5 K7 ["nodeRenderInfoDispatcher"]
       82 SETLIST                          R13 R14 5 [1]
       84 CALL                             R11 2 1
       85 GETUPVAL                         R12 0
       86 GETTABLEKS                       R12 R12 K4 ["useCallback"]
       88 NEWCLOSURE                       R13 P4
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R4
       91 NEWTABLE                         R14 0 2
       93 MOVE                             R15 R2
       94 MOVE                             R16 R4
       95 SETLIST                          R14 R15 2 [1]
       97 CALL                             R12 2 1
       98 GETTABLEKS                       R14 R0 K9 ["ZIndex"]
      100 ORK                              R13 R14 K8 [1]
      101 GETUPVAL                         R14 0
      102 GETTABLEKS                       R14 R14 K10 ["createElement"]
      104 GETUPVAL                         R15 0
      105 GETTABLEKS                       R15 R15 K11 ["Fragment"]
      107 NEWTABLE                         R16 0 0
      109 DUPTABLE                         R17 K14 [{"Box", "BoxInputDetector"}]
      110 JUMPIFNOT                        R1 ; [+76]
      111 JUMPIFNOT                        R3 ; [+75]
      112 GETUPVAL                         R18 0
      113 GETTABLEKS                       R18 R18 K10 ["createElement"]
      115 GETUPVAL                         R19 5
      116 GETTABLEKS                       R19 R19 K15 ["Panel"]
      118 DUPTABLE                         R20 K21 [{"Rect", "BackgroundColor3", "BorderColor3", "BackgroundTransparency", "BorderThickness", "ZIndex"}]
      119 GETIMPORT                        R21 K23 [Rect.new]
      121 GETTABLEKS                       R23 R1 K24 ["X"]
      123 GETTABLEKS                       R24 R3 K24 ["X"]
      125 FASTCALL2                        MATH_MIN R23 R24 ; [+3]
      127 GETIMPORT                        R22 K27 [math.min]
      129 CALL                             R22 2 1
      130 GETTABLEKS                       R24 R1 K28 ["Y"]
      132 GETTABLEKS                       R25 R3 K28 ["Y"]
      134 FASTCALL2                        MATH_MIN R24 R25 ; [+3]
      136 GETIMPORT                        R23 K27 [math.min]
      138 CALL                             R23 2 1
      139 GETTABLEKS                       R25 R1 K24 ["X"]
      141 GETTABLEKS                       R26 R3 K24 ["X"]
      143 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
      145 GETIMPORT                        R24 K30 [math.max]
      147 CALL                             R24 2 1
      148 GETTABLEKS                       R26 R1 K28 ["Y"]
      150 GETTABLEKS                       R27 R3 K28 ["Y"]
      152 FASTCALL2                        MATH_MAX R26 R27 ; [+3]
      154 GETIMPORT                        R25 K30 [math.max]
      156 CALL                             R25 2 1
      157 CALL                             R21 4 1
      158 SETTABLEKS                       R21 R20 K16 ["Rect"]
      160 GETIMPORT                        R21 K33 [Color3.fromRGB]
      162 LOADN                            R22 0
      163 LOADN                            R23 162
      164 LOADN                            R24 255
      165 CALL                             R21 3 1
      166 SETTABLEKS                       R21 R20 K17 ["BackgroundColor3"]
      168 GETIMPORT                        R21 K33 [Color3.fromRGB]
      170 LOADN                            R22 0
      171 LOADN                            R23 162
      172 LOADN                            R24 255
      173 CALL                             R21 3 1
      174 SETTABLEKS                       R21 R20 K18 ["BorderColor3"]
      176 LOADK                            R21 K34 [0.8]
      177 SETTABLEKS                       R21 R20 K19 ["BackgroundTransparency"]
      179 LOADN                            R21 1
      180 SETTABLEKS                       R21 R20 K20 ["BorderThickness"]
      182 ADDK                             R21 R13 K35 [90]
      183 SETTABLEKS                       R21 R20 K9 ["ZIndex"]
      185 CALL                             R18 2 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R18
      188 SETTABLEKS                       R18 R17 K12 ["Box"]
      190 GETUPVAL                         R18 0
      191 GETTABLEKS                       R18 R18 K10 ["createElement"]
      193 GETUPVAL                         R19 5
      194 GETTABLEKS                       R19 R19 K36 ["InputDetector"]
      196 DUPTABLE                         R20 K47 [{"TreatMouseAsAnchor", "OnPress", "OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnScroll", "OnRelease", "OnDragStart", "OnDragMoved", "OnDragEnded", "ZIndex"}]
      197 LOADB                            R21 1
      198 SETTABLEKS                       R21 R20 K37 ["TreatMouseAsAnchor"]
      200 SETTABLEKS                       R9 R20 K38 ["OnPress"]
      202 SETTABLEKS                       R8 R20 K39 ["OnHoverStart"]
      204 SETTABLEKS                       R8 R20 K40 ["OnHoverMoved"]
      206 SETTABLEKS                       R8 R20 K41 ["OnHoverEnded"]
      208 SETTABLEKS                       R8 R20 K42 ["OnScroll"]
      210 SETTABLEKS                       R8 R20 K43 ["OnRelease"]
      212 SETTABLEKS                       R10 R20 K44 ["OnDragStart"]
      214 SETTABLEKS                       R11 R20 K45 ["OnDragMoved"]
      216 SETTABLEKS                       R12 R20 K46 ["OnDragEnded"]
      218 SETTABLEKS                       R13 R20 K9 ["ZIndex"]
      220 CALL                             R18 2 1
      221 SETTABLEKS                       R18 R17 K13 ["BoxInputDetector"]
      223 CALL                             R14 3 -1
      224 RETURN                           R14 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["InputSelectionContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["NodeViewTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K8 ["Parent"]
       44 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K14 [PROTO_0]
       48 DUPCLOSURE                       R8 K15 [PROTO_6]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R2
       55 RETURN                           R8 1
