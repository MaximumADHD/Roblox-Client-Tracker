PROTO_0:
        0 NOT                              R2 R0
        1 NOT                              R1 R2
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBe"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["Expected: never %s"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 RETURN                           R0 1

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
       12 GETUPVAL                         R2 4
       13 LOADK                            R3 K1 ["toBe"]
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 GETUPVAL                         R6 5
       17 CALL                             R2 4 1
       18 LOADK                            R3 K2 ["\n\n"]
       19 CONCAT                           R1 R2 R3
       20 JUMPIFEQKNIL                     R0 ; [+12]
       22 MOVE                             R2 R1
       23 GETUPVAL                         R3 6
       24 GETIMPORT                        R4 K5 [string.format]
       26 LOADK                            R5 K6 ["If it should pass with deep equality, replace \"%s\" with \"%s\""]
       27 LOADK                            R6 K1 ["toBe"]
       28 MOVE                             R7 R0
       29 CALL                             R4 3 -1
       30 CALL                             R3 -1 1
       31 LOADK                            R4 K2 ["\n\n"]
       32 CONCAT                           R1 R2 R4
       33 MOVE                             R3 R1
       34 GETUPVAL                         R4 7
       35 GETUPVAL                         R5 2
       36 GETUPVAL                         R6 1
       37 LOADK                            R7 K7 ["Expected"]
       38 LOADK                            R8 K8 ["Received"]
       39 GETUPVAL                         R10 8
       40 GETTABLEKS                       R10 R10 K9 ["expand"]
       42 NOT                              R11 R10
       43 NOT                              R9 R11
       44 CALL                             R4 5 1
       45 CONCAT                           R2 R3 R4
       46 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R3 K4 [{[1] = "Object.is equality", ["isNot"], ["promise"]}]
        1 GETTABLEKS                       R4 R0 K2 ["isNot"]
        3 SETTABLEKS                       R4 R3 K2 ["isNot"]
        5 GETTABLEKS                       R4 R0 K3 ["promise"]
        7 SETTABLEKS                       R4 R3 K3 ["promise"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K5 ["is"]
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R4 2 1
       15 LOADNIL                          R5
       16 JUMPIFNOT                        R4 ; [+6]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R2
       22 JUMP                             ; [+10]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R0
       33 DUPTABLE                         R6 K12 [{["actual"], ["expected"], ["message"], ["name"] = "toBe", ["pass"]}]
       34 SETTABLEKS                       R1 R6 K6 ["actual"]
       36 SETTABLEKS                       R2 R6 K7 ["expected"]
       38 SETTABLEKS                       R5 R6 K8 ["message"]
       40 SETTABLEKS                       R4 R6 K11 ["pass"]
       42 RETURN                           R6 1

PROTO_4:
        0 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeCloseTo"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["Expected: never %s\n"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 GETUPVAL                         R1 4
       16 JUMPIFNOTEQKN                    R1 K6 [0] ; [+2]
       18 RETURN                           R0 1
       19 MOVE                             R2 R0
       20 GETIMPORT                        R3 K4 [string.format]
       22 LOADK                            R4 K7 ["Received:       %s\n"]
       23 GETUPVAL                         R5 5
       24 GETUPVAL                         R6 6
       25 CALL                             R5 1 -1
       26 CALL                             R3 -1 1
       27 LOADK                            R4 K8 ["\n"]
       28 GETUPVAL                         R5 7
       29 GETUPVAL                         R6 4
       30 GETUPVAL                         R7 8
       31 GETUPVAL                         R8 9
       32 GETUPVAL                         R9 10
       33 CALL                             R5 4 1
       34 CONCAT                           R1 R2 R5
       35 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeCloseTo"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["Expected: %s\n"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 GETIMPORT                        R4 K4 [string.format]
       16 LOADK                            R5 K6 ["Received: %s\n"]
       17 GETUPVAL                         R6 4
       18 GETUPVAL                         R7 5
       19 CALL                             R6 1 -1
       20 CALL                             R4 -1 1
       21 LOADK                            R5 K7 ["\n"]
       22 GETUPVAL                         R6 6
       23 GETUPVAL                         R7 7
       24 GETUPVAL                         R8 8
       25 GETUPVAL                         R9 9
       26 GETUPVAL                         R10 10
       27 CALL                             R6 4 1
       28 CONCAT                           R0 R1 R6
       29 RETURN                           R0 1

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
       86 JUMPIFNOTEQKN                    R1 K21 [Infinity] ; [+5]
       88 JUMPIFNOTEQKN                    R2 K21 [Infinity] ; [+3]
       90 LOADB                            R7 1
       91 JUMP                             ; [+20]
       92 JUMPIFNOTEQKN                    R1 K22 [-Infinity] ; [+5]
       94 JUMPIFNOTEQKN                    R2 K22 [-Infinity] ; [+3]
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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeDefined"]
        2 LOADNIL                          R3
        3 LOADK                            R4 K1 [""]
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K2 ["\n\n"]
        7 GETIMPORT                        R3 K5 [string.format]
        9 LOADK                            R4 K6 ["Received: %s"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeFalsy"]
        2 LOADNIL                          R3
        3 LOADK                            R4 K1 [""]
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K2 ["\n\n"]
        7 GETIMPORT                        R3 K5 [string.format]
        9 LOADK                            R4 K6 ["Received: %s"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeGreaterThan"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["Expected:%s > %s\n"]
       10 GETUPVAL                         R6 2
       11 JUMPIFNOT                        R6 ; [+2]
       12 LOADK                            R5 K6 [" never"]
       13 JUMP                             ; [+1]
       14 LOADK                            R5 K7 [""]
       15 GETUPVAL                         R6 3
       16 GETUPVAL                         R7 4
       17 CALL                             R6 1 -1
       18 CALL                             R3 -1 1
       19 GETIMPORT                        R4 K4 [string.format]
       21 LOADK                            R5 K8 ["Received:%s   %s"]
       22 GETUPVAL                         R7 2
       23 JUMPIFNOT                        R7 ; [+2]
       24 LOADK                            R6 K9 ["      "]
       25 JUMP                             ; [+1]
       26 LOADK                            R6 K7 [""]
       27 GETUPVAL                         R7 5
       28 GETUPVAL                         R8 6
       29 CALL                             R7 1 -1
       30 CALL                             R4 -1 1
       31 CONCAT                           R0 R1 R4
       32 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeGreaterThanOrEqual"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["Expected:%s >= %s\n"]
       10 GETUPVAL                         R6 2
       11 JUMPIFNOT                        R6 ; [+2]
       12 LOADK                            R5 K6 [" never"]
       13 JUMP                             ; [+1]
       14 LOADK                            R5 K7 [""]
       15 GETUPVAL                         R6 3
       16 GETUPVAL                         R7 4
       17 CALL                             R6 1 -1
       18 CALL                             R3 -1 1
       19 GETIMPORT                        R4 K4 [string.format]
       21 LOADK                            R5 K8 ["Received:%s    %s"]
       22 GETUPVAL                         R7 2
       23 JUMPIFNOT                        R7 ; [+2]
       24 LOADK                            R6 K9 ["      "]
       25 JUMP                             ; [+1]
       26 LOADK                            R6 K7 [""]
       27 GETUPVAL                         R7 5
       28 GETUPVAL                         R8 6
       29 CALL                             R7 1 -1
       30 CALL                             R4 -1 1
       31 CONCAT                           R0 R1 R4
       32 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeInstanceOf"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETUPVAL                         R3 2
        8 LOADK                            R4 K2 ["Expected constructor"]
        9 GETUPVAL                         R5 3
       10 CALL                             R3 2 1
       11 CONCAT                           R0 R1 R3
       12 GETUPVAL                         R1 4
       13 JUMPIFNOT                        R1 ; [+11]
       14 GETUPVAL                         R1 4
       15 GETUPVAL                         R2 3
       16 JUMPIFEQ                         R1 R2 ; [+8]
       18 MOVE                             R1 R0
       19 GETUPVAL                         R2 5
       20 LOADK                            R3 K3 ["Received constructor"]
       21 GETUPVAL                         R4 4
       22 GETUPVAL                         R5 3
       23 CALL                             R2 3 1
       24 CONCAT                           R0 R1 R2
       25 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeInstanceOf"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETUPVAL                         R3 2
        8 LOADK                            R4 K2 ["Expected constructor"]
        9 GETUPVAL                         R5 3
       10 CALL                             R3 2 1
       11 CONCAT                           R0 R1 R3
       12 GETUPVAL                         R1 4
       13 GETUPVAL                         R2 5
       14 CALL                             R1 1 1
       15 JUMPIF                           R1 ; [+3]
       16 GETUPVAL                         R1 6
       17 JUMPIFNOTEQKNIL                  R1 ; [+11]
       19 MOVE                             R1 R0
       20 GETIMPORT                        R2 K5 [string.format]
       22 LOADK                            R3 K6 ["\nReceived value has no prototype\nReceived value: %s"]
       23 GETUPVAL                         R4 7
       24 GETUPVAL                         R5 5
       25 CALL                             R4 1 -1
       26 CALL                             R2 -1 1
       27 CONCAT                           R0 R1 R2
       28 RETURN                           R0 1
       29 MOVE                             R1 R0
       30 GETUPVAL                         R2 8
       31 LOADK                            R3 K7 ["Received constructor"]
       32 GETUPVAL                         R4 6
       33 CALL                             R2 2 1
       34 CONCAT                           R0 R1 R2
       35 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeLessThan"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["Expected:%s < %s\n"]
       10 GETUPVAL                         R6 2
       11 JUMPIFNOT                        R6 ; [+2]
       12 LOADK                            R5 K6 [" never"]
       13 JUMP                             ; [+1]
       14 LOADK                            R5 K7 [""]
       15 GETUPVAL                         R6 3
       16 GETUPVAL                         R7 4
       17 CALL                             R6 1 -1
       18 CALL                             R3 -1 1
       19 GETIMPORT                        R4 K4 [string.format]
       21 LOADK                            R5 K8 ["Received:%s   %s"]
       22 GETUPVAL                         R7 2
       23 JUMPIFNOT                        R7 ; [+2]
       24 LOADK                            R6 K9 ["      "]
       25 JUMP                             ; [+1]
       26 LOADK                            R6 K7 [""]
       27 GETUPVAL                         R7 5
       28 GETUPVAL                         R8 6
       29 CALL                             R7 1 -1
       30 CALL                             R4 -1 1
       31 CONCAT                           R0 R1 R4
       32 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeLessThanOrEqual"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["Expected:%s <= %s\n"]
       10 GETUPVAL                         R6 2
       11 JUMPIFNOT                        R6 ; [+2]
       12 LOADK                            R5 K6 [" never"]
       13 JUMP                             ; [+1]
       14 LOADK                            R5 K7 [""]
       15 GETUPVAL                         R6 3
       16 GETUPVAL                         R7 4
       17 CALL                             R6 1 -1
       18 CALL                             R3 -1 1
       19 GETIMPORT                        R4 K4 [string.format]
       21 LOADK                            R5 K8 ["Received:%s    %s"]
       22 GETUPVAL                         R7 2
       23 JUMPIFNOT                        R7 ; [+2]
       24 LOADK                            R6 K9 ["      "]
       25 JUMP                             ; [+1]
       26 LOADK                            R6 K7 [""]
       27 GETUPVAL                         R7 5
       28 GETUPVAL                         R8 6
       29 CALL                             R7 1 -1
       30 CALL                             R4 -1 1
       31 CONCAT                           R0 R1 R4
       32 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeNan"]
        2 LOADNIL                          R3
        3 LOADK                            R4 K1 [""]
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K2 ["\n\n"]
        7 GETIMPORT                        R3 K5 [string.format]
        9 LOADK                            R4 K6 ["Received: %s"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeNil"]
        2 LOADNIL                          R3
        3 LOADK                            R4 K1 [""]
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K2 ["\n\n"]
        7 GETIMPORT                        R3 K5 [string.format]
        9 LOADK                            R4 K6 ["Received: %s"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeTruthy"]
        2 LOADNIL                          R3
        3 LOADK                            R4 K1 [""]
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K2 ["\n\n"]
        7 GETIMPORT                        R3 K5 [string.format]
        9 LOADK                            R4 K6 ["Received: %s"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toBeUndefined"]
        2 LOADNIL                          R3
        3 LOADK                            R4 K1 [""]
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K2 ["\n\n"]
        7 GETIMPORT                        R3 K5 [string.format]
        9 LOADK                            R4 K6 ["Received: %s"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 RETURN                           R0 1

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
       18 GETUPVAL                         R3 2
       19 LOADK                            R4 K9 ["toContain"]
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 GETUPVAL                         R7 3
       23 CALL                             R3 4 1
       24 LOADK                            R4 K10 ["\n\n"]
       25 GETIMPORT                        R5 K2 [string.format]
       27 LOADK                            R6 K11 ["%s%s%s\n"]
       28 MOVE                             R7 R1
       29 MOVE                             R8 R0
       30 CALL                             R7 1 1
       31 GETUPVAL                         R9 4
       32 JUMPIFNOT                        R9 ; [+2]
       33 LOADK                            R8 K12 ["never "]
       34 JUMP                             ; [+1]
       35 LOADK                            R8 K13 [""]
       36 GETUPVAL                         R9 5
       37 GETUPVAL                         R10 0
       38 CALL                             R9 1 -1
       39 CALL                             R5 -1 1
       40 GETIMPORT                        R6 K2 [string.format]
       42 LOADK                            R7 K14 ["%s%s%s"]
       43 MOVE                             R8 R1
       44 LOADK                            R9 K8 ["Received string"]
       45 CALL                             R8 1 1
       46 GETUPVAL                         R10 4
       47 JUMPIFNOT                        R10 ; [+2]
       48 LOADK                            R9 K15 ["      "]
       49 JUMP                             ; [+1]
       50 LOADK                            R9 K13 [""]
       51 GETUPVAL                         R11 4
       52 JUMPIFNOT                        R11 ; [+11]
       53 GETUPVAL                         R10 6
       54 GETUPVAL                         R11 7
       55 GETUPVAL                         R12 8
       56 GETUPVAL                         R15 0
       57 FASTCALL1                        TOSTRING R15 ; [+2]
       58 GETIMPORT                        R14 K17 [tostring]
       60 CALL                             R14 1 1
       61 LENGTH                           R13 R14
       62 CALL                             R10 3 1
       63 JUMPIF                           R10 ; [+3]
       64 GETUPVAL                         R10 9
       65 GETUPVAL                         R11 7
       66 CALL                             R10 1 1
       67 CALL                             R6 4 1
       68 CONCAT                           R2 R3 R6
       69 RETURN                           R2 1

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
       11 GETUPVAL                         R3 3
       12 LOADK                            R4 K5 ["toContain"]
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 GETUPVAL                         R7 4
       16 CALL                             R3 4 1
       17 LOADK                            R4 K6 ["\n\n"]
       18 GETIMPORT                        R5 K2 [string.format]
       20 LOADK                            R6 K7 ["%s%s%s\n"]
       21 MOVE                             R7 R1
       22 LOADK                            R8 K4 ["Expected value"]
       23 CALL                             R7 1 1
       24 GETUPVAL                         R9 5
       25 JUMPIFNOT                        R9 ; [+2]
       26 LOADK                            R8 K8 ["never "]
       27 JUMP                             ; [+1]
       28 LOADK                            R8 K9 [""]
       29 GETUPVAL                         R9 6
       30 GETUPVAL                         R10 7
       31 CALL                             R9 1 -1
       32 CALL                             R5 -1 1
       33 GETIMPORT                        R6 K2 [string.format]
       35 LOADK                            R7 K10 ["%s%s"]
       36 MOVE                             R8 R1
       37 MOVE                             R9 R0
       38 CALL                             R8 1 1
       39 GETUPVAL                         R10 5
       40 JUMPIFNOT                        R10 ; [+2]
       41 LOADK                            R9 K11 ["      "]
       42 JUMP                             ; [+1]
       43 LOADK                            R9 K9 [""]
       44 CALL                             R6 3 1
       45 CONCAT                           R2 R3 R6
       46 GETUPVAL                         R3 5
       47 JUMPIFNOT                        R3 ; [+13]
       48 GETUPVAL                         R3 8
       49 GETTABLEKS                       R3 R3 K12 ["isArray"]
       51 GETUPVAL                         R4 1
       52 CALL                             R3 1 1
       53 JUMPIFNOT                        R3 ; [+7]
       54 MOVE                             R3 R2
       55 GETUPVAL                         R4 9
       56 GETUPVAL                         R5 1
       57 GETUPVAL                         R6 10
       58 CALL                             R4 2 1
       59 CONCAT                           R2 R3 R4
       60 JUMP                             ; [+5]
       61 MOVE                             R3 R2
       62 GETUPVAL                         R4 11
       63 GETUPVAL                         R5 1
       64 CALL                             R4 1 1
       65 CONCAT                           R2 R3 R4
       66 GETUPVAL                         R3 5
       67 JUMPIF                           R3 ; [+18]
       68 GETUPVAL                         R3 8
       69 GETTABLEKS                       R3 R3 K13 ["findIndex"]
       71 GETUPVAL                         R4 1
       72 NEWCLOSURE                       R5 P0
       73 CAPTURE                          UPVAL U12
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          UPVAL U13
       76 CALL                             R3 2 1
       77 JUMPIFEQKN                       R3 K14 [-1] ; [+8]
       79 MOVE                             R3 R2
       80 GETIMPORT                        R4 K2 [string.format]
       82 LOADK                            R5 K15 ["\n\n%s"]
       83 GETUPVAL                         R6 14
       84 CALL                             R4 2 1
       85 CONCAT                           R2 R3 R4
       86 RETURN                           R2 1

PROTO_34:
        0 GETTABLEKS                       R3 R0 K0 ["isNot"]
        2 DUPTABLE                         R4 K4 [{["comment"] = "string.find or table.find", [2], ["promise"]}]
        3 SETTABLEKS                       R3 R4 K0 ["isNot"]
        5 GETTABLEKS                       R5 R0 K3 ["promise"]
        7 SETTABLEKS                       R5 R4 K3 ["promise"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+26]
       11 GETIMPORT                        R5 K6 [error]
       13 GETUPVAL                         R6 0
       14 GETUPVAL                         R7 1
       15 GETUPVAL                         R8 2
       16 LOADK                            R9 K7 ["toContain"]
       17 LOADNIL                          R10
       18 LOADNIL                          R11
       19 MOVE                             R12 R4
       20 CALL                             R8 4 1
       21 GETIMPORT                        R9 K10 [string.format]
       23 LOADK                            R10 K11 ["%s value must not be nil"]
       24 GETUPVAL                         R11 3
       25 LOADK                            R12 K12 ["received"]
       26 CALL                             R11 1 -1
       27 CALL                             R9 -1 1
       28 GETUPVAL                         R10 4
       29 LOADK                            R11 K13 ["Received"]
       30 MOVE                             R12 R1
       31 GETUPVAL                         R13 5
       32 CALL                             R10 3 -1
       33 CALL                             R7 -1 -1
       34 CALL                             R6 -1 -1
       35 CALL                             R5 -1 0
       36 FASTCALL1                        TYPEOF R1 ; [+3]
       37 MOVE                             R6 R1
       38 GETIMPORT                        R5 K15 [typeof]
       40 CALL                             R5 1 1
       41 JUMPIFNOTEQKS                    R5 K8 ["string"] ; [+89]
       43 LOADK                            R5 K16 ["%s value must be a string if %s value is a string"]
       44 GETUPVAL                         R7 6
       45 LOADK                            R8 K17 ["expected"]
       46 CALL                             R7 1 1
       47 GETUPVAL                         R8 3
       48 LOADK                            R9 K12 ["received"]
       49 CALL                             R8 1 -1
       50 NAMECALL                         R5 R5 K9 ["format"]
       52 CALL                             R5 -1 1
       53 FASTCALL1                        TYPEOF R2 ; [+3]
       54 MOVE                             R7 R2
       55 GETIMPORT                        R6 K15 [typeof]
       57 CALL                             R6 1 1
       58 JUMPIFEQKS                       R6 K8 ["string"] ; [+41]
       60 GETIMPORT                        R6 K6 [error]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K18 ["new"]
       65 GETUPVAL                         R8 1
       66 GETUPVAL                         R9 2
       67 LOADK                            R10 K7 ["toContain"]
       68 MOVE                             R11 R1
       69 FASTCALL1                        TOSTRING R2 ; [+3]
       70 MOVE                             R13 R2
       71 GETIMPORT                        R12 K20 [tostring]
       73 CALL                             R12 1 1
       74 MOVE                             R13 R4
       75 CALL                             R9 4 1
       76 MOVE                             R10 R5
       77 GETUPVAL                         R13 4
       78 LOADK                            R14 K21 ["Expected"]
       79 MOVE                             R15 R2
       80 GETUPVAL                         R16 7
       81 CALL                             R13 3 -1
       82 FASTCALL                         TOSTRING ; [+2]
       83 GETIMPORT                        R12 K20 [tostring]
       85 CALL                             R12 -1 1
       86 LOADK                            R13 K22 ["\n"]
       87 GETUPVAL                         R15 4
       88 LOADK                            R16 K13 ["Received"]
       89 MOVE                             R17 R1
       90 GETUPVAL                         R18 5
       91 CALL                             R15 3 -1
       92 FASTCALL                         TOSTRING ; [+2]
       93 GETIMPORT                        R14 K20 [tostring]
       95 CALL                             R14 -1 1
       96 CONCAT                           R11 R12 R14
       97 CALL                             R8 3 -1
       98 CALL                             R7 -1 -1
       99 CALL                             R6 -1 0
      100 FASTCALL1                        TOSTRING R2 ; [+3]
      101 MOVE                             R9 R2
      102 GETIMPORT                        R8 K20 [tostring]
      104 CALL                             R8 1 1
      105 LOADN                            R9 1
      106 LOADB                            R10 1
      107 NAMECALL                         R6 R1 K23 ["find"]
      109 CALL                             R6 4 1
      110 JUMPIFNOTEQKNIL                  R6 ; [+2]
      112 LOADB                            R7 0 +1
      113 LOADB                            R7 1
      114 NEWCLOSURE                       R8 P0
      115 CAPTURE                          VAL R2
      116 CAPTURE                          UPVAL U8
      117 CAPTURE                          UPVAL U2
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R3
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          UPVAL U9
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R6
      124 CAPTURE                          UPVAL U5
      125 DUPTABLE                         R9 K26 [{"message", "pass"}]
      126 SETTABLEKS                       R8 R9 K24 ["message"]
      128 SETTABLEKS                       R7 R9 K25 ["pass"]
      130 RETURN                           R9 1
      131 GETUPVAL                         R5 10
      132 GETTABLEKS                       R5 R5 K27 ["from"]
      134 MOVE                             R6 R1
      135 CALL                             R5 1 1
      136 GETIMPORT                        R6 K29 [table.find]
      138 MOVE                             R7 R5
      139 MOVE                             R8 R2
      140 CALL                             R6 2 1
      141 JUMPIFNOTEQKNIL                  R6 ; [+2]
      143 LOADB                            R7 0 +1
      144 LOADB                            R7 1
      145 NEWCLOSURE                       R8 P1
      146 CAPTURE                          UPVAL U11
      147 CAPTURE                          VAL R1
      148 CAPTURE                          UPVAL U8
      149 CAPTURE                          UPVAL U2
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R3
      152 CAPTURE                          UPVAL U7
      153 CAPTURE                          VAL R2
      154 CAPTURE                          UPVAL U10
      155 CAPTURE                          UPVAL U12
      156 CAPTURE                          VAL R6
      157 CAPTURE                          UPVAL U5
      158 CAPTURE                          UPVAL U13
      159 CAPTURE                          UPVAL U14
      160 CAPTURE                          UPVAL U15
      161 DUPTABLE                         R9 K26 [{"message", "pass"}]
      162 SETTABLEKS                       R8 R9 K24 ["message"]
      164 SETTABLEKS                       R7 R9 K25 ["pass"]
      166 RETURN                           R9 1

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
       11 GETUPVAL                         R3 3
       12 LOADK                            R4 K5 ["toContainEqual"]
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 GETUPVAL                         R7 4
       16 CALL                             R3 4 1
       17 LOADK                            R4 K6 ["\n\n"]
       18 GETIMPORT                        R5 K2 [string.format]
       20 LOADK                            R6 K7 ["%s%s%s\n"]
       21 MOVE                             R7 R1
       22 LOADK                            R8 K4 ["Expected value"]
       23 CALL                             R7 1 1
       24 GETUPVAL                         R9 5
       25 JUMPIFNOT                        R9 ; [+2]
       26 LOADK                            R8 K8 ["never "]
       27 JUMP                             ; [+1]
       28 LOADK                            R8 K9 [""]
       29 GETUPVAL                         R9 6
       30 GETUPVAL                         R10 7
       31 CALL                             R9 1 -1
       32 CALL                             R5 -1 1
       33 GETIMPORT                        R6 K2 [string.format]
       35 LOADK                            R7 K10 ["%s%s"]
       36 MOVE                             R8 R1
       37 MOVE                             R9 R0
       38 CALL                             R8 1 1
       39 GETUPVAL                         R10 5
       40 JUMPIFNOT                        R10 ; [+2]
       41 LOADK                            R9 K11 ["      "]
       42 JUMP                             ; [+1]
       43 LOADK                            R9 K9 [""]
       44 CALL                             R6 3 1
       45 CONCAT                           R2 R3 R6
       46 GETUPVAL                         R3 5
       47 JUMPIFNOT                        R3 ; [+13]
       48 GETUPVAL                         R3 8
       49 GETTABLEKS                       R3 R3 K12 ["isArray"]
       51 GETUPVAL                         R4 1
       52 CALL                             R3 1 1
       53 JUMPIFNOT                        R3 ; [+7]
       54 MOVE                             R3 R2
       55 GETUPVAL                         R4 9
       56 GETUPVAL                         R5 1
       57 GETUPVAL                         R6 10
       58 CALL                             R4 2 1
       59 CONCAT                           R2 R3 R4
       60 RETURN                           R2 1
       61 MOVE                             R3 R2
       62 GETUPVAL                         R4 11
       63 GETUPVAL                         R5 1
       64 CALL                             R4 1 1
       65 CONCAT                           R2 R3 R4
       66 RETURN                           R2 1

PROTO_37:
        0 GETTABLEKS                       R3 R0 K0 ["isNot"]
        2 DUPTABLE                         R4 K4 [{["comment"] = "deep equality", [2], ["promise"]}]
        3 SETTABLEKS                       R3 R4 K0 ["isNot"]
        5 GETTABLEKS                       R5 R0 K3 ["promise"]
        7 SETTABLEKS                       R5 R4 K3 ["promise"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+26]
       11 GETIMPORT                        R5 K6 [error]
       13 GETUPVAL                         R6 0
       14 GETUPVAL                         R7 1
       15 GETUPVAL                         R8 2
       16 LOADK                            R9 K7 ["toContainEqual"]
       17 LOADNIL                          R10
       18 LOADNIL                          R11
       19 MOVE                             R12 R4
       20 CALL                             R8 4 1
       21 GETIMPORT                        R9 K10 [string.format]
       23 LOADK                            R10 K11 ["%s value must not be nil"]
       24 GETUPVAL                         R11 3
       25 LOADK                            R12 K12 ["received"]
       26 CALL                             R11 1 -1
       27 CALL                             R9 -1 1
       28 GETUPVAL                         R10 4
       29 LOADK                            R11 K13 ["Received"]
       30 MOVE                             R12 R1
       31 GETUPVAL                         R13 5
       32 CALL                             R10 3 -1
       33 CALL                             R7 -1 -1
       34 CALL                             R6 -1 -1
       35 CALL                             R5 -1 0
       36 GETUPVAL                         R5 6
       37 GETTABLEKS                       R5 R5 K14 ["findIndex"]
       39 GETUPVAL                         R6 6
       40 GETTABLEKS                       R6 R6 K15 ["from"]
       42 MOVE                             R7 R1
       43 CALL                             R6 1 1
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          VAL R2
       47 CAPTURE                          UPVAL U8
       48 CALL                             R5 2 1
       49 JUMPIFNOTEQKN                    R5 K16 [-1] ; [+2]
       51 LOADB                            R6 0 +1
       52 LOADB                            R6 1
       53 NEWCLOSURE                       R7 P1
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U10
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 CAPTURE                          UPVAL U11
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          UPVAL U12
       64 CAPTURE                          VAL R5
       65 CAPTURE                          UPVAL U5
       66 DUPTABLE                         R8 K19 [{"message", "pass"}]
       67 SETTABLEKS                       R7 R8 K17 ["message"]
       69 SETTABLEKS                       R6 R8 K18 ["pass"]
       71 RETURN                           R8 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toEqual"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["Expected: never %s\n"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 GETUPVAL                         R1 4
       16 GETUPVAL                         R2 3
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 4
       19 GETUPVAL                         R3 5
       20 CALL                             R2 1 1
       21 JUMPIFEQ                         R1 R2 ; [+10]
       23 MOVE                             R1 R0
       24 GETIMPORT                        R2 K4 [string.format]
       26 LOADK                            R3 K6 ["Received:       %s"]
       27 GETUPVAL                         R4 6
       28 GETUPVAL                         R5 5
       29 CALL                             R4 1 -1
       30 CALL                             R2 -1 1
       31 CONCAT                           R0 R1 R2
       32 RETURN                           R0 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toEqual"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 GETUPVAL                         R5 4
       10 LOADK                            R6 K2 ["Expected"]
       11 LOADK                            R7 K3 ["Received"]
       12 GETUPVAL                         R9 5
       13 GETTABLEKS                       R9 R9 K4 ["expand"]
       15 NOT                              R10 R9
       16 NOT                              R8 R10
       17 CALL                             R3 5 1
       18 CONCAT                           R0 R1 R3
       19 RETURN                           R0 1

PROTO_40:
        0 DUPTABLE                         R3 K4 [{[1] = "deep equality", ["isNot"], ["promise"]}]
        1 GETTABLEKS                       R4 R0 K2 ["isNot"]
        3 SETTABLEKS                       R4 R3 K2 ["isNot"]
        5 GETTABLEKS                       R4 R0 K3 ["promise"]
        7 SETTABLEKS                       R4 R3 K3 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 NEWTABLE                         R7 0 1
       14 GETUPVAL                         R8 1
       15 SETLIST                          R7 R8 1 [1]
       17 CALL                             R4 3 1
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
       36 DUPTABLE                         R6 K11 [{["actual"], ["expected"], ["message"], ["name"] = "toEqual", ["pass"]}]
       37 SETTABLEKS                       R1 R6 K5 ["actual"]
       39 SETTABLEKS                       R2 R6 K6 ["expected"]
       41 SETTABLEKS                       R5 R6 K7 ["message"]
       43 SETTABLEKS                       R4 R6 K10 ["pass"]
       45 RETURN                           R6 1

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
       12 GETUPVAL                         R3 3
       13 LOADK                            R4 K6 ["toHaveLength"]
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 GETUPVAL                         R7 4
       17 CALL                             R3 4 1
       18 LOADK                            R4 K7 ["\n\n"]
       19 GETIMPORT                        R5 K2 [string.format]
       21 LOADK                            R6 K8 ["%s%s%s\n"]
       22 MOVE                             R7 R1
       23 LOADK                            R8 K4 ["Expected length"]
       24 CALL                             R7 1 1
       25 GETUPVAL                         R9 5
       26 JUMPIFNOT                        R9 ; [+2]
       27 LOADK                            R8 K9 ["never "]
       28 JUMP                             ; [+1]
       29 LOADK                            R8 K10 [""]
       30 GETUPVAL                         R9 6
       31 GETUPVAL                         R10 7
       32 CALL                             R9 1 -1
       33 CALL                             R5 -1 1
       34 CONCAT                           R2 R3 R5
       35 GETUPVAL                         R3 5
       36 JUMPIF                           R3 ; [+12]
       37 MOVE                             R3 R2
       38 GETIMPORT                        R4 K2 [string.format]
       40 LOADK                            R5 K11 ["%s%s\n"]
       41 MOVE                             R6 R1
       42 LOADK                            R7 K5 ["Received length"]
       43 CALL                             R6 1 1
       44 GETUPVAL                         R7 8
       45 GETUPVAL                         R8 9
       46 CALL                             R7 1 -1
       47 CALL                             R4 -1 1
       48 CONCAT                           R2 R3 R4
       49 MOVE                             R4 R2
       50 GETIMPORT                        R5 K2 [string.format]
       52 LOADK                            R6 K12 ["%s%s%s"]
       53 MOVE                             R7 R1
       54 MOVE                             R8 R0
       55 CALL                             R7 1 1
       56 GETUPVAL                         R9 5
       57 JUMPIFNOT                        R9 ; [+2]
       58 LOADK                            R8 K13 ["      "]
       59 JUMP                             ; [+1]
       60 LOADK                            R8 K10 [""]
       61 GETUPVAL                         R9 8
       62 GETUPVAL                         R10 1
       63 CALL                             R9 1 -1
       64 CALL                             R5 -1 1
       65 CONCAT                           R3 R4 R5
       66 RETURN                           R3 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toHaveProperty"]
        2 LOADNIL                          R3
        3 LOADK                            R4 K1 ["path"]
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K2 ["\n\n"]
        7 CONCAT                           R0 R1 R2
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+35]
       10 MOVE                             R1 R0
       11 GETIMPORT                        R2 K5 [string.format]
       13 LOADK                            R3 K6 ["Expected path: %s\n\n"]
       14 GETUPVAL                         R4 3
       15 GETUPVAL                         R5 4
       16 CALL                             R4 1 -1
       17 CALL                             R2 -1 1
       18 GETIMPORT                        R3 K5 [string.format]
       20 LOADK                            R4 K7 ["Expected value: never %s"]
       21 GETUPVAL                         R5 3
       22 GETUPVAL                         R6 5
       23 CALL                             R5 1 -1
       24 CALL                             R3 -1 1
       25 CONCAT                           R0 R1 R3
       26 GETUPVAL                         R1 6
       27 GETUPVAL                         R2 5
       28 CALL                             R1 1 1
       29 GETUPVAL                         R2 6
       30 GETUPVAL                         R3 7
       31 CALL                             R2 1 1
       32 JUMPIFEQ                         R1 R2 ; [+11]
       34 MOVE                             R2 R0
       35 GETIMPORT                        R3 K5 [string.format]
       37 LOADK                            R4 K8 ["\nReceived value:       %s"]
       38 GETUPVAL                         R5 8
       39 GETUPVAL                         R6 7
       40 CALL                             R5 1 -1
       41 CALL                             R3 -1 1
       42 CONCAT                           R1 R2 R3
       43 RETURN                           R1 1
       44 RETURN                           R0 1
       45 MOVE                             R2 R0
       46 GETIMPORT                        R3 K5 [string.format]
       48 LOADK                            R4 K9 ["Expected path: never %s\n\n"]
       49 GETUPVAL                         R5 3
       50 GETUPVAL                         R6 4
       51 CALL                             R5 1 -1
       52 CALL                             R3 -1 1
       53 GETIMPORT                        R4 K5 [string.format]
       55 LOADK                            R5 K10 ["Received value: %s"]
       56 GETUPVAL                         R6 8
       57 GETUPVAL                         R7 7
       58 CALL                             R6 1 -1
       59 CALL                             R4 -1 1
       60 CONCAT                           R1 R2 R4
       61 RETURN                           R1 1

PROTO_44:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toHaveProperty"]
        2 LOADNIL                          R3
        3 LOADK                            R4 K1 ["path"]
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K2 ["\n\n"]
        7 GETIMPORT                        R3 K5 [string.format]
        9 LOADK                            R4 K6 ["Expected path: %s\n"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 GETUPVAL                         R1 4
       16 JUMPIFNOT                        R1 ; [+15]
       17 MOVE                             R2 R0
       18 LOADK                            R3 K7 ["\n"]
       19 GETUPVAL                         R4 5
       20 GETUPVAL                         R5 6
       21 GETUPVAL                         R6 7
       22 LOADK                            R7 K8 ["Expected value"]
       23 LOADK                            R8 K9 ["Received value"]
       24 GETUPVAL                         R10 8
       25 GETTABLEKS                       R10 R10 K10 ["expand"]
       27 NOT                              R11 R10
       28 NOT                              R9 R11
       29 CALL                             R4 5 1
       30 CONCAT                           R1 R2 R4
       31 RETURN                           R1 1
       32 MOVE                             R1 R0
       33 LOADK                            R2 K11 ["Received path: "]
       34 CONCAT                           R0 R1 R2
       35 GETUPVAL                         R1 9
       36 JUMPIFEQKS                       R1 K12 ["table"] ; [+5]
       38 GETUPVAL                         R2 10
       39 LENGTH                           R1 R2
       40 JUMPIFNOTEQKN                    R1 K13 [0] ; [+11]
       42 MOVE                             R1 R0
       43 GETIMPORT                        R2 K5 [string.format]
       45 LOADK                            R3 K14 ["%s\n\n"]
       46 GETUPVAL                         R4 11
       47 GETUPVAL                         R5 10
       48 CALL                             R4 1 -1
       49 CALL                             R2 -1 1
       50 CONCAT                           R0 R1 R2
       51 JUMP                             ; [+13]
       52 MOVE                             R1 R0
       53 GETIMPORT                        R2 K5 [string.format]
       55 LOADK                            R3 K14 ["%s\n\n"]
       56 GETUPVAL                         R4 11
       57 GETIMPORT                        R5 K16 [table.concat]
       59 GETUPVAL                         R6 10
       60 LOADK                            R7 K17 ["."]
       61 CALL                             R5 2 -1
       62 CALL                             R4 -1 -1
       63 CALL                             R2 -1 1
       64 CONCAT                           R0 R1 R2
       65 GETUPVAL                         R1 12
       66 JUMPIFNOT                        R1 ; [+9]
       67 MOVE                             R1 R0
       68 GETIMPORT                        R2 K5 [string.format]
       70 LOADK                            R3 K18 ["Expected value: %s\n"]
       71 GETUPVAL                         R4 2
       72 GETUPVAL                         R5 6
       73 CALL                             R4 1 -1
       74 CALL                             R2 -1 1
       75 CONCAT                           R0 R1 R2
       76 MOVE                             R2 R0
       77 GETIMPORT                        R3 K5 [string.format]
       79 LOADK                            R4 K19 ["Received value: %s"]
       80 GETUPVAL                         R5 11
       81 GETUPVAL                         R6 7
       82 CALL                             R5 1 -1
       83 CALL                             R3 -1 1
       84 CONCAT                           R1 R2 R3
       85 RETURN                           R1 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toMatch"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["Expected pattern: never %s\n"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 GETUPVAL                         R2 3
       16 FASTCALL1                        TYPEOF R2 ; [+2]
       17 GETIMPORT                        R1 K7 [typeof]
       19 CALL                             R1 1 1
       20 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+18]
       22 MOVE                             R1 R0
       23 GETIMPORT                        R2 K4 [string.format]
       25 LOADK                            R3 K8 ["Received string:        %s"]
       26 GETUPVAL                         R4 4
       27 GETUPVAL                         R5 5
       28 GETUPVAL                         R6 5
       29 GETUPVAL                         R8 3
       30 NAMECALL                         R6 R6 K9 ["find"]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R8 3
       34 LENGTH                           R7 R8
       35 CALL                             R4 3 -1
       36 CALL                             R2 -1 1
       37 CONCAT                           R0 R1 R2
       38 RETURN                           R0 1
       39 MOVE                             R1 R0
       40 GETIMPORT                        R2 K4 [string.format]
       42 LOADK                            R3 K8 ["Received string:        %s"]
       43 GETUPVAL                         R4 6
       44 GETUPVAL                         R5 5
       45 GETUPVAL                         R6 3
       46 GETUPVAL                         R8 5
       47 NAMECALL                         R6 R6 K10 ["exec"]
       49 CALL                             R6 2 -1
       50 CALL                             R4 -1 -1
       51 CALL                             R2 -1 1
       52 CONCAT                           R0 R1 R2
       53 RETURN                           R0 1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Expected pattern"]
        2 LOADK                            R2 K1 ["Received string"]
        3 CALL                             R0 2 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K2 ["toMatch"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 GETUPVAL                         R6 2
        9 CALL                             R2 4 1
       10 LOADK                            R3 K3 ["\n\n"]
       11 GETIMPORT                        R4 K6 [string.format]
       13 LOADK                            R5 K7 ["%s%s\n"]
       14 MOVE                             R6 R0
       15 LOADK                            R7 K0 ["Expected pattern"]
       16 CALL                             R6 1 1
       17 GETUPVAL                         R7 3
       18 GETUPVAL                         R8 4
       19 CALL                             R7 1 -1
       20 CALL                             R4 -1 1
       21 GETIMPORT                        R5 K6 [string.format]
       23 LOADK                            R6 K8 ["%s%s"]
       24 MOVE                             R7 R0
       25 LOADK                            R8 K1 ["Received string"]
       26 CALL                             R7 1 1
       27 GETUPVAL                         R8 5
       28 GETUPVAL                         R9 6
       29 CALL                             R8 1 -1
       30 CALL                             R5 -1 1
       31 CONCAT                           R1 R2 R5
       32 RETURN                           R1 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toMatchObject"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["Expected: never %s"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 GETUPVAL                         R1 4
       16 GETUPVAL                         R2 3
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 4
       19 GETUPVAL                         R3 5
       20 CALL                             R2 1 1
       21 JUMPIFEQ                         R1 R2 ; [+11]
       23 MOVE                             R2 R0
       24 GETIMPORT                        R3 K4 [string.format]
       26 LOADK                            R4 K6 ["\nReceived:       %s"]
       27 GETUPVAL                         R5 6
       28 GETUPVAL                         R6 5
       29 CALL                             R5 1 -1
       30 CALL                             R3 -1 1
       31 CONCAT                           R1 R2 R3
       32 RETURN                           R1 1
       33 RETURN                           R0 1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toMatchObject"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 GETUPVAL                         R5 4
       10 GETUPVAL                         R6 5
       11 GETUPVAL                         R7 3
       12 CALL                             R5 2 1
       13 LOADK                            R6 K2 ["Expected"]
       14 LOADK                            R7 K3 ["Received"]
       15 GETUPVAL                         R9 6
       16 GETTABLEKS                       R9 R9 K4 ["expand"]
       18 NOT                              R10 R9
       19 NOT                              R8 R10
       20 CALL                             R3 5 1
       21 CONCAT                           R0 R1 R3
       22 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toStrictEqual"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["Expected: not %s\n"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 GETUPVAL                         R1 4
       16 GETUPVAL                         R2 3
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 4
       19 GETUPVAL                         R3 5
       20 CALL                             R2 1 1
       21 JUMPIFEQ                         R1 R2 ; [+10]
       23 MOVE                             R1 R0
       24 GETIMPORT                        R2 K4 [string.format]
       26 LOADK                            R3 K6 ["Received:     %s"]
       27 GETUPVAL                         R4 6
       28 GETUPVAL                         R5 5
       29 CALL                             R4 1 -1
       30 CALL                             R2 -1 1
       31 CONCAT                           R0 R1 R2
       32 RETURN                           R0 1

PROTO_53:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toStrictEqual"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 GETUPVAL                         R5 4
       10 LOADK                            R6 K2 ["Expected"]
       11 LOADK                            R7 K3 ["Received"]
       12 GETUPVAL                         R9 5
       13 GETTABLEKS                       R9 R9 K4 ["expand"]
       15 NOT                              R10 R9
       16 NOT                              R8 R10
       17 CALL                             R3 5 1
       18 CONCAT                           R0 R1 R3
       19 RETURN                           R0 1

PROTO_54:
        0 DUPTABLE                         R3 K4 [{[1] = "deep equality", ["isNot"], ["promise"]}]
        1 GETTABLEKS                       R4 R0 K2 ["isNot"]
        3 SETTABLEKS                       R4 R3 K2 ["isNot"]
        5 GETTABLEKS                       R4 R0 K3 ["promise"]
        7 SETTABLEKS                       R4 R3 K3 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 GETUPVAL                         R7 1
       13 LOADB                            R8 1
       14 CALL                             R4 4 1
       15 LOADNIL                          R5
       16 JUMPIFNOT                        R4 ; [+9]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U5
       25 JUMP                             ; [+7]
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R0
       33 DUPTABLE                         R6 K11 [{["actual"], ["expected"], ["message"], ["name"] = "toStrictEqual", ["pass"]}]
       34 SETTABLEKS                       R1 R6 K5 ["actual"]
       36 SETTABLEKS                       R2 R6 K6 ["expected"]
       38 SETTABLEKS                       R5 R6 K7 ["message"]
       40 SETTABLEKS                       R4 R6 K10 ["pass"]
       42 RETURN                           R6 1

PROTO_55:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toMatchInstance"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["Expected: never %s"]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 1
       14 CONCAT                           R0 R1 R3
       15 GETUPVAL                         R1 4
       16 GETUPVAL                         R2 3
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 4
       19 GETUPVAL                         R3 5
       20 CALL                             R2 1 1
       21 JUMPIFEQ                         R1 R2 ; [+11]
       23 MOVE                             R2 R0
       24 GETIMPORT                        R3 K4 [string.format]
       26 LOADK                            R4 K6 ["\nReceived:       %s"]
       27 GETUPVAL                         R5 6
       28 GETUPVAL                         R6 5
       29 CALL                             R5 1 -1
       30 CALL                             R3 -1 1
       31 CONCAT                           R1 R2 R3
       32 RETURN                           R1 1
       33 RETURN                           R0 1

PROTO_56:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["toMatchInstance"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 1
        5 CALL                             R1 4 1
        6 LOADK                            R2 K1 ["\n\n"]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 GETUPVAL                         R5 4
       10 LOADK                            R6 K2 ["Expected"]
       11 LOADK                            R7 K3 ["Received"]
       12 GETUPVAL                         R9 5
       13 GETTABLEKS                       R9 R9 K4 ["expand"]
       15 NOT                              R10 R9
       16 NOT                              R8 R10
       17 CALL                             R3 5 1
       18 CONCAT                           R0 R1 R3
       19 RETURN                           R0 1

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
