PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+7]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["isArray"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 NOT                              R1 R2
       14 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 MOVE                             R7 R3
        4 CALL                             R4 3 -1
        5 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 MOVE                             R6 R5
        6 MOVE                             R7 R0
        7 CALL                             R6 1 1
        8 JUMPIFNOT                        R6 ; [+1]
        9 RETURN                           R6 1
       10 FORGLOOP                         R1 2 [inext] ; [-6]
       12 LOADB                            R1 0
       13 RETURN                           R1 1

PROTO_5:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 -1
        4 RETURN                           R3 -1

PROTO_7:
        0 ORK                              R2 R1 K0 [False]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K1 ["test"]
        4 MOVE                             R4 R0
        5 GETUPVAL                         R5 1
        6 GETUPVAL                         R6 2
        7 DUPTABLE                         R7 K4 [{"glob", "posix"}]
        8 GETUPVAL                         R8 3
        9 SETTABLEKS                       R8 R7 K2 ["glob"]
       11 GETUPVAL                         R8 4
       12 SETTABLEKS                       R8 R7 K3 ["posix"]
       14 CALL                             R3 4 1
       15 GETTABLEKS                       R4 R3 K5 ["isMatch"]
       17 GETTABLEKS                       R5 R3 K6 ["match"]
       19 GETTABLEKS                       R6 R3 K7 ["output"]
       21 DUPTABLE                         R7 K11 [{"glob", "state", "regex", "posix", "input", "output", "match", "isMatch"}]
       22 GETUPVAL                         R8 3
       23 SETTABLEKS                       R8 R7 K2 ["glob"]
       25 GETUPVAL                         R8 5
       26 SETTABLEKS                       R8 R7 K8 ["state"]
       28 GETUPVAL                         R8 1
       29 SETTABLEKS                       R8 R7 K9 ["regex"]
       31 GETUPVAL                         R8 4
       32 SETTABLEKS                       R8 R7 K3 ["posix"]
       34 SETTABLEKS                       R0 R7 K10 ["input"]
       36 SETTABLEKS                       R6 R7 K7 ["output"]
       38 SETTABLEKS                       R5 R7 K6 ["match"]
       40 SETTABLEKS                       R4 R7 K5 ["isMatch"]
       42 GETUPVAL                         R9 6
       43 GETTABLEKS                       R9 R9 K12 ["onResult"]
       45 FASTCALL1                        TYPEOF R9 ; [+2]
       46 GETIMPORT                        R8 K14 [typeof]
       48 CALL                             R8 1 1
       49 JUMPIFNOTEQKS                    R8 K15 ["function"] ; [+6]
       51 GETUPVAL                         R8 6
       52 GETTABLEKS                       R8 R8 K12 ["onResult"]
       54 MOVE                             R9 R7
       55 CALL                             R8 1 0
       56 JUMPIFNOTEQKB                    R4 FALSE ; [+9]
       58 LOADB                            R8 0
       59 SETTABLEKS                       R8 R7 K5 ["isMatch"]
       61 JUMPIFNOT                        R2 ; [+2]
       62 MOVE                             R8 R7
       63 RETURN                           R8 1
       64 LOADB                            R8 0
       65 RETURN                           R8 1
       66 GETUPVAL                         R8 7
       67 MOVE                             R9 R0
       68 CALL                             R8 1 1
       69 JUMPIFNOT                        R8 ; [+22]
       70 GETUPVAL                         R9 6
       71 GETTABLEKS                       R9 R9 K16 ["onIgnore"]
       73 FASTCALL1                        TYPEOF R9 ; [+2]
       74 GETIMPORT                        R8 K14 [typeof]
       76 CALL                             R8 1 1
       77 JUMPIFNOTEQKS                    R8 K15 ["function"] ; [+6]
       79 GETUPVAL                         R8 6
       80 GETTABLEKS                       R8 R8 K16 ["onIgnore"]
       82 MOVE                             R9 R7
       83 CALL                             R8 1 0
       84 LOADB                            R8 0
       85 SETTABLEKS                       R8 R7 K5 ["isMatch"]
       87 JUMPIFNOT                        R2 ; [+2]
       88 MOVE                             R8 R7
       89 RETURN                           R8 1
       90 LOADB                            R8 0
       91 RETURN                           R8 1
       92 GETUPVAL                         R9 6
       93 GETTABLEKS                       R9 R9 K17 ["onMatch"]
       95 FASTCALL1                        TYPEOF R9 ; [+2]
       96 GETIMPORT                        R8 K14 [typeof]
       98 CALL                             R8 1 1
       99 JUMPIFNOTEQKS                    R8 K15 ["function"] ; [+6]
      101 GETUPVAL                         R8 6
      102 GETTABLEKS                       R8 R8 K17 ["onMatch"]
      104 MOVE                             R9 R7
      105 CALL                             R8 1 0
      106 JUMPIFNOT                        R2 ; [+2]
      107 MOVE                             R8 R7
      108 RETURN                           R8 1
      109 LOADB                            R8 1
      110 RETURN                           R8 1

PROTO_8:
        0 ORK                              R3 R2 K0 [False]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K1 ["isArray"]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 1
        6 JUMPIFNOT                        R4 ; [+27]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["map"]
       10 MOVE                             R5 R0
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R3
       15 CALL                             R4 2 1
       16 LOADNIL                          R5
       17 NEWTABLE                         R7 0 0
       19 DUPTABLE                         R8 K4 [{"__call"}]
       20 NEWCLOSURE                       R9 P1
       21 CAPTURE                          REF R5
       22 SETTABLEKS                       R9 R8 K3 ["__call"]
       24 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
       26 GETIMPORT                        R6 K6 [setmetatable]
       28 CALL                             R6 2 1
       29 NEWCLOSURE                       R5 P2
       30 CAPTURE                          VAL R4
       31 CLOSEUPVALS                      R5
       32 RETURN                           R6 1
       33 CLOSEUPVALS                      R5
       34 LOADB                            R4 0
       35 FASTCALL1                        TYPEOF R0 ; [+3]
       36 MOVE                             R6 R0
       37 GETIMPORT                        R5 K8 [typeof]
       39 CALL                             R5 1 1
       40 JUMPIFNOTEQKS                    R5 K9 ["table"] ; [+7]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K1 ["isArray"]
       45 MOVE                             R6 R0
       46 CALL                             R5 1 1
       47 NOT                              R4 R5
       48 JUMPIFNOT                        R4 ; [+13]
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K10 ["toJSBoolean"]
       52 GETTABLEKS                       R5 R0 K11 ["tokens"]
       54 CALL                             R4 1 1
       55 JUMPIFNOT                        R4 ; [+6]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R4 R4 K10 ["toJSBoolean"]
       59 GETTABLEKS                       R5 R0 K12 ["input"]
       61 CALL                             R4 1 1
       62 JUMPIFEQKS                       R0 K13 [""] ; [+9]
       64 FASTCALL1                        TYPEOF R0 ; [+3]
       65 MOVE                             R6 R0
       66 GETIMPORT                        R5 K8 [typeof]
       68 CALL                             R5 1 1
       69 JUMPIFEQKS                       R5 K14 ["string"] ; [+10]
       71 JUMPIF                           R4 ; [+8]
       72 GETIMPORT                        R5 K16 [error]
       74 GETUPVAL                         R6 3
       75 GETTABLEKS                       R6 R6 K17 ["new"]
       77 LOADK                            R7 K18 ["TypeError: Expected pattern to be a non-empty string"]
       78 CALL                             R6 1 -1
       79 CALL                             R5 -1 0
       80 MOVE                             R5 R1
       81 JUMPIF                           R5 ; [+2]
       82 NEWTABLE                         R5 0 0
       84 GETUPVAL                         R6 4
       85 GETTABLEKS                       R6 R6 K19 ["isWindows"]
       87 MOVE                             R7 R1
       88 CALL                             R6 1 1
       89 JUMPIFNOT                        R4 ; [+7]
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R7 R7 K20 ["compileRe"]
       93 MOVE                             R8 R0
       94 MOVE                             R9 R1
       95 CALL                             R7 2 1
       96 JUMP                             ; [+8]
       97 GETUPVAL                         R7 1
       98 GETTABLEKS                       R7 R7 K21 ["makeRe"]
      100 MOVE                             R8 R0
      101 MOVE                             R9 R1
      102 LOADB                            R10 0
      103 LOADB                            R11 1
      104 CALL                             R7 4 1
      105 GETTABLEKS                       R8 R7 K22 ["state"]
      107 LOADNIL                          R9
      108 SETTABLEKS                       R9 R7 K22 ["state"]
      110 LOADNIL                          R9
      111 DUPCLOSURE                       R9 K23 [PROTO_5]
      112 GETUPVAL                         R10 2
      113 GETTABLEKS                       R10 R10 K10 ["toJSBoolean"]
      115 GETTABLEKS                       R11 R5 K24 ["ignore"]
      117 CALL                             R10 1 1
      118 JUMPIFNOT                        R10 ; [+30]
      119 GETUPVAL                         R10 5
      120 GETTABLEKS                       R10 R10 K25 ["assign"]
      122 NEWTABLE                         R11 0 0
      124 MOVE                             R12 R1
      125 DUPTABLE                         R13 K28 [{"ignore", "onMatch", "onResult"}]
      126 GETUPVAL                         R14 5
      127 GETTABLEKS                       R14 R14 K29 ["None"]
      129 SETTABLEKS                       R14 R13 K24 ["ignore"]
      131 GETUPVAL                         R14 5
      132 GETTABLEKS                       R14 R14 K29 ["None"]
      134 SETTABLEKS                       R14 R13 K26 ["onMatch"]
      136 GETUPVAL                         R14 5
      137 GETTABLEKS                       R14 R14 K29 ["None"]
      139 SETTABLEKS                       R14 R13 K27 ["onResult"]
      141 CALL                             R10 3 1
      142 GETUPVAL                         R11 1
      143 GETTABLEKS                       R12 R5 K24 ["ignore"]
      145 MOVE                             R13 R10
      146 MOVE                             R14 R3
      147 CALL                             R11 3 1
      148 MOVE                             R9 R11
      149 LOADNIL                          R10
      150 NEWTABLE                         R12 1 0
      152 DUPTABLE                         R13 K4 [{"__call"}]
      153 NEWCLOSURE                       R14 P4
      154 CAPTURE                          REF R10
      155 SETTABLEKS                       R14 R13 K3 ["__call"]
      157 FASTCALL2                        SETMETATABLE R12 R13 ; [+3]
      159 GETIMPORT                        R11 K6 [setmetatable]
      161 CALL                             R11 2 1
      162 NEWCLOSURE                       R10 P5
      163 CAPTURE                          UPVAL U1
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R5
      170 CAPTURE                          REF R9
      171 GETUPVAL                         R12 2
      172 GETTABLEKS                       R12 R12 K10 ["toJSBoolean"]
      174 MOVE                             R13 R3
      175 CALL                             R12 1 1
      176 JUMPIFNOT                        R12 ; [+2]
      177 SETTABLEKS                       R8 R11 K22 ["state"]
      179 CLOSEUPVALS                      R9
      180 RETURN                           R11 1

PROTO_9:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 GETTABLEKS                       R5 R4 K0 ["glob"]
        6 GETTABLEKS                       R6 R4 K1 ["posix"]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R8 R0
       10 GETIMPORT                        R7 K3 [typeof]
       12 CALL                             R7 1 1
       13 JUMPIFEQKS                       R7 K4 ["string"] ; [+9]
       15 GETIMPORT                        R7 K6 [error]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K7 ["new"]
       20 LOADK                            R9 K8 ["TypeError: Expected input to be a string"]
       21 CALL                             R8 1 -1
       22 CALL                             R7 -1 0
       23 JUMPIFNOTEQKS                    R0 K9 [""] ; [+9]
       25 DUPTABLE                         R7 K12 [{"isMatch", "output"}]
       26 LOADB                            R8 0
       27 SETTABLEKS                       R8 R7 K10 ["isMatch"]
       29 LOADK                            R8 K9 [""]
       30 SETTABLEKS                       R8 R7 K11 ["output"]
       32 RETURN                           R7 1
       33 MOVE                             R7 R2
       34 JUMPIF                           R7 ; [+2]
       35 NEWTABLE                         R7 0 0
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K13 ["toJSBoolean"]
       40 GETTABLEKS                       R10 R7 K14 ["format"]
       42 CALL                             R9 1 1
       43 JUMPIFNOT                        R9 ; [+3]
       44 GETTABLEKS                       R8 R7 K14 ["format"]
       46 JUMP                             ; [+11]
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R9 R9 K13 ["toJSBoolean"]
       50 MOVE                             R10 R6
       51 CALL                             R9 1 1
       52 JUMPIFNOT                        R9 ; [+4]
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K15 ["toPosixSlashes"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R8
       58 JUMPIFEQ                         R0 R5 ; [+2]
       60 LOADB                            R9 0 +1
       61 LOADB                            R9 1
       62 JUMPIFNOT                        R9 ; [+10]
       63 GETUPVAL                         R11 1
       64 GETTABLEKS                       R11 R11 K13 ["toJSBoolean"]
       66 MOVE                             R12 R8
       67 CALL                             R11 1 1
       68 JUMPIFNOT                        R11 ; [+4]
       69 MOVE                             R10 R8
       70 MOVE                             R11 R0
       71 CALL                             R10 1 1
       72 JUMP                             ; [+1]
       73 MOVE                             R10 R0
       74 JUMPIFNOTEQKB                    R9 FALSE ; [+17]
       76 GETUPVAL                         R11 1
       77 GETTABLEKS                       R11 R11 K13 ["toJSBoolean"]
       79 MOVE                             R12 R8
       80 CALL                             R11 1 1
       81 JUMPIFNOT                        R11 ; [+5]
       82 MOVE                             R11 R8
       83 MOVE                             R12 R0
       84 CALL                             R11 1 1
       85 MOVE                             R10 R11
       86 JUMP                             ; [+1]
       87 MOVE                             R10 R0
       88 JUMPIFEQ                         R10 R5 ; [+2]
       90 LOADB                            R9 0 +1
       91 LOADB                            R9 1
       92 JUMPIFEQKB                       R9 FALSE ; [+5]
       94 GETTABLEKS                       R11 R7 K16 ["capture"]
       96 JUMPIFNOTEQKB                    R11 TRUE ; [+24]
       98 GETTABLEKS                       R11 R7 K17 ["matchBase"]
      100 JUMPIFEQKB                       R11 TRUE ; [+5]
      102 GETTABLEKS                       R11 R7 K18 ["basename"]
      104 JUMPIFNOTEQKB                    R11 TRUE ; [+11]
      106 GETUPVAL                         R11 3
      107 GETTABLEKS                       R11 R11 K17 ["matchBase"]
      109 MOVE                             R12 R0
      110 MOVE                             R13 R1
      111 MOVE                             R14 R2
      112 MOVE                             R15 R6
      113 CALL                             R11 4 1
      114 MOVE                             R9 R11
      115 JUMP                             ; [+5]
      116 MOVE                             R13 R10
      117 NAMECALL                         R11 R1 K19 ["exec"]
      119 CALL                             R11 2 1
      120 MOVE                             R9 R11
      121 DUPTABLE                         R11 K21 [{"isMatch", "match", "output"}]
      122 GETUPVAL                         R12 1
      123 GETTABLEKS                       R12 R12 K13 ["toJSBoolean"]
      125 MOVE                             R13 R9
      126 CALL                             R12 1 1
      127 SETTABLEKS                       R12 R11 K10 ["isMatch"]
      129 SETTABLEKS                       R9 R11 K20 ["match"]
      131 SETTABLEKS                       R10 R11 K11 ["output"]
      133 RETURN                           R11 1

PROTO_10:
        0 GETIMPORT                        R4 K1 [error]
        2 LOADK                            R5 K2 ["matchBase not implemented"]
        3 CALL                             R4 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 -1
        6 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parse"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isArray"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["map"]
        9 MOVE                             R3 R0
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1
       15 GETUPVAL                         R2 2
       16 MOVE                             R3 R0
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K2 ["assign"]
       20 NEWTABLE                         R5 0 0
       22 MOVE                             R6 R1
       23 DUPTABLE                         R7 K4 [{"fastpaths"}]
       24 LOADB                            R8 0
       25 SETTABLEKS                       R8 R7 K3 ["fastpaths"]
       27 CALL                             R4 3 -1
       28 CALL                             R2 -1 -1
       29 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_15:
        0 ORK                              R4 R2 K0 [False]
        1 ORK                              R5 R3 K0 [False]
        2 JUMPIFNOTEQKB                    R4 TRUE ; [+4]
        4 GETTABLEKS                       R6 R0 K1 ["output"]
        6 RETURN                           R6 1
        7 MOVE                             R6 R1
        8 JUMPIF                           R6 ; [+2]
        9 NEWTABLE                         R6 0 0
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K2 ["toJSBoolean"]
       14 GETTABLEKS                       R9 R6 K3 ["contains"]
       16 CALL                             R8 1 1
       17 JUMPIFNOT                        R8 ; [+2]
       18 LOADK                            R7 K4 [""]
       19 JUMP                             ; [+1]
       20 LOADK                            R7 K5 ["^"]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K2 ["toJSBoolean"]
       24 GETTABLEKS                       R10 R6 K3 ["contains"]
       26 CALL                             R9 1 1
       27 JUMPIFNOT                        R9 ; [+2]
       28 LOADK                            R8 K4 [""]
       29 JUMP                             ; [+1]
       30 LOADK                            R8 K6 ["$"]
       31 LOADK                            R9 K7 ["%s(?:%s)%s"]
       32 MOVE                             R11 R7
       33 GETTABLEKS                       R13 R0 K1 ["output"]
       35 FASTCALL1                        TOSTRING R13 ; [+2]
       36 GETIMPORT                        R12 K9 [tostring]
       38 CALL                             R12 1 1
       39 MOVE                             R13 R8
       40 NAMECALL                         R9 R9 K10 ["format"]
       42 CALL                             R9 4 1
       43 FASTCALL1                        TYPEOF R0 ; [+3]
       44 MOVE                             R11 R0
       45 GETIMPORT                        R10 K12 [typeof]
       47 CALL                             R10 1 1
       48 JUMPIFNOTEQKS                    R10 K13 ["table"] ; [+11]
       50 GETTABLEKS                       R10 R0 K14 ["negated"]
       52 JUMPIFNOTEQKB                    R10 TRUE ; [+7]
       54 LOADK                            R10 K15 ["^(?!%s).*$"]
       55 MOVE                             R12 R9
       56 NAMECALL                         R10 R10 K10 ["format"]
       58 CALL                             R10 2 1
       59 MOVE                             R9 R10
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R10 R10 K16 ["toRegex"]
       63 MOVE                             R11 R9
       64 MOVE                             R12 R1
       65 CALL                             R10 2 1
       66 JUMPIFNOTEQKB                    R5 TRUE ; [+3]
       68 SETTABLEKS                       R0 R10 K17 ["state"]
       70 RETURN                           R10 1

PROTO_16:
        0 MOVE                             R4 R1
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 ORK                              R5 R2 K0 [False]
        5 ORK                              R6 R3 K0 [False]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K1 ["toJSBoolean"]
        9 MOVE                             R8 R0
       10 CALL                             R7 1 1
       11 JUMPIFNOT                        R7 ; [+7]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R8 R0
       14 GETIMPORT                        R7 K3 [typeof]
       16 CALL                             R7 1 1
       17 JUMPIFEQKS                       R7 K4 ["string"] ; [+9]
       19 GETIMPORT                        R7 K6 [error]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K7 ["new"]
       24 LOADK                            R9 K8 ["TypeError: Expected a non-empty string"]
       25 CALL                             R8 1 -1
       26 CALL                             R7 -1 0
       27 DUPTABLE                         R7 K11 [{"negated", "fastpaths"}]
       28 LOADB                            R8 0
       29 SETTABLEKS                       R8 R7 K9 ["negated"]
       31 LOADB                            R8 1
       32 SETTABLEKS                       R8 R7 K10 ["fastpaths"]
       34 GETTABLEKS                       R8 R4 K10 ["fastpaths"]
       36 JUMPIFEQKB                       R8 FALSE ; [+29]
       38 LOADN                            R10 1
       39 LOADN                            R11 1
       40 FASTCALL3                        STRING_SUB R0 R10 R11
       42 MOVE                             R9 R0
       43 GETIMPORT                        R8 K13 [string.sub]
       45 CALL                             R8 3 1
       46 JUMPIFEQKS                       R8 K14 ["."] ; [+11]
       48 LOADN                            R10 1
       49 LOADN                            R11 1
       50 FASTCALL3                        STRING_SUB R0 R10 R11
       52 MOVE                             R9 R0
       53 GETIMPORT                        R8 K13 [string.sub]
       55 CALL                             R8 3 1
       56 JUMPIFNOTEQKS                    R8 K15 ["*"] ; [+9]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K10 ["fastpaths"]
       61 MOVE                             R9 R0
       62 MOVE                             R10 R4
       63 CALL                             R8 2 1
       64 SETTABLEKS                       R8 R7 K16 ["output"]
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R8 R8 K1 ["toJSBoolean"]
       69 GETTABLEKS                       R9 R7 K16 ["output"]
       71 CALL                             R8 1 1
       72 JUMPIF                           R8 ; [+5]
       73 GETUPVAL                         R8 2
       74 MOVE                             R9 R0
       75 MOVE                             R10 R4
       76 CALL                             R8 2 1
       77 MOVE                             R7 R8
       78 GETUPVAL                         R8 3
       79 GETTABLEKS                       R8 R8 K17 ["compileRe"]
       81 MOVE                             R9 R7
       82 MOVE                             R10 R4
       83 MOVE                             R11 R5
       84 MOVE                             R12 R6
       85 CALL                             R8 4 -1
       86 RETURN                           R8 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 NEWTABLE                         R0 0 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
        9 GETTABLEKS                       R5 R0 K1 ["flags"]
       11 CALL                             R4 1 1
       12 JUMPIFNOT                        R4 ; [+3]
       13 GETTABLEKS                       R3 R0 K1 ["flags"]
       15 JUMPIF                           R3 ; [+10]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
       19 GETTABLEKS                       R5 R0 K2 ["nocase"]
       21 CALL                             R4 1 1
       22 JUMPIFNOT                        R4 ; [+2]
       23 LOADK                            R3 K3 ["i"]
       24 JUMP                             ; [+1]
       25 LOADK                            R3 K4 [""]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_18:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R2 1 2
        8 JUMPIF                           R2 ; [+14]
        9 JUMPIFEQKNIL                     R1 ; [+9]
       11 GETTABLEKS                       R4 R1 K2 ["debug"]
       13 JUMPIFNOTEQKB                    R4 TRUE ; [+5]
       15 GETIMPORT                        R4 K4 [error]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 GETUPVAL                         R4 0
       20 LOADK                            R5 K5 ["$^"]
       21 CALL                             R4 1 -1
       22 RETURN                           R4 -1
       23 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       16 GETTABLEKS                       R5 R2 K8 ["Error"]
       18 GETTABLEKS                       R6 R2 K9 ["Object"]
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R1 K10 ["RegExp"]
       24 CALL                             R7 1 1
       25 GETIMPORT                        R8 K4 [require]
       27 GETTABLEKS                       R9 R0 K11 ["scan"]
       29 CALL                             R8 1 1
       30 GETIMPORT                        R9 K4 [require]
       32 GETTABLEKS                       R10 R0 K12 ["parse"]
       34 CALL                             R9 1 1
       35 GETIMPORT                        R10 K4 [require]
       37 GETTABLEKS                       R11 R0 K13 ["utils"]
       39 CALL                             R10 1 1
       40 GETIMPORT                        R11 K4 [require]
       42 GETTABLEKS                       R12 R0 K14 ["constants"]
       44 CALL                             R11 1 1
       45 DUPCLOSURE                       R12 K15 [PROTO_0]
       46 CAPTURE                          VAL R3
       47 LOADNIL                          R13
       48 NEWTABLE                         R15 16 0
       50 DUPTABLE                         R16 K17 [{"__call"}]
       51 NEWCLOSURE                       R17 P1
       52 CAPTURE                          REF R13
       53 SETTABLEKS                       R17 R16 K16 ["__call"]
       55 FASTCALL2                        SETMETATABLE R15 R16 ; [+3]
       57 GETIMPORT                        R14 K19 [setmetatable]
       59 CALL                             R14 2 1
       60 DUPCLOSURE                       R13 K20 [PROTO_8]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R14
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R6
       67 DUPCLOSURE                       R15 K21 [PROTO_9]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R14
       72 SETTABLEKS                       R15 R14 K22 ["test"]
       74 DUPCLOSURE                       R15 K23 [PROTO_10]
       75 SETTABLEKS                       R15 R14 K24 ["matchBase"]
       77 DUPCLOSURE                       R15 K25 [PROTO_11]
       78 CAPTURE                          VAL R14
       79 SETTABLEKS                       R15 R14 K26 ["isMatch"]
       81 DUPCLOSURE                       R15 K27 [PROTO_13]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R15 R14 K12 ["parse"]
       88 DUPCLOSURE                       R15 K28 [PROTO_14]
       89 CAPTURE                          VAL R8
       90 SETTABLEKS                       R15 R14 K11 ["scan"]
       92 DUPCLOSURE                       R15 K29 [PROTO_15]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R14
       95 SETTABLEKS                       R15 R14 K30 ["compileRe"]
       97 DUPCLOSURE                       R15 K31 [PROTO_16]
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R14
      102 SETTABLEKS                       R15 R14 K32 ["makeRe"]
      104 DUPCLOSURE                       R15 K33 [PROTO_18]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R4
      107 SETTABLEKS                       R15 R14 K34 ["toRegex"]
      109 SETTABLEKS                       R11 R14 K14 ["constants"]
      111 CLOSEUPVALS                      R13
      112 RETURN                           R14 1
