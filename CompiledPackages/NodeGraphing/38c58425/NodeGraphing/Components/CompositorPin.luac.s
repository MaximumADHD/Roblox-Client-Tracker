PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["CanDrag"]
        2 JUMPIFNOTEQKB                    R2 FALSE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["createElement"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["Point"]
       12 DUPTABLE                         R4 K9 [{["Position"], ["ZIndex"], ["Transparency"] = 1, ["Size"], ["positionerRef"]}]
       13 GETTABLEKS                       R5 R0 K3 ["Position"]
       15 SETTABLEKS                       R5 R4 K3 ["Position"]
       17 GETTABLEKS                       R5 R0 K4 ["ZIndex"]
       19 SETTABLEKS                       R5 R4 K4 ["ZIndex"]
       21 LOADN                            R6 9
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K10 ["SLOPPY_SELECTION_BOUNDARY"]
       25 ADD                              R5 R6 R7
       26 SETTABLEKS                       R5 R4 K7 ["Size"]
       28 GETTABLEKS                       R5 R0 K8 ["positionerRef"]
       30 SETTABLEKS                       R5 R4 K8 ["positionerRef"]
       32 DUPTABLE                         R5 K14 [{"VisiblePoint", "UIScale", "InputDetector"}]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K1 ["createElement"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K2 ["Point"]
       39 DUPTABLE                         R8 K19 [{["Position"], ["ZIndex"], ["Color3"], ["OutlineColor3"], ["OutlineThickness"], ["Size"] = 9}]
       40 GETIMPORT                        R9 K22 [UDim2.fromScale]
       42 LOADK                            R10 K23 [0.5]
       43 LOADK                            R11 K23 [0.5]
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K3 ["Position"]
       47 GETTABLEKS                       R9 R0 K4 ["ZIndex"]
       49 SETTABLEKS                       R9 R8 K4 ["ZIndex"]
       51 GETTABLEKS                       R9 R0 K15 ["Color3"]
       53 SETTABLEKS                       R9 R8 K15 ["Color3"]
       55 GETTABLEKS                       R9 R0 K16 ["OutlineColor3"]
       57 SETTABLEKS                       R9 R8 K16 ["OutlineColor3"]
       59 GETTABLEKS                       R9 R0 K17 ["OutlineThickness"]
       61 SETTABLEKS                       R9 R8 K17 ["OutlineThickness"]
       63 DUPTABLE                         R9 K24 [{"InputDetector"}]
       64 MOVE                             R10 R1
       65 JUMPIFNOT                        R10 ; [+20]
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R10 R10 K1 ["createElement"]
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R11 R11 K13 ["InputDetector"]
       72 DUPTABLE                         R12 K28 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
       73 GETTABLEKS                       R13 R0 K25 ["OnDragStart"]
       75 SETTABLEKS                       R13 R12 K25 ["OnDragStart"]
       77 GETTABLEKS                       R13 R0 K26 ["OnDragMoved"]
       79 SETTABLEKS                       R13 R12 K26 ["OnDragMoved"]
       81 GETTABLEKS                       R13 R0 K27 ["OnDragEnded"]
       83 SETTABLEKS                       R13 R12 K27 ["OnDragEnded"]
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K13 ["InputDetector"]
       88 GETTABLEKS                       R10 R0 K29 ["children"]
       90 CALL                             R6 4 1
       91 SETTABLEKS                       R6 R5 K11 ["VisiblePoint"]
       93 GETUPVAL                         R6 0
       94 GETTABLEKS                       R6 R6 K1 ["createElement"]
       96 LOADK                            R7 K12 ["UIScale"]
       97 DUPTABLE                         R8 K31 [{"Scale"}]
       98 GETTABLEKS                       R10 R0 K30 ["Scale"]
      100 ORK                              R9 R10 K6 [1]
      101 SETTABLEKS                       R9 R8 K30 ["Scale"]
      103 CALL                             R6 2 1
      104 SETTABLEKS                       R6 R5 K12 ["UIScale"]
      106 MOVE                             R6 R1
      107 JUMPIFNOT                        R6 ; [+28]
      108 GETUPVAL                         R6 0
      109 GETTABLEKS                       R6 R6 K1 ["createElement"]
      111 GETUPVAL                         R7 1
      112 GETTABLEKS                       R7 R7 K13 ["InputDetector"]
      114 DUPTABLE                         R8 K34 [{"OnDragStart", "OnDragMoved", "OnDragEnded", "OnHoverStart", "OnHoverEnded"}]
      115 GETTABLEKS                       R9 R0 K25 ["OnDragStart"]
      117 SETTABLEKS                       R9 R8 K25 ["OnDragStart"]
      119 GETTABLEKS                       R9 R0 K26 ["OnDragMoved"]
      121 SETTABLEKS                       R9 R8 K26 ["OnDragMoved"]
      123 GETTABLEKS                       R9 R0 K27 ["OnDragEnded"]
      125 SETTABLEKS                       R9 R8 K27 ["OnDragEnded"]
      127 GETTABLEKS                       R9 R0 K32 ["OnHoverStart"]
      129 SETTABLEKS                       R9 R8 K32 ["OnHoverStart"]
      131 GETTABLEKS                       R9 R0 K33 ["OnHoverEnded"]
      133 SETTABLEKS                       R9 R8 K33 ["OnHoverEnded"]
      135 CALL                             R6 2 1
      136 SETTABLEKS                       R6 R5 K13 ["InputDetector"]
      138 CALL                             R2 3 -1
      139 RETURN                           R2 -1

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
       26 DUPCLOSURE                       R4 K10 [PROTO_0]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R4 1
