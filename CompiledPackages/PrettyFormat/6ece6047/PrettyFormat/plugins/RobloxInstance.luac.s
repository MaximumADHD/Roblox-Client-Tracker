PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R4 1
        3 GETTABLE                         R3 R4 R0
        4 JUMPIFNOTEQ                      R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R6 K0 [""]
        1 NAMECALL                         R7 R0 K1 ["GetChildren"]
        3 CALL                             R7 1 1
        4 GETIMPORT                        R8 K4 [table.sort]
        6 MOVE                             R9 R7
        7 DUPCLOSURE                       R10 K5 [PROTO_0]
        8 CALL                             R8 2 0
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R8 R9 K6 ["listProps"]
       12 MOVE                             R9 R0
       13 CALL                             R8 1 1
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R9 R10 K7 ["keys"]
       17 MOVE                             R10 R8
       18 CALL                             R9 1 1
       19 GETTABLEKS                       R10 R1 K8 ["printInstanceDefaults"]
       21 JUMPIF                           R10 ; [+15]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R10 R11 K9 ["listDefaultProps"]
       25 GETTABLEKS                       R11 R0 K10 ["ClassName"]
       27 CALL                             R10 1 1
       28 GETUPVAL                         R12 2
       29 GETTABLEKS                       R11 R12 K11 ["filter"]
       31 MOVE                             R12 R9
       32 NEWCLOSURE                       R13 P1
       33 CAPTURE                          VAL R8
       34 CAPTURE                          VAL R10
       35 CALL                             R11 2 1
       36 MOVE                             R9 R11
       37 GETIMPORT                        R10 K4 [table.sort]
       39 MOVE                             R11 R9
       40 CALL                             R10 1 0
       41 LENGTH                           R11 R9
       42 LOADN                            R12 0
       43 JUMPIFLT                         R12 R11 ; [+2]
       45 LOADB                            R10 0 +1
       46 LOADB                            R10 1
       47 LENGTH                           R12 R7
       48 LOADN                            R13 0
       49 JUMPIFLT                         R13 R12 ; [+2]
       51 LOADB                            R11 0 +1
       52 LOADB                            R11 1
       53 JUMPIF                           R10 ; [+1]
       54 JUMPIFNOT                        R11 ; [+120]
       55 MOVE                             R12 R6
       56 GETTABLEKS                       R13 R1 K12 ["spacingOuter"]
       58 CONCAT                           R6 R12 R13
       59 MOVE                             R13 R2
       60 GETTABLEKS                       R14 R1 K13 ["indent"]
       62 CONCAT                           R12 R13 R14
       63 GETIMPORT                        R13 K15 [ipairs]
       65 MOVE                             R14 R9
       66 CALL                             R13 1 3
       67 FORGPREP_INEXT                   R13
       68 GETTABLE                         R18 R8 R17
       69 GETUPVAL                         R20 1
       70 GETTABLEKS                       R19 R20 K16 ["None"]
       72 JUMPIFNOTEQ                      R18 R19 ; [+2]
       74 LOADNIL                          R18
       75 GETUPVAL                         R20 3
       76 MOVE                             R21 R18
       77 CALL                             R20 1 1
       78 JUMPIFNOTEQKS                    R20 K17 ["Instance"] ; [+3]
       80 LOADK                            R19 K18 [∞]
       81 JUMP                             ; [+1]
       82 MOVE                             R19 R3
       83 MOVE                             R20 R5
       84 MOVE                             R21 R17
       85 MOVE                             R22 R1
       86 MOVE                             R23 R12
       87 MOVE                             R24 R3
       88 MOVE                             R25 R4
       89 CALL                             R20 5 1
       90 MOVE                             R21 R5
       91 MOVE                             R22 R18
       92 MOVE                             R23 R1
       93 MOVE                             R24 R12
       94 MOVE                             R25 R19
       95 MOVE                             R26 R4
       96 CALL                             R21 5 1
       97 GETIMPORT                        R22 K21 [string.format]
       99 LOADK                            R23 K22 ["%s%s%s: %s"]
      100 MOVE                             R24 R6
      101 MOVE                             R25 R12
      102 MOVE                             R26 R20
      103 MOVE                             R27 R21
      104 CALL                             R22 5 1
      105 MOVE                             R6 R22
      106 LENGTH                           R22 R9
      107 JUMPIFNOTEQ                      R16 R22 ; [+2]
      109 JUMPIFNOT                        R11 ; [+6]
      110 MOVE                             R22 R6
      111 LOADK                            R23 K23 [","]
      112 GETTABLEKS                       R24 R1 K24 ["spacingInner"]
      114 CONCAT                           R6 R22 R24
      115 JUMP                             ; [+6]
      116 GETTABLEKS                       R22 R1 K25 ["min"]
      118 JUMPIF                           R22 ; [+3]
      119 MOVE                             R22 R6
      120 LOADK                            R23 K23 [","]
      121 CONCAT                           R6 R22 R23
      122 FORGLOOP                         R13 2 [inext] ; [-55]
      124 GETIMPORT                        R13 K15 [ipairs]
      126 MOVE                             R14 R7
      127 CALL                             R13 1 3
      128 FORGPREP_INEXT                   R13
      129 MOVE                             R18 R5
      130 GETTABLEKS                       R19 R17 K26 ["Name"]
      132 MOVE                             R20 R1
      133 MOVE                             R21 R12
      134 MOVE                             R22 R3
      135 MOVE                             R23 R4
      136 CALL                             R18 5 1
      137 MOVE                             R19 R5
      138 MOVE                             R20 R17
      139 MOVE                             R21 R1
      140 MOVE                             R22 R12
      141 MOVE                             R23 R3
      142 MOVE                             R24 R4
      143 CALL                             R19 5 1
      144 GETIMPORT                        R20 K21 [string.format]
      146 LOADK                            R21 K22 ["%s%s%s: %s"]
      147 MOVE                             R22 R6
      148 MOVE                             R23 R12
      149 MOVE                             R24 R18
      150 MOVE                             R25 R19
      151 CALL                             R20 5 1
      152 MOVE                             R6 R20
      153 LENGTH                           R20 R7
      154 JUMPIFEQ                         R16 R20 ; [+7]
      156 MOVE                             R20 R6
      157 LOADK                            R21 K23 [","]
      158 GETTABLEKS                       R22 R1 K24 ["spacingInner"]
      160 CONCAT                           R6 R20 R22
      161 JUMP                             ; [+6]
      162 GETTABLEKS                       R20 R1 K25 ["min"]
      164 JUMPIF                           R20 ; [+3]
      165 MOVE                             R20 R6
      166 LOADK                            R21 K23 [","]
      167 CONCAT                           R6 R20 R21
      168 FORGLOOP                         R13 2 [inext] ; [-40]
      170 MOVE                             R13 R6
      171 GETTABLEKS                       R14 R1 K12 ["spacingOuter"]
      173 MOVE                             R15 R2
      174 CONCAT                           R6 R13 R15
      175 RETURN                           R6 1

PROTO_3:
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

PROTO_4:
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
       21 GETTABLEKS                       R5 R4 K8 ["Object"]
       23 GETTABLEKS                       R6 R4 K9 ["Array"]
       25 GETTABLEKS                       R7 R4 K10 ["instanceof"]
       27 GETIMPORT                        R9 K4 [require]
       29 GETTABLEKS                       R10 R1 K11 ["RobloxShared"]
       31 CALL                             R9 1 1
       32 GETTABLEKS                       R8 R9 K12 ["RobloxInstance"]
       34 GETTABLEKS                       R9 R8 K13 ["InstanceSubset"]
       36 GETIMPORT                        R11 K4 [require]
       38 GETTABLEKS                       R12 R0 K14 ["Collections"]
       40 CALL                             R11 1 1
       41 GETTABLEKS                       R10 R11 K15 ["printTableEntries"]
       43 GETIMPORT                        R11 K4 [require]
       45 GETTABLEKS                       R12 R0 K16 ["Types"]
       47 CALL                             R11 1 1
       48 DUPCLOSURE                       R12 K17 [PROTO_2]
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R3
       53 DUPCLOSURE                       R13 K18 [PROTO_3]
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R10
       57 CAPTURE                          VAL R12
       58 DUPCLOSURE                       R14 K19 [PROTO_4]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R9
       62 DUPTABLE                         R15 K22 [{"serialize", "test"}]
       63 SETTABLEKS                       R13 R15 K20 ["serialize"]
       65 SETTABLEKS                       R14 R15 K21 ["test"]
       67 RETURN                           R15 1
