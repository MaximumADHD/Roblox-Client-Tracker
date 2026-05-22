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
       33 JUMPIFNOT                        R4 ; [+109]
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U1
       43 GETUPVAL                         R5 6
       44 GETTABLEKS                       R5 R5 K5 ["FoundationImageFixBindingAspectRatio"]
       46 JUMPIFNOT                        R5 ; [+23]
       47 GETUPVAL                         R5 9
       48 JUMPIFNOT                        R5 ; [+19]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K0 ["Image"]
       52 LOADK                            R8 K6 ["AspectRatio"]
       53 NEWCLOSURE                       R7 P1
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R8
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          UPVAL U0
       63 NAMECALL                         R5 R5 K7 ["map"]
       65 CALL                             R5 2 1
       66 MOVE                             R3 R5
       67 JUMP                             ; [+20]
       68 GETUPVAL                         R3 1
       69 JUMP                             ; [+18]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R5 R5 K0 ["Image"]
       73 LOADK                            R8 K6 ["AspectRatio"]
       74 NEWCLOSURE                       R7 P1
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          UPVAL U5
       78 CAPTURE                          VAL R8
       79 CAPTURE                          UPVAL U6
       80 CAPTURE                          UPVAL U7
       81 CAPTURE                          UPVAL U8
       82 CAPTURE                          UPVAL U1
       83 CAPTURE                          UPVAL U0
       84 NAMECALL                         R5 R5 K7 ["map"]
       86 CALL                             R5 2 1
       87 MOVE                             R3 R5
       88 GETUPVAL                         R5 0
       89 GETTABLEKS                       R5 R5 K0 ["Image"]
       91 LOADK                            R8 K0 ["Image"]
       92 NEWCLOSURE                       R7 P1
       93 CAPTURE                          UPVAL U3
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          VAL R8
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          UPVAL U7
       99 CAPTURE                          UPVAL U8
      100 CAPTURE                          UPVAL U1
      101 CAPTURE                          UPVAL U0
      102 NAMECALL                         R5 R5 K7 ["map"]
      104 CALL                             R5 2 1
      105 MOVE                             R0 R5
      106 GETUPVAL                         R5 0
      107 GETTABLEKS                       R5 R5 K0 ["Image"]
      109 LOADK                            R8 K8 ["ImageRectOffset"]
      110 NEWCLOSURE                       R7 P1
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          UPVAL U4
      113 CAPTURE                          UPVAL U5
      114 CAPTURE                          VAL R8
      115 CAPTURE                          UPVAL U6
      116 CAPTURE                          UPVAL U7
      117 CAPTURE                          UPVAL U8
      118 CAPTURE                          UPVAL U1
      119 CAPTURE                          UPVAL U0
      120 NAMECALL                         R5 R5 K7 ["map"]
      122 CALL                             R5 2 1
      123 MOVE                             R1 R5
      124 GETUPVAL                         R5 0
      125 GETTABLEKS                       R5 R5 K0 ["Image"]
      127 LOADK                            R8 K9 ["ImageRectSize"]
      128 NEWCLOSURE                       R7 P1
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          UPVAL U4
      131 CAPTURE                          UPVAL U5
      132 CAPTURE                          VAL R8
      133 CAPTURE                          UPVAL U6
      134 CAPTURE                          UPVAL U7
      135 CAPTURE                          UPVAL U8
      136 CAPTURE                          UPVAL U1
      137 CAPTURE                          UPVAL U0
      138 NAMECALL                         R5 R5 K7 ["map"]
      140 CALL                             R5 2 1
      141 MOVE                             R2 R5
      142 RETURN                           R0 4
      143 GETUPVAL                         R5 0
      144 GETTABLEKS                       R5 R5 K0 ["Image"]
      146 FASTCALL1                        TYPEOF R5 ; [+2]
      147 GETIMPORT                        R4 K11 [typeof]
      149 CALL                             R4 1 1
      150 JUMPIFNOTEQKS                    R4 K12 ["string"] ; [+61]
      152 GETUPVAL                         R4 3
      153 GETUPVAL                         R5 0
      154 GETTABLEKS                       R5 R5 K0 ["Image"]
      156 CALL                             R4 1 1
      157 JUMPIFNOT                        R4 ; [+54]
      158 GETUPVAL                         R4 4
      159 GETUPVAL                         R5 0
      160 GETTABLEKS                       R5 R5 K0 ["Image"]
      162 CALL                             R4 1 1
      163 JUMPIFNOT                        R4 ; [+15]
      164 GETUPVAL                         R5 5
      165 GETUPVAL                         R6 0
      166 GETTABLEKS                       R6 R6 K0 ["Image"]
      168 GETTABLE                         R4 R5 R6
      169 GETTABLEKS                       R0 R4 K13 ["assetId"]
      171 GETTABLEKS                       R5 R4 K3 ["size"]
      173 GETTABLEKS                       R6 R5 K14 ["X"]
      175 GETTABLEKS                       R7 R5 K15 ["Y"]
      177 DIV                              R3 R6 R7
      178 RETURN                           R0 4
      179 GETUPVAL                         R5 6
      180 GETTABLEKS                       R5 R5 K16 ["FoundationImageSafeLookup"]
      182 JUMPIFNOT                        R5 ; [+17]
      183 GETUPVAL                         R5 0
      184 GETTABLEKS                       R5 R5 K0 ["Image"]
      186 GETUPVAL                         R6 7
      187 JUMPIFNOT                        R6 ; [+3]
      188 GETUPVAL                         R6 8
      189 GETTABLE                         R4 R6 R5
      190 JUMP                             ; [+14]
      191 GETUPVAL                         R7 8
      192 FASTCALL2                        RAWGET R7 R5 ; [+4]
      194 MOVE                             R8 R5
      195 GETIMPORT                        R6 K18 [rawget]
      197 CALL                             R6 2 1
      198 MOVE                             R4 R6
      199 JUMP                             ; [+5]
      200 GETUPVAL                         R5 8
      201 GETUPVAL                         R6 0
      202 GETTABLEKS                       R6 R6 K0 ["Image"]
      204 GETTABLE                         R4 R5 R6
      205 JUMPIFNOT                        R4 ; [+6]
      206 GETTABLEKS                       R0 R4 K0 ["Image"]
      208 GETTABLEKS                       R1 R4 K8 ["ImageRectOffset"]
      210 GETTABLEKS                       R2 R4 K9 ["ImageRectSize"]
      212 RETURN                           R0 4

PROTO_9:
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
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K4 ["FoundationImageFixBindingAspectRatio"]
       27 JUMPIFNOT                        R7 ; [+24]
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R7 R7 K5 ["useState"]
       31 LOADB                            R8 0
       32 CALL                             R7 1 2
       33 MOVE                             R5 R7
       34 MOVE                             R6 R8
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          REF R6
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U3
       44 NEWTABLE                         R9 0 2
       46 GETTABLEKS                       R10 R2 K7 ["Image"]
       48 MOVE                             R11 R4
       49 SETLIST                          R9 R10 2 [1]
       51 CALL                             R7 2 0
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       55 NEWCLOSURE                       R8 P1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          UPVAL U9
       65 CAPTURE                          REF R5
       66 NEWTABLE                         R9 0 5
       68 GETTABLEKS                       R11 R2 K7 ["Image"]
       70 GETTABLEKS                       R12 R2 K9 ["imageRect"]
       72 GETUPVAL                         R14 2
       73 GETTABLEKS                       R14 R14 K4 ["FoundationImageFixBindingAspectRatio"]
       75 JUMPIFNOT                        R14 ; [+2]
       76 MOVE                             R13 R5
       77 JUMP                             ; [+1]
       78 LOADNIL                          R13
       79 MOVE                             R14 R4
       80 GETUPVAL                         R15 9
       81 SETLIST                          R9 R11 5 [1]
       83 CALL                             R7 2 4
       84 LOADNIL                          R11
       85 LOADNIL                          R12
       86 GETTABLEKS                       R13 R2 K10 ["ScaleType"]
       88 GETTABLEKS                       R14 R2 K11 ["slice"]
       90 JUMPIFNOT                        R14 ; [+103]
       91 GETUPVAL                         R14 4
       92 GETTABLEKS                       R14 R14 K12 ["isBinding"]
       94 GETTABLEKS                       R15 R2 K7 ["Image"]
       96 CALL                             R14 1 1
       97 JUMPIFNOT                        R14 ; [+24]
       98 GETTABLEKS                       R14 R2 K7 ["Image"]
      100 NEWCLOSURE                       R16 P2
      101 CAPTURE                          UPVAL U2
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          UPVAL U8
      105 CAPTURE                          UPVAL U9
      106 CAPTURE                          UPVAL U10
      107 CAPTURE                          VAL R2
      108 NAMECALL                         R14 R14 K13 ["map"]
      110 CALL                             R14 2 1
      111 DUPCLOSURE                       R17 K14 [PROTO_10]
      112 NAMECALL                         R15 R14 K13 ["map"]
      114 CALL                             R15 2 1
      115 MOVE                             R11 R15
      116 DUPCLOSURE                       R17 K15 [PROTO_11]
      117 NAMECALL                         R15 R14 K13 ["map"]
      119 CALL                             R15 2 1
      120 MOVE                             R12 R15
      121 JUMP                             ; [+70]
      122 GETTABLEKS                       R15 R2 K7 ["Image"]
      124 FASTCALL1                        TYPEOF R15 ; [+2]
      125 GETIMPORT                        R14 K17 [typeof]
      127 CALL                             R14 1 1
      128 JUMPIFNOTEQKS                    R14 K18 ["string"] ; [+63]
      130 GETUPVAL                         R15 2
      131 GETTABLEKS                       R15 R15 K19 ["FoundationImageSafeLookup"]
      133 JUMPIFNOT                        R15 ; [+30]
      134 GETTABLEKS                       R15 R2 K7 ["Image"]
      136 GETUPVAL                         R16 6
      137 MOVE                             R17 R15
      138 CALL                             R16 1 1
      139 JUMPIF                           R16 ; [+2]
      140 LOADB                            R14 0
      141 JUMP                             ; [+26]
      142 GETUPVAL                         R16 5
      143 MOVE                             R17 R15
      144 CALL                             R16 1 1
      145 MOVE                             R14 R16
      146 JUMPIF                           R14 ; [+21]
      147 GETUPVAL                         R17 8
      148 JUMPIFNOT                        R17 ; [+3]
      149 GETUPVAL                         R17 9
      150 GETTABLE                         R16 R17 R15
      151 JUMP                             ; [+7]
      152 GETUPVAL                         R17 9
      153 FASTCALL2                        RAWGET R17 R15 ; [+4]
      155 MOVE                             R18 R15
      156 GETIMPORT                        R16 K21 [rawget]
      158 CALL                             R16 2 1
      159 JUMPIFNOTEQKNIL                  R16 ; [+2]
      161 LOADB                            R14 0 +1
      162 LOADB                            R14 1
      163 JUMP                             ; [+4]
      164 GETUPVAL                         R14 6
      165 GETTABLEKS                       R15 R2 K7 ["Image"]
      167 CALL                             R14 1 1
      168 JUMPIFNOT                        R14 ; [+15]
      169 GETUPVAL                         R14 10
      170 GETTABLEKS                       R15 R2 K11 ["slice"]
      172 GETTABLEKS                       R15 R15 K22 ["center"]
      174 GETTABLEKS                       R16 R2 K11 ["slice"]
      176 GETTABLEKS                       R16 R16 K23 ["scale"]
      178 CALL                             R14 2 1
      179 GETTABLEKS                       R11 R14 K22 ["center"]
      181 GETTABLEKS                       R12 R14 K23 ["scale"]
      183 JUMP                             ; [+8]
      184 GETTABLEKS                       R14 R2 K11 ["slice"]
      186 GETTABLEKS                       R11 R14 K22 ["center"]
      188 GETTABLEKS                       R14 R2 K11 ["slice"]
      190 GETTABLEKS                       R12 R14 K23 ["scale"]
      192 GETIMPORT                        R13 K26 [Enum.ScaleType.Slice]
      194 SETTABLEKS                       R10 R2 K3 ["aspectRatio"]
      196 GETTABLEKS                       R15 R2 K27 ["backgroundStyle"]
      198 JUMPIFEQKNIL                     R15 ; [+3]
      200 LOADK                            R14 K28 ["gui-object-defaults x-default-transparency"]
      201 JUMP                             ; [+1]
      202 LOADK                            R14 K29 ["gui-object-defaults"]
      203 GETUPVAL                         R15 11
      204 GETTABLEKS                       R16 R2 K30 ["tag"]
      206 MOVE                             R17 R14
      207 CALL                             R15 2 1
      208 GETUPVAL                         R16 12
      209 MOVE                             R17 R15
      210 CALL                             R16 1 1
      211 GETUPVAL                         R17 2
      212 GETTABLEKS                       R17 R17 K31 ["FoundationImageOnLoadedCallback"]
      214 JUMPIFNOT                        R17 ; [+5]
      215 GETUPVAL                         R17 13
      216 MOVE                             R18 R7
      217 GETTABLEKS                       R19 R2 K32 ["onLoaded"]
      219 CALL                             R17 2 0
      220 JUMPIFNOT                        R3 ; [+2]
      221 LOADK                            R17 K33 ["ImageButton"]
      222 JUMP                             ; [+1]
      223 LOADK                            R17 K34 ["ImageLabel"]
      224 GETUPVAL                         R18 14
      225 MOVE                             R19 R2
      226 NEWTABLE                         R20 16 0
      228 JUMPIFNOTEQKS                    R17 K33 ["ImageButton"] ; [+4]
      230 GETTABLEKS                       R21 R2 K35 ["AutoButtonColor"]
      232 JUMP                             ; [+1]
      233 LOADNIL                          R21
      234 SETTABLEKS                       R21 R20 K35 ["AutoButtonColor"]
      236 SETTABLEKS                       R7 R20 K7 ["Image"]
      238 GETTABLEKS                       R22 R2 K36 ["imageStyle"]
      240 JUMPIFNOT                        R22 ; [+6]
      241 GETUPVAL                         R21 15
      242 GETTABLEKS                       R22 R2 K36 ["imageStyle"]
      244 LOADK                            R23 K37 ["Color3"]
      245 CALL                             R21 2 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R21
      248 SETTABLEKS                       R21 R20 K38 ["ImageColor3"]
      250 GETTABLEKS                       R22 R2 K36 ["imageStyle"]
      252 JUMPIFNOT                        R22 ; [+6]
      253 GETUPVAL                         R21 15
      254 GETTABLEKS                       R22 R2 K36 ["imageStyle"]
      256 LOADK                            R23 K39 ["Transparency"]
      257 CALL                             R21 2 1
      258 JUMP                             ; [+1]
      259 LOADNIL                          R21
      260 SETTABLEKS                       R21 R20 K40 ["ImageTransparency"]
      262 SETTABLEKS                       R8 R20 K41 ["ImageRectOffset"]
      264 SETTABLEKS                       R9 R20 K42 ["ImageRectSize"]
      266 GETTABLEKS                       R21 R2 K43 ["ResampleMode"]
      268 SETTABLEKS                       R21 R20 K43 ["ResampleMode"]
      270 SETTABLEKS                       R13 R20 K10 ["ScaleType"]
      272 SETTABLEKS                       R11 R20 K44 ["SliceCenter"]
      274 SETTABLEKS                       R12 R20 K45 ["SliceScale"]
      276 GETTABLEKS                       R21 R2 K46 ["TileSize"]
      278 SETTABLEKS                       R21 R20 K46 ["TileSize"]
      280 SETTABLEKS                       R1 R20 K47 ["ref"]
      282 GETUPVAL                         R21 3
      283 GETTABLEKS                       R21 R21 K48 ["Tag"]
      285 SETTABLE                         R16 R20 R21
      286 CALL                             R18 2 1
      287 GETUPVAL                         R19 2
      288 GETTABLEKS                       R19 R19 K49 ["FoundationBuildingBlocksRemoveDashUnion"]
      290 JUMPIFNOT                        R19 ; [+40]
      291 MOVE                             R19 R17
      292 JUMPIFNOT                        R3 ; [+27]
      293 GETUPVAL                         R19 16
      294 SETTABLEKS                       R17 R18 K50 ["component"]
      296 GETTABLEKS                       R20 R2 K1 ["onActivated"]
      298 SETTABLEKS                       R20 R18 K1 ["onActivated"]
      300 GETTABLEKS                       R20 R2 K2 ["onSecondaryActivated"]
      302 SETTABLEKS                       R20 R18 K2 ["onSecondaryActivated"]
      304 GETTABLEKS                       R20 R2 K0 ["onStateChanged"]
      306 SETTABLEKS                       R20 R18 K0 ["onStateChanged"]
      308 GETTABLEKS                       R20 R2 K51 ["stateLayer"]
      310 SETTABLEKS                       R20 R18 K51 ["stateLayer"]
      312 GETTABLEKS                       R20 R2 K52 ["isDisabled"]
      314 SETTABLEKS                       R20 R18 K52 ["isDisabled"]
      316 GETTABLEKS                       R20 R2 K53 ["cursor"]
      318 SETTABLEKS                       R20 R18 K53 ["cursor"]
      320 GETUPVAL                         R20 3
      321 GETTABLEKS                       R20 R20 K54 ["createElement"]
      323 MOVE                             R21 R19
      324 MOVE                             R22 R18
      325 GETUPVAL                         R23 17
      326 MOVE                             R24 R2
      327 CALL                             R23 1 -1
      328 CALL                             R20 -1 -1
      329 CLOSEUPVALS                      R5
      330 RETURN                           R20 -1
      331 JUMPIFNOT                        R3 ; [+2]
      332 GETUPVAL                         R19 16
      333 JUMP                             ; [+1]
      334 MOVE                             R19 R17
      335 DUPTABLE                         R20 K55 [{"component", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "isDisabled", "cursor"}]
      336 SETTABLEKS                       R17 R20 K50 ["component"]
      338 GETTABLEKS                       R21 R2 K1 ["onActivated"]
      340 SETTABLEKS                       R21 R20 K1 ["onActivated"]
      342 GETTABLEKS                       R21 R2 K2 ["onSecondaryActivated"]
      344 SETTABLEKS                       R21 R20 K2 ["onSecondaryActivated"]
      346 GETTABLEKS                       R21 R2 K0 ["onStateChanged"]
      348 SETTABLEKS                       R21 R20 K0 ["onStateChanged"]
      350 GETTABLEKS                       R21 R2 K51 ["stateLayer"]
      352 SETTABLEKS                       R21 R20 K51 ["stateLayer"]
      354 GETTABLEKS                       R21 R2 K52 ["isDisabled"]
      356 SETTABLEKS                       R21 R20 K52 ["isDisabled"]
      358 GETTABLEKS                       R21 R2 K53 ["cursor"]
      360 SETTABLEKS                       R21 R20 K53 ["cursor"]
      362 JUMPIFNOT                        R3 ; [+7]
      363 GETUPVAL                         R21 18
      364 GETTABLEKS                       R21 R21 K56 ["union"]
      366 MOVE                             R22 R18
      367 MOVE                             R23 R20
      368 CALL                             R21 2 1
      369 JUMP                             ; [+1]
      370 MOVE                             R21 R18
      371 GETUPVAL                         R22 3
      372 GETTABLEKS                       R22 R22 K54 ["createElement"]
      374 MOVE                             R23 R19
      375 MOVE                             R24 R21
      376 GETUPVAL                         R25 17
      377 MOVE                             R26 R2
      378 CALL                             R25 1 -1
      379 CALL                             R22 -1 -1
      380 CLOSEUPVALS                      R5
      381 RETURN                           R22 -1

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
       41 GETIMPORT                        R8 K6 [require]
       43 GETIMPORT                        R9 K1 [script]
       45 GETTABLEKS                       R9 R9 K4 ["Parent"]
       47 GETTABLEKS                       R9 R9 K14 ["useOnLoaded"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R4 K15 ["Assets"]
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R0 K16 ["Components"]
       56 GETTABLEKS                       R11 R11 K17 ["Interactable"]
       58 CALL                             R10 1 1
       59 GETTABLEKS                       R11 R5 K18 ["Images"]
       61 GETIMPORT                        R12 K6 [require]
       63 GETIMPORT                        R13 K1 [script]
       65 GETTABLEKS                       R13 R13 K4 ["Parent"]
       67 GETTABLEKS                       R13 R13 K19 ["ImageSet"]
       69 GETTABLEKS                       R13 R13 K20 ["getScaledSlice"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K6 [require]
       74 GETIMPORT                        R14 K1 [script]
       76 GETTABLEKS                       R14 R14 K4 ["Parent"]
       78 GETTABLEKS                       R14 R14 K21 ["CloudAsset"]
       80 GETTABLEKS                       R14 R14 K22 ["isCloudAsset"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K6 [require]
       85 GETIMPORT                        R15 K1 [script]
       87 GETTABLEKS                       R15 R15 K4 ["Parent"]
       89 GETTABLEKS                       R15 R15 K19 ["ImageSet"]
       91 GETTABLEKS                       R15 R15 K23 ["isFoundationImage"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K6 [require]
       96 GETTABLEKS                       R16 R0 K7 ["Utility"]
       98 GETTABLEKS                       R16 R16 K24 ["GuiObjectChildren"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETTABLEKS                       R17 R0 K16 ["Components"]
      105 GETTABLEKS                       R17 R17 K25 ["Types"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K6 [require]
      110 GETTABLEKS                       R18 R0 K7 ["Utility"]
      112 GETTABLEKS                       R18 R18 K26 ["indexBindable"]
      114 CALL                             R17 1 1
      115 GETIMPORT                        R18 K6 [require]
      117 GETTABLEKS                       R19 R0 K7 ["Utility"]
      119 GETTABLEKS                       R19 R19 K27 ["useDefaultTags"]
      121 CALL                             R18 1 1
      122 GETIMPORT                        R19 K6 [require]
      124 GETTABLEKS                       R20 R0 K7 ["Utility"]
      126 GETTABLEKS                       R20 R20 K28 ["withDefaults"]
      128 CALL                             R19 1 1
      129 GETIMPORT                        R20 K6 [require]
      131 GETTABLEKS                       R21 R0 K7 ["Utility"]
      133 GETTABLEKS                       R21 R21 K29 ["withGuiObjectProps"]
      135 CALL                             R20 1 1
      136 GETIMPORT                        R21 K6 [require]
      138 GETTABLEKS                       R22 R0 K30 ["Providers"]
      140 GETTABLEKS                       R22 R22 K31 ["Style"]
      142 GETTABLEKS                       R22 R22 K32 ["useStyleTags"]
      144 CALL                             R21 1 1
      145 DUPTABLE                         R22 K37 [{"AutoLocalize", "AutoButtonColor", "BorderSizePixel", "isDisabled"}]
      146 LOADB                            R23 0
      147 SETTABLEKS                       R23 R22 K33 ["AutoLocalize"]
      149 LOADB                            R23 0
      150 SETTABLEKS                       R23 R22 K34 ["AutoButtonColor"]
      152 LOADN                            R23 0
      153 SETTABLEKS                       R23 R22 K35 ["BorderSizePixel"]
      155 LOADB                            R23 0
      156 SETTABLEKS                       R23 R22 K36 ["isDisabled"]
      158 DUPCLOSURE                       R23 K38 [PROTO_0]
      159 GETIMPORT                        R25 K40 [_G]
      161 GETTABLEKS                       R25 R25 K41 ["__DEV__"]
      163 JUMPIFEQKB                       R25 TRUE ; [+2]
      165 LOADB                            R24 0 +1
      166 LOADB                            R24 1
      167 DUPCLOSURE                       R25 K42 [PROTO_1]
      168 CAPTURE                          VAL R24
      169 CAPTURE                          VAL R11
      170 DUPCLOSURE                       R26 K43 [PROTO_2]
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R11
      175 DUPCLOSURE                       R27 K44 [PROTO_12]
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R18
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R3
      195 GETTABLEKS                       R28 R6 K45 ["memo"]
      197 GETTABLEKS                       R29 R6 K46 ["forwardRef"]
      199 MOVE                             R30 R27
      200 CALL                             R29 1 -1
      201 CALL                             R28 -1 -1
      202 RETURN                           R28 -1
