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
       10 LOADK                            R5 K0 [""]
       11 FASTCALL1                        TYPE R1 ; [+3]
       12 MOVE                             R7 R1
       13 GETIMPORT                        R6 K2 [type]
       15 CALL                             R6 1 1
       16 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+37]
       18 LOADK                            R8 K4 ["%%[sdj%%]"]
       19 LOADK                            R9 K0 [""]
       20 NAMECALL                         R6 R1 K5 ["gsub"]
       22 CALL                             R6 3 2
       23 GETIMPORT                        R8 K7 [pairs]
       25 MOVE                             R9 R2
       26 CALL                             R8 1 3
       27 FORGPREP_NEXT                    R8
       28 GETGLOBAL                        R13 K8 ["getFormattedValue"]
       30 MOVE                             R14 R12
       31 MOVE                             R15 R0
       32 CALL                             R13 2 1
       33 JUMPIFNOTLE                      R11 R7 ; [+9]
       35 FASTCALL2                        TABLE_INSERT R3 R13 ; [+5]
       37 MOVE                             R15 R3
       38 MOVE                             R16 R13
       39 GETIMPORT                        R14 K11 [table.insert]
       41 CALL                             R14 2 0
       42 JUMP                             ; [+7]
       43 FASTCALL2                        TABLE_INSERT R4 R13 ; [+5]
       45 MOVE                             R15 R4
       46 MOVE                             R16 R13
       47 GETIMPORT                        R14 K11 [table.insert]
       49 CALL                             R14 2 0
       50 FORGLOOP                         R8 2 ; [-23]
       52 MOVE                             R5 R1
       53 JUMP                             ; [+22]
       54 GETUPVAL                         R6 0
       55 MOVE                             R7 R1
       56 MOVE                             R8 R0
       57 CALL                             R6 2 1
       58 MOVE                             R5 R6
       59 GETIMPORT                        R6 K7 [pairs]
       61 MOVE                             R7 R2
       62 CALL                             R6 1 3
       63 FORGPREP_NEXT                    R6
       64 MOVE                             R12 R4
       65 GETGLOBAL                        R13 K8 ["getFormattedValue"]
       67 MOVE                             R14 R10
       68 MOVE                             R15 R0
       69 CALL                             R13 2 -1
       70 FASTCALL                         TABLE_INSERT ; [+2]
       71 GETIMPORT                        R11 K11 [table.insert]
       73 CALL                             R11 -1 0
       74 FORGLOOP                         R6 2 ; [-11]
       76 GETIMPORT                        R9 K13 [string.format]
       78 MOVE                             R10 R5
       79 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
       80 MOVE                             R12 R3
       81 GETIMPORT                        R11 K15 [table.unpack]
       83 CALL                             R11 1 -1
       84 CALL                             R9 -1 1
       85 MOVE                             R7 R9
       86 GETGLOBAL                        R8 K16 ["concatRestArgs"]
       88 MOVE                             R9 R4
       89 CALL                             R8 1 1
       90 CONCAT                           R6 R7 R8
       91 RETURN                           R6 1

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
