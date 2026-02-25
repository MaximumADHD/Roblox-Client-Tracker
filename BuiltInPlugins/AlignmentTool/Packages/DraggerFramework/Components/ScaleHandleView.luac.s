PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETTABLEKS                       R4 R2 K1 ["Value"]
        8 MUL                              R3 R4 R1
        9 JUMPIF                           R3 ; [+1]
       10 MOVE                             R3 R1
       11 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [CFrame.new]
        2 LOADN                            R2 0
        3 LOADN                            R3 0
        4 GETUPVAL                         R6 0
        5 MINUS                            R5 R6
        6 GETTABLEKS                       R6 R0 K3 ["Scale"]
        8 MUL                              R4 R5 R6
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 1
        1 LOADK                            R4 K0 ["ScaleHandleOffset"]
        2 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETTABLEKS                       R3 R2 K3 ["Value"]
        8 MULK                             R1 R3 K2 [1.5]
        9 JUMPIF                           R1 ; [+1]
       10 LOADK                            R1 K2 [1.5]
       11 SETUPVAL                         R1 0
       12 GETUPVAL                         R2 1
       13 LOADK                            R4 K4 ["ScaleHandleRadius"]
       14 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETTABLEKS                       R3 R2 K3 ["Value"]
       20 MULK                             R1 R3 K5 [0.5]
       21 JUMPIF                           R1 ; [+1]
       22 LOADK                            R1 K5 [0.5]
       23 SETUPVAL                         R1 2
       24 GETUPVAL                         R2 1
       25 LOADK                            R4 K6 ["ScaleHandleTransparencyStart"]
       26 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
       28 CALL                             R2 2 1
       29 JUMPIFNOT                        R2 ; [+4]
       30 GETTABLEKS                       R3 R2 K3 ["Value"]
       32 MULK                             R1 R3 K7 [0.75]
       33 JUMPIF                           R1 ; [+1]
       34 LOADK                            R1 K7 [0.75]
       35 SETUPVAL                         R1 3
       36 GETUPVAL                         R2 1
       37 LOADK                            R4 K8 ["ScaleHandleTransparencyEnd"]
       38 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
       40 CALL                             R2 2 1
       41 JUMPIFNOT                        R2 ; [+4]
       42 GETTABLEKS                       R3 R2 K3 ["Value"]
       44 MULK                             R1 R3 K9 [0.2]
       45 JUMPIF                           R1 ; [+1]
       46 LOADK                            R1 K9 [0.2]
       47 SETUPVAL                         R1 4
       48 NEWTABLE                         R1 2 0
       50 GETTABLEKS                       R3 R0 K10 ["props"]
       52 GETTABLEKS                       R2 R3 K11 ["Color"]
       54 GETTABLEKS                       R5 R0 K10 ["props"]
       56 GETTABLEKS                       R4 R5 K12 ["HandleCFrame"]
       58 GETIMPORT                        R5 K15 [CFrame.new]
       60 LOADN                            R6 0
       61 LOADN                            R7 0
       62 GETUPVAL                         R10 0
       63 MINUS                            R9 R10
       64 GETTABLEKS                       R11 R0 K10 ["props"]
       66 GETTABLEKS                       R10 R11 K16 ["Scale"]
       68 MUL                              R8 R9 R10
       69 CALL                             R5 3 1
       70 MUL                              R3 R4 R5
       71 GETUPVAL                         R5 2
       72 GETTABLEKS                       R7 R0 K10 ["props"]
       74 GETTABLEKS                       R6 R7 K16 ["Scale"]
       76 MUL                              R4 R5 R6
       77 GETTABLEKS                       R6 R0 K10 ["props"]
       79 GETTABLEKS                       R5 R6 K17 ["Thin"]
       81 JUMPIFNOT                        R5 ; [+1]
       82 MULK                             R4 R4 K18 [0.34]
       83 GETTABLEKS                       R6 R0 K10 ["props"]
       85 GETTABLEKS                       R5 R6 K19 ["Hovered"]
       87 JUMPIF                           R5 ; [+31]
       88 GETUPVAL                         R6 5
       89 GETTABLEKS                       R5 R6 K20 ["createElement"]
       91 LOADK                            R6 K21 ["SphereHandleAdornment"]
       92 DUPTABLE                         R7 K29 [{"Adornee", "AlwaysOnTop", "CFrame", "Color3", "Radius", "Transparency", "ZIndex", "AdornCullingMode"}]
       93 GETUPVAL                         R9 1
       94 GETTABLEKS                       R8 R9 K30 ["Terrain"]
       96 SETTABLEKS                       R8 R7 K22 ["Adornee"]
       98 LOADB                            R8 1
       99 SETTABLEKS                       R8 R7 K23 ["AlwaysOnTop"]
      101 SETTABLEKS                       R3 R7 K13 ["CFrame"]
      103 SETTABLEKS                       R2 R7 K24 ["Color3"]
      105 SETTABLEKS                       R4 R7 K25 ["Radius"]
      107 GETUPVAL                         R8 3
      108 SETTABLEKS                       R8 R7 K26 ["Transparency"]
      110 LOADN                            R8 1
      111 SETTABLEKS                       R8 R7 K27 ["ZIndex"]
      113 GETUPVAL                         R8 6
      114 SETTABLEKS                       R8 R7 K28 ["AdornCullingMode"]
      116 CALL                             R5 2 1
      117 SETTABLEKS                       R5 R1 K31 ["HiddenHandle"]
      119 GETUPVAL                         R5 4
      120 GETTABLEKS                       R7 R0 K10 ["props"]
      122 GETTABLEKS                       R6 R7 K19 ["Hovered"]
      124 JUMPIFNOT                        R6 ; [+2]
      125 MULK                             R4 R4 K32 [1.15]
      126 LOADN                            R5 0
      127 GETUPVAL                         R7 5
      128 GETTABLEKS                       R6 R7 K20 ["createElement"]
      130 LOADK                            R7 K21 ["SphereHandleAdornment"]
      131 DUPTABLE                         R8 K29 [{"Adornee", "AlwaysOnTop", "CFrame", "Color3", "Radius", "Transparency", "ZIndex", "AdornCullingMode"}]
      132 GETUPVAL                         R10 1
      133 GETTABLEKS                       R9 R10 K30 ["Terrain"]
      135 SETTABLEKS                       R9 R8 K22 ["Adornee"]
      137 GETTABLEKS                       R10 R0 K10 ["props"]
      139 GETTABLEKS                       R9 R10 K19 ["Hovered"]
      141 SETTABLEKS                       R9 R8 K23 ["AlwaysOnTop"]
      143 SETTABLEKS                       R3 R8 K13 ["CFrame"]
      145 SETTABLEKS                       R2 R8 K24 ["Color3"]
      147 SETTABLEKS                       R4 R8 K25 ["Radius"]
      149 SETTABLEKS                       R5 R8 K26 ["Transparency"]
      151 LOADN                            R9 0
      152 SETTABLEKS                       R9 R8 K27 ["ZIndex"]
      154 GETUPVAL                         R9 6
      155 SETTABLEKS                       R9 R8 K28 ["AdornCullingMode"]
      157 CALL                             R6 2 1
      158 SETTABLEKS                       R6 R1 K33 ["Handle"]
      160 GETUPVAL                         R7 5
      161 GETTABLEKS                       R6 R7 K20 ["createElement"]
      163 LOADK                            R7 K34 ["Folder"]
      164 NEWTABLE                         R8 0 0
      166 MOVE                             R9 R1
      167 CALL                             R6 3 -1
      168 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["Scale"]
        3 MUL                              R2 R3 R4
        4 GETTABLEKS                       R3 R1 K1 ["Unit"]
        6 GETTABLEKS                       R5 R0 K2 ["HandleCFrame"]
        8 LOADN                            R7 0
        9 LOADN                            R8 0
       10 GETUPVAL                         R11 1
       11 MINUS                            R10 R11
       12 GETTABLEKS                       R11 R0 K0 ["Scale"]
       14 MUL                              R9 R10 R11
       15 FASTCALL                         VECTOR ; [+2]
       16 GETIMPORT                        R6 K5 [Vector3.new]
       18 CALL                             R6 3 1
       19 MUL                              R4 R5 R6
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R5 R6 K6 ["intersectRaySphere"]
       23 GETTABLEKS                       R6 R3 K7 ["Origin"]
       25 GETTABLEKS                       R7 R3 K8 ["Direction"]
       27 MOVE                             R8 R4
       28 MOVE                             R9 R2
       29 CALL                             R5 4 2
       30 JUMPIFNOT                        R5 ; [+1]
       31 RETURN                           R6 1
       32 LOADNIL                          R7
       33 RETURN                           R7 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K1 ["Scale"]
        3 MUL                              R3 R4 R5
        4 MULK                             R2 R3 K0 [2.5]
        5 GETTABLEKS                       R4 R0 K2 ["HandleCFrame"]
        7 LOADN                            R6 0
        8 LOADN                            R7 0
        9 GETUPVAL                         R10 1
       10 MINUS                            R9 R10
       11 GETTABLEKS                       R10 R0 K1 ["Scale"]
       13 MUL                              R8 R9 R10
       14 FASTCALL                         VECTOR ; [+2]
       15 GETIMPORT                        R5 K5 [Vector3.new]
       17 CALL                             R5 3 1
       18 MUL                              R3 R4 R5
       19 GETTABLEKS                       R5 R1 K6 ["Direction"]
       21 GETTABLEKS                       R4 R5 K7 ["Unit"]
       23 GETTABLEKS                       R6 R1 K8 ["Origin"]
       25 SUB                              R5 R3 R6
       26 MOVE                             R7 R4
       27 NAMECALL                         R5 R5 K9 ["Dot"]
       29 CALL                             R5 2 1
       30 GETTABLEKS                       R7 R1 K8 ["Origin"]
       32 MUL                              R8 R4 R5
       33 ADD                              R6 R7 R8
       34 SUB                              R8 R3 R6
       35 GETTABLEKS                       R7 R8 K10 ["Magnitude"]
       37 SUB                              R8 R7 R2
       38 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [require]
       17 GETTABLEKS                       R4 R2 K9 ["Roact"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K8 [require]
       22 GETTABLEKS                       R6 R1 K10 ["Utility"]
       24 GETTABLEKS                       R5 R6 K11 ["Math"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K15 [Enum.AdornCullingMode.Never]
       29 GETTABLEKS                       R6 R3 K16 ["PureComponent"]
       31 LOADK                            R8 K17 ["ScaleHandleView"]
       32 NAMECALL                         R6 R6 K18 ["extend"]
       34 CALL                             R6 2 1
       35 LOADK                            R7 K19 [0.5]
       36 LOADK                            R8 K20 [0.75]
       37 LOADK                            R9 K21 [0.2]
       38 LOADK                            R10 K22 [1.5]
       39 DUPCLOSURE                       R11 K23 [PROTO_0]
       40 CAPTURE                          VAL R0
       41 NEWCLOSURE                       R12 P1
       42 CAPTURE                          REF R10
       43 SETTABLEKS                       R12 R6 K24 ["getLocalHandleOffset"]
       45 NEWCLOSURE                       R12 P2
       46 CAPTURE                          REF R10
       47 CAPTURE                          VAL R0
       48 CAPTURE                          REF R7
       49 CAPTURE                          REF R8
       50 CAPTURE                          REF R9
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 SETTABLEKS                       R12 R6 K25 ["render"]
       55 NEWCLOSURE                       R12 P3
       56 CAPTURE                          REF R7
       57 CAPTURE                          REF R10
       58 CAPTURE                          VAL R4
       59 SETTABLEKS                       R12 R6 K26 ["hitTest"]
       61 NEWCLOSURE                       R12 P4
       62 CAPTURE                          REF R7
       63 CAPTURE                          REF R10
       64 SETTABLEKS                       R12 R6 K27 ["distanceFromHandle"]
       66 CLOSEUPVALS                      R7
       67 RETURN                           R6 1
