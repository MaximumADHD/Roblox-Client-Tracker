PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{"assertionCalls", "expectedAssertionsNumber", "isExpectingAssertions"}]
        2 LOADN                            R2 0
        3 SETTABLEKS                       R2 R1 K0 ["assertionCalls"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K4 ["None"]
        8 SETTABLEKS                       R2 R1 K1 ["expectedAssertionsNumber"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K2 ["isExpectingAssertions"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

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
       20 DUPTABLE                         R7 K5 [{"assertionCalls", "expectedAssertionsNumber", "isExpectingAssertions"}]
       21 LOADN                            R8 0
       22 SETTABLEKS                       R8 R7 K0 ["assertionCalls"]
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K6 ["None"]
       27 SETTABLEKS                       R8 R7 K1 ["expectedAssertionsNumber"]
       29 LOADB                            R8 0
       30 SETTABLEKS                       R8 R7 K3 ["isExpectingAssertions"]
       32 CALL                             R6 1 0
       33 FASTCALL1                        TYPEOF R2 ; [+3]
       34 MOVE                             R7 R2
       35 GETIMPORT                        R6 K8 [typeof]
       37 CALL                             R6 1 1
       38 JUMPIFNOTEQKS                    R6 K9 ["number"] ; [+94]
       40 JUMPIFEQ                         R1 R2 ; [+92]
       42 GETUPVAL                         R6 3
       43 GETUPVAL                         R7 4
       44 LOADK                            R8 K10 ["assertion"]
       45 MOVE                             R9 R2
       46 CALL                             R7 2 -1
       47 CALL                             R6 -1 1
       48 GETUPVAL                         R13 5
       49 LOADK                            R14 K11 [".assertions"]
       50 LOADK                            R15 K12 [""]
       51 FASTCALL1                        TOSTRING R2 ; [+3]
       52 MOVE                             R17 R2
       53 GETIMPORT                        R16 K14 [tostring]
       55 CALL                             R16 1 1
       56 DUPTABLE                         R17 K16 [{"isDirectExpectCall"}]
       57 LOADB                            R18 1
       58 SETTABLEKS                       R18 R17 K15 ["isDirectExpectCall"]
       60 CALL                             R13 4 1
       61 MOVE                             R8 R13
       62 LOADK                            R9 K17 ["\n\n"]
       63 LOADK                            R13 K18 ["Expected %s to be called but received "]
       64 FASTCALL1                        TOSTRING R6 ; [+3]
       65 MOVE                             R16 R6
       66 GETIMPORT                        R15 K14 [tostring]
       68 CALL                             R15 1 1
       69 NAMECALL                         R13 R13 K19 ["format"]
       71 CALL                             R13 2 1
       72 MOVE                             R10 R13
       73 GETUPVAL                         R14 6
       74 GETUPVAL                         R15 4
       75 LOADK                            R16 K20 ["assertion call"]
       76 GETUPVAL                         R18 7
       77 GETTABLEKS                       R18 R18 K21 ["toJSBoolean"]
       79 MOVE                             R19 R1
       80 CALL                             R18 1 1
       81 JUMPIFNOT                        R18 ; [+2]
       82 MOVE                             R17 R1
       83 JUMPIF                           R17 ; [+1]
       84 LOADN                            R17 0
       85 CALL                             R15 2 -1
       86 CALL                             R14 -1 -1
       87 FASTCALL                         TOSTRING ; [+2]
       88 GETIMPORT                        R13 K14 [tostring]
       90 CALL                             R13 -1 1
       91 MOVE                             R11 R13
       92 LOADK                            R12 K22 ["."]
       93 CONCAT                           R7 R8 R12
       94 SETTABLEKS                       R7 R3 K23 ["message"]
       96 GETUPVAL                         R8 8
       97 GETTABLEKS                       R8 R8 K24 ["__recalculateStacktrace"]
       99 FASTCALL1                        TYPEOF R8 ; [+2]
      100 GETIMPORT                        R7 K8 [typeof]
      102 CALL                             R7 1 1
      103 JUMPIFNOTEQKS                    R7 K25 ["function"] ; [+6]
      105 GETUPVAL                         R7 8
      106 GETTABLEKS                       R7 R7 K24 ["__recalculateStacktrace"]
      108 MOVE                             R8 R3
      109 CALL                             R7 1 0
      110 DUPTABLE                         R9 K29 [{"actual", "error", "expected"}]
      111 FASTCALL1                        TOSTRING R1 ; [+3]
      112 MOVE                             R11 R1
      113 GETIMPORT                        R10 K14 [tostring]
      115 CALL                             R10 1 1
      116 SETTABLEKS                       R10 R9 K26 ["actual"]
      118 SETTABLEKS                       R3 R9 K27 ["error"]
      120 FASTCALL1                        TOSTRING R2 ; [+3]
      121 MOVE                             R11 R2
      122 GETIMPORT                        R10 K14 [tostring]
      124 CALL                             R10 1 1
      125 SETTABLEKS                       R10 R9 K28 ["expected"]
      127 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      129 MOVE                             R8 R0
      130 GETIMPORT                        R7 K32 [table.insert]
      132 CALL                             R7 2 0
      133 JUMPIFNOT                        R4 ; [+69]
      134 JUMPIFNOTEQKN                    R1 K33 [0] ; [+68]
      136 GETUPVAL                         R6 3
      137 LOADK                            R7 K34 ["at least one assertion"]
      138 CALL                             R6 1 1
      139 GETUPVAL                         R7 6
      140 LOADK                            R8 K35 ["received none"]
      141 CALL                             R7 1 1
      142 GETUPVAL                         R13 5
      143 LOADK                            R14 K36 [".hasAssertions"]
      144 LOADK                            R15 K12 [""]
      145 LOADK                            R16 K12 [""]
      146 DUPTABLE                         R17 K16 [{"isDirectExpectCall"}]
      147 LOADB                            R18 1
      148 SETTABLEKS                       R18 R17 K15 ["isDirectExpectCall"]
      150 CALL                             R13 4 -1
      151 FASTCALL                         TOSTRING ; [+2]
      152 GETIMPORT                        R12 K14 [tostring]
      154 CALL                             R12 -1 1
      155 MOVE                             R9 R12
      156 LOADK                            R10 K17 ["\n\n"]
      157 LOADK                            R11 K37 ["Expected %s to be called but %s."]
      158 FASTCALL1                        TOSTRING R6 ; [+3]
      159 MOVE                             R14 R6
      160 GETIMPORT                        R13 K14 [tostring]
      162 CALL                             R13 1 1
      163 FASTCALL1                        TOSTRING R7 ; [+3]
      164 MOVE                             R15 R7
      165 GETIMPORT                        R14 K14 [tostring]
      167 CALL                             R14 1 1
      168 NAMECALL                         R11 R11 K19 ["format"]
      170 CALL                             R11 3 1
      171 CONCAT                           R8 R9 R11
      172 SETTABLEKS                       R8 R5 K23 ["message"]
      174 GETUPVAL                         R9 8
      175 GETTABLEKS                       R9 R9 K24 ["__recalculateStacktrace"]
      177 FASTCALL1                        TYPEOF R9 ; [+2]
      178 GETIMPORT                        R8 K8 [typeof]
      180 CALL                             R8 1 1
      181 JUMPIFNOTEQKS                    R8 K25 ["function"] ; [+6]
      183 GETUPVAL                         R8 8
      184 GETTABLEKS                       R8 R8 K24 ["__recalculateStacktrace"]
      186 MOVE                             R9 R5
      187 CALL                             R8 1 0
      188 DUPTABLE                         R10 K29 [{"actual", "error", "expected"}]
      189 LOADK                            R11 K38 ["none"]
      190 SETTABLEKS                       R11 R10 K26 ["actual"]
      192 SETTABLEKS                       R5 R10 K27 ["error"]
      194 LOADK                            R11 K39 ["at least one"]
      195 SETTABLEKS                       R11 R10 K28 ["expected"]
      197 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
      199 MOVE                             R9 R0
      200 GETIMPORT                        R8 K32 [table.insert]
      202 CALL                             R8 2 0
      203 RETURN                           R0 1

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
