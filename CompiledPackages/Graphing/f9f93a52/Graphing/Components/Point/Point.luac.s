PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Size"]
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["POINT_HANDLE_SIZE"]
        6 GETTABLEKS                       R2 R0 K2 ["OutlineThickness"]
        8 JUMPIF                           R2 ; [+3]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["POINT_HANDLE_OUTLINE_THICKNESS"]
       12 GETTABLEKS                       R3 R0 K4 ["Color3"]
       14 JUMPIF                           R3 ; [+3]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K5 ["POINT_HANDLE_COLOR3"]
       18 GETTABLEKS                       R4 R0 K6 ["OutlineColor3"]
       20 JUMPIF                           R4 ; [+3]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K7 ["POINT_HANDLE_OUTLINE_COLOR3"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K8 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K12 [{"Position", "ZIndex", "ref"}]
       29 GETTABLEKS                       R8 R0 K9 ["Position"]
       31 SETTABLEKS                       R8 R7 K9 ["Position"]
       33 GETTABLEKS                       R8 R0 K10 ["ZIndex"]
       35 SETTABLEKS                       R8 R7 K10 ["ZIndex"]
       37 GETTABLEKS                       R8 R0 K13 ["positionerRef"]
       39 SETTABLEKS                       R8 R7 K11 ["ref"]
       41 DUPTABLE                         R8 K16 [{"Outer", "Inner"}]
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R9 R10 K8 ["createElement"]
       45 LOADK                            R10 K17 ["ImageButton"]
       46 NEWTABLE                         R11 8 0
       48 GETIMPORT                        R12 K20 [Vector2.new]
       50 LOADK                            R13 K21 [0.5]
       51 LOADK                            R14 K21 [0.5]
       52 CALL                             R12 2 1
       53 SETTABLEKS                       R12 R11 K22 ["AnchorPoint"]
       55 GETIMPORT                        R12 K25 [UDim2.fromOffset]
       57 LOADN                            R15 2
       58 MUL                              R14 R15 R2
       59 ADD                              R13 R1 R14
       60 LOADN                            R16 2
       61 MUL                              R15 R16 R2
       62 ADD                              R14 R1 R15
       63 CALL                             R12 2 1
       64 SETTABLEKS                       R12 R11 K0 ["Size"]
       66 GETTABLEKS                       R12 R0 K26 ["Image"]
       68 JUMPIF                           R12 ; [+3]
       69 GETUPVAL                         R13 0
       70 GETTABLEKS                       R12 R13 K27 ["POINT_HANDLE_IMAGE"]
       72 SETTABLEKS                       R12 R11 K26 ["Image"]
       74 JUMPIFNOTEQKN                    R2 K28 [0] ; [+3]
       76 MOVE                             R12 R3
       77 JUMP                             ; [+1]
       78 MOVE                             R12 R4
       79 SETTABLEKS                       R12 R11 K29 ["ImageColor3"]
       81 GETTABLEKS                       R12 R0 K30 ["Transparency"]
       83 SETTABLEKS                       R12 R11 K31 ["ImageTransparency"]
       85 LOADN                            R12 1
       86 SETTABLEKS                       R12 R11 K32 ["BackgroundTransparency"]
       88 LOADN                            R12 1
       89 SETTABLEKS                       R12 R11 K10 ["ZIndex"]
       91 GETUPVAL                         R13 1
       92 GETTABLEKS                       R12 R13 K33 ["Tag"]
       94 GETTABLEKS                       R13 R0 K33 ["Tag"]
       96 SETTABLE                         R13 R11 R12
       97 GETTABLEKS                       R12 R0 K34 ["children"]
       99 CALL                             R9 3 1
      100 SETTABLEKS                       R9 R8 K14 ["Outer"]
      102 LOADB                            R9 0
      103 LOADN                            R10 0
      104 JUMPIFNOTLT                      R10 R2 ; [+61]
      106 GETUPVAL                         R10 1
      107 GETTABLEKS                       R9 R10 K8 ["createElement"]
      109 LOADK                            R10 K17 ["ImageButton"]
      110 NEWTABLE                         R11 16 0
      112 GETIMPORT                        R12 K20 [Vector2.new]
      114 LOADK                            R13 K21 [0.5]
      115 LOADK                            R14 K21 [0.5]
      116 CALL                             R12 2 1
      117 SETTABLEKS                       R12 R11 K22 ["AnchorPoint"]
      119 GETIMPORT                        R12 K36 [UDim2.fromScale]
      121 LOADK                            R13 K21 [0.5]
      122 LOADK                            R14 K21 [0.5]
      123 CALL                             R12 2 1
      124 SETTABLEKS                       R12 R11 K9 ["Position"]
      126 GETIMPORT                        R12 K25 [UDim2.fromOffset]
      128 MOVE                             R13 R1
      129 MOVE                             R14 R1
      130 CALL                             R12 2 1
      131 SETTABLEKS                       R12 R11 K0 ["Size"]
      133 LOADB                            R12 0
      134 SETTABLEKS                       R12 R11 K37 ["Interactable"]
      136 LOADB                            R12 0
      137 SETTABLEKS                       R12 R11 K38 ["Selectable"]
      139 GETTABLEKS                       R12 R0 K26 ["Image"]
      141 JUMPIF                           R12 ; [+3]
      142 GETUPVAL                         R13 0
      143 GETTABLEKS                       R12 R13 K27 ["POINT_HANDLE_IMAGE"]
      145 SETTABLEKS                       R12 R11 K26 ["Image"]
      147 SETTABLEKS                       R3 R11 K29 ["ImageColor3"]
      149 GETTABLEKS                       R12 R0 K30 ["Transparency"]
      151 SETTABLEKS                       R12 R11 K31 ["ImageTransparency"]
      153 LOADN                            R12 1
      154 SETTABLEKS                       R12 R11 K32 ["BackgroundTransparency"]
      156 LOADN                            R12 2
      157 SETTABLEKS                       R12 R11 K10 ["ZIndex"]
      159 GETUPVAL                         R13 1
      160 GETTABLEKS                       R12 R13 K33 ["Tag"]
      162 GETTABLEKS                       R13 R0 K33 ["Tag"]
      164 SETTABLE                         R13 R11 R12
      165 CALL                             R9 2 1
      166 SETTABLEKS                       R9 R8 K15 ["Inner"]
      168 CALL                             R5 3 -1
      169 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Types"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Positioner"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Util"]
       30 GETTABLEKS                       R6 R7 K12 ["StyleUtil"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K13 [PROTO_0]
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 SETGLOBAL                        R6 K14 ["Point"]
       39 GETGLOBAL                        R6 K14 ["Point"]
       41 RETURN                           R6 1
