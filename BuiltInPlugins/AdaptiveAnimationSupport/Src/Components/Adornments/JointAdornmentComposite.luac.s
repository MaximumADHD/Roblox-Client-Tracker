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
       27 JUMPIFNOTLT                      R5 R4 ; [+41]
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
       50 GETIMPORT                        R8 K16 [CFrame.lookAt]
       52 MOVE                             R9 R7
       53 ADD                              R10 R7 R5
       54 CALL                             R8 2 1
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R9 R10 K17 ["connectionAdorneePart"]
       58 JUMPIFNOT                        R9 ; [+10]
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R11 R12 K17 ["connectionAdorneePart"]
       62 GETTABLEKS                       R10 R11 K14 ["CFrame"]
       64 NAMECALL                         R10 R10 K18 ["Inverse"]
       66 CALL                             R10 1 1
       67 MUL                              R9 R10 R8
       68 RETURN                           R9 1
       69 GETIMPORT                        R5 K20 [CFrame.new]
       71 CALL                             R5 0 -1
       72 RETURN                           R5 -1

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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Clear"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K4 ["setHoveredJointName"]
       17 LOADNIL                          R1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["parentInst"]
        3 GETTABLEKS                       R2 R3 K1 ["Name"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 MOVE                             R1 R0
       10 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["allowHover"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["setHoveredPyramidParentName"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K1 ["updatePositions"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R2 R2 K2 ["map"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R3 R0 K1 ["updatePositions"]
       15 NEWCLOSURE                       R5 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 NAMECALL                         R3 R3 K2 ["map"]
       20 CALL                             R3 2 1
       21 NAMECALL                         R4 R3 K3 ["getValue"]
       23 CALL                             R4 1 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K4 ["useEffect"]
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R4
       31 NEWTABLE                         R7 0 1
       33 MOVE                             R8 R4
       34 SETLIST                          R7 R8 1 [1]
       36 CALL                             R5 2 0
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R5 R6 K5 ["createElement"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K6 ["Fragment"]
       43 LOADNIL                          R7
       44 DUPTABLE                         R8 K9 [{"Pyramid", "Wireframe"}]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R9 R10 K5 ["createElement"]
       48 LOADK                            R10 K10 ["PyramidHandleAdornment"]
       49 NEWTABLE                         R11 16 0
       51 GETTABLEKS                       R12 R0 K11 ["connectionAdorneePart"]
       53 SETTABLEKS                       R12 R11 K12 ["Adornee"]
       55 SETTABLEKS                       R2 R11 K13 ["CFrame"]
       57 LOADK                            R12 K14 [0.25]
       58 SETTABLEKS                       R12 R11 K15 ["Transparency"]
       60 GETTABLEKS                       R13 R0 K17 ["standardRadius"]
       62 MULK                             R12 R13 K16 [1.5]
       63 SETTABLEKS                       R12 R11 K18 ["Size"]
       65 SETTABLEKS                       R3 R11 K19 ["Height"]
       67 GETTABLEKS                       R12 R0 K20 ["color"]
       69 SETTABLEKS                       R12 R11 K21 ["Color3"]
       71 LOADB                            R12 1
       72 SETTABLEKS                       R12 R11 K22 ["AlwaysOnTop"]
       74 LOADN                            R12 0
       75 SETTABLEKS                       R12 R11 K23 ["ZIndex"]
       77 GETUPVAL                         R14 0
       78 GETTABLEKS                       R13 R14 K24 ["Event"]
       80 GETTABLEKS                       R12 R13 K25 ["MouseEnter"]
       82 NEWCLOSURE                       R13 P3
       83 CAPTURE                          VAL R0
       84 SETTABLE                         R13 R11 R12
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R13 R14 K24 ["Event"]
       88 GETTABLEKS                       R12 R13 K26 ["MouseLeave"]
       90 NEWCLOSURE                       R13 P4
       91 CAPTURE                          VAL R0
       92 SETTABLE                         R13 R11 R12
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R13 R14 K24 ["Event"]
       96 GETTABLEKS                       R12 R13 K27 ["MouseButton1Down"]
       98 NEWCLOSURE                       R13 P5
       99 CAPTURE                          VAL R0
      100 SETTABLE                         R13 R11 R12
      101 CALL                             R9 2 1
      102 SETTABLEKS                       R9 R8 K7 ["Pyramid"]
      104 GETTABLEKS                       R10 R0 K28 ["isPlayingAnimation"]
      106 JUMPIF                           R10 ; [+28]
      107 GETUPVAL                         R10 0
      108 GETTABLEKS                       R9 R10 K5 ["createElement"]
      110 LOADK                            R10 K29 ["WireframeHandleAdornment"]
      111 DUPTABLE                         R11 K31 [{"Adornee", "AlwaysOnTop", "ZIndex", "Transparency", "Color3", "CFrame", "ref"}]
      112 GETTABLEKS                       R12 R0 K11 ["connectionAdorneePart"]
      114 SETTABLEKS                       R12 R11 K12 ["Adornee"]
      116 LOADB                            R12 1
      117 SETTABLEKS                       R12 R11 K22 ["AlwaysOnTop"]
      119 LOADN                            R12 0
      120 SETTABLEKS                       R12 R11 K23 ["ZIndex"]
      122 LOADN                            R12 0
      123 SETTABLEKS                       R12 R11 K15 ["Transparency"]
      125 GETTABLEKS                       R12 R0 K32 ["edgeColor"]
      127 SETTABLEKS                       R12 R11 K21 ["Color3"]
      129 SETTABLEKS                       R2 R11 K13 ["CFrame"]
      131 SETTABLEKS                       R1 R11 K30 ["ref"]
      133 CALL                             R9 2 1
      134 JUMPIF                           R9 ; [+1]
      135 LOADNIL                          R9
      136 SETTABLEKS                       R9 R8 K8 ["Wireframe"]
      138 CALL                             R5 3 -1
      139 RETURN                           R5 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getGlobalCoordinateFrame"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 CALL                             R1 0 1
        7 JUMPIF                           R1 ; [+21]
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R1 R2 K1 ["DEPRECATED_applyTposeAdjustment"]
       11 JUMPIFNOT                        R1 ; [+17]
       12 GETUPVAL                         R2 4
       13 GETTABLEKS                       R1 R2 K2 ["adjustmentValue"]
       15 JUMPIFNOT                        R1 ; [+13]
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R2 R3 K2 ["adjustmentValue"]
       19 FASTCALL1                        TYPEOF R2 ; [+2]
       20 GETIMPORT                        R1 K4 [typeof]
       22 CALL                             R1 1 1
       23 JUMPIFNOTEQKS                    R1 K5 ["CFrame"] ; [+5]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R1 R2 K2 ["adjustmentValue"]
       28 MUL                              R0 R0 R1
       29 RETURN                           R0 1

PROTO_11:
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

PROTO_12:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R6 0
        3 SUBK                             R4 R0 K0 [1]
        4 LOADN                            R5 1
        5 FORNPREP                         R4
        6 DIV                              R9 R6 R0
        7 MULK                             R8 R9 K2 [3.14159265358979]
        8 MULK                             R7 R8 K1 [2]
        9 JUMPIFNOTEQKS                    R2 K3 ["x"] ; [+25]
       11 LOADN                            R11 0
       12 FASTCALL1                        MATH_COS R7 ; [+3]
       13 MOVE                             R14 R7
       14 GETIMPORT                        R13 K6 [math.cos]
       16 CALL                             R13 1 1
       17 MUL                              R12 R13 R1
       18 FASTCALL1                        MATH_SIN R7 ; [+3]
       19 MOVE                             R15 R7
       20 GETIMPORT                        R14 K8 [math.sin]
       22 CALL                             R14 1 1
       23 MUL                              R13 R14 R1
       24 FASTCALL                         VECTOR ; [+2]
       25 GETIMPORT                        R10 K11 [Vector3.new]
       27 CALL                             R10 3 1
       28 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
       30 MOVE                             R9 R3
       31 GETIMPORT                        R8 K14 [table.insert]
       33 CALL                             R8 2 0
       34 JUMP                             ; [+49]
       35 JUMPIFNOTEQKS                    R2 K15 ["y"] ; [+25]
       37 FASTCALL1                        MATH_COS R7 ; [+3]
       38 MOVE                             R13 R7
       39 GETIMPORT                        R12 K6 [math.cos]
       41 CALL                             R12 1 1
       42 MUL                              R11 R12 R1
       43 LOADN                            R12 0
       44 FASTCALL1                        MATH_SIN R7 ; [+3]
       45 MOVE                             R15 R7
       46 GETIMPORT                        R14 K8 [math.sin]
       48 CALL                             R14 1 1
       49 MUL                              R13 R14 R1
       50 FASTCALL                         VECTOR ; [+2]
       51 GETIMPORT                        R10 K11 [Vector3.new]
       53 CALL                             R10 3 1
       54 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
       56 MOVE                             R9 R3
       57 GETIMPORT                        R8 K14 [table.insert]
       59 CALL                             R8 2 0
       60 JUMP                             ; [+23]
       61 FASTCALL1                        MATH_COS R7 ; [+3]
       62 MOVE                             R13 R7
       63 GETIMPORT                        R12 K6 [math.cos]
       65 CALL                             R12 1 1
       66 MUL                              R11 R12 R1
       67 FASTCALL1                        MATH_SIN R7 ; [+3]
       68 MOVE                             R14 R7
       69 GETIMPORT                        R13 K8 [math.sin]
       71 CALL                             R13 1 1
       72 MUL                              R12 R13 R1
       73 LOADN                            R13 0
       74 FASTCALL                         VECTOR ; [+2]
       75 GETIMPORT                        R10 K11 [Vector3.new]
       77 CALL                             R10 3 1
       78 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
       80 MOVE                             R9 R3
       81 GETIMPORT                        R8 K14 [table.insert]
       83 CALL                             R8 2 0
       84 FORNLOOP                         R4
       85 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R3 R0 K0 ["Position"]
        7 NAMECALL                         R1 R1 K1 ["WorldToViewportPoint"]
        9 CALL                             R1 2 2
       10 JUMPIFNOT                        R2 ; [+14]
       11 GETUPVAL                         R3 3
       12 GETIMPORT                        R4 K4 [Vector2.new]
       14 GETTABLEKS                       R5 R1 K5 ["X"]
       16 GETTABLEKS                       R7 R1 K7 ["Y"]
       18 SUBK                             R6 R7 K6 [30]
       19 CALL                             R4 2 -1
       20 CALL                             R3 -1 0
       21 GETUPVAL                         R3 4
       22 LOADB                            R4 1
       23 CALL                             R3 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R3 4
       26 LOADB                            R4 0
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_15:
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
       12 GETUPVAL                         R1 2
       13 JUMPIF                           R1 ; [+1]
       14 GETUPVAL                         R1 3
       15 JUMPIF                           R1 ; [+7]
       16 GETUPVAL                         R2 0
       17 LOADB                            R3 0
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 1
       20 LOADB                            R3 0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 0
       24 LOADB                            R3 1
       25 CALL                             R2 1 0
       26 LOADB                            R2 1
       27 GETIMPORT                        R4 K4 [game]
       29 LOADK                            R6 K5 ["RunService"]
       30 NAMECALL                         R4 R4 K6 ["GetService"]
       32 CALL                             R4 2 1
       33 GETTABLEKS                       R3 R4 K7 ["RenderStepped"]
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          REF R2
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U1
       41 NAMECALL                         R3 R3 K8 ["Connect"]
       43 CALL                             R3 2 1
       44 NEWCLOSURE                       R4 P1
       45 CAPTURE                          REF R2
       46 CAPTURE                          VAL R3
       47 CLOSEUPVALS                      R2
       48 RETURN                           R4 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Name"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Name"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+4]
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onJointClicked"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["onJointClicked"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["childJoints"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 MOVE                             R2 R1
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETUPVAL                         R7 1
       13 GETUPVAL                         R8 2
       14 MOVE                             R9 R7
       15 CALL                             R8 1 1
       16 JUMPIF                           R8 ; [+3]
       17 GETUPVAL                         R8 2
       18 MOVE                             R9 R6
       19 CALL                             R8 1 1
       20 JUMPIFNOT                        R8 ; [+18]
       21 LOADK                            R10 K1 ["Connection_%*_%*_%*"]
       22 GETTABLEKS                       R12 R7 K2 ["Name"]
       24 GETTABLEKS                       R13 R6 K2 ["Name"]
       26 MOVE                             R14 R5
       27 NAMECALL                         R10 R10 K3 ["format"]
       29 CALL                             R10 4 1
       30 MOVE                             R9 R10
       31 DUPTABLE                         R10 K7 [{"parentInst", "childInst", "connectionAdorneePart"}]
       32 SETTABLEKS                       R7 R10 K4 ["parentInst"]
       34 SETTABLEKS                       R6 R10 K5 ["childInst"]
       36 SETTABLEKS                       R8 R10 K6 ["connectionAdorneePart"]
       38 SETTABLE                         R10 R0 R9
       39 FORGLOOP                         R2 2 ; [-28]
       41 RETURN                           R0 1

PROTO_20:
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

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["jointInstance"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K1 ["useState"]
       10 LOADNIL                          R5
       11 CALL                             R4 1 2
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K1 ["useState"]
       15 LOADB                            R7 0
       16 CALL                             R6 1 2
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R8 R9 K1 ["useState"]
       20 LOADB                            R9 0
       21 CALL                             R8 1 2
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R10 R11 K1 ["useState"]
       25 GETIMPORT                        R11 K4 [Vector2.new]
       27 LOADN                            R12 0
       28 LOADN                            R13 0
       29 CALL                             R11 2 -1
       30 CALL                             R10 -1 2
       31 LOADNIL                          R12
       32 GETUPVAL                         R13 1
       33 CALL                             R13 0 1
       34 JUMPIF                           R13 ; [+9]
       35 GETTABLEKS                       R13 R0 K5 ["DEPRECATED_rigDescriptor"]
       37 GETTABLEKS                       R14 R0 K6 ["DEPRECATED_jointLabel"]
       39 GETUPVAL                         R15 2
       40 MOVE                             R16 R13
       41 MOVE                             R17 R14
       42 CALL                             R15 2 1
       43 MOVE                             R12 R15
       44 GETTABLEKS                       R13 R0 K7 ["mappedLookup"]
       46 JUMPIF                           R13 ; [+2]
       47 NEWTABLE                         R13 0 0
       49 GETUPVAL                         R14 3
       50 MOVE                             R15 R1
       51 GETTABLEKS                       R16 R0 K8 ["selectedJointInstance"]
       53 MOVE                             R17 R2
       54 MOVE                             R18 R4
       55 MOVE                             R19 R13
       56 CALL                             R14 5 1
       57 GETTABLEKS                       R15 R0 K9 ["updatePositions"]
       59 NEWCLOSURE                       R17 P0
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          VAL R1
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          VAL R0
       64 CAPTURE                          REF R12
       65 NAMECALL                         R15 R15 K10 ["map"]
       67 CALL                             R15 2 1
       68 GETUPVAL                         R16 5
       69 MOVE                             R17 R1
       70 CALL                             R16 1 1
       71 NEWCLOSURE                       R19 P1
       72 CAPTURE                          VAL R16
       73 NAMECALL                         R17 R15 K10 ["map"]
       75 CALL                             R17 2 1
       76 GETUPVAL                         R19 4
       77 GETTABLEKS                       R18 R19 K11 ["getGlobalCoordinateFrame"]
       79 MOVE                             R19 R1
       80 CALL                             R18 1 1
       81 GETUPVAL                         R19 1
       82 CALL                             R19 0 1
       83 JUMPIF                           R19 ; [+17]
       84 GETTABLEKS                       R19 R0 K12 ["DEPRECATED_applyTposeAdjustment"]
       86 JUMPIFNOT                        R19 ; [+14]
       87 GETTABLEKS                       R19 R12 K13 ["adjustmentValue"]
       89 JUMPIFNOT                        R19 ; [+11]
       90 GETTABLEKS                       R20 R12 K13 ["adjustmentValue"]
       92 FASTCALL1                        TYPEOF R20 ; [+2]
       93 GETIMPORT                        R19 K15 [typeof]
       95 CALL                             R19 1 1
       96 JUMPIFNOTEQKS                    R19 K16 ["CFrame"] ; [+4]
       98 GETTABLEKS                       R19 R12 K13 ["adjustmentValue"]
      100 MUL                              R18 R18 R19
      101 GETTABLEKS                       R19 R0 K17 ["standardRadius"]
      103 DUPCLOSURE                       R20 K18 [PROTO_12]
      104 ORK                              R21 R19 K19 [0.05]
      105 DUPTABLE                         R22 K23 [{"x", "y", "z"}]
      106 MOVE                             R23 R20
      107 LOADN                            R24 12
      108 MOVE                             R25 R21
      109 LOADK                            R26 K20 ["x"]
      110 CALL                             R23 3 1
      111 SETTABLEKS                       R23 R22 K20 ["x"]
      113 MOVE                             R23 R20
      114 LOADN                            R24 12
      115 MOVE                             R25 R21
      116 LOADK                            R26 K21 ["y"]
      117 CALL                             R23 3 1
      118 SETTABLEKS                       R23 R22 K21 ["y"]
      120 MOVE                             R23 R20
      121 LOADN                            R24 12
      122 MOVE                             R25 R21
      123 LOADK                            R26 K22 ["z"]
      124 CALL                             R23 3 1
      125 SETTABLEKS                       R23 R22 K22 ["z"]
      127 GETUPVAL                         R24 0
      128 GETTABLEKS                       R23 R24 K24 ["useEffect"]
      130 NEWCLOSURE                       R24 P3
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R4
      135 CAPTURE                          REF R18
      136 CAPTURE                          VAL R11
      137 NEWTABLE                         R25 0 3
      139 MOVE                             R26 R2
      140 MOVE                             R27 R4
      141 MOVE                             R28 R18
      142 SETLIST                          R25 R26 3 [1]
      144 CALL                             R23 2 0
      145 NEWTABLE                         R23 0 0
      147 GETUPVAL                         R25 0
      148 GETTABLEKS                       R24 R25 K25 ["createElement"]
      150 LOADK                            R25 K26 ["SphereHandleAdornment"]
      151 NEWTABLE                         R26 16 0
      153 SETTABLEKS                       R19 R26 K27 ["Radius"]
      155 GETTABLEKS                       R27 R14 K28 ["color"]
      157 SETTABLEKS                       R27 R26 K29 ["Color3"]
      159 LOADN                            R27 1
      160 SETTABLEKS                       R27 R26 K30 ["ZIndex"]
      162 LOADB                            R27 1
      163 SETTABLEKS                       R27 R26 K31 ["AlwaysOnTop"]
      165 SETTABLEKS                       R16 R26 K32 ["Adornee"]
      167 LOADK                            R27 K33 [0.25]
      168 SETTABLEKS                       R27 R26 K34 ["Transparency"]
      170 SETTABLEKS                       R17 R26 K16 ["CFrame"]
      172 GETUPVAL                         R29 0
      173 GETTABLEKS                       R28 R29 K35 ["Event"]
      175 GETTABLEKS                       R27 R28 K36 ["MouseEnter"]
      177 NEWCLOSURE                       R28 P4
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R5
      181 JUMPIF                           R28 ; [+1]
      182 LOADNIL                          R28
      183 SETTABLE                         R28 R26 R27
      184 GETUPVAL                         R29 0
      185 GETTABLEKS                       R28 R29 K35 ["Event"]
      187 GETTABLEKS                       R27 R28 K37 ["MouseLeave"]
      189 NEWCLOSURE                       R28 P5
      190 CAPTURE                          VAL R2
      191 CAPTURE                          VAL R1
      192 CAPTURE                          VAL R3
      193 JUMPIF                           R28 ; [+1]
      194 LOADNIL                          R28
      195 SETTABLE                         R28 R26 R27
      196 GETUPVAL                         R29 0
      197 GETTABLEKS                       R28 R29 K35 ["Event"]
      199 GETTABLEKS                       R27 R28 K38 ["MouseButton1Down"]
      201 NEWCLOSURE                       R28 P6
      202 CAPTURE                          VAL R0
      203 CAPTURE                          VAL R1
      204 SETTABLE                         R28 R26 R27
      205 CALL                             R24 2 1
      206 FASTCALL2                        TABLE_INSERT R23 R24 ; [+5]
      208 MOVE                             R26 R23
      209 MOVE                             R27 R24
      210 GETIMPORT                        R25 K41 [table.insert]
      212 CALL                             R25 2 0
      213 JUMPIFNOT                        R16 ; [+29]
      214 GETTABLEKS                       R25 R0 K42 ["isPlayingAnimation"]
      216 JUMPIF                           R25 ; [+26]
      217 GETUPVAL                         R26 0
      218 GETTABLEKS                       R25 R26 K25 ["createElement"]
      220 GETUPVAL                         R26 6
      221 DUPTABLE                         R27 K46 [{"circlePoints", "color", "Transparency", "adorneePart", "sphereCf"}]
      222 SETTABLEKS                       R22 R27 K43 ["circlePoints"]
      224 GETTABLEKS                       R28 R14 K47 ["edgeColor"]
      226 SETTABLEKS                       R28 R27 K28 ["color"]
      228 LOADN                            R28 0
      229 SETTABLEKS                       R28 R27 K34 ["Transparency"]
      231 SETTABLEKS                       R16 R27 K44 ["adorneePart"]
      233 SETTABLEKS                       R17 R27 K45 ["sphereCf"]
      235 CALL                             R25 2 1
      236 FASTCALL2                        TABLE_INSERT R23 R25 ; [+5]
      238 MOVE                             R27 R23
      239 MOVE                             R28 R25
      240 GETIMPORT                        R26 K41 [table.insert]
      242 CALL                             R26 2 0
      243 GETUPVAL                         R26 0
      244 GETTABLEKS                       R25 R26 K48 ["useMemo"]
      246 NEWCLOSURE                       R26 P7
      247 CAPTURE                          VAL R0
      248 CAPTURE                          VAL R1
      249 CAPTURE                          UPVAL U5
      250 NEWTABLE                         R27 0 1
      252 GETTABLEKS                       R28 R0 K49 ["childJoints"]
      254 JUMPIF                           R28 ; [+2]
      255 NEWTABLE                         R28 0 0
      257 SETLIST                          R27 R28 1 [1]
      259 CALL                             R25 2 1
      260 MOVE                             R26 R25
      261 LOADNIL                          R27
      262 LOADNIL                          R28
      263 FORGPREP                         R26
      264 GETUPVAL                         R32 0
      265 GETTABLEKS                       R31 R32 K25 ["createElement"]
      267 GETUPVAL                         R32 7
      268 DUPTABLE                         R33 K59 [{"parentInst", "childInst", "connectionAdorneePart", "standardRadius", "updatePositions", "getParentGlobalCf", "allowHover", "color", "edgeColor", "onJointClicked", "setHoveredPyramidParentName", "setHoveredJointName", "hoveredPyramidParentName", "isPlayingAnimation"}]
      269 GETTABLEKS                       R34 R30 K50 ["parentInst"]
      271 SETTABLEKS                       R34 R33 K50 ["parentInst"]
      273 GETTABLEKS                       R34 R30 K51 ["childInst"]
      275 SETTABLEKS                       R34 R33 K51 ["childInst"]
      277 GETTABLEKS                       R34 R30 K52 ["connectionAdorneePart"]
      279 SETTABLEKS                       R34 R33 K52 ["connectionAdorneePart"]
      281 SETTABLEKS                       R19 R33 K17 ["standardRadius"]
      283 GETTABLEKS                       R34 R0 K9 ["updatePositions"]
      285 SETTABLEKS                       R34 R33 K9 ["updatePositions"]
      287 NEWCLOSURE                       R34 P8
      288 CAPTURE                          UPVAL U4
      289 CAPTURE                          VAL R30
      290 CAPTURE                          UPVAL U1
      291 CAPTURE                          VAL R0
      292 CAPTURE                          REF R12
      293 SETTABLEKS                       R34 R33 K53 ["getParentGlobalCf"]
      295 LOADB                            R34 1
      296 SETTABLEKS                       R34 R33 K54 ["allowHover"]
      298 GETTABLEKS                       R34 R14 K28 ["color"]
      300 SETTABLEKS                       R34 R33 K28 ["color"]
      302 GETTABLEKS                       R34 R14 K47 ["edgeColor"]
      304 SETTABLEKS                       R34 R33 K47 ["edgeColor"]
      306 GETTABLEKS                       R34 R0 K55 ["onJointClicked"]
      308 SETTABLEKS                       R34 R33 K55 ["onJointClicked"]
      310 SETTABLEKS                       R5 R33 K56 ["setHoveredPyramidParentName"]
      312 SETTABLEKS                       R3 R33 K57 ["setHoveredJointName"]
      314 SETTABLEKS                       R4 R33 K58 ["hoveredPyramidParentName"]
      316 GETTABLEKS                       R34 R0 K42 ["isPlayingAnimation"]
      318 SETTABLEKS                       R34 R33 K42 ["isPlayingAnimation"]
      320 CALL                             R31 2 1
      321 FASTCALL2                        TABLE_INSERT R23 R31 ; [+5]
      323 MOVE                             R33 R23
      324 MOVE                             R34 R31
      325 GETIMPORT                        R32 K41 [table.insert]
      327 CALL                             R32 2 0
      328 FORGLOOP                         R26 2 ; [-65]
      330 LOADNIL                          R26
      331 JUMPIFNOT                        R6 ; [+171]
      332 JUMPIFNOT                        R8 ; [+170]
      333 GETUPVAL                         R28 8
      334 GETTABLEKS                       R27 R28 K60 ["createPortal"]
      336 GETUPVAL                         R29 0
      337 GETTABLEKS                       R28 R29 K25 ["createElement"]
      339 LOADK                            R29 K61 ["ScreenGui"]
      340 DUPTABLE                         R30 K65 [{"IgnoreGuiInset", "ResetOnSpawn", "ZIndexBehavior"}]
      341 LOADB                            R31 1
      342 SETTABLEKS                       R31 R30 K62 ["IgnoreGuiInset"]
      344 LOADB                            R31 0
      345 SETTABLEKS                       R31 R30 K63 ["ResetOnSpawn"]
      347 GETIMPORT                        R31 K68 [Enum.ZIndexBehavior.Sibling]
      349 SETTABLEKS                       R31 R30 K64 ["ZIndexBehavior"]
      351 DUPTABLE                         R31 K70 [{"Positioner"}]
      352 GETUPVAL                         R33 0
      353 GETTABLEKS                       R32 R33 K25 ["createElement"]
      355 LOADK                            R33 K71 ["Frame"]
      356 DUPTABLE                         R34 K75 [{"BackgroundTransparency", "Size", "Position", "ZIndex"}]
      357 LOADN                            R35 1
      358 SETTABLEKS                       R35 R34 K72 ["BackgroundTransparency"]
      360 GETIMPORT                        R35 K77 [UDim2.new]
      362 LOADN                            R36 0
      363 LOADN                            R37 0
      364 LOADN                            R38 0
      365 LOADN                            R39 0
      366 CALL                             R35 4 1
      367 SETTABLEKS                       R35 R34 K73 ["Size"]
      369 GETIMPORT                        R35 K77 [UDim2.new]
      371 LOADN                            R36 0
      372 GETTABLEKS                       R37 R10 K78 ["X"]
      374 LOADN                            R38 0
      375 GETTABLEKS                       R39 R10 K79 ["Y"]
      377 CALL                             R35 4 1
      378 SETTABLEKS                       R35 R34 K74 ["Position"]
      380 LOADN                            R35 200
      381 SETTABLEKS                       R35 R34 K30 ["ZIndex"]
      383 DUPTABLE                         R35 K81 [{"Tooltip"}]
      384 GETUPVAL                         R37 0
      385 GETTABLEKS                       R36 R37 K25 ["createElement"]
      387 LOADK                            R37 K82 ["TextLabel"]
      388 DUPTABLE                         R38 K90 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3", "Font", "TextSize", "AutomaticSize", "BorderSizePixel", "Text", "ZIndex"}]
      389 GETIMPORT                        R39 K91 [Color3.new]
      391 LOADN                            R40 0
      392 LOADN                            R41 0
      393 LOADN                            R42 0
      394 CALL                             R39 3 1
      395 SETTABLEKS                       R39 R38 K83 ["BackgroundColor3"]
      397 LOADK                            R39 K33 [0.25]
      398 SETTABLEKS                       R39 R38 K72 ["BackgroundTransparency"]
      400 GETIMPORT                        R39 K91 [Color3.new]
      402 LOADN                            R40 1
      403 LOADN                            R41 1
      404 LOADN                            R42 1
      405 CALL                             R39 3 1
      406 SETTABLEKS                       R39 R38 K84 ["TextColor3"]
      408 GETIMPORT                        R39 K93 [Enum.Font.SourceSans]
      410 SETTABLEKS                       R39 R38 K85 ["Font"]
      412 LOADN                            R39 14
      413 SETTABLEKS                       R39 R38 K86 ["TextSize"]
      415 GETIMPORT                        R39 K95 [Enum.AutomaticSize.XY]
      417 SETTABLEKS                       R39 R38 K87 ["AutomaticSize"]
      419 LOADN                            R39 0
      420 SETTABLEKS                       R39 R38 K88 ["BorderSizePixel"]
      422 LOADK                            R40 K96 ["%*: %*"]
      423 GETTABLEKS                       R42 R1 K97 ["ClassName"]
      425 GETTABLEKS                       R43 R1 K98 ["Name"]
      427 NAMECALL                         R40 R40 K99 ["format"]
      429 CALL                             R40 3 1
      430 MOVE                             R39 R40
      431 SETTABLEKS                       R39 R38 K89 ["Text"]
      433 LOADN                            R39 201
      434 SETTABLEKS                       R39 R38 K30 ["ZIndex"]
      436 DUPTABLE                         R39 K102 [{"UICorner", "Padding"}]
      437 GETUPVAL                         R41 0
      438 GETTABLEKS                       R40 R41 K25 ["createElement"]
      440 LOADK                            R41 K100 ["UICorner"]
      441 DUPTABLE                         R42 K104 [{"CornerRadius"}]
      442 GETIMPORT                        R43 K106 [UDim.new]
      444 LOADN                            R44 0
      445 LOADN                            R45 6
      446 CALL                             R43 2 1
      447 SETTABLEKS                       R43 R42 K103 ["CornerRadius"]
      449 CALL                             R40 2 1
      450 SETTABLEKS                       R40 R39 K100 ["UICorner"]
      452 GETUPVAL                         R41 0
      453 GETTABLEKS                       R40 R41 K25 ["createElement"]
      455 LOADK                            R41 K107 ["UIPadding"]
      456 DUPTABLE                         R42 K112 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      457 GETIMPORT                        R43 K106 [UDim.new]
      459 LOADN                            R44 0
      460 LOADN                            R45 8
      461 CALL                             R43 2 1
      462 SETTABLEKS                       R43 R42 K108 ["PaddingLeft"]
      464 GETIMPORT                        R43 K106 [UDim.new]
      466 LOADN                            R44 0
      467 LOADN                            R45 8
      468 CALL                             R43 2 1
      469 SETTABLEKS                       R43 R42 K109 ["PaddingRight"]
      471 GETIMPORT                        R43 K106 [UDim.new]
      473 LOADN                            R44 0
      474 LOADN                            R45 4
      475 CALL                             R43 2 1
      476 SETTABLEKS                       R43 R42 K110 ["PaddingTop"]
      478 GETIMPORT                        R43 K106 [UDim.new]
      480 LOADN                            R44 0
      481 LOADN                            R45 4
      482 CALL                             R43 2 1
      483 SETTABLEKS                       R43 R42 K111 ["PaddingBottom"]
      485 CALL                             R40 2 1
      486 SETTABLEKS                       R40 R39 K101 ["Padding"]
      488 CALL                             R36 3 1
      489 SETTABLEKS                       R36 R35 K80 ["Tooltip"]
      491 CALL                             R32 3 1
      492 SETTABLEKS                       R32 R31 K69 ["Positioner"]
      494 CALL                             R28 3 1
      495 GETIMPORT                        R29 K114 [game]
      497 LOADK                            R31 K115 ["CoreGui"]
      498 NAMECALL                         R29 R29 K116 ["GetService"]
      500 CALL                             R29 2 -1
      501 CALL                             R27 -1 1
      502 MOVE                             R26 R27
      503 GETUPVAL                         R28 0
      504 GETTABLEKS                       R27 R28 K25 ["createElement"]
      506 GETUPVAL                         R29 0
      507 GETTABLEKS                       R28 R29 K117 ["Fragment"]
      509 LOADNIL                          R29
      510 DUPTABLE                         R30 K120 [{"World", "TooltipPortal"}]
      511 GETUPVAL                         R32 0
      512 GETTABLEKS                       R31 R32 K25 ["createElement"]
      514 LOADK                            R32 K121 ["Folder"]
      515 LOADNIL                          R33
      516 MOVE                             R34 R23
      517 CALL                             R31 3 1
      518 SETTABLEKS                       R31 R30 K118 ["World"]
      520 SETTABLEKS                       R26 R30 K119 ["TooltipPortal"]
      522 CALL                             R27 3 -1
      523 CLOSEUPVALS                      R12
      524 RETURN                           R27 -1

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
       70 GETTABLEKS                       R11 R0 K10 ["Src"]
       72 GETTABLEKS                       R10 R11 K18 ["Flags"]
       74 GETTABLEKS                       R9 R10 K19 ["getFFlagAdaptiveAnimatonImprovements"]
       76 CALL                             R8 1 1
       77 DUPCLOSURE                       R9 K20 [PROTO_0]
       78 DUPCLOSURE                       R10 K21 [PROTO_9]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R3
       81 DUPCLOSURE                       R11 K22 [PROTO_21]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R2
       91 RETURN                           R11 1
