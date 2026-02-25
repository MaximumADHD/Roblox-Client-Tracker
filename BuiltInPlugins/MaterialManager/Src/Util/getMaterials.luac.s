PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["MaterialVariant"]
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["MaterialVariant"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["Material"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R5 R1 K0 ["Material"]
        7 CALL                             R4 1 1
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["MaterialVariant"]
        2 GETTABLEKS                       R3 R4 K1 ["Name"]
        4 GETTABLEKS                       R5 R1 K0 ["MaterialVariant"]
        6 GETTABLEKS                       R4 R5 K1 ["Name"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_4:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["MaterialVariant"]
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETIMPORT                        R2 K3 [string.lower]
        6 GETTABLEKS                       R4 R0 K0 ["MaterialVariant"]
        8 GETTABLEKS                       R3 R4 K4 ["Name"]
       10 CALL                             R2 1 1
       11 MOVE                             R1 R2
       12 JUMP                             ; [+8]
       13 GETIMPORT                        R2 K3 [string.lower]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R4 R0 K5 ["Material"]
       18 CALL                             R3 1 -1
       19 CALL                             R2 -1 1
       20 MOVE                             R1 R2
       21 GETIMPORT                        R2 K7 [string.find]
       23 MOVE                             R3 R1
       24 GETUPVAL                         R4 1
       25 LOADN                            R5 1
       26 LOADB                            R6 1
       27 CALL                             R2 4 1
       28 JUMPIF                           R2 ; [+9]
       29 GETUPVAL                         R3 2
       30 MOVE                             R4 R1
       31 GETUPVAL                         R5 1
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 3
       34 JUMPIFEQ                         R3 R4 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 MOVE                             R3 R2
       39 JUMPIFNOT                        R3 ; [+12]
       40 LOADB                            R3 1
       41 GETUPVAL                         R5 4
       42 LENGTH                           R4 R5
       43 JUMPIFEQKN                       R4 K8 [0] ; [+8]
       45 GETUPVAL                         R3 5
       46 GETUPVAL                         R4 4
       47 GETUPVAL                         R5 6
       48 GETTABLEKS                       R6 R0 K5 ["Material"]
       50 CALL                             R5 1 -1
       51 CALL                             R3 -1 1
       52 RETURN                           R3 1

PROTO_5:
        0 LOADB                            R1 1
        1 GETUPVAL                         R3 0
        2 LENGTH                           R2 R3
        3 JUMPIFEQKN                       R2 K0 [0] ; [+8]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R4 R0 K1 ["Material"]
       10 CALL                             R3 1 -1
       11 CALL                             R1 -1 1
       12 RETURN                           R1 1

PROTO_6:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K0 ["Tried to get materials for path which does not exist"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 NEWTABLE                         R3 0 0
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R0
       11 MOVE                             R6 R3
       12 CALL                             R4 2 0
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R3
       15 DUPCLOSURE                       R6 K3 [PROTO_0]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 1
       18 MOVE                             R6 R3
       19 DUPCLOSURE                       R7 K4 [PROTO_1]
       20 CALL                             R5 2 1
       21 GETIMPORT                        R6 K7 [table.sort]
       23 MOVE                             R7 R4
       24 DUPCLOSURE                       R8 K8 [PROTO_2]
       25 CAPTURE                          UPVAL U2
       26 CALL                             R6 2 0
       27 GETIMPORT                        R6 K7 [table.sort]
       29 MOVE                             R7 R5
       30 DUPCLOSURE                       R8 K9 [PROTO_3]
       31 CALL                             R6 2 0
       32 NEWTABLE                         R6 0 0
       34 MOVE                             R7 R5
       35 LOADNIL                          R8
       36 LOADNIL                          R9
       37 FORGPREP                         R7
       38 GETTABLEKS                       R13 R11 K10 ["Material"]
       40 GETTABLE                         R12 R6 R13
       41 JUMPIF                           R12 ; [+5]
       42 GETTABLEKS                       R12 R11 K10 ["Material"]
       44 NEWTABLE                         R13 0 0
       46 SETTABLE                         R13 R6 R12
       47 GETTABLEKS                       R14 R11 K10 ["Material"]
       49 GETTABLE                         R13 R6 R14
       50 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       52 MOVE                             R14 R11
       53 GETIMPORT                        R12 K12 [table.insert]
       55 CALL                             R12 2 0
       56 FORGLOOP                         R7 2 ; [-19]
       58 NEWTABLE                         R7 0 0
       60 MOVE                             R8 R4
       61 LOADNIL                          R9
       62 LOADNIL                          R10
       63 FORGPREP                         R8
       64 FASTCALL2                        TABLE_INSERT R7 R12 ; [+5]
       66 MOVE                             R14 R7
       67 MOVE                             R15 R12
       68 GETIMPORT                        R13 K12 [table.insert]
       70 CALL                             R13 2 0
       71 GETTABLEKS                       R14 R12 K10 ["Material"]
       73 GETTABLE                         R13 R6 R14
       74 JUMPIFNOT                        R13 ; [+15]
       75 GETTABLEKS                       R16 R12 K10 ["Material"]
       77 GETTABLE                         R13 R6 R16
       78 LOADNIL                          R14
       79 LOADNIL                          R15
       80 FORGPREP                         R13
       81 FASTCALL2                        TABLE_INSERT R7 R17 ; [+5]
       83 MOVE                             R19 R7
       84 MOVE                             R20 R17
       85 GETIMPORT                        R18 K12 [table.insert]
       87 CALL                             R18 2 0
       88 FORGLOOP                         R13 2 ; [-8]
       90 FORGLOOP                         R8 2 ; [-27]
       92 MOVE                             R3 R7
       93 JUMPIFNOT                        R2 ; [+33]
       94 JUMPIFEQKS                       R2 K13 [""] ; [+32]
       96 LOADN                            R8 0
       97 GETIMPORT                        R9 K16 [string.lower]
       99 MOVE                             R10 R2
      100 CALL                             R9 1 1
      101 MOVE                             R2 R9
      102 NEWCLOSURE                       R9 P4
      103 CAPTURE                          UPVAL U2
      104 CAPTURE                          REF R2
      105 CAPTURE                          UPVAL U3
      106 CAPTURE                          REF R8
      107 CAPTURE                          VAL R1
      108 CAPTURE                          UPVAL U4
      109 CAPTURE                          UPVAL U5
      110 GETUPVAL                         R10 1
      111 MOVE                             R11 R3
      112 MOVE                             R12 R9
      113 CALL                             R10 2 1
      114 LENGTH                           R11 R10
      115 JUMPIFNOTEQKN                    R11 K17 [0] ; [+8]
      117 LOADN                            R8 1
      118 GETUPVAL                         R11 1
      119 MOVE                             R12 R3
      120 MOVE                             R13 R9
      121 CALL                             R11 2 1
      122 MOVE                             R3 R11
      123 JUMP                             ; [+1]
      124 MOVE                             R3 R10
      125 CLOSEUPVALS                      R8
      126 JUMP                             ; [+9]
      127 NEWCLOSURE                       R8 P5
      128 CAPTURE                          VAL R1
      129 CAPTURE                          UPVAL U4
      130 CAPTURE                          UPVAL U5
      131 GETUPVAL                         R9 1
      132 MOVE                             R10 R3
      133 MOVE                             R11 R8
      134 CALL                             R9 2 1
      135 MOVE                             R3 R9
      136 CLOSEUPVALS                      R2
      137 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R4 K8 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R1 K9 ["Dash"]
       25 GETTABLEKS                       R3 R4 K10 ["filter"]
       27 GETTABLEKS                       R6 R0 K7 ["Src"]
       29 GETTABLEKS                       R5 R6 K11 ["Resources"]
       31 GETTABLEKS                       R4 R5 K12 ["Constants"]
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R4 K13 ["getMaterialName"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R4 K14 ["getMaterialPath"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R8 R0 K7 ["Src"]
       45 GETTABLEKS                       R7 R8 K15 ["Util"]
       47 GETIMPORT                        R8 K4 [require]
       49 GETTABLEKS                       R9 R7 K16 ["ContainsPath"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K4 [require]
       54 GETTABLEKS                       R10 R7 K17 ["DamerauLevenshteinDistance"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K4 [require]
       59 GETTABLEKS                       R11 R7 K18 ["MapMaterials"]
       61 CALL                             R10 1 1
       62 DUPCLOSURE                       R11 K19 [PROTO_6]
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R6
       69 RETURN                           R11 1
