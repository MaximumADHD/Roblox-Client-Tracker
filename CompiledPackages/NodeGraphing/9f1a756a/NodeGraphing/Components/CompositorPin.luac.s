PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["CanDrag"]
        2 JUMPIFNOTEQKB                    R2 FALSE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+134]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["createElement"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["Point"]
       15 DUPTABLE                         R4 K9 [{["Position"], ["ZIndex"], ["Transparency"] = 1, ["Size"], ["positionerRef"]}]
       16 GETTABLEKS                       R5 R0 K3 ["Position"]
       18 SETTABLEKS                       R5 R4 K3 ["Position"]
       20 GETTABLEKS                       R5 R0 K4 ["ZIndex"]
       22 SETTABLEKS                       R5 R4 K4 ["ZIndex"]
       24 LOADN                            R6 9
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K10 ["SLOPPY_SELECTION_BOUNDARY"]
       28 ADD                              R5 R6 R7
       29 SETTABLEKS                       R5 R4 K7 ["Size"]
       31 GETTABLEKS                       R5 R0 K8 ["positionerRef"]
       33 SETTABLEKS                       R5 R4 K8 ["positionerRef"]
       35 DUPTABLE                         R5 K14 [{"VisiblePoint", "UIScale", "InputDetector"}]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K1 ["createElement"]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K2 ["Point"]
       42 DUPTABLE                         R8 K19 [{["Position"], ["ZIndex"], ["Color3"], ["OutlineColor3"], ["OutlineThickness"], ["Size"] = 9}]
       43 GETIMPORT                        R9 K22 [UDim2.fromScale]
       45 LOADK                            R10 K23 [0.5]
       46 LOADK                            R11 K23 [0.5]
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K3 ["Position"]
       50 GETTABLEKS                       R9 R0 K4 ["ZIndex"]
       52 SETTABLEKS                       R9 R8 K4 ["ZIndex"]
       54 GETTABLEKS                       R9 R0 K15 ["Color3"]
       56 SETTABLEKS                       R9 R8 K15 ["Color3"]
       58 GETTABLEKS                       R9 R0 K16 ["OutlineColor3"]
       60 SETTABLEKS                       R9 R8 K16 ["OutlineColor3"]
       62 GETTABLEKS                       R9 R0 K17 ["OutlineThickness"]
       64 SETTABLEKS                       R9 R8 K17 ["OutlineThickness"]
       66 DUPTABLE                         R9 K24 [{"InputDetector"}]
       67 MOVE                             R10 R1
       68 JUMPIFNOT                        R10 ; [+20]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K1 ["createElement"]
       72 GETUPVAL                         R11 2
       73 GETTABLEKS                       R11 R11 K13 ["InputDetector"]
       75 DUPTABLE                         R12 K28 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
       76 GETTABLEKS                       R13 R0 K25 ["OnDragStart"]
       78 SETTABLEKS                       R13 R12 K25 ["OnDragStart"]
       80 GETTABLEKS                       R13 R0 K26 ["OnDragMoved"]
       82 SETTABLEKS                       R13 R12 K26 ["OnDragMoved"]
       84 GETTABLEKS                       R13 R0 K27 ["OnDragEnded"]
       86 SETTABLEKS                       R13 R12 K27 ["OnDragEnded"]
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K13 ["InputDetector"]
       91 GETTABLEKS                       R10 R0 K29 ["children"]
       93 CALL                             R6 4 1
       94 SETTABLEKS                       R6 R5 K11 ["VisiblePoint"]
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R6 R6 K1 ["createElement"]
       99 LOADK                            R7 K12 ["UIScale"]
      100 DUPTABLE                         R8 K31 [{"Scale"}]
      101 GETTABLEKS                       R10 R0 K30 ["Scale"]
      103 ORK                              R9 R10 K6 [1]
      104 SETTABLEKS                       R9 R8 K30 ["Scale"]
      106 CALL                             R6 2 1
      107 SETTABLEKS                       R6 R5 K12 ["UIScale"]
      109 MOVE                             R6 R1
      110 JUMPIFNOT                        R6 ; [+28]
      111 GETUPVAL                         R6 1
      112 GETTABLEKS                       R6 R6 K1 ["createElement"]
      114 GETUPVAL                         R7 2
      115 GETTABLEKS                       R7 R7 K13 ["InputDetector"]
      117 DUPTABLE                         R8 K34 [{"OnDragStart", "OnDragMoved", "OnDragEnded", "OnHoverStart", "OnHoverEnded"}]
      118 GETTABLEKS                       R9 R0 K25 ["OnDragStart"]
      120 SETTABLEKS                       R9 R8 K25 ["OnDragStart"]
      122 GETTABLEKS                       R9 R0 K26 ["OnDragMoved"]
      124 SETTABLEKS                       R9 R8 K26 ["OnDragMoved"]
      126 GETTABLEKS                       R9 R0 K27 ["OnDragEnded"]
      128 SETTABLEKS                       R9 R8 K27 ["OnDragEnded"]
      130 GETTABLEKS                       R9 R0 K32 ["OnHoverStart"]
      132 SETTABLEKS                       R9 R8 K32 ["OnHoverStart"]
      134 GETTABLEKS                       R9 R0 K33 ["OnHoverEnded"]
      136 SETTABLEKS                       R9 R8 K33 ["OnHoverEnded"]
      138 CALL                             R6 2 1
      139 SETTABLEKS                       R6 R5 K13 ["InputDetector"]
      141 CALL                             R2 3 -1
      142 RETURN                           R2 -1
      143 GETUPVAL                         R2 1
      144 GETTABLEKS                       R2 R2 K1 ["createElement"]
      146 GETUPVAL                         R3 2
      147 GETTABLEKS                       R3 R3 K2 ["Point"]
      149 DUPTABLE                         R4 K35 [{["Position"], ["ZIndex"], ["Color3"], ["OutlineColor3"], ["OutlineThickness"], ["Size"] = 9, ["positionerRef"]}]
      150 GETTABLEKS                       R5 R0 K3 ["Position"]
      152 SETTABLEKS                       R5 R4 K3 ["Position"]
      154 GETTABLEKS                       R5 R0 K4 ["ZIndex"]
      156 SETTABLEKS                       R5 R4 K4 ["ZIndex"]
      158 GETTABLEKS                       R5 R0 K15 ["Color3"]
      160 SETTABLEKS                       R5 R4 K15 ["Color3"]
      162 GETTABLEKS                       R5 R0 K16 ["OutlineColor3"]
      164 SETTABLEKS                       R5 R4 K16 ["OutlineColor3"]
      166 GETTABLEKS                       R5 R0 K17 ["OutlineThickness"]
      168 SETTABLEKS                       R5 R4 K17 ["OutlineThickness"]
      170 GETTABLEKS                       R5 R0 K8 ["positionerRef"]
      172 SETTABLEKS                       R5 R4 K8 ["positionerRef"]
      174 DUPTABLE                         R5 K36 [{"UIScale", "InputDetector"}]
      175 GETUPVAL                         R6 1
      176 GETTABLEKS                       R6 R6 K1 ["createElement"]
      178 LOADK                            R7 K12 ["UIScale"]
      179 DUPTABLE                         R8 K31 [{"Scale"}]
      180 GETTABLEKS                       R10 R0 K30 ["Scale"]
      182 ORK                              R9 R10 K6 [1]
      183 SETTABLEKS                       R9 R8 K30 ["Scale"]
      185 CALL                             R6 2 1
      186 SETTABLEKS                       R6 R5 K12 ["UIScale"]
      188 MOVE                             R6 R1
      189 JUMPIFNOT                        R6 ; [+28]
      190 GETUPVAL                         R6 1
      191 GETTABLEKS                       R6 R6 K1 ["createElement"]
      193 GETUPVAL                         R7 2
      194 GETTABLEKS                       R7 R7 K13 ["InputDetector"]
      196 DUPTABLE                         R8 K34 [{"OnDragStart", "OnDragMoved", "OnDragEnded", "OnHoverStart", "OnHoverEnded"}]
      197 GETTABLEKS                       R9 R0 K25 ["OnDragStart"]
      199 SETTABLEKS                       R9 R8 K25 ["OnDragStart"]
      201 GETTABLEKS                       R9 R0 K26 ["OnDragMoved"]
      203 SETTABLEKS                       R9 R8 K26 ["OnDragMoved"]
      205 GETTABLEKS                       R9 R0 K27 ["OnDragEnded"]
      207 SETTABLEKS                       R9 R8 K27 ["OnDragEnded"]
      209 GETTABLEKS                       R9 R0 K32 ["OnHoverStart"]
      211 SETTABLEKS                       R9 R8 K32 ["OnHoverStart"]
      213 GETTABLEKS                       R9 R0 K33 ["OnHoverEnded"]
      215 SETTABLEKS                       R9 R8 K33 ["OnHoverEnded"]
      217 CALL                             R6 2 1
      218 SETTABLEKS                       R6 R5 K13 ["InputDetector"]
      220 GETTABLEKS                       R6 R0 K29 ["children"]
      222 CALL                             R2 4 -1
      223 RETURN                           R2 -1

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
       33 DUPCLOSURE                       R5 K12 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 RETURN                           R5 1
