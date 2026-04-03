PROTO_0:
        0 LOADK                            R3 K0 ["%.spec$"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["ModuleScript"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K2 ["Name"]
        7 LOADK                            R3 K3 ["%.spec$"]
        8 NAMECALL                         R1 R1 K4 ["match"]
       10 CALL                             R1 2 1
       11 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 GETIMPORT                        R2 K1 [game]
        4 MOVE                             R1 R2
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R0
        8 GETTABLEKS                       R4 R3 K2 ["Name"]
       10 JUMPIFNOTEQKS                    R4 K3 ["init.spec"] ; [+3]
       12 GETTABLEKS                       R3 R3 K4 ["Parent"]
       14 JUMPIFEQKNIL                     R3 ; [+20]
       16 JUMPIFEQ                         R3 R1 ; [+18]
       18 GETTABLEKS                       R7 R3 K2 ["Name"]
       20 LOADK                            R10 K5 ["%.spec$"]
       21 LOADK                            R11 K6 [""]
       22 NAMECALL                         R8 R7 K7 ["gsub"]
       24 CALL                             R8 3 1
       25 MOVE                             R6 R8
       26 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       28 MOVE                             R5 R2
       29 GETIMPORT                        R4 K10 [table.insert]
       31 CALL                             R4 2 0
       32 GETTABLEKS                       R3 R3 K4 ["Parent"]
       34 JUMPBACK                         ; [-21]
       35 GETTABLEKS                       R7 R1 K2 ["Name"]
       37 LOADK                            R10 K5 ["%.spec$"]
       38 LOADK                            R11 K6 [""]
       39 NAMECALL                         R8 R7 K7 ["gsub"]
       41 CALL                             R8 3 1
       42 MOVE                             R6 R8
       43 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       45 MOVE                             R5 R2
       46 GETIMPORT                        R4 K10 [table.insert]
       48 CALL                             R4 2 0
       49 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R1 K0 [""]
        1 LOADB                            R2 1
        2 GETIMPORT                        R3 K2 [ipairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 JUMPIFNOT                        R2 ; [+3]
        8 MOVE                             R1 R7
        9 LOADB                            R2 0
       10 JUMP                             ; [+4]
       11 MOVE                             R8 R7
       12 LOADK                            R9 K3 [" "]
       13 MOVE                             R10 R1
       14 CONCAT                           R1 R8 R10
       15 FORGLOOP                         R3 2 [inext] ; [-9]
       17 RETURN                           R1 1

PROTO_4:
        0 MOVE                             R4 R2
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R2 R4
        5 OR                               R3 R3 R1
        6 MOVE                             R5 R3
        7 LOADK                            R8 K0 ["ModuleScript"]
        8 NAMECALL                         R6 R5 K1 ["IsA"]
       10 CALL                             R6 2 1
       11 MOVE                             R4 R6
       12 JUMPIFNOT                        R4 ; [+7]
       13 GETTABLEKS                       R6 R5 K2 ["Name"]
       15 LOADK                            R8 K3 ["%.spec$"]
       16 NAMECALL                         R6 R6 K4 ["match"]
       18 CALL                             R6 2 1
       19 MOVE                             R4 R6
       20 JUMPIFNOT                        R4 ; [+44]
       21 GETIMPORT                        R4 K6 [require]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 0
       26 MOVE                             R6 R3
       27 MOVE                             R7 R1
       28 CALL                             R5 2 1
       29 LOADK                            R7 K7 [""]
       30 LOADB                            R8 1
       31 GETIMPORT                        R9 K9 [ipairs]
       33 MOVE                             R10 R5
       34 CALL                             R9 1 3
       35 FORGPREP_INEXT                   R9
       36 JUMPIFNOT                        R8 ; [+3]
       37 MOVE                             R7 R13
       38 LOADB                            R8 0
       39 JUMP                             ; [+4]
       40 MOVE                             R14 R13
       41 LOADK                            R15 K10 [" "]
       42 MOVE                             R16 R7
       43 CONCAT                           R7 R14 R16
       44 FORGLOOP                         R9 2 [inext] ; [-9]
       46 MOVE                             R6 R7
       47 DUPTABLE                         R9 K15 [{"instance", "method", "path", "pathStringForSorting"}]
       48 SETTABLEKS                       R3 R9 K11 ["instance"]
       50 SETTABLEKS                       R4 R9 K12 ["method"]
       52 SETTABLEKS                       R5 R9 K13 ["path"]
       54 NAMECALL                         R10 R6 K16 ["lower"]
       56 CALL                             R10 1 1
       57 SETTABLEKS                       R10 R9 K14 ["pathStringForSorting"]
       59 FASTCALL2                        TABLE_INSERT R2 R9 ; [+4]
       61 MOVE                             R8 R2
       62 GETIMPORT                        R7 K19 [table.insert]
       64 CALL                             R7 2 0
       65 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R0 K0 ["getModulesImpl"]
        6 CALL                             R3 3 0
        7 GETIMPORT                        R3 K2 [ipairs]
        9 NAMECALL                         R4 R1 K3 ["GetDescendants"]
       11 CALL                             R4 1 -1
       12 CALL                             R3 -1 3
       13 FORGPREP_INEXT                   R3
       14 MOVE                             R10 R1
       15 MOVE                             R11 R2
       16 MOVE                             R12 R7
       17 NAMECALL                         R8 R0 K0 ["getModulesImpl"]
       19 CALL                             R8 4 0
       20 FORGLOOP                         R3 2 [inext] ; [-7]
       22 RETURN                           R2 1

PROTO_6:
        0 MOVE                             R4 R2
        1 JUMPIF                           R4 ; [+1]
        2 GETUPVAL                         R4 0
        3 MOVE                             R2 R4
        4 MOVE                             R4 R3
        5 JUMPIF                           R4 ; [+2]
        6 NEWTABLE                         R4 0 0
        8 MOVE                             R3 R4
        9 GETTABLEKS                       R5 R3 K1 ["showTimingInfo"]
       11 ORK                              R4 R5 K0 [False]
       12 NEWTABLE                         R5 0 0
       14 GETIMPORT                        R7 K4 [_G]
       16 GETTABLEKS                       R6 R7 K2 ["TESTEZ_TEST_NAME_PATTERN"]
       18 GETIMPORT                        R8 K4 [_G]
       20 GETTABLEKS                       R7 R8 K5 ["TESTEZ_TEST_PATH_PATTERN"]
       22 GETIMPORT                        R9 K4 [_G]
       24 GETTABLEKS                       R8 R9 K6 ["TESTEZ_TEST_PATH_IGNORE_PATTERNS"]
       26 GETTABLEKS                       R9 R3 K7 ["extraEnvironment"]
       28 JUMPIF                           R9 ; [+2]
       29 NEWTABLE                         R9 0 0
       31 GETIMPORT                        R10 K10 [string.gmatch]
       33 GETIMPORT                        R13 K4 [_G]
       35 GETTABLEKS                       R12 R13 K12 ["TESTEZ_RUN_TESTS_PATH"]
       37 ORK                              R11 R12 K11 [""]
       38 LOADK                            R12 K13 ["([^,]+)"]
       39 CALL                             R10 2 3
       40 FORGPREP                         R10
       41 FASTCALL2                        TABLE_INSERT R5 R13 ; [+5]
       43 MOVE                             R16 R5
       44 MOVE                             R17 R13
       45 GETIMPORT                        R15 K16 [table.insert]
       47 CALL                             R15 2 0
       48 FORGLOOP                         R10 1 ; [-8]
       50 FASTCALL1                        TYPE R1 ; [+3]
       51 MOVE                             R11 R1
       52 GETIMPORT                        R10 K18 [type]
       54 CALL                             R10 1 1
       55 JUMPIFEQKS                       R10 K14 ["table"] ; [+14]
       57 GETIMPORT                        R10 K20 [error]
       59 LOADK                            R11 K21 ["Bad argument #1 to TestBootstrap:run. Expected table, got %s"]
       60 FASTCALL1                        TYPEOF R1 ; [+3]
       61 MOVE                             R14 R1
       62 GETIMPORT                        R13 K23 [typeof]
       64 CALL                             R13 1 1
       65 NAMECALL                         R11 R11 K24 ["format"]
       67 CALL                             R11 2 1
       68 LOADN                            R12 2
       69 CALL                             R10 2 0
       70 GETIMPORT                        R10 K26 [tick]
       72 CALL                             R10 0 1
       73 NEWTABLE                         R11 0 0
       75 GETIMPORT                        R12 K28 [ipairs]
       77 MOVE                             R13 R1
       78 CALL                             R12 1 3
       79 FORGPREP_INEXT                   R12
       80 MOVE                             R19 R16
       81 NAMECALL                         R17 R0 K29 ["getModules"]
       83 CALL                             R17 2 1
       84 GETIMPORT                        R18 K28 [ipairs]
       86 MOVE                             R19 R17
       87 CALL                             R18 1 3
       88 FORGPREP_INEXT                   R18
       89 FASTCALL2                        TABLE_INSERT R11 R22 ; [+5]
       91 MOVE                             R24 R11
       92 MOVE                             R25 R22
       93 GETIMPORT                        R23 K16 [table.insert]
       95 CALL                             R23 2 0
       96 FORGLOOP                         R18 2 [inext] ; [-8]
       98 FORGLOOP                         R12 2 [inext] ; [-19]
      100 GETIMPORT                        R12 K26 [tick]
      102 CALL                             R12 0 1
      103 DUPTABLE                         R13 K34 [{"runTestsByPath", "testNamePattern", "testPathPattern", "testPathIgnorePatterns", "extraEnvironment"}]
      104 SETTABLEKS                       R5 R13 K30 ["runTestsByPath"]
      106 SETTABLEKS                       R6 R13 K31 ["testNamePattern"]
      108 SETTABLEKS                       R7 R13 K32 ["testPathPattern"]
      110 SETTABLEKS                       R8 R13 K33 ["testPathIgnorePatterns"]
      112 SETTABLEKS                       R9 R13 K7 ["extraEnvironment"]
      114 GETUPVAL                         R15 1
      115 GETTABLEKS                       R14 R15 K35 ["createPlan"]
      117 MOVE                             R15 R11
      118 MOVE                             R16 R13
      119 CALL                             R14 2 1
      120 GETIMPORT                        R15 K26 [tick]
      122 CALL                             R15 0 1
      123 GETUPVAL                         R17 2
      124 GETTABLEKS                       R16 R17 K36 ["runPlan"]
      126 MOVE                             R17 R14
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K26 [tick]
      130 CALL                             R17 0 1
      131 GETTABLEKS                       R18 R2 K37 ["report"]
      133 MOVE                             R19 R16
      134 CALL                             R18 1 0
      135 GETIMPORT                        R18 K26 [tick]
      137 CALL                             R18 0 1
      138 JUMPIFNOT                        R4 ; [+32]
      139 NEWTABLE                         R19 0 4
      141 LOADK                            R20 K38 ["Took %f seconds to locate test modules"]
      142 SUB                              R22 R12 R10
      143 NAMECALL                         R20 R20 K24 ["format"]
      145 CALL                             R20 2 1
      146 LOADK                            R21 K39 ["Took %f seconds to create test plan"]
      147 SUB                              R23 R15 R12
      148 NAMECALL                         R21 R21 K24 ["format"]
      150 CALL                             R21 2 1
      151 LOADK                            R22 K40 ["Took %f seconds to run tests"]
      152 SUB                              R24 R17 R15
      153 NAMECALL                         R22 R22 K24 ["format"]
      155 CALL                             R22 2 1
      156 LOADK                            R23 K41 ["Took %f seconds to report tests"]
      157 SUB                              R25 R18 R17
      158 NAMECALL                         R23 R23 K24 ["format"]
      160 CALL                             R23 2 -1
      161 SETLIST                          R19 R20 -1 [1]
      163 GETIMPORT                        R20 K43 [print]
      165 GETIMPORT                        R21 K45 [table.concat]
      167 MOVE                             R22 R19
      168 LOADK                            R23 K46 ["\n"]
      169 CALL                             R21 2 -1
      170 CALL                             R20 -1 0
      171 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["TestPlanner"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["TestRunner"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R6 K3 [script]
       23 GETTABLEKS                       R5 R6 K4 ["Parent"]
       25 GETTABLEKS                       R4 R5 K7 ["Reporters"]
       27 GETTABLEKS                       R3 R4 K8 ["TextReporter"]
       29 CALL                             R2 1 1
       30 NEWTABLE                         R3 4 0
       32 DUPCLOSURE                       R4 K9 [PROTO_0]
       33 DUPCLOSURE                       R5 K10 [PROTO_1]
       34 DUPCLOSURE                       R6 K11 [PROTO_2]
       35 DUPCLOSURE                       R7 K12 [PROTO_3]
       36 DUPCLOSURE                       R8 K13 [PROTO_4]
       37 CAPTURE                          VAL R6
       38 SETTABLEKS                       R8 R3 K14 ["getModulesImpl"]
       40 DUPCLOSURE                       R8 K15 [PROTO_5]
       41 SETTABLEKS                       R8 R3 K16 ["getModules"]
       43 DUPCLOSURE                       R8 K17 [PROTO_6]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R8 R3 K18 ["run"]
       49 RETURN                           R3 1
