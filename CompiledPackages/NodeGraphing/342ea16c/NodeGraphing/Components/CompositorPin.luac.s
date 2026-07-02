PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+122]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Point"]
        9 DUPTABLE                         R3 K8 [{["Position"], ["ZIndex"], ["Transparency"] = 1, ["Size"], ["positionerRef"]}]
       10 GETTABLEKS                       R4 R0 K2 ["Position"]
       12 SETTABLEKS                       R4 R3 K2 ["Position"]
       14 GETTABLEKS                       R4 R0 K3 ["ZIndex"]
       16 SETTABLEKS                       R4 R3 K3 ["ZIndex"]
       18 LOADN                            R5 9
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K9 ["SLOPPY_SELECTION_BOUNDARY"]
       22 ADD                              R4 R5 R6
       23 SETTABLEKS                       R4 R3 K6 ["Size"]
       25 GETTABLEKS                       R4 R0 K7 ["positionerRef"]
       27 SETTABLEKS                       R4 R3 K7 ["positionerRef"]
       29 DUPTABLE                         R4 K13 [{"VisiblePoint", "UIScale", "InputDetector"}]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K0 ["createElement"]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K1 ["Point"]
       36 DUPTABLE                         R7 K18 [{["Position"], ["ZIndex"], ["Color3"], ["OutlineColor3"], ["OutlineThickness"], ["Size"] = 9}]
       37 GETIMPORT                        R8 K21 [UDim2.fromScale]
       39 LOADK                            R9 K22 [0.5]
       40 LOADK                            R10 K22 [0.5]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K2 ["Position"]
       44 GETTABLEKS                       R8 R0 K3 ["ZIndex"]
       46 SETTABLEKS                       R8 R7 K3 ["ZIndex"]
       48 GETTABLEKS                       R8 R0 K14 ["Color3"]
       50 SETTABLEKS                       R8 R7 K14 ["Color3"]
       52 GETTABLEKS                       R8 R0 K15 ["OutlineColor3"]
       54 SETTABLEKS                       R8 R7 K15 ["OutlineColor3"]
       56 GETTABLEKS                       R8 R0 K16 ["OutlineThickness"]
       58 SETTABLEKS                       R8 R7 K16 ["OutlineThickness"]
       60 DUPTABLE                         R8 K23 [{"InputDetector"}]
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R9 R9 K0 ["createElement"]
       64 GETUPVAL                         R10 2
       65 GETTABLEKS                       R10 R10 K12 ["InputDetector"]
       67 DUPTABLE                         R11 K27 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
       68 GETTABLEKS                       R12 R0 K24 ["OnDragStart"]
       70 SETTABLEKS                       R12 R11 K24 ["OnDragStart"]
       72 GETTABLEKS                       R12 R0 K25 ["OnDragMoved"]
       74 SETTABLEKS                       R12 R11 K25 ["OnDragMoved"]
       76 GETTABLEKS                       R12 R0 K28 ["DEPRECATED_OnDragEnded"]
       78 SETTABLEKS                       R12 R11 K26 ["OnDragEnded"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K12 ["InputDetector"]
       83 GETTABLEKS                       R9 R0 K29 ["children"]
       85 CALL                             R5 4 1
       86 SETTABLEKS                       R5 R4 K10 ["VisiblePoint"]
       88 GETUPVAL                         R5 1
       89 GETTABLEKS                       R5 R5 K0 ["createElement"]
       91 LOADK                            R6 K11 ["UIScale"]
       92 DUPTABLE                         R7 K31 [{"Scale"}]
       93 GETTABLEKS                       R9 R0 K30 ["Scale"]
       95 ORK                              R8 R9 K5 [1]
       96 SETTABLEKS                       R8 R7 K30 ["Scale"]
       98 CALL                             R5 2 1
       99 SETTABLEKS                       R5 R4 K11 ["UIScale"]
      101 GETUPVAL                         R5 1
      102 GETTABLEKS                       R5 R5 K0 ["createElement"]
      104 GETUPVAL                         R6 2
      105 GETTABLEKS                       R6 R6 K12 ["InputDetector"]
      107 DUPTABLE                         R7 K27 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
      108 GETTABLEKS                       R8 R0 K24 ["OnDragStart"]
      110 SETTABLEKS                       R8 R7 K24 ["OnDragStart"]
      112 GETTABLEKS                       R8 R0 K25 ["OnDragMoved"]
      114 SETTABLEKS                       R8 R7 K25 ["OnDragMoved"]
      116 GETTABLEKS                       R8 R0 K28 ["DEPRECATED_OnDragEnded"]
      118 SETTABLEKS                       R8 R7 K26 ["OnDragEnded"]
      120 CALL                             R5 2 1
      121 SETTABLEKS                       R5 R4 K12 ["InputDetector"]
      123 CALL                             R1 3 -1
      124 RETURN                           R1 -1
      125 GETUPVAL                         R1 1
      126 GETTABLEKS                       R1 R1 K0 ["createElement"]
      128 GETUPVAL                         R2 2
      129 GETTABLEKS                       R2 R2 K1 ["Point"]
      131 DUPTABLE                         R3 K32 [{["Position"], ["ZIndex"], ["Color3"], ["OutlineColor3"], ["OutlineThickness"], ["Size"] = 9, ["positionerRef"]}]
      132 GETTABLEKS                       R4 R0 K2 ["Position"]
      134 SETTABLEKS                       R4 R3 K2 ["Position"]
      136 GETTABLEKS                       R4 R0 K3 ["ZIndex"]
      138 SETTABLEKS                       R4 R3 K3 ["ZIndex"]
      140 GETTABLEKS                       R4 R0 K14 ["Color3"]
      142 SETTABLEKS                       R4 R3 K14 ["Color3"]
      144 GETTABLEKS                       R4 R0 K15 ["OutlineColor3"]
      146 SETTABLEKS                       R4 R3 K15 ["OutlineColor3"]
      148 GETTABLEKS                       R4 R0 K16 ["OutlineThickness"]
      150 SETTABLEKS                       R4 R3 K16 ["OutlineThickness"]
      152 GETTABLEKS                       R4 R0 K7 ["positionerRef"]
      154 SETTABLEKS                       R4 R3 K7 ["positionerRef"]
      156 DUPTABLE                         R4 K33 [{"UIScale", "InputDetector"}]
      157 GETUPVAL                         R5 1
      158 GETTABLEKS                       R5 R5 K0 ["createElement"]
      160 LOADK                            R6 K11 ["UIScale"]
      161 DUPTABLE                         R7 K31 [{"Scale"}]
      162 GETTABLEKS                       R9 R0 K30 ["Scale"]
      164 ORK                              R8 R9 K5 [1]
      165 SETTABLEKS                       R8 R7 K30 ["Scale"]
      167 CALL                             R5 2 1
      168 SETTABLEKS                       R5 R4 K11 ["UIScale"]
      170 GETUPVAL                         R5 1
      171 GETTABLEKS                       R5 R5 K0 ["createElement"]
      173 GETUPVAL                         R6 2
      174 GETTABLEKS                       R6 R6 K12 ["InputDetector"]
      176 DUPTABLE                         R7 K27 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
      177 GETTABLEKS                       R8 R0 K24 ["OnDragStart"]
      179 SETTABLEKS                       R8 R7 K24 ["OnDragStart"]
      181 GETTABLEKS                       R8 R0 K25 ["OnDragMoved"]
      183 SETTABLEKS                       R8 R7 K25 ["OnDragMoved"]
      185 GETTABLEKS                       R8 R0 K28 ["DEPRECATED_OnDragEnded"]
      187 SETTABLEKS                       R8 R7 K26 ["OnDragEnded"]
      189 CALL                             R5 2 1
      190 SETTABLEKS                       R5 R4 K12 ["InputDetector"]
      192 GETTABLEKS                       R5 R0 K29 ["children"]
      194 CALL                             R1 4 -1
      195 RETURN                           R1 -1

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
