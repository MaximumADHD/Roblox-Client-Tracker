PROTO_0:
        0 NOT                              R2 R0
        1 NOT                              R1 R2
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toBe"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETIMPORT                        R3 K4 [string.format]
       10 LOADK                            R4 K5 ["Expected: never %s"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 RETURN                           R0 1

PROTO_2:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 NEWTABLE                         R4 0 1
        6 GETUPVAL                         R5 3
        7 SETLIST                          R4 R5 1 [1]
        9 CALL                             R1 3 1
       10 JUMPIFNOT                        R1 ; [+1]
       11 LOADK                            R0 K0 ["toEqual"]
       12 GETUPVAL                         R4 4
       13 LOADK                            R5 K1 ["toBe"]
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 GETUPVAL                         R8 5
       17 CALL                             R4 4 1
       18 MOVE                             R2 R4
       19 LOADK                            R3 K2 ["\n\n"]
       20 CONCAT                           R1 R2 R3
       21 JUMPIFEQKNIL                     R0 ; [+13]
       23 MOVE                             R2 R1
       24 GETUPVAL                         R5 6
       25 GETIMPORT                        R6 K5 [string.format]
       27 LOADK                            R7 K6 ["If it should pass with deep equality, replace \"%s\" with \"%s\""]
       28 LOADK                            R8 K1 ["toBe"]
       29 MOVE                             R9 R0
       30 CALL                             R6 3 -1
       31 CALL                             R5 -1 1
       32 MOVE                             R3 R5
       33 LOADK                            R4 K2 ["\n\n"]
       34 CONCAT                           R1 R2 R4
       35 MOVE                             R3 R1
       36 GETUPVAL                         R4 7
       37 GETUPVAL                         R5 2
       38 GETUPVAL                         R6 1
       39 LOADK                            R7 K7 ["Expected"]
       40 LOADK                            R8 K8 ["Received"]
       41 GETUPVAL                         R10 8
       42 GETTABLEKS                       R10 R10 K9 ["expand"]
       44 NOT                              R11 R10
       45 NOT                              R9 R11
       46 CALL                             R4 5 1
       47 CONCAT                           R2 R3 R4
       48 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R3 K3 [{"comment", "isNot", "promise"}]
        1 LOADK                            R4 K4 ["Object.is equality"]
        2 SETTABLEKS                       R4 R3 K0 ["comment"]
        4 GETTABLEKS                       R4 R0 K1 ["isNot"]
        6 SETTABLEKS                       R4 R3 K1 ["isNot"]
        8 GETTABLEKS                       R4 R0 K2 ["promise"]
       10 SETTABLEKS                       R4 R3 K2 ["promise"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K5 ["is"]
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 CALL                             R4 2 1
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R4 ; [+6]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R2
       25 JUMP                             ; [+10]
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R0
       36 DUPTABLE                         R6 K11 [{"actual", "expected", "message", "name", "pass"}]
       37 SETTABLEKS                       R1 R6 K6 ["actual"]
       39 SETTABLEKS                       R2 R6 K7 ["expected"]
       41 SETTABLEKS                       R5 R6 K8 ["message"]
       43 LOADK                            R7 K12 ["toBe"]
       44 SETTABLEKS                       R7 R6 K9 ["name"]
       46 SETTABLEKS                       R4 R6 K10 ["pass"]
       48 RETURN                           R6 1

PROTO_4:
        0 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toBeCloseTo"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETIMPORT                        R3 K4 [string.format]
       10 LOADK                            R4 K5 ["Expected: never %s\n"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 GETUPVAL                         R1 4
       17 JUMPIFNOTEQKN                    R1 K6 [0] ; [+2]
       19 RETURN                           R0 1
       20 MOVE                             R2 R0
       21 GETIMPORT                        R6 K4 [string.format]
       23 LOADK                            R7 K7 ["Received:       %s\n"]
       24 GETUPVAL                         R8 5
       25 GETUPVAL                         R9 6
       26 CALL                             R8 1 -1
       27 CALL                             R6 -1 1
       28 MOVE                             R3 R6
       29 LOADK                            R4 K8 ["\n"]
       30 GETUPVAL                         R5 7
       31 GETUPVAL                         R6 4
       32 GETUPVAL                         R7 8
       33 GETUPVAL                         R8 9
       34 GETUPVAL                         R9 10
       35 CALL                             R5 4 1
       36 CONCAT                           R1 R2 R5
       37 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R7 0
        1 LOADK                            R8 K0 ["toBeCloseTo"]
        2 LOADNIL                          R9
        3 LOADNIL                          R10
        4 GETUPVAL                         R11 1
        5 CALL                             R7 4 1
        6 MOVE                             R1 R7
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETIMPORT                        R7 K4 [string.format]
       10 LOADK                            R8 K5 ["Expected: %s\n"]
       11 GETUPVAL                         R9 2
       12 GETUPVAL                         R10 3
       13 CALL                             R9 1 -1
       14 CALL                             R7 -1 1
       15 MOVE                             R3 R7
       16 GETIMPORT                        R7 K4 [string.format]
       18 LOADK                            R8 K6 ["Received: %s\n"]
       19 GETUPVAL                         R9 4
       20 GETUPVAL                         R10 5
       21 CALL                             R9 1 -1
       22 CALL                             R7 -1 1
       23 MOVE                             R4 R7
       24 LOADK                            R5 K7 ["\n"]
       25 GETUPVAL                         R6 6
       26 GETUPVAL                         R7 7
       27 GETUPVAL                         R8 8
       28 GETUPVAL                         R9 9
       29 GETUPVAL                         R10 10
       30 CALL                             R6 4 1
       31 CONCAT                           R0 R1 R6
       32 RETURN                           R0 1

PROTO_7:
        0 LOADNIL                          R4
        1 JUMPIFNOT                        R3 ; [+2]
        2 LOADK                            R4 K0 ["precision"]
        3 JUMP                             ; [+1]
        4 LOADN                            R3 2
        5 GETTABLEKS                       R5 R0 K1 ["isNot"]
        7 DUPTABLE                         R6 K5 [{"isNot", "promise", "secondArgument", "secondArgumentColor"}]
        8 SETTABLEKS                       R5 R6 K1 ["isNot"]
       10 GETTABLEKS                       R7 R0 K2 ["promise"]
       12 SETTABLEKS                       R7 R6 K2 ["promise"]
       14 SETTABLEKS                       R4 R6 K3 ["secondArgument"]
       16 DUPCLOSURE                       R7 K6 [PROTO_4]
       17 SETTABLEKS                       R7 R6 K4 ["secondArgumentColor"]
       19 FASTCALL1                        TYPEOF R2 ; [+3]
       20 MOVE                             R8 R2
       21 GETIMPORT                        R7 K8 [typeof]
       23 CALL                             R7 1 1
       24 JUMPIFEQKS                       R7 K9 ["number"] ; [+26]
       26 GETIMPORT                        R7 K11 [error]
       28 GETUPVAL                         R8 0
       29 GETUPVAL                         R9 1
       30 GETUPVAL                         R10 2
       31 LOADK                            R11 K12 ["toBeCloseTo"]
       32 LOADNIL                          R12
       33 LOADNIL                          R13
       34 MOVE                             R14 R6
       35 CALL                             R10 4 1
       36 GETIMPORT                        R11 K15 [string.format]
       38 LOADK                            R12 K16 ["%s value must be a number"]
       39 GETUPVAL                         R13 3
       40 LOADK                            R14 K17 ["expected"]
       41 CALL                             R13 1 -1
       42 CALL                             R11 -1 1
       43 GETUPVAL                         R12 4
       44 LOADK                            R13 K18 ["Expected"]
       45 MOVE                             R14 R2
       46 GETUPVAL                         R15 5
       47 CALL                             R12 3 -1
       48 CALL                             R9 -1 -1
       49 CALL                             R8 -1 -1
       50 CALL                             R7 -1 0
       51 FASTCALL1                        TYPEOF R1 ; [+3]
       52 MOVE                             R8 R1
       53 GETIMPORT                        R7 K8 [typeof]
       55 CALL                             R7 1 1
       56 JUMPIFEQKS                       R7 K9 ["number"] ; [+26]
       58 GETIMPORT                        R7 K11 [error]
       60 GETUPVAL                         R8 0
       61 GETUPVAL                         R9 1
       62 GETUPVAL                         R10 2
       63 LOADK                            R11 K12 ["toBeCloseTo"]
       64 LOADNIL                          R12
       65 LOADNIL                          R13
       66 MOVE                             R14 R6
       67 CALL                             R10 4 1
       68 GETIMPORT                        R11 K15 [string.format]
       70 LOADK                            R12 K16 ["%s value must be a number"]
       71 GETUPVAL                         R13 6
       72 LOADK                            R14 K19 ["received"]
       73 CALL                             R13 1 -1
       74 CALL                             R11 -1 1
       75 GETUPVAL                         R12 4
       76 LOADK                            R13 K20 ["Received"]
       77 MOVE                             R14 R1
       78 GETUPVAL                         R15 7
       79 CALL                             R12 3 -1
       80 CALL                             R9 -1 -1
       81 CALL                             R8 -1 -1
       82 CALL                             R7 -1 0
       83 LOADB                            R7 0
       84 LOADN                            R8 0
       85 LOADN                            R9 0
       86 JUMPIFNOTEQKN                    R1 K21 [∞] ; [+5]
       88 JUMPIFNOTEQKN                    R2 K21 [∞] ; [+3]
       90 LOADB                            R7 1
       91 JUMP                             ; [+20]
       92 JUMPIFNOTEQKN                    R1 K22 [-∞] ; [+5]
       94 JUMPIFNOTEQKN                    R2 K22 [-∞] ; [+3]
       96 LOADB                            R7 1
       97 JUMP                             ; [+14]
       98 LOADN                            R11 10
       99 MINUS                            R12 R3
      100 POW                              R10 R11 R12
      101 DIVK                             R8 R10 K23 [2]
      102 SUB                              R11 R2 R1
      103 FASTCALL1                        MATH_ABS R11 ; [+2]
      104 GETIMPORT                        R10 K26 [math.abs]
      106 CALL                             R10 1 1
      107 MOVE                             R9 R10
      108 JUMPIFLT                         R9 R8 ; [+2]
      110 LOADB                            R7 0 +1
      111 LOADB                            R7 1
      112 LOADNIL                          R10
      113 JUMPIFNOT                        R7 ; [+13]
      114 NEWCLOSURE                       R10 P1
      115 CAPTURE                          UPVAL U2
      116 CAPTURE                          VAL R6
      117 CAPTURE                          UPVAL U5
      118 CAPTURE                          VAL R2
      119 CAPTURE                          REF R9
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          VAL R1
      122 CAPTURE                          UPVAL U8
      123 CAPTURE                          REF R8
      124 CAPTURE                          REF R3
      125 CAPTURE                          VAL R5
      126 JUMP                             ; [+12]
      127 NEWCLOSURE                       R10 P2
      128 CAPTURE                          UPVAL U2
      129 CAPTURE                          VAL R6
      130 CAPTURE                          UPVAL U5
      131 CAPTURE                          VAL R2
      132 CAPTURE                          UPVAL U7
      133 CAPTURE                          VAL R1
      134 CAPTURE                          UPVAL U8
      135 CAPTURE                          REF R9
      136 CAPTURE                          REF R8
      137 CAPTURE                          REF R3
      138 CAPTURE                          VAL R5
      139 DUPTABLE                         R11 K29 [{"message", "pass"}]
      140 SETTABLEKS                       R10 R11 K27 ["message"]
      142 SETTABLEKS                       R7 R11 K28 ["pass"]
      144 CLOSEUPVALS                      R3
      145 RETURN                           R11 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toBeDefined"]
        2 LOADNIL                          R6
        3 LOADK                            R7 K1 [""]
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K2 ["\n\n"]
        8 GETIMPORT                        R3 K5 [string.format]
       10 LOADK                            R4 K6 ["Received: %s"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 RETURN                           R0 1

PROTO_9:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 LOADK                            R6 K3 ["toBeDefined"]
       12 MOVE                             R7 R3
       13 CALL                             R4 3 0
       14 JUMPIFNOTEQKNIL                  R1 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R1
       23 DUPTABLE                         R6 K6 [{"message", "pass"}]
       24 SETTABLEKS                       R5 R6 K4 ["message"]
       26 SETTABLEKS                       R4 R6 K5 ["pass"]
       28 RETURN                           R6 1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toBeFalsy"]
        2 LOADNIL                          R6
        3 LOADK                            R7 K1 [""]
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K2 ["\n\n"]
        8 GETIMPORT                        R3 K5 [string.format]
       10 LOADK                            R4 K6 ["Received: %s"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 RETURN                           R0 1

PROTO_11:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 LOADK                            R6 K3 ["toBeFalsy"]
       12 MOVE                             R7 R3
       13 CALL                             R4 3 0
       14 NOT                              R4 R1
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R1
       20 DUPTABLE                         R6 K6 [{"message", "pass"}]
       21 SETTABLEKS                       R5 R6 K4 ["message"]
       23 SETTABLEKS                       R4 R6 K5 ["pass"]
       25 RETURN                           R6 1

PROTO_12:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["toBeGreaterThan"]
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 GETUPVAL                         R9 1
        5 CALL                             R5 4 1
        6 MOVE                             R1 R5
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETIMPORT                        R5 K4 [string.format]
       10 LOADK                            R6 K5 ["Expected:%s > %s\n"]
       11 GETUPVAL                         R8 2
       12 JUMPIFNOT                        R8 ; [+2]
       13 LOADK                            R7 K6 [" never"]
       14 JUMP                             ; [+1]
       15 LOADK                            R7 K7 [""]
       16 GETUPVAL                         R8 3
       17 GETUPVAL                         R9 4
       18 CALL                             R8 1 -1
       19 CALL                             R5 -1 1
       20 MOVE                             R3 R5
       21 GETIMPORT                        R4 K4 [string.format]
       23 LOADK                            R5 K8 ["Received:%s   %s"]
       24 GETUPVAL                         R7 2
       25 JUMPIFNOT                        R7 ; [+2]
       26 LOADK                            R6 K9 ["      "]
       27 JUMP                             ; [+1]
       28 LOADK                            R6 K7 [""]
       29 GETUPVAL                         R7 5
       30 GETUPVAL                         R8 6
       31 CALL                             R7 1 -1
       32 CALL                             R4 -1 1
       33 CONCAT                           R0 R1 R4
       34 RETURN                           R0 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["isNot"]
        2 DUPTABLE                         R4 K2 [{"isNot", "promise"}]
        3 SETTABLEKS                       R3 R4 K0 ["isNot"]
        5 GETTABLEKS                       R5 R0 K1 ["promise"]
        7 SETTABLEKS                       R5 R4 K1 ["promise"]
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 LOADK                            R8 K3 ["toBeGreaterThan"]
       13 MOVE                             R9 R4
       14 CALL                             R5 4 0
       15 JUMPIFLT                         R2 R1 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R1
       27 DUPTABLE                         R7 K6 [{"message", "pass"}]
       28 SETTABLEKS                       R6 R7 K4 ["message"]
       30 SETTABLEKS                       R5 R7 K5 ["pass"]
       32 RETURN                           R7 1

PROTO_14:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["toBeGreaterThanOrEqual"]
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 GETUPVAL                         R9 1
        5 CALL                             R5 4 1
        6 MOVE                             R1 R5
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETIMPORT                        R5 K4 [string.format]
       10 LOADK                            R6 K5 ["Expected:%s >= %s\n"]
       11 GETUPVAL                         R8 2
       12 JUMPIFNOT                        R8 ; [+2]
       13 LOADK                            R7 K6 [" never"]
       14 JUMP                             ; [+1]
       15 LOADK                            R7 K7 [""]
       16 GETUPVAL                         R8 3
       17 GETUPVAL                         R9 4
       18 CALL                             R8 1 -1
       19 CALL                             R5 -1 1
       20 MOVE                             R3 R5
       21 GETIMPORT                        R4 K4 [string.format]
       23 LOADK                            R5 K8 ["Received:%s    %s"]
       24 GETUPVAL                         R7 2
       25 JUMPIFNOT                        R7 ; [+2]
       26 LOADK                            R6 K9 ["      "]
       27 JUMP                             ; [+1]
       28 LOADK                            R6 K7 [""]
       29 GETUPVAL                         R7 5
       30 GETUPVAL                         R8 6
       31 CALL                             R7 1 -1
       32 CALL                             R4 -1 1
       33 CONCAT                           R0 R1 R4
       34 RETURN                           R0 1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["isNot"]
        2 DUPTABLE                         R4 K2 [{"isNot", "promise"}]
        3 SETTABLEKS                       R3 R4 K0 ["isNot"]
        5 GETTABLEKS                       R5 R0 K1 ["promise"]
        7 SETTABLEKS                       R5 R4 K1 ["promise"]
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 LOADK                            R8 K3 ["toBeGreaterThanOrEqual"]
       13 MOVE                             R9 R4
       14 CALL                             R5 4 0
       15 JUMPIFLE                         R2 R1 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R1
       27 DUPTABLE                         R7 K6 [{"message", "pass"}]
       28 SETTABLEKS                       R6 R7 K4 ["message"]
       30 SETTABLEKS                       R5 R7 K5 ["pass"]
       32 RETURN                           R7 1

PROTO_16:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toBeInstanceOf"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETUPVAL                         R3 2
        9 LOADK                            R4 K2 ["Expected constructor"]
       10 GETUPVAL                         R5 3
       11 CALL                             R3 2 1
       12 CONCAT                           R0 R1 R3
       13 GETUPVAL                         R1 4
       14 JUMPIFNOT                        R1 ; [+11]
       15 GETUPVAL                         R1 4
       16 GETUPVAL                         R2 3
       17 JUMPIFEQ                         R1 R2 ; [+8]
       19 MOVE                             R1 R0
       20 GETUPVAL                         R2 5
       21 LOADK                            R3 K3 ["Received constructor"]
       22 GETUPVAL                         R4 4
       23 GETUPVAL                         R5 3
       24 CALL                             R2 3 1
       25 CONCAT                           R0 R1 R2
       26 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toBeInstanceOf"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETUPVAL                         R3 2
        9 LOADK                            R4 K2 ["Expected constructor"]
       10 GETUPVAL                         R5 3
       11 CALL                             R3 2 1
       12 CONCAT                           R0 R1 R3
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R2 5
       15 CALL                             R1 1 1
       16 JUMPIF                           R1 ; [+3]
       17 GETUPVAL                         R1 6
       18 JUMPIFNOTEQKNIL                  R1 ; [+11]
       20 MOVE                             R1 R0
       21 GETIMPORT                        R2 K5 [string.format]
       23 LOADK                            R3 K6 ["\nReceived value has no prototype\nReceived value: %s"]
       24 GETUPVAL                         R4 7
       25 GETUPVAL                         R5 5
       26 CALL                             R4 1 -1
       27 CALL                             R2 -1 1
       28 CONCAT                           R0 R1 R2
       29 RETURN                           R0 1
       30 MOVE                             R1 R0
       31 GETUPVAL                         R2 8
       32 LOADK                            R3 K7 ["Received constructor"]
       33 GETUPVAL                         R4 6
       34 CALL                             R2 2 1
       35 CONCAT                           R0 R1 R2
       36 RETURN                           R0 1

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["isNot"]
        2 DUPTABLE                         R4 K2 [{"isNot", "promise"}]
        3 SETTABLEKS                       R3 R4 K0 ["isNot"]
        5 GETTABLEKS                       R5 R0 K1 ["promise"]
        7 SETTABLEKS                       R5 R4 K1 ["promise"]
        9 FASTCALL1                        TYPEOF R2 ; [+3]
       10 MOVE                             R6 R2
       11 GETIMPORT                        R5 K4 [typeof]
       13 CALL                             R5 1 1
       14 JUMPIFEQKS                       R5 K5 ["table"] ; [+26]
       16 GETIMPORT                        R5 K7 [error]
       18 GETUPVAL                         R6 0
       19 GETUPVAL                         R7 1
       20 GETUPVAL                         R8 2
       21 LOADK                            R9 K8 ["toBeInstanceOf"]
       22 LOADNIL                          R10
       23 LOADNIL                          R11
       24 MOVE                             R12 R4
       25 CALL                             R8 4 1
       26 GETIMPORT                        R9 K11 [string.format]
       28 LOADK                            R10 K12 ["%s value must be a prototype class"]
       29 GETUPVAL                         R11 3
       30 LOADK                            R12 K13 ["expected"]
       31 CALL                             R11 1 -1
       32 CALL                             R9 -1 1
       33 GETUPVAL                         R10 4
       34 LOADK                            R11 K14 ["Expected"]
       35 MOVE                             R12 R2
       36 GETUPVAL                         R13 5
       37 CALL                             R10 3 -1
       38 CALL                             R7 -1 -1
       39 CALL                             R6 -1 -1
       40 CALL                             R5 -1 0
       41 GETUPVAL                         R5 6
       42 MOVE                             R6 R1
       43 MOVE                             R7 R2
       44 CALL                             R5 2 1
       45 LOADNIL                          R6
       46 FASTCALL1                        GETMETATABLE R1 ; [+3]
       47 MOVE                             R9 R1
       48 GETIMPORT                        R8 K16 [getmetatable]
       50 CALL                             R8 1 1
       51 FASTCALL1                        TYPEOF R8 ; [+2]
       52 GETIMPORT                        R7 K4 [typeof]
       54 CALL                             R7 1 1
       55 JUMPIFNOTEQKS                    R7 K5 ["table"] ; [+21]
       57 FASTCALL1                        GETMETATABLE R1 ; [+3]
       58 MOVE                             R9 R1
       59 GETIMPORT                        R8 K16 [getmetatable]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R8 R8 K17 ["__index"]
       64 FASTCALL1                        TYPEOF R8 ; [+2]
       65 GETIMPORT                        R7 K4 [typeof]
       67 CALL                             R7 1 1
       68 JUMPIFNOTEQKS                    R7 K5 ["table"] ; [+8]
       70 FASTCALL1                        GETMETATABLE R1 ; [+3]
       71 MOVE                             R8 R1
       72 GETIMPORT                        R7 K16 [getmetatable]
       74 CALL                             R7 1 1
       75 GETTABLEKS                       R6 R7 K17 ["__index"]
       77 LOADNIL                          R7
       78 JUMPIFNOT                        R5 ; [+8]
       79 NEWCLOSURE                       R7 P0
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          VAL R4
       82 CAPTURE                          UPVAL U7
       83 CAPTURE                          VAL R2
       84 CAPTURE                          REF R6
       85 CAPTURE                          UPVAL U8
       86 JUMP                             ; [+10]
       87 NEWCLOSURE                       R7 P1
       88 CAPTURE                          UPVAL U2
       89 CAPTURE                          VAL R4
       90 CAPTURE                          UPVAL U9
       91 CAPTURE                          VAL R2
       92 CAPTURE                          UPVAL U10
       93 CAPTURE                          VAL R1
       94 CAPTURE                          REF R6
       95 CAPTURE                          UPVAL U11
       96 CAPTURE                          UPVAL U12
       97 DUPTABLE                         R8 K20 [{"message", "pass"}]
       98 SETTABLEKS                       R7 R8 K18 ["message"]
      100 SETTABLEKS                       R5 R8 K19 ["pass"]
      102 CLOSEUPVALS                      R6
      103 RETURN                           R8 1

PROTO_19:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["toBeLessThan"]
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 GETUPVAL                         R9 1
        5 CALL                             R5 4 1
        6 MOVE                             R1 R5
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETIMPORT                        R5 K4 [string.format]
       10 LOADK                            R6 K5 ["Expected:%s < %s\n"]
       11 GETUPVAL                         R8 2
       12 JUMPIFNOT                        R8 ; [+2]
       13 LOADK                            R7 K6 [" never"]
       14 JUMP                             ; [+1]
       15 LOADK                            R7 K7 [""]
       16 GETUPVAL                         R8 3
       17 GETUPVAL                         R9 4
       18 CALL                             R8 1 -1
       19 CALL                             R5 -1 1
       20 MOVE                             R3 R5
       21 GETIMPORT                        R4 K4 [string.format]
       23 LOADK                            R5 K8 ["Received:%s   %s"]
       24 GETUPVAL                         R7 2
       25 JUMPIFNOT                        R7 ; [+2]
       26 LOADK                            R6 K9 ["      "]
       27 JUMP                             ; [+1]
       28 LOADK                            R6 K7 [""]
       29 GETUPVAL                         R7 5
       30 GETUPVAL                         R8 6
       31 CALL                             R7 1 -1
       32 CALL                             R4 -1 1
       33 CONCAT                           R0 R1 R4
       34 RETURN                           R0 1

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["isNot"]
        2 DUPTABLE                         R4 K2 [{"isNot", "promise"}]
        3 SETTABLEKS                       R3 R4 K0 ["isNot"]
        5 GETTABLEKS                       R5 R0 K1 ["promise"]
        7 SETTABLEKS                       R5 R4 K1 ["promise"]
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 LOADK                            R8 K3 ["toBeLessThan"]
       13 MOVE                             R9 R4
       14 CALL                             R5 4 0
       15 JUMPIFLT                         R1 R2 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R1
       27 DUPTABLE                         R7 K6 [{"message", "pass"}]
       28 SETTABLEKS                       R6 R7 K4 ["message"]
       30 SETTABLEKS                       R5 R7 K5 ["pass"]
       32 RETURN                           R7 1

PROTO_21:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["toBeLessThanOrEqual"]
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 GETUPVAL                         R9 1
        5 CALL                             R5 4 1
        6 MOVE                             R1 R5
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETIMPORT                        R5 K4 [string.format]
       10 LOADK                            R6 K5 ["Expected:%s <= %s\n"]
       11 GETUPVAL                         R8 2
       12 JUMPIFNOT                        R8 ; [+2]
       13 LOADK                            R7 K6 [" never"]
       14 JUMP                             ; [+1]
       15 LOADK                            R7 K7 [""]
       16 GETUPVAL                         R8 3
       17 GETUPVAL                         R9 4
       18 CALL                             R8 1 -1
       19 CALL                             R5 -1 1
       20 MOVE                             R3 R5
       21 GETIMPORT                        R4 K4 [string.format]
       23 LOADK                            R5 K8 ["Received:%s    %s"]
       24 GETUPVAL                         R7 2
       25 JUMPIFNOT                        R7 ; [+2]
       26 LOADK                            R6 K9 ["      "]
       27 JUMP                             ; [+1]
       28 LOADK                            R6 K7 [""]
       29 GETUPVAL                         R7 5
       30 GETUPVAL                         R8 6
       31 CALL                             R7 1 -1
       32 CALL                             R4 -1 1
       33 CONCAT                           R0 R1 R4
       34 RETURN                           R0 1

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["isNot"]
        2 DUPTABLE                         R4 K2 [{"isNot", "promise"}]
        3 SETTABLEKS                       R3 R4 K0 ["isNot"]
        5 GETTABLEKS                       R5 R0 K1 ["promise"]
        7 SETTABLEKS                       R5 R4 K1 ["promise"]
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 LOADK                            R8 K3 ["toBeLessThanOrEqual"]
       13 MOVE                             R9 R4
       14 CALL                             R5 4 0
       15 JUMPIFLE                         R1 R2 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R1
       27 DUPTABLE                         R7 K6 [{"message", "pass"}]
       28 SETTABLEKS                       R6 R7 K4 ["message"]
       30 SETTABLEKS                       R5 R7 K5 ["pass"]
       32 RETURN                           R7 1

PROTO_23:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toBeNan"]
        2 LOADNIL                          R6
        3 LOADK                            R7 K1 [""]
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K2 ["\n\n"]
        8 GETIMPORT                        R3 K5 [string.format]
       10 LOADK                            R4 K6 ["Received: %s"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 RETURN                           R0 1

PROTO_24:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 LOADK                            R6 K3 ["toBeNan"]
       12 MOVE                             R7 R3
       13 CALL                             R4 3 0
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["isNaN"]
       17 MOVE                             R5 R1
       18 CALL                             R4 1 1
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R1
       24 DUPTABLE                         R6 K7 [{"message", "pass"}]
       25 SETTABLEKS                       R5 R6 K5 ["message"]
       27 SETTABLEKS                       R4 R6 K6 ["pass"]
       29 RETURN                           R6 1

PROTO_25:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toBeNil"]
        2 LOADNIL                          R6
        3 LOADK                            R7 K1 [""]
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K2 ["\n\n"]
        8 GETIMPORT                        R3 K5 [string.format]
       10 LOADK                            R4 K6 ["Received: %s"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 RETURN                           R0 1

PROTO_26:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 LOADK                            R6 K3 ["toBeNil"]
       12 MOVE                             R7 R3
       13 CALL                             R4 3 0
       14 JUMPIFEQKNIL                     R1 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R1
       23 DUPTABLE                         R6 K6 [{"message", "pass"}]
       24 SETTABLEKS                       R5 R6 K4 ["message"]
       26 SETTABLEKS                       R4 R6 K5 ["pass"]
       28 RETURN                           R6 1

PROTO_27:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toBeTruthy"]
        2 LOADNIL                          R6
        3 LOADK                            R7 K1 [""]
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K2 ["\n\n"]
        8 GETIMPORT                        R3 K5 [string.format]
       10 LOADK                            R4 K6 ["Received: %s"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 RETURN                           R0 1

PROTO_28:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 LOADK                            R6 K3 ["toBeTruthy"]
       12 MOVE                             R7 R3
       13 CALL                             R4 3 0
       14 NOT                              R5 R1
       15 NOT                              R4 R5
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R1
       21 DUPTABLE                         R6 K6 [{"message", "pass"}]
       22 SETTABLEKS                       R5 R6 K4 ["message"]
       24 SETTABLEKS                       R4 R6 K5 ["pass"]
       26 RETURN                           R6 1

PROTO_29:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toBeUndefined"]
        2 LOADNIL                          R6
        3 LOADK                            R7 K1 [""]
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K2 ["\n\n"]
        8 GETIMPORT                        R3 K5 [string.format]
       10 LOADK                            R4 K6 ["Received: %s"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 RETURN                           R0 1

PROTO_30:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 LOADK                            R6 K3 ["toBeUndefined"]
       12 MOVE                             R7 R3
       13 CALL                             R4 3 0
       14 JUMPIFEQKNIL                     R1 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R1
       23 DUPTABLE                         R6 K6 [{"message", "pass"}]
       24 SETTABLEKS                       R5 R6 K4 ["message"]
       26 SETTABLEKS                       R4 R6 K5 ["pass"]
       28 RETURN                           R6 1

PROTO_31:
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["Expected %s"]
        3 GETUPVAL                         R4 0
        4 FASTCALL1                        TYPEOF R4 ; [+2]
        5 GETIMPORT                        R3 K5 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFNOTEQKS                    R3 K0 ["string"] ; [+3]
       10 LOADK                            R2 K6 ["substring"]
       11 JUMP                             ; [+1]
       12 LOADK                            R2 K7 ["value"]
       13 CALL                             R0 2 1
       14 GETUPVAL                         R1 1
       15 MOVE                             R2 R0
       16 LOADK                            R3 K8 ["Received string"]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R7 2
       19 LOADK                            R8 K9 ["toContain"]
       20 LOADNIL                          R9
       21 LOADNIL                          R10
       22 GETUPVAL                         R11 3
       23 CALL                             R7 4 1
       24 MOVE                             R3 R7
       25 LOADK                            R4 K10 ["\n\n"]
       26 GETIMPORT                        R7 K2 [string.format]
       28 LOADK                            R8 K11 ["%s%s%s\n"]
       29 MOVE                             R9 R1
       30 MOVE                             R10 R0
       31 CALL                             R9 1 1
       32 GETUPVAL                         R11 4
       33 JUMPIFNOT                        R11 ; [+2]
       34 LOADK                            R10 K12 ["never "]
       35 JUMP                             ; [+1]
       36 LOADK                            R10 K13 [""]
       37 GETUPVAL                         R11 5
       38 GETUPVAL                         R12 0
       39 CALL                             R11 1 -1
       40 CALL                             R7 -1 1
       41 MOVE                             R5 R7
       42 GETIMPORT                        R6 K2 [string.format]
       44 LOADK                            R7 K14 ["%s%s%s"]
       45 MOVE                             R8 R1
       46 LOADK                            R9 K8 ["Received string"]
       47 CALL                             R8 1 1
       48 GETUPVAL                         R10 4
       49 JUMPIFNOT                        R10 ; [+2]
       50 LOADK                            R9 K15 ["      "]
       51 JUMP                             ; [+1]
       52 LOADK                            R9 K13 [""]
       53 GETUPVAL                         R11 4
       54 JUMPIFNOT                        R11 ; [+11]
       55 GETUPVAL                         R10 6
       56 GETUPVAL                         R11 7
       57 GETUPVAL                         R12 8
       58 GETUPVAL                         R15 0
       59 FASTCALL1                        TOSTRING R15 ; [+2]
       60 GETIMPORT                        R14 K17 [tostring]
       62 CALL                             R14 1 1
       63 LENGTH                           R13 R14
       64 CALL                             R10 3 1
       65 JUMPIF                           R10 ; [+3]
       66 GETUPVAL                         R10 9
       67 GETUPVAL                         R11 7
       68 CALL                             R10 1 1
       69 CALL                             R6 4 1
       70 CONCAT                           R2 R3 R6
       71 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 NEWTABLE                         R4 0 1
        5 GETUPVAL                         R5 2
        6 SETLIST                          R4 R5 1 [1]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_33:
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["Received %s"]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R3 1
        5 CALL                             R2 1 -1
        6 CALL                             R0 -1 1
        7 GETUPVAL                         R1 2
        8 LOADK                            R2 K4 ["Expected value"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 GETUPVAL                         R7 3
       12 LOADK                            R8 K5 ["toContain"]
       13 LOADNIL                          R9
       14 LOADNIL                          R10
       15 GETUPVAL                         R11 4
       16 CALL                             R7 4 1
       17 MOVE                             R3 R7
       18 LOADK                            R4 K6 ["\n\n"]
       19 GETIMPORT                        R7 K2 [string.format]
       21 LOADK                            R8 K7 ["%s%s%s\n"]
       22 MOVE                             R9 R1
       23 LOADK                            R10 K4 ["Expected value"]
       24 CALL                             R9 1 1
       25 GETUPVAL                         R11 5
       26 JUMPIFNOT                        R11 ; [+2]
       27 LOADK                            R10 K8 ["never "]
       28 JUMP                             ; [+1]
       29 LOADK                            R10 K9 [""]
       30 GETUPVAL                         R11 6
       31 GETUPVAL                         R12 7
       32 CALL                             R11 1 -1
       33 CALL                             R7 -1 1
       34 MOVE                             R5 R7
       35 GETIMPORT                        R6 K2 [string.format]
       37 LOADK                            R7 K10 ["%s%s"]
       38 MOVE                             R8 R1
       39 MOVE                             R9 R0
       40 CALL                             R8 1 1
       41 GETUPVAL                         R10 5
       42 JUMPIFNOT                        R10 ; [+2]
       43 LOADK                            R9 K11 ["      "]
       44 JUMP                             ; [+1]
       45 LOADK                            R9 K9 [""]
       46 CALL                             R6 3 1
       47 CONCAT                           R2 R3 R6
       48 GETUPVAL                         R3 5
       49 JUMPIFNOT                        R3 ; [+13]
       50 GETUPVAL                         R3 8
       51 GETTABLEKS                       R3 R3 K12 ["isArray"]
       53 GETUPVAL                         R4 1
       54 CALL                             R3 1 1
       55 JUMPIFNOT                        R3 ; [+7]
       56 MOVE                             R3 R2
       57 GETUPVAL                         R4 9
       58 GETUPVAL                         R5 1
       59 GETUPVAL                         R6 10
       60 CALL                             R4 2 1
       61 CONCAT                           R2 R3 R4
       62 JUMP                             ; [+5]
       63 MOVE                             R3 R2
       64 GETUPVAL                         R4 11
       65 GETUPVAL                         R5 1
       66 CALL                             R4 1 1
       67 CONCAT                           R2 R3 R4
       68 GETUPVAL                         R3 5
       69 JUMPIF                           R3 ; [+18]
       70 GETUPVAL                         R3 8
       71 GETTABLEKS                       R3 R3 K13 ["findIndex"]
       73 GETUPVAL                         R4 1
       74 NEWCLOSURE                       R5 P0
       75 CAPTURE                          UPVAL U12
       76 CAPTURE                          UPVAL U7
       77 CAPTURE                          UPVAL U13
       78 CALL                             R3 2 1
       79 JUMPIFEQKN                       R3 K14 [-1] ; [+8]
       81 MOVE                             R3 R2
       82 GETIMPORT                        R4 K2 [string.format]
       84 LOADK                            R5 K15 ["\n\n%s"]
       85 GETUPVAL                         R6 14
       86 CALL                             R4 2 1
       87 CONCAT                           R2 R3 R4
       88 RETURN                           R2 1

PROTO_34:
        0 GETTABLEKS                       R3 R0 K0 ["isNot"]
        2 DUPTABLE                         R4 K3 [{"comment", "isNot", "promise"}]
        3 LOADK                            R5 K4 ["string.find or table.find"]
        4 SETTABLEKS                       R5 R4 K1 ["comment"]
        6 SETTABLEKS                       R3 R4 K0 ["isNot"]
        8 GETTABLEKS                       R5 R0 K2 ["promise"]
       10 SETTABLEKS                       R5 R4 K2 ["promise"]
       12 JUMPIFNOTEQKNIL                  R1 ; [+26]
       14 GETIMPORT                        R5 K6 [error]
       16 GETUPVAL                         R6 0
       17 GETUPVAL                         R7 1
       18 GETUPVAL                         R8 2
       19 LOADK                            R9 K7 ["toContain"]
       20 LOADNIL                          R10
       21 LOADNIL                          R11
       22 MOVE                             R12 R4
       23 CALL                             R8 4 1
       24 GETIMPORT                        R9 K10 [string.format]
       26 LOADK                            R10 K11 ["%s value must not be nil"]
       27 GETUPVAL                         R11 3
       28 LOADK                            R12 K12 ["received"]
       29 CALL                             R11 1 -1
       30 CALL                             R9 -1 1
       31 GETUPVAL                         R10 4
       32 LOADK                            R11 K13 ["Received"]
       33 MOVE                             R12 R1
       34 GETUPVAL                         R13 5
       35 CALL                             R10 3 -1
       36 CALL                             R7 -1 -1
       37 CALL                             R6 -1 -1
       38 CALL                             R5 -1 0
       39 FASTCALL1                        TYPEOF R1 ; [+3]
       40 MOVE                             R6 R1
       41 GETIMPORT                        R5 K15 [typeof]
       43 CALL                             R5 1 1
       44 JUMPIFNOTEQKS                    R5 K8 ["string"] ; [+90]
       46 LOADK                            R5 K16 ["%s value must be a string if %s value is a string"]
       47 GETUPVAL                         R7 6
       48 LOADK                            R8 K17 ["expected"]
       49 CALL                             R7 1 1
       50 GETUPVAL                         R8 3
       51 LOADK                            R9 K12 ["received"]
       52 CALL                             R8 1 -1
       53 NAMECALL                         R5 R5 K9 ["format"]
       55 CALL                             R5 -1 1
       56 FASTCALL1                        TYPEOF R2 ; [+3]
       57 MOVE                             R7 R2
       58 GETIMPORT                        R6 K15 [typeof]
       60 CALL                             R6 1 1
       61 JUMPIFEQKS                       R6 K8 ["string"] ; [+42]
       63 GETIMPORT                        R6 K6 [error]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K18 ["new"]
       68 GETUPVAL                         R8 1
       69 GETUPVAL                         R9 2
       70 LOADK                            R10 K7 ["toContain"]
       71 MOVE                             R11 R1
       72 FASTCALL1                        TOSTRING R2 ; [+3]
       73 MOVE                             R13 R2
       74 GETIMPORT                        R12 K20 [tostring]
       76 CALL                             R12 1 1
       77 MOVE                             R13 R4
       78 CALL                             R9 4 1
       79 MOVE                             R10 R5
       80 GETUPVAL                         R16 4
       81 LOADK                            R17 K21 ["Expected"]
       82 MOVE                             R18 R2
       83 GETUPVAL                         R19 7
       84 CALL                             R16 3 -1
       85 FASTCALL                         TOSTRING ; [+2]
       86 GETIMPORT                        R15 K20 [tostring]
       88 CALL                             R15 -1 1
       89 MOVE                             R12 R15
       90 LOADK                            R13 K22 ["\n"]
       91 GETUPVAL                         R15 4
       92 LOADK                            R16 K13 ["Received"]
       93 MOVE                             R17 R1
       94 GETUPVAL                         R18 5
       95 CALL                             R15 3 -1
       96 FASTCALL                         TOSTRING ; [+2]
       97 GETIMPORT                        R14 K20 [tostring]
       99 CALL                             R14 -1 1
      100 CONCAT                           R11 R12 R14
      101 CALL                             R8 3 -1
      102 CALL                             R7 -1 -1
      103 CALL                             R6 -1 0
      104 FASTCALL1                        TOSTRING R2 ; [+3]
      105 MOVE                             R9 R2
      106 GETIMPORT                        R8 K20 [tostring]
      108 CALL                             R8 1 1
      109 LOADN                            R9 1
      110 LOADB                            R10 1
      111 NAMECALL                         R6 R1 K23 ["find"]
      113 CALL                             R6 4 1
      114 JUMPIFNOTEQKNIL                  R6 ; [+2]
      116 LOADB                            R7 0 +1
      117 LOADB                            R7 1
      118 NEWCLOSURE                       R8 P0
      119 CAPTURE                          VAL R2
      120 CAPTURE                          UPVAL U8
      121 CAPTURE                          UPVAL U2
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R3
      124 CAPTURE                          UPVAL U7
      125 CAPTURE                          UPVAL U9
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R6
      128 CAPTURE                          UPVAL U5
      129 DUPTABLE                         R9 K26 [{"message", "pass"}]
      130 SETTABLEKS                       R8 R9 K24 ["message"]
      132 SETTABLEKS                       R7 R9 K25 ["pass"]
      134 RETURN                           R9 1
      135 GETUPVAL                         R5 10
      136 GETTABLEKS                       R5 R5 K27 ["from"]
      138 MOVE                             R6 R1
      139 CALL                             R5 1 1
      140 GETIMPORT                        R6 K29 [table.find]
      142 MOVE                             R7 R5
      143 MOVE                             R8 R2
      144 CALL                             R6 2 1
      145 JUMPIFNOTEQKNIL                  R6 ; [+2]
      147 LOADB                            R7 0 +1
      148 LOADB                            R7 1
      149 NEWCLOSURE                       R8 P1
      150 CAPTURE                          UPVAL U11
      151 CAPTURE                          VAL R1
      152 CAPTURE                          UPVAL U8
      153 CAPTURE                          UPVAL U2
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R3
      156 CAPTURE                          UPVAL U7
      157 CAPTURE                          VAL R2
      158 CAPTURE                          UPVAL U10
      159 CAPTURE                          UPVAL U12
      160 CAPTURE                          VAL R6
      161 CAPTURE                          UPVAL U5
      162 CAPTURE                          UPVAL U13
      163 CAPTURE                          UPVAL U14
      164 CAPTURE                          UPVAL U15
      165 DUPTABLE                         R9 K26 [{"message", "pass"}]
      166 SETTABLEKS                       R8 R9 K24 ["message"]
      168 SETTABLEKS                       R7 R9 K25 ["pass"]
      170 RETURN                           R9 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 NEWTABLE                         R4 0 1
        5 GETUPVAL                         R5 2
        6 SETLIST                          R4 R5 1 [1]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_36:
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["Received %s"]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R3 1
        5 CALL                             R2 1 -1
        6 CALL                             R0 -1 1
        7 GETUPVAL                         R1 2
        8 LOADK                            R2 K4 ["Expected value"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 GETUPVAL                         R7 3
       12 LOADK                            R8 K5 ["toContainEqual"]
       13 LOADNIL                          R9
       14 LOADNIL                          R10
       15 GETUPVAL                         R11 4
       16 CALL                             R7 4 1
       17 MOVE                             R3 R7
       18 LOADK                            R4 K6 ["\n\n"]
       19 GETIMPORT                        R7 K2 [string.format]
       21 LOADK                            R8 K7 ["%s%s%s\n"]
       22 MOVE                             R9 R1
       23 LOADK                            R10 K4 ["Expected value"]
       24 CALL                             R9 1 1
       25 GETUPVAL                         R11 5
       26 JUMPIFNOT                        R11 ; [+2]
       27 LOADK                            R10 K8 ["never "]
       28 JUMP                             ; [+1]
       29 LOADK                            R10 K9 [""]
       30 GETUPVAL                         R11 6
       31 GETUPVAL                         R12 7
       32 CALL                             R11 1 -1
       33 CALL                             R7 -1 1
       34 MOVE                             R5 R7
       35 GETIMPORT                        R6 K2 [string.format]
       37 LOADK                            R7 K10 ["%s%s"]
       38 MOVE                             R8 R1
       39 MOVE                             R9 R0
       40 CALL                             R8 1 1
       41 GETUPVAL                         R10 5
       42 JUMPIFNOT                        R10 ; [+2]
       43 LOADK                            R9 K11 ["      "]
       44 JUMP                             ; [+1]
       45 LOADK                            R9 K9 [""]
       46 CALL                             R6 3 1
       47 CONCAT                           R2 R3 R6
       48 GETUPVAL                         R3 5
       49 JUMPIFNOT                        R3 ; [+13]
       50 GETUPVAL                         R3 8
       51 GETTABLEKS                       R3 R3 K12 ["isArray"]
       53 GETUPVAL                         R4 1
       54 CALL                             R3 1 1
       55 JUMPIFNOT                        R3 ; [+7]
       56 MOVE                             R3 R2
       57 GETUPVAL                         R4 9
       58 GETUPVAL                         R5 1
       59 GETUPVAL                         R6 10
       60 CALL                             R4 2 1
       61 CONCAT                           R2 R3 R4
       62 RETURN                           R2 1
       63 MOVE                             R3 R2
       64 GETUPVAL                         R4 11
       65 GETUPVAL                         R5 1
       66 CALL                             R4 1 1
       67 CONCAT                           R2 R3 R4
       68 RETURN                           R2 1

PROTO_37:
        0 GETTABLEKS                       R3 R0 K0 ["isNot"]
        2 DUPTABLE                         R4 K3 [{"comment", "isNot", "promise"}]
        3 LOADK                            R5 K4 ["deep equality"]
        4 SETTABLEKS                       R5 R4 K1 ["comment"]
        6 SETTABLEKS                       R3 R4 K0 ["isNot"]
        8 GETTABLEKS                       R5 R0 K2 ["promise"]
       10 SETTABLEKS                       R5 R4 K2 ["promise"]
       12 JUMPIFNOTEQKNIL                  R1 ; [+26]
       14 GETIMPORT                        R5 K6 [error]
       16 GETUPVAL                         R6 0
       17 GETUPVAL                         R7 1
       18 GETUPVAL                         R8 2
       19 LOADK                            R9 K7 ["toContainEqual"]
       20 LOADNIL                          R10
       21 LOADNIL                          R11
       22 MOVE                             R12 R4
       23 CALL                             R8 4 1
       24 GETIMPORT                        R9 K10 [string.format]
       26 LOADK                            R10 K11 ["%s value must not be nil"]
       27 GETUPVAL                         R11 3
       28 LOADK                            R12 K12 ["received"]
       29 CALL                             R11 1 -1
       30 CALL                             R9 -1 1
       31 GETUPVAL                         R10 4
       32 LOADK                            R11 K13 ["Received"]
       33 MOVE                             R12 R1
       34 GETUPVAL                         R13 5
       35 CALL                             R10 3 -1
       36 CALL                             R7 -1 -1
       37 CALL                             R6 -1 -1
       38 CALL                             R5 -1 0
       39 GETUPVAL                         R5 6
       40 GETTABLEKS                       R5 R5 K14 ["findIndex"]
       42 GETUPVAL                         R6 6
       43 GETTABLEKS                       R6 R6 K15 ["from"]
       45 MOVE                             R7 R1
       46 CALL                             R6 1 1
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U8
       51 CALL                             R5 2 1
       52 JUMPIFNOTEQKN                    R5 K16 [-1] ; [+2]
       54 LOADB                            R6 0 +1
       55 LOADB                            R6 1
       56 NEWCLOSURE                       R7 P1
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U10
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          UPVAL U11
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          UPVAL U12
       67 CAPTURE                          VAL R5
       68 CAPTURE                          UPVAL U5
       69 DUPTABLE                         R8 K19 [{"message", "pass"}]
       70 SETTABLEKS                       R7 R8 K17 ["message"]
       72 SETTABLEKS                       R6 R8 K18 ["pass"]
       74 RETURN                           R8 1

PROTO_38:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toEqual"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETIMPORT                        R3 K4 [string.format]
       10 LOADK                            R4 K5 ["Expected: never %s\n"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R2 3
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 4
       20 GETUPVAL                         R3 5
       21 CALL                             R2 1 1
       22 JUMPIFEQ                         R1 R2 ; [+10]
       24 MOVE                             R1 R0
       25 GETIMPORT                        R2 K4 [string.format]
       27 LOADK                            R3 K6 ["Received:       %s"]
       28 GETUPVAL                         R4 6
       29 GETUPVAL                         R5 5
       30 CALL                             R4 1 -1
       31 CALL                             R2 -1 1
       32 CONCAT                           R0 R1 R2
       33 RETURN                           R0 1

PROTO_39:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toEqual"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETUPVAL                         R5 4
       11 LOADK                            R6 K2 ["Expected"]
       12 LOADK                            R7 K3 ["Received"]
       13 GETUPVAL                         R9 5
       14 GETTABLEKS                       R9 R9 K4 ["expand"]
       16 NOT                              R10 R9
       17 NOT                              R8 R10
       18 CALL                             R3 5 1
       19 CONCAT                           R0 R1 R3
       20 RETURN                           R0 1

PROTO_40:
        0 DUPTABLE                         R3 K3 [{"comment", "isNot", "promise"}]
        1 LOADK                            R4 K4 ["deep equality"]
        2 SETTABLEKS                       R4 R3 K0 ["comment"]
        4 GETTABLEKS                       R4 R0 K1 ["isNot"]
        6 SETTABLEKS                       R4 R3 K1 ["isNot"]
        8 GETTABLEKS                       R4 R0 K2 ["promise"]
       10 SETTABLEKS                       R4 R3 K2 ["promise"]
       12 GETUPVAL                         R4 0
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 NEWTABLE                         R7 0 1
       17 GETUPVAL                         R8 1
       18 SETLIST                          R7 R8 1 [1]
       20 CALL                             R4 3 1
       21 LOADNIL                          R5
       22 JUMPIFNOT                        R4 ; [+9]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U5
       31 JUMP                             ; [+7]
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 DUPTABLE                         R6 K10 [{"actual", "expected", "message", "name", "pass"}]
       40 SETTABLEKS                       R1 R6 K5 ["actual"]
       42 SETTABLEKS                       R2 R6 K6 ["expected"]
       44 SETTABLEKS                       R5 R6 K7 ["message"]
       46 LOADK                            R7 K11 ["toEqual"]
       47 SETTABLEKS                       R7 R6 K8 ["name"]
       49 SETTABLEKS                       R4 R6 K9 ["pass"]
       51 RETURN                           R6 1

PROTO_41:
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["Received %s"]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R3 1
        5 CALL                             R2 1 -1
        6 CALL                             R0 -1 1
        7 GETUPVAL                         R1 2
        8 LOADK                            R2 K4 ["Expected length"]
        9 LOADK                            R3 K5 ["Received length"]
       10 MOVE                             R4 R0
       11 CALL                             R1 3 1
       12 GETUPVAL                         R6 3
       13 LOADK                            R7 K6 ["toHaveLength"]
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 GETUPVAL                         R10 4
       17 CALL                             R6 4 1
       18 MOVE                             R3 R6
       19 LOADK                            R4 K7 ["\n\n"]
       20 GETIMPORT                        R5 K2 [string.format]
       22 LOADK                            R6 K8 ["%s%s%s\n"]
       23 MOVE                             R7 R1
       24 LOADK                            R8 K4 ["Expected length"]
       25 CALL                             R7 1 1
       26 GETUPVAL                         R9 5
       27 JUMPIFNOT                        R9 ; [+2]
       28 LOADK                            R8 K9 ["never "]
       29 JUMP                             ; [+1]
       30 LOADK                            R8 K10 [""]
       31 GETUPVAL                         R9 6
       32 GETUPVAL                         R10 7
       33 CALL                             R9 1 -1
       34 CALL                             R5 -1 1
       35 CONCAT                           R2 R3 R5
       36 GETUPVAL                         R3 5
       37 JUMPIF                           R3 ; [+12]
       38 MOVE                             R3 R2
       39 GETIMPORT                        R4 K2 [string.format]
       41 LOADK                            R5 K11 ["%s%s\n"]
       42 MOVE                             R6 R1
       43 LOADK                            R7 K5 ["Received length"]
       44 CALL                             R6 1 1
       45 GETUPVAL                         R7 8
       46 GETUPVAL                         R8 9
       47 CALL                             R7 1 -1
       48 CALL                             R4 -1 1
       49 CONCAT                           R2 R3 R4
       50 MOVE                             R4 R2
       51 GETIMPORT                        R5 K2 [string.format]
       53 LOADK                            R6 K12 ["%s%s%s"]
       54 MOVE                             R7 R1
       55 MOVE                             R8 R0
       56 CALL                             R7 1 1
       57 GETUPVAL                         R9 5
       58 JUMPIFNOT                        R9 ; [+2]
       59 LOADK                            R8 K13 ["      "]
       60 JUMP                             ; [+1]
       61 LOADK                            R8 K10 [""]
       62 GETUPVAL                         R9 8
       63 GETUPVAL                         R10 1
       64 CALL                             R9 1 -1
       65 CALL                             R5 -1 1
       66 CONCAT                           R3 R4 R5
       67 RETURN                           R3 1

PROTO_42:
        0 GETTABLEKS                       R3 R0 K0 ["isNot"]
        2 DUPTABLE                         R4 K2 [{"isNot", "promise"}]
        3 SETTABLEKS                       R3 R4 K0 ["isNot"]
        5 GETTABLEKS                       R5 R0 K1 ["promise"]
        7 SETTABLEKS                       R5 R4 K1 ["promise"]
        9 LOADB                            R5 0
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R7 R1
       12 GETIMPORT                        R6 K4 [typeof]
       14 CALL                             R6 1 1
       15 JUMPIFNOTEQKS                    R6 K5 ["table"] ; [+11]
       17 GETTABLEKS                       R7 R1 K6 ["length"]
       19 FASTCALL1                        TYPEOF R7 ; [+2]
       20 GETIMPORT                        R6 K4 [typeof]
       22 CALL                             R6 1 1
       23 JUMPIFEQKS                       R6 K7 ["number"] ; [+2]
       25 LOADB                            R5 0 +1
       26 LOADB                            R5 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K8 ["isArray"]
       30 MOVE                             R7 R1
       31 CALL                             R6 1 1
       32 JUMPIF                           R6 ; [+33]
       33 FASTCALL1                        TYPEOF R1 ; [+3]
       34 MOVE                             R7 R1
       35 GETIMPORT                        R6 K4 [typeof]
       37 CALL                             R6 1 1
       38 JUMPIFEQKS                       R6 K9 ["string"] ; [+27]
       40 JUMPIF                           R5 ; [+25]
       41 GETIMPORT                        R6 K11 [error]
       43 GETUPVAL                         R7 1
       44 GETUPVAL                         R8 2
       45 GETUPVAL                         R9 3
       46 LOADK                            R10 K12 ["toHaveLength"]
       47 LOADNIL                          R11
       48 LOADNIL                          R12
       49 MOVE                             R13 R4
       50 CALL                             R9 4 1
       51 GETIMPORT                        R10 K14 [string.format]
       53 LOADK                            R11 K15 ["%s value must have a length property whose value must be a number"]
       54 GETUPVAL                         R12 4
       55 LOADK                            R13 K16 ["received"]
       56 CALL                             R12 1 -1
       57 CALL                             R10 -1 1
       58 GETUPVAL                         R11 5
       59 LOADK                            R12 K17 ["Received"]
       60 MOVE                             R13 R1
       61 GETUPVAL                         R14 6
       62 CALL                             R11 3 -1
       63 CALL                             R8 -1 -1
       64 CALL                             R7 -1 -1
       65 CALL                             R6 -1 0
       66 GETUPVAL                         R6 7
       67 MOVE                             R7 R2
       68 LOADK                            R8 K12 ["toHaveLength"]
       69 MOVE                             R9 R4
       70 CALL                             R6 3 0
       71 LOADNIL                          R6
       72 LOADNIL                          R7
       73 GETTABLEKS                       R8 R1 K6 ["length"]
       75 JUMPIFEQKNIL                     R8 ; [+8]
       77 GETTABLEKS                       R7 R1 K6 ["length"]
       79 JUMPIFEQ                         R7 R2 ; [+2]
       81 LOADB                            R6 0 +1
       82 LOADB                            R6 1
       83 JUMP                             ; [+5]
       84 LENGTH                           R7 R1
       85 JUMPIFEQ                         R7 R2 ; [+2]
       87 LOADB                            R6 0 +1
       88 LOADB                            R6 1
       89 NEWCLOSURE                       R8 P0
       90 CAPTURE                          UPVAL U8
       91 CAPTURE                          VAL R1
       92 CAPTURE                          UPVAL U9
       93 CAPTURE                          UPVAL U3
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R3
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          VAL R2
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          REF R7
      100 DUPTABLE                         R9 K20 [{"message", "pass"}]
      101 SETTABLEKS                       R8 R9 K18 ["message"]
      103 SETTABLEKS                       R6 R9 K19 ["pass"]
      105 CLOSEUPVALS                      R7
      106 RETURN                           R9 1

PROTO_43:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["toHaveProperty"]
        2 LOADNIL                          R5
        3 LOADK                            R6 K1 ["path"]
        4 GETUPVAL                         R7 1
        5 CALL                             R3 4 1
        6 MOVE                             R1 R3
        7 LOADK                            R2 K2 ["\n\n"]
        8 CONCAT                           R0 R1 R2
        9 GETUPVAL                         R1 2
       10 JUMPIFNOT                        R1 ; [+36]
       11 MOVE                             R1 R0
       12 GETIMPORT                        R4 K5 [string.format]
       14 LOADK                            R5 K6 ["Expected path: %s\n\n"]
       15 GETUPVAL                         R6 3
       16 GETUPVAL                         R7 4
       17 CALL                             R6 1 -1
       18 CALL                             R4 -1 1
       19 MOVE                             R2 R4
       20 GETIMPORT                        R3 K5 [string.format]
       22 LOADK                            R4 K7 ["Expected value: never %s"]
       23 GETUPVAL                         R5 3
       24 GETUPVAL                         R6 5
       25 CALL                             R5 1 -1
       26 CALL                             R3 -1 1
       27 CONCAT                           R0 R1 R3
       28 GETUPVAL                         R1 6
       29 GETUPVAL                         R2 5
       30 CALL                             R1 1 1
       31 GETUPVAL                         R2 6
       32 GETUPVAL                         R3 7
       33 CALL                             R2 1 1
       34 JUMPIFEQ                         R1 R2 ; [+11]
       36 MOVE                             R2 R0
       37 GETIMPORT                        R3 K5 [string.format]
       39 LOADK                            R4 K8 ["\nReceived value:       %s"]
       40 GETUPVAL                         R5 8
       41 GETUPVAL                         R6 7
       42 CALL                             R5 1 -1
       43 CALL                             R3 -1 1
       44 CONCAT                           R1 R2 R3
       45 RETURN                           R1 1
       46 RETURN                           R0 1
       47 MOVE                             R2 R0
       48 GETIMPORT                        R5 K5 [string.format]
       50 LOADK                            R6 K9 ["Expected path: never %s\n\n"]
       51 GETUPVAL                         R7 3
       52 GETUPVAL                         R8 4
       53 CALL                             R7 1 -1
       54 CALL                             R5 -1 1
       55 MOVE                             R3 R5
       56 GETIMPORT                        R4 K5 [string.format]
       58 LOADK                            R5 K10 ["Received value: %s"]
       59 GETUPVAL                         R6 8
       60 GETUPVAL                         R7 7
       61 CALL                             R6 1 -1
       62 CALL                             R4 -1 1
       63 CONCAT                           R1 R2 R4
       64 RETURN                           R1 1

PROTO_44:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toHaveProperty"]
        2 LOADNIL                          R6
        3 LOADK                            R7 K1 ["path"]
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K2 ["\n\n"]
        8 GETIMPORT                        R3 K5 [string.format]
       10 LOADK                            R4 K6 ["Expected path: %s\n"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 GETUPVAL                         R1 4
       17 JUMPIFNOT                        R1 ; [+15]
       18 MOVE                             R2 R0
       19 LOADK                            R3 K7 ["\n"]
       20 GETUPVAL                         R4 5
       21 GETUPVAL                         R5 6
       22 GETUPVAL                         R6 7
       23 LOADK                            R7 K8 ["Expected value"]
       24 LOADK                            R8 K9 ["Received value"]
       25 GETUPVAL                         R10 8
       26 GETTABLEKS                       R10 R10 K10 ["expand"]
       28 NOT                              R11 R10
       29 NOT                              R9 R11
       30 CALL                             R4 5 1
       31 CONCAT                           R1 R2 R4
       32 RETURN                           R1 1
       33 MOVE                             R1 R0
       34 LOADK                            R2 K11 ["Received path: "]
       35 CONCAT                           R0 R1 R2
       36 GETUPVAL                         R1 9
       37 JUMPIFEQKS                       R1 K12 ["table"] ; [+5]
       39 GETUPVAL                         R2 10
       40 LENGTH                           R1 R2
       41 JUMPIFNOTEQKN                    R1 K13 [0] ; [+11]
       43 MOVE                             R1 R0
       44 GETIMPORT                        R2 K5 [string.format]
       46 LOADK                            R3 K14 ["%s\n\n"]
       47 GETUPVAL                         R4 11
       48 GETUPVAL                         R5 10
       49 CALL                             R4 1 -1
       50 CALL                             R2 -1 1
       51 CONCAT                           R0 R1 R2
       52 JUMP                             ; [+13]
       53 MOVE                             R1 R0
       54 GETIMPORT                        R2 K5 [string.format]
       56 LOADK                            R3 K14 ["%s\n\n"]
       57 GETUPVAL                         R4 11
       58 GETIMPORT                        R5 K16 [table.concat]
       60 GETUPVAL                         R6 10
       61 LOADK                            R7 K17 ["."]
       62 CALL                             R5 2 -1
       63 CALL                             R4 -1 -1
       64 CALL                             R2 -1 1
       65 CONCAT                           R0 R1 R2
       66 GETUPVAL                         R1 12
       67 JUMPIFNOT                        R1 ; [+9]
       68 MOVE                             R1 R0
       69 GETIMPORT                        R2 K5 [string.format]
       71 LOADK                            R3 K18 ["Expected value: %s\n"]
       72 GETUPVAL                         R4 2
       73 GETUPVAL                         R5 6
       74 CALL                             R4 1 -1
       75 CALL                             R2 -1 1
       76 CONCAT                           R0 R1 R2
       77 MOVE                             R2 R0
       78 GETIMPORT                        R3 K5 [string.format]
       80 LOADK                            R4 K19 ["Received value: %s"]
       81 GETUPVAL                         R5 11
       82 GETUPVAL                         R6 7
       83 CALL                             R5 1 -1
       84 CALL                             R3 -1 1
       85 CONCAT                           R1 R2 R3
       86 RETURN                           R1 1

PROTO_45:
        0 JUMPIFNOTEQKNIL                  R3 ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 DUPTABLE                         R5 K3 [{"isNot", "promise", "secondArgument"}]
        5 GETTABLEKS                       R6 R0 K0 ["isNot"]
        7 SETTABLEKS                       R6 R5 K0 ["isNot"]
        9 GETTABLEKS                       R6 R0 K1 ["promise"]
       11 SETTABLEKS                       R6 R5 K1 ["promise"]
       13 JUMPIFNOT                        R4 ; [+2]
       14 LOADK                            R6 K4 ["value"]
       15 JUMP                             ; [+1]
       16 LOADK                            R6 K5 [""]
       17 SETTABLEKS                       R6 R5 K2 ["secondArgument"]
       19 JUMPIFNOTEQKNIL                  R1 ; [+26]
       21 GETIMPORT                        R6 K7 [error]
       23 GETUPVAL                         R7 0
       24 GETUPVAL                         R8 1
       25 GETUPVAL                         R9 2
       26 LOADK                            R10 K8 ["toHaveProperty"]
       27 LOADNIL                          R11
       28 LOADK                            R12 K9 ["path"]
       29 MOVE                             R13 R5
       30 CALL                             R9 4 1
       31 GETIMPORT                        R10 K12 [string.format]
       33 LOADK                            R11 K13 ["%s value must not be nil"]
       34 GETUPVAL                         R12 3
       35 LOADK                            R13 K14 ["received"]
       36 CALL                             R12 1 -1
       37 CALL                             R10 -1 1
       38 GETUPVAL                         R11 4
       39 LOADK                            R12 K15 ["Received"]
       40 MOVE                             R13 R1
       41 GETUPVAL                         R14 5
       42 CALL                             R11 3 -1
       43 CALL                             R8 -1 -1
       44 CALL                             R7 -1 -1
       45 CALL                             R6 -1 0
       46 GETUPVAL                         R6 6
       47 MOVE                             R7 R2
       48 CALL                             R6 1 1
       49 JUMPIFEQKS                       R6 K10 ["string"] ; [+28]
       51 JUMPIFEQKS                       R6 K16 ["table"] ; [+26]
       53 GETIMPORT                        R7 K7 [error]
       55 GETUPVAL                         R8 0
       56 GETUPVAL                         R9 1
       57 GETUPVAL                         R10 2
       58 LOADK                            R11 K8 ["toHaveProperty"]
       59 LOADNIL                          R12
       60 LOADK                            R13 K9 ["path"]
       61 MOVE                             R14 R5
       62 CALL                             R10 4 1
       63 GETIMPORT                        R11 K12 [string.format]
       65 LOADK                            R12 K17 ["%s path must be a string or array"]
       66 GETUPVAL                         R13 7
       67 LOADK                            R14 K18 ["expected"]
       68 CALL                             R13 1 -1
       69 CALL                             R11 -1 1
       70 GETUPVAL                         R12 4
       71 LOADK                            R13 K19 ["Expected"]
       72 MOVE                             R14 R2
       73 GETUPVAL                         R15 8
       74 CALL                             R12 3 -1
       75 CALL                             R9 -1 -1
       76 CALL                             R8 -1 -1
       77 CALL                             R7 -1 0
       78 LOADNIL                          R7
       79 FASTCALL1                        TYPEOF R2 ; [+3]
       80 MOVE                             R9 R2
       81 GETIMPORT                        R8 K21 [typeof]
       83 CALL                             R8 1 1
       84 JUMPIFNOTEQKS                    R8 K10 ["string"] ; [+6]
       86 GETUPVAL                         R8 9
       87 MOVE                             R9 R2
       88 CALL                             R8 1 1
       89 LENGTH                           R7 R8
       90 JUMP                             ; [+1]
       91 LENGTH                           R7 R2
       92 JUMPIFNOTEQKS                    R6 K16 ["table"] ; [+28]
       94 JUMPIFNOTEQKN                    R7 K22 [0] ; [+26]
       96 GETIMPORT                        R8 K7 [error]
       98 GETUPVAL                         R9 0
       99 GETUPVAL                         R10 1
      100 GETUPVAL                         R11 2
      101 LOADK                            R12 K8 ["toHaveProperty"]
      102 LOADNIL                          R13
      103 LOADK                            R14 K9 ["path"]
      104 MOVE                             R15 R5
      105 CALL                             R11 4 1
      106 GETIMPORT                        R12 K12 [string.format]
      108 LOADK                            R13 K23 ["%s path must not be an empty array"]
      109 GETUPVAL                         R14 7
      110 LOADK                            R15 K18 ["expected"]
      111 CALL                             R14 1 -1
      112 CALL                             R12 -1 1
      113 GETUPVAL                         R13 4
      114 LOADK                            R14 K19 ["Expected"]
      115 MOVE                             R15 R2
      116 GETUPVAL                         R16 8
      117 CALL                             R13 3 -1
      118 CALL                             R10 -1 -1
      119 CALL                             R9 -1 -1
      120 CALL                             R8 -1 0
      121 GETUPVAL                         R8 10
      122 MOVE                             R9 R1
      123 MOVE                             R10 R2
      124 CALL                             R8 2 1
      125 GETTABLEKS                       R9 R8 K24 ["lastTraversedObject"]
      127 GETTABLEKS                       R10 R8 K25 ["hasEndProp"]
      129 GETTABLEKS                       R11 R8 K26 ["traversedPath"]
      131 LENGTH                           R13 R11
      132 JUMPIFEQ                         R13 R7 ; [+2]
      134 LOADB                            R12 0 +1
      135 LOADB                            R12 1
      136 LOADNIL                          R13
      137 JUMPIFNOT                        R12 ; [+3]
      138 GETTABLEKS                       R13 R8 K4 ["value"]
      140 JUMP                             ; [+1]
      141 MOVE                             R13 R9
      142 LOADNIL                          R14
      143 JUMPIFNOT                        R4 ; [+12]
      144 GETUPVAL                         R15 11
      145 GETTABLEKS                       R16 R8 K4 ["value"]
      147 MOVE                             R17 R3
      148 NEWTABLE                         R18 0 1
      150 GETUPVAL                         R19 12
      151 SETLIST                          R18 R19 1 [1]
      153 CALL                             R15 3 1
      154 MOVE                             R14 R15
      155 JUMP                             ; [+2]
      156 NOT                              R15 R10
      157 NOT                              R14 R15
      158 LOADNIL                          R15
      159 JUMPIFNOT                        R14 ; [+11]
      160 NEWCLOSURE                       R15 P0
      161 CAPTURE                          UPVAL U2
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R4
      164 CAPTURE                          UPVAL U8
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R3
      167 CAPTURE                          UPVAL U13
      168 CAPTURE                          REF R13
      169 CAPTURE                          UPVAL U5
      170 JUMP                             ; [+14]
      171 NEWCLOSURE                       R15 P1
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          VAL R5
      174 CAPTURE                          UPVAL U8
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R12
      177 CAPTURE                          UPVAL U14
      178 CAPTURE                          VAL R3
      179 CAPTURE                          REF R13
      180 CAPTURE                          VAL R0
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R11
      183 CAPTURE                          UPVAL U5
      184 CAPTURE                          VAL R4
      185 DUPTABLE                         R16 K29 [{"message", "pass"}]
      186 SETTABLEKS                       R15 R16 K27 ["message"]
      188 SETTABLEKS                       R14 R16 K28 ["pass"]
      190 CLOSEUPVALS                      R13
      191 RETURN                           R16 1

PROTO_46:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toMatch"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETIMPORT                        R3 K4 [string.format]
       10 LOADK                            R4 K5 ["Expected pattern: never %s\n"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 GETUPVAL                         R2 3
       17 FASTCALL1                        TYPEOF R2 ; [+2]
       18 GETIMPORT                        R1 K7 [typeof]
       20 CALL                             R1 1 1
       21 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+18]
       23 MOVE                             R1 R0
       24 GETIMPORT                        R2 K4 [string.format]
       26 LOADK                            R3 K8 ["Received string:        %s"]
       27 GETUPVAL                         R4 4
       28 GETUPVAL                         R5 5
       29 GETUPVAL                         R6 5
       30 GETUPVAL                         R8 3
       31 NAMECALL                         R6 R6 K9 ["find"]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R8 3
       35 LENGTH                           R7 R8
       36 CALL                             R4 3 -1
       37 CALL                             R2 -1 1
       38 CONCAT                           R0 R1 R2
       39 RETURN                           R0 1
       40 MOVE                             R1 R0
       41 GETIMPORT                        R2 K4 [string.format]
       43 LOADK                            R3 K8 ["Received string:        %s"]
       44 GETUPVAL                         R4 6
       45 GETUPVAL                         R5 5
       46 GETUPVAL                         R6 3
       47 GETUPVAL                         R8 5
       48 NAMECALL                         R6 R6 K10 ["exec"]
       50 CALL                             R6 2 -1
       51 CALL                             R4 -1 -1
       52 CALL                             R2 -1 1
       53 CONCAT                           R0 R1 R2
       54 RETURN                           R0 1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Expected pattern"]
        2 LOADK                            R2 K1 ["Received string"]
        3 CALL                             R0 2 1
        4 GETUPVAL                         R6 1
        5 LOADK                            R7 K2 ["toMatch"]
        6 LOADNIL                          R8
        7 LOADNIL                          R9
        8 GETUPVAL                         R10 2
        9 CALL                             R6 4 1
       10 MOVE                             R2 R6
       11 LOADK                            R3 K3 ["\n\n"]
       12 GETIMPORT                        R6 K6 [string.format]
       14 LOADK                            R7 K7 ["%s%s\n"]
       15 MOVE                             R8 R0
       16 LOADK                            R9 K0 ["Expected pattern"]
       17 CALL                             R8 1 1
       18 GETUPVAL                         R9 3
       19 GETUPVAL                         R10 4
       20 CALL                             R9 1 -1
       21 CALL                             R6 -1 1
       22 MOVE                             R4 R6
       23 GETIMPORT                        R5 K6 [string.format]
       25 LOADK                            R6 K8 ["%s%s"]
       26 MOVE                             R7 R0
       27 LOADK                            R8 K1 ["Received string"]
       28 CALL                             R7 1 1
       29 GETUPVAL                         R8 5
       30 GETUPVAL                         R9 6
       31 CALL                             R8 1 -1
       32 CALL                             R5 -1 1
       33 CONCAT                           R1 R2 R5
       34 RETURN                           R1 1

PROTO_48:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R5 R1
       11 GETIMPORT                        R4 K4 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFEQKS                       R4 K5 ["string"] ; [+26]
       16 GETIMPORT                        R4 K7 [error]
       18 GETUPVAL                         R5 0
       19 GETUPVAL                         R6 1
       20 GETUPVAL                         R7 2
       21 LOADK                            R8 K8 ["toMatch"]
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 MOVE                             R11 R3
       25 CALL                             R7 4 1
       26 GETIMPORT                        R8 K10 [string.format]
       28 LOADK                            R9 K11 ["%s value must be a string"]
       29 GETUPVAL                         R10 3
       30 LOADK                            R11 K12 ["received"]
       31 CALL                             R10 1 -1
       32 CALL                             R8 -1 1
       33 GETUPVAL                         R9 4
       34 LOADK                            R10 K13 ["Received"]
       35 MOVE                             R11 R1
       36 GETUPVAL                         R12 5
       37 CALL                             R9 3 -1
       38 CALL                             R6 -1 -1
       39 CALL                             R5 -1 -1
       40 CALL                             R4 -1 0
       41 FASTCALL1                        TYPEOF R2 ; [+3]
       42 MOVE                             R5 R2
       43 GETIMPORT                        R4 K4 [typeof]
       45 CALL                             R4 1 1
       46 JUMPIFEQKS                       R4 K5 ["string"] ; [+31]
       48 GETUPVAL                         R4 6
       49 MOVE                             R5 R2
       50 CALL                             R4 1 1
       51 JUMPIFEQKS                       R4 K14 ["regexp"] ; [+26]
       53 GETIMPORT                        R4 K7 [error]
       55 GETUPVAL                         R5 0
       56 GETUPVAL                         R6 1
       57 GETUPVAL                         R7 2
       58 LOADK                            R8 K8 ["toMatch"]
       59 LOADNIL                          R9
       60 LOADNIL                          R10
       61 MOVE                             R11 R3
       62 CALL                             R7 4 1
       63 GETIMPORT                        R8 K10 [string.format]
       65 LOADK                            R9 K15 ["%s value must be a string or regular expression"]
       66 GETUPVAL                         R10 7
       67 LOADK                            R11 K16 ["expected"]
       68 CALL                             R10 1 -1
       69 CALL                             R8 -1 1
       70 GETUPVAL                         R9 4
       71 LOADK                            R10 K17 ["Expected"]
       72 MOVE                             R11 R2
       73 GETUPVAL                         R12 8
       74 CALL                             R9 3 -1
       75 CALL                             R6 -1 -1
       76 CALL                             R5 -1 -1
       77 CALL                             R4 -1 0
       78 LOADNIL                          R4
       79 FASTCALL1                        TYPEOF R2 ; [+3]
       80 MOVE                             R6 R2
       81 GETIMPORT                        R5 K4 [typeof]
       83 CALL                             R5 1 1
       84 JUMPIFNOTEQKS                    R5 K5 ["string"] ; [+17]
       86 GETIMPORT                        R5 K19 [string.gsub]
       88 MOVE                             R6 R2
       89 LOADK                            R7 K20 ["\x%["]
       90 LOADK                            R8 K21 ["\x%%["]
       91 CALL                             R5 3 1
       92 MOVE                             R2 R5
       93 MOVE                             R7 R2
       94 NAMECALL                         R5 R1 K22 ["find"]
       96 CALL                             R5 2 1
       97 JUMPIFNOTEQKNIL                  R5 ; [+2]
       99 LOADB                            R4 0 +1
      100 LOADB                            R4 1
      101 JUMP                             ; [+5]
      102 MOVE                             R7 R1
      103 NAMECALL                         R5 R2 K23 ["test"]
      105 CALL                             R5 2 1
      106 MOVE                             R4 R5
      107 LOADNIL                          R5
      108 JUMPIFNOT                        R4 ; [+9]
      109 NEWCLOSURE                       R5 P0
      110 CAPTURE                          UPVAL U2
      111 CAPTURE                          VAL R3
      112 CAPTURE                          UPVAL U8
      113 CAPTURE                          REF R2
      114 CAPTURE                          UPVAL U9
      115 CAPTURE                          VAL R1
      116 CAPTURE                          UPVAL U10
      117 JUMP                             ; [+8]
      118 NEWCLOSURE                       R5 P1
      119 CAPTURE                          UPVAL U11
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          VAL R3
      122 CAPTURE                          UPVAL U8
      123 CAPTURE                          REF R2
      124 CAPTURE                          UPVAL U5
      125 CAPTURE                          VAL R1
      126 DUPTABLE                         R6 K26 [{"message", "pass"}]
      127 SETTABLEKS                       R5 R6 K24 ["message"]
      129 SETTABLEKS                       R4 R6 K25 ["pass"]
      131 CLOSEUPVALS                      R2
      132 RETURN                           R6 1

PROTO_49:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toMatchObject"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETIMPORT                        R3 K4 [string.format]
       10 LOADK                            R4 K5 ["Expected: never %s"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R2 3
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 4
       20 GETUPVAL                         R3 5
       21 CALL                             R2 1 1
       22 JUMPIFEQ                         R1 R2 ; [+11]
       24 MOVE                             R2 R0
       25 GETIMPORT                        R3 K4 [string.format]
       27 LOADK                            R4 K6 ["\nReceived:       %s"]
       28 GETUPVAL                         R5 6
       29 GETUPVAL                         R6 5
       30 CALL                             R5 1 -1
       31 CALL                             R3 -1 1
       32 CONCAT                           R1 R2 R3
       33 RETURN                           R1 1
       34 RETURN                           R0 1

PROTO_50:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toMatchObject"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETUPVAL                         R5 4
       11 GETUPVAL                         R6 5
       12 GETUPVAL                         R7 3
       13 CALL                             R5 2 1
       14 LOADK                            R6 K2 ["Expected"]
       15 LOADK                            R7 K3 ["Received"]
       16 GETUPVAL                         R9 6
       17 GETTABLEKS                       R9 R9 K4 ["expand"]
       19 NOT                              R10 R9
       20 NOT                              R8 R10
       21 CALL                             R3 5 1
       22 CONCAT                           R0 R1 R3
       23 RETURN                           R0 1

PROTO_51:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R5 R1
       11 GETIMPORT                        R4 K4 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K5 ["table"] ; [+3]
       16 JUMPIFNOTEQKNIL                  R1 ; [+26]
       18 GETIMPORT                        R4 K7 [error]
       20 GETUPVAL                         R5 0
       21 GETUPVAL                         R6 1
       22 GETUPVAL                         R7 2
       23 LOADK                            R8 K8 ["toMatchObject"]
       24 LOADNIL                          R9
       25 LOADNIL                          R10
       26 MOVE                             R11 R3
       27 CALL                             R7 4 1
       28 GETIMPORT                        R8 K11 [string.format]
       30 LOADK                            R9 K12 ["%s value must be a non-nil object"]
       31 GETUPVAL                         R10 3
       32 LOADK                            R11 K13 ["received"]
       33 CALL                             R10 1 -1
       34 CALL                             R8 -1 1
       35 GETUPVAL                         R9 4
       36 LOADK                            R10 K14 ["Received"]
       37 MOVE                             R11 R1
       38 GETUPVAL                         R12 5
       39 CALL                             R9 3 -1
       40 CALL                             R6 -1 -1
       41 CALL                             R5 -1 -1
       42 CALL                             R4 -1 0
       43 FASTCALL1                        TYPEOF R2 ; [+3]
       44 MOVE                             R5 R2
       45 GETIMPORT                        R4 K4 [typeof]
       47 CALL                             R4 1 1
       48 JUMPIFNOTEQKS                    R4 K5 ["table"] ; [+3]
       50 JUMPIFNOTEQKNIL                  R2 ; [+26]
       52 GETIMPORT                        R4 K7 [error]
       54 GETUPVAL                         R5 0
       55 GETUPVAL                         R6 1
       56 GETUPVAL                         R7 2
       57 LOADK                            R8 K8 ["toMatchObject"]
       58 LOADNIL                          R9
       59 LOADNIL                          R10
       60 MOVE                             R11 R3
       61 CALL                             R7 4 1
       62 GETIMPORT                        R8 K11 [string.format]
       64 LOADK                            R9 K12 ["%s value must be a non-nil object"]
       65 GETUPVAL                         R10 6
       66 LOADK                            R11 K15 ["expected"]
       67 CALL                             R10 1 -1
       68 CALL                             R8 -1 1
       69 GETUPVAL                         R9 4
       70 LOADK                            R10 K16 ["Expected"]
       71 MOVE                             R11 R2
       72 GETUPVAL                         R12 7
       73 CALL                             R9 3 -1
       74 CALL                             R6 -1 -1
       75 CALL                             R5 -1 -1
       76 CALL                             R4 -1 0
       77 GETUPVAL                         R4 8
       78 MOVE                             R5 R1
       79 MOVE                             R6 R2
       80 NEWTABLE                         R7 0 2
       82 GETUPVAL                         R8 9
       83 GETUPVAL                         R9 10
       84 SETLIST                          R7 R8 2 [1]
       86 CALL                             R4 3 1
       87 LOADNIL                          R5
       88 JUMPIFNOT                        R4 ; [+9]
       89 NEWCLOSURE                       R5 P0
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          VAL R3
       92 CAPTURE                          UPVAL U7
       93 CAPTURE                          VAL R2
       94 CAPTURE                          UPVAL U11
       95 CAPTURE                          VAL R1
       96 CAPTURE                          UPVAL U5
       97 JUMP                             ; [+8]
       98 NEWCLOSURE                       R5 P1
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          VAL R3
      101 CAPTURE                          UPVAL U12
      102 CAPTURE                          VAL R2
      103 CAPTURE                          UPVAL U13
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R0
      106 DUPTABLE                         R6 K19 [{"message", "pass"}]
      107 SETTABLEKS                       R5 R6 K17 ["message"]
      109 SETTABLEKS                       R4 R6 K18 ["pass"]
      111 RETURN                           R6 1

PROTO_52:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toStrictEqual"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETIMPORT                        R3 K4 [string.format]
       10 LOADK                            R4 K5 ["Expected: not %s\n"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R2 3
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 4
       20 GETUPVAL                         R3 5
       21 CALL                             R2 1 1
       22 JUMPIFEQ                         R1 R2 ; [+10]
       24 MOVE                             R1 R0
       25 GETIMPORT                        R2 K4 [string.format]
       27 LOADK                            R3 K6 ["Received:     %s"]
       28 GETUPVAL                         R4 6
       29 GETUPVAL                         R5 5
       30 CALL                             R4 1 -1
       31 CALL                             R2 -1 1
       32 CONCAT                           R0 R1 R2
       33 RETURN                           R0 1

PROTO_53:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toStrictEqual"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETUPVAL                         R5 4
       11 LOADK                            R6 K2 ["Expected"]
       12 LOADK                            R7 K3 ["Received"]
       13 GETUPVAL                         R9 5
       14 GETTABLEKS                       R9 R9 K4 ["expand"]
       16 NOT                              R10 R9
       17 NOT                              R8 R10
       18 CALL                             R3 5 1
       19 CONCAT                           R0 R1 R3
       20 RETURN                           R0 1

PROTO_54:
        0 DUPTABLE                         R3 K3 [{"comment", "isNot", "promise"}]
        1 LOADK                            R4 K4 ["deep equality"]
        2 SETTABLEKS                       R4 R3 K0 ["comment"]
        4 GETTABLEKS                       R4 R0 K1 ["isNot"]
        6 SETTABLEKS                       R4 R3 K1 ["isNot"]
        8 GETTABLEKS                       R4 R0 K2 ["promise"]
       10 SETTABLEKS                       R4 R3 K2 ["promise"]
       12 GETUPVAL                         R4 0
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 GETUPVAL                         R7 1
       16 LOADB                            R8 1
       17 CALL                             R4 4 1
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R4 ; [+9]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U5
       28 JUMP                             ; [+7]
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R0
       36 DUPTABLE                         R6 K10 [{"actual", "expected", "message", "name", "pass"}]
       37 SETTABLEKS                       R1 R6 K5 ["actual"]
       39 SETTABLEKS                       R2 R6 K6 ["expected"]
       41 SETTABLEKS                       R5 R6 K7 ["message"]
       43 LOADK                            R7 K11 ["toStrictEqual"]
       44 SETTABLEKS                       R7 R6 K8 ["name"]
       46 SETTABLEKS                       R4 R6 K9 ["pass"]
       48 RETURN                           R6 1

PROTO_55:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toMatchInstance"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETIMPORT                        R3 K4 [string.format]
       10 LOADK                            R4 K5 ["Expected: never %s"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 CALL                             R5 1 -1
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R2 3
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 4
       20 GETUPVAL                         R3 5
       21 CALL                             R2 1 1
       22 JUMPIFEQ                         R1 R2 ; [+11]
       24 MOVE                             R2 R0
       25 GETIMPORT                        R3 K4 [string.format]
       27 LOADK                            R4 K6 ["\nReceived:       %s"]
       28 GETUPVAL                         R5 6
       29 GETUPVAL                         R6 5
       30 CALL                             R5 1 -1
       31 CALL                             R3 -1 1
       32 CONCAT                           R1 R2 R3
       33 RETURN                           R1 1
       34 RETURN                           R0 1

PROTO_56:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toMatchInstance"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 GETUPVAL                         R8 1
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETUPVAL                         R5 4
       11 LOADK                            R6 K2 ["Expected"]
       12 LOADK                            R7 K3 ["Received"]
       13 GETUPVAL                         R9 5
       14 GETTABLEKS                       R9 R9 K4 ["expand"]
       16 NOT                              R10 R9
       17 NOT                              R8 R10
       18 CALL                             R3 5 1
       19 CONCAT                           R0 R1 R3
       20 RETURN                           R0 1

PROTO_57:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R1
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K3 ["Instance"] ; [+3]
       14 JUMPIFNOTEQKNIL                  R1 ; [+26]
       16 GETIMPORT                        R4 K5 [error]
       18 GETUPVAL                         R5 1
       19 GETUPVAL                         R6 2
       20 GETUPVAL                         R7 3
       21 LOADK                            R8 K6 ["toMatchInstance"]
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 MOVE                             R11 R3
       25 CALL                             R7 4 1
       26 GETIMPORT                        R8 K9 [string.format]
       28 LOADK                            R9 K10 ["%s value must be a Roblox Instance"]
       29 GETUPVAL                         R10 4
       30 LOADK                            R11 K11 ["received"]
       31 CALL                             R10 1 -1
       32 CALL                             R8 -1 1
       33 GETUPVAL                         R9 5
       34 LOADK                            R10 K12 ["Received"]
       35 MOVE                             R11 R1
       36 GETUPVAL                         R12 6
       37 CALL                             R9 3 -1
       38 CALL                             R6 -1 -1
       39 CALL                             R5 -1 -1
       40 CALL                             R4 -1 0
       41 FASTCALL1                        TYPEOF R2 ; [+3]
       42 MOVE                             R5 R2
       43 GETIMPORT                        R4 K14 [typeof]
       45 CALL                             R4 1 1
       46 JUMPIFNOTEQKS                    R4 K15 ["table"] ; [+3]
       48 JUMPIFNOTEQKNIL                  R2 ; [+26]
       50 GETIMPORT                        R4 K5 [error]
       52 GETUPVAL                         R5 1
       53 GETUPVAL                         R6 2
       54 GETUPVAL                         R7 3
       55 LOADK                            R8 K6 ["toMatchInstance"]
       56 LOADNIL                          R9
       57 LOADNIL                          R10
       58 MOVE                             R11 R3
       59 CALL                             R7 4 1
       60 GETIMPORT                        R8 K9 [string.format]
       62 LOADK                            R9 K16 ["%s value must be a table"]
       63 GETUPVAL                         R10 7
       64 LOADK                            R11 K17 ["expected"]
       65 CALL                             R10 1 -1
       66 CALL                             R8 -1 1
       67 GETUPVAL                         R9 5
       68 LOADK                            R10 K18 ["Expected"]
       69 MOVE                             R11 R2
       70 GETUPVAL                         R12 8
       71 CALL                             R9 3 -1
       72 CALL                             R6 -1 -1
       73 CALL                             R5 -1 -1
       74 CALL                             R4 -1 0
       75 GETUPVAL                         R4 9
       76 MOVE                             R5 R1
       77 MOVE                             R6 R2
       78 NEWTABLE                         R7 0 1
       80 GETUPVAL                         R8 10
       81 SETLIST                          R7 R8 1 [1]
       83 CALL                             R4 3 1
       84 LOADNIL                          R5
       85 JUMPIFNOT                        R4 ; [+9]
       86 NEWCLOSURE                       R5 P0
       87 CAPTURE                          UPVAL U3
       88 CAPTURE                          VAL R3
       89 CAPTURE                          UPVAL U8
       90 CAPTURE                          VAL R2
       91 CAPTURE                          UPVAL U11
       92 CAPTURE                          VAL R1
       93 CAPTURE                          UPVAL U6
       94 JUMP                             ; [+11]
       95 GETUPVAL                         R6 12
       96 MOVE                             R7 R1
       97 MOVE                             R8 R2
       98 CALL                             R6 2 2
       99 NEWCLOSURE                       R5 P1
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          VAL R3
      102 CAPTURE                          UPVAL U13
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R0
      106 DUPTABLE                         R6 K21 [{"message", "pass"}]
      107 SETTABLEKS                       R5 R6 K19 ["message"]
      109 SETTABLEKS                       R4 R6 K20 ["pass"]
      111 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Error"]
       16 GETTABLEKS                       R5 R2 K8 ["Number"]
       18 GETTABLEKS                       R6 R2 K9 ["Object"]
       20 GETTABLEKS                       R7 R2 K10 ["instanceof"]
       22 GETIMPORT                        R8 K4 [require]
       24 GETTABLEKS                       R9 R1 K11 ["RegExp"]
       26 CALL                             R8 1 1
       27 GETIMPORT                        R9 K4 [require]
       29 GETTABLEKS                       R10 R1 K12 ["JestGetType"]
       31 CALL                             R9 1 1
       32 GETTABLEKS                       R10 R9 K13 ["getType"]
       34 GETTABLEKS                       R11 R9 K14 ["isPrimitive"]
       36 GETIMPORT                        R12 K4 [require]
       38 GETTABLEKS                       R13 R1 K15 ["JestMatcherUtils"]
       40 CALL                             R12 1 1
       41 GETTABLEKS                       R13 R12 K16 ["DIM_COLOR"]
       43 GETTABLEKS                       R14 R12 K17 ["EXPECTED_COLOR"]
       45 GETTABLEKS                       R15 R12 K18 ["RECEIVED_COLOR"]
       47 GETTABLEKS                       R16 R12 K19 ["SUGGEST_TO_CONTAIN_EQUAL"]
       49 GETTABLEKS                       R17 R12 K20 ["ensureExpectedIsNonNegativeInteger"]
       51 GETTABLEKS                       R18 R12 K21 ["ensureNoExpected"]
       53 GETTABLEKS                       R19 R12 K22 ["ensureNumbers"]
       55 GETTABLEKS                       R20 R12 K23 ["getLabelPrinter"]
       57 GETTABLEKS                       R21 R12 K24 ["matcherErrorMessage"]
       59 GETTABLEKS                       R22 R12 K25 ["matcherHint"]
       61 GETTABLEKS                       R23 R12 K26 ["printDiffOrStringify"]
       63 GETTABLEKS                       R24 R12 K27 ["printExpected"]
       65 GETTABLEKS                       R25 R12 K28 ["printReceived"]
       67 GETTABLEKS                       R26 R12 K29 ["printWithType"]
       69 GETTABLEKS                       R27 R12 K30 ["stringify"]
       71 GETIMPORT                        R28 K4 [require]
       73 GETTABLEKS                       R29 R0 K31 ["jasmineUtils"]
       75 CALL                             R28 1 1
       76 GETTABLEKS                       R28 R28 K32 ["equals"]
       78 GETIMPORT                        R29 K4 [require]
       80 GETTABLEKS                       R30 R0 K33 ["print"]
       82 CALL                             R29 1 1
       83 GETTABLEKS                       R30 R29 K34 ["printCloseTo"]
       85 GETTABLEKS                       R31 R29 K35 ["printExpectedConstructorName"]
       87 GETTABLEKS                       R32 R29 K36 ["printExpectedConstructorNameNot"]
       89 GETTABLEKS                       R33 R29 K37 ["printReceivedArrayContainExpectedItem"]
       91 GETTABLEKS                       R34 R29 K38 ["printReceivedConstructorName"]
       93 GETTABLEKS                       R35 R29 K39 ["printReceivedConstructorNameNot"]
       95 GETTABLEKS                       R36 R29 K40 ["printReceivedStringContainExpectedResult"]
       97 GETTABLEKS                       R37 R29 K41 ["printReceivedStringContainExpectedSubstring"]
       99 GETIMPORT                        R38 K4 [require]
      101 GETTABLEKS                       R39 R0 K42 ["types"]
      103 CALL                             R38 1 1
      104 GETIMPORT                        R39 K4 [require]
      106 GETTABLEKS                       R40 R0 K43 ["utils"]
      108 CALL                             R39 1 1
      109 GETTABLEKS                       R40 R39 K44 ["getObjectSubset"]
      111 GETTABLEKS                       R41 R39 K45 ["getPath"]
      113 GETTABLEKS                       R42 R39 K46 ["iterableEquality"]
      115 GETTABLEKS                       R43 R39 K47 ["pathAsArray"]
      117 GETTABLEKS                       R44 R39 K48 ["subsetEquality"]
      119 GETTABLEKS                       R45 R39 K49 ["typeEquality"]
      121 GETIMPORT                        R46 K4 [require]
      123 GETTABLEKS                       R47 R1 K50 ["RobloxShared"]
      125 CALL                             R46 1 1
      126 GETTABLEKS                       R47 R46 K51 ["RobloxInstance"]
      128 GETTABLEKS                       R47 R47 K52 ["instanceSubsetEquality"]
      130 GETTABLEKS                       R48 R46 K51 ["RobloxInstance"]
      132 GETTABLEKS                       R48 R48 K53 ["getInstanceSubset"]
      134 DUPCLOSURE                       R49 K54 [PROTO_0]
      135 NEWTABLE                         R50 0 1
      137 MOVE                             R51 R45
      138 SETLIST                          R50 R51 1 [1]
      140 DUPCLOSURE                       R51 K55 [PROTO_3]
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R22
      143 CAPTURE                          VAL R24
      144 CAPTURE                          VAL R28
      145 CAPTURE                          VAL R42
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R23
      148 DUPCLOSURE                       R52 K56 [PROTO_7]
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R21
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R26
      154 CAPTURE                          VAL R24
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R25
      157 CAPTURE                          VAL R30
      158 DUPCLOSURE                       R53 K57 [PROTO_9]
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R25
      162 DUPCLOSURE                       R54 K58 [PROTO_11]
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R25
      166 DUPCLOSURE                       R55 K59 [PROTO_13]
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R22
      169 CAPTURE                          VAL R24
      170 CAPTURE                          VAL R25
      171 DUPCLOSURE                       R56 K60 [PROTO_15]
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R22
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R25
      176 DUPCLOSURE                       R57 K61 [PROTO_18]
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R21
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R26
      182 CAPTURE                          VAL R24
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R32
      185 CAPTURE                          VAL R35
      186 CAPTURE                          VAL R31
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R34
      190 DUPCLOSURE                       R58 K62 [PROTO_20]
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R22
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R25
      195 DUPCLOSURE                       R59 K63 [PROTO_22]
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R24
      199 CAPTURE                          VAL R25
      200 DUPCLOSURE                       R60 K64 [PROTO_24]
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R5
      203 CAPTURE                          VAL R22
      204 CAPTURE                          VAL R25
      205 DUPCLOSURE                       R61 K65 [PROTO_26]
      206 CAPTURE                          VAL R18
      207 CAPTURE                          VAL R22
      208 CAPTURE                          VAL R25
      209 DUPCLOSURE                       R62 K66 [PROTO_28]
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R22
      212 CAPTURE                          VAL R25
      213 DUPCLOSURE                       R63 K67 [PROTO_30]
      214 CAPTURE                          VAL R18
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R25
      217 DUPCLOSURE                       R64 K68 [PROTO_34]
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R21
      220 CAPTURE                          VAL R22
      221 CAPTURE                          VAL R15
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R25
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R24
      226 CAPTURE                          VAL R20
      227 CAPTURE                          VAL R37
      228 CAPTURE                          VAL R3
      229 CAPTURE                          VAL R10
      230 CAPTURE                          VAL R33
      231 CAPTURE                          VAL R28
      232 CAPTURE                          VAL R42
      233 CAPTURE                          VAL R16
      234 DUPCLOSURE                       R65 K69 [PROTO_37]
      235 CAPTURE                          VAL R4
      236 CAPTURE                          VAL R21
      237 CAPTURE                          VAL R22
      238 CAPTURE                          VAL R15
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R25
      241 CAPTURE                          VAL R3
      242 CAPTURE                          VAL R28
      243 CAPTURE                          VAL R42
      244 CAPTURE                          VAL R10
      245 CAPTURE                          VAL R20
      246 CAPTURE                          VAL R24
      247 CAPTURE                          VAL R33
      248 DUPCLOSURE                       R66 K70 [PROTO_40]
      249 CAPTURE                          VAL R28
      250 CAPTURE                          VAL R42
      251 CAPTURE                          VAL R22
      252 CAPTURE                          VAL R24
      253 CAPTURE                          VAL R27
      254 CAPTURE                          VAL R25
      255 CAPTURE                          VAL R23
      256 DUPCLOSURE                       R67 K71 [PROTO_42]
      257 CAPTURE                          VAL R3
      258 CAPTURE                          VAL R4
      259 CAPTURE                          VAL R21
      260 CAPTURE                          VAL R22
      261 CAPTURE                          VAL R15
      262 CAPTURE                          VAL R26
      263 CAPTURE                          VAL R25
      264 CAPTURE                          VAL R17
      265 CAPTURE                          VAL R10
      266 CAPTURE                          VAL R20
      267 CAPTURE                          VAL R24
      268 DUPCLOSURE                       R68 K72 [PROTO_45]
      269 CAPTURE                          VAL R4
      270 CAPTURE                          VAL R21
      271 CAPTURE                          VAL R22
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R26
      274 CAPTURE                          VAL R25
      275 CAPTURE                          VAL R10
      276 CAPTURE                          VAL R14
      277 CAPTURE                          VAL R24
      278 CAPTURE                          VAL R43
      279 CAPTURE                          VAL R41
      280 CAPTURE                          VAL R28
      281 CAPTURE                          VAL R42
      282 CAPTURE                          VAL R27
      283 CAPTURE                          VAL R23
      284 DUPCLOSURE                       R69 K73 [PROTO_48]
      285 CAPTURE                          VAL R4
      286 CAPTURE                          VAL R21
      287 CAPTURE                          VAL R22
      288 CAPTURE                          VAL R15
      289 CAPTURE                          VAL R26
      290 CAPTURE                          VAL R25
      291 CAPTURE                          VAL R10
      292 CAPTURE                          VAL R14
      293 CAPTURE                          VAL R24
      294 CAPTURE                          VAL R37
      295 CAPTURE                          VAL R36
      296 CAPTURE                          VAL R20
      297 DUPCLOSURE                       R70 K74 [PROTO_51]
      298 CAPTURE                          VAL R4
      299 CAPTURE                          VAL R21
      300 CAPTURE                          VAL R22
      301 CAPTURE                          VAL R15
      302 CAPTURE                          VAL R26
      303 CAPTURE                          VAL R25
      304 CAPTURE                          VAL R14
      305 CAPTURE                          VAL R24
      306 CAPTURE                          VAL R28
      307 CAPTURE                          VAL R42
      308 CAPTURE                          VAL R44
      309 CAPTURE                          VAL R27
      310 CAPTURE                          VAL R23
      311 CAPTURE                          VAL R40
      312 DUPCLOSURE                       R71 K75 [PROTO_54]
      313 CAPTURE                          VAL R28
      314 CAPTURE                          VAL R50
      315 CAPTURE                          VAL R22
      316 CAPTURE                          VAL R24
      317 CAPTURE                          VAL R27
      318 CAPTURE                          VAL R25
      319 CAPTURE                          VAL R23
      320 DUPCLOSURE                       R72 K76 [PROTO_57]
      321 CAPTURE                          VAL R10
      322 CAPTURE                          VAL R4
      323 CAPTURE                          VAL R21
      324 CAPTURE                          VAL R22
      325 CAPTURE                          VAL R15
      326 CAPTURE                          VAL R26
      327 CAPTURE                          VAL R25
      328 CAPTURE                          VAL R14
      329 CAPTURE                          VAL R24
      330 CAPTURE                          VAL R28
      331 CAPTURE                          VAL R47
      332 CAPTURE                          VAL R27
      333 CAPTURE                          VAL R48
      334 CAPTURE                          VAL R23
      335 DUPTABLE                         R73 K101 [{"toBe", "toBeCloseTo", "toBeDefined", "toBeFalsy", "toBeGreaterThan", "toBeGreaterThanOrEqual", "toBeInstanceOf", "toBeLessThan", "toBeLessThanOrEqual", "toBeNan", "toBeNaN", "toBeNil", "toBeNull", "toBeTruthy", "toBeUndefined", "toContain", "toContainEqual", "toEqual", "toHaveLength", "toHaveProperty", "toMatch", "toMatchObject", "toStrictEqual", "toMatchInstance"}]
      336 SETTABLEKS                       R51 R73 K77 ["toBe"]
      338 SETTABLEKS                       R52 R73 K78 ["toBeCloseTo"]
      340 SETTABLEKS                       R53 R73 K79 ["toBeDefined"]
      342 SETTABLEKS                       R54 R73 K80 ["toBeFalsy"]
      344 SETTABLEKS                       R55 R73 K81 ["toBeGreaterThan"]
      346 SETTABLEKS                       R56 R73 K82 ["toBeGreaterThanOrEqual"]
      348 SETTABLEKS                       R57 R73 K83 ["toBeInstanceOf"]
      350 SETTABLEKS                       R58 R73 K84 ["toBeLessThan"]
      352 SETTABLEKS                       R59 R73 K85 ["toBeLessThanOrEqual"]
      354 SETTABLEKS                       R60 R73 K86 ["toBeNan"]
      356 SETTABLEKS                       R60 R73 K87 ["toBeNaN"]
      358 SETTABLEKS                       R61 R73 K88 ["toBeNil"]
      360 SETTABLEKS                       R61 R73 K89 ["toBeNull"]
      362 SETTABLEKS                       R62 R73 K90 ["toBeTruthy"]
      364 SETTABLEKS                       R63 R73 K91 ["toBeUndefined"]
      366 SETTABLEKS                       R64 R73 K92 ["toContain"]
      368 SETTABLEKS                       R65 R73 K93 ["toContainEqual"]
      370 SETTABLEKS                       R66 R73 K94 ["toEqual"]
      372 SETTABLEKS                       R67 R73 K95 ["toHaveLength"]
      374 SETTABLEKS                       R68 R73 K96 ["toHaveProperty"]
      376 SETTABLEKS                       R69 R73 K97 ["toMatch"]
      378 SETTABLEKS                       R70 R73 K98 ["toMatchObject"]
      380 SETTABLEKS                       R71 R73 K99 ["toStrictEqual"]
      382 SETTABLEKS                       R72 R73 K100 ["toMatchInstance"]
      384 RETURN                           R73 1
