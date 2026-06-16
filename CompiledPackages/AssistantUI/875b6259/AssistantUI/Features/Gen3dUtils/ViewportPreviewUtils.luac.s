PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["X"]
        2 GETTABLEKS                       R3 R1 K1 ["Y"]
        4 GETTABLEKS                       R4 R1 K2 ["Z"]
        6 FASTCALL3                        MATH_MAX R2 R3 R4
        8 MOVE                             R6 R2
        9 MOVE                             R7 R3
       10 MOVE                             R8 R4
       11 GETIMPORT                        R5 K5 [math.max]
       13 CALL                             R5 3 1
       14 FASTCALL1                        MATH_RAD R0 ; [+3]
       15 MOVE                             R10 R0
       16 GETIMPORT                        R9 K9 [math.rad]
       18 CALL                             R9 1 1
       19 DIVK                             R8 R9 K7 [2]
       20 FASTCALL1                        MATH_TAN R8 ; [+2]
       21 GETIMPORT                        R7 K11 [math.tan]
       23 CALL                             R7 1 1
       24 DIVRK                            R6 R6 K7 [2]
       25 MUL                              R8 R5 R6
       26 DIVK                             R9 R4 K7 [2]
       27 ADD                              R7 R8 R9
       28 RETURN                           R7 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQ                         R0 R1 ; [+9]
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K0 ["Destroy"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 LOADK                            R1 K1 [""]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 4
       13 GETTABLEKS                       R0 R0 K2 ["captureSnapshotAsync"]
       15 GETUPVAL                         R1 5
       16 CALL                             R0 1 2
       17 GETUPVAL                         R2 2
       18 NAMECALL                         R2 R2 K0 ["Destroy"]
       20 CALL                             R2 1 0
       21 JUMPIFNOT                        R0 ; [+2]
       22 MOVE                             R2 R1
       23 JUMPIF                           R2 ; [+1]
       24 GETUPVAL                         R2 6
       25 GETUPVAL                         R3 3
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 ORK                              R6 R2 K0 [0]
        1 FASTCALL1                        MATH_RAD R6 ; [+2]
        2 GETIMPORT                        R5 K3 [math.rad]
        4 CALL                             R5 1 1
        5 JUMPIFNOT                        R3 ; [+6]
        6 FASTCALL1                        MATH_RAD R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K3 [math.rad]
       10 CALL                             R6 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R6
       13 GETIMPORT                        R7 K6 [Instance.new]
       15 LOADK                            R8 K7 ["ScreenGui"]
       16 CALL                             R7 1 1
       17 LOADK                            R8 K8 ["AssistantGen3dPreview"]
       18 SETTABLEKS                       R8 R7 K9 ["Name"]
       20 LOADB                            R8 0
       21 SETTABLEKS                       R8 R7 K10 ["Archivable"]
       23 GETIMPORT                        R8 K14 [Enum.SafeAreaCompatibility.None]
       25 SETTABLEKS                       R8 R7 K12 ["SafeAreaCompatibility"]
       27 GETIMPORT                        R8 K16 [Enum.ScreenInsets.None]
       29 SETTABLEKS                       R8 R7 K15 ["ScreenInsets"]
       31 GETIMPORT                        R8 K6 [Instance.new]
       33 LOADK                            R9 K17 ["ViewportFrame"]
       34 CALL                             R8 1 1
       35 GETIMPORT                        R9 K19 [Vector2.new]
       37 LOADN                            R10 1
       38 LOADN                            R11 1
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K20 ["AnchorPoint"]
       42 GETIMPORT                        R9 K23 [UDim2.fromOffset]
       44 LOADN                            R10 1
       45 LOADN                            R11 1
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K24 ["Position"]
       49 GETIMPORT                        R9 K23 [UDim2.fromOffset]
       51 GETUPVAL                         R10 0
       52 GETUPVAL                         R11 0
       53 CALL                             R9 2 1
       54 SETTABLEKS                       R9 R8 K25 ["Size"]
       56 GETIMPORT                        R9 K27 [Color3.new]
       58 LOADN                            R10 0
       59 LOADN                            R11 0
       60 LOADN                            R12 0
       61 CALL                             R9 3 1
       62 SETTABLEKS                       R9 R8 K28 ["BackgroundColor3"]
       64 LOADN                            R9 1
       65 SETTABLEKS                       R9 R8 K29 ["BackgroundTransparency"]
       67 SETTABLEKS                       R7 R8 K30 ["Parent"]
       69 NAMECALL                         R9 R1 K31 ["Clone"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K6 [Instance.new]
       74 LOADK                            R11 K32 ["Model"]
       75 CALL                             R10 1 1
       76 SETTABLEKS                       R10 R9 K30 ["Parent"]
       78 GETIMPORT                        R11 K35 [CFrame.identity]
       80 NAMECALL                         R12 R10 K36 ["GetExtentsSize"]
       82 CALL                             R12 1 1
       83 MOVE                             R15 R11
       84 NAMECALL                         R13 R10 K37 ["PivotTo"]
       86 CALL                             R13 2 0
       87 SETTABLEKS                       R8 R10 K30 ["Parent"]
       89 GETIMPORT                        R13 K6 [Instance.new]
       91 LOADK                            R14 K38 ["Camera"]
       92 CALL                             R13 1 1
       93 GETTABLEKS                       R16 R13 K39 ["FieldOfView"]
       95 GETTABLEKS                       R17 R12 K40 ["X"]
       97 GETTABLEKS                       R18 R12 K41 ["Y"]
       99 GETTABLEKS                       R19 R12 K42 ["Z"]
      101 FASTCALL3                        MATH_MAX R17 R18 R19
      103 MOVE                             R21 R17
      104 MOVE                             R22 R18
      105 MOVE                             R23 R19
      106 GETIMPORT                        R20 K44 [math.max]
      108 CALL                             R20 3 1
      109 FASTCALL1                        MATH_RAD R16 ; [+3]
      110 MOVE                             R25 R16
      111 GETIMPORT                        R24 K3 [math.rad]
      113 CALL                             R24 1 1
      114 DIVK                             R23 R24 K46 [2]
      115 FASTCALL1                        MATH_TAN R23 ; [+2]
      116 GETIMPORT                        R22 K48 [math.tan]
      118 CALL                             R22 1 1
      119 DIVRK                            R21 R45 K22 ["fromOffset"]
      120 MUL                              R22 R20 R21
      121 DIVK                             R23 R19 K46 [2]
      122 ADD                              R15 R22 R23
      123 GETUPVAL                         R16 1
      124 MUL                              R14 R15 R16
      125 JUMPIFNOT                        R6 ; [+46]
      126 FASTCALL1                        MATH_COS R6 ; [+3]
      127 MOVE                             R19 R6
      128 GETIMPORT                        R18 K50 [math.cos]
      130 CALL                             R18 1 1
      131 MUL                              R17 R14 R18
      132 FASTCALL1                        MATH_SIN R5 ; [+3]
      133 MOVE                             R19 R5
      134 GETIMPORT                        R18 K52 [math.sin]
      136 CALL                             R18 1 1
      137 MUL                              R16 R17 R18
      138 FASTCALL1                        MATH_SIN R6 ; [+3]
      139 MOVE                             R19 R6
      140 GETIMPORT                        R18 K52 [math.sin]
      142 CALL                             R18 1 1
      143 MUL                              R17 R14 R18
      144 FASTCALL1                        MATH_COS R6 ; [+3]
      145 MOVE                             R21 R6
      146 GETIMPORT                        R20 K50 [math.cos]
      148 CALL                             R20 1 1
      149 MUL                              R19 R14 R20
      150 FASTCALL1                        MATH_COS R5 ; [+3]
      151 MOVE                             R21 R5
      152 GETIMPORT                        R20 K50 [math.cos]
      154 CALL                             R20 1 1
      155 MUL                              R18 R19 R20
      156 FASTCALL                         VECTOR ; [+2]
      157 GETIMPORT                        R15 K54 [Vector3.new]
      159 CALL                             R15 3 1
      160 GETIMPORT                        R16 K56 [CFrame.lookAt]
      162 GETTABLEKS                       R18 R11 K24 ["Position"]
      164 ADD                              R17 R18 R15
      165 GETTABLEKS                       R18 R11 K24 ["Position"]
      167 LOADK                            R19 K57 [{0, 1, 0}]
      168 CALL                             R16 3 1
      169 SETTABLEKS                       R16 R13 K33 ["CFrame"]
      171 JUMP                             ; [+22]
      172 GETIMPORT                        R16 K59 [CFrame.Angles]
      174 LOADN                            R17 0
      175 ADDK                             R18 R5 K60 [0.5]
      176 LOADN                            R19 0
      177 CALL                             R16 3 1
      178 GETIMPORT                        R17 K61 [CFrame.new]
      180 LOADN                            R18 0
      181 LOADN                            R19 0
      182 MOVE                             R20 R14
      183 CALL                             R17 3 1
      184 MUL                              R15 R16 R17
      185 GETIMPORT                        R16 K56 [CFrame.lookAt]
      187 GETTABLEKS                       R17 R15 K24 ["Position"]
      189 GETTABLEKS                       R18 R11 K24 ["Position"]
      191 CALL                             R16 2 1
      192 SETTABLEKS                       R16 R13 K33 ["CFrame"]
      194 SETTABLEKS                       R8 R13 K30 ["Parent"]
      196 SETTABLEKS                       R13 R8 K62 ["CurrentCamera"]
      198 SETTABLEKS                       R7 R8 K30 ["Parent"]
      200 GETUPVAL                         R15 2
      201 JUMPIF                           R15 ; [+1]
      202 GETUPVAL                         R15 3
      203 SETTABLEKS                       R15 R7 K30 ["Parent"]
      205 GETIMPORT                        R15 K65 [task.delay]
      207 LOADN                            R16 2
      208 NEWCLOSURE                       R17 P0
      209 CAPTURE                          VAL R0
      210 CAPTURE                          UPVAL U4
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R4
      213 CAPTURE                          UPVAL U5
      214 CAPTURE                          VAL R8
      215 CAPTURE                          UPVAL U6
      216 CALL                             R15 2 0
      217 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.create]
        2 MOVE                             R2 R0
        3 LOADB                            R3 0
        4 CALL                             R1 2 1
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 LOADN                            R5 1
       10 DIVK                             R7 R0 K3 [4]
       11 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       12 GETIMPORT                        R6 K6 [math.floor]
       14 CALL                             R6 1 1
       15 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       17 GETIMPORT                        R4 K8 [math.max]
       19 CALL                             R4 2 1
       20 LOADN                            R7 0
       21 LOADN                            R5 3
       22 LOADN                            R6 1
       23 FORNPREP                         R5
       24 MUL                              R10 R7 R4
       25 MOD                              R9 R10 R0
       26 ADDK                             R8 R9 K9 [1]
       27 GETTABLE                         R9 R1 R8
       28 JUMPIF                           R9 ; [+9]
       29 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       31 MOVE                             R10 R3
       32 MOVE                             R11 R8
       33 GETIMPORT                        R9 K11 [table.insert]
       35 CALL                             R9 2 0
       36 LOADB                            R9 1
       37 SETTABLE                         R9 R1 R8
       38 FORNLOOP                         R5
       39 MOVE                             R6 R2
       40 GETIMPORT                        R7 K13 [table.clone]
       42 MOVE                             R8 R3
       43 CALL                             R7 1 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R5 K11 [table.insert]
       47 CALL                             R5 -1 0
       48 LOADN                            R5 0
       49 LENGTH                           R6 R3
       50 JUMPIFNOTLT                      R6 R0 ; [+69]
       52 LOADN                            R6 20
       53 JUMPIFNOTLT                      R5 R6 ; [+66]
       55 ADDK                             R5 R5 K9 [1]
       56 GETIMPORT                        R6 K15 [table.sort]
       58 MOVE                             R7 R3
       59 CALL                             R6 1 0
       60 NEWTABLE                         R6 0 0
       62 LOADN                            R9 1
       63 LENGTH                           R7 R3
       64 LOADN                            R8 1
       65 FORNPREP                         R7
       66 GETTABLE                         R10 R3 R9
       67 LENGTH                           R12 R3
       68 JUMPIFNOTLT                      R9 R12 ; [+4]
       70 ADDK                             R12 R9 K9 [1]
       71 GETTABLE                         R11 R3 R12
       72 JUMP                             ; [+2]
       73 GETTABLEN                        R12 R3 1
       74 ADD                              R11 R12 R0
       75 ADD                              R14 R10 R11
       76 DIVK                             R13 R14 K16 [2]
       77 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       78 GETIMPORT                        R12 K6 [math.floor]
       80 CALL                             R12 1 1
       81 JUMPIFNOTLT                      R0 R12 ; [+2]
       83 SUB                              R12 R12 R0
       84 GETTABLE                         R13 R1 R12
       85 JUMPIF                           R13 ; [+9]
       86 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       88 MOVE                             R14 R6
       89 MOVE                             R15 R12
       90 GETIMPORT                        R13 K11 [table.insert]
       92 CALL                             R13 2 0
       93 LOADB                            R13 1
       94 SETTABLE                         R13 R1 R12
       95 FORNLOOP                         R7
       96 LENGTH                           R7 R6
       97 JUMPIFEQKN                       R7 K17 [0] ; [+22]
       99 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
      101 MOVE                             R8 R2
      102 MOVE                             R9 R6
      103 GETIMPORT                        R7 K11 [table.insert]
      105 CALL                             R7 2 0
      106 MOVE                             R7 R6
      107 LOADNIL                          R8
      108 LOADNIL                          R9
      109 FORGPREP                         R7
      110 FASTCALL2                        TABLE_INSERT R3 R11 ; [+5]
      112 MOVE                             R13 R3
      113 MOVE                             R14 R11
      114 GETIMPORT                        R12 K11 [table.insert]
      116 CALL                             R12 2 0
      117 FORGLOOP                         R7 2 ; [-8]
      119 JUMPBACK                         ; [-71]
      120 NEWTABLE                         R6 0 0
      122 LOADN                            R9 1
      123 MOVE                             R7 R0
      124 LOADN                            R8 1
      125 FORNPREP                         R7
      126 GETTABLE                         R10 R1 R9
      127 JUMPIF                           R10 ; [+7]
      128 FASTCALL2                        TABLE_INSERT R6 R9 ; [+5]
      130 MOVE                             R11 R6
      131 MOVE                             R12 R9
      132 GETIMPORT                        R10 K11 [table.insert]
      134 CALL                             R10 2 0
      135 FORNLOOP                         R7
      136 LENGTH                           R7 R6
      137 LOADN                            R8 0
      138 JUMPIFNOTLT                      R8 R7 ; [+8]
      140 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
      142 MOVE                             R8 R2
      143 MOVE                             R9 R6
      144 GETIMPORT                        R7 K11 [table.insert]
      146 CALL                             R7 2 0
      147 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETUPVAL                         R6 3
        4 GETTABLEKS                       R6 R6 K0 ["azimuth"]
        6 GETUPVAL                         R7 3
        7 GETTABLEKS                       R7 R7 K1 ["elevation"]
        9 MOVE                             R8 R0
       10 CALL                             R3 5 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SUBK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R2 0
        4 LOADN                            R3 0
        5 JUMPIFLE                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 GETIMPORT                        R2 K2 [pcall]
       11 GETUPVAL                         R3 1
       12 GETUPVAL                         R4 2
       13 MOVE                             R5 R0
       14 CALL                             R2 3 0
       15 JUMPIFNOT                        R1 ; [+4]
       16 GETUPVAL                         R2 3
       17 NAMECALL                         R2 R2 K3 ["Fire"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to generate preview image %*: %*"]
        3 GETUPVAL                         R5 0
        4 MOVE                             R6 R0
        5 NAMECALL                         R3 R3 K3 ["format"]
        7 CALL                             R3 3 1
        8 MOVE                             R2 R3
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 SUBK                             R1 R1 K4 [1]
       12 SETUPVAL                         R1 1
       13 GETUPVAL                         R2 1
       14 LOADN                            R3 0
       15 JUMPIFLE                         R2 R3 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 GETIMPORT                        R2 K6 [pcall]
       21 GETUPVAL                         R3 2
       22 GETUPVAL                         R4 0
       23 LOADK                            R5 K7 [""]
       24 CALL                             R2 3 0
       25 JUMPIFNOT                        R1 ; [+4]
       26 GETUPVAL                         R2 3
       27 NAMECALL                         R2 R2 K8 ["Fire"]
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R2 K2 ["Preview image batch timed out with %* frame(s) remaining"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K4 ["Fire"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 LENGTH                           R5 R3
        1 JUMPIFNOTEQKN                    R5 K0 [0] ; [+3]
        3 CLOSEUPVALS                      R5
        4 RETURN                           R0 0
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K1 ["new"]
        8 CALL                             R6 0 1
        9 MOVE                             R7 R3
       10 LOADNIL                          R8
       11 LOADNIL                          R9
       12 FORGPREP                         R7
       13 GETTABLE                         R12 R2 R11
       14 GETUPVAL                         R13 1
       15 GETTABLEKS                       R13 R13 K1 ["new"]
       17 NEWCLOSURE                       R14 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R12
       22 CALL                             R13 1 1
       23 NEWCLOSURE                       R15 P1
       24 CAPTURE                          REF R5
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R11
       27 CAPTURE                          VAL R6
       28 NAMECALL                         R13 R13 K2 ["andThen"]
       30 CALL                             R13 2 1
       31 NEWCLOSURE                       R15 P2
       32 CAPTURE                          VAL R11
       33 CAPTURE                          REF R5
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R6
       36 NAMECALL                         R13 R13 K3 ["catch"]
       38 CALL                             R13 2 0
       39 FORGLOOP                         R7 2 ; [-27]
       41 GETIMPORT                        R7 K6 [task.delay]
       43 LOADN                            R8 120
       44 NEWCLOSURE                       R9 P3
       45 CAPTURE                          REF R5
       46 CAPTURE                          VAL R6
       47 CALL                             R7 2 1
       48 NAMECALL                         R8 R6 K7 ["Wait"]
       50 CALL                             R8 1 0
       51 GETIMPORT                        R8 K9 [task.cancel]
       53 MOVE                             R9 R7
       54 CALL                             R8 1 0
       55 CLOSEUPVALS                      R5
       56 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 JUMPIFNOTEQ                      R5 R6 ; [+10]
        8 GETUPVAL                         R5 3
        9 GETUPVAL                         R6 1
       10 GETUPVAL                         R7 4
       11 GETUPVAL                         R8 5
       12 MOVE                             R9 R4
       13 GETUPVAL                         R10 6
       14 CALL                             R5 5 0
       15 FORGLOOP                         R0 2 ; [-12]
       17 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETUPVAL                         R7 3
        4 MULK                             R6 R7 K0 [90]
        5 LOADNIL                          R7
        6 MOVE                             R8 R0
        7 CALL                             R3 5 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 ADDK                             R2 R3 K0 [1]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to generate preview image %*: %*"]
        3 GETUPVAL                         R6 0
        4 ADDK                             R5 R6 K3 [1]
        5 MOVE                             R6 R0
        6 NAMECALL                         R3 R3 K4 ["format"]
        8 CALL                             R3 3 1
        9 MOVE                             R2 R3
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R3 0
       13 ADDK                             R2 R3 K3 [1]
       14 LOADK                            R3 K5 [""]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 ADDK                             R3 R3 K0 [1]
        2 SETUPVAL                         R3 0
        3 GETUPVAL                         R3 0
        4 JUMPIFNOT                        R2 ; [+15]
        5 GETUPVAL                         R4 1
        6 LENGTH                           R5 R2
        7 CALL                             R4 1 1
        8 GETIMPORT                        R5 K3 [task.spawn]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R4
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R1
       18 CALL                             R5 1 0
       19 RETURN                           R0 0
       20 LOADN                            R6 0
       21 GETUPVAL                         R7 3
       22 SUBK                             R4 R7 K0 [1]
       23 LOADN                            R5 1
       24 FORNPREP                         R4
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R7 R7 K4 ["new"]
       28 NEWCLOSURE                       R8 P1
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R6
       33 CALL                             R7 1 1
       34 NEWCLOSURE                       R9 P2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R6
       37 NAMECALL                         R7 R7 K5 ["andThen"]
       39 CALL                             R7 2 1
       40 NEWCLOSURE                       R9 P3
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R1
       43 NAMECALL                         R7 R7 K6 ["catch"]
       45 CALL                             R7 2 0
       46 FORNLOOP                         R4
       47 RETURN                           R0 0

PROTO_14:
        0 LOADN                            R1 0
        1 JUMPIFNOTLE                      R0 R1 ; [+4]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 LOADN                            R2 1
        7 DIVK                             R4 R0 K0 [4]
        8 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        9 GETIMPORT                        R3 K3 [math.floor]
       11 CALL                             R3 1 1
       12 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       14 GETIMPORT                        R1 K5 [math.max]
       16 CALL                             R1 2 1
       17 NEWTABLE                         R2 0 0
       19 NEWTABLE                         R3 0 0
       21 LOADN                            R6 0
       22 LOADN                            R4 3
       23 LOADN                            R5 1
       24 FORNPREP                         R4
       25 MUL                              R9 R6 R1
       26 MOD                              R8 R9 R0
       27 ADDK                             R7 R8 K6 [1]
       28 GETTABLE                         R8 R3 R7
       29 JUMPIF                           R8 ; [+9]
       30 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       32 MOVE                             R9 R2
       33 MOVE                             R10 R7
       34 GETIMPORT                        R8 K9 [table.insert]
       36 CALL                             R8 2 0
       37 LOADB                            R8 1
       38 SETTABLE                         R8 R3 R7
       39 FORNLOOP                         R4
       40 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 NEWTABLE                         R0 0 0
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 JUMPIFEQKS                       R5 K0 [""] ; [+8]
       12 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R4
       16 GETIMPORT                        R6 K3 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-10]
       21 LENGTH                           R2 R0
       22 LOADN                            R3 0
       23 JUMPIFNOTLT                      R3 R2 ; [+3]
       25 MOVE                             R1 R0
       26 RETURN                           R1 1
       27 LOADNIL                          R1
       28 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+11]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 3
       10 GETTABLE                         R0 R1 R2
       11 JUMPIFEQKNIL                     R0 ; [+7]
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R2 3
       15 GETTABLE                         R0 R1 R2
       16 JUMPIFEQKS                       R0 K1 [""] ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 4
       20 GETUPVAL                         R2 0
       21 GETTABLEN                        R1 R2 1
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOTLE                      R0 R5 ; [+10]
        6 GETUPVAL                         R7 0
        7 GETUPVAL                         R9 1
        8 JUMPIFNOTLT                      R4 R9 ; [+3]
       10 ADDK                             R8 R4 K0 [1]
       11 JUMP                             ; [+1]
       12 LOADN                            R8 1
       13 GETTABLE                         R6 R7 R8
       14 RETURN                           R6 1
       15 FORGLOOP                         R1 2 ; [-12]
       17 GETUPVAL                         R2 0
       18 GETTABLEN                        R1 R2 1
       19 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+2]
        7 RETURN                           R0 0
        8 LENGTH                           R1 R0
        9 GETUPVAL                         R2 1
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOTLE                      R0 R5 ; [+10]
        6 GETUPVAL                         R7 0
        7 LOADN                            R9 1
        8 JUMPIFNOTLT                      R9 R4 ; [+3]
       10 SUBK                             R8 R4 K0 [1]
       11 JUMP                             ; [+1]
       12 GETUPVAL                         R8 1
       13 GETTABLE                         R6 R7 R8
       14 RETURN                           R6 1
       15 FORGLOOP                         R1 2 ; [-12]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R3 1
       19 GETTABLE                         R1 R2 R3
       20 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+2]
        7 RETURN                           R0 0
        8 LENGTH                           R1 R0
        9 GETUPVAL                         R2 1
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 MOVE                             R4 R0
        8 SETLIST                          R3 R4 1 [1]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+2]
       12 LENGTH                           R2 R1
       13 JUMP                             ; [+1]
       14 LOADN                            R2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K1 ["useState"]
       18 LOADN                            R4 1
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R7 0 2
       31 MOVE                             R8 R1
       32 MOVE                             R9 R2
       33 SETLIST                          R7 R8 2 [1]
       35 CALL                             R5 2 0
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K3 ["useRef"]
       39 MOVE                             R6 R1
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K3 ["useRef"]
       44 MOVE                             R7 R2
       45 CALL                             R6 1 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K2 ["useEffect"]
       49 NEWCLOSURE                       R8 P2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 NEWTABLE                         R9 0 2
       56 MOVE                             R10 R1
       57 MOVE                             R11 R2
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R7 2 0
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       64 NEWCLOSURE                       R8 P3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 NEWTABLE                         R9 0 0
       69 CALL                             R7 2 1
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       73 NEWCLOSURE                       R9 P4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 NEWTABLE                         R10 0 0
       78 CALL                             R8 2 1
       79 JUMPIFNOT                        R0 ; [+5]
       80 LOADN                            R10 0
       81 JUMPIFNOTLT                      R10 R2 ; [+3]
       83 GETTABLE                         R9 R0 R3
       84 JUMP                             ; [+1]
       85 LOADNIL                          R9
       86 JUMPIFNOTEQKS                    R9 K5 [""] ; [+2]
       88 LOADNIL                          R9
       89 DUPTABLE                         R10 K13 [{"exists", "current", "increment", "decrement", "countRef", "images", "index"}]
       90 LOADN                            R12 0
       91 JUMPIFLT                         R12 R2 ; [+2]
       93 LOADB                            R11 0 +1
       94 LOADB                            R11 1
       95 SETTABLEKS                       R11 R10 K6 ["exists"]
       97 SETTABLEKS                       R9 R10 K7 ["current"]
       99 SETTABLEKS                       R7 R10 K8 ["increment"]
      101 SETTABLEKS                       R8 R10 K9 ["decrement"]
      103 SETTABLEKS                       R6 R10 K10 ["countRef"]
      105 SETTABLEKS                       R0 R10 K11 ["images"]
      107 SETTABLEKS                       R3 R10 K12 ["index"]
      109 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CoreGui"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["StarterGui"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["Promise"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R5 K13 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Parent"]
       37 GETTABLEKS                       R6 R6 K14 ["Signal"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K15 ["Util"]
       44 GETTABLEKS                       R7 R7 K16 ["ToolUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETIMPORT                        R8 K1 [script]
       51 GETTABLEKS                       R8 R8 K11 ["Parent"]
       53 GETTABLEKS                       R8 R8 K17 ["Gen3dConstants"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R7 K18 ["PLACEHOLDER_IMAGE"]
       58 GETTABLEKS                       R9 R7 K19 ["PREVIEW_CAMERA_DISTANCE_MULTIPLIER"]
       60 GETTABLEKS                       R10 R7 K20 ["PREVIEW_IMAGE_COUNT"]
       62 GETTABLEKS                       R11 R7 K21 ["PREVIEW_SIZE_PX"]
       64 LOADN                            R12 0
       65 DUPCLOSURE                       R13 K22 [PROTO_0]
       66 NEWCLOSURE                       R14 P1
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          REF R12
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R8
       74 DUPCLOSURE                       R15 K23 [PROTO_3]
       75 DUPCLOSURE                       R16 K24 [PROTO_8]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R14
       79 NEWCLOSURE                       R17 P4
       80 CAPTURE                          REF R12
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R16
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R14
       86 DUPCLOSURE                       R18 K25 [PROTO_14]
       87 DUPCLOSURE                       R19 K26 [PROTO_22]
       88 CAPTURE                          VAL R4
       89 DUPTABLE                         R20 K32 [{"getCameraDistance", "createPreviewImageForInstance", "capturePreviewImages", "getBatch0Indices", "useCarouselPreviewImage"}]
       90 SETTABLEKS                       R13 R20 K27 ["getCameraDistance"]
       92 SETTABLEKS                       R14 R20 K28 ["createPreviewImageForInstance"]
       94 SETTABLEKS                       R17 R20 K29 ["capturePreviewImages"]
       96 SETTABLEKS                       R18 R20 K30 ["getBatch0Indices"]
       98 SETTABLEKS                       R19 R20 K31 ["useCarouselPreviewImage"]
      100 CLOSEUPVALS                      R12
      101 RETURN                           R20 1
