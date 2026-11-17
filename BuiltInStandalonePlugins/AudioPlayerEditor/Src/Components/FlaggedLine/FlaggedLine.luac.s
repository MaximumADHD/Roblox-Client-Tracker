PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetPosition"]
        3 GETTABLEKS                       R2 R0 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["FlagEnabled"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+4]
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["FlagEnabled"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["createElement"]
       12 GETUPVAL                         R3 1
       13 DUPTABLE                         R4 K9 [{["Orientation"] = "Vertical", ["Position"], ["Thickness"] = 1, ["Transparency"] = 1, ["ZIndex"]}]
       14 GETTABLEKS                       R5 R0 K4 ["Position"]
       16 SETTABLEKS                       R5 R4 K4 ["Position"]
       18 GETTABLEKS                       R5 R0 K8 ["ZIndex"]
       20 SETTABLEKS                       R5 R4 K8 ["ZIndex"]
       22 DUPTABLE                         R5 K12 [{"View", "LineDrag"}]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K1 ["createElement"]
       26 GETUPVAL                         R7 2
       27 DUPTABLE                         R8 K16 [{"AnchorPoint", "Position", "Size", "backgroundStyle"}]
       28 GETIMPORT                        R9 K19 [Vector2.new]
       30 LOADK                            R10 K20 [0.5]
       31 LOADN                            R11 1
       32 CALL                             R9 2 1
       33 SETTABLEKS                       R9 R8 K13 ["AnchorPoint"]
       35 GETIMPORT                        R9 K22 [UDim2.new]
       37 LOADK                            R10 K20 [0.5]
       38 LOADN                            R11 0
       39 LOADN                            R12 1
       40 LOADN                            R13 0
       41 CALL                             R9 4 1
       42 SETTABLEKS                       R9 R8 K4 ["Position"]
       44 GETIMPORT                        R9 K22 [UDim2.new]
       46 LOADN                            R10 0
       47 GETTABLEKS                       R12 R0 K5 ["Thickness"]
       49 ORK                              R11 R12 K23 [2]
       50 LOADN                            R12 1
       51 GETTABLEKS                       R14 R0 K25 ["HeightAboveGraph"]
       53 ORK                              R13 R14 K24 [0]
       54 CALL                             R9 4 1
       55 SETTABLEKS                       R9 R8 K14 ["Size"]
       57 GETTABLEKS                       R9 R0 K26 ["ColorStyle"]
       59 SETTABLEKS                       R9 R8 K15 ["backgroundStyle"]
       61 DUPTABLE                         R9 K28 [{"Flag"}]
       62 GETTABLEKS                       R10 R0 K0 ["FlagEnabled"]
       64 JUMPIFNOT                        R10 ; [+84]
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K1 ["createElement"]
       68 GETUPVAL                         R11 2
       69 DUPTABLE                         R12 K31 [{["AnchorPoint"], ["Position"], ["tag"] = "size-300-300"}]
       70 GETIMPORT                        R13 K19 [Vector2.new]
       72 LOADK                            R14 K20 [0.5]
       73 LOADK                            R15 K20 [0.5]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K13 ["AnchorPoint"]
       77 GETIMPORT                        R13 K33 [UDim2.fromScale]
       79 LOADK                            R14 K20 [0.5]
       80 LOADN                            R15 0
       81 CALL                             R13 2 1
       82 SETTABLEKS                       R13 R12 K4 ["Position"]
       84 DUPTABLE                         R13 K36 [{"Icon", "Drag"}]
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R14 R14 K1 ["createElement"]
       88 GETUPVAL                         R15 3
       89 DUPTABLE                         R16 K41 [{"name", "variant", "AnchorPoint", "Position", "size", "style"}]
       90 GETUPVAL                         R17 4
       91 GETTABLEKS                       R17 R17 K42 ["Enums"]
       93 GETTABLEKS                       R17 R17 K43 ["IconName"]
       95 GETTABLEKS                       R17 R17 K44 ["DiamondSimplified"]
       97 SETTABLEKS                       R17 R16 K37 ["name"]
       99 GETUPVAL                         R17 4
      100 GETTABLEKS                       R17 R17 K42 ["Enums"]
      102 GETTABLEKS                       R17 R17 K45 ["IconVariant"]
      104 GETTABLEKS                       R17 R17 K46 ["Filled"]
      106 SETTABLEKS                       R17 R16 K38 ["variant"]
      108 GETIMPORT                        R17 K19 [Vector2.new]
      110 LOADK                            R18 K20 [0.5]
      111 LOADK                            R19 K20 [0.5]
      112 CALL                             R17 2 1
      113 SETTABLEKS                       R17 R16 K13 ["AnchorPoint"]
      115 GETIMPORT                        R17 K33 [UDim2.fromScale]
      117 LOADK                            R18 K20 [0.5]
      118 LOADK                            R19 K20 [0.5]
      119 CALL                             R17 2 1
      120 SETTABLEKS                       R17 R16 K4 ["Position"]
      122 GETUPVAL                         R17 4
      123 GETTABLEKS                       R17 R17 K42 ["Enums"]
      125 GETTABLEKS                       R17 R17 K47 ["IconSize"]
      127 GETTABLEKS                       R17 R17 K48 ["Small"]
      129 SETTABLEKS                       R17 R16 K39 ["size"]
      131 GETTABLEKS                       R17 R0 K26 ["ColorStyle"]
      133 SETTABLEKS                       R17 R16 K40 ["style"]
      135 CALL                             R14 2 1
      136 SETTABLEKS                       R14 R13 K34 ["Icon"]
      138 GETUPVAL                         R14 0
      139 GETTABLEKS                       R14 R14 K1 ["createElement"]
      141 GETUPVAL                         R15 5
      142 DUPTABLE                         R16 K50 [{"OnDragMoved"}]
      143 SETTABLEKS                       R1 R16 K49 ["OnDragMoved"]
      145 CALL                             R14 2 1
      146 SETTABLEKS                       R14 R13 K35 ["Drag"]
      148 CALL                             R10 3 1
      149 SETTABLEKS                       R10 R9 K27 ["Flag"]
      151 CALL                             R6 3 1
      152 SETTABLEKS                       R6 R5 K10 ["View"]
      154 GETUPVAL                         R6 0
      155 GETTABLEKS                       R6 R6 K1 ["createElement"]
      157 GETUPVAL                         R7 5
      158 DUPTABLE                         R8 K53 [{["Inflate"] = 3, ["OnDragMoved"]}]
      159 SETTABLEKS                       R1 R8 K49 ["OnDragMoved"]
      161 CALL                             R6 2 1
      162 SETTABLEKS                       R6 R5 K11 ["LineDrag"]
      164 CALL                             R2 3 -1
      165 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Icon"]
       23 GETTABLEKS                       R4 R2 K10 ["View"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Graphing"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["GridLine"]
       34 GETTABLEKS                       R7 R5 K13 ["InputDetector"]
       36 DUPCLOSURE                       R8 K14 [PROTO_1]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R7
       43 RETURN                           R8 1
