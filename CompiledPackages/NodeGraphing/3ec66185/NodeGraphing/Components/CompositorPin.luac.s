PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NOT                              R1 R2
        3 JUMPIF                           R1 ; [+6]
        4 GETTABLEKS                       R2 R0 K0 ["CanDrag"]
        6 JUMPIFNOTEQKB                    R2 FALSE ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETUPVAL                         R2 1
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+134]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K1 ["createElement"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K2 ["Point"]
       19 DUPTABLE                         R4 K9 [{["Position"], ["ZIndex"], ["Transparency"] = 1, ["Size"], ["positionerRef"]}]
       20 GETTABLEKS                       R5 R0 K3 ["Position"]
       22 SETTABLEKS                       R5 R4 K3 ["Position"]
       24 GETTABLEKS                       R5 R0 K4 ["ZIndex"]
       26 SETTABLEKS                       R5 R4 K4 ["ZIndex"]
       28 LOADN                            R6 9
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K10 ["SLOPPY_SELECTION_BOUNDARY"]
       32 ADD                              R5 R6 R7
       33 SETTABLEKS                       R5 R4 K7 ["Size"]
       35 GETTABLEKS                       R5 R0 K8 ["positionerRef"]
       37 SETTABLEKS                       R5 R4 K8 ["positionerRef"]
       39 DUPTABLE                         R5 K14 [{"VisiblePoint", "UIScale", "InputDetector"}]
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R6 R6 K1 ["createElement"]
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R7 R7 K2 ["Point"]
       46 DUPTABLE                         R8 K19 [{["Position"], ["ZIndex"], ["Color3"], ["OutlineColor3"], ["OutlineThickness"], ["Size"] = 9}]
       47 GETIMPORT                        R9 K22 [UDim2.fromScale]
       49 LOADK                            R10 K23 [0.5]
       50 LOADK                            R11 K23 [0.5]
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K3 ["Position"]
       54 GETTABLEKS                       R9 R0 K4 ["ZIndex"]
       56 SETTABLEKS                       R9 R8 K4 ["ZIndex"]
       58 GETTABLEKS                       R9 R0 K15 ["Color3"]
       60 SETTABLEKS                       R9 R8 K15 ["Color3"]
       62 GETTABLEKS                       R9 R0 K16 ["OutlineColor3"]
       64 SETTABLEKS                       R9 R8 K16 ["OutlineColor3"]
       66 GETTABLEKS                       R9 R0 K17 ["OutlineThickness"]
       68 SETTABLEKS                       R9 R8 K17 ["OutlineThickness"]
       70 DUPTABLE                         R9 K24 [{"InputDetector"}]
       71 MOVE                             R10 R1
       72 JUMPIFNOT                        R10 ; [+20]
       73 GETUPVAL                         R10 2
       74 GETTABLEKS                       R10 R10 K1 ["createElement"]
       76 GETUPVAL                         R11 3
       77 GETTABLEKS                       R11 R11 K13 ["InputDetector"]
       79 DUPTABLE                         R12 K28 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
       80 GETTABLEKS                       R13 R0 K25 ["OnDragStart"]
       82 SETTABLEKS                       R13 R12 K25 ["OnDragStart"]
       84 GETTABLEKS                       R13 R0 K26 ["OnDragMoved"]
       86 SETTABLEKS                       R13 R12 K26 ["OnDragMoved"]
       88 GETTABLEKS                       R13 R0 K27 ["OnDragEnded"]
       90 SETTABLEKS                       R13 R12 K27 ["OnDragEnded"]
       92 CALL                             R10 2 1
       93 SETTABLEKS                       R10 R9 K13 ["InputDetector"]
       95 GETTABLEKS                       R10 R0 K29 ["children"]
       97 CALL                             R6 4 1
       98 SETTABLEKS                       R6 R5 K11 ["VisiblePoint"]
      100 GETUPVAL                         R6 2
      101 GETTABLEKS                       R6 R6 K1 ["createElement"]
      103 LOADK                            R7 K12 ["UIScale"]
      104 DUPTABLE                         R8 K31 [{"Scale"}]
      105 GETTABLEKS                       R10 R0 K30 ["Scale"]
      107 ORK                              R9 R10 K6 [1]
      108 SETTABLEKS                       R9 R8 K30 ["Scale"]
      110 CALL                             R6 2 1
      111 SETTABLEKS                       R6 R5 K12 ["UIScale"]
      113 MOVE                             R6 R1
      114 JUMPIFNOT                        R6 ; [+28]
      115 GETUPVAL                         R6 2
      116 GETTABLEKS                       R6 R6 K1 ["createElement"]
      118 GETUPVAL                         R7 3
      119 GETTABLEKS                       R7 R7 K13 ["InputDetector"]
      121 DUPTABLE                         R8 K34 [{"OnDragStart", "OnDragMoved", "OnDragEnded", "OnHoverStart", "OnHoverEnded"}]
      122 GETTABLEKS                       R9 R0 K25 ["OnDragStart"]
      124 SETTABLEKS                       R9 R8 K25 ["OnDragStart"]
      126 GETTABLEKS                       R9 R0 K26 ["OnDragMoved"]
      128 SETTABLEKS                       R9 R8 K26 ["OnDragMoved"]
      130 GETTABLEKS                       R9 R0 K27 ["OnDragEnded"]
      132 SETTABLEKS                       R9 R8 K27 ["OnDragEnded"]
      134 GETTABLEKS                       R9 R0 K32 ["OnHoverStart"]
      136 SETTABLEKS                       R9 R8 K32 ["OnHoverStart"]
      138 GETTABLEKS                       R9 R0 K33 ["OnHoverEnded"]
      140 SETTABLEKS                       R9 R8 K33 ["OnHoverEnded"]
      142 CALL                             R6 2 1
      143 SETTABLEKS                       R6 R5 K13 ["InputDetector"]
      145 CALL                             R2 3 -1
      146 RETURN                           R2 -1
      147 GETUPVAL                         R2 2
      148 GETTABLEKS                       R2 R2 K1 ["createElement"]
      150 GETUPVAL                         R3 3
      151 GETTABLEKS                       R3 R3 K2 ["Point"]
      153 DUPTABLE                         R4 K35 [{["Position"], ["ZIndex"], ["Color3"], ["OutlineColor3"], ["OutlineThickness"], ["Size"] = 9, ["positionerRef"]}]
      154 GETTABLEKS                       R5 R0 K3 ["Position"]
      156 SETTABLEKS                       R5 R4 K3 ["Position"]
      158 GETTABLEKS                       R5 R0 K4 ["ZIndex"]
      160 SETTABLEKS                       R5 R4 K4 ["ZIndex"]
      162 GETTABLEKS                       R5 R0 K15 ["Color3"]
      164 SETTABLEKS                       R5 R4 K15 ["Color3"]
      166 GETTABLEKS                       R5 R0 K16 ["OutlineColor3"]
      168 SETTABLEKS                       R5 R4 K16 ["OutlineColor3"]
      170 GETTABLEKS                       R5 R0 K17 ["OutlineThickness"]
      172 SETTABLEKS                       R5 R4 K17 ["OutlineThickness"]
      174 GETTABLEKS                       R5 R0 K8 ["positionerRef"]
      176 SETTABLEKS                       R5 R4 K8 ["positionerRef"]
      178 DUPTABLE                         R5 K36 [{"UIScale", "InputDetector"}]
      179 GETUPVAL                         R6 2
      180 GETTABLEKS                       R6 R6 K1 ["createElement"]
      182 LOADK                            R7 K12 ["UIScale"]
      183 DUPTABLE                         R8 K31 [{"Scale"}]
      184 GETTABLEKS                       R10 R0 K30 ["Scale"]
      186 ORK                              R9 R10 K6 [1]
      187 SETTABLEKS                       R9 R8 K30 ["Scale"]
      189 CALL                             R6 2 1
      190 SETTABLEKS                       R6 R5 K12 ["UIScale"]
      192 MOVE                             R6 R1
      193 JUMPIFNOT                        R6 ; [+28]
      194 GETUPVAL                         R6 2
      195 GETTABLEKS                       R6 R6 K1 ["createElement"]
      197 GETUPVAL                         R7 3
      198 GETTABLEKS                       R7 R7 K13 ["InputDetector"]
      200 DUPTABLE                         R8 K34 [{"OnDragStart", "OnDragMoved", "OnDragEnded", "OnHoverStart", "OnHoverEnded"}]
      201 GETTABLEKS                       R9 R0 K25 ["OnDragStart"]
      203 SETTABLEKS                       R9 R8 K25 ["OnDragStart"]
      205 GETTABLEKS                       R9 R0 K26 ["OnDragMoved"]
      207 SETTABLEKS                       R9 R8 K26 ["OnDragMoved"]
      209 GETTABLEKS                       R9 R0 K27 ["OnDragEnded"]
      211 SETTABLEKS                       R9 R8 K27 ["OnDragEnded"]
      213 GETTABLEKS                       R9 R0 K32 ["OnHoverStart"]
      215 SETTABLEKS                       R9 R8 K32 ["OnHoverStart"]
      217 GETTABLEKS                       R9 R0 K33 ["OnHoverEnded"]
      219 SETTABLEKS                       R9 R8 K33 ["OnHoverEnded"]
      221 CALL                             R6 2 1
      222 SETTABLEKS                       R6 R5 K13 ["InputDetector"]
      224 GETTABLEKS                       R6 R0 K29 ["children"]
      226 CALL                             R2 4 -1
      227 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Graphing"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Flags"]
       30 GETTABLEKS                       R5 R5 K11 ["getFFlagAnimGraphUIAllowSloppyPinSelection"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K10 ["Flags"]
       37 GETTABLEKS                       R6 R6 K12 ["getFFlagAnimGraphUI_RunTimeDebug"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K13 [PROTO_0]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 RETURN                           R6 1
