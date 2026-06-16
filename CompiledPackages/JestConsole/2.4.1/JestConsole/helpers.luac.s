PROTO_0:
        0 LOADK                            R1 K0 [""]
        1 LENGTH                           R2 R0
        2 LOADN                            R3 0
        3 JUMPIFNOTLT                      R3 R2 ; [+8]
        5 LOADK                            R2 K1 [" "]
        6 GETIMPORT                        R3 K4 [table.concat]
        8 MOVE                             R4 R0
        9 LOADK                            R5 K1 [" "]
       10 CALL                             R3 2 1
       11 CONCAT                           R1 R2 R3
       12 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+3]
        7 MOVE                             R2 R0
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETGLOBAL                        R0 K0 ["formatter"]
        3 LOADNIL                          R1
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 PREPVARARGS                      2
        1 GETGLOBAL                        R2 K0 ["formatter"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 GETVARARGS                       R5 -1
        6 CALL                             R2 -1 -1
        7 RETURN                           R2 -1

PROTO_4:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 0
        3 GETVARARGS                       R3 -1
        4 SETLIST                          R2 R3 -1 [1]
        6 NEWTABLE                         R3 0 0
        8 NEWTABLE                         R4 0 0
       10 FASTCALL1                        TYPE R1 ; [+3]
       11 MOVE                             R6 R1
       12 GETIMPORT                        R5 K1 [type]
       14 CALL                             R5 1 1
       15 JUMPIFNOTEQKS                    R5 K2 ["string"] ; [+36]
       17 LOADK                            R7 K3 ["%%[sdj%%]"]
       18 LOADK                            R8 K4 [""]
       19 NAMECALL                         R5 R1 K5 ["gsub"]
       21 CALL                             R5 3 2
       22 GETIMPORT                        R7 K7 [pairs]
       24 MOVE                             R8 R2
       25 CALL                             R7 1 3
       26 FORGPREP_NEXT                    R7
       27 GETGLOBAL                        R12 K8 ["getFormattedValue"]
       29 MOVE                             R13 R11
       30 MOVE                             R14 R0
       31 CALL                             R12 2 1
       32 JUMPIFNOTLE                      R10 R6 ; [+9]
       34 FASTCALL2                        TABLE_INSERT R3 R12 ; [+5]
       36 MOVE                             R14 R3
       37 MOVE                             R15 R12
       38 GETIMPORT                        R13 K11 [table.insert]
       40 CALL                             R13 2 0
       41 JUMP                             ; [+7]
       42 FASTCALL2                        TABLE_INSERT R4 R12 ; [+5]
       44 MOVE                             R14 R4
       45 MOVE                             R15 R12
       46 GETIMPORT                        R13 K11 [table.insert]
       48 CALL                             R13 2 0
       49 FORGLOOP                         R7 2 ; [-23]
       51 JUMP                             ; [+22]
       52 GETUPVAL                         R5 0
       53 MOVE                             R6 R1
       54 MOVE                             R7 R0
       55 CALL                             R5 2 1
       56 MOVE                             R1 R5
       57 GETIMPORT                        R5 K7 [pairs]
       59 MOVE                             R6 R2
       60 CALL                             R5 1 3
       61 FORGPREP_NEXT                    R5
       62 MOVE                             R11 R4
       63 GETGLOBAL                        R12 K8 ["getFormattedValue"]
       65 MOVE                             R13 R9
       66 MOVE                             R14 R0
       67 CALL                             R12 2 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R10 K11 [table.insert]
       71 CALL                             R10 -1 0
       72 FORGLOOP                         R5 2 ; [-11]
       74 GETIMPORT                        R8 K13 [string.format]
       76 MOVE                             R9 R1
       77 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
       78 MOVE                             R11 R3
       79 GETIMPORT                        R10 K15 [table.unpack]
       81 CALL                             R10 1 -1
       82 CALL                             R8 -1 1
       83 MOVE                             R6 R8
       84 GETGLOBAL                        R7 K16 ["concatRestArgs"]
       86 MOVE                             R8 R4
       87 CALL                             R7 1 1
       88 CONCAT                           R5 R6 R7
       89 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["util"]
       14 GETTABLEKS                       R3 R3 K7 ["inspect"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K8 ["types"]
       20 CALL                             R4 1 1
       21 DUPCLOSURE                       R5 K9 [PROTO_0]
       22 SETGLOBAL                        R5 K10 ["concatRestArgs"]
       24 DUPCLOSURE                       R5 K11 [PROTO_1]
       25 CAPTURE                          VAL R3
       26 SETGLOBAL                        R5 K12 ["getFormattedValue"]
       28 DUPCLOSURE                       R5 K13 [PROTO_2]
       29 SETGLOBAL                        R5 K14 ["format"]
       31 DUPCLOSURE                       R5 K15 [PROTO_3]
       32 SETGLOBAL                        R5 K16 ["formatWithOptions"]
       34 DUPCLOSURE                       R5 K17 [PROTO_4]
       35 CAPTURE                          VAL R3
       36 SETGLOBAL                        R5 K18 ["formatter"]
       38 DUPTABLE                         R5 K19 [{"format", "formatWithOptions", "concatRestArgs"}]
       39 GETGLOBAL                        R6 K14 ["format"]
       41 SETTABLEKS                       R6 R5 K14 ["format"]
       43 GETGLOBAL                        R6 K16 ["formatWithOptions"]
       45 SETTABLEKS                       R6 R5 K16 ["formatWithOptions"]
       47 GETGLOBAL                        R6 K10 ["concatRestArgs"]
       49 SETTABLEKS                       R6 R5 K10 ["concatRestArgs"]
       51 RETURN                           R5 1
