PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 DIV                              R1 R2 R3
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R2 1
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 1
        6 FASTCALL2                        RAWGET R2 R0 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R1 K1 [rawget]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+16]
       10 GETUPVAL                         R3 2
       11 JUMPIFNOT                        R3 ; [+3]
       12 GETUPVAL                         R3 3
       13 GETTABLE                         R2 R3 R0
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R3 3
       16 FASTCALL2                        RAWGET R3 R0 ; [+4]
       18 MOVE                             R4 R0
       19 GETIMPORT                        R2 K1 [rawget]
       21 CALL                             R2 2 1
       22 JUMPIFNOTEQKNIL                  R2 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+65]
        4 LOADNIL                          R1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+21]
        9 GETUPVAL                         R2 2
       10 GETTABLE                         R1 R2 R0
       11 GETUPVAL                         R2 3
       12 JUMPIFNOTEQKS                    R2 K0 ["Image"] ; [+4]
       14 GETTABLEKS                       R2 R1 K1 ["assetId"]
       16 RETURN                           R2 1
       17 GETUPVAL                         R2 3
       18 JUMPIFNOTEQKS                    R2 K2 ["AspectRatio"] ; [+9]
       20 GETTABLEKS                       R3 R1 K3 ["size"]
       22 GETTABLEKS                       R4 R3 K4 ["X"]
       24 GETTABLEKS                       R5 R3 K5 ["Y"]
       26 DIV                              R2 R4 R5
       27 RETURN                           R2 1
       28 LOADNIL                          R2
       29 RETURN                           R2 1
       30 GETUPVAL                         R2 4
       31 GETTABLEKS                       R2 R2 K6 ["FoundationImageSafeLookup"]
       33 JUMPIFNOT                        R2 ; [+13]
       34 GETUPVAL                         R2 5
       35 JUMPIFNOT                        R2 ; [+3]
       36 GETUPVAL                         R2 6
       37 GETTABLE                         R1 R2 R0
       38 JUMP                             ; [+10]
       39 GETUPVAL                         R2 6
       40 FASTCALL2                        RAWGET R2 R0 ; [+4]
       42 MOVE                             R3 R0
       43 GETIMPORT                        R1 K8 [rawget]
       45 CALL                             R1 2 1
       46 JUMP                             ; [+2]
       47 GETUPVAL                         R2 6
       48 GETTABLE                         R1 R2 R0
       49 GETUPVAL                         R3 3
       50 JUMPIFNOTEQKS                    R3 K2 ["AspectRatio"] ; [+3]
       52 GETUPVAL                         R2 7
       53 RETURN                           R2 1
       54 JUMPIFNOT                        R1 ; [+3]
       55 GETUPVAL                         R3 3
       56 GETTABLE                         R2 R1 R3
       57 RETURN                           R2 1
       58 GETUPVAL                         R3 4
       59 GETTABLEKS                       R3 R3 K6 ["FoundationImageSafeLookup"]
       61 JUMPIFNOT                        R3 ; [+5]
       62 GETUPVAL                         R3 3
       63 JUMPIFNOTEQKS                    R3 K0 ["Image"] ; [+3]
       65 MOVE                             R2 R0
       66 RETURN                           R2 1
       67 LOADNIL                          R2
       68 RETURN                           R2 1
       69 GETUPVAL                         R1 3
       70 JUMPIFNOTEQKS                    R1 K0 ["Image"] ; [+2]
       72 RETURN                           R0 1
       73 GETUPVAL                         R1 3
       74 JUMPIFNOTEQKS                    R1 K9 ["ImageRectOffset"] ; [+11]
       76 GETUPVAL                         R1 8
       77 GETTABLEKS                       R1 R1 K10 ["imageRect"]
       79 JUMPIFNOT                        R1 ; [+6]
       80 GETUPVAL                         R1 8
       81 GETTABLEKS                       R1 R1 K10 ["imageRect"]
       83 GETTABLEKS                       R1 R1 K11 ["offset"]
       85 RETURN                           R1 1
       86 GETUPVAL                         R1 3
       87 JUMPIFNOTEQKS                    R1 K12 ["ImageRectSize"] ; [+11]
       89 GETUPVAL                         R1 8
       90 GETTABLEKS                       R1 R1 K10 ["imageRect"]
       92 JUMPIFNOT                        R1 ; [+6]
       93 GETUPVAL                         R1 8
       94 GETTABLEKS                       R1 R1 K10 ["imageRect"]
       96 GETTABLEKS                       R1 R1 K3 ["size"]
       98 RETURN                           R1 1
       99 LOADNIL                          R1
      100 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Image"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U0
       13 NAMECALL                         R1 R1 K1 ["map"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Image"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["imageRect"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["imageRect"]
       10 GETTABLEKS                       R1 R1 K2 ["offset"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K1 ["imageRect"]
       17 JUMPIFNOT                        R3 ; [+6]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["imageRect"]
       21 GETTABLEKS                       R2 R2 K3 ["size"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 GETUPVAL                         R3 1
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K4 ["isBinding"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K0 ["Image"]
       32 CALL                             R4 1 1
       33 JUMPIFNOT                        R4 ; [+82]
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U1
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K0 ["Image"]
       46 LOADK                            R8 K5 ["AspectRatio"]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R8
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          UPVAL U7
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          UPVAL U0
       57 NAMECALL                         R5 R5 K6 ["map"]
       59 CALL                             R5 2 1
       60 MOVE                             R3 R5
       61 GETUPVAL                         R5 0
       62 GETTABLEKS                       R5 R5 K0 ["Image"]
       64 LOADK                            R8 K0 ["Image"]
       65 NEWCLOSURE                       R7 P1
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R8
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          UPVAL U7
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          UPVAL U0
       75 NAMECALL                         R5 R5 K6 ["map"]
       77 CALL                             R5 2 1
       78 MOVE                             R0 R5
       79 GETUPVAL                         R5 0
       80 GETTABLEKS                       R5 R5 K0 ["Image"]
       82 LOADK                            R8 K7 ["ImageRectOffset"]
       83 NEWCLOSURE                       R7 P1
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          VAL R8
       88 CAPTURE                          UPVAL U6
       89 CAPTURE                          UPVAL U7
       90 CAPTURE                          UPVAL U8
       91 CAPTURE                          UPVAL U1
       92 CAPTURE                          UPVAL U0
       93 NAMECALL                         R5 R5 K6 ["map"]
       95 CALL                             R5 2 1
       96 MOVE                             R1 R5
       97 GETUPVAL                         R5 0
       98 GETTABLEKS                       R5 R5 K0 ["Image"]
      100 LOADK                            R8 K8 ["ImageRectSize"]
      101 NEWCLOSURE                       R7 P1
      102 CAPTURE                          UPVAL U3
      103 CAPTURE                          UPVAL U4
      104 CAPTURE                          UPVAL U5
      105 CAPTURE                          VAL R8
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          UPVAL U7
      108 CAPTURE                          UPVAL U8
      109 CAPTURE                          UPVAL U1
      110 CAPTURE                          UPVAL U0
      111 NAMECALL                         R5 R5 K6 ["map"]
      113 CALL                             R5 2 1
      114 MOVE                             R2 R5
      115 RETURN                           R0 4
      116 GETUPVAL                         R5 0
      117 GETTABLEKS                       R5 R5 K0 ["Image"]
      119 FASTCALL1                        TYPEOF R5 ; [+2]
      120 GETIMPORT                        R4 K10 [typeof]
      122 CALL                             R4 1 1
      123 JUMPIFNOTEQKS                    R4 K11 ["string"] ; [+61]
      125 GETUPVAL                         R4 3
      126 GETUPVAL                         R5 0
      127 GETTABLEKS                       R5 R5 K0 ["Image"]
      129 CALL                             R4 1 1
      130 JUMPIFNOT                        R4 ; [+54]
      131 GETUPVAL                         R4 4
      132 GETUPVAL                         R5 0
      133 GETTABLEKS                       R5 R5 K0 ["Image"]
      135 CALL                             R4 1 1
      136 JUMPIFNOT                        R4 ; [+15]
      137 GETUPVAL                         R5 5
      138 GETUPVAL                         R6 0
      139 GETTABLEKS                       R6 R6 K0 ["Image"]
      141 GETTABLE                         R4 R5 R6
      142 GETTABLEKS                       R0 R4 K12 ["assetId"]
      144 GETTABLEKS                       R5 R4 K3 ["size"]
      146 GETTABLEKS                       R6 R5 K13 ["X"]
      148 GETTABLEKS                       R7 R5 K14 ["Y"]
      150 DIV                              R3 R6 R7
      151 RETURN                           R0 4
      152 GETUPVAL                         R5 6
      153 GETTABLEKS                       R5 R5 K15 ["FoundationImageSafeLookup"]
      155 JUMPIFNOT                        R5 ; [+17]
      156 GETUPVAL                         R5 0
      157 GETTABLEKS                       R5 R5 K0 ["Image"]
      159 GETUPVAL                         R6 7
      160 JUMPIFNOT                        R6 ; [+3]
      161 GETUPVAL                         R6 8
      162 GETTABLE                         R4 R6 R5
      163 JUMP                             ; [+14]
      164 GETUPVAL                         R7 8
      165 FASTCALL2                        RAWGET R7 R5 ; [+4]
      167 MOVE                             R8 R5
      168 GETIMPORT                        R6 K17 [rawget]
      170 CALL                             R6 2 1
      171 MOVE                             R4 R6
      172 JUMP                             ; [+5]
      173 GETUPVAL                         R5 8
      174 GETUPVAL                         R6 0
      175 GETTABLEKS                       R6 R6 K0 ["Image"]
      177 GETTABLE                         R4 R5 R6
      178 JUMPIFNOT                        R4 ; [+6]
      179 GETTABLEKS                       R0 R4 K0 ["Image"]
      181 GETTABLEKS                       R1 R4 K7 ["ImageRectOffset"]
      183 GETTABLEKS                       R2 R4 K8 ["ImageRectSize"]
      185 RETURN                           R0 4

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationImageSafeLookup"]
        3 JUMPIFNOT                        R2 ; [+27]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+2]
        8 LOADB                            R1 0
        9 JUMP                             ; [+24]
       10 GETUPVAL                         R1 2
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIF                           R1 ; [+20]
       14 GETUPVAL                         R3 3
       15 JUMPIFNOT                        R3 ; [+3]
       16 GETUPVAL                         R3 4
       17 GETTABLE                         R2 R3 R0
       18 JUMP                             ; [+7]
       19 GETUPVAL                         R3 4
       20 FASTCALL2                        RAWGET R3 R0 ; [+4]
       22 MOVE                             R4 R0
       23 GETIMPORT                        R2 K2 [rawget]
       25 CALL                             R2 2 1
       26 JUMPIFNOTEQKNIL                  R2 ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 JUMP                             ; [+3]
       31 GETUPVAL                         R1 1
       32 MOVE                             R2 R0
       33 CALL                             R1 1 1
       34 JUMPIFNOT                        R1 ; [+13]
       35 GETUPVAL                         R1 5
       36 GETUPVAL                         R2 6
       37 GETTABLEKS                       R2 R2 K3 ["slice"]
       39 GETTABLEKS                       R2 R2 K4 ["center"]
       41 GETUPVAL                         R3 6
       42 GETTABLEKS                       R3 R3 K3 ["slice"]
       44 GETTABLEKS                       R3 R3 K5 ["scale"]
       46 CALL                             R1 2 -1
       47 RETURN                           R1 -1
       48 GETUPVAL                         R1 6
       49 GETTABLEKS                       R1 R1 K3 ["slice"]
       51 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["center"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["scale"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 LOADB                            R3 1
        5 GETTABLEKS                       R4 R2 K0 ["onStateChanged"]
        7 JUMPIFNOTEQKNIL                  R4 ; [+12]
        9 LOADB                            R3 1
       10 GETTABLEKS                       R4 R2 K1 ["onActivated"]
       12 JUMPIFNOTEQKNIL                  R4 ; [+7]
       14 GETTABLEKS                       R4 R2 K2 ["onSecondaryActivated"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 GETTABLEKS                       R4 R2 K3 ["aspectRatio"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          UPVAL U9
       35 NEWTABLE                         R7 0 4
       37 GETTABLEKS                       R9 R2 K5 ["Image"]
       39 GETTABLEKS                       R10 R2 K6 ["imageRect"]
       41 MOVE                             R11 R4
       42 GETUPVAL                         R12 9
       43 SETLIST                          R7 R9 4 [1]
       45 CALL                             R5 2 4
       46 LOADNIL                          R9
       47 LOADNIL                          R10
       48 GETTABLEKS                       R11 R2 K7 ["ScaleType"]
       50 GETTABLEKS                       R12 R2 K8 ["slice"]
       52 JUMPIFNOT                        R12 ; [+103]
       53 GETUPVAL                         R12 3
       54 GETTABLEKS                       R12 R12 K9 ["isBinding"]
       56 GETTABLEKS                       R13 R2 K5 ["Image"]
       58 CALL                             R12 1 1
       59 JUMPIFNOT                        R12 ; [+24]
       60 GETTABLEKS                       R12 R2 K5 ["Image"]
       62 NEWCLOSURE                       R14 P1
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          UPVAL U9
       68 CAPTURE                          UPVAL U10
       69 CAPTURE                          VAL R2
       70 NAMECALL                         R12 R12 K10 ["map"]
       72 CALL                             R12 2 1
       73 DUPCLOSURE                       R15 K11 [PROTO_7]
       74 NAMECALL                         R13 R12 K10 ["map"]
       76 CALL                             R13 2 1
       77 MOVE                             R9 R13
       78 DUPCLOSURE                       R15 K12 [PROTO_8]
       79 NAMECALL                         R13 R12 K10 ["map"]
       81 CALL                             R13 2 1
       82 MOVE                             R10 R13
       83 JUMP                             ; [+70]
       84 GETTABLEKS                       R13 R2 K5 ["Image"]
       86 FASTCALL1                        TYPEOF R13 ; [+2]
       87 GETIMPORT                        R12 K14 [typeof]
       89 CALL                             R12 1 1
       90 JUMPIFNOTEQKS                    R12 K15 ["string"] ; [+63]
       92 GETUPVAL                         R13 7
       93 GETTABLEKS                       R13 R13 K16 ["FoundationImageSafeLookup"]
       95 JUMPIFNOT                        R13 ; [+30]
       96 GETTABLEKS                       R13 R2 K5 ["Image"]
       98 GETUPVAL                         R14 4
       99 MOVE                             R15 R13
      100 CALL                             R14 1 1
      101 JUMPIF                           R14 ; [+2]
      102 LOADB                            R12 0
      103 JUMP                             ; [+26]
      104 GETUPVAL                         R14 5
      105 MOVE                             R15 R13
      106 CALL                             R14 1 1
      107 MOVE                             R12 R14
      108 JUMPIF                           R12 ; [+21]
      109 GETUPVAL                         R15 8
      110 JUMPIFNOT                        R15 ; [+3]
      111 GETUPVAL                         R15 9
      112 GETTABLE                         R14 R15 R13
      113 JUMP                             ; [+7]
      114 GETUPVAL                         R15 9
      115 FASTCALL2                        RAWGET R15 R13 ; [+4]
      117 MOVE                             R16 R13
      118 GETIMPORT                        R14 K18 [rawget]
      120 CALL                             R14 2 1
      121 JUMPIFNOTEQKNIL                  R14 ; [+2]
      123 LOADB                            R12 0 +1
      124 LOADB                            R12 1
      125 JUMP                             ; [+4]
      126 GETUPVAL                         R12 4
      127 GETTABLEKS                       R13 R2 K5 ["Image"]
      129 CALL                             R12 1 1
      130 JUMPIFNOT                        R12 ; [+15]
      131 GETUPVAL                         R12 10
      132 GETTABLEKS                       R13 R2 K8 ["slice"]
      134 GETTABLEKS                       R13 R13 K19 ["center"]
      136 GETTABLEKS                       R14 R2 K8 ["slice"]
      138 GETTABLEKS                       R14 R14 K20 ["scale"]
      140 CALL                             R12 2 1
      141 GETTABLEKS                       R9 R12 K19 ["center"]
      143 GETTABLEKS                       R10 R12 K20 ["scale"]
      145 JUMP                             ; [+8]
      146 GETTABLEKS                       R12 R2 K8 ["slice"]
      148 GETTABLEKS                       R9 R12 K19 ["center"]
      150 GETTABLEKS                       R12 R2 K8 ["slice"]
      152 GETTABLEKS                       R10 R12 K20 ["scale"]
      154 GETIMPORT                        R11 K23 [Enum.ScaleType.Slice]
      156 SETTABLEKS                       R8 R2 K3 ["aspectRatio"]
      158 GETTABLEKS                       R13 R2 K24 ["backgroundStyle"]
      160 JUMPIFEQKNIL                     R13 ; [+3]
      162 LOADK                            R12 K25 ["gui-object-defaults x-default-transparency"]
      163 JUMP                             ; [+1]
      164 LOADK                            R12 K26 ["gui-object-defaults"]
      165 GETUPVAL                         R13 11
      166 GETTABLEKS                       R14 R2 K27 ["tag"]
      168 MOVE                             R15 R12
      169 CALL                             R13 2 1
      170 GETUPVAL                         R14 12
      171 MOVE                             R15 R13
      172 CALL                             R14 1 1
      173 JUMPIFNOT                        R3 ; [+2]
      174 LOADK                            R15 K28 ["ImageButton"]
      175 JUMP                             ; [+1]
      176 LOADK                            R15 K29 ["ImageLabel"]
      177 GETUPVAL                         R16 13
      178 MOVE                             R17 R2
      179 NEWTABLE                         R18 16 0
      181 JUMPIFNOTEQKS                    R15 K28 ["ImageButton"] ; [+4]
      183 GETTABLEKS                       R19 R2 K30 ["AutoButtonColor"]
      185 JUMP                             ; [+1]
      186 LOADNIL                          R19
      187 SETTABLEKS                       R19 R18 K30 ["AutoButtonColor"]
      189 SETTABLEKS                       R5 R18 K5 ["Image"]
      191 GETTABLEKS                       R20 R2 K31 ["imageStyle"]
      193 JUMPIFNOT                        R20 ; [+6]
      194 GETUPVAL                         R19 14
      195 GETTABLEKS                       R20 R2 K31 ["imageStyle"]
      197 LOADK                            R21 K32 ["Color3"]
      198 CALL                             R19 2 1
      199 JUMP                             ; [+1]
      200 LOADNIL                          R19
      201 SETTABLEKS                       R19 R18 K33 ["ImageColor3"]
      203 GETTABLEKS                       R20 R2 K31 ["imageStyle"]
      205 JUMPIFNOT                        R20 ; [+6]
      206 GETUPVAL                         R19 14
      207 GETTABLEKS                       R20 R2 K31 ["imageStyle"]
      209 LOADK                            R21 K34 ["Transparency"]
      210 CALL                             R19 2 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R19
      213 SETTABLEKS                       R19 R18 K35 ["ImageTransparency"]
      215 SETTABLEKS                       R6 R18 K36 ["ImageRectOffset"]
      217 SETTABLEKS                       R7 R18 K37 ["ImageRectSize"]
      219 GETTABLEKS                       R19 R2 K38 ["ResampleMode"]
      221 SETTABLEKS                       R19 R18 K38 ["ResampleMode"]
      223 SETTABLEKS                       R11 R18 K7 ["ScaleType"]
      225 SETTABLEKS                       R9 R18 K39 ["SliceCenter"]
      227 SETTABLEKS                       R10 R18 K40 ["SliceScale"]
      229 GETTABLEKS                       R19 R2 K41 ["TileSize"]
      231 SETTABLEKS                       R19 R18 K41 ["TileSize"]
      233 SETTABLEKS                       R1 R18 K42 ["ref"]
      235 GETUPVAL                         R19 2
      236 GETTABLEKS                       R19 R19 K43 ["Tag"]
      238 SETTABLE                         R14 R18 R19
      239 CALL                             R16 2 1
      240 GETUPVAL                         R17 7
      241 GETTABLEKS                       R17 R17 K44 ["FoundationBuildingBlocksRemoveDashUnion"]
      243 JUMPIFNOT                        R17 ; [+39]
      244 MOVE                             R17 R15
      245 JUMPIFNOT                        R3 ; [+27]
      246 GETUPVAL                         R17 15
      247 SETTABLEKS                       R15 R16 K45 ["component"]
      249 GETTABLEKS                       R18 R2 K1 ["onActivated"]
      251 SETTABLEKS                       R18 R16 K1 ["onActivated"]
      253 GETTABLEKS                       R18 R2 K2 ["onSecondaryActivated"]
      255 SETTABLEKS                       R18 R16 K2 ["onSecondaryActivated"]
      257 GETTABLEKS                       R18 R2 K0 ["onStateChanged"]
      259 SETTABLEKS                       R18 R16 K0 ["onStateChanged"]
      261 GETTABLEKS                       R18 R2 K46 ["stateLayer"]
      263 SETTABLEKS                       R18 R16 K46 ["stateLayer"]
      265 GETTABLEKS                       R18 R2 K47 ["isDisabled"]
      267 SETTABLEKS                       R18 R16 K47 ["isDisabled"]
      269 GETTABLEKS                       R18 R2 K48 ["cursor"]
      271 SETTABLEKS                       R18 R16 K48 ["cursor"]
      273 GETUPVAL                         R18 2
      274 GETTABLEKS                       R18 R18 K49 ["createElement"]
      276 MOVE                             R19 R17
      277 MOVE                             R20 R16
      278 GETUPVAL                         R21 16
      279 MOVE                             R22 R2
      280 CALL                             R21 1 -1
      281 CALL                             R18 -1 -1
      282 RETURN                           R18 -1
      283 JUMPIFNOT                        R3 ; [+2]
      284 GETUPVAL                         R17 15
      285 JUMP                             ; [+1]
      286 MOVE                             R17 R15
      287 DUPTABLE                         R18 K50 [{"component", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "isDisabled", "cursor"}]
      288 SETTABLEKS                       R15 R18 K45 ["component"]
      290 GETTABLEKS                       R19 R2 K1 ["onActivated"]
      292 SETTABLEKS                       R19 R18 K1 ["onActivated"]
      294 GETTABLEKS                       R19 R2 K2 ["onSecondaryActivated"]
      296 SETTABLEKS                       R19 R18 K2 ["onSecondaryActivated"]
      298 GETTABLEKS                       R19 R2 K0 ["onStateChanged"]
      300 SETTABLEKS                       R19 R18 K0 ["onStateChanged"]
      302 GETTABLEKS                       R19 R2 K46 ["stateLayer"]
      304 SETTABLEKS                       R19 R18 K46 ["stateLayer"]
      306 GETTABLEKS                       R19 R2 K47 ["isDisabled"]
      308 SETTABLEKS                       R19 R18 K47 ["isDisabled"]
      310 GETTABLEKS                       R19 R2 K48 ["cursor"]
      312 SETTABLEKS                       R19 R18 K48 ["cursor"]
      314 JUMPIFNOT                        R3 ; [+7]
      315 GETUPVAL                         R19 17
      316 GETTABLEKS                       R19 R19 K51 ["union"]
      318 MOVE                             R20 R16
      319 MOVE                             R21 R18
      320 CALL                             R19 2 1
      321 JUMP                             ; [+1]
      322 MOVE                             R19 R16
      323 GETUPVAL                         R20 2
      324 GETTABLEKS                       R20 R20 K49 ["createElement"]
      326 MOVE                             R21 R17
      327 MOVE                             R22 R19
      328 GETUPVAL                         R23 16
      329 MOVE                             R24 R2
      330 CALL                             R23 1 -1
      331 CALL                             R20 -1 -1
      332 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["FoundationCloudAssets"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R1 K11 ["FoundationImages"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R1 K12 ["React"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R1 K13 ["ReactIs"]
       40 CALL                             R7 1 1
       41 GETTABLEKS                       R8 R4 K14 ["Assets"]
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K15 ["Components"]
       47 GETTABLEKS                       R10 R10 K16 ["Interactable"]
       49 CALL                             R9 1 1
       50 GETTABLEKS                       R10 R5 K17 ["Images"]
       52 GETIMPORT                        R11 K6 [require]
       54 GETIMPORT                        R12 K1 [script]
       56 GETTABLEKS                       R12 R12 K4 ["Parent"]
       58 GETTABLEKS                       R12 R12 K18 ["ImageSet"]
       60 GETTABLEKS                       R12 R12 K19 ["getScaledSlice"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K6 [require]
       65 GETIMPORT                        R13 K1 [script]
       67 GETTABLEKS                       R13 R13 K4 ["Parent"]
       69 GETTABLEKS                       R13 R13 K20 ["CloudAsset"]
       71 GETTABLEKS                       R13 R13 K21 ["isCloudAsset"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K6 [require]
       76 GETIMPORT                        R14 K1 [script]
       78 GETTABLEKS                       R14 R14 K4 ["Parent"]
       80 GETTABLEKS                       R14 R14 K18 ["ImageSet"]
       82 GETTABLEKS                       R14 R14 K22 ["isFoundationImage"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K6 [require]
       87 GETTABLEKS                       R15 R0 K7 ["Utility"]
       89 GETTABLEKS                       R15 R15 K23 ["GuiObjectChildren"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K6 [require]
       94 GETTABLEKS                       R16 R0 K15 ["Components"]
       96 GETTABLEKS                       R16 R16 K24 ["Types"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K6 [require]
      101 GETTABLEKS                       R17 R0 K7 ["Utility"]
      103 GETTABLEKS                       R17 R17 K25 ["indexBindable"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K6 [require]
      108 GETTABLEKS                       R18 R0 K7 ["Utility"]
      110 GETTABLEKS                       R18 R18 K26 ["useDefaultTags"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K6 [require]
      115 GETTABLEKS                       R19 R0 K7 ["Utility"]
      117 GETTABLEKS                       R19 R19 K27 ["withDefaults"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K6 [require]
      122 GETTABLEKS                       R20 R0 K7 ["Utility"]
      124 GETTABLEKS                       R20 R20 K28 ["withGuiObjectProps"]
      126 CALL                             R19 1 1
      127 GETIMPORT                        R20 K6 [require]
      129 GETTABLEKS                       R21 R0 K29 ["Providers"]
      131 GETTABLEKS                       R21 R21 K30 ["Style"]
      133 GETTABLEKS                       R21 R21 K31 ["useStyleTags"]
      135 CALL                             R20 1 1
      136 DUPTABLE                         R21 K38 [{["AutoLocalize"] = False, ["AutoButtonColor"] = False, ["BorderSizePixel"] = 0, ["isDisabled"] = False}]
      137 DUPCLOSURE                       R22 K39 [PROTO_0]
      138 GETIMPORT                        R24 K41 [_G]
      140 GETTABLEKS                       R24 R24 K42 ["__DEV__"]
      142 JUMPIFEQKB                       R24 TRUE ; [+2]
      144 LOADB                            R23 0 +1
      145 LOADB                            R23 1
      146 DUPCLOSURE                       R24 K43 [PROTO_1]
      147 CAPTURE                          VAL R23
      148 CAPTURE                          VAL R10
      149 DUPCLOSURE                       R25 K44 [PROTO_2]
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R10
      154 DUPCLOSURE                       R26 K45 [PROTO_9]
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R23
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R3
      173 GETTABLEKS                       R27 R6 K46 ["memo"]
      175 GETTABLEKS                       R28 R6 K47 ["forwardRef"]
      177 MOVE                             R29 R26
      178 CALL                             R28 1 -1
      179 CALL                             R27 -1 -1
      180 RETURN                           R27 -1
