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
       20 JUMPIFNOT                        R4 ; [+42]
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
       47 DUPTABLE                         R9 K14 [{"method", "path", "pathStringForSorting"}]
       48 SETTABLEKS                       R4 R9 K11 ["method"]
       50 SETTABLEKS                       R5 R9 K12 ["path"]
       52 NAMECALL                         R10 R6 K15 ["lower"]
       54 CALL                             R10 1 1
       55 SETTABLEKS                       R10 R9 K13 ["pathStringForSorting"]
       57 FASTCALL2                        TABLE_INSERT R2 R9 ; [+4]
       59 MOVE                             R8 R2
       60 GETIMPORT                        R7 K18 [table.insert]
       62 CALL                             R7 2 0
       63 RETURN                           R0 0

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
       12 GETTABLEKS                       R5 R3 K2 ["testNamePattern"]
       14 GETTABLEKS                       R6 R3 K3 ["extraEnvironment"]
       16 JUMPIF                           R6 ; [+2]
       17 NEWTABLE                         R6 0 0
       19 FASTCALL1                        TYPE R1 ; [+3]
       20 MOVE                             R8 R1
       21 GETIMPORT                        R7 K5 [type]
       23 CALL                             R7 1 1
       24 JUMPIFEQKS                       R7 K6 ["table"] ; [+14]
       26 GETIMPORT                        R7 K8 [error]
       28 LOADK                            R8 K9 ["Bad argument #1 to TestBootstrap:run. Expected table, got %s"]
       29 FASTCALL1                        TYPEOF R1 ; [+3]
       30 MOVE                             R11 R1
       31 GETIMPORT                        R10 K11 [typeof]
       33 CALL                             R10 1 1
       34 NAMECALL                         R8 R8 K12 ["format"]
       36 CALL                             R8 2 1
       37 LOADN                            R9 2
       38 CALL                             R7 2 0
       39 GETIMPORT                        R7 K14 [tick]
       41 CALL                             R7 0 1
       42 NEWTABLE                         R8 0 0
       44 GETIMPORT                        R9 K16 [ipairs]
       46 MOVE                             R10 R1
       47 CALL                             R9 1 3
       48 FORGPREP_INEXT                   R9
       49 MOVE                             R16 R13
       50 NAMECALL                         R14 R0 K17 ["getModules"]
       52 CALL                             R14 2 1
       53 GETIMPORT                        R15 K16 [ipairs]
       55 MOVE                             R16 R14
       56 CALL                             R15 1 3
       57 FORGPREP_INEXT                   R15
       58 FASTCALL2                        TABLE_INSERT R8 R19 ; [+5]
       60 MOVE                             R21 R8
       61 MOVE                             R22 R19
       62 GETIMPORT                        R20 K19 [table.insert]
       64 CALL                             R20 2 0
       65 FORGLOOP                         R15 2 [inext] ; [-8]
       67 FORGLOOP                         R9 2 [inext] ; [-19]
       69 GETIMPORT                        R9 K14 [tick]
       71 CALL                             R9 0 1
       72 GETUPVAL                         R11 1
       73 GETTABLEKS                       R10 R11 K20 ["createPlan"]
       75 MOVE                             R11 R8
       76 MOVE                             R12 R5
       77 MOVE                             R13 R6
       78 CALL                             R10 3 1
       79 GETIMPORT                        R11 K14 [tick]
       81 CALL                             R11 0 1
       82 GETUPVAL                         R13 2
       83 GETTABLEKS                       R12 R13 K21 ["runPlan"]
       85 MOVE                             R13 R10
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K14 [tick]
       89 CALL                             R13 0 1
       90 GETTABLEKS                       R14 R2 K22 ["report"]
       92 MOVE                             R15 R12
       93 CALL                             R14 1 0
       94 GETIMPORT                        R14 K14 [tick]
       96 CALL                             R14 0 1
       97 JUMPIFNOT                        R4 ; [+32]
       98 NEWTABLE                         R15 0 4
      100 LOADK                            R16 K23 ["Took %f seconds to locate test modules"]
      101 SUB                              R18 R9 R7
      102 NAMECALL                         R16 R16 K12 ["format"]
      104 CALL                             R16 2 1
      105 LOADK                            R17 K24 ["Took %f seconds to create test plan"]
      106 SUB                              R19 R11 R9
      107 NAMECALL                         R17 R17 K12 ["format"]
      109 CALL                             R17 2 1
      110 LOADK                            R18 K25 ["Took %f seconds to run tests"]
      111 SUB                              R20 R13 R11
      112 NAMECALL                         R18 R18 K12 ["format"]
      114 CALL                             R18 2 1
      115 LOADK                            R19 K26 ["Took %f seconds to report tests"]
      116 SUB                              R21 R14 R13
      117 NAMECALL                         R19 R19 K12 ["format"]
      119 CALL                             R19 2 -1
      120 SETLIST                          R15 R16 -1 [1]
      122 GETIMPORT                        R16 K28 [print]
      124 GETIMPORT                        R17 K30 [table.concat]
      126 MOVE                             R18 R15
      127 LOADK                            R19 K31 ["\n"]
      128 CALL                             R17 2 -1
      129 CALL                             R16 -1 0
      130 RETURN                           R12 1

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
