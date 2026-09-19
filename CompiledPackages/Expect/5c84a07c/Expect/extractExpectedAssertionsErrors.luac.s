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
       32 JUMPIFNOTEQKS                    R6 K11 ["number"] ; [+91]
       34 JUMPIFEQ                         R1 R2 ; [+89]
       36 GETUPVAL                         R6 3
       37 GETUPVAL                         R7 4
       38 LOADK                            R8 K12 ["assertion"]
       39 MOVE                             R9 R2
       40 CALL                             R7 2 -1
       41 CALL                             R6 -1 1
       42 GETUPVAL                         R13 5
       43 LOADK                            R14 K13 [".assertions"]
       44 LOADK                            R15 K14 [""]
       45 FASTCALL1                        TOSTRING R2 ; [+3]
       46 MOVE                             R17 R2
       47 GETIMPORT                        R16 K16 [tostring]
       49 CALL                             R16 1 1
       50 DUPTABLE                         R17 K19 [{["isDirectExpectCall"] = True}]
       51 CALL                             R13 4 1
       52 MOVE                             R8 R13
       53 LOADK                            R9 K20 ["\n\n"]
       54 LOADK                            R13 K21 ["Expected %s to be called but received "]
       55 FASTCALL1                        TOSTRING R6 ; [+3]
       56 MOVE                             R16 R6
       57 GETIMPORT                        R15 K16 [tostring]
       59 CALL                             R15 1 1
       60 NAMECALL                         R13 R13 K22 ["format"]
       62 CALL                             R13 2 1
       63 MOVE                             R10 R13
       64 GETUPVAL                         R14 6
       65 GETUPVAL                         R15 4
       66 LOADK                            R16 K23 ["assertion call"]
       67 GETUPVAL                         R18 7
       68 GETTABLEKS                       R18 R18 K24 ["toJSBoolean"]
       70 MOVE                             R19 R1
       71 CALL                             R18 1 1
       72 JUMPIFNOT                        R18 ; [+2]
       73 MOVE                             R17 R1
       74 JUMPIF                           R17 ; [+1]
       75 LOADN                            R17 0
       76 CALL                             R15 2 -1
       77 CALL                             R14 -1 -1
       78 FASTCALL                         TOSTRING ; [+2]
       79 GETIMPORT                        R13 K16 [tostring]
       81 CALL                             R13 -1 1
       82 MOVE                             R11 R13
       83 LOADK                            R12 K25 ["."]
       84 CONCAT                           R7 R8 R12
       85 SETTABLEKS                       R7 R3 K26 ["message"]
       87 GETUPVAL                         R8 8
       88 GETTABLEKS                       R8 R8 K27 ["__recalculateStacktrace"]
       90 FASTCALL1                        TYPEOF R8 ; [+2]
       91 GETIMPORT                        R7 K10 [typeof]
       93 CALL                             R7 1 1
       94 JUMPIFNOTEQKS                    R7 K28 ["function"] ; [+6]
       96 GETUPVAL                         R7 8
       97 GETTABLEKS                       R7 R7 K27 ["__recalculateStacktrace"]
       99 MOVE                             R8 R3
      100 CALL                             R7 1 0
      101 DUPTABLE                         R9 K32 [{"actual", "error", "expected"}]
      102 FASTCALL1                        TOSTRING R1 ; [+3]
      103 MOVE                             R11 R1
      104 GETIMPORT                        R10 K16 [tostring]
      106 CALL                             R10 1 1
      107 SETTABLEKS                       R10 R9 K29 ["actual"]
      109 SETTABLEKS                       R3 R9 K30 ["error"]
      111 FASTCALL1                        TOSTRING R2 ; [+3]
      112 MOVE                             R11 R2
      113 GETIMPORT                        R10 K16 [tostring]
      115 CALL                             R10 1 1
      116 SETTABLEKS                       R10 R9 K31 ["expected"]
      118 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      120 MOVE                             R8 R0
      121 GETIMPORT                        R7 K35 [table.insert]
      123 CALL                             R7 2 0
      124 JUMPIFNOT                        R4 ; [+60]
      125 JUMPIFNOTEQKN                    R1 K5 [0] ; [+59]
      127 GETUPVAL                         R6 3
      128 LOADK                            R7 K36 ["at least one assertion"]
      129 CALL                             R6 1 1
      130 GETUPVAL                         R7 6
      131 LOADK                            R8 K37 ["received none"]
      132 CALL                             R7 1 1
      133 GETUPVAL                         R13 5
      134 LOADK                            R14 K38 [".hasAssertions"]
      135 LOADK                            R15 K14 [""]
      136 LOADK                            R16 K14 [""]
      137 DUPTABLE                         R17 K19 [{["isDirectExpectCall"] = True}]
      138 CALL                             R13 4 -1
      139 FASTCALL                         TOSTRING ; [+2]
      140 GETIMPORT                        R12 K16 [tostring]
      142 CALL                             R12 -1 1
      143 MOVE                             R9 R12
      144 LOADK                            R10 K20 ["\n\n"]
      145 LOADK                            R11 K39 ["Expected %s to be called but %s."]
      146 FASTCALL1                        TOSTRING R6 ; [+3]
      147 MOVE                             R14 R6
      148 GETIMPORT                        R13 K16 [tostring]
      150 CALL                             R13 1 1
      151 FASTCALL1                        TOSTRING R7 ; [+3]
      152 MOVE                             R15 R7
      153 GETIMPORT                        R14 K16 [tostring]
      155 CALL                             R14 1 1
      156 NAMECALL                         R11 R11 K22 ["format"]
      158 CALL                             R11 3 1
      159 CONCAT                           R8 R9 R11
      160 SETTABLEKS                       R8 R5 K26 ["message"]
      162 GETUPVAL                         R9 8
      163 GETTABLEKS                       R9 R9 K27 ["__recalculateStacktrace"]
      165 FASTCALL1                        TYPEOF R9 ; [+2]
      166 GETIMPORT                        R8 K10 [typeof]
      168 CALL                             R8 1 1
      169 JUMPIFNOTEQKS                    R8 K28 ["function"] ; [+6]
      171 GETUPVAL                         R8 8
      172 GETTABLEKS                       R8 R8 K27 ["__recalculateStacktrace"]
      174 MOVE                             R9 R5
      175 CALL                             R8 1 0
      176 DUPTABLE                         R10 K42 [{["actual"] = "none", ["error"], ["expected"] = "at least one"}]
      177 SETTABLEKS                       R5 R10 K30 ["error"]
      179 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
      181 MOVE                             R9 R0
      182 GETIMPORT                        R8 K35 [table.insert]
      184 CALL                             R8 2 0
      185 RETURN                           R0 1

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
