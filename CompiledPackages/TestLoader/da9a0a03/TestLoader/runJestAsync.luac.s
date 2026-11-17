PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [game]
        3 LOADK                            R3 K2 ["CLICommandService"]
        4 NAMECALL                         R1 R1 K3 ["GetService"]
        6 CALL                             R1 2 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+2]
        7 MOVE                             R3 R2
        8 RETURN                           R3 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

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
       16 DUPCLOSURE                       R7 K8 [PROTO_0]
       17 CAPTURE                          VAL R5
       18 FASTPCALL                        pcall 1 ; [+2]
       19 GETIMPORT                        R6 K10 [pcall]
       21 CALL                             R6 1 2
       22 JUMPIFNOT                        R6 ; [+2]
       23 MOVE                             R4 R7
       24 JUMP                             ; [+1]
       25 LOADNIL                          R4
       26 JUMPIFEQKB                       R4 TRUE ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 DUPCLOSURE                       R6 K11 [PROTO_3]
       31 DUPCLOSURE                       R8 K8 [PROTO_0]
       32 CAPTURE                          VAL R6
       33 FASTPCALL                        pcall 1 ; [+2]
       34 GETIMPORT                        R7 K10 [pcall]
       36 CALL                             R7 1 2
       37 JUMPIFNOT                        R7 ; [+2]
       38 MOVE                             R5 R8
       39 JUMP                             ; [+1]
       40 LOADNIL                          R5
       41 JUMPIFEQKB                       R5 TRUE ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 DUPCLOSURE                       R7 K12 [PROTO_4]
       46 DUPCLOSURE                       R9 K8 [PROTO_0]
       47 CAPTURE                          VAL R7
       48 FASTPCALL                        pcall 1 ; [+2]
       49 GETIMPORT                        R8 K10 [pcall]
       51 CALL                             R8 1 2
       52 JUMPIFNOT                        R8 ; [+2]
       53 MOVE                             R6 R9
       54 JUMP                             ; [+1]
       55 LOADNIL                          R6
       56 JUMPIFEQKB                       R6 TRUE ; [+2]
       58 LOADB                            R5 0 +1
       59 LOADB                            R5 1
       60 SETTABLEKS                       R3 R2 K13 ["listTests"]
       62 GETIMPORT                        R6 K15 [_G]
       64 GETTABLEKS                       R6 R6 K16 ["LEST_TEST_NAME_PATTERN"]
       66 JUMPIFEQKNIL                     R6 ; [+7]
       68 GETIMPORT                        R6 K15 [_G]
       70 GETTABLEKS                       R6 R6 K16 ["LEST_TEST_NAME_PATTERN"]
       72 SETTABLEKS                       R6 R2 K17 ["testPathPattern"]
       74 JUMPIFNOT                        R4 ; [+63]
       75 GETIMPORT                        R6 K5 [table.clone]
       77 GETTABLEKS                       R7 R2 K18 ["reporters"]
       79 JUMPIF                           R7 ; [+5]
       80 NEWTABLE                         R7 0 1
       82 LOADK                            R8 K19 ["default"]
       83 SETLIST                          R7 R8 1 [1]
       85 CALL                             R6 1 1
       86 DUPTABLE                         R9 K21 [{"reporter", "options"}]
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R10 R10 K22 ["RotestReporter"]
       90 SETTABLEKS                       R10 R9 K20 ["reporter"]
       92 DUPTABLE                         R10 K23 [{"suiteName"}]
       93 SETTABLEKS                       R1 R10 K0 ["suiteName"]
       95 SETTABLEKS                       R10 R9 K6 ["options"]
       97 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       99 MOVE                             R8 R6
      100 GETIMPORT                        R7 K25 [table.insert]
      102 CALL                             R7 2 0
      103 SETTABLEKS                       R6 R2 K18 ["reporters"]
      105 JUMPIF                           R5 ; [+32]
      106 DUPCLOSURE                       R8 K26 [PROTO_5]
      107 DUPCLOSURE                       R10 K8 [PROTO_0]
      108 CAPTURE                          VAL R8
      109 FASTPCALL                        pcall 1 ; [+2]
      110 GETIMPORT                        R9 K10 [pcall]
      112 CALL                             R9 1 2
      113 JUMPIFNOT                        R9 ; [+2]
      114 MOVE                             R7 R10
      115 JUMP                             ; [+1]
      116 LOADNIL                          R7
      117 JUMPIFEQKNIL                     R7 ; [+20]
      119 GETIMPORT                        R8 K5 [table.clone]
      121 GETTABLEKS                       R9 R2 K27 ["testPathIgnorePatterns"]
      123 JUMPIF                           R9 ; [+2]
      124 NEWTABLE                         R9 0 0
      126 CALL                             R8 1 1
      127 GETIMPORT                        R9 K29 [table.move]
      129 MOVE                             R10 R7
      130 LOADN                            R11 1
      131 LENGTH                           R12 R7
      132 LENGTH                           R14 R8
      133 ADDK                             R13 R14 K30 [1]
      134 MOVE                             R14 R8
      135 CALL                             R9 5 0
      136 SETTABLEKS                       R8 R2 K27 ["testPathIgnorePatterns"]
      138 GETIMPORT                        R6 K32 [print]
      140 LOADK                            R7 K33 ["----- All %* Tests (Jest 3) ------"]
      141 MOVE                             R9 R1
      142 NAMECALL                         R7 R7 K34 ["format"]
      144 CALL                             R7 2 1
      145 CALL                             R6 1 0
      146 GETTABLEKS                       R6 R0 K35 ["Jest"]
      148 GETTABLEKS                       R6 R6 K36 ["runCLI"]
      150 GETTABLEKS                       R7 R0 K1 ["rootDir"]
      152 MOVE                             R8 R2
      153 GETTABLEKS                       R9 R0 K37 ["projects"]
      155 CALL                             R6 3 1
      156 NAMECALL                         R6 R6 K38 ["awaitStatus"]
      158 CALL                             R6 1 2
      159 GETIMPORT                        R8 K32 [print]
      161 LOADK                            R9 K39 ["----------------------------------"]
      162 CALL                             R8 1 0
      163 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 DUPCLOSURE                       R1 K3 [PROTO_1]
        6 DUPCLOSURE                       R2 K4 [PROTO_6]
        7 CAPTURE                          VAL R0
        8 RETURN                           R2 1
