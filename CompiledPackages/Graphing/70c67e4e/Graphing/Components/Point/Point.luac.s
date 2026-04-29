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
       25 GETTABLEKS                       R5 R6 K8 ["useContext"]
       27 GETUPVAL                         R6 2
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K9 ["isPointInViewport"]
       31 GETTABLEKS                       R7 R0 K10 ["Position"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R5 K11 ["plotToView"]
       36 GETTABLEKS                       R8 R0 K10 ["Position"]
       38 CALL                             R7 1 1
       39 MOVE                             R8 R6
       40 JUMPIFNOT                        R8 ; [+128]
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R8 R9 K12 ["createElement"]
       44 LOADK                            R9 K13 ["ImageButton"]
       45 NEWTABLE                         R10 8 0
       47 GETIMPORT                        R11 K16 [Vector2.new]
       49 LOADK                            R12 K17 [0.5]
       50 LOADK                            R13 K17 [0.5]
       51 CALL                             R11 2 1
       52 SETTABLEKS                       R11 R10 K18 ["AnchorPoint"]
       54 GETIMPORT                        R11 K21 [UDim2.fromScale]
       56 GETTABLEKS                       R12 R7 K22 ["X"]
       58 GETTABLEKS                       R13 R7 K23 ["Y"]
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K10 ["Position"]
       63 GETIMPORT                        R11 K25 [UDim2.fromOffset]
       65 LOADN                            R14 2
       66 MUL                              R13 R14 R2
       67 ADD                              R12 R1 R13
       68 LOADN                            R15 2
       69 MUL                              R14 R15 R2
       70 ADD                              R13 R1 R14
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K0 ["Size"]
       74 GETTABLEKS                       R11 R0 K26 ["Image"]
       76 JUMPIF                           R11 ; [+3]
       77 GETUPVAL                         R12 0
       78 GETTABLEKS                       R11 R12 K27 ["POINT_HANDLE_IMAGE"]
       80 SETTABLEKS                       R11 R10 K26 ["Image"]
       82 JUMPIFNOTEQKN                    R2 K28 [0] ; [+3]
       84 MOVE                             R11 R3
       85 JUMP                             ; [+1]
       86 MOVE                             R11 R4
       87 SETTABLEKS                       R11 R10 K29 ["ImageColor3"]
       89 LOADN                            R11 1
       90 SETTABLEKS                       R11 R10 K30 ["BackgroundTransparency"]
       92 GETTABLEKS                       R11 R0 K31 ["ZIndex"]
       94 SETTABLEKS                       R11 R10 K31 ["ZIndex"]
       96 GETUPVAL                         R12 1
       97 GETTABLEKS                       R11 R12 K32 ["Tag"]
       99 GETTABLEKS                       R12 R0 K32 ["Tag"]
      101 SETTABLE                         R12 R10 R11
      102 GETUPVAL                         R12 3
      103 GETTABLEKS                       R11 R12 K33 ["join"]
      105 GETTABLEKS                       R12 R0 K34 ["children"]
      107 DUPTABLE                         R13 K36 [{"Inner"}]
      108 LOADB                            R14 0
      109 LOADN                            R15 0
      110 JUMPIFNOTLT                      R15 R2 ; [+54]
      112 GETUPVAL                         R15 1
      113 GETTABLEKS                       R14 R15 K12 ["createElement"]
      115 LOADK                            R15 K13 ["ImageButton"]
      116 NEWTABLE                         R16 16 0
      118 GETIMPORT                        R17 K16 [Vector2.new]
      120 LOADK                            R18 K17 [0.5]
      121 LOADK                            R19 K17 [0.5]
      122 CALL                             R17 2 1
      123 SETTABLEKS                       R17 R16 K18 ["AnchorPoint"]
      125 GETIMPORT                        R17 K21 [UDim2.fromScale]
      127 LOADK                            R18 K17 [0.5]
      128 LOADK                            R19 K17 [0.5]
      129 CALL                             R17 2 1
      130 SETTABLEKS                       R17 R16 K10 ["Position"]
      132 GETIMPORT                        R17 K25 [UDim2.fromOffset]
      134 MOVE                             R18 R1
      135 MOVE                             R19 R1
      136 CALL                             R17 2 1
      137 SETTABLEKS                       R17 R16 K0 ["Size"]
      139 LOADB                            R17 0
      140 SETTABLEKS                       R17 R16 K37 ["Interactable"]
      142 LOADB                            R17 0
      143 SETTABLEKS                       R17 R16 K38 ["Selectable"]
      145 GETTABLEKS                       R17 R0 K26 ["Image"]
      147 JUMPIF                           R17 ; [+3]
      148 GETUPVAL                         R18 0
      149 GETTABLEKS                       R17 R18 K27 ["POINT_HANDLE_IMAGE"]
      151 SETTABLEKS                       R17 R16 K26 ["Image"]
      153 SETTABLEKS                       R3 R16 K29 ["ImageColor3"]
      155 LOADN                            R17 1
      156 SETTABLEKS                       R17 R16 K30 ["BackgroundTransparency"]
      158 GETUPVAL                         R18 1
      159 GETTABLEKS                       R17 R18 K32 ["Tag"]
      161 GETTABLEKS                       R18 R0 K32 ["Tag"]
      163 SETTABLE                         R18 R16 R17
      164 CALL                             R14 2 1
      165 SETTABLEKS                       R14 R13 K35 ["Inner"]
      167 CALL                             R11 2 -1
      168 CALL                             R8 -1 1
      169 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["CanvasContext"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R7 K11 ["StyleUtil"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Types"]
       35 CALL                             R6 1 1
       36 DUPCLOSURE                       R7 K13 [PROTO_0]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 SETGLOBAL                        R7 K14 ["Point"]
       43 GETGLOBAL                        R7 K14 ["Point"]
       45 RETURN                           R7 1
