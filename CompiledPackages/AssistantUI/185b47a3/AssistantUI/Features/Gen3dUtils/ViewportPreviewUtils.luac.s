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
       24 DIVRK                            R6 K6 [1] R7
       25 MUL                              R8 R5 R6
       26 DIVK                             R9 R4 K7 [2]
       27 ADD                              R7 R8 R9
       28 RETURN                           R7 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 1
        3 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
        5 MOVE                             R3 R1
        6 MOVE                             R4 R0
        7 GETIMPORT                        R2 K3 [table.insert]
        9 CALL                             R2 2 0
       10 MOVE                             R2 R1
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 NAMECALL                         R7 R6 K4 ["GetTags"]
       16 CALL                             R7 1 3
       17 FORGPREP                         R7
       18 MOVE                             R14 R11
       19 NAMECALL                         R12 R6 K5 ["RemoveTag"]
       21 CALL                             R12 2 0
       22 FORGLOOP                         R7 2 ; [-5]
       24 FORGLOOP                         R2 2 ; [-11]
       26 RETURN                           R0 0

PROTO_2:
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
       23 JUMP                             ; [+1]
       24 GETUPVAL                         R2 6
       25 GETUPVAL                         R3 3
       26 MOVE                             R4 R2
       27 CALL                             R3 1 -1
       28 RETURN                           R3 -1

PROTO_3:
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
       72 GETUPVAL                         R10 1
       73 GETTABLEKS                       R10 R10 K32 ["FFlagAssistantSplitToolsAndWidgets"]
       75 JUMPIFNOT                        R10 ; [+3]
       76 GETUPVAL                         R10 2
       77 MOVE                             R11 R9
       78 CALL                             R10 1 0
       79 GETIMPORT                        R10 K6 [Instance.new]
       81 LOADK                            R11 K33 ["Model"]
       82 CALL                             R10 1 1
       83 SETTABLEKS                       R10 R9 K30 ["Parent"]
       85 GETIMPORT                        R11 K36 [CFrame.identity]
       87 NAMECALL                         R12 R10 K37 ["GetExtentsSize"]
       89 CALL                             R12 1 1
       90 MOVE                             R15 R11
       91 NAMECALL                         R13 R10 K38 ["PivotTo"]
       93 CALL                             R13 2 0
       94 SETTABLEKS                       R8 R10 K30 ["Parent"]
       96 GETIMPORT                        R13 K6 [Instance.new]
       98 LOADK                            R14 K39 ["Camera"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R16 R13 K40 ["FieldOfView"]
      102 GETTABLEKS                       R17 R12 K41 ["X"]
      104 GETTABLEKS                       R18 R12 K42 ["Y"]
      106 GETTABLEKS                       R19 R12 K43 ["Z"]
      108 FASTCALL3                        MATH_MAX R17 R18 R19
      110 MOVE                             R21 R17
      111 MOVE                             R22 R18
      112 MOVE                             R23 R19
      113 GETIMPORT                        R20 K45 [math.max]
      115 CALL                             R20 3 1
      116 FASTCALL1                        MATH_RAD R16 ; [+3]
      117 MOVE                             R25 R16
      118 GETIMPORT                        R24 K3 [math.rad]
      120 CALL                             R24 1 1
      121 DIVK                             R23 R24 K47 [2]
      122 FASTCALL1                        MATH_TAN R23 ; [+2]
      123 GETIMPORT                        R22 K49 [math.tan]
      125 CALL                             R22 1 1
      126 DIVRK                            R21 K46 [1] R22
      127 MUL                              R22 R20 R21
      128 DIVK                             R23 R19 K47 [2]
      129 ADD                              R15 R22 R23
      130 GETUPVAL                         R16 3
      131 MUL                              R14 R15 R16
      132 JUMPIFNOT                        R6 ; [+46]
      133 FASTCALL1                        MATH_COS R6 ; [+3]
      134 MOVE                             R19 R6
      135 GETIMPORT                        R18 K51 [math.cos]
      137 CALL                             R18 1 1
      138 MUL                              R17 R14 R18
      139 FASTCALL1                        MATH_SIN R5 ; [+3]
      140 MOVE                             R19 R5
      141 GETIMPORT                        R18 K53 [math.sin]
      143 CALL                             R18 1 1
      144 MUL                              R16 R17 R18
      145 FASTCALL1                        MATH_SIN R6 ; [+3]
      146 MOVE                             R19 R6
      147 GETIMPORT                        R18 K53 [math.sin]
      149 CALL                             R18 1 1
      150 MUL                              R17 R14 R18
      151 FASTCALL1                        MATH_COS R6 ; [+3]
      152 MOVE                             R21 R6
      153 GETIMPORT                        R20 K51 [math.cos]
      155 CALL                             R20 1 1
      156 MUL                              R19 R14 R20
      157 FASTCALL1                        MATH_COS R5 ; [+3]
      158 MOVE                             R21 R5
      159 GETIMPORT                        R20 K51 [math.cos]
      161 CALL                             R20 1 1
      162 MUL                              R18 R19 R20
      163 FASTCALL                         VECTOR ; [+2]
      164 GETIMPORT                        R15 K55 [Vector3.new]
      166 CALL                             R15 3 1
      167 GETIMPORT                        R16 K57 [CFrame.lookAt]
      169 GETTABLEKS                       R18 R11 K24 ["Position"]
      171 ADD                              R17 R18 R15
      172 GETTABLEKS                       R18 R11 K24 ["Position"]
      174 LOADK                            R19 K58 [{0, 1, 0}]
      175 CALL                             R16 3 1
      176 SETTABLEKS                       R16 R13 K34 ["CFrame"]
      178 JUMP                             ; [+22]
      179 GETIMPORT                        R16 K60 [CFrame.Angles]
      181 LOADN                            R17 0
      182 ADDK                             R18 R5 K61 [0.5]
      183 LOADN                            R19 0
      184 CALL                             R16 3 1
      185 GETIMPORT                        R17 K62 [CFrame.new]
      187 LOADN                            R18 0
      188 LOADN                            R19 0
      189 MOVE                             R20 R14
      190 CALL                             R17 3 1
      191 MUL                              R15 R16 R17
      192 GETIMPORT                        R16 K57 [CFrame.lookAt]
      194 GETTABLEKS                       R17 R15 K24 ["Position"]
      196 GETTABLEKS                       R18 R11 K24 ["Position"]
      198 CALL                             R16 2 1
      199 SETTABLEKS                       R16 R13 K34 ["CFrame"]
      201 SETTABLEKS                       R8 R13 K30 ["Parent"]
      203 SETTABLEKS                       R13 R8 K63 ["CurrentCamera"]
      205 SETTABLEKS                       R7 R8 K30 ["Parent"]
      207 GETUPVAL                         R15 4
      208 JUMPIF                           R15 ; [+1]
      209 GETUPVAL                         R15 5
      210 SETTABLEKS                       R15 R7 K30 ["Parent"]
      212 GETIMPORT                        R15 K66 [task.delay]
      214 LOADN                            R16 2
      215 NEWCLOSURE                       R17 P0
      216 CAPTURE                          VAL R0
      217 CAPTURE                          UPVAL U6
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R4
      220 CAPTURE                          UPVAL U7
      221 CAPTURE                          VAL R8
      222 CAPTURE                          UPVAL U8
      223 CALL                             R15 2 0
      224 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R2 K2 ["Preview image batch timed out with %* frame(s) remaining"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 LOADB                            R0 1
       10 SETUPVAL                         R0 1
       11 GETUPVAL                         R0 2
       12 NAMECALL                         R0 R0 K4 ["Fire"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_9:
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
       41 LOADB                            R7 0
       42 GETIMPORT                        R8 K6 [task.delay]
       44 LOADN                            R9 120
       45 NEWCLOSURE                       R10 P3
       46 CAPTURE                          REF R5
       47 CAPTURE                          REF R7
       48 CAPTURE                          VAL R6
       49 CALL                             R8 2 1
       50 NAMECALL                         R9 R6 K7 ["Wait"]
       52 CALL                             R9 1 0
       53 JUMPIF                           R7 ; [+4]
       54 GETIMPORT                        R9 K9 [task.cancel]
       56 MOVE                             R10 R8
       57 CALL                             R9 1 0
       58 CLOSEUPVALS                      R5
       59 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETUPVAL                         R7 3
        4 MULK                             R6 R7 K0 [90]
        5 LOADNIL                          R7
        6 MOVE                             R8 R0
        7 CALL                             R3 5 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 ADDK                             R2 R3 K0 [1]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETUPVAL                         R6 3
        4 GETUPVAL                         R7 4
        5 MOVE                             R8 R0
        6 CALL                             R3 5 0
        7 RETURN                           R0 0

PROTO_16:
        0 RETURN                           R0 1

PROTO_17:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to generate preview image: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 ADDK                             R3 R3 K0 [1]
        2 SETUPVAL                         R3 0
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["new"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 CALL                             R4 1 1
       14 DUPCLOSURE                       R6 K2 [PROTO_16]
       15 NAMECALL                         R4 R4 K3 ["andThen"]
       17 CALL                             R4 2 1
       18 DUPCLOSURE                       R6 K4 [PROTO_17]
       19 CAPTURE                          UPVAL U3
       20 NAMECALL                         R4 R4 K5 ["catch"]
       22 CALL                             R4 2 1
       23 NAMECALL                         R4 R4 K6 ["await"]
       25 CALL                             R4 1 2
       26 JUMPIF                           R4 ; [+2]
       27 GETUPVAL                         R6 3
       28 RETURN                           R6 1
       29 RETURN                           R5 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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
       21 GETTABLEKS                       R4 R0 K11 ["Flags"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K10 [require]
       26 GETTABLEKS                       R5 R0 K12 ["Parent"]
       28 GETTABLEKS                       R5 R5 K13 ["Promise"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Parent"]
       35 GETTABLEKS                       R6 R6 K14 ["React"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K10 [require]
       40 GETTABLEKS                       R7 R0 K12 ["Parent"]
       42 GETTABLEKS                       R7 R7 K15 ["Signal"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K10 [require]
       47 GETTABLEKS                       R8 R0 K16 ["Util"]
       49 GETTABLEKS                       R8 R8 K17 ["ToolUtils"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K10 [require]
       54 GETIMPORT                        R9 K1 [script]
       56 GETTABLEKS                       R9 R9 K12 ["Parent"]
       58 GETTABLEKS                       R9 R9 K18 ["Gen3dConstants"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R8 K19 ["PLACEHOLDER_IMAGE"]
       63 GETTABLEKS                       R10 R8 K20 ["PREVIEW_CAMERA_DISTANCE_MULTIPLIER"]
       65 GETTABLEKS                       R11 R8 K21 ["PREVIEW_IMAGE_COUNT"]
       67 GETTABLEKS                       R12 R8 K22 ["PREVIEW_SIZE_PX"]
       69 LOADN                            R13 0
       70 DUPCLOSURE                       R14 K23 [PROTO_0]
       71 DUPCLOSURE                       R15 K24 [PROTO_1]
       72 NEWCLOSURE                       R16 P2
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R15
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 CAPTURE                          REF R13
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R9
       82 DUPCLOSURE                       R17 K25 [PROTO_4]
       83 DUPCLOSURE                       R18 K26 [PROTO_9]
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R16
       87 NEWCLOSURE                       R19 P5
       88 CAPTURE                          REF R13
       89 CAPTURE                          VAL R17
       90 CAPTURE                          VAL R18
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R16
       94 NEWCLOSURE                       R20 P6
       95 CAPTURE                          REF R13
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R9
       99 DUPCLOSURE                       R21 K27 [PROTO_19]
      100 DUPCLOSURE                       R22 K28 [PROTO_27]
      101 CAPTURE                          VAL R5
      102 DUPTABLE                         R23 K35 [{"getCameraDistance", "createPreviewImageForInstance", "capturePreviewImages", "captureSinglePreviewImageAsync", "getBatch0Indices", "useCarouselPreviewImage"}]
      103 SETTABLEKS                       R14 R23 K29 ["getCameraDistance"]
      105 SETTABLEKS                       R16 R23 K30 ["createPreviewImageForInstance"]
      107 SETTABLEKS                       R19 R23 K31 ["capturePreviewImages"]
      109 SETTABLEKS                       R20 R23 K32 ["captureSinglePreviewImageAsync"]
      111 SETTABLEKS                       R21 R23 K33 ["getBatch0Indices"]
      113 SETTABLEKS                       R22 R23 K34 ["useCarouselPreviewImage"]
      115 CLOSEUPVALS                      R13
      116 RETURN                           R23 1
