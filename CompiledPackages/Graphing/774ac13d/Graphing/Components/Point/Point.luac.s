PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Size"]
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["POINT_HANDLE_SIZE"]
        6 GETTABLEKS                       R2 R0 K2 ["OutlineThickness"]
        8 JUMPIF                           R2 ; [+3]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["POINT_HANDLE_OUTLINE_THICKNESS"]
       12 GETTABLEKS                       R3 R0 K4 ["Color3"]
       14 JUMPIF                           R3 ; [+3]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["POINT_HANDLE_COLOR3"]
       18 GETTABLEKS                       R4 R0 K6 ["OutlineColor3"]
       20 JUMPIF                           R4 ; [+3]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K7 ["POINT_HANDLE_OUTLINE_COLOR3"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K8 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K11 [{"Position", "ZIndex"}]
       29 GETTABLEKS                       R8 R0 K9 ["Position"]
       31 SETTABLEKS                       R8 R7 K9 ["Position"]
       33 GETTABLEKS                       R8 R0 K10 ["ZIndex"]
       35 SETTABLEKS                       R8 R7 K10 ["ZIndex"]
       37 DUPTABLE                         R8 K14 [{"Outer", "Inner"}]
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R9 R9 K8 ["createElement"]
       41 LOADK                            R10 K15 ["ImageButton"]
       42 NEWTABLE                         R11 8 0
       44 GETIMPORT                        R12 K18 [Vector2.new]
       46 LOADK                            R13 K19 [0.5]
       47 LOADK                            R14 K19 [0.5]
       48 CALL                             R12 2 1
       49 SETTABLEKS                       R12 R11 K20 ["AnchorPoint"]
       51 GETIMPORT                        R12 K23 [UDim2.fromOffset]
       53 LOADN                            R15 2
       54 MUL                              R14 R15 R2
       55 ADD                              R13 R1 R14
       56 LOADN                            R16 2
       57 MUL                              R15 R16 R2
       58 ADD                              R14 R1 R15
       59 CALL                             R12 2 1
       60 SETTABLEKS                       R12 R11 K0 ["Size"]
       62 GETTABLEKS                       R12 R0 K24 ["Image"]
       64 JUMPIF                           R12 ; [+3]
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R12 R12 K25 ["POINT_HANDLE_IMAGE"]
       68 SETTABLEKS                       R12 R11 K24 ["Image"]
       70 JUMPIFNOTEQKN                    R2 K26 [0] ; [+3]
       72 MOVE                             R12 R3
       73 JUMP                             ; [+1]
       74 MOVE                             R12 R4
       75 SETTABLEKS                       R12 R11 K27 ["ImageColor3"]
       77 LOADN                            R12 1
       78 SETTABLEKS                       R12 R11 K28 ["BackgroundTransparency"]
       80 LOADN                            R12 1
       81 SETTABLEKS                       R12 R11 K10 ["ZIndex"]
       83 GETUPVAL                         R12 1
       84 GETTABLEKS                       R12 R12 K29 ["Tag"]
       86 GETTABLEKS                       R13 R0 K29 ["Tag"]
       88 SETTABLE                         R13 R11 R12
       89 GETTABLEKS                       R12 R0 K30 ["children"]
       91 CALL                             R9 3 1
       92 SETTABLEKS                       R9 R8 K12 ["Outer"]
       94 LOADB                            R9 0
       95 LOADN                            R10 0
       96 JUMPIFNOTLT                      R10 R2 ; [+57]
       98 GETUPVAL                         R9 1
       99 GETTABLEKS                       R9 R9 K8 ["createElement"]
      101 LOADK                            R10 K15 ["ImageButton"]
      102 NEWTABLE                         R11 16 0
      104 GETIMPORT                        R12 K18 [Vector2.new]
      106 LOADK                            R13 K19 [0.5]
      107 LOADK                            R14 K19 [0.5]
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K20 ["AnchorPoint"]
      111 GETIMPORT                        R12 K32 [UDim2.fromScale]
      113 LOADK                            R13 K19 [0.5]
      114 LOADK                            R14 K19 [0.5]
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K9 ["Position"]
      118 GETIMPORT                        R12 K23 [UDim2.fromOffset]
      120 MOVE                             R13 R1
      121 MOVE                             R14 R1
      122 CALL                             R12 2 1
      123 SETTABLEKS                       R12 R11 K0 ["Size"]
      125 LOADB                            R12 0
      126 SETTABLEKS                       R12 R11 K33 ["Interactable"]
      128 LOADB                            R12 0
      129 SETTABLEKS                       R12 R11 K34 ["Selectable"]
      131 GETTABLEKS                       R12 R0 K24 ["Image"]
      133 JUMPIF                           R12 ; [+3]
      134 GETUPVAL                         R12 0
      135 GETTABLEKS                       R12 R12 K25 ["POINT_HANDLE_IMAGE"]
      137 SETTABLEKS                       R12 R11 K24 ["Image"]
      139 SETTABLEKS                       R3 R11 K27 ["ImageColor3"]
      141 LOADN                            R12 1
      142 SETTABLEKS                       R12 R11 K28 ["BackgroundTransparency"]
      144 LOADN                            R12 2
      145 SETTABLEKS                       R12 R11 K10 ["ZIndex"]
      147 GETUPVAL                         R12 1
      148 GETTABLEKS                       R12 R12 K29 ["Tag"]
      150 GETTABLEKS                       R13 R0 K29 ["Tag"]
      152 SETTABLE                         R13 R11 R12
      153 CALL                             R9 2 1
      154 SETTABLEKS                       R9 R8 K13 ["Inner"]
      156 CALL                             R5 3 -1
      157 RETURN                           R5 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Positioner"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["StyleUtil"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K13 [PROTO_0]
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 SETGLOBAL                        R6 K14 ["Point"]
       39 GETGLOBAL                        R6 K14 ["Point"]
       41 RETURN                           R6 1
