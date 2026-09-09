PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R5 R1 K1 ["matches"]
        5 GETTABLEKS                       R5 R5 K2 ["total"]
        7 CALL                             R4 1 1
        8 JUMPIFNOT                        R4 ; [+5]
        9 GETTABLEKS                       R3 R1 K1 ["matches"]
       11 GETTABLEKS                       R3 R3 K2 ["total"]
       13 JUMPIF                           R3 ; [+1]
       14 LOADN                            R3 0
       15 ADD                              R2 R0 R3
       16 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R1 K0 ["\"%s\""]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K2 [tostring]
        5 CALL                             R3 1 1
        6 NAMECALL                         R1 R1 K3 ["format"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["reduce"]
        3 MOVE                             R4 R0
        4 DUPCLOSURE                       R5 K1 [PROTO_0]
        5 CAPTURE                          UPVAL U1
        6 LOADN                            R6 0
        7 CALL                             R3 3 1
        8 LOADNIL                          R4
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["toJSBoolean"]
       12 GETTABLEKS                       R6 R1 K3 ["runTestsByPath"]
       14 CALL                             R5 1 1
       15 JUMPIFNOT                        R5 ; [+22]
       16 LOADK                            R5 K4 ["Files: %s"]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K5 ["join"]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K6 ["map"]
       23 GETTABLEKS                       R10 R1 K7 ["nonFlagArgs"]
       25 DUPCLOSURE                       R11 K8 [PROTO_1]
       26 CALL                             R9 2 1
       27 LOADK                            R10 K9 [", "]
       28 CALL                             R8 2 -1
       29 FASTCALL                         TOSTRING ; [+2]
       30 GETIMPORT                        R7 K11 [tostring]
       32 CALL                             R7 -1 1
       33 NAMECALL                         R5 R5 K12 ["format"]
       35 CALL                             R5 2 1
       36 MOVE                             R4 R5
       37 JUMP                             ; [+11]
       38 LOADK                            R5 K13 ["Pattern: %s - 0 matches"]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K14 ["yellow"]
       42 GETTABLEKS                       R8 R1 K15 ["testPathPattern"]
       44 CALL                             R7 1 -1
       45 NAMECALL                         R5 R5 K12 ["format"]
       47 CALL                             R5 -1 1
       48 MOVE                             R4 R5
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K2 ["toJSBoolean"]
       52 MOVE                             R6 R2
       53 CALL                             R5 1 1
       54 JUMPIFNOT                        R5 ; [+56]
       55 LOADK                            R11 K16 ["%s\n"]
       56 GETUPVAL                         R13 2
       57 GETTABLEKS                       R13 R13 K17 ["bold"]
       59 LOADK                            R14 K18 ["No tests found, exiting with code 0"]
       60 CALL                             R13 1 -1
       61 NAMECALL                         R11 R11 K12 ["format"]
       63 CALL                             R11 -1 1
       64 MOVE                             R6 R11
       65 LOADK                            R11 K19 ["In %s"]
       66 GETUPVAL                         R13 2
       67 GETTABLEKS                       R13 R13 K17 ["bold"]
       69 GETTABLEKS                       R14 R1 K20 ["rootDir"]
       71 CALL                             R13 1 -1
       72 NAMECALL                         R11 R11 K12 ["format"]
       74 CALL                             R11 -1 1
       75 MOVE                             R7 R11
       76 LOADK                            R8 K21 ["\n"]
       77 LOADK                            R11 K22 ["  %s checked across %s. Run with `--verbose` for more details."]
       78 GETUPVAL                         R14 3
       79 LOADK                            R15 K23 ["file"]
       80 MOVE                             R16 R3
       81 LOADK                            R17 K24 ["s"]
       82 CALL                             R14 3 -1
       83 FASTCALL                         TOSTRING ; [+2]
       84 GETIMPORT                        R13 K11 [tostring]
       86 CALL                             R13 -1 1
       87 GETUPVAL                         R15 3
       88 LOADK                            R16 K25 ["project"]
       89 LENGTH                           R17 R0
       90 LOADK                            R18 K24 ["s"]
       91 CALL                             R15 3 -1
       92 FASTCALL                         TOSTRING ; [+2]
       93 GETIMPORT                        R14 K11 [tostring]
       95 CALL                             R14 -1 1
       96 NAMECALL                         R11 R11 K12 ["format"]
       98 CALL                             R11 3 1
       99 MOVE                             R9 R11
      100 LOADK                            R10 K26 ["\n%s"]
      101 FASTCALL1                        TOSTRING R4 ; [+3]
      102 MOVE                             R13 R4
      103 GETIMPORT                        R12 K11 [tostring]
      105 CALL                             R12 1 1
      106 NAMECALL                         R10 R10 K12 ["format"]
      108 CALL                             R10 2 1
      109 CONCAT                           R5 R6 R10
      110 RETURN                           R5 1
      111 LOADK                            R13 K16 ["%s\n"]
      112 GETUPVAL                         R15 2
      113 GETTABLEKS                       R15 R15 K17 ["bold"]
      115 LOADK                            R16 K27 ["No tests found, exiting with code 1"]
      116 CALL                             R15 1 -1
      117 NAMECALL                         R13 R13 K12 ["format"]
      119 CALL                             R13 -1 1
      120 MOVE                             R6 R13
      121 LOADK                            R7 K28 ["Run with `--passWithNoTests` to exit with code 0"]
      122 LOADK                            R8 K21 ["\n"]
      123 LOADK                            R13 K19 ["In %s"]
      124 GETUPVAL                         R15 2
      125 GETTABLEKS                       R15 R15 K17 ["bold"]
      127 GETTABLEKS                       R16 R1 K20 ["rootDir"]
      129 CALL                             R15 1 -1
      130 NAMECALL                         R13 R13 K12 ["format"]
      132 CALL                             R13 -1 1
      133 MOVE                             R9 R13
      134 LOADK                            R10 K21 ["\n"]
      135 LOADK                            R13 K22 ["  %s checked across %s. Run with `--verbose` for more details."]
      136 GETUPVAL                         R16 3
      137 LOADK                            R17 K23 ["file"]
      138 MOVE                             R18 R3
      139 LOADK                            R19 K24 ["s"]
      140 CALL                             R16 3 -1
      141 FASTCALL                         TOSTRING ; [+2]
      142 GETIMPORT                        R15 K11 [tostring]
      144 CALL                             R15 -1 1
      145 GETUPVAL                         R17 3
      146 LOADK                            R18 K25 ["project"]
      147 LENGTH                           R19 R0
      148 LOADK                            R20 K24 ["s"]
      149 CALL                             R17 3 -1
      150 FASTCALL                         TOSTRING ; [+2]
      151 GETIMPORT                        R16 K11 [tostring]
      153 CALL                             R16 -1 1
      154 NAMECALL                         R13 R13 K12 ["format"]
      156 CALL                             R13 3 1
      157 MOVE                             R11 R13
      158 LOADK                            R12 K26 ["\n%s"]
      159 FASTCALL1                        TOSTRING R4 ; [+3]
      160 MOVE                             R15 R4
      161 GETIMPORT                        R14 K11 [tostring]
      163 CALL                             R14 1 1
      164 NAMECALL                         R12 R12 K12 ["format"]
      166 CALL                             R12 2 1
      167 CONCAT                           R5 R6 R12
      168 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 NEWTABLE                         R4 1 0
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K8 ["ChalkLua"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R0 K9 ["JestTypes"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K4 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R8 R8 K2 ["Parent"]
       34 GETTABLEKS                       R8 R8 K10 ["pluralize"]
       36 CALL                             R7 1 1
       37 GETTABLEKS                       R7 R7 K11 ["default"]
       39 GETIMPORT                        R8 K4 [require]
       41 GETIMPORT                        R9 K1 [script]
       43 GETTABLEKS                       R9 R9 K2 ["Parent"]
       45 GETTABLEKS                       R9 R9 K12 ["types"]
       47 CALL                             R8 1 1
       48 DUPCLOSURE                       R9 K13 [PROTO_2]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R7
       53 SETTABLEKS                       R9 R4 K11 ["default"]
       55 RETURN                           R4 1
