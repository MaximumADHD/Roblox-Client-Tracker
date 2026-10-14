PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [game]
        3 LOADK                            R3 K2 ["CLICommandService"]
        4 NAMECALL                         R1 R1 K3 ["GetService"]
        6 CALL                             R1 2 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+2]
        6 MOVE                             R3 R2
        7 RETURN                           R3 1
        8 LOADNIL                          R3
        9 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["TestDiscoveryMode"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["FileReporting"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["RunExcluded"]
        2 RETURN                           R1 1

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["getExcludedTests"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["suiteName"]
        2 JUMPIF                           R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K1 ["rootDir"]
        5 GETTABLEKS                       R1 R1 K2 ["Name"]
        7 GETIMPORT                        R2 K5 [table.clone]
        9 GETTABLEKS                       R3 R0 K6 ["options"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 CALL                             R2 1 1
       15 DUPCLOSURE                       R5 K7 [PROTO_2]
       16 GETIMPORT                        R6 K9 [pcall]
       18 DUPCLOSURE                       R7 K10 [PROTO_0]
       19 CAPTURE                          VAL R5
       20 CALL                             R6 1 2
       21 JUMPIFNOT                        R6 ; [+2]
       22 MOVE                             R4 R7
       23 JUMP                             ; [+1]
       24 LOADNIL                          R4
       25 JUMPIFEQKB                       R4 TRUE ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 DUPCLOSURE                       R6 K11 [PROTO_3]
       30 GETIMPORT                        R7 K9 [pcall]
       32 DUPCLOSURE                       R8 K10 [PROTO_0]
       33 CAPTURE                          VAL R6
       34 CALL                             R7 1 2
       35 JUMPIFNOT                        R7 ; [+2]
       36 MOVE                             R5 R8
       37 JUMP                             ; [+1]
       38 LOADNIL                          R5
       39 JUMPIFEQKB                       R5 TRUE ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 DUPCLOSURE                       R7 K12 [PROTO_4]
       44 GETIMPORT                        R8 K9 [pcall]
       46 DUPCLOSURE                       R9 K10 [PROTO_0]
       47 CAPTURE                          VAL R7
       48 CALL                             R8 1 2
       49 JUMPIFNOT                        R8 ; [+2]
       50 MOVE                             R6 R9
       51 JUMP                             ; [+1]
       52 LOADNIL                          R6
       53 JUMPIFEQKB                       R6 TRUE ; [+2]
       55 LOADB                            R5 0 +1
       56 LOADB                            R5 1
       57 SETTABLEKS                       R3 R2 K13 ["listTests"]
       59 GETIMPORT                        R6 K15 [_G]
       61 GETTABLEKS                       R6 R6 K16 ["LEST_TEST_NAME_PATTERN"]
       63 JUMPIFEQKNIL                     R6 ; [+7]
       65 GETIMPORT                        R6 K15 [_G]
       67 GETTABLEKS                       R6 R6 K16 ["LEST_TEST_NAME_PATTERN"]
       69 SETTABLEKS                       R6 R2 K17 ["testPathPattern"]
       71 JUMPIFNOT                        R4 ; [+62]
       72 GETIMPORT                        R6 K5 [table.clone]
       74 GETTABLEKS                       R7 R2 K18 ["reporters"]
       76 JUMPIF                           R7 ; [+5]
       77 NEWTABLE                         R7 0 1
       79 LOADK                            R8 K19 ["default"]
       80 SETLIST                          R7 R8 1 [1]
       82 CALL                             R6 1 1
       83 DUPTABLE                         R9 K21 [{"reporter", "options"}]
       84 GETUPVAL                         R10 0
       85 GETTABLEKS                       R10 R10 K22 ["RotestReporter"]
       87 SETTABLEKS                       R10 R9 K20 ["reporter"]
       89 DUPTABLE                         R10 K23 [{"suiteName"}]
       90 SETTABLEKS                       R1 R10 K0 ["suiteName"]
       92 SETTABLEKS                       R10 R9 K6 ["options"]
       94 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       96 MOVE                             R8 R6
       97 GETIMPORT                        R7 K25 [table.insert]
       99 CALL                             R7 2 0
      100 SETTABLEKS                       R6 R2 K18 ["reporters"]
      102 JUMPIF                           R5 ; [+31]
      103 DUPCLOSURE                       R8 K26 [PROTO_5]
      104 GETIMPORT                        R9 K9 [pcall]
      106 DUPCLOSURE                       R10 K10 [PROTO_0]
      107 CAPTURE                          VAL R8
      108 CALL                             R9 1 2
      109 JUMPIFNOT                        R9 ; [+2]
      110 MOVE                             R7 R10
      111 JUMP                             ; [+1]
      112 LOADNIL                          R7
      113 JUMPIFEQKNIL                     R7 ; [+20]
      115 GETIMPORT                        R8 K5 [table.clone]
      117 GETTABLEKS                       R9 R2 K27 ["testPathIgnorePatterns"]
      119 JUMPIF                           R9 ; [+2]
      120 NEWTABLE                         R9 0 0
      122 CALL                             R8 1 1
      123 GETIMPORT                        R9 K29 [table.move]
      125 MOVE                             R10 R7
      126 LOADN                            R11 1
      127 LENGTH                           R12 R7
      128 LENGTH                           R14 R8
      129 ADDK                             R13 R14 K30 [1]
      130 MOVE                             R14 R8
      131 CALL                             R9 5 0
      132 SETTABLEKS                       R8 R2 K27 ["testPathIgnorePatterns"]
      134 GETIMPORT                        R6 K32 [print]
      136 LOADK                            R7 K33 ["----- All %* Tests (Jest 3) ------"]
      137 MOVE                             R9 R1
      138 NAMECALL                         R7 R7 K34 ["format"]
      140 CALL                             R7 2 1
      141 CALL                             R6 1 0
      142 GETTABLEKS                       R6 R0 K35 ["Jest"]
      144 GETTABLEKS                       R6 R6 K36 ["runCLI"]
      146 GETTABLEKS                       R7 R0 K1 ["rootDir"]
      148 MOVE                             R8 R2
      149 GETTABLEKS                       R9 R0 K37 ["projects"]
      151 CALL                             R6 3 1
      152 NAMECALL                         R6 R6 K38 ["awaitStatus"]
      154 CALL                             R6 1 2
      155 GETIMPORT                        R8 K32 [print]
      157 LOADK                            R9 K39 ["----------------------------------"]
      158 CALL                             R8 1 0
      159 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 DUPCLOSURE                       R1 K3 [PROTO_1]
        6 DUPCLOSURE                       R2 K4 [PROTO_6]
        7 CAPTURE                          VAL R0
        8 RETURN                           R2 1
