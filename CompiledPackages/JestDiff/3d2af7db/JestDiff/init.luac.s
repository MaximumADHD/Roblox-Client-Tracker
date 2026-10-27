PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K0 ["commonColor"]
        5 MOVE                             R3 R2
        6 MOVE                             R4 R0
        7 CALL                             R3 1 -1
        8 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["is"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R2
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1
       12 GETUPVAL                         R3 3
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 MOVE                             R4 R3
       16 LOADB                            R5 0
       17 JUMPIFNOTEQKS                    R3 K1 ["table"] ; [+36]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R7 R0 K2 ["asymmetricMatch"]
       22 CALL                             R6 1 1
       23 JUMPIFNOTEQKS                    R6 K3 ["function"] ; [+30]
       25 GETTABLEKS                       R6 R0 K4 ["$$typeof"]
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R7 R7 K5 ["for_"]
       30 LOADK                            R8 K6 ["jest.asymmetricMatcher"]
       31 CALL                             R7 1 1
       32 JUMPIFEQ                         R6 R7 ; [+3]
       34 LOADNIL                          R6
       35 RETURN                           R6 1
       36 GETTABLEKS                       R7 R0 K7 ["getExpectedType"]
       38 FASTCALL1                        TYPEOF R7 ; [+2]
       39 GETIMPORT                        R6 K9 [typeof]
       41 CALL                             R6 1 1
       42 JUMPIFEQKS                       R6 K3 ["function"] ; [+3]
       44 LOADNIL                          R6
       45 RETURN                           R6 1
       46 NAMECALL                         R6 R0 K7 ["getExpectedType"]
       48 CALL                             R6 1 1
       49 MOVE                             R4 R6
       50 JUMPIFEQKS                       R4 K10 ["string"] ; [+2]
       52 LOADB                            R5 0 +1
       53 LOADB                            R5 1
       54 GETUPVAL                         R6 3
       55 MOVE                             R7 R1
       56 CALL                             R6 1 1
       57 JUMPIFEQ                         R4 R6 ; [+18]
       59 GETIMPORT                        R6 K12 [string.format]
       61 LOADK                            R7 K13 ["  Comparing two different types of values. Expected %s but received %s."]
       62 GETUPVAL                         R8 5
       63 GETTABLEKS                       R8 R8 K14 ["green"]
       65 MOVE                             R9 R4
       66 CALL                             R8 1 1
       67 GETUPVAL                         R9 5
       68 GETTABLEKS                       R9 R9 K15 ["red"]
       70 GETUPVAL                         R10 3
       71 MOVE                             R11 R1
       72 CALL                             R10 1 -1
       73 CALL                             R9 -1 -1
       74 CALL                             R6 -1 -1
       75 RETURN                           R6 -1
       76 JUMPIFNOT                        R5 ; [+2]
       77 LOADNIL                          R6
       78 RETURN                           R6 1
       79 JUMPIFNOTEQKS                    R3 K10 ["string"] ; [+15]
       81 GETUPVAL                         R6 6
       82 GETIMPORT                        R7 K17 [string.split]
       84 MOVE                             R8 R0
       85 LOADK                            R9 K18 ["\n"]
       86 CALL                             R7 2 1
       87 GETIMPORT                        R8 K17 [string.split]
       89 MOVE                             R9 R1
       90 LOADK                            R10 K18 ["\n"]
       91 CALL                             R8 2 1
       92 MOVE                             R9 R2
       93 CALL                             R6 3 -1
       94 RETURN                           R6 -1
       95 JUMPIFEQKS                       R3 K19 ["boolean"] ; [+3]
       97 JUMPIFNOTEQKS                    R3 K20 ["number"] ; [+7]
       99 GETUPVAL                         R6 7
      100 MOVE                             R7 R0
      101 MOVE                             R8 R1
      102 MOVE                             R9 R2
      103 CALL                             R6 3 -1
      104 RETURN                           R6 -1
      105 GETUPVAL                         R6 8
      106 MOVE                             R7 R0
      107 MOVE                             R8 R1
      108 MOVE                             R9 R2
      109 CALL                             R6 3 -1
      110 RETURN                           R6 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 GETUPVAL                         R5 1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R1
        6 GETUPVAL                         R6 1
        7 CALL                             R4 2 1
        8 JUMPIFNOTEQ                      R3 R4 ; [+6]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 MOVE                             R7 R2
       13 CALL                             R5 2 -1
       14 RETURN                           R5 -1
       15 GETUPVAL                         R5 4
       16 GETIMPORT                        R6 K2 [string.split]
       18 MOVE                             R7 R3
       19 LOADK                            R8 K3 ["\n"]
       20 CALL                             R6 2 1
       21 GETIMPORT                        R7 K2 [string.split]
       23 MOVE                             R8 R4
       24 LOADK                            R9 K3 ["\n"]
       25 CALL                             R7 2 1
       26 MOVE                             R8 R2
       27 CALL                             R5 3 -1
       28 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 4
        5 GETUPVAL                         R2 5
        6 GETUPVAL                         R3 6
        7 MOVE                             R4 R0
        8 GETUPVAL                         R5 2
        9 CALL                             R1 4 1
       10 SETUPVAL                         R1 3
       11 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R3
        1 LOADB                            R4 0
        2 GETIMPORT                        R5 K1 [pcall]
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          REF R3
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CALL                             R5 1 2
       13 JUMPIF                           R5 ; [+1]
       14 LOADB                            R4 1
       15 GETUPVAL                         R8 3
       16 GETUPVAL                         R10 4
       17 MOVE                             R11 R2
       18 CALL                             R10 1 1
       19 GETTABLEKS                       R9 R10 K2 ["commonColor"]
       21 MOVE                             R10 R9
       22 MOVE                             R11 R8
       23 CALL                             R10 1 1
       24 MOVE                             R7 R10
       25 JUMPIFEQKNIL                     R3 ; [+3]
       27 JUMPIFNOTEQ                      R3 R7 ; [+28]
       29 GETUPVAL                         R8 0
       30 GETUPVAL                         R9 5
       31 MOVE                             R10 R2
       32 CALL                             R8 2 1
       33 GETUPVAL                         R9 2
       34 MOVE                             R10 R0
       35 MOVE                             R11 R1
       36 MOVE                             R12 R8
       37 MOVE                             R13 R2
       38 CALL                             R9 4 1
       39 MOVE                             R3 R9
       40 JUMPIFEQ                         R3 R7 ; [+15]
       42 JUMPIF                           R4 ; [+13]
       43 GETUPVAL                         R12 6
       44 GETUPVAL                         R14 4
       45 MOVE                             R15 R2
       46 CALL                             R14 1 1
       47 GETTABLEKS                       R13 R14 K2 ["commonColor"]
       49 MOVE                             R14 R13
       50 MOVE                             R15 R12
       51 CALL                             R14 1 1
       52 MOVE                             R9 R14
       53 LOADK                            R10 K3 ["\n\n"]
       54 MOVE                             R11 R3
       55 CONCAT                           R3 R9 R11
       56 CLOSEUPVALS                      R3
       57 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K0 ["compareKeys"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["assign"]
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R0
       11 DUPTABLE                         R6 K2 [{"compareKeys"}]
       12 SETTABLEKS                       R2 R6 K0 ["compareKeys"]
       14 CALL                             R3 3 -1
       15 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["assign"]
        3 NEWTABLE                         R5 0 0
        5 MOVE                             R6 R2
        6 DUPTABLE                         R7 K3 [{["indent"] = 0}]
        7 CALL                             R4 3 1
        8 GETUPVAL                         R5 1
        9 MOVE                             R6 R0
       10 MOVE                             R7 R4
       11 CALL                             R5 2 1
       12 GETUPVAL                         R6 1
       13 MOVE                             R7 R1
       14 MOVE                             R8 R4
       15 CALL                             R6 2 1
       16 JUMPIFNOTEQ                      R5 R6 ; [+6]
       18 GETUPVAL                         R7 2
       19 GETUPVAL                         R8 3
       20 MOVE                             R9 R3
       21 CALL                             R7 2 -1
       22 RETURN                           R7 -1
       23 GETUPVAL                         R7 1
       24 MOVE                             R8 R0
       25 MOVE                             R9 R2
       26 CALL                             R7 2 1
       27 GETUPVAL                         R8 1
       28 MOVE                             R9 R1
       29 MOVE                             R10 R2
       30 CALL                             R8 2 1
       31 GETUPVAL                         R9 4
       32 GETUPVAL                         R10 5
       33 GETTABLEKS                       R10 R10 K4 ["split"]
       35 MOVE                             R11 R7
       36 LOADK                            R12 K5 ["\n"]
       37 CALL                             R10 2 1
       38 GETUPVAL                         R11 5
       39 GETTABLEKS                       R11 R11 K4 ["split"]
       41 MOVE                             R12 R8
       42 LOADK                            R13 K5 ["\n"]
       43 CALL                             R11 2 1
       44 GETUPVAL                         R12 5
       45 GETTABLEKS                       R12 R12 K4 ["split"]
       47 MOVE                             R13 R5
       48 LOADK                            R14 K5 ["\n"]
       49 CALL                             R12 2 1
       50 GETUPVAL                         R13 5
       51 GETTABLEKS                       R13 R13 K4 ["split"]
       53 MOVE                             R14 R6
       54 LOADK                            R15 K5 ["\n"]
       55 CALL                             R13 2 1
       56 MOVE                             R14 R3
       57 CALL                             R9 5 -1
       58 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Object"]
       12 GETTABLEKS                       R4 R2 K7 ["String"]
       14 GETTABLEKS                       R5 R2 K8 ["Symbol"]
       16 GETIMPORT                        R6 K4 [require]
       18 GETTABLEKS                       R7 R1 K9 ["PrettyFormat"]
       20 CALL                             R6 1 1
       21 GETTABLEKS                       R7 R6 K10 ["format"]
       23 GETIMPORT                        R8 K4 [require]
       25 GETTABLEKS                       R9 R0 K9 ["PrettyFormat"]
       27 CALL                             R8 1 1
       28 GETIMPORT                        R9 K4 [require]
       30 GETTABLEKS                       R10 R1 K11 ["ChalkLua"]
       32 CALL                             R9 1 1
       33 GETIMPORT                        R10 K4 [require]
       35 GETTABLEKS                       R11 R1 K12 ["JestGetType"]
       37 CALL                             R10 1 1
       38 GETTABLEKS                       R10 R10 K13 ["getType"]
       40 GETIMPORT                        R11 K4 [require]
       42 GETTABLEKS                       R12 R0 K14 ["CleanupSemantic"]
       44 CALL                             R11 1 1
       45 GETTABLEKS                       R12 R11 K15 ["DIFF_DELETE"]
       47 GETTABLEKS                       R13 R11 K16 ["DIFF_EQUAL"]
       49 GETTABLEKS                       R14 R11 K17 ["DIFF_INSERT"]
       51 GETTABLEKS                       R15 R11 K18 ["Diff"]
       53 GETIMPORT                        R16 K4 [require]
       55 GETTABLEKS                       R17 R0 K19 ["NormalizeDiffOptions"]
       57 CALL                             R16 1 1
       58 GETTABLEKS                       R16 R16 K20 ["normalizeDiffOptions"]
       60 GETIMPORT                        R17 K4 [require]
       62 GETTABLEKS                       R18 R0 K21 ["DiffLines"]
       64 CALL                             R17 1 1
       65 GETTABLEKS                       R17 R17 K22 ["diffLinesRaw"]
       67 GETIMPORT                        R18 K4 [require]
       69 GETTABLEKS                       R19 R0 K21 ["DiffLines"]
       71 CALL                             R18 1 1
       72 GETTABLEKS                       R18 R18 K23 ["diffLinesUnified"]
       74 GETIMPORT                        R19 K4 [require]
       76 GETTABLEKS                       R20 R0 K21 ["DiffLines"]
       78 CALL                             R19 1 1
       79 GETTABLEKS                       R19 R19 K24 ["diffLinesUnified2"]
       81 GETIMPORT                        R20 K4 [require]
       83 GETTABLEKS                       R21 R0 K25 ["PrintDiffs"]
       85 CALL                             R20 1 1
       86 GETTABLEKS                       R20 R20 K26 ["diffStringsRaw"]
       88 GETIMPORT                        R21 K4 [require]
       90 GETTABLEKS                       R22 R0 K25 ["PrintDiffs"]
       92 CALL                             R21 1 1
       93 GETTABLEKS                       R21 R21 K27 ["diffStringsUnified"]
       95 GETIMPORT                        R22 K4 [require]
       97 GETTABLEKS                       R23 R0 K28 ["types"]
       99 CALL                             R22 1 1
      100 GETIMPORT                        R23 K4 [require]
      102 GETTABLEKS                       R24 R0 K29 ["Constants"]
      104 CALL                             R23 1 1
      105 GETTABLEKS                       R23 R23 K30 ["NO_DIFF_MESSAGE"]
      107 GETIMPORT                        R24 K4 [require]
      109 GETTABLEKS                       R25 R0 K29 ["Constants"]
      111 CALL                             R24 1 1
      112 GETTABLEKS                       R24 R24 K31 ["SIMILAR_MESSAGE"]
      114 LOADNIL                          R25
      115 LOADNIL                          R26
      116 LOADNIL                          R27
      117 LOADNIL                          R28
      118 DUPCLOSURE                       R29 K32 [PROTO_0]
      119 CAPTURE                          VAL R16
      120 GETTABLEKS                       R30 R6 K33 ["plugins"]
      122 NEWTABLE                         R31 0 2
      124 GETTABLEKS                       R32 R30 K34 ["AsymmetricMatcher"]
      126 GETTABLEKS                       R33 R30 K35 ["RobloxInstance"]
      128 SETLIST                          R31 R32 2 [1]
      130 DUPTABLE                         R32 K36 [{"plugins"}]
      131 SETTABLEKS                       R31 R32 K33 ["plugins"]
      133 DUPTABLE                         R33 K41 [{["callToJSON"] = False, ["maxDepth"] = 10, ["plugins"]}]
      134 SETTABLEKS                       R31 R33 K33 ["plugins"]
      136 NEWCLOSURE                       R34 P1
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R29
      139 CAPTURE                          VAL R23
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R18
      144 CAPTURE                          REF R25
      145 CAPTURE                          REF R26
      146 DUPCLOSURE                       R25 K42 [PROTO_2]
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R32
      149 CAPTURE                          VAL R29
      150 CAPTURE                          VAL R23
      151 CAPTURE                          VAL R18
      152 NEWCLOSURE                       R26 P3
      153 CAPTURE                          REF R27
      154 CAPTURE                          VAL R32
      155 CAPTURE                          REF R28
      156 CAPTURE                          VAL R23
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R33
      159 CAPTURE                          VAL R24
      160 DUPCLOSURE                       R27 K43 [PROTO_5]
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R3
      163 DUPCLOSURE                       R28 K44 [PROTO_6]
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R29
      167 CAPTURE                          VAL R23
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R4
      170 DUPTABLE                         R35 K46 [{"diffLinesRaw", "diffLinesUnified", "diffLinesUnified2", "diffStringsRaw", "diffStringsUnified", "DIFF_DELETE", "DIFF_EQUAL", "DIFF_INSERT", "Diff", "diff"}]
      171 SETTABLEKS                       R17 R35 K22 ["diffLinesRaw"]
      173 SETTABLEKS                       R18 R35 K23 ["diffLinesUnified"]
      175 SETTABLEKS                       R19 R35 K24 ["diffLinesUnified2"]
      177 SETTABLEKS                       R20 R35 K26 ["diffStringsRaw"]
      179 SETTABLEKS                       R21 R35 K27 ["diffStringsUnified"]
      181 SETTABLEKS                       R12 R35 K15 ["DIFF_DELETE"]
      183 SETTABLEKS                       R13 R35 K16 ["DIFF_EQUAL"]
      185 SETTABLEKS                       R14 R35 K17 ["DIFF_INSERT"]
      187 SETTABLEKS                       R15 R35 K18 ["Diff"]
      189 SETTABLEKS                       R34 R35 K45 ["diff"]
      191 CLOSEUPVALS                      R25
      192 RETURN                           R35 1
