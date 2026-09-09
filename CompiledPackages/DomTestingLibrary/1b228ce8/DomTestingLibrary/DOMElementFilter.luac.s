PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R7 R0
        2 GETIMPORT                        R6 K1 [type]
        4 CALL                             R6 1 1
        5 MOVE                             R4 R6
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R6 R0
        8 GETIMPORT                        R5 K3 [tostring]
       10 CALL                             R5 1 1
       11 CONCAT                           R3 R4 R5
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R8 R1
       14 GETIMPORT                        R7 K1 [type]
       16 CALL                             R7 1 1
       17 MOVE                             R5 R7
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R7 R1
       20 GETIMPORT                        R6 K3 [tostring]
       22 CALL                             R6 1 1
       23 CONCAT                           R4 R5 R6
       24 JUMPIFNOTLT                      R3 R4 ; [+3]
       26 LOADN                            R2 -1
       27 RETURN                           R2 1
       28 FASTCALL1                        TYPE R0 ; [+3]
       29 MOVE                             R7 R0
       30 GETIMPORT                        R6 K1 [type]
       32 CALL                             R6 1 1
       33 MOVE                             R4 R6
       34 FASTCALL1                        TOSTRING R0 ; [+3]
       35 MOVE                             R6 R0
       36 GETIMPORT                        R5 K3 [tostring]
       38 CALL                             R5 1 1
       39 CONCAT                           R3 R4 R5
       40 FASTCALL1                        TYPE R1 ; [+3]
       41 MOVE                             R8 R1
       42 GETIMPORT                        R7 K1 [type]
       44 CALL                             R7 1 1
       45 MOVE                             R5 R7
       46 FASTCALL1                        TOSTRING R1 ; [+3]
       47 MOVE                             R7 R1
       48 GETIMPORT                        R6 K3 [tostring]
       50 CALL                             R6 1 1
       51 CONCAT                           R4 R5 R6
       52 JUMPIFNOTEQ                      R3 R4 ; [+3]
       54 LOADN                            R2 0
       55 RETURN                           R2 1
       56 LOADN                            R2 1
       57 RETURN                           R2 1

PROTO_1:
        0 ORK                              R7 R6 K0 [": "]
        1 LOADK                            R8 K1 [""]
        2 GETUPVAL                         R9 0
        3 GETTABLEKS                       R9 R9 K2 ["sort"]
        5 GETUPVAL                         R10 1
        6 GETTABLEKS                       R10 R10 K3 ["keys"]
        8 MOVE                             R11 R0
        9 CALL                             R10 1 1
       10 GETTABLEKS                       R12 R1 K4 ["compareKeys"]
       12 JUMPIFEQKNIL                     R12 ; [+11]
       14 GETTABLEKS                       R12 R1 K4 ["compareKeys"]
       16 GETUPVAL                         R13 1
       17 GETTABLEKS                       R13 R13 K5 ["None"]
       19 JUMPIFEQ                         R12 R13 ; [+4]
       21 GETTABLEKS                       R11 R1 K4 ["compareKeys"]
       23 JUMP                             ; [+1]
       24 DUPCLOSURE                       R11 K6 [PROTO_0]
       25 CALL                             R9 2 1
       26 LENGTH                           R10 R9
       27 LOADN                            R11 0
       28 JUMPIFNOTLT                      R11 R10 ; [+56]
       30 MOVE                             R10 R8
       31 GETTABLEKS                       R11 R1 K7 ["spacingOuter"]
       33 CONCAT                           R8 R10 R11
       34 MOVE                             R11 R2
       35 GETTABLEKS                       R12 R1 K8 ["indent"]
       37 CONCAT                           R10 R11 R12
       38 LOADN                            R13 1
       39 LENGTH                           R11 R9
       40 LOADN                            R12 1
       41 FORNPREP                         R11
       42 GETTABLE                         R14 R9 R13
       43 GETTABLE                         R15 R0 R14
       44 MOVE                             R16 R5
       45 MOVE                             R17 R14
       46 MOVE                             R18 R1
       47 MOVE                             R19 R10
       48 MOVE                             R20 R3
       49 MOVE                             R21 R4
       50 CALL                             R16 5 1
       51 MOVE                             R17 R5
       52 MOVE                             R18 R15
       53 MOVE                             R19 R1
       54 MOVE                             R20 R10
       55 MOVE                             R21 R3
       56 MOVE                             R22 R4
       57 CALL                             R17 5 1
       58 MOVE                             R18 R8
       59 MOVE                             R19 R10
       60 MOVE                             R20 R16
       61 MOVE                             R21 R7
       62 MOVE                             R22 R17
       63 CONCAT                           R8 R18 R22
       64 LENGTH                           R18 R9
       65 JUMPIFNOTLT                      R13 R18 ; [+7]
       67 MOVE                             R18 R8
       68 LOADK                            R19 K9 [","]
       69 GETTABLEKS                       R20 R1 K10 ["spacingInner"]
       71 CONCAT                           R8 R18 R20
       72 JUMP                             ; [+6]
       73 GETTABLEKS                       R18 R1 K11 ["min"]
       75 JUMPIF                           R18 ; [+3]
       76 MOVE                             R18 R8
       77 LOADK                            R19 K9 [","]
       78 CONCAT                           R8 R18 R19
       79 FORNLOOP                         R11
       80 MOVE                             R11 R8
       81 GETTABLEKS                       R12 R1 K7 ["spacingOuter"]
       83 MOVE                             R13 R2
       84 CONCAT                           R8 R11 R13
       85 RETURN                           R8 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R7 K0 [""]
        1 GETUPVAL                         R8 0
        2 GETTABLEKS                       R8 R8 K1 ["filter"]
        4 NAMECALL                         R9 R0 K2 ["GetChildren"]
        6 CALL                             R9 1 1
        7 MOVE                             R10 R6
        8 CALL                             R8 2 1
        9 GETIMPORT                        R9 K5 [table.sort]
       11 MOVE                             R10 R8
       12 DUPCLOSURE                       R11 K6 [PROTO_2]
       13 CALL                             R9 2 0
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R9 R9 K7 ["listProps"]
       17 MOVE                             R10 R0
       18 CALL                             R9 1 0
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R9 R9 K7 ["listProps"]
       22 MOVE                             R10 R0
       23 CALL                             R9 1 1
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R10 R10 K8 ["keys"]
       27 MOVE                             R11 R9
       28 CALL                             R10 1 1
       29 GETIMPORT                        R11 K5 [table.sort]
       31 MOVE                             R12 R10
       32 CALL                             R11 1 0
       33 LENGTH                           R12 R10
       34 LOADN                            R13 0
       35 JUMPIFLT                         R13 R12 ; [+2]
       37 LOADB                            R11 0 +1
       38 LOADB                            R11 1
       39 LENGTH                           R13 R8
       40 LOADN                            R14 0
       41 JUMPIFLT                         R14 R13 ; [+2]
       43 LOADB                            R12 0 +1
       44 LOADB                            R12 1
       45 JUMPIF                           R11 ; [+1]
       46 JUMPIFNOT                        R12 ; [+120]
       47 MOVE                             R13 R7
       48 GETTABLEKS                       R14 R1 K9 ["spacingOuter"]
       50 CONCAT                           R7 R13 R14
       51 MOVE                             R14 R2
       52 GETTABLEKS                       R15 R1 K10 ["indent"]
       54 CONCAT                           R13 R14 R15
       55 GETIMPORT                        R14 K12 [ipairs]
       57 MOVE                             R15 R10
       58 CALL                             R14 1 3
       59 FORGPREP_INEXT                   R14
       60 GETTABLE                         R19 R9 R18
       61 GETUPVAL                         R20 2
       62 GETTABLEKS                       R20 R20 K13 ["None"]
       64 JUMPIFNOTEQ                      R19 R20 ; [+2]
       66 LOADNIL                          R19
       67 GETUPVAL                         R21 3
       68 MOVE                             R22 R19
       69 CALL                             R21 1 1
       70 JUMPIFNOTEQKS                    R21 K14 ["Instance"] ; [+3]
       72 LOADK                            R20 K15 [∞]
       73 JUMP                             ; [+1]
       74 MOVE                             R20 R3
       75 MOVE                             R21 R5
       76 MOVE                             R22 R18
       77 MOVE                             R23 R1
       78 MOVE                             R24 R13
       79 MOVE                             R25 R3
       80 MOVE                             R26 R4
       81 CALL                             R21 5 1
       82 MOVE                             R22 R5
       83 MOVE                             R23 R19
       84 MOVE                             R24 R1
       85 MOVE                             R25 R13
       86 MOVE                             R26 R20
       87 MOVE                             R27 R4
       88 CALL                             R22 5 1
       89 GETIMPORT                        R23 K18 [string.format]
       91 LOADK                            R24 K19 ["%s%s%s: %s"]
       92 MOVE                             R25 R7
       93 MOVE                             R26 R13
       94 MOVE                             R27 R21
       95 MOVE                             R28 R22
       96 CALL                             R23 5 1
       97 MOVE                             R7 R23
       98 LENGTH                           R23 R10
       99 JUMPIFNOTEQ                      R17 R23 ; [+2]
      101 JUMPIFNOT                        R12 ; [+6]
      102 MOVE                             R23 R7
      103 LOADK                            R24 K20 [","]
      104 GETTABLEKS                       R25 R1 K21 ["spacingInner"]
      106 CONCAT                           R7 R23 R25
      107 JUMP                             ; [+6]
      108 GETTABLEKS                       R23 R1 K22 ["min"]
      110 JUMPIF                           R23 ; [+3]
      111 MOVE                             R23 R7
      112 LOADK                            R24 K20 [","]
      113 CONCAT                           R7 R23 R24
      114 FORGLOOP                         R14 2 [inext] ; [-55]
      116 GETIMPORT                        R14 K12 [ipairs]
      118 MOVE                             R15 R8
      119 CALL                             R14 1 3
      120 FORGPREP_INEXT                   R14
      121 MOVE                             R19 R5
      122 GETTABLEKS                       R20 R18 K23 ["Name"]
      124 MOVE                             R21 R1
      125 MOVE                             R22 R13
      126 MOVE                             R23 R3
      127 MOVE                             R24 R4
      128 CALL                             R19 5 1
      129 MOVE                             R20 R5
      130 MOVE                             R21 R18
      131 MOVE                             R22 R1
      132 MOVE                             R23 R13
      133 MOVE                             R24 R3
      134 MOVE                             R25 R4
      135 CALL                             R20 5 1
      136 GETIMPORT                        R21 K18 [string.format]
      138 LOADK                            R22 K19 ["%s%s%s: %s"]
      139 MOVE                             R23 R7
      140 MOVE                             R24 R13
      141 MOVE                             R25 R19
      142 MOVE                             R26 R20
      143 CALL                             R21 5 1
      144 MOVE                             R7 R21
      145 LENGTH                           R21 R8
      146 JUMPIFEQ                         R17 R21 ; [+7]
      148 MOVE                             R21 R7
      149 LOADK                            R22 K20 [","]
      150 GETTABLEKS                       R23 R1 K21 ["spacingInner"]
      152 CONCAT                           R7 R21 R23
      153 JUMP                             ; [+6]
      154 GETTABLEKS                       R21 R1 K22 ["min"]
      156 JUMPIF                           R21 ; [+3]
      157 MOVE                             R21 R7
      158 LOADK                            R22 K20 [","]
      159 CONCAT                           R7 R21 R22
      160 FORGLOOP                         R14 2 [inext] ; [-40]
      162 MOVE                             R14 R7
      163 GETTABLEKS                       R15 R1 K9 ["spacingOuter"]
      165 MOVE                             R16 R2
      166 CONCAT                           R7 R14 R16
      167 RETURN                           R7 1

PROTO_4:
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
       45 GETUPVAL                         R18 4
       46 CALL                             R11 7 1
       47 MOVE                             R9 R11
       48 LOADK                            R10 K10 ["}"]
       49 CONCAT                           R6 R7 R10
       50 RETURN                           R6 1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"test", "serialize"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["test"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R1 K1 ["serialize"]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Object"]
       16 GETTABLEKS                       R4 R1 K8 ["instanceof"]
       18 NEWTABLE                         R5 1 0
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R0 K9 ["JestGetType"]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R7 R6 K10 ["getType"]
       27 GETIMPORT                        R8 K4 [require]
       29 GETTABLEKS                       R9 R0 K11 ["RobloxShared"]
       31 CALL                             R8 1 1
       32 GETTABLEKS                       R8 R8 K12 ["RobloxInstance"]
       34 GETTABLEKS                       R9 R8 K13 ["InstanceSubset"]
       36 DUPCLOSURE                       R10 K14 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 DUPCLOSURE                       R11 K15 [PROTO_3]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R7
       44 DUPCLOSURE                       R12 K16 [PROTO_5]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R9
       47 CAPTURE                          VAL R10
       48 CAPTURE                          VAL R11
       49 DUPCLOSURE                       R13 K17 [PROTO_6]
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R9
       53 DUPCLOSURE                       R14 K18 [PROTO_7]
       54 CAPTURE                          VAL R13
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R11
       59 SETTABLEKS                       R14 R5 K19 ["default"]
       61 RETURN                           R5 1
