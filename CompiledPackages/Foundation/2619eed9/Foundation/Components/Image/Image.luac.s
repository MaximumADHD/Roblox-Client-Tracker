PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 DIV                              R1 R2 R3
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETUPVAL                         R3 2
        7 GETTABLE                         R2 R3 R0
        8 RETURN                           R2 1
        9 GETUPVAL                         R3 2
       10 FASTCALL2                        RAWGET R3 R0 ; [+4]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R2 K1 [rawget]
       15 CALL                             R2 2 1
       16 RETURN                           R2 1

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
        9 JUMPIF                           R1 ; [+22]
       10 GETUPVAL                         R4 2
       11 GETTABLE                         R3 R4 R0
       12 JUMPIFNOT                        R3 ; [+2]
       13 MOVE                             R2 R3
       14 JUMP                             ; [+13]
       15 GETUPVAL                         R4 3
       16 JUMPIFNOT                        R4 ; [+3]
       17 GETUPVAL                         R4 4
       18 GETTABLE                         R2 R4 R0
       19 JUMP                             ; [+8]
       20 GETUPVAL                         R5 4
       21 FASTCALL2                        RAWGET R5 R0 ; [+4]
       23 MOVE                             R6 R0
       24 GETIMPORT                        R4 K1 [rawget]
       26 CALL                             R4 2 1
       27 MOVE                             R2 R4
       28 JUMPIFNOTEQKNIL                  R2 ; [+2]
       30 LOADB                            R1 0 +1
       31 LOADB                            R1 1
       32 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isBinding"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Image"]
        6 CALL                             R0 1 1
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["Image"]
       12 GETUPVAL                         R1 2
       13 GETUPVAL                         R2 3
       14 NAMECALL                         R3 R0 K2 ["getValue"]
       16 CALL                             R3 1 -1
       17 CALL                             R2 -1 -1
       18 CALL                             R1 -1 0
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R1 R1 K3 ["__subscribeToBinding"]
       22 MOVE                             R2 R0
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CALL                             R1 2 1
       27 NEWCLOSURE                       R2 P1
       28 CAPTURE                          VAL R1
       29 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+60]
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
       30 GETUPVAL                         R3 4
       31 GETTABLE                         R2 R3 R0
       32 JUMPIFNOT                        R2 ; [+2]
       33 MOVE                             R1 R2
       34 JUMP                             ; [+13]
       35 GETUPVAL                         R3 5
       36 JUMPIFNOT                        R3 ; [+3]
       37 GETUPVAL                         R3 6
       38 GETTABLE                         R1 R3 R0
       39 JUMP                             ; [+8]
       40 GETUPVAL                         R4 6
       41 FASTCALL2                        RAWGET R4 R0 ; [+4]
       43 MOVE                             R5 R0
       44 GETIMPORT                        R3 K7 [rawget]
       46 CALL                             R3 2 1
       47 MOVE                             R1 R3
       48 GETUPVAL                         R3 3
       49 JUMPIFNOTEQKS                    R3 K2 ["AspectRatio"] ; [+3]
       51 GETUPVAL                         R2 7
       52 RETURN                           R2 1
       53 JUMPIFNOT                        R1 ; [+3]
       54 GETUPVAL                         R3 3
       55 GETTABLE                         R2 R1 R3
       56 RETURN                           R2 1
       57 GETUPVAL                         R3 3
       58 JUMPIFNOTEQKS                    R3 K0 ["Image"] ; [+3]
       60 MOVE                             R2 R0
       61 RETURN                           R2 1
       62 LOADNIL                          R2
       63 RETURN                           R2 1
       64 GETUPVAL                         R1 3
       65 JUMPIFNOTEQKS                    R1 K0 ["Image"] ; [+2]
       67 RETURN                           R0 1
       68 GETUPVAL                         R1 3
       69 JUMPIFNOTEQKS                    R1 K8 ["ImageRectOffset"] ; [+11]
       71 GETUPVAL                         R1 8
       72 GETTABLEKS                       R1 R1 K9 ["imageRect"]
       74 JUMPIFNOT                        R1 ; [+6]
       75 GETUPVAL                         R1 8
       76 GETTABLEKS                       R1 R1 K9 ["imageRect"]
       78 GETTABLEKS                       R1 R1 K10 ["offset"]
       80 RETURN                           R1 1
       81 GETUPVAL                         R1 3
       82 JUMPIFNOTEQKS                    R1 K11 ["ImageRectSize"] ; [+11]
       84 GETUPVAL                         R1 8
       85 GETTABLEKS                       R1 R1 K9 ["imageRect"]
       87 JUMPIFNOT                        R1 ; [+6]
       88 GETUPVAL                         R1 8
       89 GETTABLEKS                       R1 R1 K9 ["imageRect"]
       91 GETTABLEKS                       R1 R1 K3 ["size"]
       93 RETURN                           R1 1
       94 LOADNIL                          R1
       95 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
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
       33 JUMPIFNOT                        R4 ; [+86]
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U1
       43 GETUPVAL                         R5 9
       44 JUMPIFNOT                        R5 ; [+19]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K0 ["Image"]
       48 LOADK                            R8 K5 ["AspectRatio"]
       49 NEWCLOSURE                       R7 P1
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          VAL R8
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          UPVAL U0
       59 NAMECALL                         R5 R5 K6 ["map"]
       61 CALL                             R5 2 1
       62 MOVE                             R3 R5
       63 JUMP                             ; [+1]
       64 GETUPVAL                         R3 1
       65 GETUPVAL                         R5 0
       66 GETTABLEKS                       R5 R5 K0 ["Image"]
       68 LOADK                            R8 K0 ["Image"]
       69 NEWCLOSURE                       R7 P1
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          UPVAL U4
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R8
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          UPVAL U0
       79 NAMECALL                         R5 R5 K6 ["map"]
       81 CALL                             R5 2 1
       82 MOVE                             R0 R5
       83 GETUPVAL                         R5 0
       84 GETTABLEKS                       R5 R5 K0 ["Image"]
       86 LOADK                            R8 K7 ["ImageRectOffset"]
       87 NEWCLOSURE                       R7 P1
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          VAL R8
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          UPVAL U8
       95 CAPTURE                          UPVAL U1
       96 CAPTURE                          UPVAL U0
       97 NAMECALL                         R5 R5 K6 ["map"]
       99 CALL                             R5 2 1
      100 MOVE                             R1 R5
      101 GETUPVAL                         R5 0
      102 GETTABLEKS                       R5 R5 K0 ["Image"]
      104 LOADK                            R8 K8 ["ImageRectSize"]
      105 NEWCLOSURE                       R7 P1
      106 CAPTURE                          UPVAL U3
      107 CAPTURE                          UPVAL U4
      108 CAPTURE                          UPVAL U5
      109 CAPTURE                          VAL R8
      110 CAPTURE                          UPVAL U6
      111 CAPTURE                          UPVAL U7
      112 CAPTURE                          UPVAL U8
      113 CAPTURE                          UPVAL U1
      114 CAPTURE                          UPVAL U0
      115 NAMECALL                         R5 R5 K6 ["map"]
      117 CALL                             R5 2 1
      118 MOVE                             R2 R5
      119 RETURN                           R0 4
      120 GETUPVAL                         R5 0
      121 GETTABLEKS                       R5 R5 K0 ["Image"]
      123 FASTCALL1                        TYPEOF R5 ; [+2]
      124 GETIMPORT                        R4 K10 [typeof]
      126 CALL                             R4 1 1
      127 JUMPIFNOTEQKS                    R4 K11 ["string"] ; [+56]
      129 GETUPVAL                         R4 3
      130 GETUPVAL                         R5 0
      131 GETTABLEKS                       R5 R5 K0 ["Image"]
      133 CALL                             R4 1 1
      134 JUMPIFNOT                        R4 ; [+49]
      135 GETUPVAL                         R4 4
      136 GETUPVAL                         R5 0
      137 GETTABLEKS                       R5 R5 K0 ["Image"]
      139 CALL                             R4 1 1
      140 JUMPIFNOT                        R4 ; [+15]
      141 GETUPVAL                         R5 5
      142 GETUPVAL                         R6 0
      143 GETTABLEKS                       R6 R6 K0 ["Image"]
      145 GETTABLE                         R4 R5 R6
      146 GETTABLEKS                       R0 R4 K12 ["assetId"]
      148 GETTABLEKS                       R5 R4 K3 ["size"]
      150 GETTABLEKS                       R6 R5 K13 ["X"]
      152 GETTABLEKS                       R7 R5 K14 ["Y"]
      154 DIV                              R3 R6 R7
      155 RETURN                           R0 4
      156 GETUPVAL                         R5 0
      157 GETTABLEKS                       R5 R5 K0 ["Image"]
      159 GETUPVAL                         R7 6
      160 GETTABLE                         R6 R7 R5
      161 JUMPIFNOT                        R6 ; [+2]
      162 MOVE                             R4 R6
      163 JUMP                             ; [+13]
      164 GETUPVAL                         R7 7
      165 JUMPIFNOT                        R7 ; [+3]
      166 GETUPVAL                         R7 8
      167 GETTABLE                         R4 R7 R5
      168 JUMP                             ; [+8]
      169 GETUPVAL                         R8 8
      170 FASTCALL2                        RAWGET R8 R5 ; [+4]
      172 MOVE                             R9 R5
      173 GETIMPORT                        R7 K16 [rawget]
      175 CALL                             R7 2 1
      176 MOVE                             R4 R7
      177 JUMPIFNOT                        R4 ; [+6]
      178 GETTABLEKS                       R0 R4 K0 ["Image"]
      180 GETTABLEKS                       R1 R4 K7 ["ImageRectOffset"]
      182 GETTABLEKS                       R2 R4 K8 ["ImageRectSize"]
      184 RETURN                           R0 4

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+2]
        4 LOADB                            R1 0
        5 JUMP                             ; [+26]
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+22]
       10 GETUPVAL                         R4 2
       11 GETTABLE                         R3 R4 R0
       12 JUMPIFNOT                        R3 ; [+2]
       13 MOVE                             R2 R3
       14 JUMP                             ; [+13]
       15 GETUPVAL                         R4 3
       16 JUMPIFNOT                        R4 ; [+3]
       17 GETUPVAL                         R4 4
       18 GETTABLE                         R2 R4 R0
       19 JUMP                             ; [+8]
       20 GETUPVAL                         R5 4
       21 FASTCALL2                        RAWGET R5 R0 ; [+4]
       23 MOVE                             R6 R0
       24 GETIMPORT                        R4 K1 [rawget]
       26 CALL                             R4 2 1
       27 MOVE                             R2 R4
       28 JUMPIFNOTEQKNIL                  R2 ; [+2]
       30 LOADB                            R1 0 +1
       31 LOADB                            R1 1
       32 JUMPIFNOT                        R1 ; [+13]
       33 GETUPVAL                         R1 5
       34 GETUPVAL                         R2 6
       35 GETTABLEKS                       R2 R2 K2 ["slice"]
       37 GETTABLEKS                       R2 R2 K3 ["center"]
       39 GETUPVAL                         R3 6
       40 GETTABLEKS                       R3 R3 K2 ["slice"]
       42 GETTABLEKS                       R3 R3 K4 ["scale"]
       44 CALL                             R1 2 -1
       45 RETURN                           R1 -1
       46 GETUPVAL                         R1 6
       47 GETTABLEKS                       R1 R1 K2 ["slice"]
       49 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["center"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["scale"]
        2 RETURN                           R1 1

PROTO_12:
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
       23 GETTABLEKS                       R5 R5 K4 ["useState"]
       25 LOADB                            R6 0
       26 CALL                             R5 1 2
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       30 NEWCLOSURE                       R8 P0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R6
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U2
       36 NEWTABLE                         R9 0 2
       38 GETTABLEKS                       R10 R2 K6 ["Image"]
       40 MOVE                             R11 R4
       41 SETLIST                          R9 R10 2 [1]
       43 CALL                             R7 2 0
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       47 NEWCLOSURE                       R8 P1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          UPVAL U9
       57 CAPTURE                          VAL R5
       58 NEWTABLE                         R9 0 5
       60 GETTABLEKS                       R11 R2 K6 ["Image"]
       62 GETTABLEKS                       R12 R2 K8 ["imageRect"]
       64 MOVE                             R13 R5
       65 MOVE                             R14 R4
       66 GETUPVAL                         R15 9
       67 SETLIST                          R9 R11 5 [1]
       69 CALL                             R7 2 4
       70 LOADNIL                          R11
       71 LOADNIL                          R12
       72 GETTABLEKS                       R13 R2 K9 ["ScaleType"]
       74 GETTABLEKS                       R14 R2 K10 ["slice"]
       76 JUMPIFNOT                        R14 ; [+100]
       77 GETUPVAL                         R14 3
       78 GETTABLEKS                       R14 R14 K11 ["isBinding"]
       80 GETTABLEKS                       R15 R2 K6 ["Image"]
       82 CALL                             R14 1 1
       83 JUMPIFNOT                        R14 ; [+24]
       84 GETTABLEKS                       R14 R2 K6 ["Image"]
       86 NEWCLOSURE                       R16 P2
       87 CAPTURE                          UPVAL U5
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          UPVAL U7
       90 CAPTURE                          UPVAL U8
       91 CAPTURE                          UPVAL U9
       92 CAPTURE                          UPVAL U10
       93 CAPTURE                          VAL R2
       94 NAMECALL                         R14 R14 K12 ["map"]
       96 CALL                             R14 2 1
       97 DUPCLOSURE                       R17 K13 [PROTO_10]
       98 NAMECALL                         R15 R14 K12 ["map"]
      100 CALL                             R15 2 1
      101 MOVE                             R11 R15
      102 DUPCLOSURE                       R17 K14 [PROTO_11]
      103 NAMECALL                         R15 R14 K12 ["map"]
      105 CALL                             R15 2 1
      106 MOVE                             R12 R15
      107 JUMP                             ; [+67]
      108 GETTABLEKS                       R15 R2 K6 ["Image"]
      110 FASTCALL1                        TYPEOF R15 ; [+2]
      111 GETIMPORT                        R14 K16 [typeof]
      113 CALL                             R14 1 1
      114 JUMPIFNOTEQKS                    R14 K17 ["string"] ; [+60]
      116 GETTABLEKS                       R15 R2 K6 ["Image"]
      118 GETUPVAL                         R16 5
      119 MOVE                             R17 R15
      120 CALL                             R16 1 1
      121 JUMPIF                           R16 ; [+2]
      122 LOADB                            R14 0
      123 JUMP                             ; [+27]
      124 GETUPVAL                         R16 4
      125 MOVE                             R17 R15
      126 CALL                             R16 1 1
      127 MOVE                             R14 R16
      128 JUMPIF                           R14 ; [+22]
      129 GETUPVAL                         R18 7
      130 GETTABLE                         R17 R18 R15
      131 JUMPIFNOT                        R17 ; [+2]
      132 MOVE                             R16 R17
      133 JUMP                             ; [+13]
      134 GETUPVAL                         R18 8
      135 JUMPIFNOT                        R18 ; [+3]
      136 GETUPVAL                         R18 9
      137 GETTABLE                         R16 R18 R15
      138 JUMP                             ; [+8]
      139 GETUPVAL                         R19 9
      140 FASTCALL2                        RAWGET R19 R15 ; [+4]
      142 MOVE                             R20 R15
      143 GETIMPORT                        R18 K19 [rawget]
      145 CALL                             R18 2 1
      146 MOVE                             R16 R18
      147 JUMPIFNOTEQKNIL                  R16 ; [+2]
      149 LOADB                            R14 0 +1
      150 LOADB                            R14 1
      151 JUMPIFNOT                        R14 ; [+15]
      152 GETUPVAL                         R14 10
      153 GETTABLEKS                       R15 R2 K10 ["slice"]
      155 GETTABLEKS                       R15 R15 K20 ["center"]
      157 GETTABLEKS                       R16 R2 K10 ["slice"]
      159 GETTABLEKS                       R16 R16 K21 ["scale"]
      161 CALL                             R14 2 1
      162 GETTABLEKS                       R11 R14 K20 ["center"]
      164 GETTABLEKS                       R12 R14 K21 ["scale"]
      166 JUMP                             ; [+8]
      167 GETTABLEKS                       R14 R2 K10 ["slice"]
      169 GETTABLEKS                       R11 R14 K20 ["center"]
      171 GETTABLEKS                       R14 R2 K10 ["slice"]
      173 GETTABLEKS                       R12 R14 K21 ["scale"]
      175 GETIMPORT                        R13 K24 [Enum.ScaleType.Slice]
      177 SETTABLEKS                       R10 R2 K3 ["aspectRatio"]
      179 GETTABLEKS                       R15 R2 K25 ["backgroundStyle"]
      181 JUMPIFEQKNIL                     R15 ; [+3]
      183 LOADK                            R14 K26 ["gui-object-defaults x-default-transparency"]
      184 JUMP                             ; [+1]
      185 LOADK                            R14 K27 ["gui-object-defaults"]
      186 GETUPVAL                         R15 11
      187 GETTABLEKS                       R16 R2 K28 ["tag"]
      189 MOVE                             R17 R14
      190 CALL                             R15 2 1
      191 GETUPVAL                         R16 12
      192 MOVE                             R17 R15
      193 CALL                             R16 1 1
      194 GETUPVAL                         R17 13
      195 MOVE                             R18 R7
      196 GETTABLEKS                       R19 R2 K29 ["onLoaded"]
      198 CALL                             R17 2 0
      199 JUMPIFNOT                        R3 ; [+2]
      200 LOADK                            R17 K30 ["ImageButton"]
      201 JUMP                             ; [+1]
      202 LOADK                            R17 K31 ["ImageLabel"]
      203 GETUPVAL                         R18 14
      204 MOVE                             R19 R2
      205 NEWTABLE                         R20 16 0
      207 JUMPIFNOTEQKS                    R17 K30 ["ImageButton"] ; [+4]
      209 GETTABLEKS                       R21 R2 K32 ["AutoButtonColor"]
      211 JUMP                             ; [+1]
      212 LOADNIL                          R21
      213 SETTABLEKS                       R21 R20 K32 ["AutoButtonColor"]
      215 SETTABLEKS                       R7 R20 K6 ["Image"]
      217 GETTABLEKS                       R22 R2 K33 ["imageStyle"]
      219 JUMPIFNOT                        R22 ; [+6]
      220 GETUPVAL                         R21 15
      221 GETTABLEKS                       R22 R2 K33 ["imageStyle"]
      223 LOADK                            R23 K34 ["Color3"]
      224 CALL                             R21 2 1
      225 JUMP                             ; [+1]
      226 LOADNIL                          R21
      227 SETTABLEKS                       R21 R20 K35 ["ImageColor3"]
      229 GETTABLEKS                       R22 R2 K33 ["imageStyle"]
      231 JUMPIFNOT                        R22 ; [+6]
      232 GETUPVAL                         R21 15
      233 GETTABLEKS                       R22 R2 K33 ["imageStyle"]
      235 LOADK                            R23 K36 ["Transparency"]
      236 CALL                             R21 2 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R21
      239 SETTABLEKS                       R21 R20 K37 ["ImageTransparency"]
      241 SETTABLEKS                       R8 R20 K38 ["ImageRectOffset"]
      243 SETTABLEKS                       R9 R20 K39 ["ImageRectSize"]
      245 GETTABLEKS                       R21 R2 K40 ["ResampleMode"]
      247 SETTABLEKS                       R21 R20 K40 ["ResampleMode"]
      249 SETTABLEKS                       R13 R20 K9 ["ScaleType"]
      251 SETTABLEKS                       R11 R20 K41 ["SliceCenter"]
      253 SETTABLEKS                       R12 R20 K42 ["SliceScale"]
      255 GETTABLEKS                       R21 R2 K43 ["TileSize"]
      257 SETTABLEKS                       R21 R20 K43 ["TileSize"]
      259 SETTABLEKS                       R1 R20 K44 ["ref"]
      261 GETUPVAL                         R21 2
      262 GETTABLEKS                       R21 R21 K45 ["Tag"]
      264 SETTABLE                         R16 R20 R21
      265 CALL                             R18 2 1
      266 MOVE                             R19 R17
      267 JUMPIFNOT                        R3 ; [+27]
      268 GETUPVAL                         R19 16
      269 SETTABLEKS                       R17 R18 K46 ["component"]
      271 GETTABLEKS                       R20 R2 K1 ["onActivated"]
      273 SETTABLEKS                       R20 R18 K1 ["onActivated"]
      275 GETTABLEKS                       R20 R2 K2 ["onSecondaryActivated"]
      277 SETTABLEKS                       R20 R18 K2 ["onSecondaryActivated"]
      279 GETTABLEKS                       R20 R2 K0 ["onStateChanged"]
      281 SETTABLEKS                       R20 R18 K0 ["onStateChanged"]
      283 GETTABLEKS                       R20 R2 K47 ["stateLayer"]
      285 SETTABLEKS                       R20 R18 K47 ["stateLayer"]
      287 GETTABLEKS                       R20 R2 K48 ["isDisabled"]
      289 SETTABLEKS                       R20 R18 K48 ["isDisabled"]
      291 GETTABLEKS                       R20 R2 K49 ["cursor"]
      293 SETTABLEKS                       R20 R18 K49 ["cursor"]
      295 GETUPVAL                         R20 2
      296 GETTABLEKS                       R20 R20 K50 ["createElement"]
      298 MOVE                             R21 R19
      299 MOVE                             R22 R18
      300 GETUPVAL                         R23 17
      301 MOVE                             R24 R2
      302 CALL                             R23 1 -1
      303 CALL                             R20 -1 -1
      304 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["FoundationCloudAssets"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["FoundationImages"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactIs"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R7 R7 K4 ["Parent"]
       35 GETTABLEKS                       R7 R7 K11 ["useOnLoaded"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R2 K12 ["Assets"]
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Components"]
       44 GETTABLEKS                       R9 R9 K14 ["Interactable"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R3 K15 ["Images"]
       49 GETTABLEKS                       R10 R3 K16 ["IconImages_DEPRECATED"]
       51 GETIMPORT                        R11 K6 [require]
       53 GETIMPORT                        R12 K1 [script]
       55 GETTABLEKS                       R12 R12 K4 ["Parent"]
       57 GETTABLEKS                       R12 R12 K17 ["ImageSet"]
       59 GETTABLEKS                       R12 R12 K18 ["getScaledSlice"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETIMPORT                        R13 K1 [script]
       66 GETTABLEKS                       R13 R13 K4 ["Parent"]
       68 GETTABLEKS                       R13 R13 K19 ["CloudAsset"]
       70 GETTABLEKS                       R13 R13 K20 ["isCloudAsset"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K6 [require]
       75 GETIMPORT                        R14 K1 [script]
       77 GETTABLEKS                       R14 R14 K4 ["Parent"]
       79 GETTABLEKS                       R14 R14 K17 ["ImageSet"]
       81 GETTABLEKS                       R14 R14 K21 ["isFoundationImage"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K6 [require]
       86 GETTABLEKS                       R15 R0 K22 ["Utility"]
       88 GETTABLEKS                       R15 R15 K23 ["GuiObjectChildren"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K6 [require]
       93 GETTABLEKS                       R16 R0 K13 ["Components"]
       95 GETTABLEKS                       R16 R16 K24 ["Types"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R17 R0 K22 ["Utility"]
      102 GETTABLEKS                       R17 R17 K25 ["indexBindable"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R18 R0 K22 ["Utility"]
      109 GETTABLEKS                       R18 R18 K26 ["useDefaultTags"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K6 [require]
      114 GETTABLEKS                       R19 R0 K22 ["Utility"]
      116 GETTABLEKS                       R19 R19 K27 ["withDefaults"]
      118 CALL                             R18 1 1
      119 GETIMPORT                        R19 K6 [require]
      121 GETTABLEKS                       R20 R0 K22 ["Utility"]
      123 GETTABLEKS                       R20 R20 K28 ["withGuiObjectProps"]
      125 CALL                             R19 1 1
      126 GETIMPORT                        R20 K6 [require]
      128 GETTABLEKS                       R21 R0 K29 ["Providers"]
      130 GETTABLEKS                       R21 R21 K30 ["Style"]
      132 GETTABLEKS                       R21 R21 K31 ["useStyleTags"]
      134 CALL                             R20 1 1
      135 DUPTABLE                         R21 K36 [{"AutoLocalize", "AutoButtonColor", "BorderSizePixel", "isDisabled"}]
      136 LOADB                            R22 0
      137 SETTABLEKS                       R22 R21 K32 ["AutoLocalize"]
      139 LOADB                            R22 0
      140 SETTABLEKS                       R22 R21 K33 ["AutoButtonColor"]
      142 LOADN                            R22 0
      143 SETTABLEKS                       R22 R21 K34 ["BorderSizePixel"]
      145 LOADB                            R22 0
      146 SETTABLEKS                       R22 R21 K35 ["isDisabled"]
      148 DUPCLOSURE                       R22 K37 [PROTO_0]
      149 GETIMPORT                        R24 K39 [_G]
      151 GETTABLEKS                       R24 R24 K40 ["__DEV__"]
      153 JUMPIFEQKB                       R24 TRUE ; [+2]
      155 LOADB                            R23 0 +1
      156 LOADB                            R23 1
      157 DUPCLOSURE                       R24 K41 [PROTO_1]
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R9
      161 DUPCLOSURE                       R25 K42 [PROTO_2]
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R9
      167 DUPCLOSURE                       R26 K43 [PROTO_12]
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R23
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R14
      186 GETTABLEKS                       R27 R4 K44 ["memo"]
      188 GETTABLEKS                       R28 R4 K45 ["forwardRef"]
      190 MOVE                             R29 R26
      191 CALL                             R28 1 -1
      192 CALL                             R27 -1 -1
      193 RETURN                           R27 -1
