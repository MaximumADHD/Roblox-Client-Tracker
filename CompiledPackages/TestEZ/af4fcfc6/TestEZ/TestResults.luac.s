PROTO_0:
        0 DUPTABLE                         R1 K6 [{"successCount", "failureCount", "skippedCount", "planNode", "children", "errors"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["successCount"]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["failureCount"]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["skippedCount"]
       10 SETTABLEKS                       R0 R1 K3 ["planNode"]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R1 K4 ["children"]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K5 ["errors"]
       20 GETUPVAL                         R4 0
       21 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       23 MOVE                             R3 R1
       24 GETIMPORT                        R2 K8 [setmetatable]
       26 CALL                             R2 2 0
       27 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"planNode", "children", "errors", "status"}]
        1 SETTABLEKS                       R0 R1 K0 ["planNode"]
        3 NEWTABLE                         R2 0 0
        5 SETTABLEKS                       R2 R1 K1 ["children"]
        7 NEWTABLE                         R2 0 0
        9 SETTABLEKS                       R2 R1 K2 ["errors"]
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K3 ["status"]
       14 RETURN                           R1 1

PROTO_2:
        0 OR                               R2 R2 R0
        1 GETIMPORT                        R3 K1 [ipairs]
        3 GETTABLEKS                       R4 R2 K2 ["children"]
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 MOVE                             R8 R1
        8 MOVE                             R9 R7
        9 CALL                             R8 1 0
       10 MOVE                             R10 R1
       11 MOVE                             R11 R7
       12 NAMECALL                         R8 R0 K3 ["visitAllNodes"]
       14 CALL                             R8 3 0
       15 FORGLOOP                         R3 2 [inext] ; [-9]
       17 RETURN                           R0 0

PROTO_3:
        0 OR                               R1 R1 R0
        1 ORK                              R2 R2 K0 [0]
        2 NEWTABLE                         R3 0 0
        4 GETIMPORT                        R4 K2 [ipairs]
        6 GETTABLEKS                       R5 R1 K3 ["children"]
        8 CALL                             R4 1 3
        9 FORGPREP_INEXT                   R4
       10 GETTABLEKS                       R10 R8 K4 ["planNode"]
       12 GETTABLEKS                       R9 R10 K5 ["type"]
       14 GETUPVAL                         R12 0
       15 GETTABLEKS                       R11 R12 K6 ["NodeType"]
       17 GETTABLEKS                       R10 R11 K7 ["It"]
       19 JUMPIFNOTEQ                      R9 R10 ; [+61]
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R12 R8 K9 ["status"]
       24 GETTABLE                         R10 R11 R12
       25 ORK                              R9 R10 K8 ["?"]
       26 LOADK                            R10 K10 ["%s[%s] %s"]
       27 LOADK                            R12 K11 [" "]
       28 LOADN                            R15 3
       29 MUL                              R14 R15 R2
       30 NAMECALL                         R12 R12 K12 ["rep"]
       32 CALL                             R12 2 1
       33 MOVE                             R13 R9
       34 GETTABLEKS                       R15 R8 K4 ["planNode"]
       36 GETTABLEKS                       R14 R15 K13 ["phrase"]
       38 NAMECALL                         R10 R10 K14 ["format"]
       40 CALL                             R10 4 1
       41 GETTABLEKS                       R11 R8 K15 ["messages"]
       43 JUMPIFNOT                        R11 ; [+29]
       44 GETTABLEKS                       R12 R8 K15 ["messages"]
       46 LENGTH                           R11 R12
       47 LOADN                            R12 0
       48 JUMPIFNOTLT                      R12 R11 ; [+24]
       50 MOVE                             R11 R10
       51 LOADK                            R12 K16 ["\n "]
       52 LOADK                            R15 K11 [" "]
       53 LOADN                            R18 3
       54 MUL                              R17 R18 R2
       55 NAMECALL                         R15 R15 K12 ["rep"]
       57 CALL                             R15 2 1
       58 MOVE                             R13 R15
       59 GETIMPORT                        R14 K19 [table.concat]
       61 GETTABLEKS                       R15 R8 K15 ["messages"]
       63 LOADK                            R17 K16 ["\n "]
       64 LOADK                            R18 K11 [" "]
       65 LOADN                            R21 3
       66 MUL                              R20 R21 R2
       67 NAMECALL                         R18 R18 K12 ["rep"]
       69 CALL                             R18 2 1
       70 CONCAT                           R16 R17 R18
       71 CALL                             R14 2 1
       72 CONCAT                           R10 R11 R14
       73 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       75 MOVE                             R12 R3
       76 MOVE                             R13 R10
       77 GETIMPORT                        R11 K21 [table.insert]
       79 CALL                             R11 2 0
       80 JUMP                             ; [+51]
       81 LOADK                            R9 K22 ["%s%s"]
       82 LOADK                            R11 K11 [" "]
       83 LOADN                            R14 3
       84 MUL                              R13 R14 R2
       85 NAMECALL                         R11 R11 K12 ["rep"]
       87 CALL                             R11 2 1
       88 GETTABLEKS                       R14 R8 K4 ["planNode"]
       90 GETTABLEKS                       R13 R14 K13 ["phrase"]
       92 ORK                              R12 R13 K23 [""]
       93 NAMECALL                         R9 R9 K14 ["format"]
       95 CALL                             R9 3 1
       96 GETTABLEKS                       R10 R8 K9 ["status"]
       98 JUMPIFNOT                        R10 ; [+8]
       99 MOVE                             R10 R9
      100 LOADK                            R11 K24 [" (%s)"]
      101 GETTABLEKS                       R13 R8 K9 ["status"]
      103 NAMECALL                         R11 R11 K14 ["format"]
      105 CALL                             R11 2 1
      106 CONCAT                           R9 R10 R11
      107 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      109 MOVE                             R11 R3
      110 MOVE                             R12 R9
      111 GETIMPORT                        R10 K21 [table.insert]
      113 CALL                             R10 2 0
      114 GETTABLEKS                       R11 R8 K3 ["children"]
      116 LENGTH                           R10 R11
      117 LOADN                            R11 0
      118 JUMPIFNOTLT                      R11 R10 ; [+13]
      120 MOVE                             R12 R8
      121 ADDK                             R13 R2 K25 [1]
      122 NAMECALL                         R10 R0 K26 ["visualize"]
      124 CALL                             R10 3 1
      125 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      127 MOVE                             R12 R3
      128 MOVE                             R13 R10
      129 GETIMPORT                        R11 K21 [table.insert]
      131 CALL                             R11 2 0
      132 FORGLOOP                         R4 2 [inext] ; [-123]
      134 GETIMPORT                        R4 K19 [table.concat]
      136 MOVE                             R5 R3
      137 LOADK                            R6 K27 ["\n"]
      138 CALL                             R4 2 -1
      139 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["TestEnum"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 4 0
       12 GETTABLEKS                       R3 R0 K6 ["TestStatus"]
       14 GETTABLEKS                       R2 R3 K7 ["Success"]
       16 LOADK                            R3 K8 ["+"]
       17 SETTABLE                         R3 R1 R2
       18 GETTABLEKS                       R3 R0 K6 ["TestStatus"]
       20 GETTABLEKS                       R2 R3 K9 ["Failure"]
       22 LOADK                            R3 K10 ["-"]
       23 SETTABLE                         R3 R1 R2
       24 GETTABLEKS                       R3 R0 K6 ["TestStatus"]
       26 GETTABLEKS                       R2 R3 K11 ["Skipped"]
       28 LOADK                            R3 K12 ["~"]
       29 SETTABLE                         R3 R1 R2
       30 NEWTABLE                         R2 8 0
       32 SETTABLEKS                       R2 R2 K13 ["__index"]
       34 DUPCLOSURE                       R3 K14 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R3 R2 K15 ["new"]
       38 DUPCLOSURE                       R3 K16 [PROTO_1]
       39 SETTABLEKS                       R3 R2 K17 ["createNode"]
       41 DUPCLOSURE                       R3 K18 [PROTO_2]
       42 SETTABLEKS                       R3 R2 K19 ["visitAllNodes"]
       44 DUPCLOSURE                       R3 K20 [PROTO_3]
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R3 R2 K21 ["visualize"]
       49 RETURN                           R2 1
