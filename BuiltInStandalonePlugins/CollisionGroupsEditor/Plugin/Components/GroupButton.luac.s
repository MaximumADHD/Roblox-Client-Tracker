PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"Hovering"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Hovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"Hovering"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["Hovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"Hovering"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Hovering"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["mouseEnter"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["mouseLeave"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K10 [{"Size", "Padding", "LayoutOrder", "Style", "OnClick", "OnMouseEnter", "OnMouseLeave"}]
        9 GETTABLEKS                       R6 R2 K3 ["Size"]
       11 SETTABLEKS                       R6 R5 K3 ["Size"]
       13 GETTABLEKS                       R6 R2 K4 ["Padding"]
       15 SETTABLEKS                       R6 R5 K4 ["Padding"]
       17 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       19 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       21 DUPTABLE                         R6 K15 [{"Foreground", "ForegroundStyle", "Background", "BackgroundStyle"}]
       22 GETUPVAL                         R7 2
       23 SETTABLEKS                       R7 R6 K11 ["Foreground"]
       25 DUPTABLE                         R7 K20 [{"Image", "Size", "AnchorPoint", "Position", "ScaleType"}]
       26 GETTABLEKS                       R10 R0 K21 ["state"]
       28 GETTABLEKS                       R9 R10 K22 ["Hovering"]
       30 JUMPIFNOT                        R9 ; [+3]
       31 GETTABLEKS                       R8 R2 K23 ["HoveredImage"]
       33 JUMP                             ; [+2]
       34 GETTABLEKS                       R8 R2 K16 ["Image"]
       36 SETTABLEKS                       R8 R7 K16 ["Image"]
       38 GETTABLEKS                       R8 R2 K24 ["ImageSize"]
       40 SETTABLEKS                       R8 R7 K3 ["Size"]
       42 GETIMPORT                        R8 K27 [Vector2.new]
       44 LOADK                            R9 K28 [0.5]
       45 LOADK                            R10 K28 [0.5]
       46 CALL                             R8 2 1
       47 SETTABLEKS                       R8 R7 K17 ["AnchorPoint"]
       49 GETIMPORT                        R8 K30 [UDim2.new]
       51 LOADK                            R9 K28 [0.5]
       52 LOADN                            R10 0
       53 LOADK                            R11 K28 [0.5]
       54 LOADN                            R12 0
       55 CALL                             R8 4 1
       56 SETTABLEKS                       R8 R7 K18 ["Position"]
       58 GETIMPORT                        R8 K33 [Enum.ScaleType.Stretch]
       60 SETTABLEKS                       R8 R7 K19 ["ScaleType"]
       62 SETTABLEKS                       R7 R6 K12 ["ForegroundStyle"]
       64 GETUPVAL                         R7 3
       65 SETTABLEKS                       R7 R6 K13 ["Background"]
       67 LOADK                            R7 K34 ["None"]
       68 SETTABLEKS                       R7 R6 K14 ["BackgroundStyle"]
       70 SETTABLEKS                       R6 R5 K6 ["Style"]
       72 GETTABLEKS                       R6 R1 K7 ["OnClick"]
       74 SETTABLEKS                       R6 R5 K7 ["OnClick"]
       76 GETTABLEKS                       R6 R0 K35 ["mouseEnter"]
       78 SETTABLEKS                       R6 R5 K8 ["OnMouseEnter"]
       80 GETTABLEKS                       R6 R0 K36 ["mouseLeave"]
       82 SETTABLEKS                       R6 R5 K9 ["OnMouseLeave"]
       84 DUPTABLE                         R6 K39 [{"HoverArea", "Tooltip"}]
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R7 R8 K2 ["createElement"]
       88 GETUPVAL                         R8 4
       89 DUPTABLE                         R9 K41 [{"Cursor"}]
       90 LOADK                            R10 K42 ["PointingHand"]
       91 SETTABLEKS                       R10 R9 K40 ["Cursor"]
       93 CALL                             R7 2 1
       94 SETTABLEKS                       R7 R6 K37 ["HoverArea"]
       96 GETUPVAL                         R8 0
       97 GETTABLEKS                       R7 R8 K2 ["createElement"]
       99 GETUPVAL                         R8 5
      100 DUPTABLE                         R9 K44 [{"Text"}]
      101 GETTABLEKS                       R10 R1 K45 ["TooltipMessage"]
      103 SETTABLEKS                       R10 R9 K43 ["Text"]
      105 CALL                             R7 2 1
      106 SETTABLEKS                       R7 R6 K38 ["Tooltip"]
      108 CALL                             R3 3 -1
      109 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["Button"]
       29 GETTABLEKS                       R6 R4 K11 ["HoverArea"]
       31 GETTABLEKS                       R7 R4 K12 ["Image"]
       33 GETTABLEKS                       R8 R4 K13 ["Pane"]
       35 GETTABLEKS                       R9 R4 K14 ["Tooltip"]
       37 GETTABLEKS                       R10 R1 K15 ["Component"]
       39 LOADK                            R12 K16 ["GroupButton"]
       40 NAMECALL                         R10 R10 K17 ["extend"]
       42 CALL                             R10 2 1
       43 DUPCLOSURE                       R11 K18 [PROTO_2]
       44 SETTABLEKS                       R11 R10 K19 ["init"]
       46 DUPCLOSURE                       R11 K20 [PROTO_3]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R9
       53 SETTABLEKS                       R11 R10 K21 ["render"]
       55 GETTABLEKS                       R11 R3 K22 ["withContext"]
       57 DUPTABLE                         R12 K25 [{"Stylizer", "Localization"}]
       58 GETTABLEKS                       R13 R3 K23 ["Stylizer"]
       60 SETTABLEKS                       R13 R12 K23 ["Stylizer"]
       62 GETTABLEKS                       R13 R3 K24 ["Localization"]
       64 SETTABLEKS                       R13 R12 K24 ["Localization"]
       66 CALL                             R11 1 1
       67 MOVE                             R12 R10
       68 CALL                             R11 1 1
       69 MOVE                             R10 R11
       70 RETURN                           R10 1
