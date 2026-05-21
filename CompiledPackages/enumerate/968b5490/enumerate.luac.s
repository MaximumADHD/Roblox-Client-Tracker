PROTO_0:
        0 LOADK                            R2 K0 ["%q (%s) is not a valid member of %s"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 FASTCALL1                        TYPEOF R1 ; [+3]
        7 MOVE                             R6 R1
        8 GETIMPORT                        R5 K4 [typeof]
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 0
       12 NAMECALL                         R2 R2 K5 ["format"]
       14 CALL                             R2 4 1
       15 GETIMPORT                        R3 K7 [error]
       17 MOVE                             R4 R2
       18 LOADN                            R5 2
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["%q (%s) is not a valid member of %s"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R6 R1
        3 GETIMPORT                        R5 K2 [tostring]
        5 CALL                             R5 1 1
        6 FASTCALL1                        TYPEOF R1 ; [+3]
        7 MOVE                             R7 R1
        8 GETIMPORT                        R6 K4 [typeof]
       10 CALL                             R6 1 1
       11 GETUPVAL                         R7 0
       12 NAMECALL                         R3 R3 K5 ["format"]
       14 CALL                             R3 4 1
       15 GETIMPORT                        R4 K7 [error]
       17 MOVE                             R5 R3
       18 LOADN                            R6 2
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+5]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [tostring]
        6 CALL                             R2 1 1
        7 DUPTABLE                         R5 K4 [{"__index", "__newindex"}]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R2
       10 SETTABLEKS                       R6 R5 K2 ["__index"]
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R2
       14 SETTABLEKS                       R6 R5 K3 ["__newindex"]
       16 FASTCALL2                        SETMETATABLE R0 R5 ; [+4]
       18 MOVE                             R4 R0
       19 GETIMPORT                        R3 K6 [setmetatable]
       21 CALL                             R3 2 1
       22 RETURN                           R3 1

PROTO_3:
        0 LOADK                            R0 K0 ["%s.%s"]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["format"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 FASTCALL1                        TYPEOF R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["string"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K3 ; [+5]
       11 MOVE                             R7 R5
       12 LOADK                            R8 K3 ["Only string names are supported for enums!"]
       13 GETIMPORT                        R6 K5 [assert]
       15 CALL                             R6 2 0
       16 JUMPIFNOT                        R5 ; [+30]
       17 JUMPIFNOTEQKS                    R3 K6 ["fromRawValue"] ; [+2]
       19 LOADB                            R7 0 +1
       20 LOADB                            R7 1
       21 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       23 LOADK                            R8 K7 ["fromRawValue is reserved"]
       24 GETIMPORT                        R6 K5 [assert]
       26 CALL                             R6 2 0
       27 JUMPIFNOTEQKS                    R3 K8 ["isEnumValue"] ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       33 LOADK                            R8 K9 ["isEnumValue is reserved"]
       34 GETIMPORT                        R6 K5 [assert]
       36 CALL                             R6 2 0
       37 JUMPIFNOTEQKS                    R3 K10 ["allValues"] ; [+2]
       39 LOADB                            R7 0 +1
       40 LOADB                            R7 1
       41 FASTCALL2K                       ASSERT R7 K11 ; [+4]
       43 LOADK                            R8 K11 ["allValues is reserved"]
       44 GETIMPORT                        R6 K5 [assert]
       46 CALL                             R6 2 0
       47 GETTABLE                         R8 R0 R3
       48 JUMPIFEQKNIL                     R8 ; [+2]
       50 LOADB                            R7 0 +1
       51 LOADB                            R7 1
       52 FASTCALL2K                       ASSERT R7 K12 ; [+4]
       54 LOADK                            R8 K12 ["Enum value names can only be used once!"]
       55 GETIMPORT                        R6 K5 [assert]
       57 CALL                             R6 2 0
       58 GETTABLE                         R8 R1 R3
       59 JUMPIFEQKNIL                     R8 ; [+2]
       61 LOADB                            R7 0 +1
       62 LOADB                            R7 1
       63 FASTCALL2K                       ASSERT R7 K13 ; [+4]
       65 LOADK                            R8 K13 ["Enum values can only be used once!"]
       66 GETIMPORT                        R6 K5 [assert]
       68 CALL                             R6 2 0
       69 GETIMPORT                        R6 K15 [newproxy]
       71 LOADB                            R7 1
       72 CALL                             R6 1 1
       73 FASTCALL1                        GETMETATABLE R6 ; [+3]
       74 MOVE                             R8 R6
       75 GETIMPORT                        R7 K17 [getmetatable]
       77 CALL                             R7 1 1
       78 NEWCLOSURE                       R8 P0
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R8 R7 K18 ["__tostring"]
       83 GETUPVAL                         R8 0
       84 DUPTABLE                         R9 K20 [{"rawValue"}]
       85 NEWCLOSURE                       R10 P1
       86 CAPTURE                          VAL R4
       87 SETTABLEKS                       R10 R9 K19 ["rawValue"]
       89 CALL                             R8 1 1
       90 SETTABLEKS                       R8 R7 K21 ["__index"]
       92 SETTABLE                         R6 R0 R3
       93 SETTABLE                         R6 R1 R4
       94 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["userdata"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K4 [pairs]
       11 GETUPVAL                         R2 0
       12 CALL                             R1 1 3
       13 FORGPREP_NEXT                    R1
       14 JUMPIFNOTEQ                      R5 R0 ; [+3]
       16 LOADB                            R6 1
       17 RETURN                           R6 1
       18 FORGLOOP                         R1 2 ; [-5]
       20 LOADB                            R1 0
       21 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R5
       11 GETIMPORT                        R6 K4 [table.insert]
       13 CALL                             R6 2 0
       14 FORGLOOP                         R1 2 ; [-8]
       16 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_10:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Bad argument #1 - enums must be created using a string name!"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["table"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["Bad argument #2 - enums must be created using a table!"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 NEWTABLE                         R2 4 0
       32 NEWTABLE                         R3 0 0
       34 GETTABLEN                        R4 R1 1
       35 JUMPIFEQKNIL                     R4 ; [+16]
       37 GETIMPORT                        R4 K9 [ipairs]
       39 MOVE                             R5 R1
       40 CALL                             R4 1 3
       41 FORGPREP_INEXT                   R4
       42 GETUPVAL                         R9 0
       43 MOVE                             R10 R2
       44 MOVE                             R11 R3
       45 MOVE                             R12 R0
       46 MOVE                             R13 R8
       47 MOVE                             R14 R8
       48 CALL                             R9 5 0
       49 FORGLOOP                         R4 2 [inext] ; [-8]
       51 JUMP                             ; [+14]
       52 GETIMPORT                        R4 K11 [pairs]
       54 MOVE                             R5 R1
       55 CALL                             R4 1 3
       56 FORGPREP_NEXT                    R4
       57 GETUPVAL                         R9 0
       58 MOVE                             R10 R2
       59 MOVE                             R11 R3
       60 MOVE                             R12 R0
       61 MOVE                             R13 R7
       62 MOVE                             R14 R8
       63 CALL                             R9 5 0
       64 FORGLOOP                         R4 2 ; [-8]
       66 NEWCLOSURE                       R4 P0
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R4 R2 K12 ["fromRawValue"]
       70 NEWCLOSURE                       R4 P1
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R4 R2 K13 ["isEnumValue"]
       74 NEWCLOSURE                       R4 P2
       75 CAPTURE                          VAL R3
       76 SETTABLEKS                       R4 R2 K14 ["allValues"]
       78 GETIMPORT                        R4 K16 [newproxy]
       80 LOADB                            R5 1
       81 CALL                             R4 1 1
       82 FASTCALL1                        GETMETATABLE R4 ; [+3]
       83 MOVE                             R6 R4
       84 GETIMPORT                        R5 K18 [getmetatable]
       86 CALL                             R5 1 1
       87 GETUPVAL                         R6 1
       88 MOVE                             R7 R2
       89 MOVE                             R8 R0
       90 CALL                             R6 2 1
       91 SETTABLEKS                       R6 R5 K19 ["__index"]
       93 NEWCLOSURE                       R6 P3
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R6 R5 K20 ["__tostring"]
       97 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 DUPCLOSURE                       R1 K1 [PROTO_5]
        3 CAPTURE                          VAL R0
        4 DUPCLOSURE                       R2 K2 [PROTO_10]
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 RETURN                           R2 1
