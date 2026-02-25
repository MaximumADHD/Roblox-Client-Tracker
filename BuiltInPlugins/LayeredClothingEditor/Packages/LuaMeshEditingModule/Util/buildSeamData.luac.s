PROTO_0:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        4 LOADK                            R7 K0 ["FFlagAvatarPreviewerCageEditingTools is not enabled!"]
        5 GETIMPORT                        R5 K2 [assert]
        7 CALL                             R5 2 0
        8 GETTABLE                         R8 R0 R1
        9 GETTABLE                         R5 R8 R2
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLEKS                       R10 R9 K3 ["Index"]
       15 JUMPIFNOTEQ                      R10 R4 ; [+6]
       17 GETTABLEKS                       R10 R9 K4 ["MeshName"]
       19 JUMPIFNOTEQ                      R10 R3 ; [+2]
       21 RETURN                           R0 0
       22 FORGLOOP                         R5 2 ; [-10]
       24 GETTABLE                         R7 R0 R1
       25 GETTABLE                         R6 R7 R2
       26 DUPTABLE                         R7 K5 [{"Index", "MeshName"}]
       27 SETTABLEKS                       R4 R7 K3 ["Index"]
       29 SETTABLEKS                       R3 R7 K4 ["MeshName"]
       31 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       33 GETIMPORT                        R5 K8 [table.insert]
       35 CALL                             R5 2 0
       36 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R4 0 0
        2 JUMPIFEQ                         R1 R2 ; [+2]
        4 LOADB                            R5 0 +1
        5 LOADB                            R5 1
        6 NAMECALL                         R6 R0 K0 ["getVertexData"]
        8 CALL                             R6 1 1
        9 GETTABLE                         R7 R6 R1
       10 MOVE                             R10 R1
       11 NAMECALL                         R8 R0 K1 ["getMeshOrigin"]
       13 CALL                             R8 2 1
       14 GETIMPORT                        R9 K3 [pairs]
       16 MOVE                             R10 R7
       17 CALL                             R9 1 3
       18 FORGPREP_NEXT                    R9
       19 MUL                              R14 R8 R13
       20 GETTABLEKS                       R17 R14 K5 ["X"]
       22 MULK                             R16 R17 K4 [100]
       23 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       24 GETIMPORT                        R15 K8 [math.floor]
       26 CALL                             R15 1 1
       27 GETTABLEKS                       R18 R14 K9 ["Y"]
       29 MULK                             R17 R18 K4 [100]
       30 FASTCALL1                        MATH_FLOOR R17 ; [+2]
       31 GETIMPORT                        R16 K8 [math.floor]
       33 CALL                             R16 1 1
       34 GETTABLEKS                       R19 R14 K10 ["Z"]
       36 MULK                             R18 R19 K4 [100]
       37 FASTCALL1                        MATH_FLOOR R18 ; [+2]
       38 GETIMPORT                        R17 K8 [math.floor]
       40 CALL                             R17 1 1
       41 GETTABLE                         R18 R4 R15
       42 JUMPIF                           R18 ; [+3]
       43 NEWTABLE                         R18 0 0
       45 SETTABLE                         R18 R4 R15
       46 GETTABLE                         R19 R4 R15
       47 GETTABLE                         R18 R19 R16
       48 JUMPIF                           R18 ; [+4]
       49 GETTABLE                         R18 R4 R15
       50 NEWTABLE                         R19 0 0
       52 SETTABLE                         R19 R18 R16
       53 GETTABLE                         R20 R4 R15
       54 GETTABLE                         R19 R20 R16
       55 GETTABLE                         R18 R19 R17
       56 JUMPIF                           R18 ; [+5]
       57 GETTABLE                         R19 R4 R15
       58 GETTABLE                         R18 R19 R16
       59 NEWTABLE                         R19 0 0
       61 SETTABLE                         R19 R18 R17
       62 GETTABLE                         R21 R4 R15
       63 GETTABLE                         R20 R21 R16
       64 GETTABLE                         R19 R20 R17
       65 FASTCALL2                        TABLE_INSERT R19 R12 ; [+4]
       67 MOVE                             R20 R12
       68 GETIMPORT                        R18 K13 [table.insert]
       70 CALL                             R18 2 0
       71 FORGLOOP                         R9 2 ; [-53]
       73 GETTABLE                         R9 R6 R2
       74 MOVE                             R12 R2
       75 NAMECALL                         R10 R0 K1 ["getMeshOrigin"]
       77 CALL                             R10 2 1
       78 GETIMPORT                        R11 K3 [pairs]
       80 MOVE                             R12 R9
       81 CALL                             R11 1 3
       82 FORGPREP_NEXT                    R11
       83 MUL                              R16 R10 R15
       84 GETTABLEKS                       R19 R16 K5 ["X"]
       86 MULK                             R18 R19 K4 [100]
       87 FASTCALL1                        MATH_FLOOR R18 ; [+2]
       88 GETIMPORT                        R17 K8 [math.floor]
       90 CALL                             R17 1 1
       91 GETTABLEKS                       R20 R16 K9 ["Y"]
       93 MULK                             R19 R20 K4 [100]
       94 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       95 GETIMPORT                        R18 K8 [math.floor]
       97 CALL                             R18 1 1
       98 GETTABLEKS                       R21 R16 K10 ["Z"]
      100 MULK                             R20 R21 K4 [100]
      101 FASTCALL1                        MATH_FLOOR R20 ; [+2]
      102 GETIMPORT                        R19 K8 [math.floor]
      104 CALL                             R19 1 1
      105 GETTABLE                         R20 R4 R17
      106 JUMPIFNOT                        R20 ; [+6]
      107 GETTABLE                         R21 R4 R17
      108 GETTABLE                         R20 R21 R18
      109 JUMPIFNOT                        R20 ; [+3]
      110 GETTABLE                         R22 R4 R17
      111 GETTABLE                         R21 R22 R18
      112 GETTABLE                         R20 R21 R19
      113 JUMPIFNOT                        R20 ; [+81]
      114 GETIMPORT                        R21 K15 [ipairs]
      116 MOVE                             R22 R20
      117 CALL                             R21 1 3
      118 FORGPREP_INEXT                   R21
      119 JUMPIFNOT                        R5 ; [+3]
      120 JUMPIFNOT                        R5 ; [+72]
      121 JUMPIFEQ                         R25 R14 ; [+71]
      123 GETTABLE                         R26 R3 R1
      124 JUMPIF                           R26 ; [+3]
      125 NEWTABLE                         R26 0 0
      127 SETTABLE                         R26 R3 R1
      128 GETTABLE                         R27 R3 R1
      129 GETTABLE                         R26 R27 R25
      130 JUMPIF                           R26 ; [+4]
      131 GETTABLE                         R26 R3 R1
      132 NEWTABLE                         R27 0 0
      134 SETTABLE                         R27 R26 R25
      135 GETUPVAL                         R26 0
      136 CALL                             R26 0 1
      137 JUMPIFNOT                        R26 ; [+8]
      138 GETUPVAL                         R26 1
      139 MOVE                             R27 R3
      140 MOVE                             R28 R1
      141 MOVE                             R29 R25
      142 MOVE                             R30 R2
      143 MOVE                             R31 R14
      144 CALL                             R26 5 0
      145 JUMP                             ; [+12]
      146 GETTABLE                         R28 R3 R1
      147 GETTABLE                         R27 R28 R25
      148 DUPTABLE                         R28 K18 [{"Index", "MeshName"}]
      149 SETTABLEKS                       R14 R28 K16 ["Index"]
      151 SETTABLEKS                       R2 R28 K17 ["MeshName"]
      153 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      155 GETIMPORT                        R26 K13 [table.insert]
      157 CALL                             R26 2 0
      158 GETTABLE                         R26 R3 R2
      159 JUMPIF                           R26 ; [+3]
      160 NEWTABLE                         R26 0 0
      162 SETTABLE                         R26 R3 R2
      163 GETTABLE                         R27 R3 R2
      164 GETTABLE                         R26 R27 R14
      165 JUMPIF                           R26 ; [+4]
      166 GETTABLE                         R26 R3 R2
      167 NEWTABLE                         R27 0 0
      169 SETTABLE                         R27 R26 R14
      170 GETUPVAL                         R26 0
      171 CALL                             R26 0 1
      172 JUMPIFNOT                        R26 ; [+8]
      173 GETUPVAL                         R26 1
      174 MOVE                             R27 R3
      175 MOVE                             R28 R2
      176 MOVE                             R29 R14
      177 MOVE                             R30 R1
      178 MOVE                             R31 R25
      179 CALL                             R26 5 0
      180 JUMP                             ; [+12]
      181 GETTABLE                         R28 R3 R2
      182 GETTABLE                         R27 R28 R14
      183 DUPTABLE                         R28 K18 [{"Index", "MeshName"}]
      184 SETTABLEKS                       R25 R28 K16 ["Index"]
      186 SETTABLEKS                       R1 R28 K17 ["MeshName"]
      188 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      190 GETIMPORT                        R26 K13 [table.insert]
      192 CALL                             R26 2 0
      193 FORGLOOP                         R21 2 [inext] ; [-75]
      195 FORGLOOP                         R11 2 ; [-113]
      197 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 GETTABLEKS                       R8 R7 K2 ["instance"]
        9 LOADK                            R12 K3 ["MeshPart"]
       10 NAMECALL                         R10 R8 K4 ["IsA"]
       12 CALL                             R10 2 1
       13 JUMPIFNOT                        R10 ; [+2]
       14 MOVE                             R9 R8
       15 JUMP                             ; [+4]
       16 LOADK                            R11 K3 ["MeshPart"]
       17 NAMECALL                         R9 R8 K5 ["FindFirstAncestorOfClass"]
       19 CALL                             R9 2 1
       20 JUMPIFNOT                        R9 ; [+29]
       21 GETUPVAL                         R10 0
       22 MOVE                             R11 R0
       23 GETTABLEKS                       R12 R8 K6 ["Name"]
       25 GETTABLEKS                       R13 R8 K6 ["Name"]
       27 MOVE                             R14 R2
       28 CALL                             R10 4 0
       29 LOADK                            R12 K7 ["Motor6D"]
       30 NAMECALL                         R10 R9 K8 ["FindFirstChildOfClass"]
       32 CALL                             R10 2 1
       33 JUMPIFNOT                        R10 ; [+16]
       34 GETTABLEKS                       R11 R10 K9 ["Part0"]
       36 JUMPIFNOT                        R11 ; [+13]
       37 LOADK                            R14 K10 ["BaseWrap"]
       38 NAMECALL                         R12 R11 K11 ["FindFirstChildWhichIsA"]
       40 CALL                             R12 2 1
       41 JUMPIFNOT                        R12 ; [+8]
       42 GETUPVAL                         R13 0
       43 MOVE                             R14 R0
       44 GETTABLEKS                       R15 R8 K6 ["Name"]
       46 GETTABLEKS                       R16 R12 K6 ["Name"]
       48 MOVE                             R17 R2
       49 CALL                             R13 4 0
       50 FORGLOOP                         R3 2 [inext] ; [-44]
       52 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R3 K7 ["getFFlagAvatarPreviewerCageEditingTools"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 DUPCLOSURE                       R3 K9 [PROTO_1]
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 DUPCLOSURE                       R4 K10 [PROTO_2]
       20 CAPTURE                          VAL R3
       21 RETURN                           R4 1
