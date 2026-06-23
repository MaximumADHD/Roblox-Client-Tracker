PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+128]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Point"]
        9 DUPTABLE                         R3 K7 [{"Position", "ZIndex", "Transparency", "Size", "positionerRef"}]
       10 GETTABLEKS                       R4 R0 K2 ["Position"]
       12 SETTABLEKS                       R4 R3 K2 ["Position"]
       14 GETTABLEKS                       R4 R0 K3 ["ZIndex"]
       16 SETTABLEKS                       R4 R3 K3 ["ZIndex"]
       18 LOADN                            R4 1
       19 SETTABLEKS                       R4 R3 K4 ["Transparency"]
       21 LOADN                            R5 9
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K8 ["SLOPPY_SELECTION_BOUNDARY"]
       25 ADD                              R4 R5 R6
       26 SETTABLEKS                       R4 R3 K5 ["Size"]
       28 GETTABLEKS                       R4 R0 K6 ["positionerRef"]
       30 SETTABLEKS                       R4 R3 K6 ["positionerRef"]
       32 DUPTABLE                         R4 K12 [{"VisiblePoint", "UIScale", "InputDetector"}]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K0 ["createElement"]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K1 ["Point"]
       39 DUPTABLE                         R7 K16 [{"Position", "ZIndex", "Color3", "OutlineColor3", "OutlineThickness", "Size"}]
       40 GETIMPORT                        R8 K19 [UDim2.fromScale]
       42 LOADK                            R9 K20 [0.5]
       43 LOADK                            R10 K20 [0.5]
       44 CALL                             R8 2 1
       45 SETTABLEKS                       R8 R7 K2 ["Position"]
       47 GETTABLEKS                       R8 R0 K3 ["ZIndex"]
       49 SETTABLEKS                       R8 R7 K3 ["ZIndex"]
       51 GETTABLEKS                       R8 R0 K13 ["Color3"]
       53 SETTABLEKS                       R8 R7 K13 ["Color3"]
       55 GETTABLEKS                       R8 R0 K14 ["OutlineColor3"]
       57 SETTABLEKS                       R8 R7 K14 ["OutlineColor3"]
       59 GETTABLEKS                       R8 R0 K15 ["OutlineThickness"]
       61 SETTABLEKS                       R8 R7 K15 ["OutlineThickness"]
       63 LOADN                            R8 9
       64 SETTABLEKS                       R8 R7 K5 ["Size"]
       66 DUPTABLE                         R8 K21 [{"InputDetector"}]
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R9 R9 K0 ["createElement"]
       70 GETUPVAL                         R10 2
       71 GETTABLEKS                       R10 R10 K11 ["InputDetector"]
       73 DUPTABLE                         R11 K25 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
       74 GETTABLEKS                       R12 R0 K22 ["OnDragStart"]
       76 SETTABLEKS                       R12 R11 K22 ["OnDragStart"]
       78 GETTABLEKS                       R12 R0 K23 ["OnDragMoved"]
       80 SETTABLEKS                       R12 R11 K23 ["OnDragMoved"]
       82 GETTABLEKS                       R12 R0 K26 ["DEPRECATED_OnDragEnded"]
       84 SETTABLEKS                       R12 R11 K24 ["OnDragEnded"]
       86 CALL                             R9 2 1
       87 SETTABLEKS                       R9 R8 K11 ["InputDetector"]
       89 GETTABLEKS                       R9 R0 K27 ["children"]
       91 CALL                             R5 4 1
       92 SETTABLEKS                       R5 R4 K9 ["VisiblePoint"]
       94 GETUPVAL                         R5 1
       95 GETTABLEKS                       R5 R5 K0 ["createElement"]
       97 LOADK                            R6 K10 ["UIScale"]
       98 DUPTABLE                         R7 K29 [{"Scale"}]
       99 GETTABLEKS                       R9 R0 K28 ["Scale"]
      101 ORK                              R8 R9 K30 [1]
      102 SETTABLEKS                       R8 R7 K28 ["Scale"]
      104 CALL                             R5 2 1
      105 SETTABLEKS                       R5 R4 K10 ["UIScale"]
      107 GETUPVAL                         R5 1
      108 GETTABLEKS                       R5 R5 K0 ["createElement"]
      110 GETUPVAL                         R6 2
      111 GETTABLEKS                       R6 R6 K11 ["InputDetector"]
      113 DUPTABLE                         R7 K25 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
      114 GETTABLEKS                       R8 R0 K22 ["OnDragStart"]
      116 SETTABLEKS                       R8 R7 K22 ["OnDragStart"]
      118 GETTABLEKS                       R8 R0 K23 ["OnDragMoved"]
      120 SETTABLEKS                       R8 R7 K23 ["OnDragMoved"]
      122 GETTABLEKS                       R8 R0 K26 ["DEPRECATED_OnDragEnded"]
      124 SETTABLEKS                       R8 R7 K24 ["OnDragEnded"]
      126 CALL                             R5 2 1
      127 SETTABLEKS                       R5 R4 K11 ["InputDetector"]
      129 CALL                             R1 3 -1
      130 RETURN                           R1 -1
      131 GETUPVAL                         R1 1
      132 GETTABLEKS                       R1 R1 K0 ["createElement"]
      134 GETUPVAL                         R2 2
      135 GETTABLEKS                       R2 R2 K1 ["Point"]
      137 DUPTABLE                         R3 K31 [{"Position", "ZIndex", "Color3", "OutlineColor3", "OutlineThickness", "Size", "positionerRef"}]
      138 GETTABLEKS                       R4 R0 K2 ["Position"]
      140 SETTABLEKS                       R4 R3 K2 ["Position"]
      142 GETTABLEKS                       R4 R0 K3 ["ZIndex"]
      144 SETTABLEKS                       R4 R3 K3 ["ZIndex"]
      146 GETTABLEKS                       R4 R0 K13 ["Color3"]
      148 SETTABLEKS                       R4 R3 K13 ["Color3"]
      150 GETTABLEKS                       R4 R0 K14 ["OutlineColor3"]
      152 SETTABLEKS                       R4 R3 K14 ["OutlineColor3"]
      154 GETTABLEKS                       R4 R0 K15 ["OutlineThickness"]
      156 SETTABLEKS                       R4 R3 K15 ["OutlineThickness"]
      158 LOADN                            R4 9
      159 SETTABLEKS                       R4 R3 K5 ["Size"]
      161 GETTABLEKS                       R4 R0 K6 ["positionerRef"]
      163 SETTABLEKS                       R4 R3 K6 ["positionerRef"]
      165 DUPTABLE                         R4 K32 [{"UIScale", "InputDetector"}]
      166 GETUPVAL                         R5 1
      167 GETTABLEKS                       R5 R5 K0 ["createElement"]
      169 LOADK                            R6 K10 ["UIScale"]
      170 DUPTABLE                         R7 K29 [{"Scale"}]
      171 GETTABLEKS                       R9 R0 K28 ["Scale"]
      173 ORK                              R8 R9 K30 [1]
      174 SETTABLEKS                       R8 R7 K28 ["Scale"]
      176 CALL                             R5 2 1
      177 SETTABLEKS                       R5 R4 K10 ["UIScale"]
      179 GETUPVAL                         R5 1
      180 GETTABLEKS                       R5 R5 K0 ["createElement"]
      182 GETUPVAL                         R6 2
      183 GETTABLEKS                       R6 R6 K11 ["InputDetector"]
      185 DUPTABLE                         R7 K25 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
      186 GETTABLEKS                       R8 R0 K22 ["OnDragStart"]
      188 SETTABLEKS                       R8 R7 K22 ["OnDragStart"]
      190 GETTABLEKS                       R8 R0 K23 ["OnDragMoved"]
      192 SETTABLEKS                       R8 R7 K23 ["OnDragMoved"]
      194 GETTABLEKS                       R8 R0 K26 ["DEPRECATED_OnDragEnded"]
      196 SETTABLEKS                       R8 R7 K24 ["OnDragEnded"]
      198 CALL                             R5 2 1
      199 SETTABLEKS                       R5 R4 K11 ["InputDetector"]
      201 GETTABLEKS                       R5 R0 K27 ["children"]
      203 CALL                             R1 4 -1
      204 RETURN                           R1 -1

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
