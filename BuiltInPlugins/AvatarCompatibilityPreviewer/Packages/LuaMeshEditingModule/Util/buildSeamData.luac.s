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
       11 NAMECALL                         R8 R0 K1 ["getMeshOriginWorld"]
       13 CALL                             R8 2 1
       14 MOVE                             R9 R7
       15 LOADNIL                          R10
       16 LOADNIL                          R11
       17 FORGPREP                         R9
       18 MUL                              R14 R8 R13
       19 GETTABLEKS                       R17 R14 K3 ["X"]
       21 MULK                             R16 R17 K2 [100]
       22 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       23 GETIMPORT                        R15 K6 [math.floor]
       25 CALL                             R15 1 1
       26 GETTABLEKS                       R18 R14 K7 ["Y"]
       28 MULK                             R17 R18 K2 [100]
       29 FASTCALL1                        MATH_FLOOR R17 ; [+2]
       30 GETIMPORT                        R16 K6 [math.floor]
       32 CALL                             R16 1 1
       33 GETTABLEKS                       R19 R14 K8 ["Z"]
       35 MULK                             R18 R19 K2 [100]
       36 FASTCALL1                        MATH_FLOOR R18 ; [+2]
       37 GETIMPORT                        R17 K6 [math.floor]
       39 CALL                             R17 1 1
       40 GETTABLE                         R18 R4 R15
       41 JUMPIF                           R18 ; [+3]
       42 NEWTABLE                         R18 0 0
       44 SETTABLE                         R18 R4 R15
       45 GETTABLE                         R19 R4 R15
       46 GETTABLE                         R18 R19 R16
       47 JUMPIF                           R18 ; [+4]
       48 GETTABLE                         R18 R4 R15
       49 NEWTABLE                         R19 0 0
       51 SETTABLE                         R19 R18 R16
       52 GETTABLE                         R20 R4 R15
       53 GETTABLE                         R19 R20 R16
       54 GETTABLE                         R18 R19 R17
       55 JUMPIF                           R18 ; [+5]
       56 GETTABLE                         R19 R4 R15
       57 GETTABLE                         R18 R19 R16
       58 NEWTABLE                         R19 0 0
       60 SETTABLE                         R19 R18 R17
       61 GETTABLE                         R21 R4 R15
       62 GETTABLE                         R20 R21 R16
       63 GETTABLE                         R19 R20 R17
       64 FASTCALL2                        TABLE_INSERT R19 R12 ; [+4]
       66 MOVE                             R20 R12
       67 GETIMPORT                        R18 K11 [table.insert]
       69 CALL                             R18 2 0
       70 FORGLOOP                         R9 2 ; [-53]
       72 GETTABLE                         R9 R6 R2
       73 MOVE                             R12 R2
       74 NAMECALL                         R10 R0 K1 ["getMeshOriginWorld"]
       76 CALL                             R10 2 1
       77 GETIMPORT                        R11 K13 [pairs]
       79 MOVE                             R12 R9
       80 CALL                             R11 1 3
       81 FORGPREP_NEXT                    R11
       82 MUL                              R16 R10 R15
       83 GETTABLEKS                       R19 R16 K3 ["X"]
       85 MULK                             R18 R19 K2 [100]
       86 FASTCALL1                        MATH_FLOOR R18 ; [+2]
       87 GETIMPORT                        R17 K6 [math.floor]
       89 CALL                             R17 1 1
       90 GETTABLEKS                       R20 R16 K7 ["Y"]
       92 MULK                             R19 R20 K2 [100]
       93 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       94 GETIMPORT                        R18 K6 [math.floor]
       96 CALL                             R18 1 1
       97 GETTABLEKS                       R21 R16 K8 ["Z"]
       99 MULK                             R20 R21 K2 [100]
      100 FASTCALL1                        MATH_FLOOR R20 ; [+2]
      101 GETIMPORT                        R19 K6 [math.floor]
      103 CALL                             R19 1 1
      104 GETTABLE                         R20 R4 R17
      105 JUMPIFNOT                        R20 ; [+6]
      106 GETTABLE                         R21 R4 R17
      107 GETTABLE                         R20 R21 R18
      108 JUMPIFNOT                        R20 ; [+3]
      109 GETTABLE                         R22 R4 R17
      110 GETTABLE                         R21 R22 R18
      111 GETTABLE                         R20 R21 R19
      112 JUMPIFNOT                        R20 ; [+80]
      113 MOVE                             R21 R20
      114 LOADNIL                          R22
      115 LOADNIL                          R23
      116 FORGPREP                         R21
      117 JUMPIFNOT                        R5 ; [+3]
      118 JUMPIFNOT                        R5 ; [+72]
      119 JUMPIFEQ                         R25 R14 ; [+71]
      121 GETTABLE                         R26 R3 R1
      122 JUMPIF                           R26 ; [+3]
      123 NEWTABLE                         R26 0 0
      125 SETTABLE                         R26 R3 R1
      126 GETTABLE                         R27 R3 R1
      127 GETTABLE                         R26 R27 R25
      128 JUMPIF                           R26 ; [+4]
      129 GETTABLE                         R26 R3 R1
      130 NEWTABLE                         R27 0 0
      132 SETTABLE                         R27 R26 R25
      133 GETUPVAL                         R26 0
      134 CALL                             R26 0 1
      135 JUMPIFNOT                        R26 ; [+8]
      136 GETUPVAL                         R26 1
      137 MOVE                             R27 R3
      138 MOVE                             R28 R1
      139 MOVE                             R29 R25
      140 MOVE                             R30 R2
      141 MOVE                             R31 R14
      142 CALL                             R26 5 0
      143 JUMP                             ; [+12]
      144 GETTABLE                         R28 R3 R1
      145 GETTABLE                         R27 R28 R25
      146 DUPTABLE                         R28 K16 [{"Index", "MeshName"}]
      147 SETTABLEKS                       R14 R28 K14 ["Index"]
      149 SETTABLEKS                       R2 R28 K15 ["MeshName"]
      151 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      153 GETIMPORT                        R26 K11 [table.insert]
      155 CALL                             R26 2 0
      156 GETTABLE                         R26 R3 R2
      157 JUMPIF                           R26 ; [+3]
      158 NEWTABLE                         R26 0 0
      160 SETTABLE                         R26 R3 R2
      161 GETTABLE                         R27 R3 R2
      162 GETTABLE                         R26 R27 R14
      163 JUMPIF                           R26 ; [+4]
      164 GETTABLE                         R26 R3 R2
      165 NEWTABLE                         R27 0 0
      167 SETTABLE                         R27 R26 R14
      168 GETUPVAL                         R26 0
      169 CALL                             R26 0 1
      170 JUMPIFNOT                        R26 ; [+8]
      171 GETUPVAL                         R26 1
      172 MOVE                             R27 R3
      173 MOVE                             R28 R2
      174 MOVE                             R29 R14
      175 MOVE                             R30 R1
      176 MOVE                             R31 R25
      177 CALL                             R26 5 0
      178 JUMP                             ; [+12]
      179 GETTABLE                         R28 R3 R2
      180 GETTABLE                         R27 R28 R14
      181 DUPTABLE                         R28 K16 [{"Index", "MeshName"}]
      182 SETTABLEKS                       R25 R28 K14 ["Index"]
      184 SETTABLEKS                       R1 R28 K15 ["MeshName"]
      186 FASTCALL2                        TABLE_INSERT R27 R28 ; [+3]
      188 GETIMPORT                        R26 K11 [table.insert]
      190 CALL                             R26 2 0
      191 FORGLOOP                         R21 2 ; [-75]
      193 FORGLOOP                         R11 2 ; [-112]
      195 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["instance"]
        8 LOADK                            R12 K1 ["MeshPart"]
        9 NAMECALL                         R10 R8 K2 ["IsA"]
       11 CALL                             R10 2 1
       12 JUMPIFNOT                        R10 ; [+2]
       13 MOVE                             R9 R8
       14 JUMP                             ; [+4]
       15 LOADK                            R11 K1 ["MeshPart"]
       16 NAMECALL                         R9 R8 K3 ["FindFirstAncestorOfClass"]
       18 CALL                             R9 2 1
       19 JUMPIFNOT                        R9 ; [+29]
       20 GETUPVAL                         R10 0
       21 MOVE                             R11 R0
       22 GETTABLEKS                       R12 R8 K4 ["Name"]
       24 GETTABLEKS                       R13 R8 K4 ["Name"]
       26 MOVE                             R14 R2
       27 CALL                             R10 4 0
       28 LOADK                            R12 K5 ["Motor6D"]
       29 NAMECALL                         R10 R9 K6 ["FindFirstChildOfClass"]
       31 CALL                             R10 2 1
       32 JUMPIFNOT                        R10 ; [+16]
       33 GETTABLEKS                       R11 R10 K7 ["Part0"]
       35 JUMPIFNOT                        R11 ; [+13]
       36 LOADK                            R14 K8 ["BaseWrap"]
       37 NAMECALL                         R12 R11 K9 ["FindFirstChildWhichIsA"]
       39 CALL                             R12 2 1
       40 JUMPIFNOT                        R12 ; [+8]
       41 GETUPVAL                         R13 0
       42 MOVE                             R14 R0
       43 GETTABLEKS                       R15 R8 K4 ["Name"]
       45 GETTABLEKS                       R16 R12 K4 ["Name"]
       47 MOVE                             R17 R2
       48 CALL                             R13 4 0
       49 FORGLOOP                         R3 2 ; [-44]
       51 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagAvatarPreviewerCageEditingTools"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 DUPCLOSURE                       R3 K9 [PROTO_1]
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 DUPCLOSURE                       R4 K10 [PROTO_2]
       20 CAPTURE                          VAL R3
       21 RETURN                           R4 1
