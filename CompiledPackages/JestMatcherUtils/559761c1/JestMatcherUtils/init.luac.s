PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 DUPTABLE                         R2 K4 [{"maxDepth", "maxWidth", "min", "plugins"}]
        3 GETUPVAL                         R3 3
        4 SETTABLEKS                       R3 R2 K0 ["maxDepth"]
        6 GETUPVAL                         R3 4
        7 SETTABLEKS                       R3 R2 K1 ["maxWidth"]
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K2 ["min"]
       12 GETUPVAL                         R3 5
       13 SETTABLEKS                       R3 R2 K3 ["plugins"]
       15 CALL                             R0 2 1
       16 SETUPVAL                         R0 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["for_"]
        3 LOADK                            R4 K1 ["$$nil"]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQ                      R0 R3 ; [+2]
        7 LOADNIL                          R0
        8 JUMPIFEQKNIL                     R1 ; [+3]
       10 MOVE                             R3 R1
       11 JUMP                             ; [+1]
       12 LOADN                            R3 10
       13 JUMPIFEQKNIL                     R2 ; [+3]
       15 MOVE                             R4 R2
       16 JUMP                             ; [+1]
       17 LOADN                            R4 10
       18 LOADNIL                          R5
       19 GETIMPORT                        R6 K3 [pcall]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          REF R5
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          REF R0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 CAPTURE                          UPVAL U2
       28 CALL                             R6 1 1
       29 JUMPIF                           R6 ; [+18]
       30 GETUPVAL                         R7 1
       31 MOVE                             R8 R0
       32 DUPTABLE                         R9 K9 [{"callToJSON", "maxDepth", "maxWidth", "min", "plugins"}]
       33 LOADB                            R10 0
       34 SETTABLEKS                       R10 R9 K4 ["callToJSON"]
       36 SETTABLEKS                       R3 R9 K5 ["maxDepth"]
       38 SETTABLEKS                       R4 R9 K6 ["maxWidth"]
       40 LOADB                            R10 1
       41 SETTABLEKS                       R10 R9 K7 ["min"]
       43 GETUPVAL                         R10 2
       44 SETTABLEKS                       R10 R9 K8 ["plugins"]
       46 CALL                             R7 2 1
       47 MOVE                             R5 R7
       48 LENGTH                           R7 R5
       49 LOADN                            R8 16
       50 JUMPIFNOTLE                      R8 R7 ; [+15]
       52 LOADN                            R7 1
       53 JUMPIFNOTLT                      R7 R3 ; [+12]
       55 GETUPVAL                         R7 3
       56 MOVE                             R8 R0
       57 DIVK                             R10 R3 K10 [2]
       58 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       59 GETIMPORT                        R9 K13 [math.floor]
       61 CALL                             R9 1 1
       62 MOVE                             R10 R4
       63 CALL                             R7 3 -1
       64 CLOSEUPVALS                      R0
       65 RETURN                           R7 -1
       66 LENGTH                           R7 R5
       67 LOADN                            R8 16
       68 JUMPIFNOTLE                      R8 R7 ; [+15]
       70 LOADN                            R7 1
       71 JUMPIFNOTLT                      R7 R4 ; [+12]
       73 GETUPVAL                         R7 3
       74 MOVE                             R8 R0
       75 MOVE                             R9 R3
       76 DIVK                             R11 R4 K10 [2]
       77 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       78 GETIMPORT                        R10 K13 [math.floor]
       80 CALL                             R10 1 1
       81 CALL                             R7 3 -1
       82 CLOSEUPVALS                      R0
       83 RETURN                           R7 -1
       84 CLOSEUPVALS                      R0
       85 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_3:
        0 LOADK                            R3 K0 ["%s+$"]
        1 DUPCLOSURE                       R4 K1 [PROTO_2]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R1 R0 K2 ["gsub"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R1 K2 [string.rep]
        2 GETUPVAL                         R2 0
        3 LENGTH                           R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 LOADK                            R3 K0 ["%s+$"]
        1 DUPCLOSURE                       R4 K1 [PROTO_4]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R1 R0 K2 ["gsub"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 -1
        6 CALL                             R1 -1 -1
        7 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 -1
        6 CALL                             R1 -1 -1
        7 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 LOADNIL                          R4
        4 JUMPIFEQKS                       R3 K0 ["nil"] ; [+9]
        6 GETIMPORT                        R5 K3 [string.format]
        8 LOADK                            R6 K4 ["%s has type:  %s\n"]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R3
       11 CALL                             R5 3 1
       12 MOVE                             R4 R5
       13 JUMP                             ; [+1]
       14 LOADK                            R4 K5 [""]
       15 GETIMPORT                        R5 K3 [string.format]
       17 LOADK                            R6 K6 ["%s has value: %s"]
       18 MOVE                             R7 R0
       19 MOVE                             R8 R2
       20 MOVE                             R9 R1
       21 CALL                             R8 1 -1
       22 CALL                             R5 -1 1
       23 MOVE                             R7 R4
       24 MOVE                             R8 R5
       25 CONCAT                           R6 R7 R8
       26 RETURN                           R6 1

PROTO_9:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["nil"] ; [+25]
        7 MOVE                             R3 R1
        8 JUMPIF                           R2 ; [+3]
        9 LOADK                            R4 K3 ["[.never]"]
       10 MOVE                             R5 R3
       11 CONCAT                           R3 R4 R5
       12 GETIMPORT                        R4 K5 [error]
       14 GETUPVAL                         R5 0
       15 GETUPVAL                         R6 1
       16 GETUPVAL                         R7 2
       17 MOVE                             R8 R3
       18 LOADNIL                          R9
       19 LOADK                            R10 K6 [""]
       20 MOVE                             R11 R2
       21 CALL                             R7 4 1
       22 LOADK                            R8 K7 ["this matcher must not have an expected argument"]
       23 GETUPVAL                         R9 3
       24 LOADK                            R10 K8 ["Expected"]
       25 MOVE                             R11 R0
       26 GETUPVAL                         R12 4
       27 CALL                             R9 3 1
       28 CALL                             R6 3 -1
       29 CALL                             R5 -1 -1
       30 CALL                             R4 -1 0
       31 RETURN                           R0 0

PROTO_10:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+30]
        7 MOVE                             R3 R1
        8 JUMPIF                           R2 ; [+3]
        9 LOADK                            R4 K3 ["[.never]"]
       10 MOVE                             R5 R3
       11 CONCAT                           R3 R4 R5
       12 GETIMPORT                        R4 K5 [error]
       14 GETUPVAL                         R5 0
       15 GETUPVAL                         R6 1
       16 GETUPVAL                         R7 2
       17 MOVE                             R8 R3
       18 LOADNIL                          R9
       19 LOADNIL                          R10
       20 MOVE                             R11 R2
       21 CALL                             R7 4 1
       22 GETUPVAL                         R11 3
       23 LOADK                            R12 K6 ["received"]
       24 CALL                             R11 1 1
       25 MOVE                             R9 R11
       26 LOADK                            R10 K7 [" value must be a number"]
       27 CONCAT                           R8 R9 R10
       28 GETUPVAL                         R9 4
       29 LOADK                            R10 K8 ["Received"]
       30 MOVE                             R11 R0
       31 GETUPVAL                         R12 5
       32 CALL                             R9 3 1
       33 CALL                             R6 3 -1
       34 CALL                             R5 -1 -1
       35 CALL                             R4 -1 0
       36 RETURN                           R0 0

PROTO_11:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+30]
        7 MOVE                             R3 R1
        8 JUMPIF                           R2 ; [+3]
        9 LOADK                            R4 K3 ["[.never]"]
       10 MOVE                             R5 R3
       11 CONCAT                           R3 R4 R5
       12 GETIMPORT                        R4 K5 [error]
       14 GETUPVAL                         R5 0
       15 GETUPVAL                         R6 1
       16 GETUPVAL                         R7 2
       17 MOVE                             R8 R3
       18 LOADNIL                          R9
       19 LOADNIL                          R10
       20 MOVE                             R11 R2
       21 CALL                             R7 4 1
       22 GETUPVAL                         R11 3
       23 LOADK                            R12 K6 ["expected"]
       24 CALL                             R11 1 1
       25 MOVE                             R9 R11
       26 LOADK                            R10 K7 [" value must be a number"]
       27 CONCAT                           R8 R9 R10
       28 GETUPVAL                         R9 4
       29 LOADK                            R10 K8 ["Expected"]
       30 MOVE                             R11 R0
       31 GETUPVAL                         R12 5
       32 CALL                             R9 3 1
       33 CALL                             R6 3 -1
       34 CALL                             R5 -1 -1
       35 CALL                             R4 -1 0
       36 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R2
        3 MOVE                             R7 R3
        4 CALL                             R4 3 0
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 MOVE                             R7 R3
        9 CALL                             R4 3 0
       10 RETURN                           R0 0

PROTO_13:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+10]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["isSafeInteger"]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+3]
       13 LOADN                            R3 0
       14 JUMPIFNOTLT                      R0 R3 ; [+30]
       16 MOVE                             R3 R1
       17 JUMPIF                           R2 ; [+3]
       18 LOADK                            R4 K4 ["[.never]"]
       19 MOVE                             R5 R3
       20 CONCAT                           R3 R4 R5
       21 GETIMPORT                        R4 K6 [error]
       23 GETUPVAL                         R5 1
       24 GETUPVAL                         R6 2
       25 GETUPVAL                         R7 3
       26 MOVE                             R8 R3
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 MOVE                             R11 R2
       30 CALL                             R7 4 1
       31 GETUPVAL                         R11 4
       32 LOADK                            R12 K7 ["expected"]
       33 CALL                             R11 1 1
       34 MOVE                             R9 R11
       35 LOADK                            R10 K8 [" value must be a non-negative integer"]
       36 CONCAT                           R8 R9 R10
       37 GETUPVAL                         R9 5
       38 LOADK                            R10 K9 ["Expected"]
       39 MOVE                             R11 R0
       40 GETUPVAL                         R12 6
       41 CALL                             R9 3 1
       42 CALL                             R6 3 -1
       43 CALL                             R5 -1 -1
       44 CALL                             R4 -1 0
       45 RETURN                           R0 0

PROTO_14:
        0 GETTABLEN                        R2 R1 1
        1 GETUPVAL                         R3 0
        2 JUMPIFNOTEQ                      R2 R3 ; [+5]
        4 MOVE                             R3 R0
        5 GETTABLEN                        R4 R1 2
        6 CONCAT                           R2 R3 R4
        7 RETURN                           R2 1
        8 GETTABLEN                        R2 R1 1
        9 GETUPVAL                         R3 1
       10 JUMPIFEQ                         R2 R3 ; [+2]
       12 RETURN                           R0 1
       13 GETUPVAL                         R2 2
       14 JUMPIFNOT                        R2 ; [+6]
       15 MOVE                             R3 R0
       16 GETUPVAL                         R4 3
       17 GETTABLEN                        R5 R1 2
       18 CALL                             R4 1 1
       19 CONCAT                           R2 R3 R4
       20 RETURN                           R2 1
       21 MOVE                             R3 R0
       22 GETTABLEN                        R4 R1 2
       23 CONCAT                           R2 R3 R4
       24 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["reduce"]
        3 MOVE                             R4 R0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 LOADK                            R6 K1 [""]
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 JUMPIFEQ                         R2 R3 ; [+3]
        8 LOADB                            R4 0
        9 RETURN                           R4 1
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R0
       12 CALL                             R4 1 1
       13 JUMPIFNOT                        R4 ; [+38]
       14 LOADB                            R4 0
       15 FASTCALL1                        TYPEOF R0 ; [+3]
       16 MOVE                             R6 R0
       17 GETIMPORT                        R5 K1 [typeof]
       19 CALL                             R5 1 1
       20 JUMPIFNOTEQKS                    R5 K2 ["string"] ; [+30]
       22 LOADB                            R4 0
       23 FASTCALL1                        TYPEOF R1 ; [+3]
       24 MOVE                             R6 R1
       25 GETIMPORT                        R5 K1 [typeof]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKS                    R5 K2 ["string"] ; [+22]
       30 LOADB                            R4 0
       31 LENGTH                           R5 R0
       32 JUMPIFEQKN                       R5 K3 [0] ; [+18]
       34 LOADB                            R4 0
       35 LENGTH                           R5 R1
       36 JUMPIFEQKN                       R5 K3 [0] ; [+14]
       38 GETIMPORT                        R6 K5 [string.find]
       40 MOVE                             R7 R0
       41 LOADK                            R8 K6 ["\n"]
       42 CALL                             R6 2 1
       43 JUMPIF                           R6 ; [+5]
       44 GETIMPORT                        R6 K5 [string.find]
       46 MOVE                             R7 R1
       47 LOADK                            R8 K6 ["\n"]
       48 CALL                             R6 2 1
       49 NOT                              R5 R6
       50 NOT                              R4 R5
       51 RETURN                           R4 1
       52 JUMPIFEQKS                       R2 K7 ["DateTime"] ; [+3]
       54 JUMPIFNOTEQKS                    R2 K8 ["function"] ; [+3]
       56 LOADB                            R4 0
       57 RETURN                           R4 1
       58 JUMPIFNOTEQKS                    R2 K9 ["table"] ; [+11]
       60 GETTABLEKS                       R5 R0 K10 ["asymmetricMatch"]
       62 FASTCALL1                        TYPEOF R5 ; [+2]
       63 GETIMPORT                        R4 K1 [typeof]
       65 CALL                             R4 1 1
       66 JUMPIFNOTEQKS                    R4 K8 ["function"] ; [+3]
       68 LOADB                            R4 0
       69 RETURN                           R4 1
       70 JUMPIFNOTEQKS                    R3 K9 ["table"] ; [+11]
       72 GETTABLEKS                       R5 R1 K10 ["asymmetricMatch"]
       74 FASTCALL1                        TYPEOF R5 ; [+2]
       75 GETIMPORT                        R4 K1 [typeof]
       77 CALL                             R4 1 1
       78 JUMPIFNOTEQKS                    R4 K8 ["function"] ; [+3]
       80 LOADB                            R4 0
       81 RETURN                           R4 1
       82 LOADB                            R4 1
       83 RETURN                           R4 1

PROTO_17:
        0 GETTABLEN                        R2 R0 1
        1 GETUPVAL                         R3 0
        2 JUMPIFEQ                         R2 R3 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_18:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [typeof]
        4 CALL                             R5 1 1
        5 JUMPIFNOTEQKS                    R5 K2 ["string"] ; [+125]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R6 R1
        9 GETIMPORT                        R5 K1 [typeof]
       11 CALL                             R5 1 1
       12 JUMPIFNOTEQKS                    R5 K2 ["string"] ; [+118]
       14 LENGTH                           R5 R0
       15 JUMPIFEQKN                       R5 K3 [0] ; [+115]
       17 LENGTH                           R5 R1
       18 JUMPIFEQKN                       R5 K3 [0] ; [+112]
       20 LENGTH                           R5 R0
       21 LOADN                            R6 32
       22 JUMPIFNOTLE                      R5 R6 ; [+108]
       24 LENGTH                           R5 R1
       25 LOADN                            R6 32
       26 JUMPIFNOTLE                      R5 R6 ; [+104]
       28 JUMPIFEQ                         R0 R1 ; [+102]
       30 GETIMPORT                        R5 K5 [string.find]
       32 MOVE                             R6 R0
       33 LOADK                            R7 K6 ["\n"]
       34 CALL                             R5 2 1
       35 JUMPIF                           R5 ; [+6]
       36 GETIMPORT                        R5 K5 [string.find]
       38 MOVE                             R6 R1
       39 LOADK                            R7 K6 ["\n"]
       40 CALL                             R5 2 1
       41 JUMPIFNOT                        R5 ; [+31]
       42 GETUPVAL                         R5 0
       43 MOVE                             R6 R0
       44 MOVE                             R7 R1
       45 DUPTABLE                         R8 K14 [{"aAnnotation", "bAnnotation", "changeLineTrailingSpaceColor", "commonLineTrailingSpaceColor", "emptyFirstOrLastLinePlaceholder", "expand", "includeChangeCounts"}]
       46 SETTABLEKS                       R2 R8 K7 ["aAnnotation"]
       48 SETTABLEKS                       R3 R8 K8 ["bAnnotation"]
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R9 R10 K15 ["bgYellow"]
       53 SETTABLEKS                       R9 R8 K9 ["changeLineTrailingSpaceColor"]
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R9 R10 K15 ["bgYellow"]
       58 SETTABLEKS                       R9 R8 K10 ["commonLineTrailingSpaceColor"]
       60 GETIMPORT                        R9 K18 [utf8.char]
       62 LOADN                            R10 181
       63 CALL                             R9 1 1
       64 SETTABLEKS                       R9 R8 K11 ["emptyFirstOrLastLinePlaceholder"]
       66 SETTABLEKS                       R4 R8 K12 ["expand"]
       68 LOADB                            R9 1
       69 SETTABLEKS                       R9 R8 K13 ["includeChangeCounts"]
       71 CALL                             R5 3 -1
       72 RETURN                           R5 -1
       73 GETUPVAL                         R5 2
       74 MOVE                             R6 R0
       75 MOVE                             R7 R1
       76 LOADB                            R8 1
       77 CALL                             R5 3 1
       78 GETUPVAL                         R7 3
       79 GETTABLEKS                       R6 R7 K19 ["some"]
       81 MOVE                             R7 R5
       82 DUPCLOSURE                       R8 K20 [PROTO_17]
       83 CAPTURE                          UPVAL U4
       84 CALL                             R6 2 1
       85 GETGLOBAL                        R7 K21 ["getLabelPrinter"]
       87 MOVE                             R8 R2
       88 MOVE                             R9 R3
       89 CALL                             R7 2 1
       90 MOVE                             R11 R7
       91 MOVE                             R12 R2
       92 CALL                             R11 1 1
       93 MOVE                             R9 R11
       94 GETUPVAL                         R11 5
       95 MOVE                             R12 R5
       96 GETUPVAL                         R13 6
       97 MOVE                             R14 R6
       98 CALL                             R11 3 1
       99 GETUPVAL                         R12 7
      100 GETUPVAL                         R13 8
      101 GETUPVAL                         R14 9
      102 MOVE                             R15 R11
      103 CALL                             R14 1 -1
      104 CALL                             R13 -1 -1
      105 CALL                             R12 -1 1
      106 MOVE                             R10 R12
      107 CONCAT                           R8 R9 R10
      108 MOVE                             R12 R7
      109 MOVE                             R13 R3
      110 CALL                             R12 1 1
      111 MOVE                             R10 R12
      112 GETUPVAL                         R12 5
      113 MOVE                             R13 R5
      114 GETUPVAL                         R14 10
      115 MOVE                             R15 R6
      116 CALL                             R12 3 1
      117 GETUPVAL                         R13 11
      118 GETUPVAL                         R14 8
      119 GETUPVAL                         R15 9
      120 MOVE                             R16 R12
      121 CALL                             R15 1 -1
      122 CALL                             R14 -1 -1
      123 CALL                             R13 -1 1
      124 MOVE                             R11 R13
      125 CONCAT                           R9 R10 R11
      126 MOVE                             R11 R8
      127 LOADK                            R12 K6 ["\n"]
      128 MOVE                             R13 R9
      129 CONCAT                           R10 R11 R13
      130 RETURN                           R10 1
      131 GETUPVAL                         R5 12
      132 MOVE                             R6 R0
      133 MOVE                             R7 R1
      134 CALL                             R5 2 1
      135 JUMPIFNOT                        R5 ; [+54]
      136 GETUPVAL                         R5 13
      137 GETUPVAL                         R6 14
      138 MOVE                             R7 R0
      139 CALL                             R6 1 1
      140 GETUPVAL                         R7 14
      141 MOVE                             R8 R1
      142 CALL                             R7 1 1
      143 NEWTABLE                         R8 0 0
      145 NEWTABLE                         R9 0 0
      147 CALL                             R5 4 1
      148 GETTABLEKS                       R6 R5 K22 ["replacedExpected"]
      150 GETTABLEKS                       R7 R5 K23 ["replacedReceived"]
      152 GETUPVAL                         R8 15
      153 MOVE                             R9 R6
      154 MOVE                             R10 R7
      155 DUPTABLE                         R11 K24 [{"aAnnotation", "bAnnotation", "expand", "includeChangeCounts"}]
      156 SETTABLEKS                       R2 R11 K7 ["aAnnotation"]
      158 SETTABLEKS                       R3 R11 K8 ["bAnnotation"]
      160 SETTABLEKS                       R4 R11 K12 ["expand"]
      162 LOADB                            R12 1
      163 SETTABLEKS                       R12 R11 K13 ["includeChangeCounts"]
      165 CALL                             R8 3 1
      166 FASTCALL1                        TYPEOF R8 ; [+3]
      167 MOVE                             R10 R8
      168 GETIMPORT                        R9 K1 [typeof]
      170 CALL                             R9 1 1
      171 JUMPIFNOTEQKS                    R9 K2 ["string"] ; [+18]
      173 GETIMPORT                        R9 K5 [string.find]
      175 MOVE                             R10 R8
      176 LOADK                            R12 K25 ["%- "]
      177 MOVE                             R13 R2
      178 CONCAT                           R11 R12 R13
      179 CALL                             R9 2 1
      180 JUMPIFNOT                        R9 ; [+9]
      181 GETIMPORT                        R9 K5 [string.find]
      183 MOVE                             R10 R8
      184 LOADK                            R12 K26 ["%+ "]
      185 MOVE                             R13 R3
      186 CONCAT                           R11 R12 R13
      187 CALL                             R9 2 1
      188 JUMPIFNOT                        R9 ; [+1]
      189 RETURN                           R8 1
      190 GETGLOBAL                        R5 K21 ["getLabelPrinter"]
      192 MOVE                             R6 R2
      193 MOVE                             R7 R3
      194 CALL                             R5 2 1
      195 MOVE                             R9 R5
      196 MOVE                             R10 R2
      197 CALL                             R9 1 1
      198 MOVE                             R7 R9
      199 GETUPVAL                         R8 7
      200 GETUPVAL                         R9 8
      201 GETUPVAL                         R10 9
      202 MOVE                             R11 R0
      203 CALL                             R10 1 -1
      204 CALL                             R9 -1 -1
      205 CALL                             R8 -1 1
      206 CONCAT                           R6 R7 R8
      207 LOADNIL                          R7
      208 GETUPVAL                         R8 9
      209 MOVE                             R9 R0
      210 CALL                             R8 1 1
      211 GETUPVAL                         R9 9
      212 MOVE                             R10 R1
      213 CALL                             R9 1 1
      214 JUMPIFNOTEQ                      R8 R9 ; [+8]
      216 MOVE                             R10 R5
      217 MOVE                             R11 R3
      218 CALL                             R10 1 1
      219 MOVE                             R8 R10
      220 LOADK                            R9 K27 ["serializes to the same string"]
      221 CONCAT                           R7 R8 R9
      222 JUMP                             ; [+12]
      223 MOVE                             R10 R5
      224 MOVE                             R11 R3
      225 CALL                             R10 1 1
      226 MOVE                             R8 R10
      227 GETUPVAL                         R9 11
      228 GETUPVAL                         R10 8
      229 GETUPVAL                         R11 9
      230 MOVE                             R12 R1
      231 CALL                             R11 1 -1
      232 CALL                             R10 -1 -1
      233 CALL                             R9 -1 1
      234 CONCAT                           R7 R8 R9
      235 MOVE                             R9 R6
      236 LOADK                            R10 K6 ["\n"]
      237 MOVE                             R11 R7
      238 CONCAT                           R8 R9 R11
      239 RETURN                           R8 1

PROTO_19:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+10]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K1 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+3]
       14 LOADB                            R2 0
       15 RETURN                           R2 1
       16 FASTCALL1                        TYPEOF R0 ; [+3]
       17 MOVE                             R3 R0
       18 GETIMPORT                        R2 K1 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K3 ["boolean"] ; [+10]
       23 FASTCALL1                        TYPEOF R1 ; [+3]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K1 [typeof]
       27 CALL                             R2 1 1
       28 JUMPIFNOTEQKS                    R2 K3 ["boolean"] ; [+3]
       30 LOADB                            R2 0
       31 RETURN                           R2 1
       32 LOADB                            R2 1
       33 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["get"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 JUMPIFNOT                        R3 ; [+12]
        9 MOVE                             R5 R2
       10 NAMECALL                         R3 R0 K1 ["asymmetricMatch"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+50]
       14 GETUPVAL                         R3 0
       15 MOVE                             R5 R1
       16 MOVE                             R6 R0
       17 NAMECALL                         R3 R3 K2 ["set"]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 1
       22 MOVE                             R4 R2
       23 CALL                             R3 1 1
       24 JUMPIFNOT                        R3 ; [+12]
       25 MOVE                             R5 R0
       26 NAMECALL                         R3 R2 K1 ["asymmetricMatch"]
       28 CALL                             R3 2 1
       29 JUMPIFNOT                        R3 ; [+34]
       30 GETUPVAL                         R3 2
       31 MOVE                             R5 R1
       32 MOVE                             R6 R2
       33 NAMECALL                         R3 R3 K2 ["set"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R3 R4 K3 ["isReplaceable"]
       40 MOVE                             R4 R0
       41 MOVE                             R5 R2
       42 CALL                             R3 2 1
       43 JUMPIFNOT                        R3 ; [+20]
       44 GETUPVAL                         R3 4
       45 MOVE                             R4 R0
       46 MOVE                             R5 R2
       47 GETUPVAL                         R6 5
       48 GETUPVAL                         R7 6
       49 CALL                             R3 4 1
       50 GETUPVAL                         R4 2
       51 MOVE                             R6 R1
       52 GETTABLEKS                       R7 R3 K4 ["replacedExpected"]
       54 NAMECALL                         R4 R4 K2 ["set"]
       56 CALL                             R4 3 0
       57 GETUPVAL                         R4 0
       58 MOVE                             R6 R1
       59 GETTABLEKS                       R7 R3 K5 ["replacedReceived"]
       61 NAMECALL                         R4 R4 K2 ["set"]
       63 CALL                             R4 3 0
       64 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["isReplaceable"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 JUMPIF                           R4 ; [+6]
        7 DUPTABLE                         R4 K3 [{"replacedExpected", "replacedReceived"}]
        8 SETTABLEKS                       R0 R4 K1 ["replacedExpected"]
       10 SETTABLEKS                       R1 R4 K2 ["replacedReceived"]
       12 RETURN                           R4 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K4 ["indexOf"]
       16 MOVE                             R5 R2
       17 MOVE                             R6 R0
       18 CALL                             R4 2 1
       19 JUMPIFNOTEQKN                    R4 K5 [-1] ; [+9]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K4 ["indexOf"]
       24 MOVE                             R5 R3
       25 MOVE                             R6 R1
       26 CALL                             R4 2 1
       27 JUMPIFEQKN                       R4 K5 [-1] ; [+7]
       29 DUPTABLE                         R4 K3 [{"replacedExpected", "replacedReceived"}]
       30 SETTABLEKS                       R0 R4 K1 ["replacedExpected"]
       32 SETTABLEKS                       R1 R4 K2 ["replacedReceived"]
       34 RETURN                           R4 1
       35 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
       37 MOVE                             R5 R2
       38 MOVE                             R6 R0
       39 GETIMPORT                        R4 K8 [table.insert]
       41 CALL                             R4 2 0
       42 FASTCALL2                        TABLE_INSERT R3 R1 ; [+5]
       44 MOVE                             R5 R3
       45 MOVE                             R6 R1
       46 GETIMPORT                        R4 K8 [table.insert]
       48 CALL                             R4 2 0
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R4 R5 K9 ["new"]
       52 MOVE                             R5 R0
       53 CALL                             R4 1 1
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K9 ["new"]
       57 MOVE                             R6 R1
       58 CALL                             R5 1 1
       59 NEWCLOSURE                       R8 P0
       60 CAPTURE                          VAL R5
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          UPVAL U0
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 NAMECALL                         R6 R4 K10 ["forEach"]
       69 CALL                             R6 2 0
       70 DUPTABLE                         R6 K3 [{"replacedExpected", "replacedReceived"}]
       71 GETTABLEKS                       R7 R4 K11 ["object"]
       73 SETTABLEKS                       R7 R6 K1 ["replacedExpected"]
       75 GETTABLEKS                       R7 R5 K11 ["object"]
       77 SETTABLEKS                       R7 R6 K2 ["replacedReceived"]
       79 RETURN                           R6 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADB                            R2 0
        4 JUMPIFNOTEQKS                    R1 K0 ["table"] ; [+11]
        6 GETTABLEKS                       R4 R0 K1 ["asymmetricMatch"]
        8 FASTCALL1                        TYPEOF R4 ; [+2]
        9 GETIMPORT                        R3 K3 [typeof]
       11 CALL                             R3 1 1
       12 JUMPIFEQKS                       R3 K4 ["function"] ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+6]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 1
       10 JUMPIF                           R3 ; [+1]
       11 LOADNIL                          R3
       12 RETURN                           R3 1

PROTO_24:
        0 JUMPIFNOTEQKN                    R1 K0 [1] ; [+9]
        2 GETUPVAL                         R7 0
        3 ADDK                             R8 R1 K0 [1]
        4 GETTABLE                         R6 R7 R8
        5 OR                               R3 R6 R1
        6 LOADK                            R4 K1 [" "]
        7 MOVE                             R5 R0
        8 CONCAT                           R2 R3 R5
        9 RETURN                           R2 1
       10 GETUPVAL                         R8 0
       11 ADDK                             R9 R1 K0 [1]
       12 GETTABLE                         R7 R8 R9
       13 OR                               R3 R7 R1
       14 LOADK                            R4 K1 [" "]
       15 MOVE                             R5 R0
       16 LOADK                            R6 K2 ["s"]
       17 CONCAT                           R2 R3 R6
       18 RETURN                           R2 1

PROTO_25:
        0 LENGTH                           R3 R1
        1 FASTCALL2                        MATH_MAX R3 R0 ; [+4]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R2 K2 [math.max]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_26:
        0 LENGTH                           R1 R0
        1 GETUPVAL                         R2 0
        2 JUMPIFNOTLT                      R2 R1 ; [+7]
        4 GETIMPORT                        R1 K1 [error]
        6 LOADK                            R3 K2 ["Cannot print label for string with length larger than the max allowed of "]
        7 GETUPVAL                         R4 0
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 GETIMPORT                        R1 K5 [string.format]
       12 LOADK                            R2 K6 ["%s: %s"]
       13 MOVE                             R3 R0
       14 GETIMPORT                        R4 K8 [string.rep]
       16 LOADK                            R5 K9 [" "]
       17 GETUPVAL                         R7 0
       18 LENGTH                           R8 R0
       19 SUB                              R6 R7 R8
       20 CALL                             R4 2 -1
       21 CALL                             R1 -1 -1
       22 RETURN                           R1 -1

PROTO_27:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["reduce"]
        9 MOVE                             R2 R0
       10 DUPCLOSURE                       R3 K1 [PROTO_25]
       11 LOADN                            R4 0
       12 CALL                             R1 3 1
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R1
       15 RETURN                           R2 1

PROTO_28:
        0 FASTCALL1                        TYPEOF R2 ; [+3]
        1 MOVE                             R4 R2
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+14]
        7 GETIMPORT                        R3 K4 [string.format]
        9 LOADK                            R4 K5 ["%s\n\n%s: %s%s"]
       10 MOVE                             R5 R0
       11 GETUPVAL                         R6 0
       12 LOADK                            R7 K6 ["Matcher error"]
       13 CALL                             R6 1 1
       14 MOVE                             R7 R1
       15 LOADK                            R9 K7 ["\n\n"]
       16 MOVE                             R10 R2
       17 CONCAT                           R8 R9 R10
       18 CALL                             R3 5 -1
       19 RETURN                           R3 -1
       20 GETIMPORT                        R3 K4 [string.format]
       22 LOADK                            R4 K5 ["%s\n\n%s: %s%s"]
       23 MOVE                             R5 R0
       24 GETUPVAL                         R6 0
       25 LOADK                            R7 K6 ["Matcher error"]
       26 CALL                             R6 1 1
       27 MOVE                             R7 R1
       28 LOADK                            R8 K8 [""]
       29 CALL                             R3 5 -1
       30 RETURN                           R3 -1

PROTO_29:
        0 ORK                              R1 R1 K0 ["received"]
        1 ORK                              R2 R2 K1 ["expected"]
        2 MOVE                             R4 R3
        3 JUMPIF                           R4 ; [+2]
        4 NEWTABLE                         R4 0 0
        6 MOVE                             R3 R4
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 LOADNIL                          R9
       13 LOADNIL                          R10
       14 LOADNIL                          R11
       15 JUMPIFNOT                        R3 ; [+30]
       16 GETTABLEKS                       R12 R3 K3 ["comment"]
       18 ORK                              R4 R12 K2 [""]
       19 GETTABLEKS                       R12 R3 K4 ["expectedColor"]
       21 JUMPIF                           R12 ; [+1]
       22 GETUPVAL                         R12 0
       23 MOVE                             R5 R12
       24 GETTABLEKS                       R12 R3 K6 ["isDirectExpectCall"]
       26 ORK                              R6 R12 K5 [False]
       27 GETTABLEKS                       R12 R3 K7 ["isNot"]
       29 ORK                              R7 R12 K5 [False]
       30 GETTABLEKS                       R12 R3 K8 ["promise"]
       32 ORK                              R8 R12 K2 [""]
       33 GETTABLEKS                       R12 R3 K9 ["receivedColor"]
       35 JUMPIF                           R12 ; [+1]
       36 GETUPVAL                         R12 1
       37 MOVE                             R9 R12
       38 GETTABLEKS                       R12 R3 K10 ["secondArgument"]
       40 ORK                              R10 R12 K2 [""]
       41 GETTABLEKS                       R12 R3 K11 ["secondArgumentColor"]
       43 JUMPIF                           R12 ; [+1]
       44 GETUPVAL                         R12 0
       45 MOVE                             R11 R12
       46 LOADK                            R12 K2 [""]
       47 LOADK                            R13 K12 ["expect"]
       48 JUMPIF                           R6 ; [+14]
       49 JUMPIFEQKS                       R1 K2 [""] ; [+13]
       51 MOVE                             R14 R12
       52 GETUPVAL                         R17 2
       53 MOVE                             R19 R13
       54 LOADK                            R20 K13 ["("]
       55 CONCAT                           R18 R19 R20
       56 CALL                             R17 1 1
       57 MOVE                             R15 R17
       58 MOVE                             R16 R9
       59 MOVE                             R17 R1
       60 CALL                             R16 1 1
       61 CONCAT                           R12 R14 R16
       62 LOADK                            R13 K14 [")"]
       63 JUMPIFEQKS                       R8 K2 [""] ; [+11]
       65 MOVE                             R14 R12
       66 GETUPVAL                         R17 2
       67 MOVE                             R19 R13
       68 LOADK                            R20 K15 ["."]
       69 CONCAT                           R18 R19 R20
       70 CALL                             R17 1 1
       71 MOVE                             R15 R17
       72 MOVE                             R16 R8
       73 CONCAT                           R12 R14 R16
       74 LOADK                            R13 K2 [""]
       75 JUMPIFNOT                        R7 ; [+10]
       76 MOVE                             R14 R12
       77 GETUPVAL                         R17 2
       78 MOVE                             R19 R13
       79 LOADK                            R20 K15 ["."]
       80 CONCAT                           R18 R19 R20
       81 CALL                             R17 1 1
       82 MOVE                             R15 R17
       83 LOADK                            R16 K16 ["never"]
       84 CONCAT                           R12 R14 R16
       85 LOADK                            R13 K2 [""]
       86 GETIMPORT                        R14 K19 [string.find]
       88 MOVE                             R15 R0
       89 LOADK                            R16 K20 ["%."]
       90 CALL                             R14 2 1
       91 JUMPIFNOT                        R14 ; [+4]
       92 MOVE                             R14 R13
       93 MOVE                             R15 R0
       94 CONCAT                           R13 R14 R15
       95 JUMP                             ; [+10]
       96 MOVE                             R14 R12
       97 GETUPVAL                         R17 2
       98 MOVE                             R19 R13
       99 LOADK                            R20 K15 ["."]
      100 CONCAT                           R18 R19 R20
      101 CALL                             R17 1 1
      102 MOVE                             R15 R17
      103 MOVE                             R16 R0
      104 CONCAT                           R12 R14 R16
      105 LOADK                            R13 K2 [""]
      106 JUMPIFNOTEQKS                    R2 K2 [""] ; [+5]
      108 MOVE                             R14 R13
      109 LOADK                            R15 K21 ["()"]
      110 CONCAT                           R13 R14 R15
      111 JUMP                             ; [+23]
      112 MOVE                             R14 R12
      113 GETUPVAL                         R17 2
      114 MOVE                             R19 R13
      115 LOADK                            R20 K13 ["("]
      116 CONCAT                           R18 R19 R20
      117 CALL                             R17 1 1
      118 MOVE                             R15 R17
      119 MOVE                             R16 R5
      120 MOVE                             R17 R2
      121 CALL                             R16 1 1
      122 CONCAT                           R12 R14 R16
      123 JUMPIFEQKS                       R10 K2 [""] ; [+10]
      125 MOVE                             R14 R12
      126 GETUPVAL                         R17 2
      127 LOADK                            R18 K22 [", "]
      128 CALL                             R17 1 1
      129 MOVE                             R15 R17
      130 MOVE                             R16 R11
      131 MOVE                             R17 R10
      132 CALL                             R16 1 1
      133 CONCAT                           R12 R14 R16
      134 LOADK                            R13 K14 [")"]
      135 JUMPIFEQKS                       R4 K2 [""] ; [+5]
      137 MOVE                             R14 R13
      138 LOADK                            R15 K23 [" -- "]
      139 MOVE                             R16 R4
      140 CONCAT                           R13 R14 R16
      141 JUMPIFEQKS                       R13 K2 [""] ; [+6]
      143 MOVE                             R14 R12
      144 GETUPVAL                         R15 2
      145 MOVE                             R16 R13
      146 CALL                             R15 1 1
      147 CONCAT                           R12 R14 R15
      148 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Array"]
       12 GETTABLEKS                       R4 R2 K7 ["Error"]
       14 GETTABLEKS                       R5 R2 K8 ["Number"]
       16 GETTABLEKS                       R6 R2 K9 ["Symbol"]
       18 GETIMPORT                        R7 K4 [require]
       20 GETTABLEKS                       R8 R1 K10 ["ChalkLua"]
       22 CALL                             R7 1 1
       23 GETIMPORT                        R8 K4 [require]
       25 GETTABLEKS                       R9 R1 K11 ["JestDiff"]
       27 CALL                             R8 1 1
       28 GETTABLEKS                       R9 R8 K12 ["DIFF_DELETE"]
       30 GETTABLEKS                       R10 R8 K13 ["DIFF_EQUAL"]
       32 GETTABLEKS                       R11 R8 K14 ["DIFF_INSERT"]
       34 GETTABLEKS                       R12 R8 K15 ["diff"]
       36 GETTABLEKS                       R13 R8 K16 ["diffStringsRaw"]
       38 GETTABLEKS                       R14 R8 K17 ["diffStringsUnified"]
       40 GETIMPORT                        R15 K4 [require]
       42 GETTABLEKS                       R16 R1 K18 ["JestGetType"]
       44 CALL                             R15 1 1
       45 GETTABLEKS                       R16 R15 K19 ["getType"]
       47 GETTABLEKS                       R17 R15 K20 ["isPrimitive"]
       49 GETIMPORT                        R18 K4 [require]
       51 GETTABLEKS                       R19 R1 K21 ["PrettyFormat"]
       53 CALL                             R18 1 1
       54 GETTABLEKS                       R19 R18 K22 ["format"]
       56 GETIMPORT                        R20 K4 [require]
       58 GETTABLEKS                       R21 R0 K23 ["Replaceable"]
       60 CALL                             R20 1 1
       61 GETIMPORT                        R21 K4 [require]
       63 GETTABLEKS                       R22 R0 K24 ["deepCyclicCopyReplaceable"]
       65 CALL                             R21 1 1
       66 GETTABLEKS                       R22 R18 K25 ["plugins"]
       68 NEWTABLE                         R23 0 2
       70 GETTABLEKS                       R24 R22 K26 ["AsymmetricMatcher"]
       72 GETTABLEKS                       R25 R22 K27 ["RobloxInstance"]
       74 SETLIST                          R23 R24 2 [1]
       76 GETTABLEKS                       R24 R7 K28 ["green"]
       78 GETTABLEKS                       R25 R7 K29 ["red"]
       80 GETTABLEKS                       R26 R7 K30 ["inverse"]
       82 GETTABLEKS                       R27 R7 K31 ["bold"]
       84 GETTABLEKS                       R28 R7 K32 ["dim"]
       86 GETIMPORT                        R29 K35 [utf8.char]
       88 LOADN                            R30 183
       89 CALL                             R29 1 1
       90 NEWTABLE                         R30 0 14
       92 LOADK                            R31 K36 ["zero"]
       93 LOADK                            R32 K37 ["one"]
       94 LOADK                            R33 K38 ["two"]
       95 LOADK                            R34 K39 ["three"]
       96 LOADK                            R35 K40 ["four"]
       97 LOADK                            R36 K41 ["five"]
       98 LOADK                            R37 K42 ["six"]
       99 LOADK                            R38 K43 ["seven"]
      100 LOADK                            R39 K44 ["eight"]
      101 LOADK                            R40 K45 ["nine"]
      102 LOADK                            R41 K46 ["ten"]
      103 LOADK                            R42 K47 ["eleven"]
      104 LOADK                            R43 K48 ["twelve"]
      105 LOADK                            R44 K49 ["thirteen"]
      106 SETLIST                          R30 R31 14 [1]
      108 LOADNIL                          R31
      109 LOADNIL                          R32
      110 LOADNIL                          R33
      111 LOADNIL                          R34
      112 LOADNIL                          R35
      113 LOADNIL                          R36
      114 LOADNIL                          R37
      115 LOADNIL                          R38
      116 DUPCLOSURE                       R39 K50 [PROTO_1]
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R19
      119 CAPTURE                          VAL R23
      120 CAPTURE                          VAL R39
      121 DUPCLOSURE                       R40 K51 [PROTO_3]
      122 CAPTURE                          VAL R26
      123 DUPCLOSURE                       R31 K52 [PROTO_5]
      124 CAPTURE                          VAL R29
      125 NEWCLOSURE                       R41 P3
      126 CAPTURE                          VAL R25
      127 CAPTURE                          REF R31
      128 CAPTURE                          VAL R39
      129 NEWCLOSURE                       R42 P4
      130 CAPTURE                          VAL R24
      131 CAPTURE                          REF R31
      132 CAPTURE                          VAL R39
      133 DUPCLOSURE                       R43 K53 [PROTO_8]
      134 CAPTURE                          VAL R16
      135 NEWCLOSURE                       R44 P6
      136 CAPTURE                          VAL R4
      137 CAPTURE                          REF R37
      138 CAPTURE                          REF R38
      139 CAPTURE                          VAL R43
      140 CAPTURE                          VAL R42
      141 NEWCLOSURE                       R45 P7
      142 CAPTURE                          VAL R4
      143 CAPTURE                          REF R37
      144 CAPTURE                          REF R38
      145 CAPTURE                          VAL R25
      146 CAPTURE                          VAL R43
      147 CAPTURE                          VAL R41
      148 NEWCLOSURE                       R46 P8
      149 CAPTURE                          VAL R4
      150 CAPTURE                          REF R37
      151 CAPTURE                          REF R38
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R43
      154 CAPTURE                          VAL R42
      155 DUPCLOSURE                       R47 K54 [PROTO_12]
      156 CAPTURE                          VAL R45
      157 CAPTURE                          VAL R46
      158 NEWCLOSURE                       R48 P10
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R4
      161 CAPTURE                          REF R37
      162 CAPTURE                          REF R38
      163 CAPTURE                          VAL R24
      164 CAPTURE                          VAL R43
      165 CAPTURE                          VAL R42
      166 DUPCLOSURE                       R32 K55 [PROTO_15]
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R26
      170 DUPCLOSURE                       R33 K56 [PROTO_16]
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R17
      173 NEWCLOSURE                       R49 P13
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R10
      179 CAPTURE                          REF R32
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R24
      182 CAPTURE                          REF R31
      183 CAPTURE                          VAL R39
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R25
      186 CAPTURE                          REF R33
      187 CAPTURE                          REF R35
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R12
      190 SETGLOBAL                        R49 K57 ["printDiffOrStringify"]
      192 DUPCLOSURE                       R34 K58 [PROTO_19]
      193 NEWCLOSURE                       R35 P15
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R3
      196 CAPTURE                          REF R36
      197 CAPTURE                          REF R35
      198 DUPCLOSURE                       R36 K59 [PROTO_22]
      199 CAPTURE                          VAL R16
      200 NEWCLOSURE                       R49 P17
      201 CAPTURE                          REF R34
      202 CAPTURE                          VAL R12
      203 DUPCLOSURE                       R50 K60 [PROTO_24]
      204 CAPTURE                          VAL R30
      205 SETGLOBAL                        R50 K61 ["pluralize"]
      207 DUPCLOSURE                       R50 K62 [PROTO_27]
      208 CAPTURE                          VAL R3
      209 SETGLOBAL                        R50 K63 ["getLabelPrinter"]
      211 DUPCLOSURE                       R37 K64 [PROTO_28]
      212 CAPTURE                          VAL R27
      213 DUPCLOSURE                       R38 K65 [PROTO_29]
      214 CAPTURE                          VAL R24
      215 CAPTURE                          VAL R25
      216 CAPTURE                          VAL R28
      217 DUPTABLE                         R50 K84 [{"EXPECTED_COLOR", "RECEIVED_COLOR", "INVERTED_COLOR", "BOLD_WEIGHT", "DIM_COLOR", "SUGGEST_TO_CONTAIN_EQUAL", "stringify", "highlightTrailingWhitespace", "printReceived", "printExpected", "printWithType", "ensureNoExpected", "ensureActualIsNumber", "ensureExpectedIsNumber", "ensureNumbers", "ensureExpectedIsNonNegativeInteger", "printDiffOrStringify", "diff", "pluralize", "getLabelPrinter", "matcherErrorMessage", "matcherHint"}]
      218 SETTABLEKS                       R24 R50 K66 ["EXPECTED_COLOR"]
      220 SETTABLEKS                       R25 R50 K67 ["RECEIVED_COLOR"]
      222 SETTABLEKS                       R26 R50 K68 ["INVERTED_COLOR"]
      224 SETTABLEKS                       R27 R50 K69 ["BOLD_WEIGHT"]
      226 SETTABLEKS                       R28 R50 K70 ["DIM_COLOR"]
      228 LOADK                            R51 K85 ["Looks like you wanted to test for object/array equality with the stricter `toContain` matcher. You probably need to use `toContainEqual` instead."]
      229 SETTABLEKS                       R51 R50 K71 ["SUGGEST_TO_CONTAIN_EQUAL"]
      231 SETTABLEKS                       R39 R50 K72 ["stringify"]
      233 SETTABLEKS                       R40 R50 K73 ["highlightTrailingWhitespace"]
      235 SETTABLEKS                       R41 R50 K74 ["printReceived"]
      237 SETTABLEKS                       R42 R50 K75 ["printExpected"]
      239 SETTABLEKS                       R43 R50 K76 ["printWithType"]
      241 SETTABLEKS                       R44 R50 K77 ["ensureNoExpected"]
      243 SETTABLEKS                       R45 R50 K78 ["ensureActualIsNumber"]
      245 SETTABLEKS                       R46 R50 K79 ["ensureExpectedIsNumber"]
      247 SETTABLEKS                       R47 R50 K80 ["ensureNumbers"]
      249 SETTABLEKS                       R48 R50 K81 ["ensureExpectedIsNonNegativeInteger"]
      251 GETGLOBAL                        R51 K57 ["printDiffOrStringify"]
      253 SETTABLEKS                       R51 R50 K57 ["printDiffOrStringify"]
      255 SETTABLEKS                       R49 R50 K15 ["diff"]
      257 GETGLOBAL                        R51 K61 ["pluralize"]
      259 SETTABLEKS                       R51 R50 K61 ["pluralize"]
      261 GETGLOBAL                        R51 K63 ["getLabelPrinter"]
      263 SETTABLEKS                       R51 R50 K63 ["getLabelPrinter"]
      265 SETTABLEKS                       R37 R50 K82 ["matcherErrorMessage"]
      267 SETTABLEKS                       R38 R50 K83 ["matcherHint"]
      269 CLOSEUPVALS                      R31
      270 RETURN                           R50 1
