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
        0 GETTABLEKS                       R1 R0 K0 ["Scale"]
        2 GETIMPORT                        R2 K3 [CFrame.new]
        4 LOADN                            R3 0
        5 LOADN                            R4 0
        6 GETUPVAL                         R7 0
        7 MINUS                            R6 R7
        8 MUL                              R5 R6 R1
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

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
       52 GETTABLEKS                       R2 R3 K11 ["Scale"]
       54 GETTABLEKS                       R4 R0 K10 ["props"]
       56 GETTABLEKS                       R3 R4 K12 ["Color"]
       58 GETTABLEKS                       R6 R0 K10 ["props"]
       60 GETTABLEKS                       R5 R6 K13 ["HandleCFrame"]
       62 GETIMPORT                        R6 K16 [CFrame.new]
       64 LOADN                            R7 0
       65 LOADN                            R8 0
       66 GETUPVAL                         R11 0
       67 MINUS                            R10 R11
       68 MUL                              R9 R10 R2
       69 CALL                             R6 3 1
       70 MUL                              R4 R5 R6
       71 GETUPVAL                         R6 2
       72 MUL                              R5 R6 R2
       73 GETTABLEKS                       R7 R0 K10 ["props"]
       75 GETTABLEKS                       R6 R7 K17 ["Thin"]
       77 JUMPIFNOT                        R6 ; [+1]
       78 MULK                             R5 R5 K18 [0.34]
       79 GETTABLEKS                       R7 R0 K10 ["props"]
       81 GETTABLEKS                       R6 R7 K19 ["Hovered"]
       83 JUMPIF                           R6 ; [+31]
       84 GETUPVAL                         R7 5
       85 GETTABLEKS                       R6 R7 K20 ["createElement"]
       87 LOADK                            R7 K21 ["SphereHandleAdornment"]
       88 DUPTABLE                         R8 K29 [{"Adornee", "AlwaysOnTop", "CFrame", "Color3", "Radius", "Transparency", "ZIndex", "AdornCullingMode"}]
       89 GETUPVAL                         R10 1
       90 GETTABLEKS                       R9 R10 K30 ["Terrain"]
       92 SETTABLEKS                       R9 R8 K22 ["Adornee"]
       94 LOADB                            R9 1
       95 SETTABLEKS                       R9 R8 K23 ["AlwaysOnTop"]
       97 SETTABLEKS                       R4 R8 K14 ["CFrame"]
       99 SETTABLEKS                       R3 R8 K24 ["Color3"]
      101 SETTABLEKS                       R5 R8 K25 ["Radius"]
      103 GETUPVAL                         R9 3
      104 SETTABLEKS                       R9 R8 K26 ["Transparency"]
      106 LOADN                            R9 1
      107 SETTABLEKS                       R9 R8 K27 ["ZIndex"]
      109 GETUPVAL                         R9 6
      110 SETTABLEKS                       R9 R8 K28 ["AdornCullingMode"]
      112 CALL                             R6 2 1
      113 SETTABLEKS                       R6 R1 K31 ["HiddenHandle"]
      115 GETUPVAL                         R6 4
      116 GETTABLEKS                       R8 R0 K10 ["props"]
      118 GETTABLEKS                       R7 R8 K19 ["Hovered"]
      120 JUMPIFNOT                        R7 ; [+2]
      121 MULK                             R5 R5 K32 [1.15]
      122 LOADN                            R6 0
      123 GETUPVAL                         R8 5
      124 GETTABLEKS                       R7 R8 K20 ["createElement"]
      126 LOADK                            R8 K21 ["SphereHandleAdornment"]
      127 DUPTABLE                         R9 K29 [{"Adornee", "AlwaysOnTop", "CFrame", "Color3", "Radius", "Transparency", "ZIndex", "AdornCullingMode"}]
      128 GETUPVAL                         R11 1
      129 GETTABLEKS                       R10 R11 K30 ["Terrain"]
      131 SETTABLEKS                       R10 R9 K22 ["Adornee"]
      133 GETTABLEKS                       R11 R0 K10 ["props"]
      135 GETTABLEKS                       R10 R11 K19 ["Hovered"]
      137 SETTABLEKS                       R10 R9 K23 ["AlwaysOnTop"]
      139 SETTABLEKS                       R4 R9 K14 ["CFrame"]
      141 SETTABLEKS                       R3 R9 K24 ["Color3"]
      143 SETTABLEKS                       R5 R9 K25 ["Radius"]
      145 SETTABLEKS                       R6 R9 K26 ["Transparency"]
      147 LOADN                            R10 0
      148 SETTABLEKS                       R10 R9 K27 ["ZIndex"]
      150 GETUPVAL                         R10 6
      151 SETTABLEKS                       R10 R9 K28 ["AdornCullingMode"]
      153 CALL                             R7 2 1
      154 SETTABLEKS                       R7 R1 K33 ["Handle"]
      156 GETUPVAL                         R8 5
      157 GETTABLEKS                       R7 R8 K20 ["createElement"]
      159 LOADK                            R8 K34 ["Folder"]
      160 NEWTABLE                         R9 0 0
      162 MOVE                             R10 R1
      163 CALL                             R7 3 -1
      164 RETURN                           R7 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Scale"]
        2 GETUPVAL                         R4 0
        3 MUL                              R3 R4 R2
        4 GETTABLEKS                       R4 R1 K1 ["Unit"]
        6 GETTABLEKS                       R6 R0 K2 ["HandleCFrame"]
        8 LOADN                            R8 0
        9 LOADN                            R9 0
       10 GETUPVAL                         R12 1
       11 MINUS                            R11 R12
       12 MUL                              R10 R11 R2
       13 FASTCALL                         VECTOR ; [+2]
       14 GETIMPORT                        R7 K5 [Vector3.new]
       16 CALL                             R7 3 1
       17 MUL                              R5 R6 R7
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R6 R7 K6 ["intersectRaySphere"]
       21 GETTABLEKS                       R7 R4 K7 ["Origin"]
       23 GETTABLEKS                       R8 R4 K8 ["Direction"]
       25 MOVE                             R9 R5
       26 MOVE                             R10 R3
       27 CALL                             R6 4 2
       28 JUMPIFNOT                        R6 ; [+1]
       29 RETURN                           R7 1
       30 LOADNIL                          R8
       31 RETURN                           R8 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Scale"]
        2 GETUPVAL                         R5 0
        3 MUL                              R4 R5 R2
        4 MULK                             R3 R4 K1 [2.5]
        5 GETTABLEKS                       R5 R0 K2 ["HandleCFrame"]
        7 LOADN                            R7 0
        8 LOADN                            R8 0
        9 GETUPVAL                         R11 1
       10 MINUS                            R10 R11
       11 MUL                              R9 R10 R2
       12 FASTCALL                         VECTOR ; [+2]
       13 GETIMPORT                        R6 K5 [Vector3.new]
       15 CALL                             R6 3 1
       16 MUL                              R4 R5 R6
       17 GETTABLEKS                       R6 R1 K6 ["Direction"]
       19 GETTABLEKS                       R5 R6 K7 ["Unit"]
       21 GETTABLEKS                       R7 R1 K8 ["Origin"]
       23 SUB                              R6 R4 R7
       24 MOVE                             R8 R5
       25 NAMECALL                         R6 R6 K9 ["Dot"]
       27 CALL                             R6 2 1
       28 GETTABLEKS                       R8 R1 K8 ["Origin"]
       30 MUL                              R9 R5 R6
       31 ADD                              R7 R8 R9
       32 SUB                              R9 R4 R7
       33 GETTABLEKS                       R8 R9 K10 ["Magnitude"]
       35 SUB                              R9 R8 R3
       36 RETURN                           R9 1

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
       22 GETTABLEKS                       R6 R1 K10 ["Flags"]
       24 GETTABLEKS                       R5 R6 K11 ["getFFlagNextGenDraggers"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K8 [require]
       29 GETTABLEKS                       R7 R1 K12 ["Utility"]
       31 GETTABLEKS                       R6 R7 K13 ["Math"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K17 [Enum.AdornCullingMode.Never]
       36 GETTABLEKS                       R7 R3 K18 ["PureComponent"]
       38 LOADK                            R9 K19 ["ScaleHandleView"]
       39 NAMECALL                         R7 R7 K20 ["extend"]
       41 CALL                             R7 2 1
       42 LOADK                            R8 K21 [0.5]
       43 LOADK                            R9 K22 [0.75]
       44 LOADK                            R10 K23 [0.2]
       45 LOADK                            R11 K24 [1.5]
       46 DUPCLOSURE                       R12 K25 [PROTO_0]
       47 CAPTURE                          VAL R0
       48 NEWCLOSURE                       R13 P1
       49 CAPTURE                          REF R11
       50 SETTABLEKS                       R13 R7 K26 ["getLocalHandleOffset"]
       52 NEWCLOSURE                       R13 P2
       53 CAPTURE                          REF R11
       54 CAPTURE                          VAL R0
       55 CAPTURE                          REF R8
       56 CAPTURE                          REF R9
       57 CAPTURE                          REF R10
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R6
       60 SETTABLEKS                       R13 R7 K27 ["render"]
       62 NEWCLOSURE                       R13 P3
       63 CAPTURE                          REF R8
       64 CAPTURE                          REF R11
       65 CAPTURE                          VAL R5
       66 SETTABLEKS                       R13 R7 K28 ["hitTest"]
       68 NEWCLOSURE                       R13 P4
       69 CAPTURE                          REF R8
       70 CAPTURE                          REF R11
       71 SETTABLEKS                       R13 R7 K29 ["distanceFromHandle"]
       73 CLOSEUPVALS                      R8
       74 RETURN                           R7 1
