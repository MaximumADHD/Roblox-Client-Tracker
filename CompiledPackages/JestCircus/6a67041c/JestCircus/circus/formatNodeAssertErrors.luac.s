PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["isArray"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+57]
        7 LOADN                            R4 1
        8 LOADN                            R5 2
        9 FASTCALL3                        TABLE_UNPACK R0 R4 R5
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K3 [table.unpack]
       14 CALL                             R2 3 2
       15 JUMPIFNOTEQKNIL                  R2 ; [+3]
       17 MOVE                             R1 R3
       18 JUMP                             ; [+46]
       19 GETTABLEKS                       R4 R2 K4 ["kind"]
       21 JUMPIFNOTEQKS                    R4 K5 ["ExecutionError"] ; [+6]
       23 GETUPVAL                         R4 1
       24 MOVE                             R5 R2
       25 CALL                             R4 1 1
       26 MOVE                             R1 R4
       27 JUMP                             ; [+37]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K6 ["toJSBoolean"]
       31 GETTABLEKS                       R5 R2 K7 ["stack"]
       33 CALL                             R4 1 1
       34 JUMPIF                           R4 ; [+27]
       35 MOVE                             R1 R3
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K6 ["toJSBoolean"]
       39 GETTABLEKS                       R6 R2 K8 ["message"]
       41 CALL                             R5 1 1
       42 JUMPIFNOT                        R5 ; [+3]
       43 GETTABLEKS                       R4 R2 K8 ["message"]
       45 JUMP                             ; [+8]
       46 LOADK                            R4 K9 ["thrown: %s"]
       47 GETUPVAL                         R6 3
       48 MOVE                             R7 R2
       49 DUPTABLE                         R8 K12 [{["maxDepth"] = 3}]
       50 CALL                             R6 2 -1
       51 NAMECALL                         R4 R4 K13 ["format"]
       53 CALL                             R4 -1 1
       54 SETTABLEKS                       R4 R1 K8 ["message"]
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R4 R4 K14 ["__recalculateStacktrace"]
       59 MOVE                             R5 R1
       60 CALL                             R4 1 0
       61 JUMP                             ; [+3]
       62 MOVE                             R1 R2
       63 JUMP                             ; [+1]
       64 MOVE                             R1 R0
       65 GETUPVAL                         R3 5
       66 MOVE                             R4 R1
       67 CALL                             R3 1 1
       68 JUMPIFNOT                        R3 ; [+13]
       69 DUPTABLE                         R2 K15 [{"message"}]
       70 GETUPVAL                         R3 6
       71 MOVE                             R4 R1
       72 DUPTABLE                         R5 K17 [{"expand"}]
       73 GETUPVAL                         R6 7
       74 GETTABLEKS                       R6 R6 K16 ["expand"]
       76 SETTABLEKS                       R6 R5 K16 ["expand"]
       78 CALL                             R3 2 1
       79 SETTABLEKS                       R3 R2 K8 ["message"]
       81 RETURN                           R2 1
       82 MOVE                             R2 R0
       83 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["name"]
        2 JUMPIFNOTEQKS                    R3 K1 ["test_done"] ; [+22]
        4 GETTABLEKS                       R3 R1 K2 ["test"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["map"]
        9 GETTABLEKS                       R5 R1 K2 ["test"]
       11 GETTABLEKS                       R5 R5 K4 ["errors"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          VAL R2
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K4 ["errors"]
       25 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+13]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["toJSBoolean"]
       10 GETUPVAL                         R5 1
       11 GETTABLE                         R4 R5 R0
       12 CALL                             R3 1 1
       13 JUMPIFNOT                        R3 ; [+3]
       14 GETUPVAL                         R3 1
       15 GETTABLE                         R2 R3 R0
       16 RETURN                           R2 1
       17 MOVE                             R2 R0
       18 RETURN                           R2 1
       19 LOADK                            R4 K4 ["%.doesNotThrow"]
       20 NAMECALL                         R2 R1 K5 ["match"]
       22 CALL                             R2 2 1
       23 JUMPIFEQKNIL                     R2 ; [+3]
       25 LOADK                            R2 K6 ["doesNotThrow"]
       26 RETURN                           R2 1
       27 LOADK                            R4 K7 ["%.throws"]
       28 NAMECALL                         R2 R1 K5 ["match"]
       30 CALL                             R2 2 1
       31 JUMPIFEQKNIL                     R2 ; [+3]
       33 LOADK                            R2 K8 ["throws"]
       34 RETURN                           R2 1
       35 LOADK                            R4 K9 ["%.fail"]
       36 NAMECALL                         R2 R1 K5 ["match"]
       38 CALL                             R2 2 1
       39 JUMPIFEQKNIL                     R2 ; [+3]
       41 LOADK                            R2 K10 ["fail"]
       42 RETURN                           R2 1
       43 LOADK                            R2 K11 [""]
       44 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 [""]
        3 CALL                             R1 2 1
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R2 R3 R1
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R5 R0
        8 GETIMPORT                        R4 K2 [typeof]
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKS                    R4 K3 ["string"] ; [+15]
       13 LOADK                            R3 K4 ["%s to:\n"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K5 ["toJSBoolean"]
       17 MOVE                             R7 R2
       18 CALL                             R6 1 1
       19 JUMPIFNOT                        R6 ; [+2]
       20 MOVE                             R5 R2
       21 JUMP                             ; [+1]
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R3 K6 ["format"]
       25 CALL                             R3 2 1
       26 RETURN                           R3 1
       27 LOADK                            R3 K0 [""]
       28 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+25]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["dim"]
        9 LOADK                            R3 K2 ["assert"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K1 ["dim"]
       14 LOADK                            R5 K3 ["."]
       15 MOVE                             R6 R0
       16 LOADK                            R7 K4 ["("]
       17 CONCAT                           R4 R5 R7
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K5 ["red"]
       22 LOADK                            R5 K6 ["function"]
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K1 ["dim"]
       27 LOADK                            R6 K7 [")"]
       28 CALL                             R5 1 1
       29 CONCAT                           R1 R2 R5
       30 RETURN                           R1 1
       31 LOADK                            R1 K8 [""]
       32 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R3 K0 [""]
        1 JUMPIFNOTEQKS                    R0 K1 ["=="] ; [+25]
        3 JUMPIFNOTEQKB                    R2 TRUE ; [+23]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["dim"]
        8 LOADK                            R5 K3 ["assert"]
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["dim"]
       13 LOADK                            R6 K4 ["("]
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["red"]
       18 LOADK                            R7 K6 ["received"]
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K2 ["dim"]
       23 LOADK                            R8 K7 [")"]
       24 CALL                             R7 1 1
       25 CONCAT                           R3 R4 R7
       26 RETURN                           R3 1
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K8 ["toJSBoolean"]
       30 MOVE                             R5 R1
       31 CALL                             R4 1 1
       32 JUMPIFNOT                        R4 ; [+34]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K2 ["dim"]
       36 LOADK                            R5 K3 ["assert"]
       37 CALL                             R4 1 1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K2 ["dim"]
       41 LOADK                            R7 K9 ["."]
       42 MOVE                             R8 R1
       43 LOADK                            R9 K4 ["("]
       44 CONCAT                           R6 R7 R9
       45 CALL                             R5 1 1
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K5 ["red"]
       49 LOADK                            R7 K6 ["received"]
       50 CALL                             R6 1 1
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K2 ["dim"]
       54 LOADK                            R8 K10 [", "]
       55 CALL                             R7 1 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K11 ["green"]
       59 LOADK                            R9 K12 ["expected"]
       60 CALL                             R8 1 1
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K2 ["dim"]
       64 LOADK                            R10 K7 [")"]
       65 CALL                             R9 1 1
       66 CONCAT                           R3 R4 R9
       67 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["expected"]
        2 GETTABLEKS                       R3 R0 K1 ["actual"]
        4 GETTABLEKS                       R4 R0 K2 ["generatedMessage"]
        6 GETTABLEKS                       R5 R0 K3 ["message"]
        8 GETTABLEKS                       R6 R0 K4 ["operator"]
       10 GETTABLEKS                       R7 R0 K5 ["stack"]
       12 GETUPVAL                         R8 0
       13 MOVE                             R9 R2
       14 MOVE                             R10 R3
       15 MOVE                             R11 R1
       16 CALL                             R8 3 1
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R10 R10 K6 ["toJSBoolean"]
       20 MOVE                             R11 R4
       21 CALL                             R10 1 1
       22 NOT                              R9 R10
       23 GETUPVAL                         R10 2
       24 MOVE                             R11 R6
       25 MOVE                             R12 R7
       26 CALL                             R10 2 1
       27 GETUPVAL                         R11 3
       28 MOVE                             R12 R5
       29 CALL                             R11 1 1
       30 MOVE                             R14 R11
       31 LOADK                            R15 K7 [""]
       32 LOADN                            R16 1
       33 NAMECALL                         R12 R7 K8 ["gsub"]
       35 CALL                             R12 4 1
       36 LOADK                            R15 K9 ["^AssertionError([^\n]*)"]
       37 LOADK                            R16 K7 [""]
       38 NAMECALL                         R13 R12 K8 ["gsub"]
       40 CALL                             R13 3 1
       41 LOADK                            R16 K10 ["^Error([^\n]*)"]
       42 LOADK                            R17 K7 [""]
       43 NAMECALL                         R14 R13 K8 ["gsub"]
       45 CALL                             R14 3 1
       46 JUMPIFNOTEQKS                    R10 K11 ["doesNotThrow"] ; [+45]
       48 GETUPVAL                         R16 4
       49 GETUPVAL                         R17 5
       50 MOVE                             R18 R10
       51 CALL                             R17 1 -1
       52 CALL                             R16 -1 1
       53 GETUPVAL                         R17 6
       54 GETTABLEKS                       R17 R17 K12 ["reset"]
       56 LOADK                            R18 K13 ["Expected the function not to throw an error.\n"]
       57 CALL                             R17 1 1
       58 GETUPVAL                         R18 6
       59 GETTABLEKS                       R18 R18 K12 ["reset"]
       61 LOADK                            R19 K14 ["Instead, it threw:\n"]
       62 CALL                             R18 1 1
       63 LOADK                            R19 K15 ["  %s"]
       64 GETUPVAL                         R21 7
       65 MOVE                             R22 R3
       66 CALL                             R21 1 -1
       67 NAMECALL                         R19 R19 K16 ["format"]
       69 CALL                             R19 -1 1
       70 GETUPVAL                         R20 6
       71 GETTABLEKS                       R20 R20 K12 ["reset"]
       73 GETUPVAL                         R22 1
       74 GETTABLEKS                       R22 R22 K6 ["toJSBoolean"]
       76 MOVE                             R23 R9
       77 CALL                             R22 1 1
       78 JUMPIFNOT                        R22 ; [+8]
       79 LOADK                            R22 K17 ["\n\nMessage:\n  "]
       80 FASTCALL1                        TOSTRING R5 ; [+3]
       81 MOVE                             R24 R5
       82 GETIMPORT                        R23 K19 [tostring]
       84 CALL                             R23 1 1
       85 CONCAT                           R21 R22 R23
       86 JUMP                             ; [+1]
       87 LOADK                            R21 K7 [""]
       88 CALL                             R20 1 1
       89 MOVE                             R21 R14
       90 CONCAT                           R15 R16 R21
       91 RETURN                           R15 1
       92 JUMPIFNOTEQKS                    R10 K20 ["throws"] ; [+29]
       94 GETUPVAL                         R16 4
       95 GETUPVAL                         R17 5
       96 MOVE                             R18 R10
       97 CALL                             R17 1 -1
       98 CALL                             R16 -1 1
       99 GETUPVAL                         R17 6
      100 GETTABLEKS                       R17 R17 K12 ["reset"]
      102 LOADK                            R18 K21 ["Expected the function to throw an error.\n"]
      103 CALL                             R17 1 1
      104 GETUPVAL                         R18 6
      105 GETTABLEKS                       R18 R18 K12 ["reset"]
      107 LOADK                            R19 K22 ["But it didn't throw anything."]
      108 CALL                             R18 1 1
      109 GETUPVAL                         R19 6
      110 GETTABLEKS                       R19 R19 K12 ["reset"]
      112 JUMPIFNOT                        R9 ; [+4]
      113 LOADK                            R21 K17 ["\n\nMessage:\n  "]
      114 MOVE                             R22 R5
      115 CONCAT                           R20 R21 R22
      116 JUMP                             ; [+1]
      117 LOADK                            R20 K7 [""]
      118 CALL                             R19 1 1
      119 MOVE                             R20 R14
      120 CONCAT                           R15 R16 R20
      121 RETURN                           R15 1
      122 JUMPIFNOTEQKS                    R10 K23 ["fail"] ; [+25]
      124 GETUPVAL                         R16 4
      125 GETUPVAL                         R17 8
      126 MOVE                             R18 R6
      127 MOVE                             R19 R10
      128 MOVE                             R20 R2
      129 CALL                             R17 3 -1
      130 CALL                             R16 -1 1
      131 GETUPVAL                         R17 6
      132 GETTABLEKS                       R17 R17 K12 ["reset"]
      134 JUMPIFNOT                        R9 ; [+8]
      135 LOADK                            R19 K24 ["Message:\n  "]
      136 FASTCALL1                        TOSTRING R5 ; [+3]
      137 MOVE                             R21 R5
      138 GETIMPORT                        R20 K19 [tostring]
      140 CALL                             R20 1 1
      141 CONCAT                           R18 R19 R20
      142 JUMP                             ; [+1]
      143 LOADK                            R18 K7 [""]
      144 CALL                             R17 1 1
      145 MOVE                             R18 R14
      146 CONCAT                           R15 R16 R18
      147 RETURN                           R15 1
      148 GETUPVAL                         R16 4
      149 GETUPVAL                         R17 8
      150 MOVE                             R18 R6
      151 MOVE                             R19 R10
      152 MOVE                             R20 R2
      153 CALL                             R17 3 -1
      154 CALL                             R16 -1 1
      155 GETUPVAL                         R17 6
      156 GETTABLEKS                       R17 R17 K12 ["reset"]
      158 LOADK                            R18 K25 ["Expected value %s"]
      159 GETUPVAL                         R20 9
      160 MOVE                             R21 R6
      161 CALL                             R20 1 -1
      162 NAMECALL                         R18 R18 K16 ["format"]
      164 CALL                             R18 -1 -1
      165 CALL                             R17 -1 1
      166 LOADK                            R18 K26 ["  %s\n"]
      167 GETUPVAL                         R20 10
      168 MOVE                             R21 R2
      169 CALL                             R20 1 -1
      170 NAMECALL                         R18 R18 K16 ["format"]
      172 CALL                             R18 -1 1
      173 GETUPVAL                         R19 6
      174 GETTABLEKS                       R19 R19 K12 ["reset"]
      176 LOADK                            R20 K27 ["Received:\n"]
      177 CALL                             R19 1 1
      178 LOADK                            R20 K15 ["  %s"]
      179 GETUPVAL                         R22 7
      180 MOVE                             R23 R3
      181 CALL                             R22 1 -1
      182 NAMECALL                         R20 R20 K16 ["format"]
      184 CALL                             R20 -1 1
      185 GETUPVAL                         R21 6
      186 GETTABLEKS                       R21 R21 K12 ["reset"]
      188 JUMPIFNOT                        R9 ; [+8]
      189 LOADK                            R23 K17 ["\n\nMessage:\n  "]
      190 FASTCALL1                        TOSTRING R5 ; [+3]
      191 MOVE                             R25 R5
      192 GETIMPORT                        R24 K19 [tostring]
      194 CALL                             R24 1 1
      195 CONCAT                           R22 R23 R24
      196 JUMP                             ; [+1]
      197 LOADK                            R22 K7 [""]
      198 CALL                             R21 1 1
      199 GETUPVAL                         R23 1
      200 GETTABLEKS                       R23 R23 K6 ["toJSBoolean"]
      202 MOVE                             R24 R8
      203 CALL                             R23 1 1
      204 JUMPIFNOT                        R23 ; [+8]
      205 JUMPIFEQKNIL                     R8 ; [+7]
      207 LOADK                            R22 K28 ["\n\nDifference:\n\n%s"]
      208 MOVE                             R24 R8
      209 NAMECALL                         R22 R22 K16 ["format"]
      211 CALL                             R22 2 1
      212 JUMP                             ; [+1]
      213 LOADK                            R22 K7 [""]
      214 MOVE                             R23 R14
      215 CONCAT                           R15 R16 R23
      216 RETURN                           R15 1

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+19]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+14]
        7 LOADB                            R1 1
        8 GETTABLEKS                       R2 R0 K0 ["name"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["name"]
       13 JUMPIFEQ                         R2 R3 ; [+7]
       15 GETTABLEKS                       R2 R0 K1 ["code"]
       17 JUMPIFEQKS                       R2 K2 ["ERR_ASSERTION"] ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+8]
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K2 [tostring]
       10 CALL                             R2 1 1
       11 LOADK                            R3 K3 ["\n\n"]
       12 CONCAT                           R1 R2 R3
       13 RETURN                           R1 1
       14 LOADK                            R1 K4 [""]
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       18 GETTABLEKS                       R5 R2 K8 ["instanceof"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R1 K9 ["RobloxShared"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R7 R6 K10 ["escapePatternCharacters"]
       27 GETTABLEKS                       R8 R6 K11 ["normalizePromiseError"]
       29 GETTABLEKS                       R9 R2 K12 ["Error"]
       31 NEWTABLE                         R10 1 0
       33 GETTABLEKS                       R11 R2 K13 ["AssertionError"]
       35 GETIMPORT                        R12 K4 [require]
       37 GETTABLEKS                       R13 R1 K14 ["ChalkLua"]
       39 CALL                             R12 1 1
       40 GETIMPORT                        R13 K4 [require]
       42 GETTABLEKS                       R14 R1 K15 ["JestTypes"]
       44 CALL                             R13 1 1
       45 GETIMPORT                        R14 K4 [require]
       47 GETTABLEKS                       R15 R1 K16 ["JestMatcherUtils"]
       49 CALL                             R14 1 1
       50 GETTABLEKS                       R15 R14 K17 ["diff"]
       52 GETTABLEKS                       R16 R14 K18 ["printExpected"]
       54 GETTABLEKS                       R17 R14 K19 ["printReceived"]
       56 GETIMPORT                        R18 K4 [require]
       58 GETTABLEKS                       R19 R1 K20 ["PrettyFormat"]
       60 CALL                             R18 1 1
       61 GETTABLEKS                       R18 R18 K21 ["format"]
       63 LOADNIL                          R19
       64 LOADNIL                          R20
       65 LOADNIL                          R21
       66 LOADNIL                          R22
       67 LOADNIL                          R23
       68 LOADNIL                          R24
       69 LOADNIL                          R25
       70 LOADNIL                          R26
       71 NEWTABLE                         R27 4 0
       73 LOADK                            R28 K22 ["notEqual"]
       74 SETTABLEKS                       R28 R27 K23 ["!="]
       76 LOADK                            R28 K24 ["notStrictEqual"]
       77 SETTABLEKS                       R28 R27 K25 ["!=="]
       79 LOADK                            R28 K26 ["equal"]
       80 SETTABLEKS                       R28 R27 K27 ["=="]
       82 LOADK                            R28 K28 ["strictEqual"]
       83 SETTABLEKS                       R28 R27 K29 ["==="]
       85 DUPTABLE                         R28 K42 [{["deepEqual"] = "to deeply equal", ["deepStrictEqual"] = "to deeply and strictly equal", ["equal"] = "to be equal", ["notDeepEqual"] = "not to deeply equal", ["notDeepStrictEqual"] = "not to deeply and strictly equal", ["notEqual"] = "to not be equal", ["notStrictEqual"] = "not be strictly equal", ["strictEqual"] = "to strictly be equal"}]
       86 NEWCLOSURE                       R19 P0
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R18
       91 CAPTURE                          VAL R9
       92 CAPTURE                          REF R25
       93 CAPTURE                          REF R24
       94 DUPCLOSURE                       R20 K43 [PROTO_2]
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R27
       97 NEWCLOSURE                       R21 P2
       98 CAPTURE                          REF R20
       99 CAPTURE                          VAL R28
      100 CAPTURE                          VAL R4
      101 DUPCLOSURE                       R22 K44 [PROTO_4]
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R12
      104 DUPCLOSURE                       R23 K45 [PROTO_5]
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R4
      107 NEWCLOSURE                       R24 P5
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R4
      110 CAPTURE                          REF R20
      111 CAPTURE                          VAL R7
      112 CAPTURE                          REF R26
      113 CAPTURE                          REF R22
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R17
      116 CAPTURE                          REF R23
      117 CAPTURE                          REF R21
      118 CAPTURE                          VAL R16
      119 DUPCLOSURE                       R25 K46 [PROTO_7]
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R11
      122 DUPCLOSURE                       R26 K47 [PROTO_8]
      123 CAPTURE                          VAL R4
      124 SETTABLEKS                       R19 R10 K48 ["default"]
      126 CLOSEUPVALS                      R20
      127 RETURN                           R10 1
