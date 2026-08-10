PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["targetMatrix"]
        2 GETTABLEKS                       R2 R1 K1 ["Position"]
        4 GETTABLEKS                       R3 R1 K2 ["XVector"]
        6 GETTABLEKS                       R4 R1 K3 ["ZVector"]
        8 GETTABLEKS                       R6 R0 K4 ["mouseWorld"]
       10 SUB                              R5 R6 R2
       11 MOVE                             R8 R3
       12 NAMECALL                         R6 R5 K5 ["Dot"]
       14 CALL                             R6 2 1
       15 LOADN                            R7 0
       16 JUMPIFNOTLT                      R6 R7 ; [+2]
       18 MINUS                            R3 R3
       19 MOVE                             R8 R4
       20 NAMECALL                         R6 R5 K5 ["Dot"]
       22 CALL                             R6 2 1
       23 LOADN                            R7 0
       24 JUMPIFNOTLT                      R6 R7 ; [+2]
       26 MINUS                            R4 R4
       27 LOADN                            R7 0
       28 MOVE                             R10 R3
       29 NAMECALL                         R8 R5 K5 ["Dot"]
       31 CALL                             R8 2 -1
       32 FASTCALL                         MATH_MAX ; [+2]
       33 GETIMPORT                        R6 K8 [math.max]
       35 CALL                             R6 -1 1
       36 LOADN                            R8 0
       37 MOVE                             R11 R4
       38 NAMECALL                         R9 R5 K5 ["Dot"]
       40 CALL                             R9 2 -1
       41 FASTCALL                         MATH_MAX ; [+2]
       42 GETIMPORT                        R7 K8 [math.max]
       44 CALL                             R7 -1 1
       45 MOVE                             R8 R2
       46 MOVE                             R9 R3
       47 MOVE                             R10 R4
       48 MOVE                             R11 R6
       49 MOVE                             R12 R7
       50 RETURN                           R8 5

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["DragTarget"]
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R3
        6 CALL                             R4 1 5
        7 GETTABLEKS                       R9 R2 K2 ["GridSize"]
        9 GETTABLEKS                       R10 R3 K3 ["targetSize"]
       11 GETTABLEKS                       R11 R3 K4 ["targetPart"]
       13 GETUPVAL                         R12 1
       14 JUMPIFNOT                        R12 ; [+6]
       15 MOVE                             R12 R11
       16 JUMPIFNOT                        R12 ; [+4]
       17 LOADK                            R14 K5 ["Part"]
       18 NAMECALL                         R12 R11 K6 ["IsA"]
       20 CALL                             R12 2 1
       21 DIV                              R13 R7 R9
       22 DIV                              R14 R8 R9
       23 ADDK                             R17 R13 K7 [0.5]
       24 FASTCALL1                        MATH_FLOOR R17 ; [+2]
       25 GETIMPORT                        R16 K10 [math.floor]
       27 CALL                             R16 1 1
       28 MUL                              R15 R16 R9
       29 ADDK                             R18 R14 K7 [0.5]
       30 FASTCALL1                        MATH_FLOOR R18 ; [+2]
       31 GETIMPORT                        R17 K10 [math.floor]
       33 CALL                             R17 1 1
       34 MUL                              R16 R17 R9
       35 GETUPVAL                         R17 2
       36 GETTABLEKS                       R17 R17 K11 ["createElement"]
       38 GETUPVAL                         R18 3
       39 DUPTABLE                         R19 K20 [{["Color3"], ["MainTransparency"] = 0, ["DimTransparency"] = 0.5, ["GridSize"], ["MajorStep"], ["CFrame"], ["Size"], ["ExtraSize"]}]
       40 GETTABLEKS                       R20 R2 K21 ["PrimaryColor"]
       42 SETTABLEKS                       R20 R19 K12 ["Color3"]
       44 SETTABLEKS                       R9 R19 K2 ["GridSize"]
       46 GETTABLEKS                       R20 R2 K16 ["MajorStep"]
       48 SETTABLEKS                       R20 R19 K16 ["MajorStep"]
       50 GETIMPORT                        R20 K23 [CFrame.fromMatrix]
       52 MOVE                             R21 R4
       53 MOVE                             R22 R5
       54 MOVE                             R25 R5
       55 NAMECALL                         R23 R6 K24 ["Cross"]
       57 CALL                             R23 2 -1
       58 CALL                             R20 -1 1
       59 SETTABLEKS                       R20 R19 K17 ["CFrame"]
       61 LOADN                            R22 0
       62 FASTCALL3                        VECTOR R15 R22 R16
       64 MOVE                             R21 R15
       65 MOVE                             R23 R16
       66 GETIMPORT                        R20 K27 [Vector3.new]
       68 CALL                             R20 3 1
       69 SETTABLEKS                       R20 R19 K18 ["Size"]
       71 JUMPIFNOT                        R12 ; [+12]
       72 GETTABLEKS                       R22 R10 K28 ["X"]
       74 SUB                              R21 R22 R15
       75 LOADN                            R22 0
       76 GETTABLEKS                       R24 R10 K29 ["Z"]
       78 SUB                              R23 R24 R16
       79 FASTCALL                         VECTOR ; [+2]
       80 GETIMPORT                        R20 K27 [Vector3.new]
       82 CALL                             R20 3 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R20
       85 SETTABLEKS                       R20 R19 K19 ["ExtraSize"]
       87 CALL                             R17 2 -1
       88 RETURN                           R17 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["DragTarget"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K8 [{"Part", "WorldPosition", "PrimaryColor", "Color", "GridSize"}]
        9 GETTABLEKS                       R6 R2 K9 ["targetPart"]
       11 SETTABLEKS                       R6 R5 K3 ["Part"]
       13 GETTABLEKS                       R6 R2 K10 ["targetMatrix"]
       15 GETTABLEKS                       R6 R6 K11 ["Position"]
       17 SETTABLEKS                       R6 R5 K4 ["WorldPosition"]
       19 GETTABLEKS                       R6 R1 K5 ["PrimaryColor"]
       21 SETTABLEKS                       R6 R5 K5 ["PrimaryColor"]
       23 GETTABLEKS                       R6 R1 K6 ["Color"]
       25 SETTABLEKS                       R6 R5 K6 ["Color"]
       27 GETTABLEKS                       R6 R1 K7 ["GridSize"]
       29 SETTABLEKS                       R6 R5 K7 ["GridSize"]
       31 CALL                             R3 2 -1
       32 RETURN                           R3 -1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 -3
        3 LOADN                            R2 3
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 GETIMPORT                        R6 K2 [Vector2.new]
        8 LOADN                            R7 -3
        9 MOVE                             R8 R4
       10 CALL                             R6 2 1
       11 GETTABLEKS                       R6 R6 K3 ["Unit"]
       13 GETUPVAL                         R7 0
       14 MUL                              R5 R6 R7
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R10 R5 K4 ["X"]
       18 GETTABLEKS                       R11 R5 K5 ["Y"]
       20 FASTCALL                         VECTOR ; [+2]
       21 GETIMPORT                        R8 K7 [Vector3.new]
       23 CALL                             R8 3 1
       24 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       26 MOVE                             R7 R1
       27 GETIMPORT                        R6 K10 [table.insert]
       29 CALL                             R6 2 0
       30 FORNLOOP                         R2
       31 LOADN                            R4 -3
       32 LOADN                            R2 3
       33 LOADN                            R3 1
       34 FORNPREP                         R2
       35 GETIMPORT                        R6 K2 [Vector2.new]
       37 MOVE                             R7 R4
       38 LOADN                            R8 3
       39 CALL                             R6 2 1
       40 GETTABLEKS                       R6 R6 K3 ["Unit"]
       42 GETUPVAL                         R7 0
       43 MUL                              R5 R6 R7
       44 GETUPVAL                         R9 1
       45 GETTABLEKS                       R10 R5 K4 ["X"]
       47 GETTABLEKS                       R11 R5 K5 ["Y"]
       49 FASTCALL                         VECTOR ; [+2]
       50 GETIMPORT                        R8 K7 [Vector3.new]
       52 CALL                             R8 3 1
       53 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       55 MOVE                             R7 R1
       56 GETIMPORT                        R6 K10 [table.insert]
       58 CALL                             R6 2 0
       59 FORNLOOP                         R2
       60 LOADN                            R4 3
       61 LOADN                            R2 -3
       62 LOADN                            R3 -1
       63 FORNPREP                         R2
       64 GETIMPORT                        R6 K2 [Vector2.new]
       66 LOADN                            R7 3
       67 MOVE                             R8 R4
       68 CALL                             R6 2 1
       69 GETTABLEKS                       R6 R6 K3 ["Unit"]
       71 GETUPVAL                         R7 0
       72 MUL                              R5 R6 R7
       73 GETUPVAL                         R9 1
       74 GETTABLEKS                       R10 R5 K4 ["X"]
       76 GETTABLEKS                       R11 R5 K5 ["Y"]
       78 FASTCALL                         VECTOR ; [+2]
       79 GETIMPORT                        R8 K7 [Vector3.new]
       81 CALL                             R8 3 1
       82 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       84 MOVE                             R7 R1
       85 GETIMPORT                        R6 K10 [table.insert]
       87 CALL                             R6 2 0
       88 FORNLOOP                         R2
       89 LOADN                            R4 3
       90 LOADN                            R2 -3
       91 LOADN                            R3 -1
       92 FORNPREP                         R2
       93 GETIMPORT                        R6 K2 [Vector2.new]
       95 MOVE                             R7 R4
       96 LOADN                            R8 -3
       97 CALL                             R6 2 1
       98 GETTABLEKS                       R6 R6 K3 ["Unit"]
      100 GETUPVAL                         R7 0
      101 MUL                              R5 R6 R7
      102 GETUPVAL                         R9 1
      103 GETTABLEKS                       R10 R5 K4 ["X"]
      105 GETTABLEKS                       R11 R5 K5 ["Y"]
      107 FASTCALL                         VECTOR ; [+2]
      108 GETIMPORT                        R8 K7 [Vector3.new]
      110 CALL                             R8 3 1
      111 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      113 MOVE                             R7 R1
      114 GETIMPORT                        R6 K10 [table.insert]
      116 CALL                             R6 2 0
      117 FORNLOOP                         R2
      118 MOVE                             R4 R1
      119 LOADB                            R5 1
      120 NAMECALL                         R2 R0 K11 ["AddPath"]
      122 CALL                             R2 3 0
      123 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R4 K1 ["DragTarget"]
        4 GETTABLEKS                       R6 R5 K2 ["targetPart"]
        6 GETTABLEKS                       R7 R6 K3 ["CFrame"]
        8 GETTABLEKS                       R8 R6 K4 ["Size"]
       10 GETTABLEKS                       R11 R8 K6 ["Y"]
       12 GETTABLEKS                       R12 R8 K7 ["Z"]
       14 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       16 GETIMPORT                        R10 K10 [math.min]
       18 CALL                             R10 2 1
       19 MULK                             R9 R10 K5 [0.5]
       20 MOVE                             R12 R1
       21 NAMECALL                         R10 R7 K11 ["PointToObjectSpace"]
       23 CALL                             R10 2 1
       24 GETTABLEKS                       R10 R10 K12 ["X"]
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R11 R11 K13 ["createElement"]
       29 GETUPVAL                         R12 1
       30 DUPTABLE                         R13 K18 [{"Color3", "AlwaysOnTop", "Adornee", "Render"}]
       31 SETTABLEKS                       R2 R13 K14 ["Color3"]
       33 SETTABLEKS                       R3 R13 K15 ["AlwaysOnTop"]
       35 SETTABLEKS                       R6 R13 K16 ["Adornee"]
       37 NEWCLOSURE                       R14 P0
       38 CAPTURE                          VAL R9
       39 CAPTURE                          VAL R10
       40 SETTABLEKS                       R14 R13 K17 ["Render"]
       42 CALL                             R11 2 -1
       43 RETURN                           R11 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["SphereHandleAdornment"]
        4 DUPTABLE                         R3 K10 [{["Color3"], ["AlwaysOnTop"] = True, ["Adornee"], ["CFrame"], ["ZIndex"] = 0, ["Radius"]}]
        5 GETTABLEKS                       R4 R0 K11 ["Color"]
        7 SETTABLEKS                       R4 R3 K2 ["Color3"]
        9 GETIMPORT                        R4 K13 [workspace]
       11 GETTABLEKS                       R4 R4 K14 ["Terrain"]
       13 SETTABLEKS                       R4 R3 K5 ["Adornee"]
       15 GETIMPORT                        R4 K16 [CFrame.new]
       17 GETTABLEKS                       R5 R0 K17 ["Position"]
       19 CALL                             R4 1 1
       20 SETTABLEKS                       R4 R3 K6 ["CFrame"]
       22 GETTABLEKS                       R5 R0 K19 ["Scale"]
       24 MULK                             R4 R5 K18 [0.15]
       25 SETTABLEKS                       R4 R3 K9 ["Radius"]
       27 CALL                             R1 2 -1
       28 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R6 1
        2 DIV                              R5 R6 R1
        3 ADDK                             R4 R5 K0 [0.5]
        4 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        5 GETIMPORT                        R3 K3 [math.floor]
        7 CALL                             R3 1 1
        8 MUL                              R2 R3 R1
        9 GETUPVAL                         R7 2
       10 DIV                              R6 R7 R1
       11 ADDK                             R5 R6 K0 [0.5]
       12 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       13 GETIMPORT                        R4 K3 [math.floor]
       15 CALL                             R4 1 1
       16 MUL                              R3 R4 R1
       17 GETUPVAL                         R5 3
       18 GETUPVAL                         R7 4
       19 MUL                              R6 R7 R3
       20 ADD                              R4 R5 R6
       21 GETUPVAL                         R9 5
       22 GETUPVAL                         R10 6
       23 MUL                              R8 R9 R10
       24 SUB                              R7 R4 R8
       25 GETUPVAL                         R10 5
       26 GETUPVAL                         R11 6
       27 MUL                              R9 R10 R11
       28 ADD                              R8 R4 R9
       29 NAMECALL                         R5 R0 K4 ["AddLine"]
       31 CALL                             R5 3 0
       32 GETUPVAL                         R6 3
       33 GETUPVAL                         R8 5
       34 MUL                              R7 R8 R2
       35 ADD                              R5 R6 R7
       36 GETUPVAL                         R10 4
       37 GETUPVAL                         R11 6
       38 MUL                              R9 R10 R11
       39 SUB                              R8 R5 R9
       40 GETUPVAL                         R11 4
       41 GETUPVAL                         R12 6
       42 MUL                              R10 R11 R12
       43 ADD                              R9 R5 R10
       44 NAMECALL                         R6 R0 K4 ["AddLine"]
       46 CALL                             R6 3 0
       47 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["GridSize"]
        4 GETTABLEKS                       R3 R1 K2 ["DragTarget"]
        6 GETTABLEKS                       R4 R3 K3 ["targetPart"]
        8 NEWTABLE                         R5 8 0
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["createElement"]
       13 GETUPVAL                         R7 1
       14 DUPTABLE                         R8 K8 [{"Part", "Color3", "GridSnap"}]
       15 SETTABLEKS                       R4 R8 K5 ["Part"]
       17 GETTABLEKS                       R9 R1 K9 ["Color"]
       19 SETTABLEKS                       R9 R8 K6 ["Color3"]
       21 SETTABLEKS                       R2 R8 K7 ["GridSnap"]
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K10 ["MajorLines"]
       26 GETTABLEKS                       R8 R4 K12 ["Size"]
       28 GETTABLEKS                       R8 R8 K13 ["X"]
       30 GETTABLEKS                       R9 R4 K12 ["Size"]
       32 GETTABLEKS                       R9 R9 K14 ["Y"]
       34 GETTABLEKS                       R10 R4 K12 ["Size"]
       36 GETTABLEKS                       R10 R10 K15 ["Z"]
       38 FASTCALL                         MATH_MIN ; [+2]
       39 GETIMPORT                        R7 K18 [math.min]
       41 CALL                             R7 3 1
       42 MULK                             R6 R7 K11 [0.5]
       43 MULK                             R7 R6 K19 [0.25]
       44 MUL                              R10 R6 R6
       45 MUL                              R11 R7 R7
       46 SUB                              R9 R10 R11
       47 FASTCALL1                        MATH_SQRT R9 ; [+2]
       48 GETIMPORT                        R8 K21 [math.sqrt]
       50 CALL                             R8 1 1
       51 FASTCALL1                        MATH_FLOOR R8 ; [+3]
       52 MOVE                             R10 R8
       53 GETIMPORT                        R9 K23 [math.floor]
       55 CALL                             R9 1 1
       56 MUL                              R12 R6 R6
       57 MUL                              R13 R9 R9
       58 SUB                              R11 R12 R13
       59 FASTCALL1                        MATH_SQRT R11 ; [+2]
       60 GETIMPORT                        R10 K21 [math.sqrt]
       62 CALL                             R10 1 1
       63 FASTCALL2                        MATH_MAX R7 R10 ; [+5]
       65 MOVE                             R12 R7
       66 MOVE                             R13 R10
       67 GETIMPORT                        R11 K25 [math.max]
       69 CALL                             R11 2 1
       70 GETTABLEKS                       R12 R3 K26 ["dragTargetType"]
       72 JUMPIFNOTEQKS                    R12 K27 ["Polygon"] ; [+78]
       74 GETUPVAL                         R12 2
       75 MOVE                             R13 R3
       76 CALL                             R12 1 5
       77 DIV                              R17 R11 R2
       78 GETUPVAL                         R18 0
       79 GETTABLEKS                       R18 R18 K4 ["createElement"]
       81 GETUPVAL                         R19 3
       82 DUPTABLE                         R20 K31 [{["Color3"], ["AlwaysOnTop"] = True, ["Render"]}]
       83 GETTABLEKS                       R21 R1 K32 ["PrimaryColor"]
       85 SETTABLEKS                       R21 R20 K6 ["Color3"]
       87 NEWCLOSURE                       R21 P0
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R16
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R11
       95 SETTABLEKS                       R21 R20 K30 ["Render"]
       97 CALL                             R18 2 1
       98 SETTABLEKS                       R18 R5 K33 ["LinearGuides"]
      100 GETUPVAL                         R18 0
      101 GETTABLEKS                       R18 R18 K4 ["createElement"]
      103 GETUPVAL                         R19 4
      104 DUPTABLE                         R20 K36 [{"Color", "Scale", "Position"}]
      105 GETTABLEKS                       R21 R1 K9 ["Color"]
      107 SETTABLEKS                       R21 R20 K9 ["Color"]
      109 GETTABLEKS                       R21 R1 K34 ["Scale"]
      111 SETTABLEKS                       R21 R20 K34 ["Scale"]
      113 SETTABLEKS                       R12 R20 K35 ["Position"]
      115 CALL                             R18 2 1
      116 SETTABLEKS                       R18 R5 K37 ["CenterPoint"]
      118 GETUPVAL                         R18 0
      119 GETTABLEKS                       R18 R18 K4 ["createElement"]
      121 GETUPVAL                         R19 5
      122 DUPTABLE                         R20 K48 [{["Position"], ["Radius"], ["UnitA"], ["UnitB"], ["MinA"], ["MaxA"], ["MinB"], ["MaxB"], ["ExcludeA"] = 0, ["ExcludeB"] = 0, ["Color3"]}]
      123 SETTABLEKS                       R12 R20 K35 ["Position"]
      125 SETTABLEKS                       R17 R20 K38 ["Radius"]
      127 MUL                              R21 R13 R2
      128 SETTABLEKS                       R21 R20 K39 ["UnitA"]
      130 MUL                              R21 R14 R2
      131 SETTABLEKS                       R21 R20 K40 ["UnitB"]
      133 MINUS                            R21 R17
      134 SETTABLEKS                       R21 R20 K41 ["MinA"]
      136 SETTABLEKS                       R17 R20 K42 ["MaxA"]
      138 MINUS                            R21 R17
      139 SETTABLEKS                       R21 R20 K43 ["MinB"]
      141 SETTABLEKS                       R17 R20 K44 ["MaxB"]
      143 GETTABLEKS                       R21 R1 K9 ["Color"]
      145 SETTABLEKS                       R21 R20 K6 ["Color3"]
      147 CALL                             R18 2 1
      148 SETTABLEKS                       R18 R5 K49 ["Grid"]
      150 JUMP                             ; [+5]
      151 NAMECALL                         R12 R0 K50 ["_renderLattitudeGuide"]
      153 CALL                             R12 1 1
      154 SETTABLEKS                       R12 R5 K51 ["LattitudeGuide"]
      156 GETUPVAL                         R12 0
      157 GETTABLEKS                       R12 R12 K52 ["createFragment"]
      159 MOVE                             R13 R5
      160 CALL                             R12 1 -1
      161 RETURN                           R12 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 0
        2 GETUPVAL                         R7 1
        3 GETUPVAL                         R8 2
        4 MUL                              R6 R7 R8
        5 ADD                              R4 R5 R6
        6 NAMECALL                         R1 R0 K0 ["AddLine"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["DragTarget"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 CALL                             R3 1 5
        7 GETTABLEKS                       R8 R1 K2 ["GridSize"]
        9 LOADK                            R10 K3 [0.5]
       10 GETTABLEKS                       R11 R2 K4 ["targetSize"]
       12 GETTABLEKS                       R11 R11 K5 ["Z"]
       14 MUL                              R9 R10 R11
       15 DIV                              R10 R7 R8
       16 ADDK                             R12 R10 K3 [0.5]
       17 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       18 GETIMPORT                        R11 K8 [math.floor]
       20 CALL                             R11 1 1
       21 GETTABLEKS                       R12 R2 K9 ["targetPart"]
       23 GETTABLEKS                       R13 R12 K10 ["Size"]
       25 GETTABLEKS                       R16 R13 K11 ["Y"]
       27 GETTABLEKS                       R17 R13 K5 ["Z"]
       29 FASTCALL2                        MATH_MIN R16 R17 ; [+3]
       31 GETIMPORT                        R15 K13 [math.min]
       33 CALL                             R15 2 1
       34 MULK                             R14 R15 K3 [0.5]
       35 NEWTABLE                         R15 8 0
       37 GETUPVAL                         R16 1
       38 GETTABLEKS                       R16 R16 K14 ["createElement"]
       40 GETUPVAL                         R17 2
       41 DUPTABLE                         R18 K17 [{"Part", "Color3"}]
       42 SETTABLEKS                       R12 R18 K15 ["Part"]
       44 GETTABLEKS                       R19 R1 K18 ["Color"]
       46 SETTABLEKS                       R19 R18 K16 ["Color3"]
       48 CALL                             R16 2 1
       49 SETTABLEKS                       R16 R15 K19 ["MajorLines"]
       51 GETTABLEKS                       R16 R2 K20 ["dragTargetType"]
       53 JUMPIFNOTEQKS                    R16 K21 ["Polygon"] ; [+26]
       55 GETUPVAL                         R16 1
       56 GETTABLEKS                       R16 R16 K14 ["createElement"]
       58 GETUPVAL                         R17 3
       59 DUPTABLE                         R18 K24 [{"Color", "Scale", "Position"}]
       60 GETTABLEKS                       R19 R1 K18 ["Color"]
       62 SETTABLEKS                       R19 R18 K18 ["Color"]
       64 GETTABLEKS                       R19 R1 K22 ["Scale"]
       66 SETTABLEKS                       R19 R18 K22 ["Scale"]
       68 SETTABLEKS                       R3 R18 K23 ["Position"]
       70 CALL                             R16 2 1
       71 SETTABLEKS                       R16 R15 K25 ["CenterPoint"]
       73 MOVE                             R18 R14
       74 NAMECALL                         R16 R0 K26 ["_renderRulerSnapToPolygon"]
       76 CALL                             R16 2 1
       77 SETTABLEKS                       R16 R15 K27 ["PolygonGrid"]
       79 JUMP                             ; [+53]
       80 GETUPVAL                         R16 1
       81 GETTABLEKS                       R16 R16 K14 ["createElement"]
       83 GETUPVAL                         R17 4
       84 DUPTABLE                         R18 K39 [{["Position"], ["UnitA"], ["UnitB"], ["MinA"] = -1, ["MaxA"] = 1, ["MinB"] = 0, ["MaxB"], ["ExcludeA"] = 0, ["ExcludeB"], ["Color3"]}]
       85 SETTABLEKS                       R3 R18 K23 ["Position"]
       87 MUL                              R19 R4 R8
       88 SETTABLEKS                       R19 R18 K28 ["UnitA"]
       90 MUL                              R19 R5 R8
       91 SETTABLEKS                       R19 R18 K29 ["UnitB"]
       93 DIV                              R19 R9 R8
       94 SETTABLEKS                       R19 R18 K36 ["MaxB"]
       96 SETTABLEKS                       R11 R18 K38 ["ExcludeB"]
       98 GETTABLEKS                       R19 R1 K18 ["Color"]
      100 SETTABLEKS                       R19 R18 K16 ["Color3"]
      102 CALL                             R16 2 1
      103 SETTABLEKS                       R16 R15 K40 ["CylinderGrid"]
      105 GETUPVAL                         R16 1
      106 GETTABLEKS                       R16 R16 K14 ["createElement"]
      108 GETUPVAL                         R17 5
      109 DUPTABLE                         R18 K44 [{["Color3"], ["AlwaysOnTop"] = True, ["Render"]}]
      110 GETTABLEKS                       R19 R1 K45 ["PrimaryColor"]
      112 SETTABLEKS                       R19 R18 K16 ["Color3"]
      114 NEWCLOSURE                       R19 P0
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R5
      118 SETTABLEKS                       R19 R18 K43 ["Render"]
      120 CALL                             R16 2 1
      121 SETTABLEKS                       R16 R15 K46 ["LinearGuide"]
      123 MUL                              R20 R5 R11
      124 MUL                              R19 R20 R8
      125 ADD                              R18 R3 R19
      126 GETTABLEKS                       R19 R1 K45 ["PrimaryColor"]
      128 NAMECALL                         R16 R0 K47 ["_renderCylinderRingGuide"]
      130 CALL                             R16 3 1
      131 SETTABLEKS                       R16 R15 K48 ["RadialGuide"]
      133 GETUPVAL                         R16 1
      134 GETTABLEKS                       R16 R16 K49 ["createFragment"]
      136 MOVE                             R17 R15
      137 CALL                             R16 1 -1
      138 RETURN                           R16 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["DragTarget"]
        4 GETTABLEKS                       R3 R2 K2 ["targetPart"]
        6 GETUPVAL                         R4 0
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+3]
        9 GETTABLEKS                       R4 R1 K3 ["UseBoundingBoxes"]
       11 JUMPIF                           R4 ; [+26]
       12 JUMPIFNOT                        R3 ; [+25]
       13 LOADK                            R6 K4 ["Part"]
       14 NAMECALL                         R4 R3 K5 ["IsA"]
       16 CALL                             R4 2 1
       17 JUMPIFNOT                        R4 ; [+20]
       18 GETTABLEKS                       R4 R3 K6 ["Shape"]
       20 GETIMPORT                        R5 K10 [Enum.PartType.Ball]
       22 JUMPIFNOTEQ                      R4 R5 ; [+5]
       24 NAMECALL                         R4 R0 K11 ["_renderGridSnapToSphere"]
       26 CALL                             R4 1 -1
       27 RETURN                           R4 -1
       28 GETTABLEKS                       R4 R3 K6 ["Shape"]
       30 GETIMPORT                        R5 K13 [Enum.PartType.Cylinder]
       32 JUMPIFNOTEQ                      R4 R5 ; [+5]
       34 NAMECALL                         R4 R0 K14 ["_renderGridSnapToCylinder"]
       36 CALL                             R4 1 -1
       37 RETURN                           R4 -1
       38 LOADNIL                          R6
       39 NAMECALL                         R4 R0 K15 ["_renderRulerSnapToPolygon"]
       41 CALL                             R4 2 -1
       42 RETURN                           R4 -1

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+23]
        1 LOADK                            R3 K0 ["Part"]
        2 NAMECALL                         R1 R0 K1 ["IsA"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETTABLEKS                       R1 R0 K2 ["Shape"]
        8 GETIMPORT                        R2 K6 [Enum.PartType.Ball]
       10 JUMPIFNOTEQ                      R1 R2 ; [+4]
       12 GETIMPORT                        R1 K6 [Enum.PartType.Ball]
       14 RETURN                           R1 1
       15 GETTABLEKS                       R1 R0 K2 ["Shape"]
       17 GETIMPORT                        R2 K8 [Enum.PartType.Cylinder]
       19 JUMPIFNOTEQ                      R1 R2 ; [+4]
       21 GETIMPORT                        R1 K8 [Enum.PartType.Cylinder]
       23 RETURN                           R1 1
       24 LOADNIL                          R1
       25 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 0
        2 GETUPVAL                         R7 1
        3 GETUPVAL                         R8 2
        4 MUL                              R6 R7 R8
        5 ADD                              R4 R5 R6
        6 NAMECALL                         R1 R0 K0 ["AddLine"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["DragTarget"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 CALL                             R3 1 5
        7 GETTABLEKS                       R8 R2 K2 ["targetSize"]
        9 GETTABLEKS                       R8 R8 K3 ["Z"]
       11 NEWTABLE                         R9 4 0
       13 GETTABLEKS                       R10 R2 K4 ["dragTargetType"]
       15 JUMPIFNOTEQKS                    R10 K5 ["Sphere"] ; [+23]
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R10 R10 K6 ["createElement"]
       20 GETUPVAL                         R11 2
       21 DUPTABLE                         R12 K9 [{"Part", "Color3"}]
       22 GETTABLEKS                       R13 R2 K10 ["targetPart"]
       24 SETTABLEKS                       R13 R12 K7 ["Part"]
       26 GETTABLEKS                       R13 R1 K11 ["Color"]
       28 SETTABLEKS                       R13 R12 K8 ["Color3"]
       30 CALL                             R10 2 1
       31 SETTABLEKS                       R10 R9 K12 ["MajorLines"]
       33 NAMECALL                         R10 R0 K13 ["_renderLattitudeGuide"]
       35 CALL                             R10 1 1
       36 SETTABLEKS                       R10 R9 K14 ["LattitudeGuide"]
       38 JUMP                             ; [+117]
       39 GETTABLEKS                       R10 R2 K4 ["dragTargetType"]
       41 JUMPIFNOTEQKS                    R10 K15 ["Cylinder"] ; [+46]
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K6 ["createElement"]
       46 GETUPVAL                         R11 3
       47 DUPTABLE                         R12 K9 [{"Part", "Color3"}]
       48 GETTABLEKS                       R13 R2 K10 ["targetPart"]
       50 SETTABLEKS                       R13 R12 K7 ["Part"]
       52 GETTABLEKS                       R13 R1 K11 ["Color"]
       54 SETTABLEKS                       R13 R12 K8 ["Color3"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K12 ["MajorLines"]
       59 MUL                              R13 R5 R7
       60 ADD                              R12 R3 R13
       61 GETTABLEKS                       R13 R1 K16 ["PrimaryColor"]
       63 LOADB                            R14 1
       64 NAMECALL                         R10 R0 K17 ["_renderCylinderRingGuide"]
       66 CALL                             R10 4 1
       67 SETTABLEKS                       R10 R9 K18 ["RadialGuide"]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K6 ["createElement"]
       72 GETUPVAL                         R11 4
       73 DUPTABLE                         R12 K22 [{["Color3"], ["AlwaysOnTop"] = True, ["Render"]}]
       74 GETTABLEKS                       R13 R1 K16 ["PrimaryColor"]
       76 SETTABLEKS                       R13 R12 K8 ["Color3"]
       78 NEWCLOSURE                       R13 P0
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R5
       82 SETTABLEKS                       R13 R12 K21 ["Render"]
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K23 ["LinearGuide"]
       87 JUMP                             ; [+68]
       88 GETTABLEKS                       R11 R2 K10 ["targetPart"]
       90 JUMPIFNOT                        R11 ; [+23]
       91 LOADK                            R14 K7 ["Part"]
       92 NAMECALL                         R12 R11 K24 ["IsA"]
       94 CALL                             R12 2 1
       95 JUMPIFNOT                        R12 ; [+18]
       96 GETTABLEKS                       R12 R11 K25 ["Shape"]
       98 GETIMPORT                        R13 K29 [Enum.PartType.Ball]
      100 JUMPIFNOTEQ                      R12 R13 ; [+4]
      102 GETIMPORT                        R10 K29 [Enum.PartType.Ball]
      104 JUMP                             ; [+10]
      105 GETTABLEKS                       R12 R11 K25 ["Shape"]
      107 GETIMPORT                        R13 K30 [Enum.PartType.Cylinder]
      109 JUMPIFNOTEQ                      R12 R13 ; [+4]
      111 GETIMPORT                        R10 K30 [Enum.PartType.Cylinder]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R10
      115 GETIMPORT                        R11 K29 [Enum.PartType.Ball]
      117 JUMPIFNOTEQ                      R10 R11 ; [+18]
      119 GETUPVAL                         R11 1
      120 GETTABLEKS                       R11 R11 K6 ["createElement"]
      122 GETUPVAL                         R12 2
      123 DUPTABLE                         R13 K9 [{"Part", "Color3"}]
      124 GETTABLEKS                       R14 R2 K10 ["targetPart"]
      126 SETTABLEKS                       R14 R13 K7 ["Part"]
      128 GETTABLEKS                       R14 R1 K11 ["Color"]
      130 SETTABLEKS                       R14 R13 K8 ["Color3"]
      132 CALL                             R11 2 1
      133 SETTABLEKS                       R11 R9 K12 ["MajorLines"]
      135 JUMP                             ; [+20]
      136 GETIMPORT                        R11 K30 [Enum.PartType.Cylinder]
      138 JUMPIFNOTEQ                      R10 R11 ; [+17]
      140 GETUPVAL                         R11 1
      141 GETTABLEKS                       R11 R11 K6 ["createElement"]
      143 GETUPVAL                         R12 3
      144 DUPTABLE                         R13 K9 [{"Part", "Color3"}]
      145 GETTABLEKS                       R14 R2 K10 ["targetPart"]
      147 SETTABLEKS                       R14 R13 K7 ["Part"]
      149 GETTABLEKS                       R14 R1 K11 ["Color"]
      151 SETTABLEKS                       R14 R13 K8 ["Color3"]
      153 CALL                             R11 2 1
      154 SETTABLEKS                       R11 R9 K12 ["MajorLines"]
      156 GETUPVAL                         R10 1
      157 GETTABLEKS                       R10 R10 K31 ["createFragment"]
      159 MOVE                             R11 R9
      160 CALL                             R10 1 -1
      161 RETURN                           R10 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["GridSize"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 NAMECALL                         R1 R0 K2 ["_renderGridSnap"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 NAMECALL                         R1 R0 K3 ["_renderGridNoSnap"]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

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
       22 GETTABLEKS                       R4 R4 K8 ["Grid3D"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R0 K7 ["Components"]
       29 GETTABLEKS                       R5 R5 K9 ["WireframeHandleAdornment"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K7 ["Components"]
       36 GETTABLEKS                       R6 R6 K10 ["SphereMajorLines"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R7 R0 K7 ["Components"]
       43 GETTABLEKS                       R7 R7 K11 ["CylinderMajorLines"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R8 R0 K7 ["Components"]
       50 GETTABLEKS                       R8 R8 K12 ["LatLonGuide"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R9 R0 K7 ["Components"]
       57 GETTABLEKS                       R9 R9 K13 ["RulerView"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K4 [require]
       62 GETTABLEKS                       R10 R0 K14 ["Utility"]
       64 GETTABLEKS                       R10 R10 K15 ["DragHelper"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K4 [require]
       69 GETTABLEKS                       R11 R0 K16 ["Flags"]
       71 GETTABLEKS                       R11 R11 K17 ["getEngineFeatureDraggerServiceUseBoundingBoxes"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K19 [game]
       76 LOADK                            R13 K20 ["DraggerShowFullCross"]
       77 LOADB                            R14 0
       78 NAMECALL                         R11 R11 K21 ["DefineFastFlag"]
       80 CALL                             R11 3 1
       81 GETTABLEKS                       R12 R2 K22 ["PureComponent"]
       83 LOADK                            R14 K23 ["TargetGridView"]
       84 NAMECALL                         R12 R12 K24 ["extend"]
       86 CALL                             R12 2 1
       87 DUPCLOSURE                       R13 K25 [PROTO_0]
       88 DUPCLOSURE                       R14 K26 [PROTO_1]
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R8
       93 SETTABLEKS                       R14 R12 K27 ["_renderRulerSnapToPolygon"]
       95 DUPCLOSURE                       R14 K28 [PROTO_2]
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R7
       98 SETTABLEKS                       R14 R12 K29 ["_renderLattitudeGuide"]
      100 DUPCLOSURE                       R14 K30 [PROTO_4]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R4
      103 SETTABLEKS                       R14 R12 K31 ["_renderCylinderRingGuide"]
      105 DUPCLOSURE                       R14 K32 [PROTO_5]
      106 CAPTURE                          VAL R2
      107 DUPCLOSURE                       R15 K33 [PROTO_7]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R3
      114 SETTABLEKS                       R15 R12 K34 ["_renderGridSnapToSphere"]
      116 DUPCLOSURE                       R15 K35 [PROTO_9]
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R4
      123 SETTABLEKS                       R15 R12 K36 ["_renderGridSnapToCylinder"]
      125 DUPCLOSURE                       R15 K37 [PROTO_10]
      126 CAPTURE                          VAL R10
      127 SETTABLEKS                       R15 R12 K38 ["_renderGridSnap"]
      129 DUPCLOSURE                       R15 K39 [PROTO_11]
      130 DUPCLOSURE                       R16 K40 [PROTO_13]
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R4
      136 SETTABLEKS                       R16 R12 K41 ["_renderGridNoSnap"]
      138 DUPCLOSURE                       R16 K42 [PROTO_14]
      139 SETTABLEKS                       R16 R12 K43 ["render"]
      141 RETURN                           R12 1
