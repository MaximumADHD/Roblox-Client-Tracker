PROTO_0:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["root"]
        2 SETTABLEKS                       R2 R0 K1 ["sep"]
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["root"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["sep"]
        2 RETURN                           R1 1

PROTO_5:
        0 JUMPIFEQ                         R1 R2 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 RETURN                           R3 1

PROTO_6:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["normalizeSeparators"]
        3 CALL                             R2 2 1
        4 MOVE                             R1 R2
        5 LOADK                            R2 K1 [""]
        6 MOVE                             R5 R1
        7 NAMECALL                         R3 R0 K2 ["isAbsolute"]
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+5]
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R0 K3 ["isDriveRelative"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+13]
       16 MOVE                             R5 R1
       17 NAMECALL                         R3 R0 K4 ["getRoot"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 NAMECALL                         R6 R2 K6 ["len"]
       23 CALL                             R6 1 1
       24 ADDK                             R5 R6 K5 [1]
       25 NAMECALL                         R3 R1 K7 ["sub"]
       27 CALL                             R3 2 1
       28 MOVE                             R1 R3
       29 LOADK                            R6 K8 ["["]
       30 GETTABLEKS                       R7 R0 K9 ["sep"]
       32 LOADK                            R8 K10 ["]*$"]
       33 CONCAT                           R5 R6 R8
       34 NAMECALL                         R3 R1 K11 ["match"]
       36 CALL                             R3 2 1
       37 JUMPIFNOT                        R3 ; [+10]
       38 LOADN                            R6 1
       39 NAMECALL                         R9 R3 K6 ["len"]
       41 CALL                             R9 1 1
       42 MINUS                            R8 R9
       43 SUBK                             R7 R8 K5 [1]
       44 NAMECALL                         R4 R1 K7 ["sub"]
       46 CALL                             R4 3 1
       47 MOVE                             R1 R4
       48 LOADK                            R8 K12 ["[^"]
       49 GETTABLEKS                       R9 R0 K9 ["sep"]
       51 LOADK                            R10 K13 ["]+$"]
       52 CONCAT                           R7 R8 R10
       53 NAMECALL                         R5 R1 K11 ["match"]
       55 CALL                             R5 2 1
       56 ORK                              R4 R5 K1 [""]
       57 JUMPIFNOT                        R4 ; [+10]
       58 LOADN                            R7 1
       59 NAMECALL                         R10 R4 K6 ["len"]
       61 CALL                             R10 1 1
       62 MINUS                            R9 R10
       63 SUBK                             R8 R9 K5 [1]
       64 NAMECALL                         R5 R1 K7 ["sub"]
       66 CALL                             R5 3 1
       67 JUMPIF                           R5 ; [+1]
       68 MOVE                             R5 R1
       69 MOVE                             R6 R2
       70 MOVE                             R7 R5
       71 MOVE                             R8 R4
       72 RETURN                           R6 3

PROTO_7:
        0 LOADN                            R3 0
        1 LENGTH                           R6 R1
        2 LOADN                            R4 1
        3 LOADN                            R5 -1
        4 FORNPREP                         R4
        5 GETTABLE                         R7 R1 R6
        6 JUMPIFNOTEQKS                    R7 K0 ["."] ; [+7]
        8 GETIMPORT                        R8 K3 [table.remove]
       10 MOVE                             R9 R1
       11 MOVE                             R10 R6
       12 CALL                             R8 2 0
       13 JUMP                             ; [+18]
       14 JUMPIFNOTEQKS                    R7 K4 [".."] ; [+8]
       16 GETIMPORT                        R8 K3 [table.remove]
       18 MOVE                             R9 R1
       19 MOVE                             R10 R6
       20 CALL                             R8 2 0
       21 ADDK                             R3 R3 K5 [1]
       22 JUMP                             ; [+9]
       23 LOADN                            R8 0
       24 JUMPIFNOTLT                      R8 R3 ; [+7]
       26 GETIMPORT                        R8 K3 [table.remove]
       28 MOVE                             R9 R1
       29 MOVE                             R10 R6
       30 CALL                             R8 2 0
       31 SUBK                             R3 R3 K5 [1]
       32 FORNLOOP                         R4
       33 JUMPIFNOT                        R2 ; [+13]
       34 LOADN                            R4 0
       35 JUMPIFNOTLT                      R4 R3 ; [+11]
       37 LOADN                            R6 1
       38 LOADK                            R7 K4 [".."]
       39 FASTCALL3                        TABLE_INSERT R1 R6 R7
       41 MOVE                             R5 R1
       42 GETIMPORT                        R4 K7 [table.insert]
       44 CALL                             R4 3 0
       45 SUBK                             R3 R3 K5 [1]
       46 JUMPBACK                         ; [-13]
       47 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R2 0 0
        2 LOADK                            R6 K0 ["[^"]
        3 GETTABLEKS                       R7 R0 K1 ["sep"]
        5 LOADK                            R8 K2 ["]+"]
        6 CONCAT                           R5 R6 R8
        7 NAMECALL                         R3 R1 K3 ["gmatch"]
        9 CALL                             R3 2 3
       10 FORGPREP                         R3
       11 LENGTH                           R9 R2
       12 ADDK                             R8 R9 K4 [1]
       13 SETTABLE                         R6 R2 R8
       14 FORGLOOP                         R3 1 ; [-4]
       16 RETURN                           R2 1

PROTO_9:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["normalizeSeparators"]
        3 CALL                             R2 2 1
        4 MOVE                             R1 R2
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K1 ["isAbsolute"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 MOVE                             R5 R1
       11 NAMECALL                         R3 R0 K2 ["getRoot"]
       13 CALL                             R3 2 1
       14 JUMPIF                           R3 ; [+1]
       15 LOADNIL                          R3
       16 LENGTH                           R7 R1
       17 NAMECALL                         R5 R1 K3 ["sub"]
       19 CALL                             R5 2 1
       20 GETTABLEKS                       R6 R0 K4 ["sep"]
       22 JUMPIFEQ                         R5 R6 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 JUMPIFNOT                        R3 ; [+8]
       27 NAMECALL                         R8 R3 K6 ["len"]
       29 CALL                             R8 1 1
       30 ADDK                             R7 R8 K5 [1]
       31 NAMECALL                         R5 R1 K3 ["sub"]
       33 CALL                             R5 2 1
       34 MOVE                             R1 R5
       35 MOVE                             R7 R1
       36 NAMECALL                         R5 R0 K7 ["_splitBySeparators"]
       38 CALL                             R5 2 1
       39 MOVE                             R8 R5
       40 NOT                              R9 R2
       41 NAMECALL                         R6 R0 K8 ["_normalizeArray"]
       43 CALL                             R6 3 0
       44 GETIMPORT                        R6 K11 [table.concat]
       46 MOVE                             R7 R5
       47 GETTABLEKS                       R8 R0 K4 ["sep"]
       49 CALL                             R6 2 1
       50 MOVE                             R1 R6
       51 LENGTH                           R6 R1
       52 JUMPIFNOTEQKN                    R6 K12 [0] ; [+5]
       54 JUMPIFNOT                        R2 ; [+1]
       55 RETURN                           R3 1
       56 LOADK                            R6 K13 ["."]
       57 RETURN                           R6 1
       58 JUMPIFNOT                        R4 ; [+4]
       59 MOVE                             R6 R1
       60 GETTABLEKS                       R7 R0 K4 ["sep"]
       62 CONCAT                           R1 R6 R7
       63 JUMPIFNOT                        R2 ; [+3]
       64 MOVE                             R6 R3
       65 MOVE                             R7 R1
       66 CONCAT                           R1 R6 R7
       67 RETURN                           R1 1

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 JUMPIFNOT                        R7 ; [+9]
        8 JUMPIFEQKS                       R7 K2 [""] ; [+8]
       10 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       12 MOVE                             R9 R2
       13 MOVE                             R10 R7
       14 GETIMPORT                        R8 K5 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 [inext] ; [-11]
       19 GETIMPORT                        R3 K1 [ipairs]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 3
       23 FORGPREP_INEXT                   R3
       24 LOADN                            R8 1
       25 JUMPIFNOTLT                      R8 R6 ; [+16]
       27 LOADN                            R10 1
       28 LOADN                            R11 1
       29 NAMECALL                         R8 R7 K6 ["sub"]
       31 CALL                             R8 3 1
       32 GETTABLEKS                       R9 R0 K7 ["sep"]
       34 JUMPIFNOTEQ                      R8 R9 ; [+7]
       36 LOADN                            R10 2
       37 NAMECALL                         R8 R7 K6 ["sub"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 JUMPBACK                         ; [-15]
       42 LENGTH                           R8 R2
       43 JUMPIFNOTLT                      R6 R8 ; [+17]
       45 LENGTH                           R10 R7
       46 NAMECALL                         R8 R7 K6 ["sub"]
       48 CALL                             R8 2 1
       49 GETTABLEKS                       R9 R0 K7 ["sep"]
       51 JUMPIFNOTEQ                      R8 R9 ; [+9]
       53 LOADN                            R10 1
       54 LENGTH                           R12 R7
       55 SUBK                             R11 R12 K8 [1]
       56 NAMECALL                         R8 R7 K6 ["sub"]
       58 CALL                             R8 3 1
       59 MOVE                             R7 R8
       60 JUMPBACK                         ; [-16]
       61 SETTABLE                         R7 R2 R6
       62 FORGLOOP                         R3 2 [inext] ; [-39]
       64 RETURN                           R2 1

PROTO_11:
        0 GETIMPORT                        R2 K2 [table.concat]
        2 MOVE                             R3 R1
        3 GETTABLEKS                       R4 R0 K3 ["sep"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_12:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 GETIMPORT                        R2 K1 [ipairs]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 3
       10 FORGPREP_INEXT                   R2
       11 MOVE                             R9 R6
       12 NAMECALL                         R7 R0 K2 ["normalizeSeparators"]
       14 CALL                             R7 2 1
       15 SETTABLE                         R7 R1 R5
       16 FORGLOOP                         R2 2 [inext] ; [-6]
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R0 K3 ["_filterparts"]
       21 CALL                             R2 2 1
       22 MOVE                             R5 R2
       23 NAMECALL                         R3 R0 K4 ["_rawjoin"]
       25 CALL                             R3 2 1
       26 MOVE                             R4 R3
       27 MOVE                             R5 R2
       28 RETURN                           R4 2

PROTO_13:
        0 PREPVARARGS                      1
        1 GETVARARGS                       R3 -1
        2 NAMECALL                         R1 R0 K0 ["_filteredjoin"]
        4 CALL                             R1 -1 1
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K1 ["normalize"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_14:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 LOADK                            R2 K0 [""]
        7 LOADNIL                          R3
        8 LOADB                            R4 0
        9 LENGTH                           R7 R1
       10 LOADN                            R5 1
       11 LOADN                            R6 -1
       12 FORNPREP                         R5
       13 GETTABLE                         R8 R1 R7
       14 JUMPIFNOT                        R8 ; [+58]
       15 JUMPIFEQKS                       R8 K0 [""] ; [+57]
       17 MOVE                             R9 R3
       18 JUMPIFNOT                        R9 ; [+4]
       19 MOVE                             R11 R8
       20 NAMECALL                         R9 R0 K1 ["getRoot"]
       22 CALL                             R9 2 1
       23 MOVE                             R12 R8
       24 NAMECALL                         R10 R0 K2 ["isDriveRelative"]
       26 CALL                             R10 2 1
       27 JUMPIFNOT                        R10 ; [+16]
       28 MOVE                             R10 R9
       29 JUMPIF                           R10 ; [+4]
       30 MOVE                             R12 R8
       31 NAMECALL                         R10 R0 K1 ["getRoot"]
       33 CALL                             R10 2 1
       34 MOVE                             R9 R10
       35 OR                               R3 R3 R9
       36 NAMECALL                         R13 R9 K4 ["len"]
       38 CALL                             R13 1 1
       39 ADDK                             R12 R13 K3 [1]
       40 NAMECALL                         R10 R8 K5 ["sub"]
       42 CALL                             R10 2 1
       43 MOVE                             R8 R10
       44 JUMPIFNOT                        R9 ; [+12]
       45 LOADN                            R12 1
       46 LOADN                            R13 2
       47 NAMECALL                         R10 R3 K5 ["sub"]
       49 CALL                             R10 3 1
       50 LOADN                            R13 1
       51 LOADN                            R14 2
       52 NAMECALL                         R11 R9 K5 ["sub"]
       54 CALL                             R11 3 1
       55 JUMPIFNOTEQ                      R10 R11 ; [+17]
       57 MOVE                             R14 R8
       58 NAMECALL                         R12 R0 K6 ["normalize"]
       60 CALL                             R12 2 1
       61 MOVE                             R13 R2
       62 NAMECALL                         R10 R0 K7 ["join"]
       64 CALL                             R10 3 1
       65 MOVE                             R2 R10
       66 MOVE                             R12 R2
       67 NAMECALL                         R10 R0 K8 ["isAbsolute"]
       69 CALL                             R10 2 1
       70 JUMPIFNOT                        R10 ; [+2]
       71 LOADB                            R4 1
       72 JUMP                             ; [+1]
       73 FORNLOOP                         R5
       74 JUMPIF                           R4 ; [+42]
       75 JUMPIFNOT                        R3 ; [+32]
       76 GETUPVAL                         R6 0
       77 GETTABLEKS                       R6 R6 K9 ["env"]
       79 LOADK                            R8 K10 ["="]
       80 MOVE                             R9 R3
       81 CONCAT                           R7 R8 R9
       82 GETTABLE                         R5 R6 R7
       83 JUMPIFNOT                        R5 ; [+17]
       84 LOADN                            R10 1
       85 LOADN                            R11 2
       86 NAMECALL                         R8 R5 K5 ["sub"]
       88 CALL                             R8 3 1
       89 MOVE                             R9 R3
       90 NAMECALL                         R6 R0 K11 ["pathsEqual"]
       92 CALL                             R6 3 1
       93 JUMPIFNOT                        R6 ; [+7]
       94 MOVE                             R8 R5
       95 MOVE                             R9 R2
       96 NAMECALL                         R6 R0 K7 ["join"]
       98 CALL                             R6 3 1
       99 MOVE                             R2 R6
      100 JUMP                             ; [+16]
      101 MOVE                             R8 R3
      102 MOVE                             R9 R2
      103 NAMECALL                         R6 R0 K7 ["join"]
      105 CALL                             R6 3 1
      106 MOVE                             R2 R6
      107 JUMP                             ; [+9]
      108 GETUPVAL                         R7 0
      109 GETTABLEKS                       R7 R7 K12 ["cwd"]
      111 CALL                             R7 0 1
      112 MOVE                             R8 R2
      113 NAMECALL                         R5 R0 K7 ["join"]
      115 CALL                             R5 3 1
      116 MOVE                             R2 R5
      117 LOADK                            R8 K13 ["["]
      118 GETTABLEKS                       R9 R0 K14 ["sep"]
      120 LOADK                            R10 K15 ["]*$"]
      121 CONCAT                           R7 R8 R10
      122 NAMECALL                         R5 R2 K16 ["match"]
      124 CALL                             R5 2 1
      125 JUMPIFNOT                        R5 ; [+10]
      126 LOADN                            R8 1
      127 NAMECALL                         R11 R5 K4 ["len"]
      129 CALL                             R11 1 1
      130 MINUS                            R10 R11
      131 SUBK                             R9 R10 K3 [1]
      132 NAMECALL                         R6 R2 K5 ["sub"]
      134 CALL                             R6 3 1
      135 MOVE                             R2 R6
      136 RETURN                           R2 1

PROTO_15:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 NEWTABLE                         R2 0 0
        5 GETVARARGS                       R3 -1
        6 SETLIST                          R2 R3 -1 [1]
        8 NEWTABLE                         R3 0 0
       10 GETIMPORT                        R4 K1 [ipairs]
       12 MOVE                             R5 R2
       13 CALL                             R4 1 3
       14 FORGPREP_INEXT                   R4
       15 MOVE                             R10 R3
       16 MOVE                             R13 R8
       17 NAMECALL                         R11 R0 K2 ["_splitBySeparators"]
       19 CALL                             R11 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R9 K5 [table.insert]
       23 CALL                             R9 -1 0
       24 FORGLOOP                         R4 2 [inext] ; [-10]
       26 LOADN                            R6 1
       27 GETTABLEN                        R7 R3 1
       28 LENGTH                           R4 R7
       29 LOADN                            R5 1
       30 FORNPREP                         R4
       31 GETTABLEN                        R8 R3 1
       32 GETTABLE                         R7 R8 R6
       33 LOADN                            R10 2
       34 LENGTH                           R8 R3
       35 LOADN                            R9 1
       36 FORNPREP                         R8
       37 GETTABLE                         R12 R3 R10
       38 GETTABLE                         R11 R12 R6
       39 MOVE                             R14 R7
       40 MOVE                             R15 R11
       41 NAMECALL                         R12 R0 K6 ["pathsEqual"]
       43 CALL                             R12 3 1
       44 JUMPIF                           R12 ; [+1]
       45 RETURN                           R1 1
       46 FORNLOOP                         R8
       47 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       49 MOVE                             R9 R1
       50 MOVE                             R10 R7
       51 GETIMPORT                        R8 K5 [table.insert]
       53 CALL                             R8 2 0
       54 FORNLOOP                         R4
       55 RETURN                           R1 1

PROTO_16:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["_splitPath"]
        3 CALL                             R3 2 3
        4 MOVE                             R8 R2
        5 NAMECALL                         R6 R0 K0 ["_splitPath"]
        7 CALL                             R6 2 3
        8 MOVE                             R11 R3
        9 MOVE                             R12 R6
       10 NAMECALL                         R9 R0 K1 ["pathsEqual"]
       12 CALL                             R9 3 1
       13 JUMPIF                           R9 ; [+1]
       14 RETURN                           R2 1
       15 MOVE                             R11 R4
       16 MOVE                             R12 R5
       17 CONCAT                           R9 R11 R12
       18 MOVE                             R11 R7
       19 MOVE                             R12 R8
       20 CONCAT                           R10 R11 R12
       21 MOVE                             R13 R9
       22 MOVE                             R14 R10
       23 NAMECALL                         R11 R0 K2 ["_commonParts"]
       25 CALL                             R11 3 1
       26 MOVE                             R14 R9
       27 NAMECALL                         R12 R0 K3 ["_splitBySeparators"]
       29 CALL                             R12 2 1
       30 MOVE                             R15 R10
       31 NAMECALL                         R13 R0 K3 ["_splitBySeparators"]
       33 CALL                             R13 2 1
       34 NEWTABLE                         R14 0 0
       36 LENGTH                           R15 R11
       37 LOADN                            R16 0
       38 JUMPIFNOTLT                      R16 R15 ; [+14]
       40 LENGTH                           R17 R11
       41 LENGTH                           R18 R12
       42 SUBK                             R15 R18 K4 [1]
       43 LOADN                            R16 1
       44 FORNPREP                         R15
       45 FASTCALL2K                       TABLE_INSERT R14 K5 ; [+5]
       47 MOVE                             R19 R14
       48 LOADK                            R20 K5 [".."]
       49 GETIMPORT                        R18 K8 [table.insert]
       51 CALL                             R18 2 0
       52 FORNLOOP                         R15
       53 LENGTH                           R18 R11
       54 ADDK                             R17 R18 K4 [1]
       55 LENGTH                           R15 R13
       56 LOADN                            R16 1
       57 FORNPREP                         R15
       58 GETTABLE                         R20 R13 R17
       59 FASTCALL2                        TABLE_INSERT R14 R20 ; [+4]
       61 MOVE                             R19 R14
       62 GETIMPORT                        R18 K8 [table.insert]
       64 CALL                             R18 2 0
       65 FORNLOOP                         R15
       66 MOVE                             R17 R14
       67 NAMECALL                         R15 R0 K9 ["_rawjoin"]
       69 CALL                             R15 2 -1
       70 RETURN                           R15 -1

PROTO_17:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["normalizeSeparators"]
        3 CALL                             R2 2 1
        4 MOVE                             R1 R2
        5 NAMECALL                         R4 R1 K1 ["len"]
        7 CALL                             R4 1 -1
        8 NAMECALL                         R2 R1 K2 ["sub"]
       10 CALL                             R2 -1 1
       11 GETTABLEKS                       R3 R0 K3 ["sep"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+7]
       15 LOADN                            R4 1
       16 LOADN                            R5 -2
       17 NAMECALL                         R2 R1 K2 ["sub"]
       19 CALL                             R2 3 1
       20 MOVE                             R1 R2
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R0 K4 ["_splitPath"]
       24 CALL                             R2 2 2
       25 LENGTH                           R4 R3
       26 LOADN                            R5 0
       27 JUMPIFNOTLT                      R5 R4 ; [+12]
       29 LOADN                            R6 1
       30 LENGTH                           R8 R3
       31 SUBK                             R7 R8 K5 [1]
       32 NAMECALL                         R4 R3 K2 ["sub"]
       34 CALL                             R4 3 1
       35 MOVE                             R3 R4
       36 MOVE                             R5 R2
       37 MOVE                             R6 R3
       38 CONCAT                           R4 R5 R6
       39 RETURN                           R4 1
       40 LENGTH                           R4 R2
       41 LOADN                            R5 0
       42 JUMPIFNOTLT                      R5 R4 ; [+2]
       44 RETURN                           R2 1
       45 LOADK                            R4 K6 ["."]
       46 RETURN                           R4 1

PROTO_18:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["_splitPath"]
        3 CALL                             R3 2 3
        4 JUMPIFNOT                        R2 ; [+18]
        5 LOADK                            R13 K1 ["."]
        6 LOADK                            R14 K1 ["."]
        7 NAMECALL                         R11 R2 K2 ["gsub"]
        9 CALL                             R11 3 1
       10 MOVE                             R9 R11
       11 LOADK                            R10 K3 ["$"]
       12 CONCAT                           R8 R9 R10
       13 NAMECALL                         R6 R5 K4 ["find"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+6]
       17 LOADN                            R9 1
       18 SUBK                             R10 R6 K5 [1]
       19 NAMECALL                         R7 R5 K6 ["sub"]
       21 CALL                             R7 3 1
       22 MOVE                             R5 R7
       23 RETURN                           R5 1

PROTO_19:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["basename"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKS                    R2 K1 [".."] ; [+3]
        6 LOADK                            R3 K2 [""]
        7 RETURN                           R3 1
        8 LOADK                            R6 K3 [".(%.[^.]*)$"]
        9 NAMECALL                         R4 R2 K4 ["match"]
       11 CALL                             R4 2 1
       12 ORK                              R3 R4 K2 [""]
       13 RETURN                           R3 1

PROTO_20:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_21:
        0 LOADN                            R5 1
        1 GETTABLEKS                       R6 R0 K0 ["root"]
        3 NAMECALL                         R6 R6 K1 ["len"]
        5 CALL                             R6 1 -1
        6 NAMECALL                         R3 R1 K2 ["sub"]
        8 CALL                             R3 -1 1
        9 GETTABLEKS                       R4 R0 K0 ["root"]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_22:
        0 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 DUPTABLE                         R3 K8 [{"env", "cwd"}]
       13 NEWTABLE                         R4 0 0
       15 SETTABLEKS                       R4 R3 K6 ["env"]
       17 DUPCLOSURE                       R4 K9 [PROTO_0]
       18 SETTABLEKS                       R4 R3 K7 ["cwd"]
       20 NEWTABLE                         R4 32 0
       22 SETTABLEKS                       R4 R4 K10 ["__index"]
       24 DUPCLOSURE                       R5 K11 [PROTO_1]
       25 CAPTURE                          VAL R4
       26 SETTABLEKS                       R5 R4 K12 ["new"]
       28 DUPCLOSURE                       R5 K13 [PROTO_2]
       29 SETTABLEKS                       R5 R4 K14 ["initialize"]
       31 DUPCLOSURE                       R5 K15 [PROTO_3]
       32 SETTABLEKS                       R5 R4 K16 ["getRoot"]
       34 DUPCLOSURE                       R5 K17 [PROTO_4]
       35 SETTABLEKS                       R5 R4 K18 ["getSep"]
       37 DUPCLOSURE                       R5 K19 [PROTO_5]
       38 SETTABLEKS                       R5 R4 K20 ["pathsEqual"]
       40 DUPCLOSURE                       R5 K21 [PROTO_6]
       41 SETTABLEKS                       R5 R4 K22 ["_splitPath"]
       43 DUPCLOSURE                       R5 K23 [PROTO_7]
       44 SETTABLEKS                       R5 R4 K24 ["_normalizeArray"]
       46 DUPCLOSURE                       R5 K25 [PROTO_8]
       47 SETTABLEKS                       R5 R4 K26 ["_splitBySeparators"]
       49 DUPCLOSURE                       R5 K27 [PROTO_9]
       50 SETTABLEKS                       R5 R4 K28 ["normalize"]
       52 DUPCLOSURE                       R5 K29 [PROTO_10]
       53 SETTABLEKS                       R5 R4 K30 ["_filterparts"]
       55 DUPCLOSURE                       R5 K31 [PROTO_11]
       56 SETTABLEKS                       R5 R4 K32 ["_rawjoin"]
       58 DUPCLOSURE                       R5 K33 [PROTO_12]
       59 SETTABLEKS                       R5 R4 K34 ["_filteredjoin"]
       61 DUPCLOSURE                       R5 K35 [PROTO_13]
       62 SETTABLEKS                       R5 R4 K36 ["join"]
       64 DUPCLOSURE                       R5 K37 [PROTO_14]
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R5 R4 K38 ["resolve"]
       68 DUPCLOSURE                       R5 K39 [PROTO_15]
       69 SETTABLEKS                       R5 R4 K40 ["_commonParts"]
       71 DUPCLOSURE                       R5 K41 [PROTO_16]
       72 SETTABLEKS                       R5 R4 K42 ["relative"]
       74 DUPCLOSURE                       R5 K43 [PROTO_17]
       75 SETTABLEKS                       R5 R4 K44 ["dirname"]
       77 DUPCLOSURE                       R5 K45 [PROTO_18]
       78 SETTABLEKS                       R5 R4 K46 ["basename"]
       80 DUPCLOSURE                       R5 K47 [PROTO_19]
       81 SETTABLEKS                       R5 R4 K48 ["extname"]
       83 DUPCLOSURE                       R5 K49 [PROTO_20]
       84 SETTABLEKS                       R5 R4 K50 ["isDriveRelative"]
       86 DUPCLOSURE                       R5 K51 [PROTO_21]
       87 SETTABLEKS                       R5 R4 K52 ["isAbsolute"]
       89 DUPCLOSURE                       R5 K53 [PROTO_22]
       90 SETTABLEKS                       R5 R4 K54 ["normalizeSeparators"]
       92 DUPTABLE                         R5 K56 [{"Path"}]
       93 SETTABLEKS                       R4 R5 K55 ["Path"]
       95 RETURN                           R5 1
