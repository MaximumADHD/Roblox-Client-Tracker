PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+10]
        3 GETUPVAL                         R2 1
        4 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        6 MOVE                             R3 R0
        7 GETIMPORT                        R1 K2 [table.insert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 LOADB                            R2 1
       12 SETTABLE                         R2 R1 R0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+10]
        3 GETUPVAL                         R2 1
        4 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        6 MOVE                             R3 R0
        7 GETIMPORT                        R1 K2 [table.insert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 LOADB                            R2 1
       12 SETTABLE                         R2 R1 R0
       13 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.create]
        2 LOADN                            R2 64
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 0
        6 GETIMPORT                        R3 K2 [table.create]
        8 LOADN                            R4 64
        9 CALL                             R3 1 1
       10 NEWTABLE                         R4 0 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K3 ["Terrain"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R1
       18 NEWCLOSURE                       R7 P1
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R3
       21 GETIMPORT                        R8 K5 [ipairs]
       23 MOVE                             R9 R0
       24 CALL                             R8 1 3
       25 FORGPREP_INEXT                   R8
       26 LOADK                            R15 K6 ["BasePart"]
       27 NAMECALL                         R13 R12 K7 ["IsA"]
       29 CALL                             R13 2 1
       30 JUMPIFNOT                        R13 ; [+25]
       31 JUMPIFEQ                         R12 R5 ; [+24]
       33 GETTABLE                         R13 R2 R12
       34 JUMPIF                           R13 ; [+9]
       35 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       37 MOVE                             R14 R1
       38 MOVE                             R15 R12
       39 GETIMPORT                        R13 K9 [table.insert]
       41 CALL                             R13 2 0
       42 LOADB                            R13 1
       43 SETTABLE                         R13 R2 R12
       44 GETTABLE                         R13 R4 R12
       45 JUMPIF                           R13 ; [+51]
       46 FASTCALL2                        TABLE_INSERT R3 R12 ; [+5]
       48 MOVE                             R14 R3
       49 MOVE                             R15 R12
       50 GETIMPORT                        R13 K9 [table.insert]
       52 CALL                             R13 2 0
       53 LOADB                            R13 1
       54 SETTABLE                         R13 R4 R12
       55 JUMP                             ; [+41]
       56 LOADK                            R15 K10 ["Model"]
       57 NAMECALL                         R13 R12 K7 ["IsA"]
       59 CALL                             R13 2 1
       60 JUMPIFNOT                        R13 ; [+36]
       61 GETTABLE                         R13 R2 R12
       62 JUMPIF                           R13 ; [+9]
       63 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       65 MOVE                             R14 R1
       66 MOVE                             R15 R12
       67 GETIMPORT                        R13 K9 [table.insert]
       69 CALL                             R13 2 0
       70 LOADB                            R13 1
       71 SETTABLE                         R13 R2 R12
       72 GETIMPORT                        R13 K5 [ipairs]
       74 NAMECALL                         R14 R12 K11 ["GetDescendants"]
       76 CALL                             R14 1 -1
       77 CALL                             R13 -1 3
       78 FORGPREP_INEXT                   R13
       79 LOADK                            R20 K6 ["BasePart"]
       80 NAMECALL                         R18 R17 K7 ["IsA"]
       82 CALL                             R18 2 1
       83 JUMPIFNOT                        R18 ; [+11]
       84 GETTABLE                         R18 R4 R17
       85 JUMPIF                           R18 ; [+9]
       86 FASTCALL2                        TABLE_INSERT R3 R17 ; [+5]
       88 MOVE                             R19 R3
       89 MOVE                             R20 R17
       90 GETIMPORT                        R18 K9 [table.insert]
       92 CALL                             R18 2 0
       93 LOADB                            R18 1
       94 SETTABLE                         R18 R4 R17
       95 FORGLOOP                         R13 2 [inext] ; [-17]
       97 FORGLOOP                         R8 2 [inext] ; [-72]
       99 MOVE                             R8 R1
      100 MOVE                             R9 R3
      101 RETURN                           R8 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_2]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
