PROTO_0:
        0 MOVE                             R4 R0
        1 NAMECALL                         R2 R1 K0 ["exec"]
        3 CALL                             R2 2 1
        4 NEWTABLE                         R3 0 0
        6 JUMPIFNOT                        R2 ; [+25]
        7 GETTABLEN                        R4 R2 1
        8 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       10 MOVE                             R6 R3
       11 MOVE                             R7 R4
       12 GETIMPORT                        R5 K3 [table.insert]
       14 CALL                             R5 2 0
       15 GETTABLEKS                       R5 R2 K4 ["input"]
       17 GETTABLEKS                       R8 R2 K5 ["index"]
       19 NAMECALL                         R9 R4 K6 ["len"]
       21 CALL                             R9 1 1
       22 ADD                              R7 R8 R9
       23 NAMECALL                         R5 R5 K7 ["sub"]
       25 CALL                             R5 2 1
       26 MOVE                             R8 R5
       27 NAMECALL                         R6 R1 K0 ["exec"]
       29 CALL                             R6 2 1
       30 MOVE                             R2 R6
       31 JUMPBACK                         ; [-26]
       32 RETURN                           R3 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["exec"]
        4 CALL                             R1 2 1
        5 MOVE                             R2 R0
        6 JUMPIFNOT                        R1 ; [+40]
        7 NEWTABLE                         R3 0 0
        9 GETTABLEN                        R4 R1 1
       10 LOADK                            R6 K1 ["%%(%x%x)"]
       11 NAMECALL                         R4 R4 K2 ["gmatch"]
       13 CALL                             R4 2 3
       14 FORGPREP                         R4
       15 FASTCALL2K                       TONUMBER R7 K3 ; [+5]
       17 MOVE                             R10 R7
       18 LOADK                            R11 K3 [16]
       19 GETIMPORT                        R9 K5 [tonumber]
       21 CALL                             R9 2 1
       22 LOADN                            R10 128
       23 JUMPIFNOTLE                      R10 R9 ; [+5]
       25 GETIMPORT                        R10 K7 [error]
       27 LOADK                            R11 K8 ["malformed URI sequence"]
       28 CALL                             R10 1 0
       29 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       31 MOVE                             R11 R3
       32 MOVE                             R12 R9
       33 GETIMPORT                        R10 K11 [table.insert]
       35 CALL                             R10 2 0
       36 FORGLOOP                         R4 1 ; [-22]
       38 GETIMPORT                        R4 K14 [utf8.char]
       40 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
       41 MOVE                             R6 R3
       42 GETIMPORT                        R5 K16 [unpack]
       44 CALL                             R5 1 -1
       45 CALL                             R4 -1 1
       46 MOVE                             R2 R4
       47 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 GETIMPORT                        R4 K4 [table.concat]
        5 MOVE                             R5 R0
        6 LOADK                            R6 K5 [""]
        7 CALL                             R4 2 -1
        8 CALL                             R2 -1 2
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R3 1
       11 LENGTH                           R4 R0
       12 JUMPIFNOTEQKN                    R4 K6 [1] ; [+2]
       14 RETURN                           R0 1
       15 ORK                              R1 R1 K6 [1]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K7 ["slice"]
       19 MOVE                             R5 R0
       20 LOADN                            R6 1
       21 ADDK                             R7 R1 K6 [1]
       22 CALL                             R4 3 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R5 R6 K7 ["slice"]
       26 MOVE                             R6 R0
       27 ADDK                             R7 R1 K6 [1]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K3 ["concat"]
       32 GETUPVAL                         R7 2
       33 MOVE                             R8 R4
       34 CALL                             R7 1 1
       35 GETUPVAL                         R8 2
       36 MOVE                             R9 R5
       37 CALL                             R8 1 -1
       38 CALL                             R6 -1 -1
       39 RETURN                           R6 -1

PROTO_4:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R2 1
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 GETUPVAL                         R5 2
       10 CALL                             R3 2 1
       11 LOADN                            R4 2
       12 GETTABLE                         R5 R3 R4
       13 JUMPIFNOT                        R5 ; [+16]
       14 GETIMPORT                        R5 K4 [table.concat]
       16 GETUPVAL                         R6 3
       17 MOVE                             R7 R3
       18 MOVE                             R8 R4
       19 CALL                             R6 2 1
       20 LOADK                            R7 K5 [""]
       21 CALL                             R5 2 1
       22 MOVE                             R0 R5
       23 GETUPVAL                         R5 1
       24 MOVE                             R6 R0
       25 GETUPVAL                         R7 2
       26 CALL                             R5 2 1
       27 MOVE                             R3 R5
       28 ADDK                             R4 R4 K6 [1]
       29 JUMPBACK                         ; [-18]
       30 RETURN                           R0 1

PROTO_5:
        0 LOADK                            R3 K0 ["%%"]
        1 LOADK                            R4 K1 ["%%%%"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 JUMPIFEQ                         R1 R2 ; [+16]
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 1
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFNOTEQKNIL                  R2 ; [+8]
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R4 1
       13 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       15 GETIMPORT                        R2 K2 [table.insert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 1
       20 SETTABLE                         R1 R2 R3
       21 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [utf8.char]
        2 LOADK                            R2 K3 [65533]
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 2 0
        6 MOVE                             R4 R1
        7 MOVE                             R5 R1
        8 CONCAT                           R3 R4 R5
        9 SETTABLEKS                       R3 R2 K4 ["%FE%FF"]
       11 MOVE                             R4 R1
       12 MOVE                             R5 R1
       13 CONCAT                           R3 R4 R5
       14 SETTABLEKS                       R3 R2 K5 ["%FF%FE"]
       16 NEWTABLE                         R3 0 2
       18 LOADK                            R4 K4 ["%FE%FF"]
       19 LOADK                            R5 K5 ["%FF%FE"]
       20 SETLIST                          R3 R4 2 [1]
       22 GETUPVAL                         R4 0
       23 MOVE                             R6 R0
       24 NAMECALL                         R4 R4 K6 ["exec"]
       26 CALL                             R4 2 1
       27 JUMPIFNOT                        R4 ; [+41]
       28 GETTABLEN                        R5 R4 1
       29 GETIMPORT                        R6 K8 [xpcall]
       31 GETUPVAL                         R7 1
       32 NEWCLOSURE                       R8 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 MOVE                             R9 R5
       38 CALL                             R6 3 2
       39 JUMPIFNOT                        R6 ; [+11]
       40 GETTABLE                         R8 R2 R5
       41 JUMPIFNOTEQKNIL                  R8 ; [+8]
       43 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
       45 MOVE                             R9 R3
       46 MOVE                             R10 R5
       47 GETIMPORT                        R8 K11 [table.insert]
       49 CALL                             R8 2 0
       50 SETTABLE                         R7 R2 R5
       51 GETTABLEKS                       R8 R4 K12 ["input"]
       53 GETTABLEKS                       R11 R4 K13 ["index"]
       55 NAMECALL                         R12 R5 K14 ["len"]
       57 CALL                             R12 1 1
       58 ADD                              R10 R11 R12
       59 NAMECALL                         R8 R8 K15 ["sub"]
       61 CALL                             R8 2 1
       62 GETUPVAL                         R9 0
       63 MOVE                             R11 R8
       64 NAMECALL                         R9 R9 K6 ["exec"]
       66 CALL                             R9 2 1
       67 MOVE                             R4 R9
       68 JUMPBACK                         ; [-42]
       69 SETTABLEKS                       R1 R2 K16 ["%C2"]
       71 FASTCALL2K                       TABLE_INSERT R3 K16 ; [+5]
       73 MOVE                             R6 R3
       74 LOADK                            R7 K16 ["%C2"]
       75 GETIMPORT                        R5 K11 [table.insert]
       77 CALL                             R5 2 0
       78 MOVE                             R5 R3
       79 LOADNIL                          R6
       80 LOADNIL                          R7
       81 FORGPREP                         R5
       82 GETIMPORT                        R10 K19 [string.gsub]
       84 MOVE                             R11 R0
       85 LOADK                            R15 K20 ["%%"]
       86 LOADK                            R16 K21 ["%%%%"]
       87 NAMECALL                         R13 R9 K18 ["gsub"]
       89 CALL                             R13 3 1
       90 MOVE                             R12 R13
       91 GETTABLE                         R14 R2 R9
       92 LOADK                            R17 K20 ["%%"]
       93 LOADK                            R18 K21 ["%%%%"]
       94 NAMECALL                         R15 R14 K18 ["gsub"]
       96 CALL                             R15 3 1
       97 MOVE                             R13 R15
       98 CALL                             R10 3 1
       99 MOVE                             R0 R10
      100 FORGLOOP                         R5 2 ; [-19]
      102 RETURN                           R0 1

PROTO_8:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+14]
        7 GETIMPORT                        R1 K4 [error]
        9 LOADK                            R4 K5 ["Expected `encodedURI` to be of type `string`, got `"]
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R8 R0
       12 GETIMPORT                        R7 K7 [typeof]
       14 CALL                             R7 1 1
       15 MOVE                             R5 R7
       16 LOADK                            R6 K8 ["`"]
       17 CONCAT                           R3 R4 R6
       18 MOVE                             R2 R3
       19 CALL                             R1 1 0
       20 LOADK                            R3 K9 ["%+"]
       21 LOADK                            R4 K10 [" "]
       22 NAMECALL                         R1 R0 K11 ["gsub"]
       24 CALL                             R1 3 1
       25 MOVE                             R0 R1
       26 GETUPVAL                         R1 0
       27 MOVE                             R2 R0
       28 CALL                             R1 1 1
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R1 K7 ["RegExp"]
       20 CALL                             R4 1 1
       21 DUPCLOSURE                       R5 K8 [PROTO_0]
       22 DUPCLOSURE                       R6 K9 [PROTO_1]
       23 MOVE                             R7 R4
       24 LOADK                            R8 K10 ["(%[a-fA-F0-9]{2})+"]
       25 LOADK                            R9 K11 ["i"]
       26 CALL                             R7 2 1
       27 DUPCLOSURE                       R8 K12 [PROTO_2]
       28 CAPTURE                          VAL R7
       29 MOVE                             R9 R4
       30 LOADK                            R10 K13 ["%[a-fA-F0-9]{2}"]
       31 LOADK                            R11 K11 ["i"]
       32 CALL                             R9 2 1
       33 MOVE                             R10 R4
       34 LOADK                            R11 K10 ["(%[a-fA-F0-9]{2})+"]
       35 LOADK                            R12 K11 ["i"]
       36 CALL                             R10 2 1
       37 DUPCLOSURE                       R11 K14 [PROTO_3]
       38 CAPTURE                          VAL R8
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R11
       41 DUPCLOSURE                       R12 K15 [PROTO_4]
       42 CAPTURE                          VAL R8
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R9
       45 CAPTURE                          VAL R11
       46 DUPCLOSURE                       R13 K16 [PROTO_5]
       47 DUPCLOSURE                       R14 K17 [PROTO_7]
       48 CAPTURE                          VAL R10
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R12
       51 DUPCLOSURE                       R15 K18 [PROTO_8]
       52 CAPTURE                          VAL R14
       53 RETURN                           R15 1
