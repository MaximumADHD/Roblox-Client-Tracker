PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Y"]
        5 LOADN                            R3 0
        6 JUMPIFNOTLT                      R2 R3 ; [+60]
        8 LOADN                            R4 0
        9 LOADN                            R2 3
       10 LOADN                            R3 1
       11 FORNPREP                         R2
       12 GETIMPORT                        R6 K3 [Vector2.new]
       14 LOADN                            R7 253
       15 MOVE                             R8 R4
       16 CALL                             R6 2 1
       17 GETTABLEKS                       R6 R6 K4 ["Unit"]
       19 GETUPVAL                         R7 1
       20 MUL                              R5 R6 R7
       21 LOADN                            R9 0
       22 GETTABLEKS                       R10 R5 K5 ["X"]
       24 GETTABLEKS                       R11 R5 K0 ["Y"]
       26 FASTCALL                         VECTOR ; [+2]
       27 GETIMPORT                        R8 K7 [Vector3.new]
       29 CALL                             R8 3 1
       30 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       32 MOVE                             R7 R1
       33 GETIMPORT                        R6 K10 [table.insert]
       35 CALL                             R6 2 0
       36 FORNLOOP                         R2
       37 LOADN                            R4 253
       38 LOADN                            R2 0
       39 LOADN                            R3 1
       40 FORNPREP                         R2
       41 GETIMPORT                        R6 K3 [Vector2.new]
       43 MOVE                             R7 R4
       44 LOADN                            R8 3
       45 CALL                             R6 2 1
       46 GETTABLEKS                       R6 R6 K4 ["Unit"]
       48 GETUPVAL                         R7 1
       49 MUL                              R5 R6 R7
       50 LOADN                            R9 0
       51 GETTABLEKS                       R10 R5 K5 ["X"]
       53 GETTABLEKS                       R11 R5 K0 ["Y"]
       55 FASTCALL                         VECTOR ; [+2]
       56 GETIMPORT                        R8 K7 [Vector3.new]
       58 CALL                             R8 3 1
       59 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       61 MOVE                             R7 R1
       62 GETIMPORT                        R6 K10 [table.insert]
       64 CALL                             R6 2 0
       65 FORNLOOP                         R2
       66 JUMP                             ; [+58]
       67 LOADN                            R4 0
       68 LOADN                            R2 3
       69 LOADN                            R3 1
       70 FORNPREP                         R2
       71 GETIMPORT                        R6 K3 [Vector2.new]
       73 MOVE                             R7 R4
       74 LOADN                            R8 3
       75 CALL                             R6 2 1
       76 GETTABLEKS                       R6 R6 K4 ["Unit"]
       78 GETUPVAL                         R7 1
       79 MUL                              R5 R6 R7
       80 LOADN                            R9 0
       81 GETTABLEKS                       R10 R5 K5 ["X"]
       83 GETTABLEKS                       R11 R5 K0 ["Y"]
       85 FASTCALL                         VECTOR ; [+2]
       86 GETIMPORT                        R8 K7 [Vector3.new]
       88 CALL                             R8 3 1
       89 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       91 MOVE                             R7 R1
       92 GETIMPORT                        R6 K10 [table.insert]
       94 CALL                             R6 2 0
       95 FORNLOOP                         R2
       96 LOADN                            R4 3
       97 LOADN                            R2 0
       98 LOADN                            R3 255
       99 FORNPREP                         R2
      100 GETIMPORT                        R6 K3 [Vector2.new]
      102 LOADN                            R7 3
      103 MOVE                             R8 R4
      104 CALL                             R6 2 1
      105 GETTABLEKS                       R6 R6 K4 ["Unit"]
      107 GETUPVAL                         R7 1
      108 MUL                              R5 R6 R7
      109 LOADN                            R9 0
      110 GETTABLEKS                       R10 R5 K5 ["X"]
      112 GETTABLEKS                       R11 R5 K0 ["Y"]
      114 FASTCALL                         VECTOR ; [+2]
      115 GETIMPORT                        R8 K7 [Vector3.new]
      117 CALL                             R8 3 1
      118 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      120 MOVE                             R7 R1
      121 GETIMPORT                        R6 K10 [table.insert]
      123 CALL                             R6 2 0
      124 FORNLOOP                         R2
      125 MOVE                             R4 R1
      126 LOADB                            R5 0
      127 NAMECALL                         R2 R0 K11 ["AddPath"]
      129 CALL                             R2 3 0
      130 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R5 0
        3 GETUPVAL                         R6 0
        4 MUL                              R4 R5 R6
        5 GETUPVAL                         R6 1
        6 GETUPVAL                         R7 1
        7 MUL                              R5 R6 R7
        8 SUB                              R3 R4 R5
        9 FASTCALL1                        MATH_SQRT R3 ; [+2]
       10 GETIMPORT                        R2 K2 [math.sqrt]
       12 CALL                             R2 1 1
       13 LOADN                            R5 253
       14 LOADN                            R3 3
       15 LOADN                            R4 1
       16 FORNPREP                         R3
       17 GETIMPORT                        R7 K5 [Vector2.new]
       19 LOADN                            R8 253
       20 MOVE                             R9 R5
       21 CALL                             R7 2 1
       22 GETTABLEKS                       R7 R7 K6 ["Unit"]
       24 MUL                              R6 R7 R2
       25 GETTABLEKS                       R10 R6 K7 ["X"]
       27 GETUPVAL                         R11 1
       28 GETTABLEKS                       R12 R6 K8 ["Y"]
       30 FASTCALL                         VECTOR ; [+2]
       31 GETIMPORT                        R9 K10 [Vector3.new]
       33 CALL                             R9 3 1
       34 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       36 MOVE                             R8 R1
       37 GETIMPORT                        R7 K13 [table.insert]
       39 CALL                             R7 2 0
       40 FORNLOOP                         R3
       41 LOADN                            R5 253
       42 LOADN                            R3 3
       43 LOADN                            R4 1
       44 FORNPREP                         R3
       45 GETIMPORT                        R7 K5 [Vector2.new]
       47 MOVE                             R8 R5
       48 LOADN                            R9 3
       49 CALL                             R7 2 1
       50 GETTABLEKS                       R7 R7 K6 ["Unit"]
       52 MUL                              R6 R7 R2
       53 GETTABLEKS                       R10 R6 K7 ["X"]
       55 GETUPVAL                         R11 1
       56 GETTABLEKS                       R12 R6 K8 ["Y"]
       58 FASTCALL                         VECTOR ; [+2]
       59 GETIMPORT                        R9 K10 [Vector3.new]
       61 CALL                             R9 3 1
       62 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       64 MOVE                             R8 R1
       65 GETIMPORT                        R7 K13 [table.insert]
       67 CALL                             R7 2 0
       68 FORNLOOP                         R3
       69 LOADN                            R5 3
       70 LOADN                            R3 253
       71 LOADN                            R4 255
       72 FORNPREP                         R3
       73 GETIMPORT                        R7 K5 [Vector2.new]
       75 LOADN                            R8 3
       76 MOVE                             R9 R5
       77 CALL                             R7 2 1
       78 GETTABLEKS                       R7 R7 K6 ["Unit"]
       80 MUL                              R6 R7 R2
       81 GETTABLEKS                       R10 R6 K7 ["X"]
       83 GETUPVAL                         R11 1
       84 GETTABLEKS                       R12 R6 K8 ["Y"]
       86 FASTCALL                         VECTOR ; [+2]
       87 GETIMPORT                        R9 K10 [Vector3.new]
       89 CALL                             R9 3 1
       90 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       92 MOVE                             R8 R1
       93 GETIMPORT                        R7 K13 [table.insert]
       95 CALL                             R7 2 0
       96 FORNLOOP                         R3
       97 LOADN                            R5 3
       98 LOADN                            R3 253
       99 LOADN                            R4 255
      100 FORNPREP                         R3
      101 GETIMPORT                        R7 K5 [Vector2.new]
      103 MOVE                             R8 R5
      104 LOADN                            R9 253
      105 CALL                             R7 2 1
      106 GETTABLEKS                       R7 R7 K6 ["Unit"]
      108 MUL                              R6 R7 R2
      109 GETTABLEKS                       R10 R6 K7 ["X"]
      111 GETUPVAL                         R11 1
      112 GETTABLEKS                       R12 R6 K8 ["Y"]
      114 FASTCALL                         VECTOR ; [+2]
      115 GETIMPORT                        R9 K10 [Vector3.new]
      117 CALL                             R9 3 1
      118 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      120 MOVE                             R8 R1
      121 GETIMPORT                        R7 K13 [table.insert]
      123 CALL                             R7 2 0
      124 FORNLOOP                         R3
      125 MOVE                             R5 R1
      126 LOADB                            R6 1
      127 NAMECALL                         R3 R0 K14 ["AddPath"]
      129 CALL                             R3 3 0
      130 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Y"]
        3 LOADN                            R3 0
        4 JUMPIFNOTLE                      R3 R2 ; [+3]
        6 LOADN                            R1 1
        7 JUMP                             ; [+1]
        8 LOADN                            R1 255
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K1 ["GridSize"]
       12 MUL                              R4 R1 R5
       13 GETUPVAL                         R5 2
       14 MUL                              R2 R1 R5
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K1 ["GridSize"]
       18 MUL                              R3 R1 R5
       19 FORNPREP                         R2
       20 GETUPVAL                         R7 3
       21 SUB                              R6 R4 R7
       22 FASTCALL1                        MATH_ABS R6 ; [+2]
       23 GETIMPORT                        R5 K4 [math.abs]
       25 CALL                             R5 1 1
       26 LOADK                            R6 K5 [0.01]
       27 JUMPIFLT                         R5 R6 ; [+67]
       29 GETUPVAL                         R8 2
       30 GETUPVAL                         R9 2
       31 MUL                              R7 R8 R9
       32 MUL                              R8 R4 R4
       33 SUB                              R6 R7 R8
       34 FASTCALL1                        MATH_SQRT R6 ; [+2]
       35 GETIMPORT                        R5 K7 [math.sqrt]
       37 CALL                             R5 1 1
       38 MULK                             R7 R5 K8 [2]
       39 GETUPVAL                         R10 4
       40 DIVK                             R9 R10 K8 [2]
       41 FASTCALL1                        MATH_SIN R9 ; [+2]
       42 GETIMPORT                        R8 K10 [math.sin]
       44 CALL                             R8 1 1
       45 MUL                              R6 R7 R8
       46 GETUPVAL                         R9 4
       47 DIVK                             R8 R9 K8 [2]
       48 SUBRK                            R7 R11 K8 [2]
       49 FASTCALL1                        MATH_COS R7 ; [+3]
       50 MOVE                             R10 R7
       51 GETIMPORT                        R9 K13 [math.cos]
       53 CALL                             R9 1 1
       54 MUL                              R8 R6 R9
       55 FASTCALL1                        MATH_SIN R7 ; [+3]
       56 MOVE                             R11 R7
       57 GETIMPORT                        R10 K10 [math.sin]
       59 CALL                             R10 1 1
       60 MUL                              R9 R6 R10
       61 SUB                              R13 R5 R9
       62 FASTCALL3                        VECTOR R8 R4 R13
       64 MOVE                             R11 R8
       65 MOVE                             R12 R4
       66 GETIMPORT                        R10 K16 [Vector3.new]
       68 CALL                             R10 3 1
       69 LOADN                            R12 0
       70 FASTCALL3                        VECTOR R12 R4 R5
       72 MOVE                             R13 R4
       73 MOVE                             R14 R5
       74 GETIMPORT                        R11 K16 [Vector3.new]
       76 CALL                             R11 3 1
       77 MINUS                            R13 R8
       78 SUB                              R15 R5 R9
       79 FASTCALL3                        VECTOR R13 R4 R15
       81 MOVE                             R14 R4
       82 GETIMPORT                        R12 K16 [Vector3.new]
       84 CALL                             R12 3 1
       85 MOVE                             R15 R10
       86 MOVE                             R16 R11
       87 NAMECALL                         R13 R0 K17 ["AddLine"]
       89 CALL                             R13 3 0
       90 MOVE                             R15 R11
       91 MOVE                             R16 R12
       92 NAMECALL                         R13 R0 K17 ["AddLine"]
       94 CALL                             R13 3 0
       95 FORNLOOP                         R2
       96 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Part"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R5 R2 K3 ["X"]
        6 GETTABLEKS                       R6 R2 K4 ["Y"]
        8 GETTABLEKS                       R7 R2 K5 ["Z"]
       10 FASTCALL                         MATH_MIN ; [+2]
       11 GETIMPORT                        R4 K8 [math.min]
       13 CALL                             R4 3 1
       14 MULK                             R3 R4 K2 [0.5]
       15 GETTABLEKS                       R4 R1 K9 ["CFrame"]
       17 GETTABLEKS                       R6 R0 K10 ["WorldPosition"]
       19 NAMECALL                         R4 R4 K11 ["PointToObjectSpace"]
       21 CALL                             R4 2 1
       22 GETTABLEKS                       R5 R4 K4 ["Y"]
       24 GETTABLEKS                       R7 R4 K3 ["X"]
       26 GETTABLEKS                       R8 R4 K5 ["Z"]
       28 FASTCALL2                        MATH_ATAN2 R7 R8 ; [+3]
       30 GETIMPORT                        R6 K13 [math.atan2]
       32 CALL                             R6 2 1
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 NEWTABLE                         R8 8 0
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K14 ["createElement"]
       41 GETUPVAL                         R10 1
       42 DUPTABLE                         R11 K19 [{"Color3", "AlwaysOnTop", "Adornee", "Render"}]
       43 GETTABLEKS                       R12 R0 K20 ["PrimaryColor"]
       45 SETTABLEKS                       R12 R11 K15 ["Color3"]
       47 LOADB                            R12 1
       48 SETTABLEKS                       R12 R11 K16 ["AlwaysOnTop"]
       50 SETTABLEKS                       R1 R11 K17 ["Adornee"]
       52 NEWCLOSURE                       R12 P1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R12 R11 K18 ["Render"]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K21 ["LattitudeGuide"]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R9 R9 K14 ["createElement"]
       63 GETUPVAL                         R10 1
       64 DUPTABLE                         R11 K22 [{"Color3", "AlwaysOnTop", "Adornee", "CFrame", "Render"}]
       65 GETTABLEKS                       R12 R0 K20 ["PrimaryColor"]
       67 SETTABLEKS                       R12 R11 K15 ["Color3"]
       69 LOADB                            R12 1
       70 SETTABLEKS                       R12 R11 K16 ["AlwaysOnTop"]
       72 SETTABLEKS                       R1 R11 K17 ["Adornee"]
       74 GETIMPORT                        R12 K24 [CFrame.fromEulerAnglesYXZ]
       76 LOADN                            R13 0
       77 MOVE                             R14 R6
       78 LOADN                            R15 0
       79 CALL                             R12 3 1
       80 SETTABLEKS                       R12 R11 K9 ["CFrame"]
       82 SETTABLEKS                       R7 R11 K18 ["Render"]
       84 CALL                             R9 2 1
       85 SETTABLEKS                       R9 R8 K25 ["LongitudeGuide"]
       87 GETTABLEKS                       R9 R0 K26 ["GridSize"]
       89 JUMPIFNOT                        R9 ; [+90]
       90 GETTABLEKS                       R10 R0 K26 ["GridSize"]
       92 DIV                              R9 R10 R3
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R10 R10 K14 ["createElement"]
       96 GETUPVAL                         R11 1
       97 DUPTABLE                         R12 K22 [{"Color3", "AlwaysOnTop", "Adornee", "CFrame", "Render"}]
       98 GETTABLEKS                       R13 R0 K27 ["Color"]
      100 SETTABLEKS                       R13 R12 K15 ["Color3"]
      102 LOADB                            R13 0
      103 SETTABLEKS                       R13 R12 K16 ["AlwaysOnTop"]
      105 SETTABLEKS                       R1 R12 K17 ["Adornee"]
      107 GETIMPORT                        R13 K24 [CFrame.fromEulerAnglesYXZ]
      109 LOADN                            R14 0
      110 ADD                              R15 R6 R9
      111 LOADN                            R16 0
      112 CALL                             R13 3 1
      113 SETTABLEKS                       R13 R12 K9 ["CFrame"]
      115 SETTABLEKS                       R7 R12 K18 ["Render"]
      117 CALL                             R10 2 1
      118 SETTABLEKS                       R10 R8 K28 ["LongitudeRightSnap"]
      120 GETUPVAL                         R10 0
      121 GETTABLEKS                       R10 R10 K14 ["createElement"]
      123 GETUPVAL                         R11 1
      124 DUPTABLE                         R12 K22 [{"Color3", "AlwaysOnTop", "Adornee", "CFrame", "Render"}]
      125 GETTABLEKS                       R13 R0 K27 ["Color"]
      127 SETTABLEKS                       R13 R12 K15 ["Color3"]
      129 LOADB                            R13 0
      130 SETTABLEKS                       R13 R12 K16 ["AlwaysOnTop"]
      132 SETTABLEKS                       R1 R12 K17 ["Adornee"]
      134 GETIMPORT                        R13 K24 [CFrame.fromEulerAnglesYXZ]
      136 LOADN                            R14 0
      137 SUB                              R15 R6 R9
      138 LOADN                            R16 0
      139 CALL                             R13 3 1
      140 SETTABLEKS                       R13 R12 K9 ["CFrame"]
      142 SETTABLEKS                       R7 R12 K18 ["Render"]
      144 CALL                             R10 2 1
      145 SETTABLEKS                       R10 R8 K29 ["LongitudeLeftSnap"]
      147 NEWCLOSURE                       R10 P2
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R0
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R9
      153 GETUPVAL                         R11 0
      154 GETTABLEKS                       R11 R11 K14 ["createElement"]
      156 GETUPVAL                         R12 1
      157 DUPTABLE                         R13 K22 [{"Color3", "AlwaysOnTop", "Adornee", "CFrame", "Render"}]
      158 GETTABLEKS                       R14 R0 K27 ["Color"]
      160 SETTABLEKS                       R14 R13 K15 ["Color3"]
      162 LOADB                            R14 0
      163 SETTABLEKS                       R14 R13 K16 ["AlwaysOnTop"]
      165 SETTABLEKS                       R1 R13 K17 ["Adornee"]
      167 GETIMPORT                        R14 K24 [CFrame.fromEulerAnglesYXZ]
      169 LOADN                            R15 0
      170 MOVE                             R16 R6
      171 LOADN                            R17 0
      172 CALL                             R14 3 1
      173 SETTABLEKS                       R14 R13 K9 ["CFrame"]
      175 SETTABLEKS                       R10 R13 K18 ["Render"]
      177 CALL                             R11 2 1
      178 SETTABLEKS                       R11 R8 K30 ["LattitudeSnap"]
      180 GETUPVAL                         R9 0
      181 GETTABLEKS                       R9 R9 K31 ["createFragment"]
      183 MOVE                             R10 R8
      184 CALL                             R9 1 -1
      185 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R3 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Components"]
       22 GETTABLEKS                       R4 R4 K8 ["WireframeHandleAdornment"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K9 [PROTO_3]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1
