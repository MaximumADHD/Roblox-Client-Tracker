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
        0 GETTABLEKS                       R2 R0 K0 ["root"]
        2 RETURN                           R2 1

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
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 JUMPIFNOT                        R7 ; [+9]
        7 JUMPIFEQKS                       R7 K0 [""] ; [+8]
        9 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       11 MOVE                             R9 R2
       12 MOVE                             R10 R7
       13 GETIMPORT                        R8 K3 [table.insert]
       15 CALL                             R8 2 0
       16 FORGLOOP                         R3 2 ; [-11]
       18 MOVE                             R3 R2
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 LOADN                            R8 1
       23 JUMPIFNOTLT                      R8 R6 ; [+16]
       25 LOADN                            R10 1
       26 LOADN                            R11 1
       27 NAMECALL                         R8 R7 K4 ["sub"]
       29 CALL                             R8 3 1
       30 GETTABLEKS                       R9 R0 K5 ["sep"]
       32 JUMPIFNOTEQ                      R8 R9 ; [+7]
       34 LOADN                            R10 2
       35 NAMECALL                         R8 R7 K4 ["sub"]
       37 CALL                             R8 2 1
       38 MOVE                             R7 R8
       39 JUMPBACK                         ; [-15]
       40 LENGTH                           R8 R2
       41 JUMPIFNOTLT                      R6 R8 ; [+17]
       43 LENGTH                           R10 R7
       44 NAMECALL                         R8 R7 K4 ["sub"]
       46 CALL                             R8 2 1
       47 GETTABLEKS                       R9 R0 K5 ["sep"]
       49 JUMPIFNOTEQ                      R8 R9 ; [+9]
       51 LOADN                            R10 1
       52 LENGTH                           R12 R7
       53 SUBK                             R11 R12 K6 [1]
       54 NAMECALL                         R8 R7 K4 ["sub"]
       56 CALL                             R8 3 1
       57 MOVE                             R7 R8
       58 JUMPBACK                         ; [-16]
       59 SETTABLE                         R7 R2 R6
       60 FORGLOOP                         R3 2 ; [-39]
       62 RETURN                           R2 1

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
        6 MOVE                             R2 R1
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 MOVE                             R9 R6
       11 NAMECALL                         R7 R0 K0 ["normalizeSeparators"]
       13 CALL                             R7 2 1
       14 SETTABLE                         R7 R1 R5
       15 FORGLOOP                         R2 2 ; [-6]
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R0 K1 ["_filterparts"]
       20 CALL                             R2 2 1
       21 MOVE                             R5 R2
       22 NAMECALL                         R3 R0 K2 ["_rawjoin"]
       24 CALL                             R3 2 1
       25 MOVE                             R4 R3
       26 MOVE                             R5 R2
       27 RETURN                           R4 2

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
       10 MOVE                             R4 R2
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 MOVE                             R10 R3
       15 MOVE                             R13 R8
       16 NAMECALL                         R11 R0 K0 ["_splitBySeparators"]
       18 CALL                             R11 2 -1
       19 FASTCALL                         TABLE_INSERT ; [+2]
       20 GETIMPORT                        R9 K3 [table.insert]
       22 CALL                             R9 -1 0
       23 FORGLOOP                         R4 2 ; [-10]
       25 LOADN                            R6 1
       26 GETTABLEN                        R7 R3 1
       27 LENGTH                           R4 R7
       28 LOADN                            R5 1
       29 FORNPREP                         R4
       30 GETTABLEN                        R8 R3 1
       31 GETTABLE                         R7 R8 R6
       32 LOADN                            R10 2
       33 LENGTH                           R8 R3
       34 LOADN                            R9 1
       35 FORNPREP                         R8
       36 GETTABLE                         R12 R3 R10
       37 GETTABLE                         R11 R12 R6
       38 MOVE                             R14 R7
       39 MOVE                             R15 R11
       40 NAMECALL                         R12 R0 K4 ["pathsEqual"]
       42 CALL                             R12 3 1
       43 JUMPIF                           R12 ; [+1]
       44 RETURN                           R1 1
       45 FORNLOOP                         R8
       46 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       48 MOVE                             R9 R1
       49 MOVE                             R10 R7
       50 GETIMPORT                        R8 K3 [table.insert]
       52 CALL                             R8 2 0
       53 FORNLOOP                         R4
       54 RETURN                           R1 1

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
        1 DUPTABLE                         R0 K2 [{"env", "cwd"}]
        2 NEWTABLE                         R1 0 0
        4 SETTABLEKS                       R1 R0 K0 ["env"]
        6 DUPCLOSURE                       R1 K3 [PROTO_0]
        7 SETTABLEKS                       R1 R0 K1 ["cwd"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R1 K4 ["__index"]
       13 DUPCLOSURE                       R2 K5 [PROTO_1]
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R2 R1 K6 ["new"]
       17 DUPCLOSURE                       R2 K7 [PROTO_2]
       18 SETTABLEKS                       R2 R1 K8 ["initialize"]
       20 DUPCLOSURE                       R2 K9 [PROTO_3]
       21 SETTABLEKS                       R2 R1 K10 ["getRoot"]
       23 DUPCLOSURE                       R2 K11 [PROTO_4]
       24 SETTABLEKS                       R2 R1 K12 ["getSep"]
       26 DUPCLOSURE                       R2 K13 [PROTO_5]
       27 SETTABLEKS                       R2 R1 K14 ["pathsEqual"]
       29 DUPCLOSURE                       R2 K15 [PROTO_6]
       30 SETTABLEKS                       R2 R1 K16 ["_splitPath"]
       32 DUPCLOSURE                       R2 K17 [PROTO_7]
       33 SETTABLEKS                       R2 R1 K18 ["_normalizeArray"]
       35 DUPCLOSURE                       R2 K19 [PROTO_8]
       36 SETTABLEKS                       R2 R1 K20 ["_splitBySeparators"]
       38 DUPCLOSURE                       R2 K21 [PROTO_9]
       39 SETTABLEKS                       R2 R1 K22 ["normalize"]
       41 DUPCLOSURE                       R2 K23 [PROTO_10]
       42 SETTABLEKS                       R2 R1 K24 ["_filterparts"]
       44 DUPCLOSURE                       R2 K25 [PROTO_11]
       45 SETTABLEKS                       R2 R1 K26 ["_rawjoin"]
       47 DUPCLOSURE                       R2 K27 [PROTO_12]
       48 SETTABLEKS                       R2 R1 K28 ["_filteredjoin"]
       50 DUPCLOSURE                       R2 K29 [PROTO_13]
       51 SETTABLEKS                       R2 R1 K30 ["join"]
       53 DUPCLOSURE                       R2 K31 [PROTO_14]
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R2 R1 K32 ["resolve"]
       57 DUPCLOSURE                       R2 K33 [PROTO_15]
       58 SETTABLEKS                       R2 R1 K34 ["_commonParts"]
       60 DUPCLOSURE                       R2 K35 [PROTO_16]
       61 SETTABLEKS                       R2 R1 K36 ["relative"]
       63 DUPCLOSURE                       R2 K37 [PROTO_17]
       64 SETTABLEKS                       R2 R1 K38 ["dirname"]
       66 DUPCLOSURE                       R2 K39 [PROTO_18]
       67 SETTABLEKS                       R2 R1 K40 ["basename"]
       69 DUPCLOSURE                       R2 K41 [PROTO_19]
       70 SETTABLEKS                       R2 R1 K42 ["extname"]
       72 DUPCLOSURE                       R2 K43 [PROTO_20]
       73 SETTABLEKS                       R2 R1 K44 ["isDriveRelative"]
       75 DUPCLOSURE                       R2 K45 [PROTO_21]
       76 SETTABLEKS                       R2 R1 K46 ["isAbsolute"]
       78 DUPCLOSURE                       R2 K47 [PROTO_22]
       79 SETTABLEKS                       R2 R1 K48 ["normalizeSeparators"]
       81 DUPTABLE                         R2 K50 [{"Path"}]
       82 SETTABLEKS                       R1 R2 K49 ["Path"]
       84 RETURN                           R2 1
