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
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K4 ["setHoveredJointName"]
       17 LOADNIL                          R1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

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
       11 RETURN                           R0 0

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
       58 LOADK                            R12 K14 [0.25]
       59 SETTABLEKS                       R12 R11 K15 ["Transparency"]
       61 GETTABLEKS                       R13 R0 K17 ["standardRadius"]
       63 MULK                             R12 R13 K16 [1.5]
       64 SETTABLEKS                       R12 R11 K18 ["Size"]
       66 SETTABLEKS                       R3 R11 K19 ["Height"]
       68 GETTABLEKS                       R12 R0 K20 ["color"]
       70 SETTABLEKS                       R12 R11 K21 ["Color3"]
       72 LOADB                            R12 1
       73 SETTABLEKS                       R12 R11 K22 ["AlwaysOnTop"]
       75 LOADN                            R12 0
       76 SETTABLEKS                       R12 R11 K23 ["ZIndex"]
       78 GETUPVAL                         R14 0
       79 GETTABLEKS                       R13 R14 K24 ["Event"]
       81 GETTABLEKS                       R12 R13 K25 ["MouseEnter"]
       83 NEWCLOSURE                       R13 P3
       84 CAPTURE                          VAL R0
       85 SETTABLE                         R13 R11 R12
       86 GETUPVAL                         R14 0
       87 GETTABLEKS                       R13 R14 K24 ["Event"]
       89 GETTABLEKS                       R12 R13 K26 ["MouseLeave"]
       91 NEWCLOSURE                       R13 P4
       92 CAPTURE                          VAL R0
       93 SETTABLE                         R13 R11 R12
       94 GETUPVAL                         R14 0
       95 GETTABLEKS                       R13 R14 K24 ["Event"]
       97 GETTABLEKS                       R12 R13 K27 ["MouseButton1Down"]
       99 NEWCLOSURE                       R13 P5
      100 CAPTURE                          VAL R0
      101 SETTABLE                         R13 R11 R12
      102 CALL                             R9 2 1
      103 SETTABLEKS                       R9 R8 K7 ["Pyramid"]
      105 GETTABLEKS                       R10 R0 K28 ["isPlayingAnimation"]
      107 JUMPIF                           R10 ; [+28]
      108 GETUPVAL                         R10 0
      109 GETTABLEKS                       R9 R10 K5 ["createElement"]
      111 LOADK                            R10 K29 ["WireframeHandleAdornment"]
      112 DUPTABLE                         R11 K31 [{"Adornee", "AlwaysOnTop", "ZIndex", "Transparency", "Color3", "CFrame", "ref"}]
      113 GETTABLEKS                       R12 R0 K11 ["connectionAdorneePart"]
      115 SETTABLEKS                       R12 R11 K12 ["Adornee"]
      117 LOADB                            R12 1
      118 SETTABLEKS                       R12 R11 K22 ["AlwaysOnTop"]
      120 LOADN                            R12 0
      121 SETTABLEKS                       R12 R11 K23 ["ZIndex"]
      123 LOADN                            R12 0
      124 SETTABLEKS                       R12 R11 K15 ["Transparency"]
      126 GETTABLEKS                       R12 R0 K32 ["edgeColor"]
      128 SETTABLEKS                       R12 R11 K21 ["Color3"]
      130 SETTABLEKS                       R2 R11 K13 ["CFrame"]
      132 SETTABLEKS                       R1 R11 K30 ["ref"]
      134 CALL                             R9 2 1
      135 JUMPIF                           R9 ; [+1]
      136 LOADNIL                          R9
      137 SETTABLEKS                       R9 R8 K8 ["Wireframe"]
      139 CALL                             R5 3 -1
      140 RETURN                           R5 -1

PROTO_11:
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

PROTO_12:
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
       68 GETUPVAL                         R17 5
       69 CALL                             R17 0 1
       70 JUMPIFNOT                        R17 ; [+4]
       71 GETUPVAL                         R16 6
       72 MOVE                             R17 R1
       73 CALL                             R16 1 1
       74 JUMP                             ; [+3]
       75 GETUPVAL                         R16 7
       76 MOVE                             R17 R1
       77 CALL                             R16 1 1
       78 NEWCLOSURE                       R19 P1
       79 CAPTURE                          VAL R16
       80 NAMECALL                         R17 R15 K10 ["map"]
       82 CALL                             R17 2 1
       83 GETUPVAL                         R19 4
       84 GETTABLEKS                       R18 R19 K11 ["getGlobalCoordinateFrame"]
       86 MOVE                             R19 R1
       87 CALL                             R18 1 1
       88 GETUPVAL                         R19 1
       89 CALL                             R19 0 1
       90 JUMPIF                           R19 ; [+17]
       91 GETTABLEKS                       R19 R0 K12 ["DEPRECATED_applyTposeAdjustment"]
       93 JUMPIFNOT                        R19 ; [+14]
       94 GETTABLEKS                       R19 R12 K13 ["adjustmentValue"]
       96 JUMPIFNOT                        R19 ; [+11]
       97 GETTABLEKS                       R20 R12 K13 ["adjustmentValue"]
       99 FASTCALL1                        TYPEOF R20 ; [+2]
      100 GETIMPORT                        R19 K15 [typeof]
      102 CALL                             R19 1 1
      103 JUMPIFNOTEQKS                    R19 K16 ["CFrame"] ; [+4]
      105 GETTABLEKS                       R19 R12 K13 ["adjustmentValue"]
      107 MUL                              R18 R18 R19
      108 GETTABLEKS                       R19 R0 K17 ["standardRadius"]
      110 ORK                              R20 R19 K18 [0.05]
      111 GETUPVAL                         R22 5
      112 CALL                             R22 0 1
      113 JUMPIFNOT                        R22 ; [+23]
      114 DUPTABLE                         R21 K22 [{"x", "y", "z"}]
      115 GETUPVAL                         R22 8
      116 LOADN                            R23 12
      117 MOVE                             R24 R20
      118 LOADK                            R25 K19 ["x"]
      119 CALL                             R22 3 1
      120 SETTABLEKS                       R22 R21 K19 ["x"]
      122 GETUPVAL                         R22 8
      123 LOADN                            R23 12
      124 MOVE                             R24 R20
      125 LOADK                            R25 K20 ["y"]
      126 CALL                             R22 3 1
      127 SETTABLEKS                       R22 R21 K20 ["y"]
      129 GETUPVAL                         R22 8
      130 LOADN                            R23 12
      131 MOVE                             R24 R20
      132 LOADK                            R25 K21 ["z"]
      133 CALL                             R22 3 1
      134 SETTABLEKS                       R22 R21 K21 ["z"]
      136 JUMP                             ; [+22]
      137 DUPTABLE                         R21 K22 [{"x", "y", "z"}]
      138 GETUPVAL                         R22 9
      139 LOADN                            R23 12
      140 MOVE                             R24 R20
      141 LOADK                            R25 K19 ["x"]
      142 CALL                             R22 3 1
      143 SETTABLEKS                       R22 R21 K19 ["x"]
      145 GETUPVAL                         R22 9
      146 LOADN                            R23 12
      147 MOVE                             R24 R20
      148 LOADK                            R25 K20 ["y"]
      149 CALL                             R22 3 1
      150 SETTABLEKS                       R22 R21 K20 ["y"]
      152 GETUPVAL                         R22 9
      153 LOADN                            R23 12
      154 MOVE                             R24 R20
      155 LOADK                            R25 K21 ["z"]
      156 CALL                             R22 3 1
      157 SETTABLEKS                       R22 R21 K21 ["z"]
      159 GETUPVAL                         R23 0
      160 GETTABLEKS                       R22 R23 K23 ["useEffect"]
      162 NEWCLOSURE                       R23 P2
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R4
      167 CAPTURE                          REF R18
      168 CAPTURE                          VAL R11
      169 NEWTABLE                         R24 0 3
      171 MOVE                             R25 R2
      172 MOVE                             R26 R4
      173 MOVE                             R27 R18
      174 SETLIST                          R24 R25 3 [1]
      176 CALL                             R22 2 0
      177 NEWTABLE                         R22 0 0
      179 GETUPVAL                         R24 0
      180 GETTABLEKS                       R23 R24 K24 ["createElement"]
      182 LOADK                            R24 K25 ["SphereHandleAdornment"]
      183 NEWTABLE                         R25 16 0
      185 SETTABLEKS                       R19 R25 K26 ["Radius"]
      187 GETTABLEKS                       R26 R14 K27 ["color"]
      189 SETTABLEKS                       R26 R25 K28 ["Color3"]
      191 LOADN                            R26 1
      192 SETTABLEKS                       R26 R25 K29 ["ZIndex"]
      194 LOADB                            R26 1
      195 SETTABLEKS                       R26 R25 K30 ["AlwaysOnTop"]
      197 SETTABLEKS                       R16 R25 K31 ["Adornee"]
      199 LOADK                            R26 K32 [0.25]
      200 SETTABLEKS                       R26 R25 K33 ["Transparency"]
      202 SETTABLEKS                       R17 R25 K16 ["CFrame"]
      204 GETUPVAL                         R28 0
      205 GETTABLEKS                       R27 R28 K34 ["Event"]
      207 GETTABLEKS                       R26 R27 K35 ["MouseEnter"]
      209 NEWCLOSURE                       R27 P3
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R1
      212 CAPTURE                          VAL R5
      213 JUMPIF                           R27 ; [+1]
      214 LOADNIL                          R27
      215 SETTABLE                         R27 R25 R26
      216 GETUPVAL                         R28 0
      217 GETTABLEKS                       R27 R28 K34 ["Event"]
      219 GETTABLEKS                       R26 R27 K36 ["MouseLeave"]
      221 NEWCLOSURE                       R27 P4
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R3
      225 JUMPIF                           R27 ; [+1]
      226 LOADNIL                          R27
      227 SETTABLE                         R27 R25 R26
      228 GETUPVAL                         R28 0
      229 GETTABLEKS                       R27 R28 K34 ["Event"]
      231 GETTABLEKS                       R26 R27 K37 ["MouseButton1Down"]
      233 NEWCLOSURE                       R27 P5
      234 CAPTURE                          VAL R0
      235 CAPTURE                          VAL R1
      236 SETTABLE                         R27 R25 R26
      237 CALL                             R23 2 1
      238 FASTCALL2                        TABLE_INSERT R22 R23 ; [+5]
      240 MOVE                             R25 R22
      241 MOVE                             R26 R23
      242 GETIMPORT                        R24 K40 [table.insert]
      244 CALL                             R24 2 0
      245 JUMPIFNOT                        R16 ; [+29]
      246 GETTABLEKS                       R24 R0 K41 ["isPlayingAnimation"]
      248 JUMPIF                           R24 ; [+26]
      249 GETUPVAL                         R25 0
      250 GETTABLEKS                       R24 R25 K24 ["createElement"]
      252 GETUPVAL                         R25 10
      253 DUPTABLE                         R26 K45 [{"circlePoints", "color", "Transparency", "adorneePart", "sphereCf"}]
      254 SETTABLEKS                       R21 R26 K42 ["circlePoints"]
      256 GETTABLEKS                       R27 R14 K46 ["edgeColor"]
      258 SETTABLEKS                       R27 R26 K27 ["color"]
      260 LOADN                            R27 0
      261 SETTABLEKS                       R27 R26 K33 ["Transparency"]
      263 SETTABLEKS                       R16 R26 K43 ["adorneePart"]
      265 SETTABLEKS                       R17 R26 K44 ["sphereCf"]
      267 CALL                             R24 2 1
      268 FASTCALL2                        TABLE_INSERT R22 R24 ; [+5]
      270 MOVE                             R26 R22
      271 MOVE                             R27 R24
      272 GETIMPORT                        R25 K40 [table.insert]
      274 CALL                             R25 2 0
      275 GETUPVAL                         R25 0
      276 GETTABLEKS                       R24 R25 K47 ["useMemo"]
      278 NEWCLOSURE                       R25 P6
      279 CAPTURE                          VAL R0
      280 CAPTURE                          UPVAL U5
      281 CAPTURE                          UPVAL U6
      282 CAPTURE                          UPVAL U7
      283 CAPTURE                          VAL R1
      284 NEWTABLE                         R26 0 1
      286 GETTABLEKS                       R27 R0 K48 ["childJoints"]
      288 JUMPIF                           R27 ; [+2]
      289 NEWTABLE                         R27 0 0
      291 SETLIST                          R26 R27 1 [1]
      293 CALL                             R24 2 1
      294 MOVE                             R25 R24
      295 LOADNIL                          R26
      296 LOADNIL                          R27
      297 FORGPREP                         R25
      298 GETUPVAL                         R31 0
      299 GETTABLEKS                       R30 R31 K24 ["createElement"]
      301 GETUPVAL                         R31 11
      302 DUPTABLE                         R32 K58 [{"parentInst", "childInst", "connectionAdorneePart", "standardRadius", "updatePositions", "getParentGlobalCf", "allowHover", "color", "edgeColor", "onJointClicked", "setHoveredPyramidParentName", "setHoveredJointName", "hoveredPyramidParentName", "isPlayingAnimation"}]
      303 GETTABLEKS                       R33 R29 K49 ["parentInst"]
      305 SETTABLEKS                       R33 R32 K49 ["parentInst"]
      307 GETTABLEKS                       R33 R29 K50 ["childInst"]
      309 SETTABLEKS                       R33 R32 K50 ["childInst"]
      311 GETTABLEKS                       R33 R29 K51 ["connectionAdorneePart"]
      313 SETTABLEKS                       R33 R32 K51 ["connectionAdorneePart"]
      315 SETTABLEKS                       R19 R32 K17 ["standardRadius"]
      317 GETTABLEKS                       R33 R0 K9 ["updatePositions"]
      319 SETTABLEKS                       R33 R32 K9 ["updatePositions"]
      321 NEWCLOSURE                       R33 P7
      322 CAPTURE                          UPVAL U4
      323 CAPTURE                          VAL R29
      324 CAPTURE                          UPVAL U1
      325 CAPTURE                          VAL R0
      326 CAPTURE                          REF R12
      327 SETTABLEKS                       R33 R32 K52 ["getParentGlobalCf"]
      329 LOADB                            R33 1
      330 SETTABLEKS                       R33 R32 K53 ["allowHover"]
      332 GETTABLEKS                       R33 R14 K27 ["color"]
      334 SETTABLEKS                       R33 R32 K27 ["color"]
      336 GETTABLEKS                       R33 R14 K46 ["edgeColor"]
      338 SETTABLEKS                       R33 R32 K46 ["edgeColor"]
      340 GETTABLEKS                       R33 R0 K54 ["onJointClicked"]
      342 SETTABLEKS                       R33 R32 K54 ["onJointClicked"]
      344 SETTABLEKS                       R5 R32 K55 ["setHoveredPyramidParentName"]
      346 SETTABLEKS                       R3 R32 K56 ["setHoveredJointName"]
      348 SETTABLEKS                       R4 R32 K57 ["hoveredPyramidParentName"]
      350 GETTABLEKS                       R33 R0 K41 ["isPlayingAnimation"]
      352 SETTABLEKS                       R33 R32 K41 ["isPlayingAnimation"]
      354 CALL                             R30 2 1
      355 FASTCALL2                        TABLE_INSERT R22 R30 ; [+5]
      357 MOVE                             R32 R22
      358 MOVE                             R33 R30
      359 GETIMPORT                        R31 K40 [table.insert]
      361 CALL                             R31 2 0
      362 FORGLOOP                         R25 2 ; [-65]
      364 LOADNIL                          R25
      365 JUMPIFNOT                        R6 ; [+171]
      366 JUMPIFNOT                        R8 ; [+170]
      367 GETUPVAL                         R27 12
      368 GETTABLEKS                       R26 R27 K59 ["createPortal"]
      370 GETUPVAL                         R28 0
      371 GETTABLEKS                       R27 R28 K24 ["createElement"]
      373 LOADK                            R28 K60 ["ScreenGui"]
      374 DUPTABLE                         R29 K64 [{"IgnoreGuiInset", "ResetOnSpawn", "ZIndexBehavior"}]
      375 LOADB                            R30 1
      376 SETTABLEKS                       R30 R29 K61 ["IgnoreGuiInset"]
      378 LOADB                            R30 0
      379 SETTABLEKS                       R30 R29 K62 ["ResetOnSpawn"]
      381 GETIMPORT                        R30 K67 [Enum.ZIndexBehavior.Sibling]
      383 SETTABLEKS                       R30 R29 K63 ["ZIndexBehavior"]
      385 DUPTABLE                         R30 K69 [{"Positioner"}]
      386 GETUPVAL                         R32 0
      387 GETTABLEKS                       R31 R32 K24 ["createElement"]
      389 LOADK                            R32 K70 ["Frame"]
      390 DUPTABLE                         R33 K74 [{"BackgroundTransparency", "Size", "Position", "ZIndex"}]
      391 LOADN                            R34 1
      392 SETTABLEKS                       R34 R33 K71 ["BackgroundTransparency"]
      394 GETIMPORT                        R34 K76 [UDim2.new]
      396 LOADN                            R35 0
      397 LOADN                            R36 0
      398 LOADN                            R37 0
      399 LOADN                            R38 0
      400 CALL                             R34 4 1
      401 SETTABLEKS                       R34 R33 K72 ["Size"]
      403 GETIMPORT                        R34 K76 [UDim2.new]
      405 LOADN                            R35 0
      406 GETTABLEKS                       R36 R10 K77 ["X"]
      408 LOADN                            R37 0
      409 GETTABLEKS                       R38 R10 K78 ["Y"]
      411 CALL                             R34 4 1
      412 SETTABLEKS                       R34 R33 K73 ["Position"]
      414 LOADN                            R34 200
      415 SETTABLEKS                       R34 R33 K29 ["ZIndex"]
      417 DUPTABLE                         R34 K80 [{"Tooltip"}]
      418 GETUPVAL                         R36 0
      419 GETTABLEKS                       R35 R36 K24 ["createElement"]
      421 LOADK                            R36 K81 ["TextLabel"]
      422 DUPTABLE                         R37 K89 [{"BackgroundColor3", "BackgroundTransparency", "TextColor3", "Font", "TextSize", "AutomaticSize", "BorderSizePixel", "Text", "ZIndex"}]
      423 GETIMPORT                        R38 K90 [Color3.new]
      425 LOADN                            R39 0
      426 LOADN                            R40 0
      427 LOADN                            R41 0
      428 CALL                             R38 3 1
      429 SETTABLEKS                       R38 R37 K82 ["BackgroundColor3"]
      431 LOADK                            R38 K32 [0.25]
      432 SETTABLEKS                       R38 R37 K71 ["BackgroundTransparency"]
      434 GETIMPORT                        R38 K90 [Color3.new]
      436 LOADN                            R39 1
      437 LOADN                            R40 1
      438 LOADN                            R41 1
      439 CALL                             R38 3 1
      440 SETTABLEKS                       R38 R37 K83 ["TextColor3"]
      442 GETIMPORT                        R38 K92 [Enum.Font.SourceSans]
      444 SETTABLEKS                       R38 R37 K84 ["Font"]
      446 LOADN                            R38 14
      447 SETTABLEKS                       R38 R37 K85 ["TextSize"]
      449 GETIMPORT                        R38 K94 [Enum.AutomaticSize.XY]
      451 SETTABLEKS                       R38 R37 K86 ["AutomaticSize"]
      453 LOADN                            R38 0
      454 SETTABLEKS                       R38 R37 K87 ["BorderSizePixel"]
      456 LOADK                            R39 K95 ["%*: %*"]
      457 GETTABLEKS                       R41 R1 K96 ["ClassName"]
      459 GETTABLEKS                       R42 R1 K97 ["Name"]
      461 NAMECALL                         R39 R39 K98 ["format"]
      463 CALL                             R39 3 1
      464 MOVE                             R38 R39
      465 SETTABLEKS                       R38 R37 K88 ["Text"]
      467 LOADN                            R38 201
      468 SETTABLEKS                       R38 R37 K29 ["ZIndex"]
      470 DUPTABLE                         R38 K101 [{"UICorner", "Padding"}]
      471 GETUPVAL                         R40 0
      472 GETTABLEKS                       R39 R40 K24 ["createElement"]
      474 LOADK                            R40 K99 ["UICorner"]
      475 DUPTABLE                         R41 K103 [{"CornerRadius"}]
      476 GETIMPORT                        R42 K105 [UDim.new]
      478 LOADN                            R43 0
      479 LOADN                            R44 6
      480 CALL                             R42 2 1
      481 SETTABLEKS                       R42 R41 K102 ["CornerRadius"]
      483 CALL                             R39 2 1
      484 SETTABLEKS                       R39 R38 K99 ["UICorner"]
      486 GETUPVAL                         R40 0
      487 GETTABLEKS                       R39 R40 K24 ["createElement"]
      489 LOADK                            R40 K106 ["UIPadding"]
      490 DUPTABLE                         R41 K111 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      491 GETIMPORT                        R42 K105 [UDim.new]
      493 LOADN                            R43 0
      494 LOADN                            R44 8
      495 CALL                             R42 2 1
      496 SETTABLEKS                       R42 R41 K107 ["PaddingLeft"]
      498 GETIMPORT                        R42 K105 [UDim.new]
      500 LOADN                            R43 0
      501 LOADN                            R44 8
      502 CALL                             R42 2 1
      503 SETTABLEKS                       R42 R41 K108 ["PaddingRight"]
      505 GETIMPORT                        R42 K105 [UDim.new]
      507 LOADN                            R43 0
      508 LOADN                            R44 4
      509 CALL                             R42 2 1
      510 SETTABLEKS                       R42 R41 K109 ["PaddingTop"]
      512 GETIMPORT                        R42 K105 [UDim.new]
      514 LOADN                            R43 0
      515 LOADN                            R44 4
      516 CALL                             R42 2 1
      517 SETTABLEKS                       R42 R41 K110 ["PaddingBottom"]
      519 CALL                             R39 2 1
      520 SETTABLEKS                       R39 R38 K100 ["Padding"]
      522 CALL                             R35 3 1
      523 SETTABLEKS                       R35 R34 K79 ["Tooltip"]
      525 CALL                             R31 3 1
      526 SETTABLEKS                       R31 R30 K68 ["Positioner"]
      528 CALL                             R27 3 1
      529 GETIMPORT                        R28 K113 [game]
      531 LOADK                            R30 K114 ["CoreGui"]
      532 NAMECALL                         R28 R28 K115 ["GetService"]
      534 CALL                             R28 2 -1
      535 CALL                             R26 -1 1
      536 MOVE                             R25 R26
      537 GETUPVAL                         R27 0
      538 GETTABLEKS                       R26 R27 K24 ["createElement"]
      540 GETUPVAL                         R28 0
      541 GETTABLEKS                       R27 R28 K116 ["Fragment"]
      543 LOADNIL                          R28
      544 DUPTABLE                         R29 K119 [{"World", "TooltipPortal"}]
      545 GETUPVAL                         R31 0
      546 GETTABLEKS                       R30 R31 K24 ["createElement"]
      548 LOADK                            R31 K120 ["Folder"]
      549 LOADNIL                          R32
      550 MOVE                             R33 R22
      551 CALL                             R30 3 1
      552 SETTABLEKS                       R30 R29 K117 ["World"]
      554 SETTABLEKS                       R25 R29 K118 ["TooltipPortal"]
      556 CALL                             R26 3 -1
      557 CLOSEUPVALS                      R12
      558 RETURN                           R26 -1

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
      108 DUPCLOSURE                       R12 K23 [PROTO_0]
      109 DUPCLOSURE                       R13 K24 [PROTO_1]
      110 DUPCLOSURE                       R14 K25 [PROTO_10]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R11
      114 DUPCLOSURE                       R15 K26 [PROTO_21]
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R2
      128 RETURN                           R15 1
