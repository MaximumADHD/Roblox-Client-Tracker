PROTO_0:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Part0"]
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K3 ["Parent"]
       10 JUMPIFNOT                        R1 ; [+9]
       11 LOADK                            R4 K4 ["BasePart"]
       12 NAMECALL                         R2 R1 K1 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+1]
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R1 K3 ["Parent"]
       19 JUMPBACK                         ; [-10]
       20 LOADNIL                          R2
       21 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R6 0
        3 SUBK                             R4 R0 K0 [1]
        4 LOADN                            R5 1
        5 FORNPREP                         R4
        6 DIV                              R9 R6 R0
        7 MULK                             R8 R9 K2 [3.14159265358979]
        8 MULK                             R7 R8 K1 [2]
        9 FASTCALL1                        MATH_COS R7 ; [+3]
       10 MOVE                             R10 R7
       11 GETIMPORT                        R9 K5 [math.cos]
       13 CALL                             R9 1 1
       14 MUL                              R8 R9 R1
       15 FASTCALL1                        MATH_SIN R7 ; [+3]
       16 MOVE                             R11 R7
       17 GETIMPORT                        R10 K7 [math.sin]
       19 CALL                             R10 1 1
       20 MUL                              R9 R10 R1
       21 JUMPIFNOTEQKS                    R2 K8 ["x"] ; [+16]
       23 LOADN                            R13 0
       24 FASTCALL3                        VECTOR R13 R8 R9
       26 MOVE                             R14 R8
       27 MOVE                             R15 R9
       28 GETIMPORT                        R12 K11 [Vector3.new]
       30 CALL                             R12 3 1
       31 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       33 MOVE                             R11 R3
       34 GETIMPORT                        R10 K14 [table.insert]
       36 CALL                             R10 2 0
       37 JUMP                             ; [+31]
       38 JUMPIFNOTEQKS                    R2 K15 ["y"] ; [+16]
       40 LOADN                            R14 0
       41 FASTCALL3                        VECTOR R8 R14 R9
       43 MOVE                             R13 R8
       44 MOVE                             R15 R9
       45 GETIMPORT                        R12 K11 [Vector3.new]
       47 CALL                             R12 3 1
       48 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       50 MOVE                             R11 R3
       51 GETIMPORT                        R10 K14 [table.insert]
       53 CALL                             R10 2 0
       54 JUMP                             ; [+14]
       55 LOADN                            R15 0
       56 FASTCALL3                        VECTOR R8 R9 R15
       58 MOVE                             R13 R8
       59 MOVE                             R14 R9
       60 GETIMPORT                        R12 K11 [Vector3.new]
       62 CALL                             R12 3 1
       63 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       65 MOVE                             R11 R3
       66 GETIMPORT                        R10 K14 [table.insert]
       68 CALL                             R10 2 0
       69 FORNLOOP                         R4
       70 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getParentGlobalCf"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["childInst"]
        7 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K2 ["Incorrect inner logic, should have child instance"]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K5 ["getGlobalCoordinateFrame"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R4 R2 K6 ["Position"]
       21 GETTABLEKS                       R5 R0 K6 ["Position"]
       23 SUB                              R3 R4 R5
       24 GETTABLEKS                       R4 R3 K7 ["Magnitude"]
       26 LOADN                            R5 0
       27 JUMPIFNOTLT                      R5 R4 ; [+66]
       29 GETTABLEKS                       R5 R3 K8 ["Unit"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K9 ["standardRadius"]
       34 JUMPIFNOTLE                      R4 R6 ; [+11]
       36 MULK                             R8 R4 K10 [0.5]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R9 R10 K9 ["standardRadius"]
       40 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       42 GETIMPORT                        R7 K13 [math.min]
       44 CALL                             R7 2 1
       45 MOVE                             R6 R7
       46 GETTABLEKS                       R8 R0 K6 ["Position"]
       48 MUL                              R9 R5 R6
       49 ADD                              R7 R8 R9
       50 LOADNIL                          R8
       51 GETUPVAL                         R9 2
       52 CALL                             R9 0 1
       53 JUMPIFNOT                        R9 ; [+20]
       54 GETTABLEKS                       R11 R5 K14 ["Y"]
       56 FASTCALL1                        MATH_ABS R11 ; [+2]
       57 GETIMPORT                        R10 K16 [math.abs]
       59 CALL                             R10 1 1
       60 LOADK                            R11 K17 [0.9]
       61 JUMPIFNOTLT                      R11 R10 ; [+3]
       63 LOADK                            R9 K18 [{1, 0, 0}]
       64 JUMP                             ; [+1]
       65 LOADK                            R9 K19 [{0, 1, 0}]
       66 GETIMPORT                        R10 K22 [CFrame.lookAt]
       68 MOVE                             R11 R7
       69 ADD                              R12 R7 R5
       70 MOVE                             R13 R9
       71 CALL                             R10 3 1
       72 MOVE                             R8 R10
       73 JUMP                             ; [+6]
       74 GETIMPORT                        R9 K22 [CFrame.lookAt]
       76 MOVE                             R10 R7
       77 ADD                              R11 R7 R5
       78 CALL                             R9 2 1
       79 MOVE                             R8 R9
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R9 R10 K23 ["connectionAdorneePart"]
       83 JUMPIFNOT                        R9 ; [+10]
       84 GETUPVAL                         R12 0
       85 GETTABLEKS                       R11 R12 K23 ["connectionAdorneePart"]
       87 GETTABLEKS                       R10 R11 K20 ["CFrame"]
       89 NAMECALL                         R10 R10 K24 ["Inverse"]
       91 CALL                             R10 1 1
       92 MUL                              R9 R10 R8
       93 RETURN                           R9 1
       94 GETIMPORT                        R5 K26 [CFrame.new]
       96 CALL                             R5 0 -1
       97 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getParentGlobalCf"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["childInst"]
        7 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K2 ["Incorrect inner logic, should have child instance"]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K5 ["getGlobalCoordinateFrame"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R4 R2 K6 ["Position"]
       21 GETTABLEKS                       R5 R0 K6 ["Position"]
       23 SUB                              R3 R4 R5
       24 GETTABLEKS                       R4 R3 K7 ["Magnitude"]
       26 LOADN                            R5 0
       27 JUMPIFNOTLT                      R5 R4 ; [+24]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K8 ["standardRadius"]
       32 JUMPIFNOTLE                      R4 R5 ; [+11]
       34 MULK                             R7 R4 K9 [0.5]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R8 R9 K8 ["standardRadius"]
       38 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       40 GETIMPORT                        R6 K12 [math.min]
       42 CALL                             R6 2 1
       43 MOVE                             R5 R6
       44 SUB                              R7 R4 R5
       45 FASTCALL2K                       MATH_MAX R7 K13 ; [+4]
       47 LOADK                            R8 K13 [0.01]
       48 GETIMPORT                        R6 K15 [math.max]
       50 CALL                             R6 2 1
       51 RETURN                           R6 1
       52 LOADK                            R5 K13 [0.01]
       53 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Clear"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NAMECALL                         R1 R0 K1 ["Clear"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["standardRadius"]
       11 DIVK                             R3 R1 K4 [2]
       12 MULK                             R2 R3 K3 [1.5]
       13 MINUS                            R4 R2
       14 MINUS                            R5 R2
       15 LOADN                            R6 0
       16 FASTCALL                         VECTOR ; [+2]
       17 GETIMPORT                        R3 K7 [Vector3.new]
       19 CALL                             R3 3 1
       20 MINUS                            R6 R2
       21 LOADN                            R7 0
       22 FASTCALL3                        VECTOR R2 R6 R7
       24 MOVE                             R5 R2
       25 GETIMPORT                        R4 K7 [Vector3.new]
       27 CALL                             R4 3 1
       28 LOADN                            R8 0
       29 FASTCALL3                        VECTOR R2 R2 R8
       31 MOVE                             R6 R2
       32 MOVE                             R7 R2
       33 GETIMPORT                        R5 K7 [Vector3.new]
       35 CALL                             R5 3 1
       36 MINUS                            R7 R2
       37 LOADN                            R9 0
       38 FASTCALL3                        VECTOR R7 R2 R9
       40 MOVE                             R8 R2
       41 GETIMPORT                        R6 K7 [Vector3.new]
       43 CALL                             R6 3 1
       44 LOADN                            R8 0
       45 LOADN                            R9 0
       46 GETUPVAL                         R11 2
       47 MINUS                            R10 R11
       48 FASTCALL                         VECTOR ; [+2]
       49 GETIMPORT                        R7 K7 [Vector3.new]
       51 CALL                             R7 3 1
       52 NEWTABLE                         R10 0 4
       54 MOVE                             R11 R3
       55 MOVE                             R12 R4
       56 MOVE                             R13 R5
       57 MOVE                             R14 R6
       58 SETLIST                          R10 R11 4 [1]
       60 LOADB                            R11 1
       61 NAMECALL                         R8 R0 K8 ["AddPath"]
       63 CALL                             R8 3 0
       64 NEWTABLE                         R10 0 2
       66 MOVE                             R11 R3
       67 MOVE                             R12 R7
       68 SETLIST                          R10 R11 2 [1]
       70 LOADB                            R11 0
       71 NAMECALL                         R8 R0 K8 ["AddPath"]
       73 CALL                             R8 3 0
       74 NEWTABLE                         R10 0 2
       76 MOVE                             R11 R4
       77 MOVE                             R12 R7
       78 SETLIST                          R10 R11 2 [1]
       80 LOADB                            R11 0
       81 NAMECALL                         R8 R0 K8 ["AddPath"]
       83 CALL                             R8 3 0
       84 NEWTABLE                         R10 0 2
       86 MOVE                             R11 R5
       87 MOVE                             R12 R7
       88 SETLIST                          R10 R11 2 [1]
       90 LOADB                            R11 0
       91 NAMECALL                         R8 R0 K8 ["AddPath"]
       93 CALL                             R8 3 0
       94 NEWTABLE                         R10 0 2
       96 MOVE                             R11 R6
       97 MOVE                             R12 R7
       98 SETLIST                          R10 R11 2 [1]
      100 LOADB                            R11 0
      101 NAMECALL                         R8 R0 K8 ["AddPath"]
      103 CALL                             R8 3 0
      104 NEWCLOSURE                       R8 P0
      105 CAPTURE                          VAL R0
      106 RETURN                           R8 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["allowHover"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["setHoveredPyramidParentName"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["parentInst"]
       11 GETTABLEKS                       R1 R2 K3 ["Name"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 CALL                             R0 0 1
       16 JUMPIFNOT                        R0 ; [+9]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R0 R1 K4 ["compositeHoverEnter"]
       20 JUMPIFNOT                        R0 ; [+14]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R0 R1 K4 ["compositeHoverEnter"]
       24 CALL                             R0 0 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R0 R1 K5 ["DEPRECATED_setHoveredJointName"]
       29 JUMPIFNOT                        R0 ; [+5]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R0 R1 K5 ["DEPRECATED_setHoveredJointName"]
       33 LOADNIL                          R1
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["parentInst"]
        3 GETTABLEKS                       R2 R3 K1 ["Name"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 MOVE                             R1 R0
       10 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["allowHover"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["setHoveredPyramidParentName"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 1
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+8]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K2 ["compositeHoverLeave"]
       17 JUMPIFNOT                        R0 ; [+4]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K2 ["compositeHoverLeave"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onJointClicked"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["onJointClicked"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K1 ["parentInst"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K1 ["updatePositions"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R2 R2 K2 ["map"]
       13 CALL                             R2 2 1
       14 GETTABLEKS                       R3 R0 K1 ["updatePositions"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 NAMECALL                         R3 R3 K2 ["map"]
       21 CALL                             R3 2 1
       22 NAMECALL                         R4 R3 K3 ["getValue"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K4 ["useEffect"]
       28 NEWCLOSURE                       R6 P2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R7 0 1
       34 MOVE                             R8 R4
       35 SETLIST                          R7 R8 1 [1]
       37 CALL                             R5 2 0
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K5 ["createElement"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K6 ["Fragment"]
       44 LOADNIL                          R7
       45 DUPTABLE                         R8 K9 [{"Pyramid", "Wireframe"}]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R9 R10 K5 ["createElement"]
       49 LOADK                            R10 K10 ["PyramidHandleAdornment"]
       50 NEWTABLE                         R11 16 0
       52 GETTABLEKS                       R12 R0 K11 ["connectionAdorneePart"]
       54 SETTABLEKS                       R12 R11 K12 ["Adornee"]
       56 SETTABLEKS                       R2 R11 K13 ["CFrame"]
       58 GETUPVAL                         R13 3
       59 CALL                             R13 0 1
       60 JUMPIFNOT                        R13 ; [+2]
       61 LOADN                            R12 0
       62 JUMP                             ; [+1]
       63 LOADK                            R12 K14 [0.25]
       64 SETTABLEKS                       R12 R11 K15 ["Transparency"]
       66 LOADN                            R12 0
       67 SETTABLEKS                       R12 R11 K16 ["ZIndex"]
       69 GETTABLEKS                       R13 R0 K18 ["standardRadius"]
       71 MULK                             R12 R13 K17 [1.5]
       72 SETTABLEKS                       R12 R11 K19 ["Size"]
       74 SETTABLEKS                       R3 R11 K20 ["Height"]
       76 GETTABLEKS                       R12 R0 K21 ["color"]
       78 SETTABLEKS                       R12 R11 K22 ["Color3"]
       80 GETUPVAL                         R13 3
       81 CALL                             R13 0 1
       82 JUMPIFNOT                        R13 ; [+3]
       83 GETTABLEKS                       R12 R0 K23 ["isJointHovered"]
       85 JUMP                             ; [+1]
       86 LOADB                            R12 1
       87 SETTABLEKS                       R12 R11 K24 ["AlwaysOnTop"]
       89 GETUPVAL                         R14 0
       90 GETTABLEKS                       R13 R14 K25 ["Event"]
       92 GETTABLEKS                       R12 R13 K26 ["MouseEnter"]
       94 NEWCLOSURE                       R13 P3
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U3
       97 SETTABLE                         R13 R11 R12
       98 GETUPVAL                         R14 0
       99 GETTABLEKS                       R13 R14 K25 ["Event"]
      101 GETTABLEKS                       R12 R13 K27 ["MouseLeave"]
      103 NEWCLOSURE                       R13 P4
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U3
      106 SETTABLE                         R13 R11 R12
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R13 R14 K25 ["Event"]
      110 GETTABLEKS                       R12 R13 K28 ["MouseButton1Down"]
      112 NEWCLOSURE                       R13 P5
      113 CAPTURE                          VAL R0
      114 SETTABLE                         R13 R11 R12
      115 CALL                             R9 2 1
      116 SETTABLEKS                       R9 R8 K7 ["Pyramid"]
      118 GETUPVAL                         R10 3
      119 CALL                             R10 0 1
      120 JUMPIF                           R10 ; [+5]
      121 GETTABLEKS                       R10 R0 K29 ["DEPRECATED_isPlayingAnimation"]
      123 JUMPIFNOT                        R10 ; [+2]
      124 LOADNIL                          R9
      125 JUMP                             ; [+39]
      126 GETUPVAL                         R11 0
      127 GETTABLEKS                       R10 R11 K5 ["createElement"]
      129 LOADK                            R11 K31 ["WireframeHandleAdornment"]
      130 DUPTABLE                         R12 K33 [{"Adornee", "AlwaysOnTop", "Transparency", "ZIndex", "Color3", "CFrame", "ref"}]
      131 GETTABLEKS                       R13 R0 K11 ["connectionAdorneePart"]
      133 SETTABLEKS                       R13 R12 K12 ["Adornee"]
      135 GETUPVAL                         R14 3
      136 CALL                             R14 0 1
      137 JUMPIFNOT                        R14 ; [+3]
      138 GETTABLEKS                       R13 R0 K23 ["isJointHovered"]
      140 JUMP                             ; [+1]
      141 LOADB                            R13 1
      142 SETTABLEKS                       R13 R12 K24 ["AlwaysOnTop"]
      144 GETUPVAL                         R14 3
      145 CALL                             R14 0 1
      146 JUMPIFNOT                        R14 ; [+2]
      147 LOADN                            R13 0
      148 JUMP                             ; [+1]
      149 LOADK                            R13 K14 [0.25]
      150 SETTABLEKS                       R13 R12 K15 ["Transparency"]
      152 LOADN                            R13 0
      153 SETTABLEKS                       R13 R12 K16 ["ZIndex"]
      155 GETTABLEKS                       R13 R0 K34 ["edgeColor"]
      157 SETTABLEKS                       R13 R12 K22 ["Color3"]
      159 SETTABLEKS                       R2 R12 K13 ["CFrame"]
      161 SETTABLEKS                       R1 R12 K32 ["ref"]
      163 CALL                             R10 2 1
      164 ORK                              R9 R10 K30 []
      165 SETTABLEKS                       R9 R8 K8 ["Wireframe"]
      167 CALL                             R5 3 -1
      168 RETURN                           R5 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["current"]
        9 JUMPIFNOTEQKN                    R0 K1 [1] ; [+33]
       11 GETIMPORT                        R1 K3 [workspace]
       13 GETTABLEKS                       R0 R1 K4 ["CurrentCamera"]
       15 LOADK                            R1 K5 [∞]
       16 JUMPIFNOT                        R0 ; [+14]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K6 ["getGlobalCoordinateFrame"]
       20 GETUPVAL                         R4 2
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R2 R3 K7 ["Position"]
       24 GETTABLEKS                       R5 R0 K8 ["CFrame"]
       26 GETTABLEKS                       R4 R5 K7 ["Position"]
       28 SUB                              R3 R4 R2
       29 GETTABLEKS                       R1 R3 K9 ["Magnitude"]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R2 R3 K10 ["onJointHoverEnter"]
       34 JUMPIFNOT                        R2 ; [+8]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R2 R3 K10 ["onJointHoverEnter"]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R3 R4 K11 ["Name"]
       41 MOVE                             R4 R1
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K1 ["current"]
        4 SUBK                             R2 R3 K0 [1]
        5 FASTCALL2K                       MATH_MAX R2 K2 ; [+4]
        7 LOADK                            R3 K2 [0]
        8 GETIMPORT                        R1 K5 [math.max]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K1 ["current"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R0 R1 K1 ["current"]
       16 JUMPIFNOTEQKN                    R0 K2 [0] ; [+12]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R0 R1 K6 ["onJointHoverLeave"]
       21 JUMPIFNOT                        R0 ; [+7]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R0 R1 K6 ["onJointHoverLeave"]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K7 ["Name"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getGlobalCoordinateFrame"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 CALL                             R1 0 1
        7 JUMPIF                           R1 ; [+23]
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R1 R2 K1 ["DEPRECATED_applyTposeAdjustment"]
       11 JUMPIFNOT                        R1 ; [+19]
       12 GETUPVAL                         R1 4
       13 JUMPIFNOT                        R1 ; [+17]
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R1 R2 K2 ["adjustmentValue"]
       17 JUMPIFNOT                        R1 ; [+13]
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R2 R3 K2 ["adjustmentValue"]
       21 FASTCALL1                        TYPEOF R2 ; [+2]
       22 GETIMPORT                        R1 K4 [typeof]
       24 CALL                             R1 1 1
       25 JUMPIFNOTEQKS                    R1 K5 ["CFrame"] ; [+5]
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R1 R2 K2 ["adjustmentValue"]
       30 MUL                              R0 R0 R1
       31 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["updatePositions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U4
        9 NAMECALL                         R0 R0 K1 ["map"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["CFrame"]
        5 NAMECALL                         R2 R2 K1 ["Inverse"]
        7 CALL                             R2 1 1
        8 MUL                              R1 R2 R0
        9 JUMPIF                           R1 ; [+3]
       10 GETIMPORT                        R1 K3 [CFrame.new]
       12 CALL                             R1 0 1
       13 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+3]
        3 GETUPVAL                         R1 1
        4 ORK                              R0 R1 K0 [0.05]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 ORK                              R0 R1 K0 [0.05]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["childJoints"]
       11 JUMPIF                           R1 ; [+2]
       12 NEWTABLE                         R1 0 0
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K2 ["Position"]
       17 LENGTH                           R3 R1
       18 LOADN                            R4 0
       19 JUMPIFNOTLT                      R4 R3 ; [+81]
       21 GETUPVAL                         R3 4
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+39]
       24 LOADN                            R3 0
       25 LOADN                            R4 0
       26 MOVE                             R5 R1
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETUPVAL                         R12 5
       31 GETTABLEKS                       R11 R12 K3 ["getGlobalCoordinateFrame"]
       33 MOVE                             R12 R9
       34 CALL                             R11 1 1
       35 GETTABLEKS                       R10 R11 K2 ["Position"]
       37 SUB                              R12 R10 R2
       38 GETTABLEKS                       R11 R12 K4 ["Magnitude"]
       40 LOADN                            R12 0
       41 JUMPIFNOTLT                      R12 R11 ; [+3]
       43 ADD                              R3 R3 R11
       44 ADDK                             R4 R4 K5 [1]
       45 FORGLOOP                         R5 2 ; [-16]
       47 LOADN                            R5 0
       48 JUMPIFNOTLT                      R5 R4 ; [+80]
       50 DIV                              R5 R3 R4
       51 GETUPVAL                         R10 6
       52 GETTABLEKS                       R9 R10 K6 ["BONE_RADIUS_FRACTION"]
       54 MUL                              R8 R5 R9
       55 FASTCALL2                        MATH_MIN R0 R8 ; [+4]
       57 MOVE                             R7 R0
       58 GETIMPORT                        R6 K9 [math.min]
       60 CALL                             R6 2 1
       61 MOVE                             R0 R6
       62 JUMP                             ; [+66]
       63 LOADK                            R3 K10 [∞]
       64 MOVE                             R4 R1
       65 LOADNIL                          R5
       66 LOADNIL                          R6
       67 FORGPREP                         R4
       68 GETUPVAL                         R11 5
       69 GETTABLEKS                       R10 R11 K3 ["getGlobalCoordinateFrame"]
       71 MOVE                             R11 R8
       72 CALL                             R10 1 1
       73 GETTABLEKS                       R9 R10 K2 ["Position"]
       75 SUB                              R11 R9 R2
       76 GETTABLEKS                       R10 R11 K4 ["Magnitude"]
       78 LOADN                            R11 0
       79 JUMPIFNOTLT                      R11 R10 ; [+4]
       81 JUMPIFNOTLT                      R10 R3 ; [+2]
       83 MOVE                             R3 R10
       84 FORGLOOP                         R4 2 ; [-17]
       86 LOADK                            R4 K10 [∞]
       87 JUMPIFNOTLT                      R3 R4 ; [+41]
       89 GETUPVAL                         R8 6
       90 GETTABLEKS                       R7 R8 K6 ["BONE_RADIUS_FRACTION"]
       92 MUL                              R6 R3 R7
       93 FASTCALL2                        MATH_MIN R0 R6 ; [+4]
       95 MOVE                             R5 R0
       96 GETIMPORT                        R4 K9 [math.min]
       98 CALL                             R4 2 1
       99 MOVE                             R0 R4
      100 JUMP                             ; [+28]
      101 GETUPVAL                         R4 2
      102 GETTABLEKS                       R3 R4 K11 ["parentJoint"]
      104 JUMPIFNOT                        R3 ; [+24]
      105 GETUPVAL                         R6 5
      106 GETTABLEKS                       R5 R6 K3 ["getGlobalCoordinateFrame"]
      108 MOVE                             R6 R3
      109 CALL                             R5 1 1
      110 GETTABLEKS                       R4 R5 K2 ["Position"]
      112 SUB                              R6 R2 R4
      113 GETTABLEKS                       R5 R6 K4 ["Magnitude"]
      115 LOADN                            R6 0
      116 JUMPIFNOTLT                      R6 R5 ; [+12]
      118 GETUPVAL                         R10 6
      119 GETTABLEKS                       R9 R10 K6 ["BONE_RADIUS_FRACTION"]
      121 MUL                              R8 R5 R9
      122 FASTCALL2                        MATH_MIN R0 R8 ; [+4]
      124 MOVE                             R7 R0
      125 GETIMPORT                        R6 K9 [math.min]
      127 CALL                             R6 2 1
      128 MOVE                             R0 R6
      129 GETUPVAL                         R6 6
      130 GETTABLEKS                       R5 R6 K12 ["RADIUS_MIN"]
      132 FASTCALL2                        MATH_MAX R0 R5 ; [+4]
      134 MOVE                             R4 R0
      135 GETIMPORT                        R3 K14 [math.max]
      137 CALL                             R3 2 1
      138 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K0 ["getGlobalCoordinateFrame"]
        9 GETUPVAL                         R1 3
       10 CALL                             R0 1 1
       11 JUMP                             ; [+1]
       12 GETUPVAL                         R0 4
       13 GETUPVAL                         R1 5
       14 GETTABLEKS                       R3 R0 K1 ["Position"]
       16 NAMECALL                         R1 R1 K2 ["WorldToViewportPoint"]
       18 CALL                             R1 2 2
       19 JUMPIFNOT                        R2 ; [+14]
       20 GETUPVAL                         R3 6
       21 GETIMPORT                        R4 K5 [Vector2.new]
       23 GETTABLEKS                       R5 R1 K6 ["X"]
       25 GETTABLEKS                       R7 R1 K8 ["Y"]
       27 SUBK                             R6 R7 K7 [30]
       28 CALL                             R4 2 -1
       29 CALL                             R3 -1 0
       30 GETUPVAL                         R3 7
       31 LOADB                            R4 1
       32 CALL                             R3 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R3 7
       35 LOADB                            R4 0
       36 CALL                             R3 1 0
       37 RETURN                           R0 0
       38 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R0 R1 K2 ["CurrentCamera"]
        4 JUMPIF                           R0 ; [+7]
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+9]
       15 GETUPVAL                         R2 3
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R3 R4 K3 ["Name"]
       19 JUMPIFEQ                         R2 R3 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 JUMP                             ; [+3]
       24 GETUPVAL                         R1 3
       25 JUMPIF                           R1 ; [+1]
       26 GETUPVAL                         R1 5
       27 JUMPIF                           R1 ; [+7]
       28 GETUPVAL                         R2 0
       29 LOADB                            R3 0
       30 CALL                             R2 1 0
       31 GETUPVAL                         R2 1
       32 LOADB                            R3 0
       33 CALL                             R2 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 0
       36 LOADB                            R3 1
       37 CALL                             R2 1 0
       38 LOADB                            R2 1
       39 GETIMPORT                        R4 K5 [game]
       41 LOADK                            R6 K6 ["RunService"]
       42 NAMECALL                         R4 R4 K7 ["GetService"]
       44 CALL                             R4 2 1
       45 GETTABLEKS                       R3 R4 K8 ["RenderStepped"]
       47 NEWCLOSURE                       R5 P0
       48 CAPTURE                          REF R2
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          UPVAL U1
       56 NAMECALL                         R3 R3 K9 ["Connect"]
       58 CALL                             R3 2 1
       59 NEWCLOSURE                       R4 P1
       60 CAPTURE                          REF R2
       61 CAPTURE                          VAL R3
       62 CLOSEUPVALS                      R2
       63 RETURN                           R4 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 JUMP                             ; [+5]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K0 ["Name"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 4
       12 LOADNIL                          R1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K0 ["Name"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+4]
       12 GETUPVAL                         R0 4
       13 LOADNIL                          R1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onJointClicked"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["onJointClicked"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["childJoints"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 GETUPVAL                         R2 2
       12 JUMP                             ; [+1]
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R1
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETUPVAL                         R8 4
       19 MOVE                             R9 R2
       20 MOVE                             R10 R8
       21 CALL                             R9 1 1
       22 JUMPIF                           R9 ; [+3]
       23 MOVE                             R9 R2
       24 MOVE                             R10 R7
       25 CALL                             R9 1 1
       26 JUMPIFNOT                        R9 ; [+18]
       27 LOADK                            R11 K1 ["Connection_%*_%*_%*"]
       28 GETTABLEKS                       R13 R8 K2 ["Name"]
       30 GETTABLEKS                       R14 R7 K2 ["Name"]
       32 MOVE                             R15 R6
       33 NAMECALL                         R11 R11 K3 ["format"]
       35 CALL                             R11 4 1
       36 MOVE                             R10 R11
       37 DUPTABLE                         R11 K7 [{"parentInst", "childInst", "connectionAdorneePart"}]
       38 SETTABLEKS                       R8 R11 K4 ["parentInst"]
       40 SETTABLEKS                       R7 R11 K5 ["childInst"]
       42 SETTABLEKS                       R9 R11 K6 ["connectionAdorneePart"]
       44 SETTABLE                         R11 R0 R10
       45 FORGLOOP                         R3 2 ; [-28]
       47 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getGlobalCoordinateFrame"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["parentInst"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 1
        9 JUMPIF                           R1 ; [+21]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R1 R2 K2 ["DEPRECATED_applyTposeAdjustment"]
       13 JUMPIFNOT                        R1 ; [+17]
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R1 R2 K3 ["adjustmentValue"]
       17 JUMPIFNOT                        R1 ; [+13]
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R2 R3 K3 ["adjustmentValue"]
       21 FASTCALL1                        TYPEOF R2 ; [+2]
       22 GETIMPORT                        R1 K5 [typeof]
       24 CALL                             R1 1 1
       25 JUMPIFNOTEQKS                    R1 K6 ["CFrame"] ; [+5]
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R1 R2 K3 ["adjustmentValue"]
       30 MUL                              R0 R0 R1
       31 RETURN                           R0 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["jointInstance"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 1
        8 CALL                             R5 0 1
        9 JUMPIFNOT                        R5 ; [+6]
       10 GETTABLEKS                       R4 R0 K2 ["globalHoveredJointName"]
       12 JUMPIF                           R4 ; [+4]
       13 GETTABLEKS                       R4 R0 K3 ["mannequinHoveredJointName"]
       15 JUMP                             ; [+1]
       16 MOVE                             R4 R2
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K1 ["useState"]
       20 LOADNIL                          R6
       21 CALL                             R5 1 2
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K4 ["useRef"]
       25 LOADN                            R8 0
       26 CALL                             R7 1 1
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R8 R9 K5 ["useCallback"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          VAL R7
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R10 0 2
       37 MOVE                             R11 R1
       38 GETTABLEKS                       R12 R0 K6 ["onJointHoverEnter"]
       40 SETLIST                          R10 R11 2 [1]
       42 CALL                             R8 2 1
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R9 R10 K5 ["useCallback"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R1
       50 NEWTABLE                         R11 0 2
       52 MOVE                             R12 R1
       53 GETTABLEKS                       R13 R0 K7 ["onJointHoverLeave"]
       55 SETLIST                          R11 R12 2 [1]
       57 CALL                             R9 2 1
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R10 R11 K1 ["useState"]
       61 LOADB                            R11 0
       62 CALL                             R10 1 2
       63 GETUPVAL                         R13 0
       64 GETTABLEKS                       R12 R13 K1 ["useState"]
       66 LOADB                            R13 0
       67 CALL                             R12 1 2
       68 GETUPVAL                         R15 0
       69 GETTABLEKS                       R14 R15 K1 ["useState"]
       71 GETIMPORT                        R15 K10 [Vector2.new]
       73 LOADN                            R16 0
       74 LOADN                            R17 0
       75 CALL                             R15 2 -1
       76 CALL                             R14 -1 2
       77 LOADNIL                          R16
       78 GETUPVAL                         R17 3
       79 CALL                             R17 0 1
       80 JUMPIF                           R17 ; [+9]
       81 GETTABLEKS                       R17 R0 K11 ["DEPRECATED_rigDescriptor"]
       83 GETTABLEKS                       R18 R0 K12 ["DEPRECATED_jointLabel"]
       85 GETUPVAL                         R19 4
       86 MOVE                             R20 R17
       87 MOVE                             R21 R18
       88 CALL                             R19 2 1
       89 MOVE                             R16 R19
       90 GETTABLEKS                       R18 R1 K13 ["Name"]
       92 JUMPIFEQ                         R4 R18 ; [+2]
       94 LOADB                            R17 0 +1
       95 LOADB                            R17 1
       96 GETTABLEKS                       R18 R0 K14 ["mappedLookup"]
       98 JUMPIF                           R18 ; [+2]
       99 NEWTABLE                         R18 0 0
      101 GETTABLEKS                       R19 R0 K15 ["otherMappedLookup"]
      103 GETUPVAL                         R20 5
      104 MOVE                             R21 R1
      105 GETTABLEKS                       R22 R0 K16 ["selectedJointInstance"]
      107 MOVE                             R23 R4
      108 GETUPVAL                         R25 1
      109 CALL                             R25 0 1
      110 JUMPIFNOT                        R25 ; [+2]
      111 LOADNIL                          R24
      112 JUMP                             ; [+1]
      113 MOVE                             R24 R5
      114 MOVE                             R25 R18
      115 MOVE                             R26 R19
      116 CALL                             R20 6 1
      117 GETUPVAL                         R22 6
      118 CALL                             R22 0 1
      119 JUMPIFNOT                        R22 ; [+4]
      120 GETUPVAL                         R21 7
      121 MOVE                             R22 R1
      122 CALL                             R21 1 1
      123 JUMP                             ; [+3]
      124 GETUPVAL                         R21 8
      125 MOVE                             R22 R1
      126 CALL                             R21 1 1
      127 GETUPVAL                         R23 0
      128 GETTABLEKS                       R22 R23 K17 ["useMemo"]
      130 NEWCLOSURE                       R23 P2
      131 CAPTURE                          VAL R0
      132 CAPTURE                          UPVAL U2
      133 CAPTURE                          VAL R1
      134 CAPTURE                          UPVAL U3
      135 CAPTURE                          REF R16
      136 NEWTABLE                         R24 0 2
      138 MOVE                             R25 R1
      139 GETTABLEKS                       R26 R0 K18 ["updatePositions"]
      141 SETLIST                          R24 R25 2 [1]
      143 CALL                             R22 2 1
      144 GETUPVAL                         R24 0
      145 GETTABLEKS                       R23 R24 K17 ["useMemo"]
      147 NEWCLOSURE                       R24 P3
      148 CAPTURE                          VAL R22
      149 CAPTURE                          VAL R21
      150 NEWTABLE                         R25 0 2
      152 MOVE                             R26 R22
      153 MOVE                             R27 R21
      154 SETLIST                          R25 R26 2 [1]
      156 CALL                             R23 2 1
      157 NAMECALL                         R24 R22 K19 ["getValue"]
      159 CALL                             R24 1 1
      160 GETTABLEKS                       R25 R0 K20 ["standardRadius"]
      162 GETUPVAL                         R27 0
      163 GETTABLEKS                       R26 R27 K17 ["useMemo"]
      165 NEWCLOSURE                       R27 P4
      166 CAPTURE                          UPVAL U9
      167 CAPTURE                          VAL R25
      168 CAPTURE                          VAL R0
      169 CAPTURE                          VAL R24
      170 CAPTURE                          UPVAL U1
      171 CAPTURE                          UPVAL U2
      172 CAPTURE                          UPVAL U10
      173 NEWTABLE                         R28 0 3
      175 MOVE                             R29 R25
      176 GETTABLEKS                       R30 R0 K21 ["childJoints"]
      178 GETTABLEKS                       R31 R0 K22 ["parentJoint"]
      180 SETLIST                          R28 R29 3 [1]
      182 CALL                             R26 2 1
      183 GETUPVAL                         R28 9
      184 CALL                             R28 0 1
      185 JUMPIFNOT                        R28 ; [+5]
      186 GETUPVAL                         R29 10
      187 GETTABLEKS                       R28 R29 K23 ["SPHERE_STROKE_PCT"]
      189 MUL                              R27 R26 R28
      190 JUMP                             ; [+1]
      191 MOVE                             R27 R26
      192 GETUPVAL                         R29 0
      193 GETTABLEKS                       R28 R29 K24 ["useEffect"]
      195 NEWCLOSURE                       R29 P5
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R13
      198 CAPTURE                          UPVAL U1
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R5
      202 CAPTURE                          UPVAL U2
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R15
      205 GETUPVAL                         R31 1
      206 CALL                             R31 0 1
      207 JUMPIFNOT                        R31 ; [+6]
      208 NEWTABLE                         R30 0 1
      210 MOVE                             R31 R4
      211 SETLIST                          R30 R31 1 [1]
      213 JUMP                             ; [+7]
      214 NEWTABLE                         R30 0 3
      216 MOVE                             R31 R4
      217 MOVE                             R32 R5
      218 MOVE                             R33 R24
      219 SETLIST                          R30 R31 3 [1]
      221 CALL                             R28 2 0
      222 NEWTABLE                         R28 0 0
      224 GETUPVAL                         R30 0
      225 GETTABLEKS                       R29 R30 K25 ["createElement"]
      227 LOADK                            R30 K26 ["SphereHandleAdornment"]
      228 NEWTABLE                         R31 16 0
      230 SETTABLEKS                       R26 R31 K27 ["Radius"]
      232 GETTABLEKS                       R32 R20 K28 ["color"]
      234 SETTABLEKS                       R32 R31 K29 ["Color3"]
      236 GETUPVAL                         R33 1
      237 CALL                             R33 0 1
      238 JUMPIFNOT                        R33 ; [+2]
      239 MOVE                             R32 R17
      240 JUMP                             ; [+1]
      241 LOADB                            R32 1
      242 SETTABLEKS                       R32 R31 K30 ["AlwaysOnTop"]
      244 SETTABLEKS                       R21 R31 K31 ["Adornee"]
      246 GETUPVAL                         R33 1
      247 CALL                             R33 0 1
      248 JUMPIFNOT                        R33 ; [+2]
      249 LOADN                            R32 0
      250 JUMP                             ; [+1]
      251 LOADK                            R32 K32 [0.25]
      252 SETTABLEKS                       R32 R31 K33 ["Transparency"]
      254 GETUPVAL                         R33 1
      255 CALL                             R33 0 1
      256 JUMPIFNOT                        R33 ; [+2]
      257 LOADN                            R32 0
      258 JUMP                             ; [+1]
      259 LOADN                            R32 1
      260 SETTABLEKS                       R32 R31 K34 ["ZIndex"]
      262 SETTABLEKS                       R23 R31 K35 ["CFrame"]
      264 GETUPVAL                         R34 0
      265 GETTABLEKS                       R33 R34 K36 ["Event"]
      267 GETTABLEKS                       R32 R33 K37 ["MouseEnter"]
      269 NEWCLOSURE                       R33 P6
      270 CAPTURE                          UPVAL U1
      271 CAPTURE                          VAL R8
      272 CAPTURE                          VAL R3
      273 CAPTURE                          VAL R1
      274 CAPTURE                          VAL R6
      275 JUMPIF                           R33 ; [+1]
      276 LOADNIL                          R33
      277 SETTABLE                         R33 R31 R32
      278 GETUPVAL                         R34 0
      279 GETTABLEKS                       R33 R34 K36 ["Event"]
      281 GETTABLEKS                       R32 R33 K38 ["MouseLeave"]
      283 NEWCLOSURE                       R33 P7
      284 CAPTURE                          UPVAL U1
      285 CAPTURE                          VAL R9
      286 CAPTURE                          VAL R4
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R3
      289 JUMPIF                           R33 ; [+1]
      290 LOADNIL                          R33
      291 SETTABLE                         R33 R31 R32
      292 GETUPVAL                         R34 0
      293 GETTABLEKS                       R33 R34 K36 ["Event"]
      295 GETTABLEKS                       R32 R33 K39 ["MouseButton1Down"]
      297 NEWCLOSURE                       R33 P8
      298 CAPTURE                          VAL R0
      299 CAPTURE                          VAL R1
      300 SETTABLE                         R33 R31 R32
      301 CALL                             R29 2 1
      302 SETTABLEKS                       R29 R28 K40 ["Sphere"]
      304 JUMPIFNOT                        R21 ; [+96]
      305 GETUPVAL                         R30 1
      306 CALL                             R30 0 1
      307 JUMPIF                           R30 ; [+3]
      308 GETTABLEKS                       R30 R0 K41 ["DEPRECATED_isPlayingAnimation"]
      310 JUMPIF                           R30 ; [+90]
      311 GETUPVAL                         R30 1
      312 CALL                             R30 0 1
      313 JUMPIFNOT                        R30 ; [+21]
      314 GETUPVAL                         R31 0
      315 GETTABLEKS                       R30 R31 K25 ["createElement"]
      317 GETUPVAL                         R31 11
      318 DUPTABLE                         R32 K45 [{"radius", "color", "adorneePart", "jointInstance", "alwaysOnTop"}]
      319 SETTABLEKS                       R27 R32 K42 ["radius"]
      321 GETTABLEKS                       R33 R20 K46 ["edgeColor"]
      323 SETTABLEKS                       R33 R32 K28 ["color"]
      325 SETTABLEKS                       R21 R32 K43 ["adorneePart"]
      327 SETTABLEKS                       R1 R32 K0 ["jointInstance"]
      329 SETTABLEKS                       R17 R32 K44 ["alwaysOnTop"]
      331 CALL                             R30 2 1
      332 SETTABLEKS                       R30 R28 K47 ["Wire"]
      334 JUMP                             ; [+66]
      335 GETUPVAL                         R31 6
      336 CALL                             R31 0 1
      337 JUMPIFNOT                        R31 ; [+23]
      338 DUPTABLE                         R30 K51 [{"x", "y", "z"}]
      339 GETUPVAL                         R31 12
      340 LOADN                            R32 12
      341 MOVE                             R33 R27
      342 LOADK                            R34 K48 ["x"]
      343 CALL                             R31 3 1
      344 SETTABLEKS                       R31 R30 K48 ["x"]
      346 GETUPVAL                         R31 12
      347 LOADN                            R32 12
      348 MOVE                             R33 R27
      349 LOADK                            R34 K49 ["y"]
      350 CALL                             R31 3 1
      351 SETTABLEKS                       R31 R30 K49 ["y"]
      353 GETUPVAL                         R31 12
      354 LOADN                            R32 12
      355 MOVE                             R33 R27
      356 LOADK                            R34 K50 ["z"]
      357 CALL                             R31 3 1
      358 SETTABLEKS                       R31 R30 K50 ["z"]
      360 JUMP                             ; [+22]
      361 DUPTABLE                         R30 K51 [{"x", "y", "z"}]
      362 GETUPVAL                         R31 13
      363 LOADN                            R32 12
      364 MOVE                             R33 R27
      365 LOADK                            R34 K48 ["x"]
      366 CALL                             R31 3 1
      367 SETTABLEKS                       R31 R30 K48 ["x"]
      369 GETUPVAL                         R31 13
      370 LOADN                            R32 12
      371 MOVE                             R33 R27
      372 LOADK                            R34 K49 ["y"]
      373 CALL                             R31 3 1
      374 SETTABLEKS                       R31 R30 K49 ["y"]
      376 GETUPVAL                         R31 13
      377 LOADN                            R32 12
      378 MOVE                             R33 R27
      379 LOADK                            R34 K50 ["z"]
      380 CALL                             R31 3 1
      381 SETTABLEKS                       R31 R30 K50 ["z"]
      383 GETUPVAL                         R32 0
      384 GETTABLEKS                       R31 R32 K25 ["createElement"]
      386 GETUPVAL                         R32 11
      387 DUPTABLE                         R33 K54 [{"DEPRECATED_circlePoints", "color", "adorneePart", "DEPRECATED_sphereCf"}]
      388 SETTABLEKS                       R30 R33 K52 ["DEPRECATED_circlePoints"]
      390 GETTABLEKS                       R34 R20 K46 ["edgeColor"]
      392 SETTABLEKS                       R34 R33 K28 ["color"]
      394 SETTABLEKS                       R21 R33 K43 ["adorneePart"]
      396 SETTABLEKS                       R23 R33 K53 ["DEPRECATED_sphereCf"]
      398 CALL                             R31 2 1
      399 SETTABLEKS                       R31 R28 K47 ["Wire"]
      401 GETUPVAL                         R31 0
      402 GETTABLEKS                       R30 R31 K17 ["useMemo"]
      404 NEWCLOSURE                       R31 P9
      405 CAPTURE                          VAL R0
      406 CAPTURE                          UPVAL U6
      407 CAPTURE                          UPVAL U7
      408 CAPTURE                          UPVAL U8
      409 CAPTURE                          VAL R1
      410 NEWTABLE                         R32 0 1
      412 GETTABLEKS                       R33 R0 K21 ["childJoints"]
      414 SETLIST                          R32 R33 1 [1]
      416 CALL                             R30 2 1
      417 MOVE                             R31 R30
      418 LOADNIL                          R32
      419 LOADNIL                          R33
      420 FORGPREP                         R31
      421 GETUPVAL                         R37 0
      422 GETTABLEKS                       R36 R37 K25 ["createElement"]
      424 GETUPVAL                         R37 14
      425 DUPTABLE                         R38 K67 [{"parentInst", "childInst", "connectionAdorneePart", "standardRadius", "updatePositions", "getParentGlobalCf", "allowHover", "color", "edgeColor", "onJointClicked", "setHoveredPyramidParentName", "DEPRECATED_setHoveredJointName", "compositeHoverEnter", "compositeHoverLeave", "hoveredPyramidParentName", "DEPRECATED_isPlayingAnimation", "isJointHovered"}]
      426 GETTABLEKS                       R39 R35 K55 ["parentInst"]
      428 SETTABLEKS                       R39 R38 K55 ["parentInst"]
      430 GETTABLEKS                       R39 R35 K56 ["childInst"]
      432 SETTABLEKS                       R39 R38 K56 ["childInst"]
      434 GETTABLEKS                       R39 R35 K57 ["connectionAdorneePart"]
      436 SETTABLEKS                       R39 R38 K57 ["connectionAdorneePart"]
      438 SETTABLEKS                       R26 R38 K20 ["standardRadius"]
      440 GETTABLEKS                       R39 R0 K18 ["updatePositions"]
      442 SETTABLEKS                       R39 R38 K18 ["updatePositions"]
      444 NEWCLOSURE                       R39 P10
      445 CAPTURE                          UPVAL U2
      446 CAPTURE                          VAL R35
      447 CAPTURE                          UPVAL U3
      448 CAPTURE                          VAL R0
      449 CAPTURE                          REF R16
      450 SETTABLEKS                       R39 R38 K58 ["getParentGlobalCf"]
      452 LOADB                            R39 1
      453 SETTABLEKS                       R39 R38 K59 ["allowHover"]
      455 GETTABLEKS                       R39 R20 K28 ["color"]
      457 SETTABLEKS                       R39 R38 K28 ["color"]
      459 GETTABLEKS                       R39 R20 K46 ["edgeColor"]
      461 SETTABLEKS                       R39 R38 K46 ["edgeColor"]
      463 GETTABLEKS                       R39 R0 K60 ["onJointClicked"]
      465 SETTABLEKS                       R39 R38 K60 ["onJointClicked"]
      467 SETTABLEKS                       R6 R38 K61 ["setHoveredPyramidParentName"]
      469 GETUPVAL                         R40 1
      470 CALL                             R40 0 1
      471 JUMPIF                           R40 ; [+2]
      472 MOVE                             R39 R3
      473 JUMP                             ; [+1]
      474 LOADNIL                          R39
      475 SETTABLEKS                       R39 R38 K62 ["DEPRECATED_setHoveredJointName"]
      477 GETUPVAL                         R40 1
      478 CALL                             R40 0 1
      479 JUMPIFNOT                        R40 ; [+2]
      480 MOVE                             R39 R8
      481 JUMP                             ; [+1]
      482 LOADNIL                          R39
      483 SETTABLEKS                       R39 R38 K63 ["compositeHoverEnter"]
      485 GETUPVAL                         R40 1
      486 CALL                             R40 0 1
      487 JUMPIFNOT                        R40 ; [+2]
      488 MOVE                             R39 R9
      489 JUMP                             ; [+1]
      490 LOADNIL                          R39
      491 SETTABLEKS                       R39 R38 K64 ["compositeHoverLeave"]
      493 SETTABLEKS                       R5 R38 K65 ["hoveredPyramidParentName"]
      495 GETTABLEKS                       R39 R0 K41 ["DEPRECATED_isPlayingAnimation"]
      497 SETTABLEKS                       R39 R38 K41 ["DEPRECATED_isPlayingAnimation"]
      499 GETUPVAL                         R40 1
      500 CALL                             R40 0 1
      501 JUMPIFNOT                        R40 ; [+2]
      502 MOVE                             R39 R17
      503 JUMP                             ; [+1]
      504 LOADNIL                          R39
      505 SETTABLEKS                       R39 R38 K66 ["isJointHovered"]
      507 CALL                             R36 2 1
      508 SETTABLE                         R36 R28 R34
      509 FORGLOOP                         R31 2 ; [-89]
      511 LOADNIL                          R31
      512 JUMPIFNOT                        R10 ; [+171]
      513 JUMPIFNOT                        R12 ; [+170]
      514 GETUPVAL                         R33 15
      515 GETTABLEKS                       R32 R33 K68 ["createPortal"]
      517 GETUPVAL                         R34 0
      518 GETTABLEKS                       R33 R34 K25 ["createElement"]
      520 LOADK                            R34 K69 ["ScreenGui"]
      521 DUPTABLE                         R35 K73 [{"IgnoreGuiInset", "ResetOnSpawn", "ZIndexBehavior"}]
      522 LOADB                            R36 1
      523 SETTABLEKS                       R36 R35 K70 ["IgnoreGuiInset"]
      525 LOADB                            R36 0
      526 SETTABLEKS                       R36 R35 K71 ["ResetOnSpawn"]
      528 GETIMPORT                        R36 K76 [Enum.ZIndexBehavior.Sibling]
      530 SETTABLEKS                       R36 R35 K72 ["ZIndexBehavior"]
      532 DUPTABLE                         R36 K78 [{"Positioner"}]
      533 GETUPVAL                         R38 0
      534 GETTABLEKS                       R37 R38 K25 ["createElement"]
      536 LOADK                            R38 K79 ["Frame"]
      537 DUPTABLE                         R39 K83 [{"BackgroundTransparency", "Size", "Position", "ZIndex"}]
      538 LOADN                            R40 1
      539 SETTABLEKS                       R40 R39 K80 ["BackgroundTransparency"]
      541 GETIMPORT                        R40 K85 [UDim2.new]
      543 LOADN                            R41 0
      544 LOADN                            R42 0
      545 LOADN                            R43 0
      546 LOADN                            R44 0
      547 CALL                             R40 4 1
      548 SETTABLEKS                       R40 R39 K81 ["Size"]
      550 GETIMPORT                        R40 K85 [UDim2.new]
      552 LOADN                            R41 0
      553 GETTABLEKS                       R42 R14 K86 ["X"]
      555 LOADN                            R43 0
      556 GETTABLEKS                       R44 R14 K87 ["Y"]
      558 CALL                             R40 4 1
      559 SETTABLEKS                       R40 R39 K82 ["Position"]
      561 LOADN                            R40 200
      562 SETTABLEKS                       R40 R39 K34 ["ZIndex"]
      564 DUPTABLE                         R40 K89 [{"Tooltip"}]
      565 GETUPVAL                         R42 0
      566 GETTABLEKS                       R41 R42 K25 ["createElement"]
      568 LOADK                            R42 K90 ["TextLabel"]
      569 DUPTABLE                         R43 K98 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3", "Font", "TextSize", "AutomaticSize", "BorderSizePixel", "Text", "ZIndex"}]
      570 GETIMPORT                        R44 K99 [Color3.new]
      572 LOADN                            R45 0
      573 LOADN                            R46 0
      574 LOADN                            R47 0
      575 CALL                             R44 3 1
      576 SETTABLEKS                       R44 R43 K91 ["BackgroundColor3"]
      578 LOADK                            R44 K32 [0.25]
      579 SETTABLEKS                       R44 R43 K80 ["BackgroundTransparency"]
      581 GETIMPORT                        R44 K99 [Color3.new]
      583 LOADN                            R45 1
      584 LOADN                            R46 1
      585 LOADN                            R47 1
      586 CALL                             R44 3 1
      587 SETTABLEKS                       R44 R43 K92 ["TextColor3"]
      589 GETIMPORT                        R44 K101 [Enum.Font.SourceSans]
      591 SETTABLEKS                       R44 R43 K93 ["Font"]
      593 LOADN                            R44 14
      594 SETTABLEKS                       R44 R43 K94 ["TextSize"]
      596 GETIMPORT                        R44 K103 [Enum.AutomaticSize.XY]
      598 SETTABLEKS                       R44 R43 K95 ["AutomaticSize"]
      600 LOADN                            R44 0
      601 SETTABLEKS                       R44 R43 K96 ["BorderSizePixel"]
      603 LOADK                            R45 K104 ["%*: %*"]
      604 GETTABLEKS                       R47 R1 K105 ["ClassName"]
      606 GETTABLEKS                       R48 R1 K13 ["Name"]
      608 NAMECALL                         R45 R45 K106 ["format"]
      610 CALL                             R45 3 1
      611 MOVE                             R44 R45
      612 SETTABLEKS                       R44 R43 K97 ["Text"]
      614 LOADN                            R44 201
      615 SETTABLEKS                       R44 R43 K34 ["ZIndex"]
      617 DUPTABLE                         R44 K109 [{"UICorner", "Padding"}]
      618 GETUPVAL                         R46 0
      619 GETTABLEKS                       R45 R46 K25 ["createElement"]
      621 LOADK                            R46 K107 ["UICorner"]
      622 DUPTABLE                         R47 K111 [{"CornerRadius"}]
      623 GETIMPORT                        R48 K113 [UDim.new]
      625 LOADN                            R49 0
      626 LOADN                            R50 6
      627 CALL                             R48 2 1
      628 SETTABLEKS                       R48 R47 K110 ["CornerRadius"]
      630 CALL                             R45 2 1
      631 SETTABLEKS                       R45 R44 K107 ["UICorner"]
      633 GETUPVAL                         R46 0
      634 GETTABLEKS                       R45 R46 K25 ["createElement"]
      636 LOADK                            R46 K114 ["UIPadding"]
      637 DUPTABLE                         R47 K119 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      638 GETIMPORT                        R48 K113 [UDim.new]
      640 LOADN                            R49 0
      641 LOADN                            R50 8
      642 CALL                             R48 2 1
      643 SETTABLEKS                       R48 R47 K115 ["PaddingLeft"]
      645 GETIMPORT                        R48 K113 [UDim.new]
      647 LOADN                            R49 0
      648 LOADN                            R50 8
      649 CALL                             R48 2 1
      650 SETTABLEKS                       R48 R47 K116 ["PaddingRight"]
      652 GETIMPORT                        R48 K113 [UDim.new]
      654 LOADN                            R49 0
      655 LOADN                            R50 4
      656 CALL                             R48 2 1
      657 SETTABLEKS                       R48 R47 K117 ["PaddingTop"]
      659 GETIMPORT                        R48 K113 [UDim.new]
      661 LOADN                            R49 0
      662 LOADN                            R50 4
      663 CALL                             R48 2 1
      664 SETTABLEKS                       R48 R47 K118 ["PaddingBottom"]
      666 CALL                             R45 2 1
      667 SETTABLEKS                       R45 R44 K108 ["Padding"]
      669 CALL                             R41 3 1
      670 SETTABLEKS                       R41 R40 K88 ["Tooltip"]
      672 CALL                             R37 3 1
      673 SETTABLEKS                       R37 R36 K77 ["Positioner"]
      675 CALL                             R33 3 1
      676 GETIMPORT                        R34 K121 [game]
      678 LOADK                            R36 K122 ["CoreGui"]
      679 NAMECALL                         R34 R34 K123 ["GetService"]
      681 CALL                             R34 2 -1
      682 CALL                             R32 -1 1
      683 MOVE                             R31 R32
      684 GETUPVAL                         R33 0
      685 GETTABLEKS                       R32 R33 K25 ["createElement"]
      687 GETUPVAL                         R34 0
      688 GETTABLEKS                       R33 R34 K124 ["Fragment"]
      690 LOADNIL                          R34
      691 DUPTABLE                         R35 K127 [{"World", "TooltipPortal"}]
      692 GETUPVAL                         R37 0
      693 GETTABLEKS                       R36 R37 K25 ["createElement"]
      695 LOADK                            R37 K128 ["Folder"]
      696 LOADNIL                          R38
      697 MOVE                             R39 R28
      698 CALL                             R36 3 1
      699 SETTABLEKS                       R36 R35 K125 ["World"]
      701 SETTABLEKS                       R31 R35 K126 ["TooltipPortal"]
      703 CALL                             R32 3 -1
      704 CLOSEUPVALS                      R16
      705 RETURN                           R32 -1

PROTO_27:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
       11 FASTCALL1                        TYPE R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K1 [type]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
       18 LOADB                            R2 0
       19 RETURN                           R2 1
       20 MOVE                             R2 R0
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETTABLE                         R7 R1 R5
       25 JUMPIFEQ                         R7 R6 ; [+3]
       27 LOADB                            R7 0
       28 RETURN                           R7 1
       29 FORGLOOP                         R2 2 ; [-6]
       31 MOVE                             R2 R1
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETTABLE                         R7 R0 R5
       36 JUMPIFNOTEQKNIL                  R7 ; [+3]
       38 LOADB                            R7 0
       39 RETURN                           R7 1
       40 FORGLOOP                         R2 1 ; [-6]
       42 LOADB                            R2 1
       43 RETURN                           R2 1

PROTO_28:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLE                         R7 R0 R5
        9 JUMPIFEQ                         R7 R6 ; [+32]
       11 GETUPVAL                         R8 0
       12 GETTABLE                         R7 R8 R5
       13 JUMPIFNOT                        R7 ; [+8]
       14 GETUPVAL                         R7 1
       15 GETTABLE                         R8 R0 R5
       16 MOVE                             R9 R6
       17 CALL                             R7 2 1
       18 JUMPIF                           R7 ; [+23]
       19 LOADB                            R7 0
       20 RETURN                           R7 1
       21 JUMP                             ; [+20]
       22 GETUPVAL                         R8 2
       23 GETTABLE                         R7 R8 R5
       24 JUMPIFNOT                        R7 ; [+15]
       25 GETTABLEKS                       R7 R1 K0 ["jointInstance"]
       27 JUMPIFNOT                        R7 ; [+4]
       28 GETTABLEKS                       R8 R1 K0 ["jointInstance"]
       30 GETTABLEKS                       R7 R8 K1 ["Name"]
       32 GETTABLE                         R8 R0 R5
       33 JUMPIFEQ                         R8 R7 ; [+3]
       35 JUMPIFNOTEQ                      R6 R7 ; [+6]
       37 LOADB                            R8 0
       38 RETURN                           R8 1
       39 JUMP                             ; [+2]
       40 LOADB                            R7 0
       41 RETURN                           R7 1
       42 FORGLOOP                         R2 2 ; [-35]
       44 MOVE                             R2 R0
       45 LOADNIL                          R3
       46 LOADNIL                          R4
       47 FORGPREP                         R2
       48 GETTABLE                         R7 R1 R5
       49 JUMPIFNOTEQKNIL                  R7 ; [+3]
       51 LOADB                            R7 0
       52 RETURN                           R7 1
       53 FORGLOOP                         R2 1 ; [-6]
       55 LOADB                            R2 1
       56 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["AdaptiveAnimationTools"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R6 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R9 R0 K10 ["Src"]
       39 GETTABLEKS                       R8 R9 K12 ["Components"]
       41 GETTABLEKS                       R7 R8 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R7 K14 ["useJointSignals"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R10 R0 K10 ["Src"]
       50 GETTABLEKS                       R9 R10 K12 ["Components"]
       52 GETTABLEKS                       R8 R9 K15 ["Adornments"]
       54 GETTABLEKS                       R7 R8 K16 ["computeJointVisualState"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R11 R0 K10 ["Src"]
       61 GETTABLEKS                       R10 R11 K12 ["Components"]
       63 GETTABLEKS                       R9 R10 K15 ["Adornments"]
       65 GETTABLEKS                       R8 R9 K17 ["AxisCircleAdornment"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R12 R0 K10 ["Src"]
       72 GETTABLEKS                       R11 R12 K12 ["Components"]
       74 GETTABLEKS                       R10 R11 K15 ["Adornments"]
       76 GETTABLEKS                       R9 R10 K18 ["getAdornee"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R13 R0 K10 ["Src"]
       83 GETTABLEKS                       R12 R13 K12 ["Components"]
       85 GETTABLEKS                       R11 R12 K15 ["Adornments"]
       87 GETTABLEKS                       R10 R11 K19 ["buildCircle"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R13 R0 K10 ["Src"]
       94 GETTABLEKS                       R12 R13 K20 ["Flags"]
       96 GETTABLEKS                       R11 R12 K21 ["getFFlagAdaptiveAnimatonImprovements"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R14 R0 K10 ["Src"]
      103 GETTABLEKS                       R13 R14 K20 ["Flags"]
      105 GETTABLEKS                       R12 R13 K22 ["getFFlagAdaptiveAnimationConstraints"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R15 R0 K10 ["Src"]
      112 GETTABLEKS                       R14 R15 K20 ["Flags"]
      114 GETTABLEKS                       R13 R14 K23 ["getFFlagAdaptiveAnimationQoL"]
      116 CALL                             R12 1 1
      117 GETIMPORT                        R13 K5 [require]
      119 GETTABLEKS                       R16 R0 K10 ["Src"]
      121 GETTABLEKS                       R15 R16 K20 ["Flags"]
      123 GETTABLEKS                       R14 R15 K24 ["getFFlagAdaptiveAnimationHandRig"]
      125 CALL                             R13 1 1
      126 GETIMPORT                        R14 K5 [require]
      128 GETTABLEKS                       R17 R0 K10 ["Src"]
      130 GETTABLEKS                       R16 R17 K25 ["Resources"]
      132 GETTABLEKS                       R15 R16 K26 ["Constants"]
      134 CALL                             R14 1 1
      135 DUPCLOSURE                       R15 K27 [PROTO_0]
      136 DUPCLOSURE                       R16 K28 [PROTO_1]
      137 DUPCLOSURE                       R17 K29 [PROTO_10]
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R12
      142 DUPCLOSURE                       R18 K30 [PROTO_26]
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R2
      159 DUPCLOSURE                       R19 K31 [PROTO_27]
      160 DUPTABLE                         R20 K35 [{"childJoints", "mappedLookup", "otherMappedLookup"}]
      161 LOADB                            R21 1
      162 SETTABLEKS                       R21 R20 K32 ["childJoints"]
      164 LOADB                            R21 1
      165 SETTABLEKS                       R21 R20 K33 ["mappedLookup"]
      167 LOADB                            R21 1
      168 SETTABLEKS                       R21 R20 K34 ["otherMappedLookup"]
      170 DUPTABLE                         R21 K38 [{"globalHoveredJointName", "mannequinHoveredJointName"}]
      171 LOADB                            R22 1
      172 SETTABLEKS                       R22 R21 K36 ["globalHoveredJointName"]
      174 LOADB                            R22 1
      175 SETTABLEKS                       R22 R21 K37 ["mannequinHoveredJointName"]
      177 DUPCLOSURE                       R22 K39 [PROTO_28]
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R21
      181 GETTABLEKS                       R23 R1 K40 ["memo"]
      183 MOVE                             R24 R18
      184 MOVE                             R25 R22
      185 CALL                             R23 2 1
      186 MOVE                             R25 R13
      187 CALL                             R25 0 1
      188 JUMPIFNOT                        R25 ; [+2]
      189 MOVE                             R24 R23
      190 JUMP                             ; [+1]
      191 MOVE                             R24 R18
      192 DUPTABLE                         R25 K43 [{"Component", "_test"}]
      193 SETTABLEKS                       R24 R25 K41 ["Component"]
      195 DUPTABLE                         R26 K50 [{"DEPRECATED_getAdornee", "DEPRECATED_buildCircle", "shallowTableEqual", "ConnectionGeom", "memoComparator", "JointAdornmentComposite"}]
      196 SETTABLEKS                       R15 R26 K44 ["DEPRECATED_getAdornee"]
      198 SETTABLEKS                       R16 R26 K45 ["DEPRECATED_buildCircle"]
      200 SETTABLEKS                       R19 R26 K46 ["shallowTableEqual"]
      202 SETTABLEKS                       R17 R26 K47 ["ConnectionGeom"]
      204 SETTABLEKS                       R22 R26 K48 ["memoComparator"]
      206 SETTABLEKS                       R18 R26 K49 ["JointAdornmentComposite"]
      208 SETTABLEKS                       R26 R25 K42 ["_test"]
      210 RETURN                           R25 1
