PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOT                        R5 ; [+10]
        5 MOVE                             R8 R4
        6 NAMECALL                         R6 R0 K0 ["IsA"]
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+5]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R7 R0 K1 ["ClassName"]
       13 SETTABLE                         R5 R6 R7
       14 RETURN                           R5 1
       15 FORGLOOP                         R1 2 ; [-12]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R2 R0 K1 ["ClassName"]
       20 LOADB                            R3 0
       21 SETTABLE                         R3 R1 R2
       22 LOADB                            R1 0
       23 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["ClassName"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOTEQKNIL                  R2 ; [+5]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 MOVE                             R2 R3
       10 LOADNIL                          R3
       11 JUMPIFNOTEQKS                    R2 K1 ["BasePart"] ; [+15]
       13 LOADB                            R3 1
       14 GETTABLEKS                       R4 R1 K2 ["PartSet"]
       16 GETTABLE                         R5 R4 R0
       17 JUMPIFNOT                        R5 ; [+1]
       18 RETURN                           R0 0
       19 LOADB                            R5 1
       20 SETTABLE                         R5 R4 R0
       21 GETTABLEKS                       R5 R1 K3 ["PartToRootMap"]
       23 SETTABLE                         R0 R5 R0
       24 SETTABLEKS                       R0 R1 K4 ["BasisObject"]
       26 JUMP                             ; [+33]
       27 JUMPIFNOTEQKS                    R2 K5 ["Model"] ; [+12]
       29 LOADB                            R3 1
       30 GETTABLEKS                       R4 R1 K6 ["ModelSet"]
       32 GETTABLE                         R5 R4 R0
       33 JUMPIFNOT                        R5 ; [+1]
       34 RETURN                           R0 0
       35 LOADB                            R5 1
       36 SETTABLE                         R5 R4 R0
       37 SETTABLEKS                       R0 R1 K4 ["BasisObject"]
       39 JUMP                             ; [+20]
       40 JUMPIFNOTEQKS                    R2 K7 ["Attachment"] ; [+6]
       42 GETTABLEKS                       R4 R1 K8 ["AttachmentSet"]
       44 LOADB                            R5 1
       45 SETTABLE                         R5 R4 R0
       46 JUMP                             ; [+13]
       47 JUMPIFNOTEQKS                    R2 K9 ["Bone"] ; [+6]
       49 GETTABLEKS                       R4 R1 K10 ["BoneSet"]
       51 LOADB                            R5 1
       52 SETTABLE                         R5 R4 R0
       53 JUMP                             ; [+6]
       54 JUMPIFNOTEQKS                    R2 K11 ["FaceInstance"] ; [+5]
       56 GETTABLEKS                       R4 R1 K12 ["FaceInstanceSet"]
       58 LOADB                            R5 1
       59 SETTABLE                         R5 R4 R0
       60 JUMPIFNOT                        R3 ; [+60]
       61 GETTABLEKS                       R4 R1 K6 ["ModelSet"]
       63 GETTABLEKS                       R5 R1 K2 ["PartSet"]
       65 GETTABLEKS                       R6 R1 K3 ["PartToRootMap"]
       67 LOADN                            R7 0
       68 NAMECALL                         R8 R0 K13 ["GetDescendants"]
       70 CALL                             R8 1 3
       71 FORGPREP                         R8
       72 GETUPVAL                         R14 0
       73 GETTABLEKS                       R15 R12 K0 ["ClassName"]
       75 GETTABLE                         R13 R14 R15
       76 JUMPIFNOTEQKNIL                  R13 ; [+5]
       78 GETUPVAL                         R14 1
       79 MOVE                             R15 R12
       80 CALL                             R14 1 1
       81 MOVE                             R13 R14
       82 JUMPIFNOTEQKS                    R13 K1 ["BasePart"] ; [+6]
       84 LOADB                            R14 1
       85 SETTABLE                         R14 R5 R12
       86 ADDK                             R7 R7 K14 [1]
       87 SETTABLE                         R0 R6 R12
       88 JUMP                             ; [+26]
       89 JUMPIFNOTEQKS                    R13 K5 ["Model"] ; [+5]
       91 LOADB                            R14 1
       92 SETTABLE                         R14 R4 R12
       93 ADDK                             R7 R7 K14 [1]
       94 JUMP                             ; [+20]
       95 JUMPIFNOTEQKS                    R13 K7 ["Attachment"] ; [+6]
       97 GETTABLEKS                       R14 R1 K8 ["AttachmentSet"]
       99 LOADB                            R15 1
      100 SETTABLE                         R15 R14 R12
      101 JUMP                             ; [+13]
      102 JUMPIFNOTEQKS                    R13 K9 ["Bone"] ; [+6]
      104 GETTABLEKS                       R14 R1 K10 ["BoneSet"]
      106 LOADB                            R15 1
      107 SETTABLE                         R15 R14 R12
      108 JUMP                             ; [+6]
      109 JUMPIFNOTEQKS                    R13 K11 ["FaceInstance"] ; [+5]
      111 GETTABLEKS                       R14 R1 K12 ["FaceInstanceSet"]
      113 LOADB                            R15 1
      114 SETTABLE                         R15 R14 R12
      115 FORGLOOP                         R8 2 ; [-44]
      117 GETTABLEKS                       R8 R1 K15 ["RootToDescendantCountMap"]
      119 SETTABLE                         R7 R8 R0
      120 RETURN                           R0 0
      121 NAMECALL                         R4 R0 K16 ["GetChildren"]
      123 CALL                             R4 1 3
      124 FORGPREP                         R4
      125 GETUPVAL                         R9 2
      126 MOVE                             R10 R8
      127 MOVE                             R11 R1
      128 CALL                             R9 2 0
      129 FORGLOOP                         R4 2 ; [-5]
      131 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K8 [{"RootToDescendantCountMap", "PartToRootMap", "PartSet", "ModelSet", "AttachmentSet", "BoneSet", "FaceInstanceSet", "BasisObject"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["RootToDescendantCountMap"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["PartToRootMap"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["PartSet"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["ModelSet"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K4 ["AttachmentSet"]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K5 ["BoneSet"]
       25 NEWTABLE                         R2 0 0
       27 SETTABLEKS                       R2 R1 K6 ["FaceInstanceSet"]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R1 K7 ["BasisObject"]
       32 MOVE                             R2 R0
       33 LOADNIL                          R3
       34 LOADNIL                          R4
       35 FORGPREP                         R2
       36 GETUPVAL                         R7 0
       37 MOVE                             R8 R6
       38 MOVE                             R9 R1
       39 CALL                             R7 2 0
       40 FORGLOOP                         R2 2 ; [-5]
       42 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R5
       10 GETIMPORT                        R7 K2 [table.insert]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 1 ; [-8]
       15 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R3 R0 K0 ["Inverse"]
        2 CALL                             R3 1 1
        3 LOADK                            R4 K1 [∞]
        4 LOADK                            R5 K2 [-∞]
        5 LOADK                            R6 K1 [∞]
        6 LOADK                            R7 K2 [-∞]
        7 LOADK                            R8 K1 [∞]
        8 LOADK                            R9 K2 [-∞]
        9 GETUPVAL                         R11 0
       10 GETTABLEKS                       R10 R11 K3 ["Terrain"]
       12 GETIMPORT                        R11 K5 [ipairs]
       14 MOVE                             R12 R1
       15 CALL                             R11 1 3
       16 FORGPREP_INEXT                   R11
       17 JUMPIFEQ                         R15 R10 ; [+125]
       19 LOADNIL                          R16
       20 LOADNIL                          R17
       21 GETTABLEKS                       R16 R15 K6 ["CFrame"]
       23 GETTABLEKS                       R17 R15 K7 ["Size"]
       25 GETTABLEKS                       R18 R17 K8 ["X"]
       27 GETTABLEKS                       R19 R17 K9 ["Y"]
       29 GETTABLEKS                       R20 R17 K10 ["Z"]
       31 MUL                              R21 R3 R16
       32 NAMECALL                         R22 R21 K11 ["components"]
       34 CALL                             R22 1 12
       35 MUL                              R38 R18 R25
       36 FASTCALL1                        MATH_ABS R38 ; [+2]
       37 GETIMPORT                        R37 K15 [math.abs]
       39 CALL                             R37 1 1
       40 MUL                              R39 R19 R26
       41 FASTCALL1                        MATH_ABS R39 ; [+2]
       42 GETIMPORT                        R38 K15 [math.abs]
       44 CALL                             R38 1 1
       45 ADD                              R36 R37 R38
       46 MUL                              R38 R20 R27
       47 FASTCALL1                        MATH_ABS R38 ; [+2]
       48 GETIMPORT                        R37 K15 [math.abs]
       50 CALL                             R37 1 1
       51 ADD                              R35 R36 R37
       52 MULK                             R34 R35 K12 [0.5]
       53 MUL                              R39 R18 R28
       54 FASTCALL1                        MATH_ABS R39 ; [+2]
       55 GETIMPORT                        R38 K15 [math.abs]
       57 CALL                             R38 1 1
       58 MUL                              R40 R19 R29
       59 FASTCALL1                        MATH_ABS R40 ; [+2]
       60 GETIMPORT                        R39 K15 [math.abs]
       62 CALL                             R39 1 1
       63 ADD                              R37 R38 R39
       64 MUL                              R39 R20 R30
       65 FASTCALL1                        MATH_ABS R39 ; [+2]
       66 GETIMPORT                        R38 K15 [math.abs]
       68 CALL                             R38 1 1
       69 ADD                              R36 R37 R38
       70 MULK                             R35 R36 K12 [0.5]
       71 MUL                              R40 R18 R31
       72 FASTCALL1                        MATH_ABS R40 ; [+2]
       73 GETIMPORT                        R39 K15 [math.abs]
       75 CALL                             R39 1 1
       76 MUL                              R41 R19 R32
       77 FASTCALL1                        MATH_ABS R41 ; [+2]
       78 GETIMPORT                        R40 K15 [math.abs]
       80 CALL                             R40 1 1
       81 ADD                              R38 R39 R40
       82 MUL                              R40 R20 R33
       83 FASTCALL1                        MATH_ABS R40 ; [+2]
       84 GETIMPORT                        R39 K15 [math.abs]
       86 CALL                             R39 1 1
       87 ADD                              R37 R38 R39
       88 MULK                             R36 R37 K12 [0.5]
       89 GETTABLEKS                       R37 R21 K8 ["X"]
       91 GETTABLEKS                       R38 R21 K9 ["Y"]
       93 GETTABLEKS                       R39 R21 K10 ["Z"]
       95 SUB                              R42 R37 R34
       96 FASTCALL2                        MATH_MIN R4 R42 ; [+4]
       98 MOVE                             R41 R4
       99 GETIMPORT                        R40 K17 [math.min]
      101 CALL                             R40 2 1
      102 MOVE                             R4 R40
      103 ADD                              R42 R37 R34
      104 FASTCALL2                        MATH_MAX R5 R42 ; [+4]
      106 MOVE                             R41 R5
      107 GETIMPORT                        R40 K19 [math.max]
      109 CALL                             R40 2 1
      110 MOVE                             R5 R40
      111 SUB                              R42 R38 R35
      112 FASTCALL2                        MATH_MIN R6 R42 ; [+4]
      114 MOVE                             R41 R6
      115 GETIMPORT                        R40 K17 [math.min]
      117 CALL                             R40 2 1
      118 MOVE                             R6 R40
      119 ADD                              R42 R38 R35
      120 FASTCALL2                        MATH_MAX R7 R42 ; [+4]
      122 MOVE                             R41 R7
      123 GETIMPORT                        R40 K19 [math.max]
      125 CALL                             R40 2 1
      126 MOVE                             R7 R40
      127 SUB                              R42 R39 R36
      128 FASTCALL2                        MATH_MIN R8 R42 ; [+4]
      130 MOVE                             R41 R8
      131 GETIMPORT                        R40 K17 [math.min]
      133 CALL                             R40 2 1
      134 MOVE                             R8 R40
      135 ADD                              R42 R39 R36
      136 FASTCALL2                        MATH_MAX R9 R42 ; [+4]
      138 MOVE                             R41 R9
      139 GETIMPORT                        R40 K19 [math.max]
      141 CALL                             R40 2 1
      142 MOVE                             R9 R40
      143 FORGLOOP                         R11 2 [inext] ; [-127]
      145 GETIMPORT                        R11 K5 [ipairs]
      147 MOVE                             R12 R2
      148 CALL                             R11 1 3
      149 FORGPREP_INEXT                   R11
      150 GETTABLEKS                       R18 R15 K20 ["WorldPosition"]
      152 NAMECALL                         R16 R0 K21 ["PointToObjectSpace"]
      154 CALL                             R16 2 1
      155 GETTABLEKS                       R17 R16 K8 ["X"]
      157 GETTABLEKS                       R18 R16 K9 ["Y"]
      159 GETTABLEKS                       R19 R16 K10 ["Z"]
      161 FASTCALL2                        MATH_MIN R4 R17 ; [+5]
      163 MOVE                             R21 R4
      164 MOVE                             R22 R17
      165 GETIMPORT                        R20 K17 [math.min]
      167 CALL                             R20 2 1
      168 MOVE                             R4 R20
      169 FASTCALL2                        MATH_MAX R5 R17 ; [+5]
      171 MOVE                             R21 R5
      172 MOVE                             R22 R17
      173 GETIMPORT                        R20 K19 [math.max]
      175 CALL                             R20 2 1
      176 MOVE                             R5 R20
      177 FASTCALL2                        MATH_MIN R6 R18 ; [+5]
      179 MOVE                             R21 R6
      180 MOVE                             R22 R18
      181 GETIMPORT                        R20 K17 [math.min]
      183 CALL                             R20 2 1
      184 MOVE                             R6 R20
      185 FASTCALL2                        MATH_MAX R7 R18 ; [+5]
      187 MOVE                             R21 R7
      188 MOVE                             R22 R18
      189 GETIMPORT                        R20 K19 [math.max]
      191 CALL                             R20 2 1
      192 MOVE                             R7 R20
      193 FASTCALL2                        MATH_MIN R8 R19 ; [+5]
      195 MOVE                             R21 R8
      196 MOVE                             R22 R19
      197 GETIMPORT                        R20 K17 [math.min]
      199 CALL                             R20 2 1
      200 MOVE                             R8 R20
      201 FASTCALL2                        MATH_MAX R9 R19 ; [+5]
      203 MOVE                             R21 R9
      204 MOVE                             R22 R19
      205 GETIMPORT                        R20 K19 [math.max]
      207 CALL                             R20 2 1
      208 MOVE                             R9 R20
      209 FORGLOOP                         R11 2 [inext] ; [-60]
      211 LOADK                            R13 K12 [0.5]
      212 ADD                              R14 R4 R5
      213 MUL                              R12 R13 R14
      214 LOADK                            R14 K12 [0.5]
      215 ADD                              R15 R6 R7
      216 MUL                              R13 R14 R15
      217 LOADK                            R15 K12 [0.5]
      218 ADD                              R16 R8 R9
      219 MUL                              R14 R15 R16
      220 FASTCALL                         VECTOR ; [+2]
      221 GETIMPORT                        R11 K24 [Vector3.new]
      223 CALL                             R11 3 1
      224 SUB                              R13 R5 R4
      225 SUB                              R14 R7 R6
      226 SUB                              R15 R9 R8
      227 FASTCALL                         VECTOR ; [+2]
      228 GETIMPORT                        R12 K24 [Vector3.new]
      230 CALL                             R12 3 1
      231 RETURN                           R11 2

PROTO_5:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+7]
        7 NEWTABLE                         R2 0 1
        9 MOVE                             R3 R0
       10 SETLIST                          R2 R3 1 [1]
       12 MOVE                             R0 R2
       13 FASTCALL1                        TYPE R0 ; [+3]
       14 MOVE                             R5 R0
       15 GETIMPORT                        R4 K1 [type]
       17 CALL                             R4 1 1
       18 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       24 LOADK                            R4 K3 ["Failed to convert selectedObjects to table"]
       25 GETIMPORT                        R2 K5 [assert]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 0
       29 MOVE                             R3 R0
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R3 R2 K6 ["PartSet"]
       33 NEWTABLE                         R5 0 0
       35 MOVE                             R6 R3
       36 LOADNIL                          R7
       37 LOADNIL                          R8
       38 FORGPREP                         R6
       39 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       41 MOVE                             R12 R5
       42 MOVE                             R13 R9
       43 GETIMPORT                        R11 K8 [table.insert]
       45 CALL                             R11 2 0
       46 FORGLOOP                         R6 1 ; [-8]
       48 MOVE                             R4 R5
       49 GETUPVAL                         R5 1
       50 MOVE                             R6 R1
       51 JUMPIF                           R6 ; [+3]
       52 GETIMPORT                        R6 K11 [CFrame.new]
       54 CALL                             R6 0 1
       55 MOVE                             R7 R4
       56 NEWTABLE                         R8 0 0
       58 CALL                             R5 3 2
       59 JUMPIFNOT                        R5 ; [+6]
       60 JUMPIFNOT                        R6 ; [+5]
       61 JUMPIFNOTEQ                      R5 R5 ; [+4]
       63 JUMPIFNOTEQ                      R6 R6 ; [+2]
       65 RETURN                           R5 2
       66 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETIMPORT                        R7 K1 [pairs]
        8 GETUPVAL                         R10 0
        9 GETTABLEKS                       R8 R10 K2 ["chatBulletMap"]
       11 CALL                             R7 1 3
       12 FORGPREP_NEXT                    R7
       13 LENGTH                           R12 R11
       14 LOADN                            R13 1
       15 JUMPIFNOTLT                      R13 R12 ; [+19]
       17 LOADK                            R15 K3 ["<a id=\"%*\"/>.-</a>"]
       18 MOVE                             R17 R10
       19 NAMECALL                         R15 R15 K4 ["format"]
       21 CALL                             R15 2 1
       22 MOVE                             R14 R15
       23 LOADK                            R16 K5 ["<a id=\"%*\"/> x%*</a>"]
       24 MOVE                             R18 R10
       25 LENGTH                           R19 R11
       26 NAMECALL                         R16 R16 K4 ["format"]
       28 CALL                             R16 3 1
       29 MOVE                             R15 R16
       30 NAMECALL                         R12 R6 K6 ["gsub"]
       32 CALL                             R12 3 1
       33 MOVE                             R6 R12
       34 JUMP                             ; [+21]
       35 LENGTH                           R12 R11
       36 JUMPIFNOTEQKN                    R12 K7 [0] ; [+19]
       38 GETUPVAL                         R12 1
       39 JUMPIFNOT                        R12 ; [+16]
       40 LOADK                            R15 K8 ["<span id=\"%*\">(.-)</span>"]
       41 MOVE                             R17 R10
       42 NAMECALL                         R15 R15 K4 ["format"]
       44 CALL                             R15 2 1
       45 MOVE                             R14 R15
       46 LOADK                            R16 K9 ["<span id=\"%*\" style=\"color:#646464\">%%1</span>"]
       47 MOVE                             R18 R10
       48 NAMECALL                         R16 R16 K4 ["format"]
       50 CALL                             R16 2 1
       51 MOVE                             R15 R16
       52 NAMECALL                         R12 R6 K6 ["gsub"]
       54 CALL                             R12 3 1
       55 MOVE                             R6 R12
       56 FORGLOOP                         R7 2 ; [-44]
       58 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       60 MOVE                             R8 R1
       61 MOVE                             R9 R6
       62 GETIMPORT                        R7 K12 [table.insert]
       64 CALL                             R7 2 0
       65 FORGLOOP                         R2 2 ; [-60]
       67 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 2
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 JUMPIFNOT                        R0 ; [+13]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 LOADNIL                          R3
       10 SETTABLE                         R3 R1 R2
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R2 1
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R1 R2
       15 GETUPVAL                         R1 4
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R3 R0 K0 ["isFinal"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLE                         R1 R2 R3
        4 JUMPIF                           R1 ; [+5]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 1
        7 LOADNIL                          R3
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R0 0
       10 GETIMPORT                        R1 K2 [task.delay]
       12 LOADK                            R2 K3 [0.25]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U4
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K1 [{"isFinal"}]
        5 SETTABLEKS                       R1 R3 K0 ["isFinal"]
        7 SETTABLE                         R3 R2 R0
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 0
       10 LOADB                            R3 1
       11 SETTABLE                         R3 R2 R0
       12 GETUPVAL                         R2 2
       13 LOADK                            R4 K2 ["TransformContent"]
       14 DUPTABLE                         R5 K6 [{"requestId", "transformFunction", "completeCallback"}]
       15 SETTABLEKS                       R0 R5 K3 ["requestId"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R6 R5 K4 ["transformFunction"]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 SETTABLEKS                       R6 R5 K5 ["completeCallback"]
       30 NAMECALL                         R2 R2 K7 ["DisplayContent"]
       32 CALL                             R2 3 0
       33 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 GETTABLEKS                       R3 R0 K1 ["LookVector"]
        4 GETTABLEKS                       R2 R3 K2 ["Unit"]
        6 GETTABLEKS                       R3 R1 K3 ["Y"]
        8 MULK                             R5 R3 K4 [3]
        9 FASTCALL2K                       MATH_MAX R5 K5 ; [+4]
       11 LOADK                            R6 K5 [50]
       12 GETIMPORT                        R4 K8 [math.max]
       14 CALL                             R4 2 1
       15 MUL                              R7 R3 R3
       16 MUL                              R8 R4 R4
       17 ADD                              R6 R7 R8
       18 FASTCALL1                        MATH_SQRT R6 ; [+2]
       19 GETIMPORT                        R5 K10 [math.sqrt]
       21 CALL                             R5 1 1
       22 NEWTABLE                         R6 0 0
       24 GETIMPORT                        R8 K12 [workspace]
       26 GETTABLEKS                       R7 R8 K13 ["Terrain"]
       28 JUMPIFNOT                        R7 ; [+13]
       29 NAMECALL                         R8 R7 K14 ["CountCells"]
       31 CALL                             R8 1 1
       32 LOADN                            R9 0
       33 JUMPIFNOTLT                      R9 R8 ; [+8]
       35 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
       37 MOVE                             R9 R6
       38 MOVE                             R10 R7
       39 GETIMPORT                        R8 K17 [table.insert]
       41 CALL                             R8 2 0
       42 GETIMPORT                        R8 K12 [workspace]
       44 LOADK                            R10 K18 ["Baseplate"]
       45 NAMECALL                         R8 R8 K19 ["FindFirstChild"]
       47 CALL                             R8 2 1
       48 JUMPIFNOT                        R8 ; [+7]
       49 FASTCALL2                        TABLE_INSERT R6 R8 ; [+5]
       51 MOVE                             R10 R6
       52 MOVE                             R11 R8
       53 GETIMPORT                        R9 K17 [table.insert]
       55 CALL                             R9 2 0
       56 LENGTH                           R9 R6
       57 LOADN                            R10 0
       58 JUMPIFNOTLT                      R10 R9 ; [+59]
       60 GETIMPORT                        R9 K22 [RaycastParams.new]
       62 CALL                             R9 0 1
       63 SETTABLEKS                       R6 R9 K23 ["FilterDescendantsInstances"]
       65 GETIMPORT                        R10 K27 [Enum.RaycastFilterType.Include]
       67 SETTABLEKS                       R10 R9 K28 ["FilterType"]
       69 LOADB                            R10 1
       70 SETTABLEKS                       R10 R9 K29 ["IgnoreWater"]
       72 GETIMPORT                        R10 K12 [workspace]
       74 MOVE                             R12 R1
       75 MUL                              R13 R2 R5
       76 MOVE                             R14 R9
       77 NAMECALL                         R10 R10 K30 ["Raycast"]
       79 CALL                             R10 4 1
       80 JUMPIFNOT                        R10 ; [+4]
       81 GETTABLEKS                       R11 R10 K0 ["Position"]
       83 LOADNIL                          R12
       84 RETURN                           R11 2
       85 GETIMPORT                        R11 K12 [workspace]
       87 MUL                              R14 R2 R4
       88 ADD                              R13 R1 R14
       89 LOADK                            R15 K31 [{0, -1, 0}]
       90 MUL                              R14 R15 R4
       91 MOVE                             R15 R9
       92 NAMECALL                         R11 R11 K30 ["Raycast"]
       94 CALL                             R11 4 1
       95 MOVE                             R10 R11
       96 JUMPIFNOT                        R10 ; [+4]
       97 GETTABLEKS                       R11 R10 K0 ["Position"]
       99 LOADNIL                          R12
      100 RETURN                           R11 2
      101 GETIMPORT                        R11 K12 [workspace]
      103 MUL                              R14 R2 R4
      104 ADD                              R13 R1 R14
      105 LOADK                            R15 K32 [{0, 1, 0}]
      106 MUL                              R14 R15 R4
      107 MOVE                             R15 R9
      108 NAMECALL                         R11 R11 K30 ["Raycast"]
      110 CALL                             R11 4 1
      111 MOVE                             R10 R11
      112 JUMPIFNOT                        R10 ; [+53]
      113 GETTABLEKS                       R11 R10 K0 ["Position"]
      115 LOADNIL                          R12
      116 RETURN                           R11 2
      117 JUMP                             ; [+48]
      118 LOADK                            R11 K31 [{0, -1, 0}]
      119 NAMECALL                         R9 R2 K33 ["Dot"]
      121 CALL                             R9 2 1
      122 LOADN                            R10 0
      123 JUMPIFNOTLT                      R10 R9 ; [+42]
      125 LOADN                            R10 1
      126 JUMPIFNOTLT                      R9 R10 ; [+39]
      128 GETTABLEKS                       R10 R1 K3 ["Y"]
      130 LOADN                            R11 0
      131 JUMPIFNOTLT                      R11 R10 ; [+34]
      133 DIV                              R10 R3 R9
      134 GETTABLEKS                       R12 R1 K34 ["X"]
      136 LOADN                            R13 0
      137 GETTABLEKS                       R14 R1 K35 ["Z"]
      139 FASTCALL                         VECTOR ; [+2]
      140 GETIMPORT                        R11 K37 [Vector3.new]
      142 CALL                             R11 3 1
      143 MUL                              R13 R10 R2
      144 ADD                              R12 R13 R1
      145 JUMPIFNOTLT                      R10 R5 ; [+5]
      147 MOVE                             R13 R12
      148 GETTABLEKS                       R14 R12 K3 ["Y"]
      150 RETURN                           R13 2
      151 GETTABLEKS                       R17 R2 K34 ["X"]
      153 LOADN                            R18 0
      154 GETTABLEKS                       R19 R2 K35 ["Z"]
      156 FASTCALL                         VECTOR ; [+2]
      157 GETIMPORT                        R16 K37 [Vector3.new]
      159 CALL                             R16 3 1
      160 GETTABLEKS                       R15 R16 K2 ["Unit"]
      162 MUL                              R14 R15 R4
      163 ADD                              R13 R14 R11
      164 LOADN                            R14 0
      165 RETURN                           R13 2
      166 MUL                              R10 R2 R4
      167 ADD                              R9 R1 R10
      168 MOVE                             R10 R9
      169 GETTABLEKS                       R11 R9 K3 ["Y"]
      171 RETURN                           R10 2

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["getCurrentLookingCFrame should only be called when FFlagFixCurrentCameraPlacement is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETIMPORT                        R1 K4 [workspace]
       10 GETTABLEKS                       R0 R1 K5 ["CurrentCamera"]
       12 GETTABLEKS                       R1 R0 K6 ["CFrame"]
       14 GETTABLEKS                       R2 R1 K7 ["Position"]
       16 GETUPVAL                         R3 1
       17 MOVE                             R4 R1
       18 CALL                             R3 1 2
       19 GETTABLEKS                       R8 R0 K8 ["ViewportSize"]
       21 GETTABLEKS                       R7 R8 K9 ["X"]
       23 GETTABLEKS                       R9 R0 K8 ["ViewportSize"]
       25 GETTABLEKS                       R8 R9 K10 ["Y"]
       27 NAMECALL                         R5 R0 K11 ["ViewportPointToRay"]
       29 CALL                             R5 3 1
       30 GETTABLEKS                       R9 R5 K12 ["Origin"]
       32 SUB                              R8 R9 R3
       33 LOADK                            R10 K13 [{0, 1, 0}]
       34 NAMECALL                         R8 R8 K14 ["Dot"]
       36 CALL                             R8 2 1
       37 MINUS                            R7 R8
       38 GETTABLEKS                       R8 R5 K15 ["Direction"]
       40 LOADK                            R10 K13 [{0, 1, 0}]
       41 NAMECALL                         R8 R8 K14 ["Dot"]
       43 CALL                             R8 2 1
       44 DIV                              R6 R7 R8
       45 GETTABLEKS                       R8 R5 K12 ["Origin"]
       47 GETTABLEKS                       R10 R5 K15 ["Direction"]
       49 MUL                              R9 R10 R6
       50 ADD                              R7 R8 R9
       51 GETTABLEKS                       R9 R7 K9 ["X"]
       53 GETTABLEKS                       R10 R3 K10 ["Y"]
       55 GETTABLEKS                       R11 R7 K16 ["Z"]
       57 FASTCALL                         VECTOR ; [+2]
       58 GETIMPORT                        R8 K19 [Vector3.new]
       60 CALL                             R8 3 1
       61 MOVE                             R7 R8
       62 GETTABLEKS                       R9 R2 K9 ["X"]
       64 GETTABLEKS                       R10 R3 K10 ["Y"]
       66 GETTABLEKS                       R11 R2 K16 ["Z"]
       68 FASTCALL                         VECTOR ; [+2]
       69 GETIMPORT                        R8 K19 [Vector3.new]
       71 CALL                             R8 3 1
       72 SUB                              R9 R3 R8
       73 GETIMPORT                        R10 K20 [CFrame.new]
       75 MOVE                             R11 R3
       76 ADD                              R12 R3 R9
       77 CALL                             R10 2 1
       78 GETIMPORT                        R15 K20 [CFrame.new]
       80 MOVE                             R16 R7
       81 CALL                             R15 1 -1
       82 NAMECALL                         R13 R10 K22 ["ToObjectSpace"]
       84 CALL                             R13 -1 1
       85 GETTABLEKS                       R12 R13 K7 ["Position"]
       87 MULK                             R11 R12 K21 [2]
       88 GETTABLEKS                       R12 R11 K9 ["X"]
       90 GETTABLEKS                       R13 R11 K16 ["Z"]
       92 DIV                              R14 R12 R13
       93 GETUPVAL                         R16 2
       94 CALL                             R16 0 1
       95 MULK                             R15 R16 K23 [0.01]
       96 LOADN                            R16 0
       97 JUMPIFNOTLT                      R16 R15 ; [+26]
       99 JUMPIFNOTLT                      R15 R14 ; [+3]
      101 MUL                              R12 R13 R15
      102 JUMP                             ; [+21]
      103 DIVRK                            R16 R24 K15 ["Direction"]
      104 JUMPIFNOTLT                      R14 R16 ; [+19]
      106 MOVE                             R16 R13
      107 MUL                              R13 R12 R15
      108 LOADN                            R18 0
      109 LOADN                            R19 0
      110 SUB                              R21 R16 R13
      111 MULK                             R20 R21 K25 [0.5]
      112 FASTCALL                         VECTOR ; [+2]
      113 GETIMPORT                        R17 K19 [Vector3.new]
      115 CALL                             R17 3 1
      116 GETIMPORT                        R20 K20 [CFrame.new]
      118 MOVE                             R21 R17
      119 CALL                             R20 1 -1
      120 NAMECALL                         R18 R10 K26 ["ToWorldSpace"]
      122 CALL                             R18 -1 1
      123 MOVE                             R10 R18
      124 MOVE                             R16 R10
      125 MOVE                             R17 R4
      126 MOVE                             R18 R1
      127 MOVE                             R19 R12
      128 MOVE                             R20 R13
      129 RETURN                           R16 5

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetRequestMetadata"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["RequestCFrame"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+8]
        7 MOVE                             R2 R1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["GetRequestMetadata"]
       11 MOVE                             R4 R0
       12 LOADK                            R5 K2 ["PlacementForcedY"]
       13 CALL                             R3 2 -1
       14 RETURN                           R2 -1
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 GETUPVAL                         R7 1
       21 CALL                             R7 0 1
       22 JUMPIFNOT                        R7 ; [+10]
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R7 R8 K3 ["getCurrentLookingCFrame"]
       26 CALL                             R7 0 5
       27 MOVE                             R2 R7
       28 MOVE                             R3 R8
       29 MOVE                             R4 R9
       30 MOVE                             R5 R10
       31 MOVE                             R6 R11
       32 JUMP                             ; [+120]
       33 GETIMPORT                        R8 K5 [workspace]
       35 GETTABLEKS                       R7 R8 K6 ["CurrentCamera"]
       37 GETTABLEKS                       R4 R7 K7 ["CFrame"]
       39 GETTABLEKS                       R8 R4 K8 ["Position"]
       41 LOADNIL                          R9
       42 GETUPVAL                         R10 3
       43 MOVE                             R11 R4
       44 CALL                             R10 1 2
       45 MOVE                             R9 R10
       46 MOVE                             R3 R11
       47 GETTABLEKS                       R13 R7 K9 ["ViewportSize"]
       49 GETTABLEKS                       R12 R13 K10 ["X"]
       51 GETTABLEKS                       R14 R7 K9 ["ViewportSize"]
       53 GETTABLEKS                       R13 R14 K11 ["Y"]
       55 NAMECALL                         R10 R7 K12 ["ViewportPointToRay"]
       57 CALL                             R10 3 1
       58 GETTABLEKS                       R14 R10 K13 ["Origin"]
       60 SUB                              R13 R14 R9
       61 LOADK                            R15 K14 [{0, 1, 0}]
       62 NAMECALL                         R13 R13 K15 ["Dot"]
       64 CALL                             R13 2 1
       65 MINUS                            R12 R13
       66 GETTABLEKS                       R13 R10 K16 ["Direction"]
       68 LOADK                            R15 K14 [{0, 1, 0}]
       69 NAMECALL                         R13 R13 K15 ["Dot"]
       71 CALL                             R13 2 1
       72 DIV                              R11 R12 R13
       73 GETTABLEKS                       R13 R10 K13 ["Origin"]
       75 GETTABLEKS                       R15 R10 K16 ["Direction"]
       77 MUL                              R14 R15 R11
       78 ADD                              R12 R13 R14
       79 GETTABLEKS                       R14 R12 K10 ["X"]
       81 GETTABLEKS                       R15 R9 K11 ["Y"]
       83 GETTABLEKS                       R16 R12 K17 ["Z"]
       85 FASTCALL                         VECTOR ; [+2]
       86 GETIMPORT                        R13 K20 [Vector3.new]
       88 CALL                             R13 3 1
       89 MOVE                             R12 R13
       90 GETTABLEKS                       R14 R8 K10 ["X"]
       92 GETTABLEKS                       R15 R9 K11 ["Y"]
       94 GETTABLEKS                       R16 R8 K17 ["Z"]
       96 FASTCALL                         VECTOR ; [+2]
       97 GETIMPORT                        R13 K20 [Vector3.new]
       99 CALL                             R13 3 1
      100 SUB                              R14 R9 R13
      101 GETIMPORT                        R15 K21 [CFrame.new]
      103 MOVE                             R16 R9
      104 ADD                              R17 R9 R14
      105 CALL                             R15 2 1
      106 MOVE                             R2 R15
      107 GETIMPORT                        R19 K21 [CFrame.new]
      109 MOVE                             R20 R12
      110 CALL                             R19 1 -1
      111 NAMECALL                         R17 R2 K23 ["ToObjectSpace"]
      113 CALL                             R17 -1 1
      114 GETTABLEKS                       R16 R17 K8 ["Position"]
      116 MULK                             R15 R16 K22 [2]
      117 GETTABLEKS                       R5 R15 K10 ["X"]
      119 GETTABLEKS                       R6 R15 K17 ["Z"]
      121 DIV                              R16 R5 R6
      122 GETUPVAL                         R18 4
      123 CALL                             R18 0 1
      124 MULK                             R17 R18 K24 [0.01]
      125 LOADN                            R18 0
      126 JUMPIFNOTLT                      R18 R17 ; [+26]
      128 JUMPIFNOTLT                      R17 R16 ; [+3]
      130 MUL                              R5 R6 R17
      131 JUMP                             ; [+21]
      132 DIVRK                            R18 R25 K17 ["Z"]
      133 JUMPIFNOTLT                      R16 R18 ; [+19]
      135 MOVE                             R18 R6
      136 MUL                              R6 R5 R17
      137 LOADN                            R20 0
      138 LOADN                            R21 0
      139 SUB                              R23 R18 R6
      140 MULK                             R22 R23 K26 [0.5]
      141 FASTCALL                         VECTOR ; [+2]
      142 GETIMPORT                        R19 K20 [Vector3.new]
      144 CALL                             R19 3 1
      145 GETIMPORT                        R22 K21 [CFrame.new]
      147 MOVE                             R23 R19
      148 CALL                             R22 1 -1
      149 NAMECALL                         R20 R2 K27 ["ToWorldSpace"]
      151 CALL                             R20 -1 1
      152 MOVE                             R2 R20
      153 FASTCALL1                        MATH_CEIL R5 ; [+3]
      154 MOVE                             R9 R5
      155 GETIMPORT                        R8 K30 [math.ceil]
      157 CALL                             R8 1 1
      158 LOADN                            R9 0
      159 FASTCALL1                        MATH_CEIL R6 ; [+3]
      160 MOVE                             R11 R6
      161 GETIMPORT                        R10 K30 [math.ceil]
      163 CALL                             R10 1 1
      164 FASTCALL                         VECTOR ; [+2]
      165 GETIMPORT                        R7 K20 [Vector3.new]
      167 CALL                             R7 3 1
      168 GETUPVAL                         R9 0
      169 GETTABLEKS                       R8 R9 K31 ["SetRequestMetadata"]
      171 MOVE                             R9 R0
      172 LOADK                            R10 K1 ["RequestCFrame"]
      173 MOVE                             R11 R2
      174 CALL                             R8 3 0
      175 GETUPVAL                         R9 0
      176 GETTABLEKS                       R8 R9 K31 ["SetRequestMetadata"]
      178 MOVE                             R9 R0
      179 LOADK                            R10 K32 ["CameraCFrame"]
      180 MOVE                             R11 R4
      181 CALL                             R8 3 0
      182 GETUPVAL                         R9 0
      183 GETTABLEKS                       R8 R9 K31 ["SetRequestMetadata"]
      185 MOVE                             R9 R0
      186 LOADK                            R10 K33 ["PlacementSize"]
      187 MOVE                             R11 R7
      188 CALL                             R8 3 0
      189 GETUPVAL                         R9 0
      190 GETTABLEKS                       R8 R9 K31 ["SetRequestMetadata"]
      192 MOVE                             R9 R0
      193 LOADK                            R10 K2 ["PlacementForcedY"]
      194 MOVE                             R11 R3
      195 CALL                             R8 3 0
      196 RETURN                           R2 2

PROTO_13:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%x"]
        3 NAMECALL                         R3 R0 K4 ["byte"]
        5 CALL                             R3 1 -1
        6 CALL                             R1 -1 -1
        7 RETURN                           R1 -1

PROTO_14:
        0 LOADK                            R3 K0 ["."]
        1 DUPCLOSURE                       R4 K1 [PROTO_13]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["getChatBulletId should only be called when FFlagConvAIFixOnlyInsertFirstVariation is enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 LOADK                            R3 K3 ["a"]
        9 GETGLOBAL                        R4 K4 ["toHexy"]
       11 MOVE                             R6 R0
       12 MOVE                             R7 R1
       13 CONCAT                           R5 R6 R7
       14 CALL                             R4 1 1
       15 CONCAT                           R2 R3 R4
       16 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_17:
        0 JUMPIFNOT                        R3 ; [+19]
        1 GETUPVAL                         R5 0
        2 CALL                             R5 0 1
        3 JUMPIFNOT                        R5 ; [+8]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["getChatBulletId"]
        7 MOVE                             R6 R0
        8 MOVE                             R7 R3
        9 CALL                             R5 2 1
       10 MOVE                             R3 R5
       11 JUMP                             ; [+8]
       12 LOADK                            R5 K1 ["a"]
       13 GETGLOBAL                        R6 K2 ["toHexy"]
       15 MOVE                             R8 R0
       16 MOVE                             R9 R3
       17 CONCAT                           R7 R8 R9
       18 CALL                             R6 1 1
       19 CONCAT                           R3 R5 R6
       20 MOVE                             R5 R4
       21 JUMPIF                           R5 ; [+2]
       22 NEWTABLE                         R5 0 0
       24 MOVE                             R4 R5
       25 NAMECALL                         R5 R1 K3 ["GetDebugId"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R6 R4 K4 ["guid"]
       30 JUMPIFNOT                        R6 ; [+25]
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R7 R8 K5 ["altDataMap"]
       34 GETTABLEKS                       R8 R4 K4 ["guid"]
       36 GETTABLE                         R6 R7 R8
       37 GETTABLEKS                       R7 R4 K6 ["assetId"]
       39 SETTABLEKS                       R7 R6 K6 ["assetId"]
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R7 R8 K7 ["guidToInfo"]
       44 GETTABLEKS                       R8 R4 K4 ["guid"]
       46 GETTABLE                         R6 R7 R8
       47 SETTABLEKS                       R1 R6 K8 ["instance"]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R6 R7 K9 ["g2g"]
       52 GETTABLEKS                       R7 R4 K4 ["guid"]
       54 SETTABLE                         R7 R6 R5
       55 RETURN                           R0 0
       56 SETTABLEKS                       R5 R4 K4 ["guid"]
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R6 R7 K5 ["altDataMap"]
       61 SETTABLE                         R4 R6 R5
       62 GETUPVAL                         R7 2
       63 GETTABLEKS                       R6 R7 K10 ["activeDraftGuids"]
       65 JUMPIFNOT                        R6 ; [+5]
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R6 R7 K10 ["activeDraftGuids"]
       69 LOADB                            R7 1
       70 SETTABLE                         R7 R6 R5
       71 LOADNIL                          R6
       72 LOADNIL                          R7
       73 JUMPIFNOT                        R3 ; [+28]
       74 GETUPVAL                         R10 2
       75 GETTABLEKS                       R9 R10 K11 ["chatBulletMap"]
       77 GETTABLE                         R8 R9 R3
       78 NOT                              R6 R8
       79 GETUPVAL                         R10 2
       80 GETTABLEKS                       R9 R10 K11 ["chatBulletMap"]
       82 GETTABLE                         R8 R9 R3
       83 JUMPIF                           R8 ; [+2]
       84 NEWTABLE                         R8 0 0
       86 MOVE                             R7 R8
       87 GETUPVAL                         R9 2
       88 GETTABLEKS                       R8 R9 K11 ["chatBulletMap"]
       90 SETTABLE                         R7 R8 R3
       91 GETUPVAL                         R9 2
       92 GETTABLEKS                       R8 R9 K10 ["activeDraftGuids"]
       94 JUMPIF                           R8 ; [+7]
       95 FASTCALL2                        TABLE_INSERT R7 R5 ; [+5]
       97 MOVE                             R9 R7
       98 MOVE                             R10 R5
       99 GETIMPORT                        R8 K14 [table.insert]
      101 CALL                             R8 2 0
      102 GETUPVAL                         R9 2
      103 GETTABLEKS                       R8 R9 K7 ["guidToInfo"]
      105 DUPTABLE                         R9 K16 [{"instance", "chatBulletGroupId"}]
      106 SETTABLEKS                       R1 R9 K8 ["instance"]
      108 SETTABLEKS                       R3 R9 K15 ["chatBulletGroupId"]
      110 SETTABLE                         R9 R8 R5
      111 JUMPIF                           R7 ; [+24]
      112 GETUPVAL                         R8 3
      113 LOADK                            R10 K17 ["StreamTextInNewMessage"]
      114 DUPTABLE                         R11 K20 [{"requestId", "content"}]
      115 ORK                              R12 R0 K21 [""]
      116 SETTABLEKS                       R12 R11 K18 ["requestId"]
      118 LOADK                            R13 K22 ["* %* [![](image://instance/%*) <span id=\"%*\">%*</span>](studio://instance/%*)"]
      119 MOVE                             R15 R2
      120 GETTABLEKS                       R16 R1 K23 ["ClassName"]
      122 MOVE                             R17 R3
      123 GETTABLEKS                       R18 R1 K24 ["Name"]
      125 MOVE                             R19 R5
      126 NAMECALL                         R13 R13 K25 ["format"]
      128 CALL                             R13 6 1
      129 MOVE                             R12 R13
      130 SETTABLEKS                       R12 R11 K19 ["content"]
      132 NAMECALL                         R8 R8 K26 ["DisplayContent"]
      134 CALL                             R8 3 0
      135 JUMP                             ; [+57]
      136 JUMPIFNOT                        R6 ; [+48]
      137 GETUPVAL                         R8 3
      138 LOADK                            R10 K17 ["StreamTextInNewMessage"]
      139 DUPTABLE                         R11 K20 [{"requestId", "content"}]
      140 ORK                              R12 R0 K21 [""]
      141 SETTABLEKS                       R12 R11 K18 ["requestId"]
      143 LOADK                            R13 K27 ["* %* <span class=\"instanceLink\"><a href=\"studio://instance/%*\"> <img src=\"image://instance/%*\" alt=\"%*\"/> <span id=\"%*\">%*</span><a id=\"%*\"/></a></span>"]
      144 MOVE                             R15 R2
      145 MOVE                             R16 R5
      146 GETTABLEKS                       R17 R1 K23 ["ClassName"]
      148 GETTABLEKS                       R18 R1 K23 ["ClassName"]
      150 MOVE                             R19 R3
      151 GETTABLEKS                       R20 R1 K24 ["Name"]
      153 MOVE                             R21 R3
      154 NAMECALL                         R13 R13 K25 ["format"]
      156 CALL                             R13 8 1
      157 MOVE                             R12 R13
      158 SETTABLEKS                       R12 R11 K19 ["content"]
      160 NAMECALL                         R8 R8 K26 ["DisplayContent"]
      162 CALL                             R8 3 0
      163 GETUPVAL                         R8 3
      164 LOADK                            R10 K28 ["AddAssetIterationDropdown"]
      165 DUPTABLE                         R11 K31 [{"requestId", "assetIds", "actionString"}]
      166 ORK                              R12 R0 K21 [""]
      167 SETTABLEKS                       R12 R11 K18 ["requestId"]
      169 GETTABLEKS                       R12 R4 K32 ["altAssets"]
      171 JUMPIF                           R12 ; [+2]
      172 NEWTABLE                         R12 0 0
      174 SETTABLEKS                       R12 R11 K29 ["assetIds"]
      176 LOADK                            R13 K33 ["studio://instance/"]
      177 MOVE                             R14 R5
      178 CONCAT                           R12 R13 R14
      179 SETTABLEKS                       R12 R11 K30 ["actionString"]
      181 NAMECALL                         R8 R8 K26 ["DisplayContent"]
      183 CALL                             R8 3 0
      184 JUMP                             ; [+8]
      185 LENGTH                           R8 R7
      186 LOADN                            R9 1
      187 JUMPIFNOTLT                      R9 R8 ; [+5]
      189 GETUPVAL                         R8 4
      190 MOVE                             R9 R0
      191 LOADB                            R10 0
      192 CALL                             R8 2 0
      193 GETUPVAL                         R9 1
      194 GETTABLEKS                       R8 R9 K34 ["commandsEnded"]
      196 JUMPIF                           R8 ; [+11]
      197 GETUPVAL                         R8 1
      198 GETUPVAL                         R10 5
      199 GETTABLEKS                       R9 R10 K35 ["SequentialCommandsFinished"]
      201 DUPCLOSURE                       R11 K36 [PROTO_16]
      202 CAPTURE                          UPVAL U4
      203 NAMECALL                         R9 R9 K37 ["Connect"]
      205 CALL                             R9 2 1
      206 SETTABLEKS                       R9 R8 K34 ["commandsEnded"]
      208 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["commandsEnded"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["commandsEnded"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["commandsEnded"]
       14 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["StreamText"]
        2 DUPTABLE                         R6 K4 [{"requestId", "content", "streamId"}]
        3 ORK                              R7 R0 K5 [""]
        4 SETTABLEKS                       R7 R6 K1 ["requestId"]
        6 SETTABLEKS                       R1 R6 K2 ["content"]
        8 SETTABLEKS                       R2 R6 K3 ["streamId"]
       10 NAMECALL                         R3 R3 K6 ["DisplayContent"]
       12 CALL                             R3 3 0
       13 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["requestRegionAdornments"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+17]
        5 GETTABLEKS                       R2 R1 K1 ["Parent"]
        7 JUMPIFNOT                        R2 ; [+3]
        8 NAMECALL                         R3 R2 K2 ["Destroy"]
       10 CALL                             R3 1 0
       11 GETTABLEKS                       R3 R1 K3 ["ToggleVisibilityEvent"]
       13 JUMPIFNOT                        R3 ; [+3]
       14 NAMECALL                         R4 R3 K2 ["Destroy"]
       16 CALL                             R4 1 0
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K0 ["requestRegionAdornments"]
       20 LOADNIL                          R5
       21 SETTABLE                         R5 R4 R0
       22 RETURN                           R0 0

PROTO_21:
        0 JUMPIFNOT                        R3 ; [+1]
        1 RETURN                           R3 1
        2 JUMPIFNOT                        R1 ; [+42]
        3 JUMPIFNOT                        R2 ; [+41]
        4 GETIMPORT                        R4 K2 [RaycastParams.new]
        6 CALL                             R4 0 1
        7 NEWTABLE                         R5 0 1
        9 MOVE                             R6 R1
       10 SETLIST                          R5 R6 1 [1]
       12 SETTABLEKS                       R5 R4 K3 ["FilterDescendantsInstances"]
       14 GETIMPORT                        R5 K7 [Enum.RaycastFilterType.Include]
       16 SETTABLEKS                       R5 R4 K8 ["FilterType"]
       18 GETIMPORT                        R5 K10 [workspace]
       20 LOADN                            R9 0
       21 GETTABLEKS                       R11 R2 K12 ["Y"]
       23 ADDK                             R10 R11 K11 [5]
       24 LOADN                            R11 0
       25 FASTCALL                         VECTOR ; [+2]
       26 GETIMPORT                        R8 K14 [Vector3.new]
       28 CALL                             R8 3 1
       29 ADD                              R7 R0 R8
       30 LOADK                            R9 K15 [{0, -2, 0}]
       31 GETTABLEKS                       R11 R2 K12 ["Y"]
       33 ADDK                             R10 R11 K11 [5]
       34 MUL                              R8 R9 R10
       35 MOVE                             R9 R4
       36 NAMECALL                         R5 R5 K16 ["Raycast"]
       38 CALL                             R5 4 1
       39 JUMPIFNOT                        R5 ; [+5]
       40 GETTABLEKS                       R7 R5 K17 ["Position"]
       42 GETTABLEKS                       R6 R7 K12 ["Y"]
       44 RETURN                           R6 1
       45 NEWTABLE                         R4 0 0
       47 GETIMPORT                        R6 K10 [workspace]
       49 GETTABLEKS                       R5 R6 K18 ["Terrain"]
       51 JUMPIFNOT                        R5 ; [+13]
       52 NAMECALL                         R6 R5 K19 ["CountCells"]
       54 CALL                             R6 1 1
       55 LOADN                            R7 0
       56 JUMPIFNOTLT                      R7 R6 ; [+8]
       58 FASTCALL2                        TABLE_INSERT R4 R5 ; [+5]
       60 MOVE                             R7 R4
       61 MOVE                             R8 R5
       62 GETIMPORT                        R6 K22 [table.insert]
       64 CALL                             R6 2 0
       65 GETIMPORT                        R6 K10 [workspace]
       67 LOADK                            R8 K23 ["Baseplate"]
       68 NAMECALL                         R6 R6 K24 ["FindFirstChild"]
       70 CALL                             R6 2 1
       71 JUMPIFNOT                        R6 ; [+7]
       72 FASTCALL2                        TABLE_INSERT R4 R6 ; [+5]
       74 MOVE                             R8 R4
       75 MOVE                             R9 R6
       76 GETIMPORT                        R7 K22 [table.insert]
       78 CALL                             R7 2 0
       79 LENGTH                           R7 R4
       80 LOADN                            R8 0
       81 JUMPIFNOTLT                      R8 R7 ; [+28]
       83 GETIMPORT                        R7 K2 [RaycastParams.new]
       85 CALL                             R7 0 1
       86 SETTABLEKS                       R4 R7 K3 ["FilterDescendantsInstances"]
       88 GETIMPORT                        R8 K7 [Enum.RaycastFilterType.Include]
       90 SETTABLEKS                       R8 R7 K8 ["FilterType"]
       92 LOADB                            R8 1
       93 SETTABLEKS                       R8 R7 K25 ["IgnoreWater"]
       95 GETIMPORT                        R8 K10 [workspace]
       97 LOADK                            R11 K26 [{0, 10000, 0}]
       98 ADD                              R10 R0 R11
       99 LOADK                            R11 K27 [{0, -20000, 0}]
      100 MOVE                             R12 R7
      101 NAMECALL                         R8 R8 K16 ["Raycast"]
      103 CALL                             R8 4 1
      104 JUMPIFNOT                        R8 ; [+5]
      105 GETTABLEKS                       R10 R8 K17 ["Position"]
      107 GETTABLEKS                       R9 R10 K12 ["Y"]
      109 RETURN                           R9 1
      110 GETTABLEKS                       R7 R0 K12 ["Y"]
      112 RETURN                           R7 1

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["draftModeModels"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+14]
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K2 ["Locked"]
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K3 ["CastShadow"]
       11 GETTABLEKS                       R1 R0 K4 ["Transparency"]
       13 LOADK                            R2 K5 [0.75]
       14 JUMPIFNOTLT                      R1 R2 ; [+4]
       16 LOADN                            R1 0
       17 SETTABLEKS                       R1 R0 K4 ["Transparency"]
       19 NAMECALL                         R1 R0 K6 ["GetDescendants"]
       21 CALL                             R1 1 3
       22 FORGPREP                         R1
       23 LOADK                            R8 K0 ["BasePart"]
       24 NAMECALL                         R6 R5 K1 ["IsA"]
       26 CALL                             R6 2 1
       27 JUMPIFNOT                        R6 ; [+14]
       28 LOADB                            R6 1
       29 SETTABLEKS                       R6 R5 K2 ["Locked"]
       31 LOADB                            R6 0
       32 SETTABLEKS                       R6 R5 K3 ["CastShadow"]
       34 GETTABLEKS                       R6 R5 K4 ["Transparency"]
       36 LOADK                            R7 K5 [0.75]
       37 JUMPIFNOTLT                      R6 R7 ; [+4]
       39 LOADN                            R6 0
       40 SETTABLEKS                       R6 R5 K4 ["Transparency"]
       42 LOADK                            R8 K7 ["PackageLink"]
       43 NAMECALL                         R6 R5 K1 ["IsA"]
       45 CALL                             R6 2 1
       46 JUMPIFNOT                        R6 ; [+3]
       47 NAMECALL                         R6 R5 K8 ["Destroy"]
       49 CALL                             R6 1 0
       50 FORGLOOP                         R1 2 ; [-28]
       52 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["draftModeModels"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Attempted to enable draft mode when it's already running!"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETIMPORT                        R1 K6 [Instance.new]
       12 LOADK                            R2 K7 ["Model"]
       13 CALL                             R1 1 1
       14 LOADB                            R2 0
       15 SETTABLEKS                       R2 R1 K8 ["Archivable"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K9 ["GetRequestFolder"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K10 ["Parent"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K0 ["draftModeModels"]
       27 SETTABLE                         R1 R2 R0
       28 GETIMPORT                        R2 K6 [Instance.new]
       30 LOADK                            R3 K11 ["Highlight"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K13 [Color3.new]
       34 LOADN                            R4 1
       35 LOADN                            R5 1
       36 LOADN                            R6 1
       37 CALL                             R3 3 1
       38 SETTABLEKS                       R3 R2 K14 ["FillColor"]
       40 LOADK                            R3 K15 [0.45]
       41 SETTABLEKS                       R3 R2 K16 ["FillTransparency"]
       43 LOADN                            R3 1
       44 SETTABLEKS                       R3 R2 K17 ["OutlineTransparency"]
       46 SETTABLEKS                       R1 R2 K10 ["Parent"]
       48 GETIMPORT                        R3 K19 [TweenInfo.new]
       50 LOADN                            R4 1
       51 GETIMPORT                        R5 K23 [Enum.EasingStyle.Sine]
       53 GETIMPORT                        R6 K26 [Enum.EasingDirection.InOut]
       55 LOADN                            R7 255
       56 LOADB                            R8 1
       57 LOADN                            R9 0
       58 CALL                             R3 6 1
       59 GETUPVAL                         R4 1
       60 MOVE                             R6 R2
       61 MOVE                             R7 R3
       62 DUPTABLE                         R8 K27 [{"FillTransparency"}]
       63 LOADK                            R9 K28 [0.6]
       64 SETTABLEKS                       R9 R8 K16 ["FillTransparency"]
       66 NAMECALL                         R4 R4 K29 ["Create"]
       68 CALL                             R4 4 1
       69 NAMECALL                         R5 R4 K30 ["Play"]
       71 CALL                             R5 1 0
       72 GETTABLEKS                       R5 R1 K31 ["Destroying"]
       74 NEWCLOSURE                       R7 P0
       75 CAPTURE                          VAL R4
       76 NAMECALL                         R5 R5 K32 ["Once"]
       78 CALL                             R5 2 0
       79 GETTABLEKS                       R5 R1 K33 ["ChildAdded"]
       81 DUPCLOSURE                       R7 K34 [PROTO_24]
       82 NAMECALL                         R5 R5 K35 ["Connect"]
       84 CALL                             R5 2 0
       85 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["draftModeModels"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 NAMECALL                         R2 R1 K1 ["Destroy"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["draftModeModels"]
       12 LOADNIL                          R3
       13 SETTABLE                         R3 R2 R0
       14 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["draftModeModels"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 LOADB                            R1 0
        8 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [1] ; [+3]
        7 GETTABLEN                        R1 R0 1
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getDefaultLocation should only be called when FFlagConvAIAddCommandSearchInsertAsset is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPCLOSURE                       R1 K3 [PROTO_28]
        9 CAPTURE                          UPVAL U1
       10 LOADK                            R4 K4 ["Sound"]
       11 NAMECALL                         R2 R0 K5 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+13]
       15 GETUPVAL                         R3 1
       16 NAMECALL                         R3 R3 K6 ["Get"]
       18 CALL                             R3 1 1
       19 LENGTH                           R4 R3
       20 JUMPIFNOTEQKN                    R4 K7 [1] ; [+3]
       22 GETTABLEN                        R2 R3 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 JUMPIF                           R2 ; [+1]
       26 GETUPVAL                         R2 2
       27 RETURN                           R2 1
       28 LOADK                            R4 K8 ["Sky"]
       29 NAMECALL                         R2 R0 K5 ["IsA"]
       31 CALL                             R2 2 1
       32 JUMPIFNOT                        R2 ; [+2]
       33 GETUPVAL                         R2 3
       34 RETURN                           R2 1
       35 LOADK                            R4 K9 ["FaceInstance"]
       36 NAMECALL                         R2 R0 K5 ["IsA"]
       38 CALL                             R2 2 1
       39 JUMPIFNOT                        R2 ; [+11]
       40 GETUPVAL                         R3 1
       41 NAMECALL                         R3 R3 K6 ["Get"]
       43 CALL                             R3 1 1
       44 LENGTH                           R4 R3
       45 JUMPIFNOTEQKN                    R4 K7 [1] ; [+3]
       47 GETTABLEN                        R2 R3 1
       48 RETURN                           R2 1
       49 LOADNIL                          R2
       50 RETURN                           R2 1
       51 LOADNIL                          R2
       52 RETURN                           R2 1

PROTO_30:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["activeDraftGuids"]
        3 JUMPIFNOT                        R3 ; [+5]
        4 GETGLOBAL                        R2 K1 ["getDraftModeModel"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+18]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 JUMPIF                           R2 ; [+15]
       12 GETUPVAL                         R3 1
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+4]
       15 GETUPVAL                         R2 2
       16 MOVE                             R3 R0
       17 CALL                             R2 1 1
       18 JUMPIF                           R2 ; [+8]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K3 ["GetRequestFolder"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 1
       24 JUMPIF                           R2 ; [+2]
       25 GETIMPORT                        R2 K5 [workspace]
       27 RETURN                           R2 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getGroundLevelAt"]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETUPVAL                         R5 1
        7 CALL                             R1 4 -1
        8 RETURN                           R1 -1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R6 R7 K0 ["Value"]
        7 JUMPIFNOT                        R6 ; [+5]
        8 GETIMPORT                        R6 K2 [workspace]
       10 GETTABLEKS                       R5 R6 K3 ["Terrain"]
       12 JUMPIF                           R5 ; [+1]
       13 LOADNIL                          R5
       14 SETTABLEKS                       R5 R4 K4 ["Adornee"]
       16 FORGLOOP                         R0 2 ; [-13]
       18 GETUPVAL                         R0 2
       19 LOADNIL                          R1
       20 LOADNIL                          R2
       21 FORGPREP                         R0
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K0 ["Value"]
       25 JUMPIFNOT                        R6 ; [+5]
       26 GETIMPORT                        R6 K2 [workspace]
       28 GETTABLEKS                       R5 R6 K3 ["Terrain"]
       30 JUMPIF                           R5 ; [+1]
       31 LOADNIL                          R5
       32 SETTABLEKS                       R5 R4 K4 ["Adornee"]
       34 FORGLOOP                         R0 2 ; [-13]
       36 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 DUPTABLE                         R5 K1 [{"Transparency"}]
        4 LOADK                            R6 K2 [0.99]
        5 SETTABLEKS                       R6 R5 K0 ["Transparency"]
        7 NAMECALL                         R1 R1 K3 ["Create"]
        9 CALL                             R1 4 1
       10 GETUPVAL                         R2 2
       11 SETTABLEKS                       R2 R1 K4 ["Parent"]
       13 LOADK                            R3 K5 ["Tweening_%*"]
       14 GETTABLEKS                       R5 R0 K6 ["Name"]
       16 NAMECALL                         R3 R3 K7 ["format"]
       18 CALL                             R3 2 1
       19 MOVE                             R2 R3
       20 SETTABLEKS                       R2 R1 K6 ["Name"]
       22 NAMECALL                         R2 R1 K8 ["Play"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R2 R3 K9 ["Destroying"]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R1
       30 NAMECALL                         R2 R2 K10 ["Once"]
       32 CALL                             R2 2 0
       33 RETURN                           R0 0

PROTO_35:
        0 MOVE                             R5 R4
        1 JUMPIF                           R5 ; [+6]
        2 GETIMPORT                        R5 K2 [Color3.fromRGB]
        4 LOADN                            R6 255
        5 LOADN                            R7 255
        6 LOADN                            R8 255
        7 CALL                             R5 3 1
        8 MOVE                             R4 R5
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K3 ["requestRegionAdornments"]
       12 GETTABLE                         R5 R6 R0
       13 JUMPIF                           R5 ; [+20]
       14 DUPTABLE                         R6 K6 [{"Parent", "ToggleVisibilityEvent"}]
       15 LOADNIL                          R7
       16 SETTABLEKS                       R7 R6 K4 ["Parent"]
       18 GETIMPORT                        R7 K9 [Instance.new]
       20 LOADK                            R8 K10 ["BoolValue"]
       21 CALL                             R7 1 1
       22 SETTABLEKS                       R7 R6 K5 ["ToggleVisibilityEvent"]
       24 MOVE                             R5 R6
       25 GETTABLEKS                       R6 R5 K5 ["ToggleVisibilityEvent"]
       27 LOADB                            R7 0
       28 SETTABLEKS                       R7 R6 K11 ["Value"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K3 ["requestRegionAdornments"]
       33 SETTABLE                         R5 R6 R0
       34 GETTABLEKS                       R6 R5 K5 ["ToggleVisibilityEvent"]
       36 GETTABLEKS                       R7 R5 K4 ["Parent"]
       38 JUMPIF                           R7 ; [+4]
       39 GETIMPORT                        R7 K9 [Instance.new]
       41 LOADK                            R8 K12 ["Folder"]
       42 CALL                             R7 1 1
       43 LOADB                            R8 0
       44 SETTABLEKS                       R8 R7 K13 ["Archivable"]
       46 GETUPVAL                         R8 1
       47 SETTABLEKS                       R8 R7 K4 ["Parent"]
       49 LOADK                            R8 K14 ["AssistantArea"]
       50 SETTABLEKS                       R8 R7 K15 ["Name"]
       52 SETTABLEKS                       R7 R5 K4 ["Parent"]
       54 NEWTABLE                         R8 0 0
       56 NEWTABLE                         R9 0 0
       58 LOADNIL                          R10
       59 GETTABLEKS                       R12 R2 K16 ["Y"]
       61 JUMPIFEQKN                       R12 K17 [0] ; [+2]
       63 LOADB                            R11 0 +1
       64 LOADB                            R11 1
       65 GETTABLEKS                       R13 R2 K16 ["Y"]
       67 LOADN                            R14 0
       68 JUMPIFNOTLT                      R14 R13 ; [+4]
       70 GETTABLEKS                       R12 R2 K16 ["Y"]
       72 JUMP                             ; [+1]
       73 LOADN                            R12 16
       74 JUMPIFNOT                        R11 ; [+23]
       75 GETUPVAL                         R15 2
       76 CALL                             R15 0 1
       77 MULK                             R14 R15 K18 [0.01]
       78 GETTABLEKS                       R16 R2 K20 ["Z"]
       80 MULK                             R15 R16 K19 [0.62]
       81 GETTABLEKS                       R17 R2 K21 ["X"]
       83 MULK                             R16 R17 K19 [0.62]
       84 FASTCALL                         MATH_MIN ; [+2]
       85 GETIMPORT                        R13 K24 [math.min]
       87 CALL                             R13 3 1
       88 MOVE                             R12 R13
       89 GETUPVAL                         R14 0
       90 GETTABLEKS                       R13 R14 K25 ["GetRequestMetadata"]
       92 MOVE                             R14 R0
       93 LOADK                            R15 K26 ["PlacementForcedY"]
       94 CALL                             R13 2 1
       95 NEWCLOSURE                       R10 P0
       96 CAPTURE                          UPVAL U3
       97 CAPTURE                          VAL R13
       98 LOADN                            R15 1
       99 LOADN                            R13 4
      100 LOADN                            R14 1
      101 FORNPREP                         R13
      102 GETIMPORT                        R16 K9 [Instance.new]
      104 LOADK                            R17 K27 ["BoxHandleAdornment"]
      105 CALL                             R16 1 1
      106 SETTABLEKS                       R7 R16 K4 ["Parent"]
      108 LOADNIL                          R17
      109 SETTABLEKS                       R17 R16 K28 ["Adornee"]
      111 LOADK                            R18 K29 ["Edge_%*"]
      112 MOVE                             R20 R15
      113 NAMECALL                         R18 R18 K30 ["format"]
      115 CALL                             R18 2 1
      116 MOVE                             R17 R18
      117 SETTABLEKS                       R17 R16 K15 ["Name"]
      119 LOADN                            R17 0
      120 SETTABLEKS                       R17 R16 K31 ["ZIndex"]
      122 LOADK                            R18 K32 [0.2]
      123 LOADK                            R20 K32 [0.2]
      124 FASTCALL3                        VECTOR R18 R12 R20
      126 MOVE                             R19 R12
      127 GETIMPORT                        R17 K34 [Vector3.new]
      129 CALL                             R17 3 1
      130 SETTABLEKS                       R17 R16 K35 ["Size"]
      132 SETTABLEKS                       R4 R16 K0 ["Color3"]
      134 LOADK                            R17 K36 [0.6]
      135 SETTABLEKS                       R17 R16 K37 ["Transparency"]
      137 FASTCALL2                        TABLE_INSERT R9 R16 ; [+5]
      139 MOVE                             R18 R9
      140 MOVE                             R19 R16
      141 GETIMPORT                        R17 K40 [table.insert]
      143 CALL                             R17 2 0
      144 GETIMPORT                        R17 K9 [Instance.new]
      146 LOADK                            R18 K27 ["BoxHandleAdornment"]
      147 CALL                             R17 1 1
      148 SETTABLEKS                       R7 R17 K4 ["Parent"]
      150 LOADNIL                          R18
      151 SETTABLEKS                       R18 R17 K28 ["Adornee"]
      153 LOADK                            R19 K41 ["Face_%*"]
      154 MOVE                             R21 R15
      155 NAMECALL                         R19 R19 K30 ["format"]
      157 CALL                             R19 2 1
      158 MOVE                             R18 R19
      159 SETTABLEKS                       R18 R17 K15 ["Name"]
      161 LOADN                            R18 0
      162 SETTABLEKS                       R18 R16 K31 ["ZIndex"]
      164 SETTABLEKS                       R4 R17 K0 ["Color3"]
      166 LOADK                            R18 K42 [0.87]
      167 SETTABLEKS                       R18 R17 K37 ["Transparency"]
      169 FASTCALL2                        TABLE_INSERT R8 R17 ; [+5]
      171 MOVE                             R19 R8
      172 MOVE                             R20 R17
      173 GETIMPORT                        R18 K40 [table.insert]
      175 CALL                             R18 2 0
      176 FORNLOOP                         R13
      177 LOADK                            R15 K11 ["Value"]
      178 NAMECALL                         R13 R6 K43 ["GetPropertyChangedSignal"]
      180 CALL                             R13 2 1
      181 NEWCLOSURE                       R15 P1
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R6
      184 CAPTURE                          REF R8
      185 NAMECALL                         R13 R13 K44 ["Connect"]
      187 CALL                             R13 2 0
      188 GETTABLEKS                       R14 R2 K21 ["X"]
      190 MULK                             R13 R14 K45 [0.5]
      191 GETTABLEKS                       R15 R2 K20 ["Z"]
      193 MULK                             R14 R15 K45 [0.5]
      194 NEWTABLE                         R15 0 4
      196 LOADN                            R18 0
      197 FASTCALL3                        VECTOR R13 R18 R14
      199 MOVE                             R17 R13
      200 MOVE                             R19 R14
      201 GETIMPORT                        R16 K34 [Vector3.new]
      203 CALL                             R16 3 1
      204 LOADN                            R19 0
      205 MINUS                            R20 R14
      206 FASTCALL3                        VECTOR R13 R19 R20
      208 MOVE                             R18 R13
      209 GETIMPORT                        R17 K34 [Vector3.new]
      211 CALL                             R17 3 1
      212 MINUS                            R19 R13
      213 LOADN                            R20 0
      214 MINUS                            R21 R14
      215 FASTCALL                         VECTOR ; [+2]
      216 GETIMPORT                        R18 K34 [Vector3.new]
      218 CALL                             R18 3 1
      219 MINUS                            R20 R13
      220 LOADN                            R21 0
      221 FASTCALL3                        VECTOR R20 R21 R14
      223 MOVE                             R22 R14
      224 GETIMPORT                        R19 K34 [Vector3.new]
      226 CALL                             R19 3 1
      227 SETLIST                          R15 R16 4 [1]
      229 NEWTABLE                         R16 0 2
      231 GETTABLEKS                       R18 R2 K21 ["X"]
      233 LOADN                            R20 0
      234 FASTCALL3                        VECTOR R18 R12 R20
      236 MOVE                             R19 R12
      237 GETIMPORT                        R17 K34 [Vector3.new]
      239 CALL                             R17 3 1
      240 LOADN                            R19 0
      241 GETTABLEKS                       R21 R2 K20 ["Z"]
      243 FASTCALL3                        VECTOR R19 R12 R21
      245 MOVE                             R20 R12
      246 GETIMPORT                        R18 K34 [Vector3.new]
      248 CALL                             R18 3 1
      249 SETLIST                          R16 R17 2 [1]
      251 LOADN                            R19 1
      252 LOADN                            R17 4
      253 LOADN                            R18 1
      254 FORNPREP                         R17
      255 GETTABLE                         R20 R9 R19
      256 GETIMPORT                        R23 K47 [CFrame.new]
      258 GETTABLE                         R24 R15 R19
      259 CALL                             R23 1 -1
      260 NAMECALL                         R21 R1 K48 ["ToWorldSpace"]
      262 CALL                             R21 -1 1
      263 SETTABLEKS                       R21 R20 K46 ["CFrame"]
      265 GETTABLE                         R20 R8 R19
      266 MODK                             R23 R19 K50 [2]
      267 ADDK                             R22 R23 K49 [1]
      268 GETTABLE                         R21 R16 R22
      269 SETTABLEKS                       R21 R20 K35 ["Size"]
      271 GETTABLE                         R20 R8 R19
      272 GETIMPORT                        R23 K47 [CFrame.new]
      274 GETTABLE                         R26 R15 R19
      275 MODK                             R29 R19 K51 [4]
      276 ADDK                             R28 R29 K49 [1]
      277 GETTABLE                         R27 R15 R28
      278 ADD                              R25 R26 R27
      279 MULK                             R24 R25 K45 [0.5]
      280 CALL                             R23 1 -1
      281 NAMECALL                         R21 R1 K48 ["ToWorldSpace"]
      283 CALL                             R21 -1 1
      284 SETTABLEKS                       R21 R20 K46 ["CFrame"]
      286 FORNLOOP                         R17
      287 JUMPIFNOT                        R11 ; [+334]
      288 MOVE                             R17 R8
      289 NEWTABLE                         R8 0 0
      291 MOVE                             R18 R17
      292 LOADNIL                          R19
      293 LOADNIL                          R20
      294 FORGPREP                         R18
      295 MODK                             R23 R21 K50 [2]
      296 JUMPIFNOTEQKN                    R23 K17 [0] ; [+146]
      298 GETTABLEKS                       R24 R22 K35 ["Size"]
      300 GETTABLEKS                       R23 R24 K21 ["X"]
      302 MOVE                             R24 R10
      303 GETTABLEKS                       R26 R22 K46 ["CFrame"]
      305 GETIMPORT                        R28 K47 [CFrame.new]
      307 MINUS                            R30 R23
      308 MULK                             R29 R30 K45 [0.5]
      309 LOADN                            R30 0
      310 LOADN                            R31 0
      311 CALL                             R28 3 -1
      312 NAMECALL                         R26 R26 K48 ["ToWorldSpace"]
      314 CALL                             R26 -1 1
      315 GETTABLEKS                       R25 R26 K52 ["Position"]
      317 CALL                             R24 1 1
      318 DIVK                             R26 R23 K51 [4]
      319 FASTCALL1                        MATH_CEIL R26 ; [+2]
      320 GETIMPORT                        R25 K54 [math.ceil]
      322 CALL                             R25 1 1
      323 DIV                              R26 R23 R25
      324 LOADN                            R29 0
      325 SUBK                             R27 R25 K49 [1]
      326 LOADN                            R28 1
      327 FORNPREP                         R27
      328 NAMECALL                         R30 R22 K55 ["Clone"]
      330 CALL                             R30 1 1
      331 SETTABLEKS                       R7 R30 K4 ["Parent"]
      333 GETTABLEKS                       R32 R22 K15 ["Name"]
      335 LOADK                            R33 K56 ["_"]
      336 MOVE                             R34 R29
      337 CONCAT                           R31 R32 R34
      338 SETTABLEKS                       R31 R30 K15 ["Name"]
      340 GETTABLEKS                       R34 R22 K35 ["Size"]
      342 GETTABLEKS                       R33 R34 K16 ["Y"]
      344 GETTABLEKS                       R35 R22 K35 ["Size"]
      346 GETTABLEKS                       R34 R35 K20 ["Z"]
      348 FASTCALL3                        VECTOR R26 R33 R34
      350 MOVE                             R32 R26
      351 GETIMPORT                        R31 K34 [Vector3.new]
      353 CALL                             R31 3 1
      354 SETTABLEKS                       R31 R30 K35 ["Size"]
      356 GETTABLEKS                       R31 R22 K46 ["CFrame"]
      358 GETIMPORT                        R33 K47 [CFrame.new]
      360 GETTABLEKS                       R38 R22 K35 ["Size"]
      362 GETTABLEKS                       R37 R38 K21 ["X"]
      364 MINUS                            R36 R37
      365 MULK                             R35 R36 K45 [0.5]
      366 ADDK                             R37 R29 K45 [0.5]
      367 MUL                              R36 R37 R26
      368 ADD                              R34 R35 R36
      369 LOADN                            R35 0
      370 LOADN                            R36 0
      371 CALL                             R33 3 -1
      372 NAMECALL                         R31 R31 K48 ["ToWorldSpace"]
      374 CALL                             R31 -1 1
      375 SETTABLEKS                       R31 R30 K46 ["CFrame"]
      377 MOVE                             R31 R10
      378 GETTABLEKS                       R33 R30 K46 ["CFrame"]
      380 GETIMPORT                        R35 K47 [CFrame.new]
      382 MULK                             R36 R26 K45 [0.5]
      383 LOADN                            R37 0
      384 LOADN                            R38 0
      385 CALL                             R35 3 -1
      386 NAMECALL                         R33 R33 K48 ["ToWorldSpace"]
      388 CALL                             R33 -1 1
      389 GETTABLEKS                       R32 R33 K52 ["Position"]
      391 CALL                             R31 1 1
      392 GETTABLEKS                       R32 R30 K46 ["CFrame"]
      394 LOADN                            R34 0
      395 ADD                              R37 R31 R24
      396 MULK                             R36 R37 K45 [0.5]
      397 GETTABLEKS                       R39 R30 K46 ["CFrame"]
      399 GETTABLEKS                       R38 R39 K52 ["Position"]
      401 GETTABLEKS                       R37 R38 K16 ["Y"]
      403 SUB                              R35 R36 R37
      404 LOADN                            R36 0
      405 FASTCALL                         VECTOR ; [+2]
      406 GETIMPORT                        R33 K34 [Vector3.new]
      408 CALL                             R33 3 1
      409 ADD                              R32 R32 R33
      410 SETTABLEKS                       R32 R30 K46 ["CFrame"]
      412 GETTABLEKS                       R33 R30 K46 ["CFrame"]
      414 GETIMPORT                        R34 K47 [CFrame.new]
      416 LOADN                            R35 0
      417 LOADN                            R36 0
      418 LOADN                            R37 0
      419 LOADN                            R38 1
      420 LOADN                            R39 0
      421 LOADN                            R40 0
      422 SUB                              R42 R31 R24
      423 MULK                             R41 R42 K57 [0.25]
      424 LOADN                            R42 1
      425 LOADN                            R43 0
      426 LOADN                            R44 0
      427 LOADN                            R45 0
      428 LOADN                            R46 1
      429 CALL                             R34 12 1
      430 MUL                              R32 R33 R34
      431 SETTABLEKS                       R32 R30 K46 ["CFrame"]
      433 MOVE                             R24 R31
      434 FASTCALL2                        TABLE_INSERT R8 R30 ; [+5]
      436 MOVE                             R33 R8
      437 MOVE                             R34 R30
      438 GETIMPORT                        R32 K40 [table.insert]
      440 CALL                             R32 2 0
      441 FORNLOOP                         R27
      442 JUMP                             ; [+144]
      443 GETTABLEKS                       R24 R22 K35 ["Size"]
      445 GETTABLEKS                       R23 R24 K20 ["Z"]
      447 MOVE                             R24 R10
      448 GETTABLEKS                       R26 R22 K46 ["CFrame"]
      450 GETIMPORT                        R28 K47 [CFrame.new]
      452 LOADN                            R29 0
      453 LOADN                            R30 0
      454 MINUS                            R32 R23
      455 MULK                             R31 R32 K45 [0.5]
      456 CALL                             R28 3 -1
      457 NAMECALL                         R26 R26 K48 ["ToWorldSpace"]
      459 CALL                             R26 -1 1
      460 GETTABLEKS                       R25 R26 K52 ["Position"]
      462 CALL                             R24 1 1
      463 DIVK                             R26 R23 K51 [4]
      464 FASTCALL1                        MATH_CEIL R26 ; [+2]
      465 GETIMPORT                        R25 K54 [math.ceil]
      467 CALL                             R25 1 1
      468 DIV                              R26 R23 R25
      469 LOADN                            R29 0
      470 SUBK                             R27 R25 K49 [1]
      471 LOADN                            R28 1
      472 FORNPREP                         R27
      473 NAMECALL                         R30 R22 K55 ["Clone"]
      475 CALL                             R30 1 1
      476 SETTABLEKS                       R7 R30 K4 ["Parent"]
      478 GETTABLEKS                       R32 R22 K15 ["Name"]
      480 LOADK                            R33 K56 ["_"]
      481 MOVE                             R34 R29
      482 CONCAT                           R31 R32 R34
      483 SETTABLEKS                       R31 R30 K15 ["Name"]
      485 GETTABLEKS                       R33 R22 K35 ["Size"]
      487 GETTABLEKS                       R32 R33 K21 ["X"]
      489 GETTABLEKS                       R34 R22 K35 ["Size"]
      491 GETTABLEKS                       R33 R34 K16 ["Y"]
      493 FASTCALL3                        VECTOR R32 R33 R26
      495 MOVE                             R34 R26
      496 GETIMPORT                        R31 K34 [Vector3.new]
      498 CALL                             R31 3 1
      499 SETTABLEKS                       R31 R30 K35 ["Size"]
      501 GETTABLEKS                       R31 R22 K46 ["CFrame"]
      503 GETIMPORT                        R33 K47 [CFrame.new]
      505 LOADN                            R34 0
      506 LOADN                            R35 0
      507 GETTABLEKS                       R40 R22 K35 ["Size"]
      509 GETTABLEKS                       R39 R40 K20 ["Z"]
      511 MINUS                            R38 R39
      512 MULK                             R37 R38 K45 [0.5]
      513 ADDK                             R39 R29 K45 [0.5]
      514 MUL                              R38 R39 R26
      515 ADD                              R36 R37 R38
      516 CALL                             R33 3 -1
      517 NAMECALL                         R31 R31 K48 ["ToWorldSpace"]
      519 CALL                             R31 -1 1
      520 SETTABLEKS                       R31 R30 K46 ["CFrame"]
      522 MOVE                             R31 R10
      523 GETTABLEKS                       R33 R30 K46 ["CFrame"]
      525 GETIMPORT                        R35 K47 [CFrame.new]
      527 LOADN                            R36 0
      528 LOADN                            R37 0
      529 MULK                             R38 R26 K45 [0.5]
      530 CALL                             R35 3 -1
      531 NAMECALL                         R33 R33 K48 ["ToWorldSpace"]
      533 CALL                             R33 -1 1
      534 GETTABLEKS                       R32 R33 K52 ["Position"]
      536 CALL                             R31 1 1
      537 GETTABLEKS                       R32 R30 K46 ["CFrame"]
      539 LOADN                            R34 0
      540 ADD                              R37 R31 R24
      541 MULK                             R36 R37 K45 [0.5]
      542 GETTABLEKS                       R39 R30 K46 ["CFrame"]
      544 GETTABLEKS                       R38 R39 K52 ["Position"]
      546 GETTABLEKS                       R37 R38 K16 ["Y"]
      548 SUB                              R35 R36 R37
      549 LOADN                            R36 0
      550 FASTCALL                         VECTOR ; [+2]
      551 GETIMPORT                        R33 K34 [Vector3.new]
      553 CALL                             R33 3 1
      554 ADD                              R32 R32 R33
      555 SETTABLEKS                       R32 R30 K46 ["CFrame"]
      557 GETTABLEKS                       R33 R30 K46 ["CFrame"]
      559 GETIMPORT                        R34 K47 [CFrame.new]
      561 LOADN                            R35 0
      562 LOADN                            R36 0
      563 LOADN                            R37 0
      564 LOADN                            R38 1
      565 LOADN                            R39 0
      566 LOADN                            R40 0
      567 LOADN                            R41 0
      568 LOADN                            R42 1
      569 SUB                              R44 R31 R24
      570 MULK                             R43 R44 K57 [0.25]
      571 LOADN                            R44 0
      572 LOADN                            R45 0
      573 LOADN                            R46 1
      574 CALL                             R34 12 1
      575 MUL                              R32 R33 R34
      576 SETTABLEKS                       R32 R30 K46 ["CFrame"]
      578 MOVE                             R24 R31
      579 FASTCALL2                        TABLE_INSERT R8 R30 ; [+5]
      581 MOVE                             R33 R8
      582 MOVE                             R34 R30
      583 GETIMPORT                        R32 K40 [table.insert]
      585 CALL                             R32 2 0
      586 FORNLOOP                         R27
      587 NAMECALL                         R23 R22 K58 ["Destroy"]
      589 CALL                             R23 1 0
      590 FORGLOOP                         R18 2 ; [-296]
      592 MOVE                             R18 R9
      593 LOADNIL                          R19
      594 LOADNIL                          R20
      595 FORGPREP                         R18
      596 GETTABLEKS                       R23 R22 K46 ["CFrame"]
      598 LOADN                            R25 0
      599 MOVE                             R27 R10
      600 GETTABLEKS                       R29 R22 K46 ["CFrame"]
      602 GETTABLEKS                       R28 R29 K52 ["Position"]
      604 CALL                             R27 1 1
      605 GETTABLEKS                       R30 R22 K46 ["CFrame"]
      607 GETTABLEKS                       R29 R30 K52 ["Position"]
      609 GETTABLEKS                       R28 R29 K16 ["Y"]
      611 SUB                              R26 R27 R28
      612 LOADN                            R27 0
      613 FASTCALL                         VECTOR ; [+2]
      614 GETIMPORT                        R24 K34 [Vector3.new]
      616 CALL                             R24 3 1
      617 ADD                              R23 R23 R24
      618 SETTABLEKS                       R23 R22 K46 ["CFrame"]
      620 FORGLOOP                         R18 2 ; [-25]
      622 JUMPIFNOT                        R3 ; [+33]
      623 GETIMPORT                        R17 K60 [TweenInfo.new]
      625 LOADN                            R18 1
      626 GETIMPORT                        R19 K64 [Enum.EasingStyle.Sine]
      628 GETIMPORT                        R20 K67 [Enum.EasingDirection.InOut]
      630 LOADN                            R21 255
      631 LOADB                            R22 1
      632 LOADN                            R23 0
      633 CALL                             R17 6 1
      634 NEWCLOSURE                       R18 P2
      635 CAPTURE                          UPVAL U4
      636 CAPTURE                          VAL R17
      637 CAPTURE                          VAL R7
      638 MOVE                             R19 R9
      639 LOADNIL                          R20
      640 LOADNIL                          R21
      641 FORGPREP                         R19
      642 MOVE                             R24 R18
      643 MOVE                             R25 R23
      644 CALL                             R24 1 0
      645 FORGLOOP                         R19 2 ; [-4]
      647 MOVE                             R19 R8
      648 LOADNIL                          R20
      649 LOADNIL                          R21
      650 FORGPREP                         R19
      651 MOVE                             R24 R18
      652 MOVE                             R25 R23
      653 CALL                             R24 1 0
      654 FORGLOOP                         R19 2 ; [-4]
      656 CLOSEUPVALS                      R8
      657 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["requestRegionAdornments"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R3 R2 K1 ["ToggleVisibilityEvent"]
        7 JUMPIFNOT                        R3 ; [+4]
        8 GETTABLEKS                       R3 R2 K1 ["ToggleVisibilityEvent"]
       10 SETTABLEKS                       R1 R3 K2 ["Value"]
       12 RETURN                           R0 0

PROTO_37:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 LOADK                            R4 K0 ["Model"]
        7 NAMECALL                         R2 R0 K1 ["IsA"]
        9 CALL                             R2 2 1
       10 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       12 LOADK                            R3 K2 ["Bad model check"]
       13 GETIMPORT                        R1 K4 [assert]
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K7 [CFrame.new]
       18 GETTABLEKS                       R3 R0 K8 ["WorldPivot"]
       20 GETTABLEKS                       R2 R3 K9 ["Position"]
       22 CALL                             R1 1 1
       23 SETTABLEKS                       R1 R0 K8 ["WorldPivot"]
       25 NAMECALL                         R1 R0 K10 ["GetBoundingBox"]
       27 CALL                             R1 1 1
       28 GETIMPORT                        R2 K7 [CFrame.new]
       30 GETTABLEKS                       R3 R1 K9 ["Position"]
       32 CALL                             R2 1 1
       33 SETTABLEKS                       R2 R0 K8 ["WorldPivot"]
       35 RETURN                           R0 0

PROTO_38:
        0 JUMPIF                           R0 ; [+8]
        1 GETIMPORT                        R2 K2 [CFrame.new]
        3 CALL                             R2 0 1
        4 FASTCALL                         VECTOR ; [+2]
        5 GETIMPORT                        R3 K4 [Vector3.new]
        7 CALL                             R3 0 1
        8 RETURN                           R2 2
        9 FASTCALL2K                       ASSERT R0 K5 ; [+5]
       11 MOVE                             R3 R0
       12 LOADK                            R4 K5 ["Luau"]
       13 GETIMPORT                        R2 K7 [assert]
       15 CALL                             R2 2 0
       16 GETIMPORT                        R2 K9 [Instance.new]
       18 LOADK                            R3 K10 ["Model"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R0 K11 ["Parent"]
       22 SETTABLEKS                       R2 R0 K11 ["Parent"]
       24 GETUPVAL                         R4 0
       25 MOVE                             R5 R2
       26 CALL                             R4 1 0
       27 NAMECALL                         R4 R2 K12 ["GetPivot"]
       29 CALL                             R4 1 1
       30 NAMECALL                         R5 R2 K13 ["GetExtentsSize"]
       32 CALL                             R5 1 1
       33 JUMPIFNOT                        R1 ; [+3]
       34 MOVE                             R6 R1
       35 MOVE                             R7 R2
       36 CALL                             R6 1 0
       37 SETTABLEKS                       R3 R0 K11 ["Parent"]
       39 NAMECALL                         R6 R2 K14 ["Destroy"]
       41 CALL                             R6 1 0
       42 RETURN                           R4 2

PROTO_39:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Message"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+3]
        9 NAMECALL                         R6 R5 K3 ["Destroy"]
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 ; [-9]
       14 RETURN                           R0 0

PROTO_40:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K2 ["Locked"]
        8 NAMECALL                         R1 R0 K3 ["GetDescendants"]
       10 CALL                             R1 1 3
       11 FORGPREP                         R1
       12 LOADK                            R8 K0 ["BasePart"]
       13 NAMECALL                         R6 R5 K1 ["IsA"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+3]
       17 LOADB                            R6 0
       18 SETTABLEKS                       R6 R5 K2 ["Locked"]
       20 FORGLOOP                         R1 2 ; [-9]
       22 RETURN                           R0 0

PROTO_41:
        0 LOADK                            R3 K0 ["Script"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K2 ["Enabled"]
        8 NAMECALL                         R1 R0 K3 ["GetDescendants"]
       10 CALL                             R1 1 3
       11 FORGPREP                         R1
       12 LOADK                            R8 K0 ["Script"]
       13 NAMECALL                         R6 R5 K1 ["IsA"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+3]
       17 LOADB                            R6 0
       18 SETTABLEKS                       R6 R5 K2 ["Enabled"]
       20 FORGLOOP                         R1 2 ; [-9]
       22 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getAssetAttributionInfo"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 LOADK                            R3 K1 ["OriginalName"]
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K2 ["Name"]
       10 NAMECALL                         R1 R1 K3 ["SetAttribute"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 2
       14 LOADK                            R3 K4 ["AssetId"]
       15 GETUPVAL                         R4 1
       16 NAMECALL                         R1 R1 K3 ["SetAttribute"]
       18 CALL                             R1 3 0
       19 JUMPIFNOT                        R0 ; [+37]
       20 GETUPVAL                         R1 2
       21 LOADK                            R3 K5 ["AssetName"]
       22 GETTABLEKS                       R4 R0 K2 ["Name"]
       24 NAMECALL                         R1 R1 K3 ["SetAttribute"]
       26 CALL                             R1 3 0
       27 GETTABLEKS                       R1 R0 K6 ["Creator"]
       29 JUMPIFNOT                        R1 ; [+27]
       30 GETUPVAL                         R1 2
       31 LOADK                            R3 K7 ["CreatorType"]
       32 GETTABLEKS                       R5 R0 K6 ["Creator"]
       34 GETTABLEKS                       R4 R5 K7 ["CreatorType"]
       36 NAMECALL                         R1 R1 K3 ["SetAttribute"]
       38 CALL                             R1 3 0
       39 GETUPVAL                         R1 2
       40 LOADK                            R3 K8 ["CreatorId"]
       41 GETTABLEKS                       R5 R0 K6 ["Creator"]
       43 GETTABLEKS                       R4 R5 K9 ["Id"]
       45 NAMECALL                         R1 R1 K3 ["SetAttribute"]
       47 CALL                             R1 3 0
       48 GETUPVAL                         R1 2
       49 LOADK                            R3 K10 ["CreatorName"]
       50 GETTABLEKS                       R5 R0 K6 ["Creator"]
       52 GETTABLEKS                       R4 R5 K2 ["Name"]
       54 NAMECALL                         R1 R1 K3 ["SetAttribute"]
       56 CALL                             R1 3 0
       57 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R1 ; [+2]
        2 GETIMPORT                        R0 K1 [tonumber]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+6]
        6 GETIMPORT                        R1 K3 [error]
        8 LOADK                            R3 K4 ["Invalid assetId: "]
        9 GETUPVAL                         R4 0
       10 CONCAT                           R2 R3 R4
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 LOADK                            R3 K5 ["AsyncRenamesUsedInLuaApps"]
       14 NAMECALL                         R1 R1 K6 ["GetEngineFeature"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+8]
       18 GETUPVAL                         R1 2
       19 MOVE                             R3 R0
       20 GETIMPORT                        R4 K10 [Enum.InfoType.Asset]
       22 NAMECALL                         R1 R1 K11 ["GetProductInfoAsync"]
       24 CALL                             R1 3 -1
       25 RETURN                           R1 -1
       26 GETUPVAL                         R1 2
       27 MOVE                             R3 R0
       28 GETIMPORT                        R4 K10 [Enum.InfoType.Asset]
       30 NAMECALL                         R1 R1 K12 ["GetProductInfo"]
       32 CALL                             R1 3 -1
       33 RETURN                           R1 -1

PROTO_44:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagConvAIAssetCreditAttributes is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+9]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 GETIMPORT                        R3 K5 [task.spawn]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 RETURN                           R0 0
       20 GETIMPORT                        R2 K7 [pcall]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CALL                             R2 1 2
       27 LOADK                            R6 K8 ["OriginalName"]
       28 GETTABLEKS                       R7 R0 K9 ["Name"]
       30 NAMECALL                         R4 R0 K10 ["SetAttribute"]
       32 CALL                             R4 3 0
       33 LOADK                            R6 K11 ["AssetId"]
       34 MOVE                             R7 R1
       35 NAMECALL                         R4 R0 K10 ["SetAttribute"]
       37 CALL                             R4 3 0
       38 JUMPIFNOT                        R2 ; [+30]
       39 LOADK                            R6 K12 ["AssetName"]
       40 GETTABLEKS                       R7 R3 K9 ["Name"]
       42 NAMECALL                         R4 R0 K10 ["SetAttribute"]
       44 CALL                             R4 3 0
       45 LOADK                            R6 K13 ["CreatorType"]
       46 GETTABLEKS                       R8 R3 K14 ["Creator"]
       48 GETTABLEKS                       R7 R8 K13 ["CreatorType"]
       50 NAMECALL                         R4 R0 K10 ["SetAttribute"]
       52 CALL                             R4 3 0
       53 LOADK                            R6 K15 ["CreatorId"]
       54 GETTABLEKS                       R8 R3 K14 ["Creator"]
       56 GETTABLEKS                       R7 R8 K16 ["Id"]
       58 NAMECALL                         R4 R0 K10 ["SetAttribute"]
       60 CALL                             R4 3 0
       61 LOADK                            R6 K17 ["CreatorName"]
       62 GETTABLEKS                       R8 R3 K14 ["Creator"]
       64 GETTABLEKS                       R7 R8 K9 ["Name"]
       66 NAMECALL                         R4 R0 K10 ["SetAttribute"]
       68 CALL                             R4 3 0
       69 RETURN                           R0 0

PROTO_45:
        0 FASTCALL1                        TONUMBER R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [tonumber]
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+2]
        6 GETTABLEKS                       R2 R0 K2 ["SourceAssetId"]
        8 SETTABLEKS                       R2 R0 K2 ["SourceAssetId"]
       10 GETUPVAL                         R2 0
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETUPVAL                         R2 1
       14 MOVE                             R3 R0
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 2
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+3]
       19 GETUPVAL                         R2 3
       20 MOVE                             R3 R0
       21 CALL                             R2 1 0
       22 GETUPVAL                         R2 4
       23 CALL                             R2 0 1
       24 JUMPIFNOT                        R2 ; [+10]
       25 GETUPVAL                         R3 5
       26 NAMECALL                         R3 R3 K3 ["GetSettings"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R2 R3 K4 ["DisableAssetScripts"]
       31 JUMPIFNOT                        R2 ; [+3]
       32 GETUPVAL                         R2 6
       33 MOVE                             R3 R0
       34 CALL                             R2 1 0
       35 GETUPVAL                         R2 7
       36 MOVE                             R3 R0
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 8
       39 CALL                             R2 0 1
       40 JUMPIFNOT                        R2 ; [+4]
       41 GETUPVAL                         R2 9
       42 MOVE                             R3 R0
       43 MOVE                             R4 R1
       44 CALL                             R2 2 0
       45 RETURN                           R0 1

PROTO_46:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["assetCacheMap"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["collapseObjectsIntoContainer should only be called when FFlagConvAIAddCommandSearchInsertAsset is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LOADB                            R1 0
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 LOADK                            R9 K3 ["PVInstance"]
       14 NAMECALL                         R7 R6 K4 ["IsA"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+2]
       18 LOADB                            R1 1
       19 JUMP                             ; [+2]
       20 FORGLOOP                         R2 2 ; [-8]
       22 JUMPIFNOT                        R1 ; [+13]
       23 GETIMPORT                        R2 K7 [Instance.new]
       25 LOADK                            R3 K8 ["Model"]
       26 CALL                             R2 1 1
       27 MOVE                             R3 R0
       28 LOADNIL                          R4
       29 LOADNIL                          R5
       30 FORGPREP                         R3
       31 SETTABLEKS                       R2 R7 K9 ["Parent"]
       33 FORGLOOP                         R3 2 ; [-3]
       35 RETURN                           R2 1
       36 LENGTH                           R2 R0
       37 LOADN                            R3 1
       38 JUMPIFNOTLT                      R3 R2 ; [+14]
       40 GETIMPORT                        R2 K7 [Instance.new]
       42 LOADK                            R3 K10 ["Folder"]
       43 CALL                             R2 1 1
       44 MOVE                             R3 R0
       45 LOADNIL                          R4
       46 LOADNIL                          R5
       47 FORGPREP                         R3
       48 SETTABLEKS                       R2 R7 K9 ["Parent"]
       50 FORGLOOP                         R3 2 ; [-3]
       52 RETURN                           R2 1
       53 GETTABLEN                        R2 R0 1
       54 RETURN                           R2 1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assetCacheMap"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+4]
        6 NAMECALL                         R1 R0 K1 ["Clone"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 LOADNIL                          R1
       11 GETUPVAL                         R2 2
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+28]
       14 GETUPVAL                         R2 3
       15 GETIMPORT                        R3 K5 [Enum.AssetType.Audio]
       17 JUMPIFNOTEQ                      R2 R3 ; [+12]
       19 GETIMPORT                        R2 K8 [Instance.new]
       21 LOADK                            R3 K9 ["Sound"]
       22 CALL                             R2 1 1
       23 LOADK                            R4 K10 ["rbxassetid://"]
       24 GETUPVAL                         R5 1
       25 CONCAT                           R3 R4 R5
       26 SETTABLEKS                       R3 R2 K11 ["SoundId"]
       28 MOVE                             R1 R2
       29 JUMP                             ; [+32]
       30 GETUPVAL                         R2 4
       31 LOADK                            R5 K10 ["rbxassetid://"]
       32 GETUPVAL                         R6 1
       33 CONCAT                           R4 R5 R6
       34 NAMECALL                         R2 R2 K12 ["GetObjectsAsync"]
       36 CALL                             R2 2 1
       37 GETUPVAL                         R3 5
       38 MOVE                             R4 R2
       39 CALL                             R3 1 1
       40 MOVE                             R1 R3
       41 JUMP                             ; [+20]
       42 GETUPVAL                         R2 4
       43 LOADK                            R5 K10 ["rbxassetid://"]
       44 GETUPVAL                         R6 1
       45 CONCAT                           R4 R5 R6
       46 NAMECALL                         R2 R2 K12 ["GetObjectsAsync"]
       48 CALL                             R2 2 1
       49 GETIMPORT                        R3 K8 [Instance.new]
       51 LOADK                            R4 K13 ["Model"]
       52 CALL                             R3 1 1
       53 MOVE                             R1 R3
       54 MOVE                             R3 R2
       55 LOADNIL                          R4
       56 LOADNIL                          R5
       57 FORGPREP                         R3
       58 SETTABLEKS                       R1 R7 K14 ["Parent"]
       60 FORGLOOP                         R3 2 ; [-3]
       62 LOADK                            R5 K15 ["Failed to load asset: "]
       63 GETUPVAL                         R6 1
       64 CONCAT                           R4 R5 R6
       65 FASTCALL2                        ASSERT R1 R4 ; [+4]
       67 MOVE                             R3 R1
       68 GETIMPORT                        R2 K17 [assert]
       70 CALL                             R2 2 0
       71 GETGLOBAL                        R2 K18 ["prepareInsertedAsset"]
       73 MOVE                             R3 R1
       74 GETUPVAL                         R4 1
       75 CALL                             R2 2 1
       76 MOVE                             R1 R2
       77 GETUPVAL                         R3 0
       78 GETTABLEKS                       R2 R3 K0 ["assetCacheMap"]
       80 GETUPVAL                         R3 1
       81 SETTABLE                         R1 R2 R3
       82 NAMECALL                         R2 R1 K1 ["Clone"]
       84 CALL                             R2 1 -1
       85 RETURN                           R2 -1

PROTO_49:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R2 1 2
       10 JUMPIF                           R2 ; [+5]
       11 GETIMPORT                        R4 K3 [warn]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 0
       15 RETURN                           R0 0
       16 RETURN                           R3 1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R1 ; [+2]
        2 GETIMPORT                        R0 K1 [tonumber]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+6]
        6 GETIMPORT                        R1 K3 [error]
        8 LOADK                            R3 K4 ["Invalid assetId: "]
        9 GETUPVAL                         R4 0
       10 CONCAT                           R2 R3 R4
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 LOADK                            R3 K5 ["AsyncRenamesUsedInLuaApps"]
       14 NAMECALL                         R1 R1 K6 ["GetEngineFeature"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+8]
       18 GETUPVAL                         R1 2
       19 MOVE                             R3 R0
       20 GETIMPORT                        R4 K10 [Enum.InfoType.Asset]
       22 NAMECALL                         R1 R1 K11 ["GetProductInfoAsync"]
       24 CALL                             R1 3 -1
       25 RETURN                           R1 -1
       26 GETUPVAL                         R1 2
       27 MOVE                             R3 R0
       28 GETIMPORT                        R4 K10 [Enum.InfoType.Asset]
       30 NAMECALL                         R1 R1 K12 ["GetProductInfo"]
       32 CALL                             R1 3 -1
       33 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["cachedAssetAttributionInfo"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["cachedAssetAttributionInfo"]
        8 GETTABLE                         R1 R2 R0
        9 RETURN                           R1 1
       10 GETIMPORT                        R1 K2 [pcall]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CALL                             R1 1 2
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K0 ["cachedAssetAttributionInfo"]
       21 SETTABLE                         R2 R3 R0
       22 RETURN                           R2 1
       23 LOADNIL                          R3
       24 RETURN                           R3 1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 LOADN                            R3 0
       10 GETIMPORT                        R4 K1 [pairs]
       12 NAMECALL                         R5 R0 K2 ["GetAttributes"]
       14 CALL                             R5 1 -1
       15 CALL                             R4 -1 3
       16 FORGPREP_NEXT                    R4
       17 JUMPIFLE                         R2 R3 ; [+5]
       19 SETTABLE                         R8 R1 R7
       20 ADDK                             R3 R3 K3 [1]
       21 FORGLOOP                         R4 2 ; [-5]
       23 RETURN                           R1 1

PROTO_53:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureSnapshotAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_54:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagConvAIMeshGen is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETIMPORT                        R1 K4 [pcall]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"commandsEnded"}]
        2 LOADNIL                          R1
        3 SETTABLEKS                       R1 R0 K0 ["commandsEnded"]
        5 GETIMPORT                        R1 K3 [script]
        7 LOADK                            R3 K4 ["StreamingServiceDispatcherRegistry"]
        8 NAMECALL                         R1 R1 K5 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R6 R1 K8 ["Src"]
       15 GETTABLEKS                       R5 R6 K9 ["Commands"]
       17 GETTABLEKS                       R4 R5 K10 ["BuilderCommands"]
       19 GETTABLEKS                       R3 R4 K11 ["BuilderNameMap"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K7 [require]
       24 GETTABLEKS                       R6 R1 K8 ["Src"]
       26 GETTABLEKS                       R5 R6 K12 ["Utils"]
       28 GETTABLEKS                       R4 R5 K13 ["CliAdapter"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K14 ["GetService"]
       33 LOADK                            R5 K15 ["ChatbotUIService"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K14 ["GetService"]
       37 LOADK                            R6 K16 ["CoreGui"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R3 K14 ["GetService"]
       41 LOADK                            R7 K17 ["Lighting"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R3 K14 ["GetService"]
       45 LOADK                            R8 K18 ["MarketplaceService"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R3 K14 ["GetService"]
       49 LOADK                            R9 K19 ["Selection"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R3 K14 ["GetService"]
       53 LOADK                            R10 K20 ["SoundService"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R3 K14 ["GetService"]
       57 LOADK                            R11 K21 ["StreamingService"]
       58 CALL                             R10 1 1
       59 GETTABLEKS                       R11 R3 K14 ["GetService"]
       61 LOADK                            R12 K22 ["TweenService"]
       62 CALL                             R11 1 1
       63 GETTABLEKS                       R12 R3 K14 ["GetService"]
       65 LOADK                            R13 K23 ["Workspace"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R14 K7 [require]
       69 GETTABLEKS                       R17 R1 K8 ["Src"]
       71 GETTABLEKS                       R16 R17 K24 ["Flags"]
       73 GETTABLEKS                       R15 R16 K25 ["FFlagAutoUnlockInsertedAssets"]
       75 CALL                             R14 1 1
       76 GETTABLEKS                       R13 R14 K26 ["Get"]
       78 GETIMPORT                        R15 K7 [require]
       80 GETTABLEKS                       R18 R1 K8 ["Src"]
       82 GETTABLEKS                       R17 R18 K24 ["Flags"]
       84 GETTABLEKS                       R16 R17 K27 ["FFlagCAPDMHierarchyIncludeAttributes"]
       86 CALL                             R15 1 1
       87 GETTABLEKS                       R14 R15 K26 ["Get"]
       89 GETIMPORT                        R16 K7 [require]
       91 GETTABLEKS                       R19 R1 K8 ["Src"]
       93 GETTABLEKS                       R18 R19 K24 ["Flags"]
       95 GETTABLEKS                       R17 R18 K28 ["FFlagConvAIAddCommandSearchInsertAsset"]
       97 CALL                             R16 1 1
       98 GETTABLEKS                       R15 R16 K26 ["Get"]
      100 GETIMPORT                        R17 K7 [require]
      102 GETTABLEKS                       R20 R1 K8 ["Src"]
      104 GETTABLEKS                       R19 R20 K24 ["Flags"]
      106 GETTABLEKS                       R18 R19 K29 ["FFlagConvAIAssetCreditAttributes"]
      108 CALL                             R17 1 1
      109 GETTABLEKS                       R16 R17 K26 ["Get"]
      111 GETIMPORT                        R18 K7 [require]
      113 GETTABLEKS                       R21 R1 K8 ["Src"]
      115 GETTABLEKS                       R20 R21 K24 ["Flags"]
      117 GETTABLEKS                       R19 R20 K30 ["FFlagConvAIFixOnlyInsertFirstVariation"]
      119 CALL                             R18 1 1
      120 GETTABLEKS                       R17 R18 K26 ["Get"]
      122 GETIMPORT                        R19 K7 [require]
      124 GETTABLEKS                       R22 R1 K8 ["Src"]
      126 GETTABLEKS                       R21 R22 K24 ["Flags"]
      128 GETTABLEKS                       R20 R21 K31 ["FFlagConvAIMenu_Attrib"]
      130 CALL                             R19 1 1
      131 GETTABLEKS                       R18 R19 K26 ["Get"]
      133 GETIMPORT                        R20 K7 [require]
      135 GETTABLEKS                       R23 R1 K8 ["Src"]
      137 GETTABLEKS                       R22 R23 K24 ["Flags"]
      139 GETTABLEKS                       R21 R22 K32 ["FFlagConvAIMeshGen"]
      141 CALL                             R20 1 1
      142 GETTABLEKS                       R19 R20 K26 ["Get"]
      144 GETIMPORT                        R21 K7 [require]
      146 GETTABLEKS                       R24 R1 K8 ["Src"]
      148 GETTABLEKS                       R23 R24 K24 ["Flags"]
      150 GETTABLEKS                       R22 R23 K33 ["FFlagConvoAIDisableAssetScripts"]
      152 CALL                             R21 1 1
      153 GETTABLEKS                       R20 R21 K26 ["Get"]
      155 GETIMPORT                        R22 K7 [require]
      157 GETTABLEKS                       R25 R1 K8 ["Src"]
      159 GETTABLEKS                       R24 R25 K24 ["Flags"]
      161 GETTABLEKS                       R23 R24 K34 ["FFlagFixCurrentCameraPlacement"]
      163 CALL                             R22 1 1
      164 GETTABLEKS                       R21 R22 K26 ["Get"]
      166 GETIMPORT                        R23 K7 [require]
      168 GETTABLEKS                       R26 R1 K8 ["Src"]
      170 GETTABLEKS                       R25 R26 K24 ["Flags"]
      172 GETTABLEKS                       R24 R25 K35 ["FFlagFixSSDRUtilsDelayIndexError"]
      174 CALL                             R23 1 1
      175 GETTABLEKS                       R22 R23 K26 ["Get"]
      177 GETIMPORT                        R24 K7 [require]
      179 GETTABLEKS                       R27 R1 K8 ["Src"]
      181 GETTABLEKS                       R26 R27 K24 ["Flags"]
      183 GETTABLEKS                       R25 R26 K36 ["FFlagRemoveHintsAndMessagesFromInsertion"]
      185 CALL                             R24 1 1
      186 GETTABLEKS                       R23 R24 K26 ["Get"]
      188 GETIMPORT                        R25 K7 [require]
      190 GETTABLEKS                       R28 R1 K8 ["Src"]
      192 GETTABLEKS                       R27 R28 K24 ["Flags"]
      194 GETTABLEKS                       R26 R27 K37 ["FIntCAPDMHierarchyMaxAttributesSize"]
      196 CALL                             R25 1 1
      197 GETTABLEKS                       R24 R25 K26 ["Get"]
      199 GETIMPORT                        R26 K7 [require]
      201 GETTABLEKS                       R29 R1 K8 ["Src"]
      203 GETTABLEKS                       R28 R29 K24 ["Flags"]
      205 GETTABLEKS                       R27 R28 K38 ["FIntMaxRegionFenceHeight"]
      207 CALL                             R26 1 1
      208 GETTABLEKS                       R25 R26 K26 ["Get"]
      210 GETIMPORT                        R27 K7 [require]
      212 GETTABLEKS                       R30 R1 K8 ["Src"]
      214 GETTABLEKS                       R29 R30 K24 ["Flags"]
      216 GETTABLEKS                       R28 R29 K39 ["FIntMaxRequestAreaSizeRatio"]
      218 CALL                             R27 1 1
      219 GETTABLEKS                       R26 R27 K26 ["Get"]
      221 GETTABLEKS                       R28 R3 K40 ["Globals"]
      223 GETTABLEKS                       R27 R28 K41 ["game"]
      225 DUPTABLE                         R28 K48 [{"BasePart", "Model", "Attachment", "Bone", "FaceInstance", "SurfaceGui"}]
      226 LOADK                            R29 K42 ["BasePart"]
      227 SETTABLEKS                       R29 R28 K42 ["BasePart"]
      229 LOADK                            R29 K43 ["Model"]
      230 SETTABLEKS                       R29 R28 K43 ["Model"]
      232 LOADK                            R29 K44 ["Attachment"]
      233 SETTABLEKS                       R29 R28 K44 ["Attachment"]
      235 LOADK                            R29 K45 ["Bone"]
      236 SETTABLEKS                       R29 R28 K45 ["Bone"]
      238 LOADK                            R29 K46 ["FaceInstance"]
      239 SETTABLEKS                       R29 R28 K46 ["FaceInstance"]
      241 LOADK                            R29 K46 ["FaceInstance"]
      242 SETTABLEKS                       R29 R28 K47 ["SurfaceGui"]
      244 DUPCLOSURE                       R29 K49 [PROTO_0]
      245 CAPTURE                          VAL R28
      246 DUPCLOSURE                       R30 K50 [PROTO_1]
      247 CAPTURE                          VAL R28
      248 CAPTURE                          VAL R29
      249 CAPTURE                          VAL R30
      250 DUPCLOSURE                       R31 K51 [PROTO_2]
      251 CAPTURE                          VAL R30
      252 DUPCLOSURE                       R32 K52 [PROTO_3]
      253 DUPCLOSURE                       R33 K53 [PROTO_4]
      254 CAPTURE                          VAL R12
      255 DUPCLOSURE                       R34 K54 [PROTO_5]
      256 CAPTURE                          VAL R31
      257 CAPTURE                          VAL R33
      258 SETTABLEKS                       R34 R0 K55 ["getPositionAndSize"]
      260 NEWTABLE                         R34 0 0
      262 NEWTABLE                         R35 0 0
      264 DUPCLOSURE                       R36 K56 [PROTO_9]
      265 CAPTURE                          VAL R35
      266 CAPTURE                          VAL R34
      267 CAPTURE                          VAL R4
      268 CAPTURE                          VAL R2
      269 CAPTURE                          VAL R22
      270 CAPTURE                          VAL R36
      271 DUPCLOSURE                       R37 K57 [PROTO_10]
      272 DUPCLOSURE                       R38 K58 [PROTO_11]
      273 CAPTURE                          VAL R21
      274 CAPTURE                          VAL R37
      275 CAPTURE                          VAL R26
      276 SETTABLEKS                       R38 R0 K59 ["getCurrentLookingCFrame"]
      278 DUPCLOSURE                       R38 K60 [PROTO_12]
      279 CAPTURE                          VAL R2
      280 CAPTURE                          VAL R21
      281 CAPTURE                          VAL R0
      282 CAPTURE                          VAL R37
      283 CAPTURE                          VAL R26
      284 SETTABLEKS                       R38 R0 K61 ["getRequestCFrame"]
      286 DUPCLOSURE                       R38 K62 [PROTO_14]
      287 SETGLOBAL                        R38 K63 ["toHexy"]
      289 DUPCLOSURE                       R38 K64 [PROTO_15]
      290 CAPTURE                          VAL R17
      291 SETTABLEKS                       R38 R0 K65 ["getChatBulletId"]
      293 DUPCLOSURE                       R38 K66 [PROTO_17]
      294 CAPTURE                          VAL R17
      295 CAPTURE                          VAL R0
      296 CAPTURE                          VAL R2
      297 CAPTURE                          VAL R4
      298 CAPTURE                          VAL R36
      299 CAPTURE                          VAL R10
      300 SETTABLEKS                       R38 R0 K67 ["modifyChatWithInstanceLink"]
      302 DUPCLOSURE                       R38 K68 [PROTO_18]
      303 CAPTURE                          VAL R0
      304 SETTABLEKS                       R38 R0 K69 ["destroy"]
      306 DUPCLOSURE                       R38 K70 [PROTO_19]
      307 CAPTURE                          VAL R4
      308 SETTABLEKS                       R38 R0 K71 ["streamText"]
      310 DUPCLOSURE                       R38 K72 [PROTO_20]
      311 CAPTURE                          VAL R2
      312 SETTABLEKS                       R38 R0 K73 ["endConstraintVisualization"]
      314 DUPCLOSURE                       R38 K74 [PROTO_21]
      315 SETTABLEKS                       R38 R0 K75 ["getGroundLevelAt"]
      317 DUPCLOSURE                       R38 K76 [PROTO_22]
      318 CAPTURE                          VAL R2
      319 SETGLOBAL                        R38 K77 ["getDraftModeModel"]
      321 DUPCLOSURE                       R38 K78 [PROTO_25]
      322 CAPTURE                          VAL R2
      323 CAPTURE                          VAL R11
      324 SETTABLEKS                       R38 R0 K79 ["enableDraftMode"]
      326 DUPCLOSURE                       R38 K80 [PROTO_26]
      327 CAPTURE                          VAL R2
      328 SETTABLEKS                       R38 R0 K81 ["disableDraftMode"]
      330 DUPCLOSURE                       R38 K82 [PROTO_27]
      331 CAPTURE                          VAL R2
      332 SETTABLEKS                       R38 R0 K83 ["isDraftModeEnabled"]
      334 DUPCLOSURE                       R38 K84 [PROTO_29]
      335 CAPTURE                          VAL R15
      336 CAPTURE                          VAL R8
      337 CAPTURE                          VAL R9
      338 CAPTURE                          VAL R6
      339 DUPCLOSURE                       R39 K85 [PROTO_30]
      340 CAPTURE                          VAL R2
      341 CAPTURE                          VAL R15
      342 CAPTURE                          VAL R38
      343 SETTABLEKS                       R39 R0 K86 ["getRequestParent"]
      345 DUPCLOSURE                       R39 K87 [PROTO_35]
      346 CAPTURE                          VAL R2
      347 CAPTURE                          VAL R5
      348 CAPTURE                          VAL R25
      349 CAPTURE                          VAL R0
      350 CAPTURE                          VAL R11
      351 SETTABLEKS                       R39 R0 K88 ["addConstraintVisualization"]
      353 DUPCLOSURE                       R39 K89 [PROTO_36]
      354 CAPTURE                          VAL R2
      355 SETTABLEKS                       R39 R0 K90 ["startConstraintVisualization"]
      357 DUPCLOSURE                       R39 K91 [PROTO_37]
      358 DUPCLOSURE                       R40 K92 [PROTO_38]
      359 CAPTURE                          VAL R39
      360 SETTABLEKS                       R40 R0 K93 ["getWorldBoundingBox"]
      362 DUPCLOSURE                       R40 K94 [PROTO_39]
      363 DUPCLOSURE                       R41 K95 [PROTO_40]
      364 DUPCLOSURE                       R42 K96 [PROTO_41]
      365 DUPCLOSURE                       R43 K97 [PROTO_44]
      366 CAPTURE                          VAL R16
      367 CAPTURE                          VAL R18
      368 CAPTURE                          VAL R0
      369 CAPTURE                          VAL R27
      370 CAPTURE                          VAL R7
      371 DUPCLOSURE                       R44 K98 [PROTO_45]
      372 CAPTURE                          VAL R23
      373 CAPTURE                          VAL R40
      374 CAPTURE                          VAL R13
      375 CAPTURE                          VAL R41
      376 CAPTURE                          VAL R20
      377 CAPTURE                          VAL R4
      378 CAPTURE                          VAL R42
      379 CAPTURE                          VAL R39
      380 CAPTURE                          VAL R16
      381 CAPTURE                          VAL R43
      382 SETGLOBAL                        R44 K99 ["prepareInsertedAsset"]
      384 DUPCLOSURE                       R44 K100 [PROTO_46]
      385 CAPTURE                          VAL R2
      386 SETTABLEKS                       R44 R0 K101 ["isAssetCached"]
      388 DUPCLOSURE                       R44 K102 [PROTO_47]
      389 CAPTURE                          VAL R15
      390 DUPCLOSURE                       R45 K103 [PROTO_49]
      391 CAPTURE                          VAL R2
      392 CAPTURE                          VAL R15
      393 CAPTURE                          VAL R27
      394 CAPTURE                          VAL R44
      395 SETTABLEKS                       R45 R0 K104 ["loadAssetAsync"]
      397 DUPCLOSURE                       R45 K105 [PROTO_51]
      398 CAPTURE                          VAL R2
      399 CAPTURE                          VAL R27
      400 CAPTURE                          VAL R7
      401 SETTABLEKS                       R45 R0 K106 ["getAssetAttributionInfo"]
      403 DUPCLOSURE                       R45 K107 [PROTO_52]
      404 CAPTURE                          VAL R14
      405 CAPTURE                          VAL R24
      406 SETTABLEKS                       R45 R0 K108 ["getInstanceAttributes"]
      408 DUPCLOSURE                       R45 K109 [PROTO_54]
      409 CAPTURE                          VAL R19
      410 SETTABLEKS                       R45 R0 K110 ["captureSnapshot"]
      412 RETURN                           R0 1
