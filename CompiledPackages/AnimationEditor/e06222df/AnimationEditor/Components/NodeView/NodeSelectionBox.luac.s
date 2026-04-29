PROTO_0:
        0 GETIMPORT                        R4 K3 [Enum.ModifierKey.Shift]
        2 NAMECALL                         R2 R1 K4 ["IsModifierKeyDown"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R2 R3 K5 ["current"]
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["clearSelection"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K1 ["selectNodesFromRectAsync"]
       10 GETIMPORT                        R1 K4 [Rect.new]
       12 GETUPVAL                         R2 3
       13 GETUPVAL                         R3 3
       14 CALL                             R1 2 1
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R2 R3 K5 ["current"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETIMPORT                        R2 K2 [task.spawn]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U4
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_5:
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
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K3 ["selectNodesFromRectAsync"]
       14 MOVE                             R3 R1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K4 ["current"]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 4
       20 MOVE                             R3 R0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K1 ["useContext"]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K2 ["Context"]
       16 CALL                             R5 1 1
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R6 R7 K1 ["useContext"]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K2 ["Context"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K3 ["useRef"]
       27 LOADB                            R8 0
       28 CALL                             R7 1 1
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K4 ["useCallback"]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          VAL R7
       34 NEWTABLE                         R10 0 1
       36 MOVE                             R11 R7
       37 SETLIST                          R10 R11 1 [1]
       39 CALL                             R8 2 1
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R9 R10 K4 ["useCallback"]
       43 NEWCLOSURE                       R10 P1
       44 CAPTURE                          VAL R8
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R7
       49 NEWTABLE                         R11 0 4
       51 GETTABLEKS                       R12 R5 K5 ["selectNodesFromRectAsync"]
       53 GETUPVAL                         R13 3
       54 CALL                             R13 0 1
       55 GETTABLEKS                       R14 R6 K6 ["clearSelection"]
       57 MOVE                             R15 R8
       58 SETLIST                          R11 R12 4 [1]
       60 CALL                             R9 2 1
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R10 R11 K4 ["useCallback"]
       64 NEWCLOSURE                       R11 P2
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R4
       67 NEWTABLE                         R12 0 2
       69 MOVE                             R13 R2
       70 MOVE                             R14 R4
       71 SETLIST                          R12 R13 2 [1]
       73 CALL                             R10 2 1
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R11 R12 K4 ["useCallback"]
       77 NEWCLOSURE                       R12 P3
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R4
       83 NEWTABLE                         R13 0 4
       85 MOVE                             R14 R1
       86 MOVE                             R15 R7
       87 MOVE                             R16 R4
       88 GETTABLEKS                       R17 R5 K5 ["selectNodesFromRectAsync"]
       90 SETLIST                          R13 R14 4 [1]
       92 CALL                             R11 2 1
       93 GETUPVAL                         R13 0
       94 GETTABLEKS                       R12 R13 K4 ["useCallback"]
       96 NEWCLOSURE                       R13 P4
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R4
       99 NEWTABLE                         R14 0 2
      101 MOVE                             R15 R2
      102 MOVE                             R16 R4
      103 SETLIST                          R14 R15 2 [1]
      105 CALL                             R12 2 1
      106 GETTABLEKS                       R14 R0 K8 ["ZIndex"]
      108 ORK                              R13 R14 K7 [1]
      109 GETUPVAL                         R15 0
      110 GETTABLEKS                       R14 R15 K9 ["createElement"]
      112 GETUPVAL                         R16 0
      113 GETTABLEKS                       R15 R16 K10 ["Fragment"]
      115 NEWTABLE                         R16 0 0
      117 DUPTABLE                         R17 K13 [{"Box", "BoxInputDetector"}]
      118 JUMPIFNOT                        R1 ; [+76]
      119 JUMPIFNOT                        R3 ; [+75]
      120 GETUPVAL                         R19 0
      121 GETTABLEKS                       R18 R19 K9 ["createElement"]
      123 GETUPVAL                         R20 4
      124 GETTABLEKS                       R19 R20 K14 ["Panel"]
      126 DUPTABLE                         R20 K20 [{"Rect", "BackgroundColor3", "BorderColor3", "BackgroundTransparency", "BorderThickness", "ZIndex"}]
      127 GETIMPORT                        R21 K22 [Rect.new]
      129 GETTABLEKS                       R23 R1 K23 ["X"]
      131 GETTABLEKS                       R24 R3 K23 ["X"]
      133 FASTCALL2                        MATH_MIN R23 R24 ; [+3]
      135 GETIMPORT                        R22 K26 [math.min]
      137 CALL                             R22 2 1
      138 GETTABLEKS                       R24 R1 K27 ["Y"]
      140 GETTABLEKS                       R25 R3 K27 ["Y"]
      142 FASTCALL2                        MATH_MIN R24 R25 ; [+3]
      144 GETIMPORT                        R23 K26 [math.min]
      146 CALL                             R23 2 1
      147 GETTABLEKS                       R25 R1 K23 ["X"]
      149 GETTABLEKS                       R26 R3 K23 ["X"]
      151 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
      153 GETIMPORT                        R24 K29 [math.max]
      155 CALL                             R24 2 1
      156 GETTABLEKS                       R26 R1 K27 ["Y"]
      158 GETTABLEKS                       R27 R3 K27 ["Y"]
      160 FASTCALL2                        MATH_MAX R26 R27 ; [+3]
      162 GETIMPORT                        R25 K29 [math.max]
      164 CALL                             R25 2 1
      165 CALL                             R21 4 1
      166 SETTABLEKS                       R21 R20 K15 ["Rect"]
      168 GETIMPORT                        R21 K32 [Color3.fromRGB]
      170 LOADN                            R22 0
      171 LOADN                            R23 162
      172 LOADN                            R24 255
      173 CALL                             R21 3 1
      174 SETTABLEKS                       R21 R20 K16 ["BackgroundColor3"]
      176 GETIMPORT                        R21 K32 [Color3.fromRGB]
      178 LOADN                            R22 0
      179 LOADN                            R23 162
      180 LOADN                            R24 255
      181 CALL                             R21 3 1
      182 SETTABLEKS                       R21 R20 K17 ["BorderColor3"]
      184 LOADK                            R21 K33 [0.8]
      185 SETTABLEKS                       R21 R20 K18 ["BackgroundTransparency"]
      187 LOADN                            R21 1
      188 SETTABLEKS                       R21 R20 K19 ["BorderThickness"]
      190 ADDK                             R21 R13 K34 [90]
      191 SETTABLEKS                       R21 R20 K8 ["ZIndex"]
      193 CALL                             R18 2 1
      194 JUMP                             ; [+1]
      195 LOADNIL                          R18
      196 SETTABLEKS                       R18 R17 K11 ["Box"]
      198 GETUPVAL                         R19 0
      199 GETTABLEKS                       R18 R19 K9 ["createElement"]
      201 GETUPVAL                         R20 4
      202 GETTABLEKS                       R19 R20 K35 ["InputDetector"]
      204 DUPTABLE                         R20 K46 [{"TreatMouseAsAnchor", "OnPress", "OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnScroll", "OnRelease", "OnDragStart", "OnDragMoved", "OnDragEnded", "ZIndex"}]
      205 LOADB                            R21 1
      206 SETTABLEKS                       R21 R20 K36 ["TreatMouseAsAnchor"]
      208 SETTABLEKS                       R9 R20 K37 ["OnPress"]
      210 SETTABLEKS                       R8 R20 K38 ["OnHoverStart"]
      212 SETTABLEKS                       R8 R20 K39 ["OnHoverMoved"]
      214 SETTABLEKS                       R8 R20 K40 ["OnHoverEnded"]
      216 SETTABLEKS                       R8 R20 K41 ["OnScroll"]
      218 SETTABLEKS                       R8 R20 K42 ["OnRelease"]
      220 SETTABLEKS                       R10 R20 K43 ["OnDragStart"]
      222 SETTABLEKS                       R11 R20 K44 ["OnDragMoved"]
      224 SETTABLEKS                       R12 R20 K45 ["OnDragEnded"]
      226 SETTABLEKS                       R13 R20 K8 ["ZIndex"]
      228 CALL                             R18 2 1
      229 SETTABLEKS                       R18 R17 K12 ["BoxInputDetector"]
      231 CALL                             R14 3 -1
      232 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Graphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K9 ["InputSelectionContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["NativeGraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R7 K13 ["getFFlagAnimGraphUIInputSelection"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K14 [PROTO_7]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R1
       48 RETURN                           R6 1
