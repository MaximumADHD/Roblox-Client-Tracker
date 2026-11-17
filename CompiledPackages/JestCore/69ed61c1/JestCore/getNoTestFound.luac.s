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
       54 JUMPIFNOT                        R5 ; [+53]
       55 LOADK                            R6 K16 ["%s\n"]
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R8 R8 K17 ["bold"]
       59 LOADK                            R9 K18 ["No tests found, exiting with code 0"]
       60 CALL                             R8 1 -1
       61 NAMECALL                         R6 R6 K12 ["format"]
       63 CALL                             R6 -1 1
       64 LOADK                            R7 K19 ["In %s"]
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R9 R9 K17 ["bold"]
       68 GETTABLEKS                       R10 R1 K20 ["rootDir"]
       70 CALL                             R9 1 -1
       71 NAMECALL                         R7 R7 K12 ["format"]
       73 CALL                             R7 -1 1
       74 LOADK                            R8 K21 ["\n"]
       75 LOADK                            R9 K22 ["  %s checked across %s. Run with `--verbose` for more details."]
       76 GETUPVAL                         R12 3
       77 LOADK                            R13 K23 ["file"]
       78 MOVE                             R14 R3
       79 LOADK                            R15 K24 ["s"]
       80 CALL                             R12 3 -1
       81 FASTCALL                         TOSTRING ; [+2]
       82 GETIMPORT                        R11 K11 [tostring]
       84 CALL                             R11 -1 1
       85 GETUPVAL                         R13 3
       86 LOADK                            R14 K25 ["project"]
       87 LENGTH                           R15 R0
       88 LOADK                            R16 K24 ["s"]
       89 CALL                             R13 3 -1
       90 FASTCALL                         TOSTRING ; [+2]
       91 GETIMPORT                        R12 K11 [tostring]
       93 CALL                             R12 -1 1
       94 NAMECALL                         R9 R9 K12 ["format"]
       96 CALL                             R9 3 1
       97 LOADK                            R10 K26 ["\n%s"]
       98 FASTCALL1                        TOSTRING R4 ; [+3]
       99 MOVE                             R13 R4
      100 GETIMPORT                        R12 K11 [tostring]
      102 CALL                             R12 1 1
      103 NAMECALL                         R10 R10 K12 ["format"]
      105 CALL                             R10 2 1
      106 CONCAT                           R5 R6 R10
      107 RETURN                           R5 1
      108 LOADK                            R6 K16 ["%s\n"]
      109 GETUPVAL                         R8 2
      110 GETTABLEKS                       R8 R8 K17 ["bold"]
      112 LOADK                            R9 K27 ["No tests found, exiting with code 1"]
      113 CALL                             R8 1 -1
      114 NAMECALL                         R6 R6 K12 ["format"]
      116 CALL                             R6 -1 1
      117 LOADK                            R7 K28 ["Run with `--passWithNoTests` to exit with code 0"]
      118 LOADK                            R8 K21 ["\n"]
      119 LOADK                            R9 K19 ["In %s"]
      120 GETUPVAL                         R11 2
      121 GETTABLEKS                       R11 R11 K17 ["bold"]
      123 GETTABLEKS                       R12 R1 K20 ["rootDir"]
      125 CALL                             R11 1 -1
      126 NAMECALL                         R9 R9 K12 ["format"]
      128 CALL                             R9 -1 1
      129 LOADK                            R10 K21 ["\n"]
      130 LOADK                            R11 K22 ["  %s checked across %s. Run with `--verbose` for more details."]
      131 GETUPVAL                         R14 3
      132 LOADK                            R15 K23 ["file"]
      133 MOVE                             R16 R3
      134 LOADK                            R17 K24 ["s"]
      135 CALL                             R14 3 -1
      136 FASTCALL                         TOSTRING ; [+2]
      137 GETIMPORT                        R13 K11 [tostring]
      139 CALL                             R13 -1 1
      140 GETUPVAL                         R15 3
      141 LOADK                            R16 K25 ["project"]
      142 LENGTH                           R17 R0
      143 LOADK                            R18 K24 ["s"]
      144 CALL                             R15 3 -1
      145 FASTCALL                         TOSTRING ; [+2]
      146 GETIMPORT                        R14 K11 [tostring]
      148 CALL                             R14 -1 1
      149 NAMECALL                         R11 R11 K12 ["format"]
      151 CALL                             R11 3 1
      152 LOADK                            R12 K26 ["\n%s"]
      153 FASTCALL1                        TOSTRING R4 ; [+3]
      154 MOVE                             R15 R4
      155 GETIMPORT                        R14 K11 [tostring]
      157 CALL                             R14 1 1
      158 NAMECALL                         R12 R12 K12 ["format"]
      160 CALL                             R12 2 1
      161 CONCAT                           R5 R6 R12
      162 RETURN                           R5 1

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
