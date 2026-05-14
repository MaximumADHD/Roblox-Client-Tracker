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
       13 DUPTABLE                         R4 K7 [{"Orientation", "Position", "Thickness", "Transparency", "ZIndex"}]
       14 LOADK                            R5 K8 ["Vertical"]
       15 SETTABLEKS                       R5 R4 K2 ["Orientation"]
       17 GETTABLEKS                       R5 R0 K3 ["Position"]
       19 SETTABLEKS                       R5 R4 K3 ["Position"]
       21 LOADN                            R5 1
       22 SETTABLEKS                       R5 R4 K4 ["Thickness"]
       24 LOADN                            R5 1
       25 SETTABLEKS                       R5 R4 K5 ["Transparency"]
       27 GETTABLEKS                       R5 R0 K6 ["ZIndex"]
       29 SETTABLEKS                       R5 R4 K6 ["ZIndex"]
       31 DUPTABLE                         R5 K11 [{"View", "LineDrag"}]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K1 ["createElement"]
       35 GETUPVAL                         R7 2
       36 DUPTABLE                         R8 K15 [{"AnchorPoint", "Position", "Size", "backgroundStyle"}]
       37 GETIMPORT                        R9 K18 [Vector2.new]
       39 LOADK                            R10 K19 [0.5]
       40 LOADN                            R11 1
       41 CALL                             R9 2 1
       42 SETTABLEKS                       R9 R8 K12 ["AnchorPoint"]
       44 GETIMPORT                        R9 K21 [UDim2.new]
       46 LOADK                            R10 K19 [0.5]
       47 LOADN                            R11 0
       48 LOADN                            R12 1
       49 LOADN                            R13 0
       50 CALL                             R9 4 1
       51 SETTABLEKS                       R9 R8 K3 ["Position"]
       53 GETIMPORT                        R9 K21 [UDim2.new]
       55 LOADN                            R10 0
       56 GETTABLEKS                       R12 R0 K4 ["Thickness"]
       58 ORK                              R11 R12 K22 [2]
       59 LOADN                            R12 1
       60 GETTABLEKS                       R14 R0 K24 ["HeightAboveGraph"]
       62 ORK                              R13 R14 K23 [0]
       63 CALL                             R9 4 1
       64 SETTABLEKS                       R9 R8 K13 ["Size"]
       66 GETTABLEKS                       R9 R0 K25 ["ColorStyle"]
       68 SETTABLEKS                       R9 R8 K14 ["backgroundStyle"]
       70 DUPTABLE                         R9 K27 [{"Flag"}]
       71 GETTABLEKS                       R10 R0 K0 ["FlagEnabled"]
       73 JUMPIFNOT                        R10 ; [+87]
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R10 R10 K1 ["createElement"]
       77 GETUPVAL                         R11 2
       78 DUPTABLE                         R12 K29 [{"AnchorPoint", "Position", "tag"}]
       79 GETIMPORT                        R13 K18 [Vector2.new]
       81 LOADK                            R14 K19 [0.5]
       82 LOADK                            R15 K19 [0.5]
       83 CALL                             R13 2 1
       84 SETTABLEKS                       R13 R12 K12 ["AnchorPoint"]
       86 GETIMPORT                        R13 K31 [UDim2.fromScale]
       88 LOADK                            R14 K19 [0.5]
       89 LOADN                            R15 0
       90 CALL                             R13 2 1
       91 SETTABLEKS                       R13 R12 K3 ["Position"]
       93 LOADK                            R13 K32 ["size-300-300"]
       94 SETTABLEKS                       R13 R12 K28 ["tag"]
       96 DUPTABLE                         R13 K35 [{"Icon", "Drag"}]
       97 GETUPVAL                         R14 0
       98 GETTABLEKS                       R14 R14 K1 ["createElement"]
      100 GETUPVAL                         R15 3
      101 DUPTABLE                         R16 K40 [{"name", "variant", "AnchorPoint", "Position", "size", "style"}]
      102 GETUPVAL                         R17 4
      103 GETTABLEKS                       R17 R17 K41 ["Enums"]
      105 GETTABLEKS                       R17 R17 K42 ["IconName"]
      107 GETTABLEKS                       R17 R17 K43 ["DiamondSimplified"]
      109 SETTABLEKS                       R17 R16 K36 ["name"]
      111 GETUPVAL                         R17 4
      112 GETTABLEKS                       R17 R17 K41 ["Enums"]
      114 GETTABLEKS                       R17 R17 K44 ["IconVariant"]
      116 GETTABLEKS                       R17 R17 K45 ["Filled"]
      118 SETTABLEKS                       R17 R16 K37 ["variant"]
      120 GETIMPORT                        R17 K18 [Vector2.new]
      122 LOADK                            R18 K19 [0.5]
      123 LOADK                            R19 K19 [0.5]
      124 CALL                             R17 2 1
      125 SETTABLEKS                       R17 R16 K12 ["AnchorPoint"]
      127 GETIMPORT                        R17 K31 [UDim2.fromScale]
      129 LOADK                            R18 K19 [0.5]
      130 LOADK                            R19 K19 [0.5]
      131 CALL                             R17 2 1
      132 SETTABLEKS                       R17 R16 K3 ["Position"]
      134 GETUPVAL                         R17 4
      135 GETTABLEKS                       R17 R17 K41 ["Enums"]
      137 GETTABLEKS                       R17 R17 K46 ["IconSize"]
      139 GETTABLEKS                       R17 R17 K47 ["Small"]
      141 SETTABLEKS                       R17 R16 K38 ["size"]
      143 GETTABLEKS                       R17 R0 K25 ["ColorStyle"]
      145 SETTABLEKS                       R17 R16 K39 ["style"]
      147 CALL                             R14 2 1
      148 SETTABLEKS                       R14 R13 K33 ["Icon"]
      150 GETUPVAL                         R14 0
      151 GETTABLEKS                       R14 R14 K1 ["createElement"]
      153 GETUPVAL                         R15 5
      154 DUPTABLE                         R16 K49 [{"OnDragMoved"}]
      155 SETTABLEKS                       R1 R16 K48 ["OnDragMoved"]
      157 CALL                             R14 2 1
      158 SETTABLEKS                       R14 R13 K34 ["Drag"]
      160 CALL                             R10 3 1
      161 SETTABLEKS                       R10 R9 K26 ["Flag"]
      163 CALL                             R6 3 1
      164 SETTABLEKS                       R6 R5 K9 ["View"]
      166 GETUPVAL                         R6 0
      167 GETTABLEKS                       R6 R6 K1 ["createElement"]
      169 GETUPVAL                         R7 5
      170 DUPTABLE                         R8 K51 [{"Inflate", "OnDragMoved"}]
      171 LOADN                            R9 3
      172 SETTABLEKS                       R9 R8 K50 ["Inflate"]
      174 SETTABLEKS                       R1 R8 K48 ["OnDragMoved"]
      176 CALL                             R6 2 1
      177 SETTABLEKS                       R6 R5 K10 ["LineDrag"]
      179 CALL                             R2 3 -1
      180 RETURN                           R2 -1

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
