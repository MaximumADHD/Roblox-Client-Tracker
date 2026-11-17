PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["(%d+)$"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKNIL                     R1 ; [+7]
        7 FASTCALL1                        TONUMBER R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K5 [tonumber]
       11 CALL                             R2 1 1
       12 RETURN                           R2 1
       13 LOADNIL                          R2
       14 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["(%d+)$"]
        4 CALL                             R2 2 1
        5 JUMPIFEQKNIL                     R2 ; [+8]
        7 FASTCALL1                        TONUMBER R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K5 [tonumber]
       11 CALL                             R3 1 1
       12 MOVE                             R1 R3
       13 JUMP                             ; [+1]
       14 LOADNIL                          R1
       15 JUMPIFEQKNIL                     R1 ; [+14]
       17 GETIMPORT                        R2 K8 [table.find]
       19 GETUPVAL                         R3 0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 1
       22 JUMPIF                           R2 ; [+7]
       23 GETUPVAL                         R3 0
       24 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       26 MOVE                             R4 R1
       27 GETIMPORT                        R2 K10 [table.insert]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R3 R0 K0 ["GetDescendants"]
        6 CALL                             R3 1 1
        7 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
        9 MOVE                             R5 R3
       10 MOVE                             R6 R0
       11 GETIMPORT                        R4 K3 [table.insert]
       13 CALL                             R4 2 0
       14 MOVE                             R4 R3
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 LOADK                            R11 K4 ["MeshPart"]
       19 NAMECALL                         R9 R8 K5 ["IsA"]
       21 CALL                             R9 2 1
       22 JUMPIFNOT                        R9 ; [+65]
       23 GETTABLEKS                       R9 R8 K6 ["MeshId"]
       25 GETIMPORT                        R11 K9 [string.match]
       27 MOVE                             R12 R9
       28 LOADK                            R13 K10 ["(%d+)$"]
       29 CALL                             R11 2 1
       30 JUMPIFEQKNIL                     R11 ; [+8]
       32 FASTCALL1                        TONUMBER R11 ; [+3]
       33 MOVE                             R13 R11
       34 GETIMPORT                        R12 K12 [tonumber]
       36 CALL                             R12 1 1
       37 MOVE                             R10 R12
       38 JUMP                             ; [+1]
       39 LOADNIL                          R10
       40 JUMPIFEQKNIL                     R10 ; [+14]
       42 GETIMPORT                        R11 K14 [table.find]
       44 MOVE                             R12 R1
       45 MOVE                             R13 R10
       46 CALL                             R11 2 1
       47 JUMPIF                           R11 ; [+7]
       48 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
       50 MOVE                             R12 R1
       51 MOVE                             R13 R10
       52 GETIMPORT                        R11 K3 [table.insert]
       54 CALL                             R11 2 0
       55 GETTABLEKS                       R9 R8 K15 ["TextureID"]
       57 GETIMPORT                        R11 K9 [string.match]
       59 MOVE                             R12 R9
       60 LOADK                            R13 K10 ["(%d+)$"]
       61 CALL                             R11 2 1
       62 JUMPIFEQKNIL                     R11 ; [+8]
       64 FASTCALL1                        TONUMBER R11 ; [+3]
       65 MOVE                             R13 R11
       66 GETIMPORT                        R12 K12 [tonumber]
       68 CALL                             R12 1 1
       69 MOVE                             R10 R12
       70 JUMP                             ; [+1]
       71 LOADNIL                          R10
       72 JUMPIFEQKNIL                     R10 ; [+52]
       74 GETIMPORT                        R11 K14 [table.find]
       76 MOVE                             R12 R1
       77 MOVE                             R13 R10
       78 CALL                             R11 2 1
       79 JUMPIF                           R11 ; [+45]
       80 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
       82 MOVE                             R12 R1
       83 MOVE                             R13 R10
       84 GETIMPORT                        R11 K3 [table.insert]
       86 CALL                             R11 2 0
       87 JUMP                             ; [+37]
       88 LOADK                            R11 K16 ["WrapTarget"]
       89 NAMECALL                         R9 R8 K5 ["IsA"]
       91 CALL                             R9 2 1
       92 JUMPIFNOT                        R9 ; [+32]
       93 GETTABLEKS                       R9 R8 K17 ["CageMeshId"]
       95 GETIMPORT                        R11 K9 [string.match]
       97 MOVE                             R12 R9
       98 LOADK                            R13 K10 ["(%d+)$"]
       99 CALL                             R11 2 1
      100 JUMPIFEQKNIL                     R11 ; [+8]
      102 FASTCALL1                        TONUMBER R11 ; [+3]
      103 MOVE                             R13 R11
      104 GETIMPORT                        R12 K12 [tonumber]
      106 CALL                             R12 1 1
      107 MOVE                             R10 R12
      108 JUMP                             ; [+1]
      109 LOADNIL                          R10
      110 JUMPIFEQKNIL                     R10 ; [+14]
      112 GETIMPORT                        R11 K14 [table.find]
      114 MOVE                             R12 R1
      115 MOVE                             R13 R10
      116 CALL                             R11 2 1
      117 JUMPIF                           R11 ; [+7]
      118 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
      120 MOVE                             R12 R1
      121 MOVE                             R13 R10
      122 GETIMPORT                        R11 K3 [table.insert]
      124 CALL                             R11 2 0
      125 FORGLOOP                         R4 2 ; [-108]
      127 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 RETURN                           R1 1
