PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R6 K0 [""]
        1 NAMECALL                         R7 R0 K1 ["GetChildren"]
        3 CALL                             R7 1 1
        4 GETIMPORT                        R8 K4 [table.sort]
        6 MOVE                             R9 R7
        7 DUPCLOSURE                       R10 K5 [PROTO_0]
        8 CALL                             R8 2 0
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R9 R0 K6 ["ClassName"]
       12 CALL                             R8 1 1
       13 LENGTH                           R9 R8
       14 LOADN                            R10 0
       15 JUMPIFLT                         R10 R9 ; [+5]
       17 LENGTH                           R9 R7
       18 LOADN                            R10 0
       19 JUMPIFNOTLT                      R10 R9 ; [+125]
       21 MOVE                             R9 R6
       22 GETTABLEKS                       R10 R1 K7 ["spacingOuter"]
       24 CONCAT                           R6 R9 R10
       25 MOVE                             R10 R2
       26 GETTABLEKS                       R11 R1 K8 ["indent"]
       28 CONCAT                           R9 R10 R11
       29 GETIMPORT                        R10 K10 [ipairs]
       31 MOVE                             R11 R8
       32 CALL                             R10 1 3
       33 FORGPREP_INEXT                   R10
       34 MOVE                             R15 R5
       35 MOVE                             R16 R14
       36 MOVE                             R17 R1
       37 MOVE                             R18 R9
       38 MOVE                             R19 R3
       39 MOVE                             R20 R4
       40 CALL                             R15 5 1
       41 GETTABLE                         R16 R0 R14
       42 GETUPVAL                         R17 1
       43 MOVE                             R18 R16
       44 CALL                             R17 1 1
       45 JUMPIFNOTEQKS                    R17 K11 ["Instance"] ; [+10]
       47 MOVE                             R17 R5
       48 MOVE                             R18 R16
       49 MOVE                             R19 R1
       50 MOVE                             R20 R9
       51 LOADK                            R21 K12 [∞]
       52 MOVE                             R22 R4
       53 CALL                             R17 5 1
       54 MOVE                             R16 R17
       55 JUMP                             ; [+8]
       56 MOVE                             R17 R5
       57 MOVE                             R18 R16
       58 MOVE                             R19 R1
       59 MOVE                             R20 R9
       60 MOVE                             R21 R3
       61 MOVE                             R22 R4
       62 CALL                             R17 5 1
       63 MOVE                             R16 R17
       64 GETIMPORT                        R17 K15 [string.format]
       66 LOADK                            R18 K16 ["%s%s%s: %s"]
       67 MOVE                             R19 R6
       68 MOVE                             R20 R9
       69 MOVE                             R21 R15
       70 MOVE                             R22 R16
       71 CALL                             R17 5 1
       72 MOVE                             R6 R17
       73 LENGTH                           R17 R8
       74 JUMPIFLT                         R13 R17 ; [+5]
       76 LENGTH                           R17 R7
       77 LOADN                            R18 0
       78 JUMPIFNOTLT                      R18 R17 ; [+7]
       80 MOVE                             R17 R6
       81 LOADK                            R18 K17 [","]
       82 GETTABLEKS                       R19 R1 K18 ["spacingInner"]
       84 CONCAT                           R6 R17 R19
       85 JUMP                             ; [+6]
       86 GETTABLEKS                       R17 R1 K19 ["min"]
       88 JUMPIF                           R17 ; [+3]
       89 MOVE                             R17 R6
       90 LOADK                            R18 K17 [","]
       91 CONCAT                           R6 R17 R18
       92 FORGLOOP                         R10 2 [inext] ; [-59]
       94 GETIMPORT                        R10 K10 [ipairs]
       96 MOVE                             R11 R7
       97 CALL                             R10 1 3
       98 FORGPREP_INEXT                   R10
       99 MOVE                             R15 R5
      100 GETTABLEKS                       R16 R14 K20 ["Name"]
      102 MOVE                             R17 R1
      103 MOVE                             R18 R9
      104 MOVE                             R19 R3
      105 MOVE                             R20 R4
      106 CALL                             R15 5 1
      107 MOVE                             R16 R5
      108 MOVE                             R17 R14
      109 MOVE                             R18 R1
      110 MOVE                             R19 R9
      111 MOVE                             R20 R3
      112 MOVE                             R21 R4
      113 CALL                             R16 5 1
      114 GETIMPORT                        R17 K15 [string.format]
      116 LOADK                            R18 K16 ["%s%s%s: %s"]
      117 MOVE                             R19 R6
      118 MOVE                             R20 R9
      119 MOVE                             R21 R15
      120 MOVE                             R22 R16
      121 CALL                             R17 5 1
      122 MOVE                             R6 R17
      123 LENGTH                           R17 R7
      124 JUMPIFNOTLT                      R13 R17 ; [+7]
      126 MOVE                             R17 R6
      127 LOADK                            R18 K17 [","]
      128 GETTABLEKS                       R19 R1 K18 ["spacingInner"]
      130 CONCAT                           R6 R17 R19
      131 JUMP                             ; [+6]
      132 GETTABLEKS                       R17 R1 K19 ["min"]
      134 JUMPIF                           R17 ; [+3]
      135 MOVE                             R17 R6
      136 LOADK                            R18 K17 [","]
      137 CONCAT                           R6 R17 R18
      138 FORGLOOP                         R10 2 [inext] ; [-40]
      140 MOVE                             R10 R6
      141 GETTABLEKS                       R11 R1 K7 ["spacingOuter"]
      143 MOVE                             R12 R2
      144 CONCAT                           R6 R10 R12
      145 RETURN                           R6 1

PROTO_2:
        0 ADDK                             R3 R3 K0 [1]
        1 GETTABLEKS                       R6 R1 K1 ["maxDepth"]
        3 JUMPIFNOTLE                      R6 R3 ; [+10]
        5 GETIMPORT                        R6 K4 [string.format]
        7 LOADK                            R7 K5 ["\"%s\" [%s]"]
        8 GETTABLEKS                       R8 R0 K6 ["Name"]
       10 GETTABLEKS                       R9 R0 K7 ["ClassName"]
       12 CALL                             R6 3 -1
       13 RETURN                           R6 -1
       14 GETUPVAL                         R6 0
       15 MOVE                             R7 R0
       16 GETUPVAL                         R8 1
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+16]
       19 GETTABLEKS                       R7 R0 K7 ["ClassName"]
       21 LOADK                            R8 K8 [" {"]
       22 GETUPVAL                         R11 2
       23 GETTABLEKS                       R12 R0 K9 ["subset"]
       25 MOVE                             R13 R1
       26 MOVE                             R14 R2
       27 MOVE                             R15 R3
       28 MOVE                             R16 R4
       29 MOVE                             R17 R5
       30 CALL                             R11 6 1
       31 MOVE                             R9 R11
       32 LOADK                            R10 K10 ["}"]
       33 CONCAT                           R6 R7 R10
       34 RETURN                           R6 1
       35 GETTABLEKS                       R7 R0 K7 ["ClassName"]
       37 LOADK                            R8 K8 [" {"]
       38 GETUPVAL                         R11 3
       39 MOVE                             R12 R0
       40 MOVE                             R13 R1
       41 MOVE                             R14 R2
       42 MOVE                             R15 R3
       43 MOVE                             R16 R4
       44 MOVE                             R17 R5
       45 CALL                             R11 6 1
       46 MOVE                             R9 R11
       47 LOADK                            R10 K10 ["}"]
       48 CONCAT                           R6 R7 R10
       49 RETURN                           R6 1

PROTO_3:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFEQKS                       R2 K0 ["Instance"] ; [+5]
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 2
        9 CALL                             R1 2 1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["JestGetType"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["getType"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R1 K7 ["LuauPolyfill"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R4 K8 ["instanceof"]
       23 GETIMPORT                        R7 K4 [require]
       25 GETTABLEKS                       R8 R1 K9 ["RobloxShared"]
       27 CALL                             R7 1 1
       28 GETTABLEKS                       R6 R7 K10 ["RobloxInstance"]
       30 GETTABLEKS                       R7 R6 K11 ["getRobloxProperties"]
       32 GETTABLEKS                       R8 R6 K12 ["InstanceSubset"]
       34 GETIMPORT                        R10 K4 [require]
       36 GETTABLEKS                       R11 R0 K13 ["Collections"]
       38 CALL                             R10 1 1
       39 GETTABLEKS                       R9 R10 K14 ["printTableEntries"]
       41 GETIMPORT                        R10 K4 [require]
       43 GETTABLEKS                       R11 R0 K15 ["Types"]
       45 CALL                             R10 1 1
       46 DUPCLOSURE                       R11 K16 [PROTO_1]
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R3
       49 DUPCLOSURE                       R12 K17 [PROTO_2]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R11
       54 DUPCLOSURE                       R13 K18 [PROTO_3]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R8
       58 DUPTABLE                         R14 K21 [{"serialize", "test"}]
       59 SETTABLEKS                       R12 R14 K19 ["serialize"]
       61 SETTABLEKS                       R13 R14 K20 ["test"]
       63 RETURN                           R14 1
