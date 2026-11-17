PROTO_0:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLEN                        R8 R7 1
        5 GETTABLEN                        R9 R7 2
        6 SUB                              R10 R9 R8
        7 GETTABLEKS                       R10 R10 K0 ["Magnitude"]
        9 LOADN                            R11 0
       10 JUMPIFNOTLT                      R11 R10 ; [+37]
       12 GETIMPORT                        R12 K3 [CFrame.new]
       14 LOADK                            R13 K4 [{0, 0, 0}]
       15 SUB                              R14 R9 R8
       16 GETTABLEKS                       R14 R14 K5 ["Unit"]
       18 CALL                             R12 2 1
       19 ADD                              R11 R12 R8
       20 GETIMPORT                        R12 K7 [Instance.new]
       22 LOADK                            R13 K8 ["LineHandleAdornment"]
       23 CALL                             R12 1 1
       24 SETTABLEKS                       R1 R12 K9 ["Adornee"]
       26 SETTABLEKS                       R11 R12 K1 ["CFrame"]
       28 SETTABLEKS                       R10 R12 K10 ["Length"]
       30 GETUPVAL                         R13 0
       31 GETTABLEKS                       R13 R13 K11 ["LINE_THICKNESS"]
       33 SETTABLEKS                       R13 R12 K12 ["Thickness"]
       35 SETTABLEKS                       R2 R12 K13 ["Color3"]
       37 LOADB                            R13 1
       38 SETTABLEKS                       R13 R12 K14 ["AlwaysOnTop"]
       40 LOADN                            R13 1
       41 SETTABLEKS                       R13 R12 K15 ["ZIndex"]
       43 LOADB                            R13 0
       44 SETTABLEKS                       R13 R12 K16 ["Archivable"]
       46 SETTABLEKS                       R1 R12 K17 ["Parent"]
       48 FORGLOOP                         R3 2 ; [-45]
       50 RETURN                           R0 0

PROTO_1:
        0 ORK                              R3 R2 K0 [{1, 1, 1}]
        1 NEWTABLE                         R4 0 0
        3 MOVE                             R5 R1
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 FORGPREP                         R5
        7 GETTABLEKS                       R11 R0 K1 ["GetFaceVertices"]
        9 MOVE                             R12 R0
       10 MOVE                             R13 R9
       11 FASTPCALL                        pcall 3 ; [+2]
       12 GETIMPORT                        R10 K3 [pcall]
       14 CALL                             R10 3 2
       15 JUMPIFNOT                        R10 ; [+78]
       16 JUMPIFNOT                        R11 ; [+77]
       17 NEWTABLE                         R12 0 3
       19 NEWTABLE                         R13 0 2
       21 GETTABLEN                        R14 R11 1
       22 GETTABLEN                        R15 R11 2
       23 SETLIST                          R13 R14 2 [1]
       25 NEWTABLE                         R14 0 2
       27 GETTABLEN                        R15 R11 2
       28 GETTABLEN                        R16 R11 3
       29 SETLIST                          R14 R15 2 [1]
       31 NEWTABLE                         R15 0 2
       33 GETTABLEN                        R16 R11 1
       34 GETTABLEN                        R17 R11 3
       35 SETLIST                          R15 R16 2 [1]
       37 SETLIST                          R12 R13 3 [1]
       39 MOVE                             R13 R12
       40 LOADNIL                          R14
       41 LOADNIL                          R15
       42 FORGPREP                         R13
       43 GETTABLEN                        R18 R17 1
       44 GETTABLEN                        R19 R17 2
       45 FASTCALL2                        MATH_MIN R18 R19 ; [+5]
       47 MOVE                             R21 R18
       48 MOVE                             R22 R19
       49 GETIMPORT                        R20 K6 [math.min]
       51 CALL                             R20 2 1
       52 FASTCALL2                        MATH_MAX R18 R19 ; [+5]
       54 MOVE                             R22 R18
       55 MOVE                             R23 R19
       56 GETIMPORT                        R21 K8 [math.max]
       58 CALL                             R21 2 1
       59 MOVE                             R23 R20
       60 LOADK                            R24 K9 [":"]
       61 MOVE                             R25 R21
       62 CONCAT                           R22 R23 R25
       63 GETTABLE                         R23 R4 R22
       64 JUMPIF                           R23 ; [+27]
       65 GETTABLEKS                       R24 R0 K10 ["GetPosition"]
       67 MOVE                             R25 R0
       68 MOVE                             R26 R18
       69 FASTPCALL                        pcall 3 ; [+2]
       70 GETIMPORT                        R23 K3 [pcall]
       72 CALL                             R23 3 2
       73 GETTABLEKS                       R26 R0 K10 ["GetPosition"]
       75 MOVE                             R27 R0
       76 MOVE                             R28 R19
       77 FASTPCALL                        pcall 3 ; [+2]
       78 GETIMPORT                        R25 K3 [pcall]
       80 CALL                             R25 3 2
       81 JUMPIFNOT                        R23 ; [+10]
       82 JUMPIFNOT                        R25 ; [+9]
       83 JUMPIFNOT                        R24 ; [+8]
       84 JUMPIFNOT                        R26 ; [+7]
       85 NEWTABLE                         R27 0 2
       87 MUL                              R28 R24 R3
       88 MUL                              R29 R26 R3
       89 SETLIST                          R27 R28 2 [1]
       91 SETTABLE                         R27 R4 R22
       92 FORGLOOP                         R13 2 ; [-50]
       94 FORGLOOP                         R5 2 ; [-88]
       96 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["editableMesh"]
        2 GETTABLEKS                       R2 R0 K1 ["adornee"]
        4 GETTABLEKS                       R3 R0 K2 ["scale"]
        6 NAMECALL                         R4 R1 K3 ["GetFaces"]
        8 CALL                             R4 1 1
        9 NEWTABLE                         R5 0 0
       11 GETTABLEKS                       R6 R0 K4 ["dataType"]
       13 JUMPIFNOTEQKS                    R6 K5 ["faces"] ; [+22]
       15 GETTABLEKS                       R6 R0 K6 ["indices"]
       17 JUMPIFNOT                        R6 ; [+18]
       18 GETTABLEKS                       R6 R0 K7 ["faceIds"]
       20 JUMPIFNOT                        R6 ; [+15]
       21 GETTABLEKS                       R6 R0 K6 ["indices"]
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 FORGPREP                         R6
       26 GETTABLEKS                       R12 R0 K7 ["faceIds"]
       28 ADDK                             R13 R10 K8 [1]
       29 GETTABLE                         R11 R12 R13
       30 JUMPIFNOT                        R11 ; [+2]
       31 LOADB                            R12 1
       32 SETTABLE                         R12 R5 R11
       33 FORGLOOP                         R6 2 ; [-8]
       35 JUMP                             ; [+49]
       36 GETTABLEKS                       R6 R0 K6 ["indices"]
       38 JUMPIFNOT                        R6 ; [+46]
       39 GETTABLEKS                       R6 R0 K9 ["vertexIds"]
       41 JUMPIFNOT                        R6 ; [+43]
       42 NEWTABLE                         R6 0 0
       44 GETTABLEKS                       R7 R0 K6 ["indices"]
       46 LOADNIL                          R8
       47 LOADNIL                          R9
       48 FORGPREP                         R7
       49 GETTABLEKS                       R13 R0 K9 ["vertexIds"]
       51 ADDK                             R14 R11 K8 [1]
       52 GETTABLE                         R12 R13 R14
       53 JUMPIFNOT                        R12 ; [+2]
       54 LOADB                            R13 1
       55 SETTABLE                         R13 R6 R12
       56 FORGLOOP                         R7 2 ; [-8]
       58 MOVE                             R7 R4
       59 LOADNIL                          R8
       60 LOADNIL                          R9
       61 FORGPREP                         R7
       62 GETTABLEKS                       R13 R1 K10 ["GetFaceVertices"]
       64 MOVE                             R14 R1
       65 MOVE                             R15 R11
       66 FASTPCALL                        pcall 3 ; [+2]
       67 GETIMPORT                        R12 K12 [pcall]
       69 CALL                             R12 3 2
       70 JUMPIFNOT                        R12 ; [+12]
       71 JUMPIFNOT                        R13 ; [+11]
       72 MOVE                             R14 R13
       73 LOADNIL                          R15
       74 LOADNIL                          R16
       75 FORGPREP                         R14
       76 GETTABLE                         R19 R6 R18
       77 JUMPIFNOT                        R19 ; [+3]
       78 LOADB                            R19 1
       79 SETTABLE                         R19 R5 R11
       80 JUMP                             ; [+2]
       81 FORGLOOP                         R14 2 ; [-6]
       83 FORGLOOP                         R7 2 ; [-22]
       85 NEWTABLE                         R6 0 0
       87 NEWTABLE                         R7 0 0
       89 MOVE                             R8 R4
       90 LOADNIL                          R9
       91 LOADNIL                          R10
       92 FORGPREP                         R8
       93 GETTABLE                         R13 R5 R12
       94 JUMPIFNOT                        R13 ; [+8]
       95 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       97 MOVE                             R14 R7
       98 MOVE                             R15 R12
       99 GETIMPORT                        R13 K15 [table.insert]
      101 CALL                             R13 2 0
      102 JUMP                             ; [+7]
      103 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
      105 MOVE                             R14 R6
      106 MOVE                             R15 R12
      107 GETIMPORT                        R13 K15 [table.insert]
      109 CALL                             R13 2 0
      110 FORGLOOP                         R8 2 ; [-18]
      112 GETUPVAL                         R8 0
      113 MOVE                             R9 R1
      114 MOVE                             R10 R6
      115 MOVE                             R11 R3
      116 CALL                             R8 3 1
      117 GETUPVAL                         R9 0
      118 MOVE                             R10 R1
      119 MOVE                             R11 R7
      120 MOVE                             R12 R3
      121 CALL                             R9 3 1
      122 GETUPVAL                         R10 1
      123 MOVE                             R11 R8
      124 MOVE                             R12 R2
      125 GETUPVAL                         R13 2
      126 GETTABLEKS                       R13 R13 K16 ["COLOR_WIREFRAME"]
      128 CALL                             R10 3 0
      129 GETUPVAL                         R10 1
      130 MOVE                             R11 R9
      131 MOVE                             R12 R2
      132 GETUPVAL                         R13 2
      133 GETTABLEKS                       R13 R13 K17 ["COLOR_BAD"]
      135 CALL                             R10 3 0
      136 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Visualization"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 1 0
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 DUPCLOSURE                       R4 K8 [PROTO_1]
       17 DUPCLOSURE                       R5 K9 [PROTO_2]
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R5 R2 K10 ["build"]
       23 RETURN                           R2 1
