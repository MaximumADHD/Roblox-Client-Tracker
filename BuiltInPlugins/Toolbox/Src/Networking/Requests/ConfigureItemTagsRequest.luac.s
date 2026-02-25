PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 1
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: Could not configure tags"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 LOADK                            R4 K4 ["Could not configure tags"]
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K5 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 3
       18 LOADB                            R4 0
       19 CALL                             R3 1 -1
       20 NAMECALL                         R1 R1 K5 ["dispatch"]
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["resolve"]
        5 CALL                             R1 0 -1
        6 SETLIST                          R0 R1 -1 [1]
        8 GETIMPORT                        R1 K2 [pairs]
       10 GETUPVAL                         R2 1
       11 CALL                             R1 1 3
       12 FORGPREP_NEXT                    R1
       13 MOVE                             R7 R0
       14 GETUPVAL                         R8 2
       15 GETUPVAL                         R10 3
       16 MOVE                             R11 R5
       17 NAMECALL                         R8 R8 K3 ["addAssetTag"]
       19 CALL                             R8 3 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R6 K6 [table.insert]
       23 CALL                             R6 -1 0
       24 FORGLOOP                         R1 2 ; [-12]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K7 ["all"]
       29 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       30 MOVE                             R3 R0
       31 GETIMPORT                        R2 K9 [unpack]
       33 CALL                             R2 1 -1
       34 CALL                             R1 -1 1
       35 GETUPVAL                         R3 4
       36 GETUPVAL                         R4 5
       37 NAMECALL                         R1 R1 K10 ["andThen"]
       39 CALL                             R1 3 0
       40 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U0
        8 NEWTABLE                         R3 0 0
       10 GETIMPORT                        R4 K1 [pairs]
       12 GETUPVAL                         R5 3
       13 CALL                             R4 1 3
       14 FORGPREP_NEXT                    R4
       15 GETTABLEKS                       R10 R8 K2 ["tag"]
       17 GETTABLEKS                       R9 R10 K3 ["tagId"]
       19 LOADB                            R10 1
       20 SETTABLE                         R10 R3 R9
       21 FORGLOOP                         R4 2 ; [-7]
       23 NEWTABLE                         R4 0 0
       25 NEWTABLE                         R5 0 0
       27 GETUPVAL                         R6 4
       28 JUMPIFNOT                        R6 ; [+23]
       29 GETIMPORT                        R6 K1 [pairs]
       31 GETUPVAL                         R7 4
       32 CALL                             R6 1 3
       33 FORGPREP_NEXT                    R6
       34 GETTABLEKS                       R11 R10 K3 ["tagId"]
       36 LOADB                            R12 1
       37 SETTABLE                         R12 R4 R11
       38 GETTABLEKS                       R12 R10 K3 ["tagId"]
       40 GETTABLE                         R11 R3 R12
       41 JUMPIF                           R11 ; [+8]
       42 GETTABLEKS                       R13 R10 K3 ["tagId"]
       44 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       46 MOVE                             R12 R5
       47 GETIMPORT                        R11 K6 [table.insert]
       49 CALL                             R11 2 0
       50 FORGLOOP                         R6 2 ; [-17]
       52 NEWTABLE                         R6 0 0
       54 GETIMPORT                        R7 K1 [pairs]
       56 GETUPVAL                         R8 3
       57 CALL                             R7 1 3
       58 FORGPREP_NEXT                    R7
       59 GETTABLEKS                       R14 R11 K2 ["tag"]
       61 GETTABLEKS                       R13 R14 K3 ["tagId"]
       63 GETTABLE                         R12 R4 R13
       64 JUMPIF                           R12 ; [+8]
       65 GETTABLEKS                       R14 R11 K7 ["id"]
       67 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       69 MOVE                             R13 R6
       70 GETIMPORT                        R12 K6 [table.insert]
       72 CALL                             R12 2 0
       73 FORGLOOP                         R7 2 ; [-15]
       75 NEWTABLE                         R7 0 1
       77 GETUPVAL                         R9 5
       78 GETTABLEKS                       R8 R9 K8 ["resolve"]
       80 CALL                             R8 0 -1
       81 SETLIST                          R7 R8 -1 [1]
       83 GETIMPORT                        R8 K1 [pairs]
       85 MOVE                             R9 R6
       86 CALL                             R8 1 3
       87 FORGPREP_NEXT                    R8
       88 MOVE                             R14 R7
       89 GETUPVAL                         R15 6
       90 MOVE                             R17 R12
       91 NAMECALL                         R15 R15 K9 ["deleteAssetItemTag"]
       93 CALL                             R15 2 -1
       94 FASTCALL                         TABLE_INSERT ; [+2]
       95 GETIMPORT                        R13 K6 [table.insert]
       97 CALL                             R13 -1 0
       98 FORGLOOP                         R8 2 ; [-11]
      100 GETUPVAL                         R9 5
      101 GETTABLEKS                       R8 R9 K10 ["all"]
      103 FASTCALL1                        TABLE_UNPACK R7 ; [+3]
      104 MOVE                             R10 R7
      105 GETIMPORT                        R9 K12 [unpack]
      107 CALL                             R9 1 -1
      108 CALL                             R8 -1 1
      109 NEWCLOSURE                       R10 P2
      110 CAPTURE                          UPVAL U5
      111 CAPTURE                          VAL R5
      112 CAPTURE                          UPVAL U6
      113 CAPTURE                          UPVAL U7
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R2
      116 MOVE                             R11 R2
      117 NAMECALL                         R8 R8 K13 ["andThen"]
      119 CALL                             R8 3 0
      120 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Actions"]
       17 GETTABLEKS                       R2 R3 K7 ["NetworkError"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K6 ["Actions"]
       26 GETTABLEKS                       R3 R4 K8 ["UploadResult"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K9 ["Util"]
       35 GETTABLEKS                       R4 R5 K10 ["DebugFlags"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R4 R0 K11 ["Packages"]
       40 GETIMPORT                        R7 K4 [require]
       42 GETTABLEKS                       R8 R4 K12 ["Framework"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R6 R7 K9 ["Util"]
       47 GETTABLEKS                       R5 R6 K13 ["Promise"]
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R9 R0 K5 ["Src"]
       53 GETTABLEKS                       R8 R9 K14 ["Flags"]
       55 GETTABLEKS                       R7 R8 K15 ["getFFlagRemoveItemTags"]
       57 CALL                             R6 1 1
       58 MOVE                             R7 R6
       59 CALL                             R7 0 1
       60 JUMPIF                           R7 ; [+6]
       61 DUPCLOSURE                       R7 K16 [PROTO_4]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R5
       66 RETURN                           R7 1
       67 RETURN                           R0 0
