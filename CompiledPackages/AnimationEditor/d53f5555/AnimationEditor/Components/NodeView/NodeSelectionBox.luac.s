PROTO_0:
        0 GETIMPORT                        R4 K3 [Enum.ModifierKey.Shift]
        2 NAMECALL                         R2 R1 K4 ["IsModifierKeyDown"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 SETTABLEKS                       R2 R3 K5 ["current"]
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectNodesFromRectAsync"]
        3 GETIMPORT                        R1 K3 [Rect.new]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K4 ["current"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETIMPORT                        R2 K2 [task.spawn]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

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
       18 GETTABLEKS                       R6 R7 K3 ["useRef"]
       20 LOADB                            R7 0
       21 CALL                             R6 1 1
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          VAL R6
       27 NEWTABLE                         R9 0 1
       29 MOVE                             R10 R6
       30 SETLIST                          R9 R10 1 [1]
       32 CALL                             R7 2 1
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R8 R9 K4 ["useCallback"]
       36 NEWCLOSURE                       R9 P1
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R6
       40 NEWTABLE                         R10 0 2
       42 GETTABLEKS                       R11 R5 K5 ["selectNodesFromRectAsync"]
       44 MOVE                             R12 R7
       45 SETLIST                          R10 R11 2 [1]
       47 CALL                             R8 2 1
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R9 R10 K4 ["useCallback"]
       51 NEWCLOSURE                       R10 P2
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 NEWTABLE                         R11 0 2
       56 MOVE                             R12 R2
       57 MOVE                             R13 R4
       58 SETLIST                          R11 R12 2 [1]
       60 CALL                             R9 2 1
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R10 R11 K4 ["useCallback"]
       64 NEWCLOSURE                       R11 P3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R4
       70 NEWTABLE                         R12 0 4
       72 MOVE                             R13 R1
       73 MOVE                             R14 R6
       74 MOVE                             R15 R4
       75 GETTABLEKS                       R16 R5 K5 ["selectNodesFromRectAsync"]
       77 SETLIST                          R12 R13 4 [1]
       79 CALL                             R10 2 1
       80 GETUPVAL                         R12 0
       81 GETTABLEKS                       R11 R12 K4 ["useCallback"]
       83 NEWCLOSURE                       R12 P4
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R4
       86 NEWTABLE                         R13 0 2
       88 MOVE                             R14 R2
       89 MOVE                             R15 R4
       90 SETLIST                          R13 R14 2 [1]
       92 CALL                             R11 2 1
       93 GETTABLEKS                       R13 R0 K7 ["ZIndex"]
       95 ORK                              R12 R13 K6 [1]
       96 GETUPVAL                         R14 0
       97 GETTABLEKS                       R13 R14 K8 ["createElement"]
       99 GETUPVAL                         R15 0
      100 GETTABLEKS                       R14 R15 K9 ["Fragment"]
      102 NEWTABLE                         R15 0 0
      104 DUPTABLE                         R16 K12 [{"Box", "BoxInputDetector"}]
      105 JUMPIFNOT                        R1 ; [+76]
      106 JUMPIFNOT                        R3 ; [+75]
      107 GETUPVAL                         R18 0
      108 GETTABLEKS                       R17 R18 K8 ["createElement"]
      110 GETUPVAL                         R19 2
      111 GETTABLEKS                       R18 R19 K13 ["Panel"]
      113 DUPTABLE                         R19 K19 [{"Rect", "BackgroundColor3", "BorderColor3", "BackgroundTransparency", "BorderThickness", "ZIndex"}]
      114 GETIMPORT                        R20 K21 [Rect.new]
      116 GETTABLEKS                       R22 R1 K22 ["X"]
      118 GETTABLEKS                       R23 R3 K22 ["X"]
      120 FASTCALL2                        MATH_MIN R22 R23 ; [+3]
      122 GETIMPORT                        R21 K25 [math.min]
      124 CALL                             R21 2 1
      125 GETTABLEKS                       R23 R1 K26 ["Y"]
      127 GETTABLEKS                       R24 R3 K26 ["Y"]
      129 FASTCALL2                        MATH_MIN R23 R24 ; [+3]
      131 GETIMPORT                        R22 K25 [math.min]
      133 CALL                             R22 2 1
      134 GETTABLEKS                       R24 R1 K22 ["X"]
      136 GETTABLEKS                       R25 R3 K22 ["X"]
      138 FASTCALL2                        MATH_MAX R24 R25 ; [+3]
      140 GETIMPORT                        R23 K28 [math.max]
      142 CALL                             R23 2 1
      143 GETTABLEKS                       R25 R1 K26 ["Y"]
      145 GETTABLEKS                       R26 R3 K26 ["Y"]
      147 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
      149 GETIMPORT                        R24 K28 [math.max]
      151 CALL                             R24 2 1
      152 CALL                             R20 4 1
      153 SETTABLEKS                       R20 R19 K14 ["Rect"]
      155 GETIMPORT                        R20 K31 [Color3.fromRGB]
      157 LOADN                            R21 0
      158 LOADN                            R22 162
      159 LOADN                            R23 255
      160 CALL                             R20 3 1
      161 SETTABLEKS                       R20 R19 K15 ["BackgroundColor3"]
      163 GETIMPORT                        R20 K31 [Color3.fromRGB]
      165 LOADN                            R21 0
      166 LOADN                            R22 162
      167 LOADN                            R23 255
      168 CALL                             R20 3 1
      169 SETTABLEKS                       R20 R19 K16 ["BorderColor3"]
      171 LOADK                            R20 K32 [0.8]
      172 SETTABLEKS                       R20 R19 K17 ["BackgroundTransparency"]
      174 LOADN                            R20 1
      175 SETTABLEKS                       R20 R19 K18 ["BorderThickness"]
      177 ADDK                             R20 R12 K33 [90]
      178 SETTABLEKS                       R20 R19 K7 ["ZIndex"]
      180 CALL                             R17 2 1
      181 JUMP                             ; [+1]
      182 LOADNIL                          R17
      183 SETTABLEKS                       R17 R16 K10 ["Box"]
      185 GETUPVAL                         R18 0
      186 GETTABLEKS                       R17 R18 K8 ["createElement"]
      188 GETUPVAL                         R19 2
      189 GETTABLEKS                       R18 R19 K34 ["InputDetector"]
      191 DUPTABLE                         R19 K45 [{"TreatMouseAsAnchor", "OnPress", "OnHoverStart", "OnHoverMoved", "OnHoverEnded", "OnScroll", "OnRelease", "OnDragStart", "OnDragMoved", "OnDragEnded", "ZIndex"}]
      192 LOADB                            R20 1
      193 SETTABLEKS                       R20 R19 K35 ["TreatMouseAsAnchor"]
      195 SETTABLEKS                       R8 R19 K36 ["OnPress"]
      197 SETTABLEKS                       R7 R19 K37 ["OnHoverStart"]
      199 SETTABLEKS                       R7 R19 K38 ["OnHoverMoved"]
      201 SETTABLEKS                       R7 R19 K39 ["OnHoverEnded"]
      203 SETTABLEKS                       R7 R19 K40 ["OnScroll"]
      205 SETTABLEKS                       R7 R19 K41 ["OnRelease"]
      207 SETTABLEKS                       R9 R19 K42 ["OnDragStart"]
      209 SETTABLEKS                       R10 R19 K43 ["OnDragMoved"]
      211 SETTABLEKS                       R11 R19 K44 ["OnDragEnded"]
      213 SETTABLEKS                       R12 R19 K7 ["ZIndex"]
      215 CALL                             R17 2 1
      216 SETTABLEKS                       R17 R16 K11 ["BoxInputDetector"]
      218 CALL                             R13 3 -1
      219 RETURN                           R13 -1

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
       18 GETTABLEKS                       R3 R4 K9 ["NativeGraphContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_7]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 RETURN                           R4 1
