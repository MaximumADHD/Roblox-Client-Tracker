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
        7 GETIMPORT                        R10 K2 [pcall]
        9 GETTABLEKS                       R11 R0 K3 ["GetFaceVertices"]
       11 MOVE                             R12 R0
       12 MOVE                             R13 R9
       13 CALL                             R10 3 2
       14 JUMPIFNOT                        R10 ; [+76]
       15 JUMPIFNOT                        R11 ; [+75]
       16 NEWTABLE                         R12 0 3
       18 NEWTABLE                         R13 0 2
       20 GETTABLEN                        R14 R11 1
       21 GETTABLEN                        R15 R11 2
       22 SETLIST                          R13 R14 2 [1]
       24 NEWTABLE                         R14 0 2
       26 GETTABLEN                        R15 R11 2
       27 GETTABLEN                        R16 R11 3
       28 SETLIST                          R14 R15 2 [1]
       30 NEWTABLE                         R15 0 2
       32 GETTABLEN                        R16 R11 1
       33 GETTABLEN                        R17 R11 3
       34 SETLIST                          R15 R16 2 [1]
       36 SETLIST                          R12 R13 3 [1]
       38 MOVE                             R13 R12
       39 LOADNIL                          R14
       40 LOADNIL                          R15
       41 FORGPREP                         R13
       42 GETTABLEN                        R18 R17 1
       43 GETTABLEN                        R19 R17 2
       44 FASTCALL2                        MATH_MIN R18 R19 ; [+5]
       46 MOVE                             R21 R18
       47 MOVE                             R22 R19
       48 GETIMPORT                        R20 K6 [math.min]
       50 CALL                             R20 2 1
       51 FASTCALL2                        MATH_MAX R18 R19 ; [+5]
       53 MOVE                             R22 R18
       54 MOVE                             R23 R19
       55 GETIMPORT                        R21 K8 [math.max]
       57 CALL                             R21 2 1
       58 MOVE                             R23 R20
       59 LOADK                            R24 K9 [":"]
       60 MOVE                             R25 R21
       61 CONCAT                           R22 R23 R25
       62 GETTABLE                         R23 R4 R22
       63 JUMPIF                           R23 ; [+25]
       64 GETIMPORT                        R23 K2 [pcall]
       66 GETTABLEKS                       R24 R0 K10 ["GetPosition"]
       68 MOVE                             R25 R0
       69 MOVE                             R26 R18
       70 CALL                             R23 3 2
       71 GETIMPORT                        R25 K2 [pcall]
       73 GETTABLEKS                       R26 R0 K10 ["GetPosition"]
       75 MOVE                             R27 R0
       76 MOVE                             R28 R19
       77 CALL                             R25 3 2
       78 JUMPIFNOT                        R23 ; [+10]
       79 JUMPIFNOT                        R25 ; [+9]
       80 JUMPIFNOT                        R24 ; [+8]
       81 JUMPIFNOT                        R26 ; [+7]
       82 NEWTABLE                         R27 0 2
       84 MUL                              R28 R24 R3
       85 MUL                              R29 R26 R3
       86 SETLIST                          R27 R28 2 [1]
       88 SETTABLE                         R27 R4 R22
       89 FORGLOOP                         R13 2 ; [-48]
       91 FORGLOOP                         R5 2 ; [-85]
       93 RETURN                           R4 1

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
       35 JUMP                             ; [+48]
       36 GETTABLEKS                       R6 R0 K6 ["indices"]
       38 JUMPIFNOT                        R6 ; [+45]
       39 GETTABLEKS                       R6 R0 K9 ["vertexIds"]
       41 JUMPIFNOT                        R6 ; [+42]
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
       62 GETIMPORT                        R12 K11 [pcall]
       64 GETTABLEKS                       R13 R1 K12 ["GetFaceVertices"]
       66 MOVE                             R14 R1
       67 MOVE                             R15 R11
       68 CALL                             R12 3 2
       69 JUMPIFNOT                        R12 ; [+12]
       70 JUMPIFNOT                        R13 ; [+11]
       71 MOVE                             R14 R13
       72 LOADNIL                          R15
       73 LOADNIL                          R16
       74 FORGPREP                         R14
       75 GETTABLE                         R19 R6 R18
       76 JUMPIFNOT                        R19 ; [+3]
       77 LOADB                            R19 1
       78 SETTABLE                         R19 R5 R11
       79 JUMP                             ; [+2]
       80 FORGLOOP                         R14 2 ; [-6]
       82 FORGLOOP                         R7 2 ; [-21]
       84 NEWTABLE                         R6 0 0
       86 NEWTABLE                         R7 0 0
       88 MOVE                             R8 R4
       89 LOADNIL                          R9
       90 LOADNIL                          R10
       91 FORGPREP                         R8
       92 GETTABLE                         R13 R5 R12
       93 JUMPIFNOT                        R13 ; [+8]
       94 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       96 MOVE                             R14 R7
       97 MOVE                             R15 R12
       98 GETIMPORT                        R13 K15 [table.insert]
      100 CALL                             R13 2 0
      101 JUMP                             ; [+7]
      102 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
      104 MOVE                             R14 R6
      105 MOVE                             R15 R12
      106 GETIMPORT                        R13 K15 [table.insert]
      108 CALL                             R13 2 0
      109 FORGLOOP                         R8 2 ; [-18]
      111 GETUPVAL                         R8 0
      112 MOVE                             R9 R1
      113 MOVE                             R10 R6
      114 MOVE                             R11 R3
      115 CALL                             R8 3 1
      116 GETUPVAL                         R9 0
      117 MOVE                             R10 R1
      118 MOVE                             R11 R7
      119 MOVE                             R12 R3
      120 CALL                             R9 3 1
      121 GETUPVAL                         R10 1
      122 MOVE                             R11 R8
      123 MOVE                             R12 R2
      124 GETUPVAL                         R13 2
      125 GETTABLEKS                       R13 R13 K16 ["COLOR_WIREFRAME"]
      127 CALL                             R10 3 0
      128 GETUPVAL                         R10 1
      129 MOVE                             R11 R9
      130 MOVE                             R12 R2
      131 GETUPVAL                         R13 2
      132 GETTABLEKS                       R13 R13 K17 ["COLOR_BAD"]
      134 CALL                             R10 3 0
      135 RETURN                           R0 0

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
