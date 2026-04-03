PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 3
        6 GETUPVAL                         R6 4
        7 GETUPVAL                         R7 5
        8 CALL                             R2 5 1
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K1 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFEQKS                       R3 K2 ["string"] ; [+22]
       16 GETIMPORT                        R3 K4 [string.find]
       18 MOVE                             R4 R2
       19 LOADK                            R5 K5 ["\n"]
       20 CALL                             R3 2 1
       21 JUMPIFEQKNIL                     R3 ; [+11]
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R3 R8 K6 ["spacingOuter"]
       26 GETUPVAL                         R4 3
       27 MOVE                             R5 R2
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R6 R8 K6 ["spacingOuter"]
       31 GETUPVAL                         R7 6
       32 CONCAT                           R2 R3 R7
       33 LOADK                            R3 K7 ["{"]
       34 MOVE                             R4 R2
       35 LOADK                            R5 K8 ["}"]
       36 CONCAT                           R2 R3 R5
       37 FASTCALL1                        TYPEOF R0 ; [+3]
       38 MOVE                             R5 R0
       39 GETIMPORT                        R4 K1 [typeof]
       41 CALL                             R4 1 1
       42 JUMPIFNOTEQKS                    R4 K9 ["table"] ; [+15]
       44 GETTABLEKS                       R4 R0 K10 ["name"]
       46 JUMPIFNOT                        R4 ; [+3]
       47 GETTABLEKS                       R3 R0 K10 ["name"]
       49 JUMP                             ; [+9]
       50 GETUPVAL                         R3 1
       51 MOVE                             R4 R0
       52 GETUPVAL                         R5 2
       53 GETUPVAL                         R6 3
       54 GETUPVAL                         R7 4
       55 GETUPVAL                         R8 5
       56 CALL                             R3 5 1
       57 JUMP                             ; [+1]
       58 MOVE                             R3 R0
       59 GETUPVAL                         R16 2
       60 GETTABLEKS                       R5 R16 K11 ["spacingInner"]
       62 GETUPVAL                         R6 6
       63 GETUPVAL                         R17 7
       64 GETTABLEKS                       R16 R17 K12 ["prop"]
       66 GETTABLEKS                       R7 R16 K13 ["open"]
       68 GETUPVAL                         R17 7
       69 GETTABLEKS                       R16 R17 K12 ["prop"]
       71 GETTABLEKS                       R8 R16 K13 ["open"]
       73 MOVE                             R9 R3
       74 GETUPVAL                         R17 7
       75 GETTABLEKS                       R16 R17 K12 ["prop"]
       77 GETTABLEKS                       R10 R16 K14 ["close"]
       79 LOADK                            R11 K15 ["="]
       80 GETUPVAL                         R17 7
       81 GETTABLEKS                       R16 R17 K16 ["value"]
       83 GETTABLEKS                       R12 R16 K13 ["open"]
       85 MOVE                             R13 R2
       86 GETUPVAL                         R17 7
       87 GETTABLEKS                       R16 R17 K16 ["value"]
       89 GETTABLEKS                       R14 R16 K14 ["close"]
       91 GETUPVAL                         R17 7
       92 GETTABLEKS                       R16 R17 K16 ["value"]
       94 GETTABLEKS                       R15 R16 K14 ["close"]
       96 CONCAT                           R4 R5 R15
       97 RETURN                           R4 1

PROTO_1:
        0 MOVE                             R8 R3
        1 GETTABLEKS                       R9 R2 K0 ["indent"]
        3 CONCAT                           R7 R8 R9
        4 GETTABLEKS                       R8 R2 K1 ["colors"]
        6 JUMPIF                           R8 ; [+1]
        7 GETUPVAL                         R8 0
        8 GETUPVAL                         R10 1
        9 GETTABLEKS                       R9 R10 K2 ["join"]
       11 GETUPVAL                         R11 1
       12 GETTABLEKS                       R10 R11 K3 ["map"]
       14 MOVE                             R11 R0
       15 NEWCLOSURE                       R12 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R6
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R7
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R5
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R8
       24 CALL                             R10 2 1
       25 LOADK                            R11 K4 [""]
       26 CALL                             R9 2 -1
       27 RETURN                           R9 -1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R2 R5 K0 ["spacingOuter"]
        3 GETUPVAL                         R3 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R6 R0
        6 GETIMPORT                        R5 K2 [typeof]
        8 CALL                             R5 1 1
        9 JUMPIFNOTEQKS                    R5 K3 ["string"] ; [+6]
       11 GETUPVAL                         R4 2
       12 MOVE                             R5 R0
       13 GETUPVAL                         R6 0
       14 CALL                             R4 2 1
       15 JUMP                             ; [+7]
       16 GETUPVAL                         R4 3
       17 MOVE                             R5 R0
       18 GETUPVAL                         R6 0
       19 GETUPVAL                         R7 1
       20 GETUPVAL                         R8 4
       21 GETUPVAL                         R9 5
       22 CALL                             R4 5 1
       23 CONCAT                           R1 R2 R4
       24 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["join"]
        3 GETUPVAL                         R8 0
        4 GETTABLEKS                       R7 R8 K1 ["map"]
        6 MOVE                             R8 R0
        7 NEWCLOSURE                       R9 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R5
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R4
       14 CALL                             R7 2 1
       15 LOADK                            R8 K2 [""]
       16 CALL                             R6 2 -1
       17 RETURN                           R6 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["colors"]
        2 JUMPIF                           R2 ; [+1]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R2 K1 ["content"]
        6 GETTABLEKS                       R5 R3 K2 ["open"]
        8 GETUPVAL                         R8 1
        9 MOVE                             R9 R0
       10 CALL                             R8 1 1
       11 MOVE                             R6 R8
       12 GETTABLEKS                       R7 R3 K3 ["close"]
       14 CONCAT                           R4 R5 R7
       15 RETURN                           R4 1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["colors"]
        2 JUMPIF                           R2 ; [+1]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R2 K1 ["comment"]
        6 GETTABLEKS                       R5 R3 K2 ["open"]
        8 LOADK                            R6 K3 ["<!--"]
        9 GETUPVAL                         R10 1
       10 MOVE                             R11 R0
       11 CALL                             R10 1 1
       12 MOVE                             R7 R10
       13 LOADK                            R8 K4 ["-->"]
       14 GETTABLEKS                       R9 R3 K5 ["close"]
       16 CONCAT                           R4 R5 R9
       17 RETURN                           R4 1

PROTO_6:
        0 GETTABLEKS                       R5 R3 K0 ["colors"]
        2 JUMPIF                           R5 ; [+1]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R6 R5 K1 ["tag"]
        6 GETTABLEKS                       R8 R6 K2 ["open"]
        8 LOADK                            R9 K3 ["<"]
        9 MOVE                             R10 R0
       10 GETUPVAL                         R16 1
       11 GETTABLEKS                       R15 R16 K4 ["toJSBoolean"]
       13 MOVE                             R16 R1
       14 CALL                             R15 1 1
       15 JUMPIFNOT                        R15 ; [+10]
       16 GETTABLEKS                       R15 R6 K5 ["close"]
       18 MOVE                             R16 R1
       19 GETTABLEKS                       R17 R3 K6 ["spacingOuter"]
       21 MOVE                             R18 R4
       22 GETTABLEKS                       R19 R6 K2 ["open"]
       24 CONCAT                           R11 R15 R19
       25 JUMP                             ; [+1]
       26 MOVE                             R11 R1
       27 GETUPVAL                         R16 1
       28 GETTABLEKS                       R15 R16 K4 ["toJSBoolean"]
       30 MOVE                             R16 R2
       31 CALL                             R15 1 1
       32 JUMPIFNOT                        R15 ; [+13]
       33 LOADK                            R15 K7 [">"]
       34 GETTABLEKS                       R16 R6 K5 ["close"]
       36 MOVE                             R17 R2
       37 GETTABLEKS                       R18 R3 K6 ["spacingOuter"]
       39 MOVE                             R19 R4
       40 GETTABLEKS                       R20 R6 K2 ["open"]
       42 LOADK                            R21 K8 ["</"]
       43 MOVE                             R22 R0
       44 CONCAT                           R12 R15 R22
       45 JUMP                             ; [+18]
       46 GETUPVAL                         R18 1
       47 GETTABLEKS                       R17 R18 K4 ["toJSBoolean"]
       49 MOVE                             R18 R1
       50 CALL                             R17 1 1
       51 JUMPIFNOT                        R17 ; [+9]
       52 GETUPVAL                         R18 1
       53 GETTABLEKS                       R17 R18 K4 ["toJSBoolean"]
       55 GETTABLEKS                       R18 R3 K9 ["min"]
       57 CALL                             R17 1 1
       58 JUMPIF                           R17 ; [+2]
       59 LOADK                            R15 K10 [""]
       60 JUMP                             ; [+1]
       61 LOADK                            R15 K11 [" "]
       62 LOADK                            R16 K12 ["/"]
       63 CONCAT                           R12 R15 R16
       64 LOADK                            R13 K7 [">"]
       65 GETTABLEKS                       R14 R6 K5 ["close"]
       67 CONCAT                           R7 R8 R14
       68 RETURN                           R7 1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["colors"]
        2 JUMPIF                           R2 ; [+1]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R2 K1 ["tag"]
        6 GETTABLEKS                       R5 R3 K2 ["open"]
        8 LOADK                            R6 K3 ["<"]
        9 MOVE                             R7 R0
       10 GETTABLEKS                       R8 R3 K4 ["close"]
       12 LOADK                            R9 K5 [" …"]
       13 GETTABLEKS                       R10 R3 K2 ["open"]
       15 LOADK                            R11 K6 [" />"]
       16 GETTABLEKS                       R12 R3 K4 ["close"]
       18 CONCAT                           R4 R5 R12
       19 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["Array"]
       18 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       20 NEWTABLE                         R5 8 0
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 LOADNIL                          R9
       26 LOADNIL                          R10
       27 LOADNIL                          R11
       28 GETIMPORT                        R12 K4 [require]
       30 GETIMPORT                        R17 K1 [script]
       32 GETTABLEKS                       R16 R17 K2 ["Parent"]
       34 GETTABLEKS                       R15 R16 K2 ["Parent"]
       36 GETTABLEKS                       R14 R15 K2 ["Parent"]
       38 GETTABLEKS                       R13 R14 K8 ["Types"]
       40 CALL                             R12 1 1
       41 GETIMPORT                        R14 K4 [require]
       43 GETIMPORT                        R17 K1 [script]
       45 GETTABLEKS                       R16 R17 K2 ["Parent"]
       47 GETTABLEKS                       R15 R16 K9 ["escapeHTML"]
       49 CALL                             R14 1 1
       50 GETTABLEKS                       R13 R14 K10 ["default"]
       52 DUPTABLE                         R14 K16 [{"comment", "content", "prop", "tag", "value"}]
       53 DUPTABLE                         R15 K19 [{"close", "open"}]
       54 LOADK                            R16 K20 [""]
       55 SETTABLEKS                       R16 R15 K17 ["close"]
       57 LOADK                            R16 K20 [""]
       58 SETTABLEKS                       R16 R15 K18 ["open"]
       60 SETTABLEKS                       R15 R14 K11 ["comment"]
       62 DUPTABLE                         R15 K19 [{"close", "open"}]
       63 LOADK                            R16 K20 [""]
       64 SETTABLEKS                       R16 R15 K17 ["close"]
       66 LOADK                            R16 K20 [""]
       67 SETTABLEKS                       R16 R15 K18 ["open"]
       69 SETTABLEKS                       R15 R14 K12 ["content"]
       71 DUPTABLE                         R15 K19 [{"close", "open"}]
       72 LOADK                            R16 K20 [""]
       73 SETTABLEKS                       R16 R15 K17 ["close"]
       75 LOADK                            R16 K20 [""]
       76 SETTABLEKS                       R16 R15 K18 ["open"]
       78 SETTABLEKS                       R15 R14 K13 ["prop"]
       80 DUPTABLE                         R15 K19 [{"close", "open"}]
       81 LOADK                            R16 K20 [""]
       82 SETTABLEKS                       R16 R15 K17 ["close"]
       84 LOADK                            R16 K20 [""]
       85 SETTABLEKS                       R16 R15 K18 ["open"]
       87 SETTABLEKS                       R15 R14 K14 ["tag"]
       89 DUPTABLE                         R15 K19 [{"close", "open"}]
       90 LOADK                            R16 K20 [""]
       91 SETTABLEKS                       R16 R15 K17 ["close"]
       93 LOADK                            R16 K20 [""]
       94 SETTABLEKS                       R16 R15 K18 ["open"]
       96 SETTABLEKS                       R15 R14 K15 ["value"]
       98 DUPCLOSURE                       R6 K21 [PROTO_1]
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R3
      101 SETTABLEKS                       R6 R5 K22 ["printProps"]
      103 NEWCLOSURE                       R7 P1
      104 CAPTURE                          VAL R3
      105 CAPTURE                          REF R8
      106 SETTABLEKS                       R7 R5 K23 ["printChildren"]
      108 DUPCLOSURE                       R8 K24 [PROTO_4]
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R13
      111 SETTABLEKS                       R8 R5 K25 ["printText"]
      113 DUPCLOSURE                       R9 K26 [PROTO_5]
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R13
      116 SETTABLEKS                       R9 R5 K27 ["printComment"]
      118 DUPCLOSURE                       R10 K28 [PROTO_6]
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R4
      121 SETTABLEKS                       R10 R5 K29 ["printElement"]
      123 DUPCLOSURE                       R11 K30 [PROTO_7]
      124 CAPTURE                          VAL R14
      125 SETTABLEKS                       R11 R5 K31 ["printElementAsLeaf"]
      127 CLOSEUPVALS                      R8
      128 RETURN                           R5 1
