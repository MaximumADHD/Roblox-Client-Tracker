PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K5 [{[1] = 0, ["expectedAssertionsNumber"], ["isExpectingAssertions"] = False}]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K6 ["None"]
        5 SETTABLEKS                       R2 R1 K2 ["expectedAssertionsNumber"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 LOADNIL                          R1
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 GETUPVAL                         R6 0
        8 CALL                             R6 0 1
        9 GETTABLEKS                       R1 R6 K0 ["assertionCalls"]
       11 GETTABLEKS                       R2 R6 K1 ["expectedAssertionsNumber"]
       13 GETTABLEKS                       R3 R6 K2 ["expectedAssertionsNumberError"]
       15 GETTABLEKS                       R4 R6 K3 ["isExpectingAssertions"]
       17 GETTABLEKS                       R5 R6 K4 ["isExpectingAssertionsError"]
       19 GETUPVAL                         R6 1
       20 DUPTABLE                         R7 K7 [{[1] = 0, ["expectedAssertionsNumber"], ["isExpectingAssertions"] = False}]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K8 ["None"]
       24 SETTABLEKS                       R8 R7 K1 ["expectedAssertionsNumber"]
       26 CALL                             R6 1 0
       27 FASTCALL1                        TYPEOF R2 ; [+3]
       28 MOVE                             R7 R2
       29 GETIMPORT                        R6 K10 [typeof]
       31 CALL                             R6 1 1
       32 JUMPIFNOTEQKS                    R6 K11 ["number"] ; [+88]
       34 JUMPIFEQ                         R1 R2 ; [+86]
       36 GETUPVAL                         R6 3
       37 GETUPVAL                         R7 4
       38 LOADK                            R8 K12 ["assertion"]
       39 MOVE                             R9 R2
       40 CALL                             R7 2 -1
       41 CALL                             R6 -1 1
       42 GETUPVAL                         R8 5
       43 LOADK                            R9 K13 [".assertions"]
       44 LOADK                            R10 K14 [""]
       45 FASTCALL1                        TOSTRING R2 ; [+3]
       46 MOVE                             R12 R2
       47 GETIMPORT                        R11 K16 [tostring]
       49 CALL                             R11 1 1
       50 DUPTABLE                         R12 K19 [{["isDirectExpectCall"] = True}]
       51 CALL                             R8 4 1
       52 LOADK                            R9 K20 ["\n\n"]
       53 LOADK                            R10 K21 ["Expected %s to be called but received "]
       54 FASTCALL1                        TOSTRING R6 ; [+3]
       55 MOVE                             R13 R6
       56 GETIMPORT                        R12 K16 [tostring]
       58 CALL                             R12 1 1
       59 NAMECALL                         R10 R10 K22 ["format"]
       61 CALL                             R10 2 1
       62 GETUPVAL                         R12 6
       63 GETUPVAL                         R13 4
       64 LOADK                            R14 K23 ["assertion call"]
       65 GETUPVAL                         R16 7
       66 GETTABLEKS                       R16 R16 K24 ["toJSBoolean"]
       68 MOVE                             R17 R1
       69 CALL                             R16 1 1
       70 JUMPIFNOT                        R16 ; [+2]
       71 MOVE                             R15 R1
       72 JUMPIF                           R15 ; [+1]
       73 LOADN                            R15 0
       74 CALL                             R13 2 -1
       75 CALL                             R12 -1 -1
       76 FASTCALL                         TOSTRING ; [+2]
       77 GETIMPORT                        R11 K16 [tostring]
       79 CALL                             R11 -1 1
       80 LOADK                            R12 K25 ["."]
       81 CONCAT                           R7 R8 R12
       82 SETTABLEKS                       R7 R3 K26 ["message"]
       84 GETUPVAL                         R8 8
       85 GETTABLEKS                       R8 R8 K27 ["__recalculateStacktrace"]
       87 FASTCALL1                        TYPEOF R8 ; [+2]
       88 GETIMPORT                        R7 K10 [typeof]
       90 CALL                             R7 1 1
       91 JUMPIFNOTEQKS                    R7 K28 ["function"] ; [+6]
       93 GETUPVAL                         R7 8
       94 GETTABLEKS                       R7 R7 K27 ["__recalculateStacktrace"]
       96 MOVE                             R8 R3
       97 CALL                             R7 1 0
       98 DUPTABLE                         R9 K32 [{"actual", "error", "expected"}]
       99 FASTCALL1                        TOSTRING R1 ; [+3]
      100 MOVE                             R11 R1
      101 GETIMPORT                        R10 K16 [tostring]
      103 CALL                             R10 1 1
      104 SETTABLEKS                       R10 R9 K29 ["actual"]
      106 SETTABLEKS                       R3 R9 K30 ["error"]
      108 FASTCALL1                        TOSTRING R2 ; [+3]
      109 MOVE                             R11 R2
      110 GETIMPORT                        R10 K16 [tostring]
      112 CALL                             R10 1 1
      113 SETTABLEKS                       R10 R9 K31 ["expected"]
      115 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      117 MOVE                             R8 R0
      118 GETIMPORT                        R7 K35 [table.insert]
      120 CALL                             R7 2 0
      121 JUMPIFNOT                        R4 ; [+59]
      122 JUMPIFNOTEQKN                    R1 K5 [0] ; [+58]
      124 GETUPVAL                         R6 3
      125 LOADK                            R7 K36 ["at least one assertion"]
      126 CALL                             R6 1 1
      127 GETUPVAL                         R7 6
      128 LOADK                            R8 K37 ["received none"]
      129 CALL                             R7 1 1
      130 GETUPVAL                         R10 5
      131 LOADK                            R11 K38 [".hasAssertions"]
      132 LOADK                            R12 K14 [""]
      133 LOADK                            R13 K14 [""]
      134 DUPTABLE                         R14 K19 [{["isDirectExpectCall"] = True}]
      135 CALL                             R10 4 -1
      136 FASTCALL                         TOSTRING ; [+2]
      137 GETIMPORT                        R9 K16 [tostring]
      139 CALL                             R9 -1 1
      140 LOADK                            R10 K20 ["\n\n"]
      141 LOADK                            R11 K39 ["Expected %s to be called but %s."]
      142 FASTCALL1                        TOSTRING R6 ; [+3]
      143 MOVE                             R14 R6
      144 GETIMPORT                        R13 K16 [tostring]
      146 CALL                             R13 1 1
      147 FASTCALL1                        TOSTRING R7 ; [+3]
      148 MOVE                             R15 R7
      149 GETIMPORT                        R14 K16 [tostring]
      151 CALL                             R14 1 1
      152 NAMECALL                         R11 R11 K22 ["format"]
      154 CALL                             R11 3 1
      155 CONCAT                           R8 R9 R11
      156 SETTABLEKS                       R8 R5 K26 ["message"]
      158 GETUPVAL                         R9 8
      159 GETTABLEKS                       R9 R9 K27 ["__recalculateStacktrace"]
      161 FASTCALL1                        TYPEOF R9 ; [+2]
      162 GETIMPORT                        R8 K10 [typeof]
      164 CALL                             R8 1 1
      165 JUMPIFNOTEQKS                    R8 K28 ["function"] ; [+6]
      167 GETUPVAL                         R8 8
      168 GETTABLEKS                       R8 R8 K27 ["__recalculateStacktrace"]
      170 MOVE                             R9 R5
      171 CALL                             R8 1 0
      172 DUPTABLE                         R10 K42 [{["actual"] = "none", ["error"], ["expected"] = "at least one"}]
      173 SETTABLEKS                       R5 R10 K30 ["error"]
      175 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
      177 MOVE                             R9 R0
      178 GETIMPORT                        R8 K35 [table.insert]
      180 CALL                             R8 2 0
      181 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Boolean"]
       14 GETTABLEKS                       R3 R1 K7 ["Error"]
       16 GETTABLEKS                       R4 R1 K8 ["Object"]
       18 NEWTABLE                         R5 1 0
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R0 K9 ["JestMatcherUtils"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R7 R6 K10 ["EXPECTED_COLOR"]
       27 GETTABLEKS                       R8 R6 K11 ["RECEIVED_COLOR"]
       29 GETTABLEKS                       R9 R6 K12 ["matcherHint"]
       31 GETTABLEKS                       R10 R6 K13 ["pluralize"]
       33 GETIMPORT                        R11 K4 [require]
       35 GETIMPORT                        R12 K1 [script]
       37 GETTABLEKS                       R12 R12 K2 ["Parent"]
       39 GETTABLEKS                       R12 R12 K14 ["jestMatchersObject"]
       41 CALL                             R11 1 1
       42 GETTABLEKS                       R12 R11 K15 ["getState"]
       44 GETTABLEKS                       R13 R11 K16 ["setState"]
       46 GETIMPORT                        R14 K4 [require]
       48 GETIMPORT                        R15 K1 [script]
       50 GETTABLEKS                       R15 R15 K2 ["Parent"]
       52 GETTABLEKS                       R15 R15 K17 ["types"]
       54 CALL                             R14 1 1
       55 DUPCLOSURE                       R15 K18 [PROTO_0]
       56 CAPTURE                          VAL R13
       57 CAPTURE                          VAL R4
       58 LOADNIL                          R16
       59 DUPCLOSURE                       R16 K19 [PROTO_1]
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R13
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R16 R5 K20 ["default"]
       71 RETURN                           R5 1
