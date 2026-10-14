PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 DUPTABLE                         R2 K5 [{[1], ["maxWidth"], ["min"] = True, ["plugins"]}]
        3 GETUPVAL                         R3 3
        4 SETTABLEKS                       R3 R2 K0 ["maxDepth"]
        6 GETUPVAL                         R3 4
        7 SETTABLEKS                       R3 R2 K1 ["maxWidth"]
        9 GETUPVAL                         R3 5
       10 SETTABLEKS                       R3 R2 K4 ["plugins"]
       12 CALL                             R0 2 1
       13 SETUPVAL                         R0 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["for_"]
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
       29 JUMPIF                           R6 ; [+12]
       30 GETUPVAL                         R7 1
       31 MOVE                             R8 R0
       32 DUPTABLE                         R9 K11 [{["callToJSON"] = False, ["maxDepth"], ["maxWidth"], ["min"] = True, ["plugins"]}]
       33 SETTABLEKS                       R3 R9 K6 ["maxDepth"]
       35 SETTABLEKS                       R4 R9 K7 ["maxWidth"]
       37 GETUPVAL                         R10 2
       38 SETTABLEKS                       R10 R9 K10 ["plugins"]
       40 CALL                             R7 2 1
       41 MOVE                             R5 R7
       42 LENGTH                           R7 R5
       43 LOADN                            R8 10000
       44 JUMPIFNOTLE                      R8 R7 ; [+15]
       46 LOADN                            R7 1
       47 JUMPIFNOTLT                      R7 R3 ; [+12]
       49 GETUPVAL                         R7 3
       50 MOVE                             R8 R0
       51 DIVK                             R10 R3 K12 [2]
       52 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       53 GETIMPORT                        R9 K15 [math.floor]
       55 CALL                             R9 1 1
       56 MOVE                             R10 R4
       57 CALL                             R7 3 -1
       58 CLOSEUPVALS                      R0
       59 RETURN                           R7 -1
       60 LENGTH                           R7 R5
       61 LOADN                            R8 10000
       62 JUMPIFNOTLE                      R8 R7 ; [+15]
       64 LOADN                            R7 1
       65 JUMPIFNOTLT                      R7 R4 ; [+12]
       67 GETUPVAL                         R7 3
       68 MOVE                             R8 R0
       69 MOVE                             R9 R3
       70 DIVK                             R11 R4 K12 [2]
       71 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       72 GETIMPORT                        R10 K15 [math.floor]
       74 CALL                             R10 1 1
       75 CALL                             R7 3 -1
       76 CLOSEUPVALS                      R0
       77 RETURN                           R7 -1
       78 CLOSEUPVALS                      R0
       79 RETURN                           R5 1

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
        5 JUMPIFEQKS                       R3 K2 ["nil"] ; [+27]
        7 MOVE                             R3 R1
        8 JUMPIF                           R2 ; [+3]
        9 LOADK                            R4 K3 ["[.never]"]
       10 MOVE                             R5 R3
       11 CONCAT                           R3 R4 R5
       12 GETIMPORT                        R4 K5 [error]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K6 ["new"]
       17 GETUPVAL                         R6 1
       18 GETUPVAL                         R7 2
       19 MOVE                             R8 R3
       20 LOADNIL                          R9
       21 LOADK                            R10 K7 [""]
       22 MOVE                             R11 R2
       23 CALL                             R7 4 1
       24 LOADK                            R8 K8 ["this matcher must not have an expected argument"]
       25 GETUPVAL                         R9 3
       26 LOADK                            R10 K9 ["Expected"]
       27 MOVE                             R11 R0
       28 GETUPVAL                         R12 4
       29 CALL                             R9 3 1
       30 CALL                             R6 3 -1
       31 CALL                             R5 -1 -1
       32 CALL                             R4 -1 0
       33 RETURN                           R0 0

PROTO_10:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+32]
        7 MOVE                             R3 R1
        8 JUMPIF                           R2 ; [+3]
        9 LOADK                            R4 K3 ["[.never]"]
       10 MOVE                             R5 R3
       11 CONCAT                           R3 R4 R5
       12 GETIMPORT                        R4 K5 [error]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K6 ["new"]
       17 GETUPVAL                         R6 1
       18 GETUPVAL                         R7 2
       19 MOVE                             R8 R3
       20 LOADNIL                          R9
       21 LOADNIL                          R10
       22 MOVE                             R11 R2
       23 CALL                             R7 4 1
       24 GETUPVAL                         R11 3
       25 LOADK                            R12 K7 ["received"]
       26 CALL                             R11 1 1
       27 MOVE                             R9 R11
       28 LOADK                            R10 K8 [" value must be a number"]
       29 CONCAT                           R8 R9 R10
       30 GETUPVAL                         R9 4
       31 LOADK                            R10 K9 ["Received"]
       32 MOVE                             R11 R0
       33 GETUPVAL                         R12 5
       34 CALL                             R9 3 1
       35 CALL                             R6 3 -1
       36 CALL                             R5 -1 -1
       37 CALL                             R4 -1 0
       38 RETURN                           R0 0

PROTO_11:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+32]
        7 MOVE                             R3 R1
        8 JUMPIF                           R2 ; [+3]
        9 LOADK                            R4 K3 ["[.never]"]
       10 MOVE                             R5 R3
       11 CONCAT                           R3 R4 R5
       12 GETIMPORT                        R4 K5 [error]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K6 ["new"]
       17 GETUPVAL                         R6 1
       18 GETUPVAL                         R7 2
       19 MOVE                             R8 R3
       20 LOADNIL                          R9
       21 LOADNIL                          R10
       22 MOVE                             R11 R2
       23 CALL                             R7 4 1
       24 GETUPVAL                         R11 3
       25 LOADK                            R12 K7 ["expected"]
       26 CALL                             R11 1 1
       27 MOVE                             R9 R11
       28 LOADK                            R10 K8 [" value must be a number"]
       29 CONCAT                           R8 R9 R10
       30 GETUPVAL                         R9 4
       31 LOADK                            R10 K9 ["Expected"]
       32 MOVE                             R11 R0
       33 GETUPVAL                         R12 5
       34 CALL                             R9 3 1
       35 CALL                             R6 3 -1
       36 CALL                             R5 -1 -1
       37 CALL                             R4 -1 0
       38 RETURN                           R0 0

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
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+7]
        7 LOADN                            R3 0
        8 JUMPIFLT                         R0 R3 ; [+4]
       10 MODK                             R3 R0 K3 [1]
       11 JUMPIFEQKN                       R3 K4 [0] ; [+32]
       13 MOVE                             R3 R1
       14 JUMPIF                           R2 ; [+3]
       15 LOADK                            R4 K5 ["[.never]"]
       16 MOVE                             R5 R3
       17 CONCAT                           R3 R4 R5
       18 GETIMPORT                        R4 K7 [error]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K8 ["new"]
       23 GETUPVAL                         R6 1
       24 GETUPVAL                         R7 2
       25 MOVE                             R8 R3
       26 LOADNIL                          R9
       27 LOADNIL                          R10
       28 MOVE                             R11 R2
       29 CALL                             R7 4 1
       30 GETUPVAL                         R11 3
       31 LOADK                            R12 K9 ["expected"]
       32 CALL                             R11 1 1
       33 MOVE                             R9 R11
       34 LOADK                            R10 K10 [" value must be a non-negative integer"]
       35 CONCAT                           R8 R9 R10
       36 GETUPVAL                         R9 4
       37 LOADK                            R10 K11 ["Expected"]
       38 MOVE                             R11 R0
       39 GETUPVAL                         R12 5
       40 CALL                             R9 3 1
       41 CALL                             R6 3 -1
       42 CALL                             R5 -1 -1
       43 CALL                             R4 -1 0
       44 RETURN                           R0 0

PROTO_14:
        0 LOADK                            R3 K0 [""]
        1 MOVE                             R4 R0
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 GETTABLEN                        R9 R8 1
        6 GETUPVAL                         R10 0
        7 JUMPIFNOTEQ                      R9 R10 ; [+5]
        9 MOVE                             R9 R3
       10 GETTABLEN                        R10 R8 2
       11 CONCAT                           R3 R9 R10
       12 JUMP                             ; [+14]
       13 GETTABLEN                        R9 R8 1
       14 JUMPIFEQ                         R9 R1 ; [+2]
       16 JUMP                             ; [+10]
       17 JUMPIFNOT                        R2 ; [+6]
       18 MOVE                             R9 R3
       19 GETUPVAL                         R10 1
       20 GETTABLEN                        R11 R8 2
       21 CALL                             R10 1 1
       22 CONCAT                           R3 R9 R10
       23 JUMP                             ; [+3]
       24 MOVE                             R9 R3
       25 GETTABLEN                        R10 R8 2
       26 CONCAT                           R3 R9 R10
       27 FORGLOOP                         R4 2 ; [-23]
       29 RETURN                           R3 1

PROTO_15:
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

PROTO_16:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [typeof]
        4 CALL                             R5 1 1
        5 JUMPIFNOTEQKS                    R5 K2 ["string"] ; [+128]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R6 R1
        9 GETIMPORT                        R5 K1 [typeof]
       11 CALL                             R5 1 1
       12 JUMPIFNOTEQKS                    R5 K2 ["string"] ; [+121]
       14 LENGTH                           R5 R0
       15 JUMPIFEQKN                       R5 K3 [0] ; [+118]
       17 LENGTH                           R5 R1
       18 JUMPIFEQKN                       R5 K3 [0] ; [+115]
       20 LENGTH                           R5 R0
       21 LOADN                            R6 20000
       22 JUMPIFNOTLE                      R5 R6 ; [+111]
       24 LENGTH                           R5 R1
       25 LOADN                            R6 20000
       26 JUMPIFNOTLE                      R5 R6 ; [+107]
       28 JUMPIFEQ                         R0 R1 ; [+105]
       30 GETIMPORT                        R5 K5 [string.find]
       32 MOVE                             R6 R0
       33 LOADK                            R7 K6 ["\n"]
       34 CALL                             R5 2 1
       35 JUMPIF                           R5 ; [+6]
       36 GETIMPORT                        R5 K5 [string.find]
       38 MOVE                             R6 R1
       39 LOADK                            R7 K6 ["\n"]
       40 CALL                             R5 2 1
       41 JUMPIFNOT                        R5 ; [+28]
       42 GETUPVAL                         R5 0
       43 MOVE                             R6 R0
       44 MOVE                             R7 R1
       45 DUPTABLE                         R8 K15 [{["aAnnotation"], ["bAnnotation"], ["changeLineTrailingSpaceColor"], ["commonLineTrailingSpaceColor"], ["emptyFirstOrLastLinePlaceholder"], ["expand"], ["includeChangeCounts"] = True}]
       46 SETTABLEKS                       R2 R8 K7 ["aAnnotation"]
       48 SETTABLEKS                       R3 R8 K8 ["bAnnotation"]
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R9 R9 K16 ["bgYellow"]
       53 SETTABLEKS                       R9 R8 K9 ["changeLineTrailingSpaceColor"]
       55 GETUPVAL                         R9 1
       56 GETTABLEKS                       R9 R9 K16 ["bgYellow"]
       58 SETTABLEKS                       R9 R8 K10 ["commonLineTrailingSpaceColor"]
       60 GETIMPORT                        R9 K19 [utf8.char]
       62 LOADN                            R10 8629
       63 CALL                             R9 1 1
       64 SETTABLEKS                       R9 R8 K11 ["emptyFirstOrLastLinePlaceholder"]
       66 SETTABLEKS                       R4 R8 K12 ["expand"]
       68 CALL                             R5 3 -1
       69 RETURN                           R5 -1
       70 GETUPVAL                         R5 2
       71 MOVE                             R6 R0
       72 MOVE                             R7 R1
       73 LOADB                            R8 1
       74 CALL                             R5 3 1
       75 LOADB                            R6 0
       76 MOVE                             R7 R5
       77 LOADNIL                          R8
       78 LOADNIL                          R9
       79 FORGPREP                         R7
       80 GETTABLEN                        R12 R11 1
       81 GETUPVAL                         R13 3
       82 JUMPIFNOTEQ                      R12 R13 ; [+3]
       84 LOADB                            R6 1
       85 JUMP                             ; [+2]
       86 FORGLOOP                         R7 2 ; [-7]
       88 GETGLOBAL                        R7 K20 ["getLabelPrinter"]
       90 MOVE                             R8 R2
       91 MOVE                             R9 R3
       92 CALL                             R7 2 1
       93 MOVE                             R11 R7
       94 MOVE                             R12 R2
       95 CALL                             R11 1 1
       96 MOVE                             R9 R11
       97 GETUPVAL                         R11 4
       98 MOVE                             R12 R5
       99 GETUPVAL                         R13 5
      100 MOVE                             R14 R6
      101 CALL                             R11 3 1
      102 GETUPVAL                         R12 6
      103 GETUPVAL                         R13 7
      104 GETUPVAL                         R14 8
      105 MOVE                             R15 R11
      106 CALL                             R14 1 -1
      107 CALL                             R13 -1 -1
      108 CALL                             R12 -1 1
      109 MOVE                             R10 R12
      110 CONCAT                           R8 R9 R10
      111 MOVE                             R12 R7
      112 MOVE                             R13 R3
      113 CALL                             R12 1 1
      114 MOVE                             R10 R12
      115 GETUPVAL                         R12 4
      116 MOVE                             R13 R5
      117 GETUPVAL                         R14 9
      118 MOVE                             R15 R6
      119 CALL                             R12 3 1
      120 GETUPVAL                         R13 10
      121 GETUPVAL                         R14 7
      122 GETUPVAL                         R15 8
      123 MOVE                             R16 R12
      124 CALL                             R15 1 -1
      125 CALL                             R14 -1 -1
      126 CALL                             R13 -1 1
      127 MOVE                             R11 R13
      128 CONCAT                           R9 R10 R11
      129 MOVE                             R11 R8
      130 LOADK                            R12 K6 ["\n"]
      131 MOVE                             R13 R9
      132 CONCAT                           R10 R11 R13
      133 RETURN                           R10 1
      134 GETUPVAL                         R5 11
      135 MOVE                             R6 R0
      136 MOVE                             R7 R1
      137 CALL                             R5 2 1
      138 JUMPIFNOT                        R5 ; [+51]
      139 GETUPVAL                         R5 12
      140 GETUPVAL                         R6 13
      141 MOVE                             R7 R0
      142 CALL                             R6 1 1
      143 GETUPVAL                         R7 13
      144 MOVE                             R8 R1
      145 CALL                             R7 1 1
      146 NEWTABLE                         R8 0 0
      148 NEWTABLE                         R9 0 0
      150 CALL                             R5 4 1
      151 GETTABLEKS                       R6 R5 K21 ["replacedExpected"]
      153 GETTABLEKS                       R7 R5 K22 ["replacedReceived"]
      155 GETUPVAL                         R8 14
      156 MOVE                             R9 R6
      157 MOVE                             R10 R7
      158 DUPTABLE                         R11 K23 [{["aAnnotation"], ["bAnnotation"], ["expand"], ["includeChangeCounts"] = True}]
      159 SETTABLEKS                       R2 R11 K7 ["aAnnotation"]
      161 SETTABLEKS                       R3 R11 K8 ["bAnnotation"]
      163 SETTABLEKS                       R4 R11 K12 ["expand"]
      165 CALL                             R8 3 1
      166 FASTCALL1                        TYPEOF R8 ; [+3]
      167 MOVE                             R10 R8
      168 GETIMPORT                        R9 K1 [typeof]
      170 CALL                             R9 1 1
      171 JUMPIFNOTEQKS                    R9 K2 ["string"] ; [+18]
      173 GETIMPORT                        R9 K5 [string.find]
      175 MOVE                             R10 R8
      176 LOADK                            R12 K24 ["%- "]
      177 MOVE                             R13 R2
      178 CONCAT                           R11 R12 R13
      179 CALL                             R9 2 1
      180 JUMPIFNOT                        R9 ; [+9]
      181 GETIMPORT                        R9 K5 [string.find]
      183 MOVE                             R10 R8
      184 LOADK                            R12 K25 ["%+ "]
      185 MOVE                             R13 R3
      186 CONCAT                           R11 R12 R13
      187 CALL                             R9 2 1
      188 JUMPIFNOT                        R9 ; [+1]
      189 RETURN                           R8 1
      190 GETGLOBAL                        R5 K20 ["getLabelPrinter"]
      192 MOVE                             R6 R2
      193 MOVE                             R7 R3
      194 CALL                             R5 2 1
      195 MOVE                             R9 R5
      196 MOVE                             R10 R2
      197 CALL                             R9 1 1
      198 MOVE                             R7 R9
      199 GETUPVAL                         R8 6
      200 GETUPVAL                         R9 7
      201 GETUPVAL                         R10 8
      202 MOVE                             R11 R0
      203 CALL                             R10 1 -1
      204 CALL                             R9 -1 -1
      205 CALL                             R8 -1 1
      206 CONCAT                           R6 R7 R8
      207 LOADNIL                          R7
      208 GETUPVAL                         R8 8
      209 MOVE                             R9 R0
      210 CALL                             R8 1 1
      211 GETUPVAL                         R9 8
      212 MOVE                             R10 R1
      213 CALL                             R9 1 1
      214 JUMPIFNOTEQ                      R8 R9 ; [+8]
      216 MOVE                             R10 R5
      217 MOVE                             R11 R3
      218 CALL                             R10 1 1
      219 MOVE                             R8 R10
      220 LOADK                            R9 K26 ["serializes to the same string"]
      221 CONCAT                           R7 R8 R9
      222 JUMP                             ; [+12]
      223 MOVE                             R10 R5
      224 MOVE                             R11 R3
      225 CALL                             R10 1 1
      226 MOVE                             R8 R10
      227 GETUPVAL                         R9 10
      228 GETUPVAL                         R10 7
      229 GETUPVAL                         R11 8
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

PROTO_17:
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

PROTO_18:
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
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R3 R3 K3 ["isReplaceable"]
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

PROTO_19:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["isReplaceable"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 JUMPIF                           R4 ; [+6]
        7 DUPTABLE                         R4 K3 [{"replacedExpected", "replacedReceived"}]
        8 SETTABLEKS                       R0 R4 K1 ["replacedExpected"]
       10 SETTABLEKS                       R1 R4 K2 ["replacedReceived"]
       12 RETURN                           R4 1
       13 GETIMPORT                        R4 K6 [table.find]
       15 MOVE                             R5 R2
       16 MOVE                             R6 R0
       17 CALL                             R4 2 1
       18 JUMPIF                           R4 ; [+6]
       19 GETIMPORT                        R4 K6 [table.find]
       21 MOVE                             R5 R3
       22 MOVE                             R6 R1
       23 CALL                             R4 2 1
       24 JUMPIFNOT                        R4 ; [+6]
       25 DUPTABLE                         R4 K3 [{"replacedExpected", "replacedReceived"}]
       26 SETTABLEKS                       R0 R4 K1 ["replacedExpected"]
       28 SETTABLEKS                       R1 R4 K2 ["replacedReceived"]
       30 RETURN                           R4 1
       31 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
       33 MOVE                             R5 R2
       34 MOVE                             R6 R0
       35 GETIMPORT                        R4 K8 [table.insert]
       37 CALL                             R4 2 0
       38 FASTCALL2                        TABLE_INSERT R3 R1 ; [+5]
       40 MOVE                             R5 R3
       41 MOVE                             R6 R1
       42 GETIMPORT                        R4 K8 [table.insert]
       44 CALL                             R4 2 0
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K9 ["new"]
       48 MOVE                             R5 R0
       49 CALL                             R4 1 1
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K9 ["new"]
       53 MOVE                             R6 R1
       54 CALL                             R5 1 1
       55 NEWCLOSURE                       R8 P0
       56 CAPTURE                          VAL R5
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 NAMECALL                         R6 R4 K10 ["forEach"]
       65 CALL                             R6 2 0
       66 DUPTABLE                         R6 K3 [{"replacedExpected", "replacedReceived"}]
       67 GETTABLEKS                       R7 R4 K11 ["object"]
       69 SETTABLEKS                       R7 R6 K1 ["replacedExpected"]
       71 GETTABLEKS                       R7 R5 K11 ["object"]
       73 SETTABLEKS                       R7 R6 K2 ["replacedReceived"]
       75 RETURN                           R6 1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 LOADN                            R1 0
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 LENGTH                           R8 R6
       12 FASTCALL2                        MATH_MAX R8 R1 ; [+4]
       14 MOVE                             R9 R1
       15 GETIMPORT                        R7 K2 [math.max]
       17 CALL                             R7 2 1
       18 MOVE                             R1 R7
       19 FORGLOOP                         R2 2 ; [-9]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          REF R1
       23 CLOSEUPVALS                      R1
       24 RETURN                           R2 1

PROTO_25:
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

PROTO_26:
        0 ORK                              R1 R1 K0 ["received"]
        1 ORK                              R2 R2 K1 ["expected"]
        2 MOVE                             R4 R3
        3 JUMPIF                           R4 ; [+2]
        4 NEWTABLE                         R4 0 0
        6 GETTABLEKS                       R6 R4 K3 ["comment"]
        8 ORK                              R5 R6 K2 [""]
        9 GETTABLEKS                       R6 R4 K4 ["expectedColor"]
       11 JUMPIF                           R6 ; [+1]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R8 R4 K6 ["isDirectExpectCall"]
       15 ORK                              R7 R8 K5 [False]
       16 GETTABLEKS                       R9 R4 K7 ["isNot"]
       18 ORK                              R8 R9 K5 [False]
       19 GETTABLEKS                       R10 R4 K8 ["promise"]
       21 ORK                              R9 R10 K2 [""]
       22 GETTABLEKS                       R10 R4 K9 ["receivedColor"]
       24 JUMPIF                           R10 ; [+1]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R12 R4 K10 ["secondArgument"]
       28 ORK                              R11 R12 K2 [""]
       29 GETTABLEKS                       R12 R4 K11 ["secondArgumentColor"]
       31 JUMPIF                           R12 ; [+1]
       32 GETUPVAL                         R12 0
       33 LOADK                            R13 K2 [""]
       34 LOADK                            R14 K12 ["expect"]
       35 JUMPIF                           R7 ; [+14]
       36 JUMPIFEQKS                       R1 K2 [""] ; [+13]
       38 MOVE                             R15 R13
       39 GETUPVAL                         R18 2
       40 MOVE                             R20 R14
       41 LOADK                            R21 K13 ["("]
       42 CONCAT                           R19 R20 R21
       43 CALL                             R18 1 1
       44 MOVE                             R16 R18
       45 MOVE                             R17 R10
       46 MOVE                             R18 R1
       47 CALL                             R17 1 1
       48 CONCAT                           R13 R15 R17
       49 LOADK                            R14 K14 [")"]
       50 JUMPIFEQKS                       R9 K2 [""] ; [+11]
       52 MOVE                             R15 R13
       53 GETUPVAL                         R18 2
       54 MOVE                             R20 R14
       55 LOADK                            R21 K15 ["."]
       56 CONCAT                           R19 R20 R21
       57 CALL                             R18 1 1
       58 MOVE                             R16 R18
       59 MOVE                             R17 R9
       60 CONCAT                           R13 R15 R17
       61 LOADK                            R14 K2 [""]
       62 JUMPIFNOT                        R8 ; [+10]
       63 MOVE                             R15 R13
       64 GETUPVAL                         R18 2
       65 MOVE                             R20 R14
       66 LOADK                            R21 K15 ["."]
       67 CONCAT                           R19 R20 R21
       68 CALL                             R18 1 1
       69 MOVE                             R16 R18
       70 LOADK                            R17 K16 ["never"]
       71 CONCAT                           R13 R15 R17
       72 LOADK                            R14 K2 [""]
       73 GETIMPORT                        R15 K19 [string.find]
       75 MOVE                             R16 R0
       76 LOADK                            R17 K20 ["%."]
       77 CALL                             R15 2 1
       78 JUMPIFNOT                        R15 ; [+4]
       79 MOVE                             R15 R14
       80 MOVE                             R16 R0
       81 CONCAT                           R14 R15 R16
       82 JUMP                             ; [+10]
       83 MOVE                             R15 R13
       84 GETUPVAL                         R18 2
       85 MOVE                             R20 R14
       86 LOADK                            R21 K15 ["."]
       87 CONCAT                           R19 R20 R21
       88 CALL                             R18 1 1
       89 MOVE                             R16 R18
       90 MOVE                             R17 R0
       91 CONCAT                           R13 R15 R17
       92 LOADK                            R14 K2 [""]
       93 JUMPIFNOTEQKS                    R2 K2 [""] ; [+5]
       95 MOVE                             R15 R14
       96 LOADK                            R16 K21 ["()"]
       97 CONCAT                           R14 R15 R16
       98 JUMP                             ; [+23]
       99 MOVE                             R15 R13
      100 GETUPVAL                         R18 2
      101 MOVE                             R20 R14
      102 LOADK                            R21 K13 ["("]
      103 CONCAT                           R19 R20 R21
      104 CALL                             R18 1 1
      105 MOVE                             R16 R18
      106 MOVE                             R17 R6
      107 MOVE                             R18 R2
      108 CALL                             R17 1 1
      109 CONCAT                           R13 R15 R17
      110 JUMPIFEQKS                       R11 K2 [""] ; [+10]
      112 MOVE                             R15 R13
      113 GETUPVAL                         R18 2
      114 LOADK                            R19 K22 [", "]
      115 CALL                             R18 1 1
      116 MOVE                             R16 R18
      117 MOVE                             R17 R12
      118 MOVE                             R18 R11
      119 CALL                             R17 1 1
      120 CONCAT                           R13 R15 R17
      121 LOADK                            R14 K14 [")"]
      122 JUMPIFEQKS                       R5 K2 [""] ; [+5]
      124 MOVE                             R15 R14
      125 LOADK                            R16 K23 [" -- "]
      126 MOVE                             R17 R5
      127 CONCAT                           R14 R15 R17
      128 JUMPIFEQKS                       R14 K2 [""] ; [+6]
      130 MOVE                             R15 R13
      131 GETUPVAL                         R16 2
      132 MOVE                             R17 R14
      133 CALL                             R16 1 1
      134 CONCAT                           R13 R15 R16
      135 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["JestTypes"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Error"]
       12 GETIMPORT                        R4 K4 [require]
       14 GETTABLEKS                       R5 R1 K7 ["Symbol"]
       16 CALL                             R4 1 1
       17 GETIMPORT                        R5 K4 [require]
       19 GETTABLEKS                       R6 R1 K8 ["ChalkLua"]
       21 CALL                             R5 1 1
       22 GETIMPORT                        R6 K4 [require]
       24 GETTABLEKS                       R7 R1 K9 ["JestDiff"]
       26 CALL                             R6 1 1
       27 GETTABLEKS                       R7 R6 K10 ["DIFF_DELETE"]
       29 GETTABLEKS                       R8 R6 K11 ["DIFF_EQUAL"]
       31 GETTABLEKS                       R9 R6 K12 ["DIFF_INSERT"]
       33 GETTABLEKS                       R10 R6 K13 ["diff"]
       35 GETTABLEKS                       R11 R6 K14 ["diffStringsRaw"]
       37 GETTABLEKS                       R12 R6 K15 ["diffStringsUnified"]
       39 GETIMPORT                        R13 K4 [require]
       41 GETTABLEKS                       R14 R1 K16 ["JestGetType"]
       43 CALL                             R13 1 1
       44 GETTABLEKS                       R14 R13 K17 ["getType"]
       46 GETTABLEKS                       R15 R13 K18 ["isPrimitive"]
       48 GETIMPORT                        R16 K4 [require]
       50 GETTABLEKS                       R17 R1 K19 ["PrettyFormat"]
       52 CALL                             R16 1 1
       53 GETTABLEKS                       R17 R16 K20 ["format"]
       55 GETIMPORT                        R18 K4 [require]
       57 GETTABLEKS                       R19 R0 K21 ["Replaceable"]
       59 CALL                             R18 1 1
       60 GETIMPORT                        R19 K4 [require]
       62 GETTABLEKS                       R20 R0 K22 ["deepCyclicCopyReplaceable"]
       64 CALL                             R19 1 1
       65 GETTABLEKS                       R20 R16 K23 ["plugins"]
       67 NEWTABLE                         R21 0 2
       69 GETTABLEKS                       R22 R20 K24 ["AsymmetricMatcher"]
       71 GETTABLEKS                       R23 R20 K25 ["RobloxInstance"]
       73 SETLIST                          R21 R22 2 [1]
       75 GETTABLEKS                       R22 R5 K26 ["green"]
       77 GETTABLEKS                       R23 R5 K27 ["red"]
       79 GETTABLEKS                       R24 R5 K28 ["inverse"]
       81 GETTABLEKS                       R25 R5 K29 ["bold"]
       83 GETTABLEKS                       R26 R5 K30 ["dim"]
       85 GETIMPORT                        R27 K33 [utf8.char]
       87 LOADN                            R28 183
       88 CALL                             R27 1 1
       89 NEWTABLE                         R28 0 14
       91 LOADK                            R29 K34 ["zero"]
       92 LOADK                            R30 K35 ["one"]
       93 LOADK                            R31 K36 ["two"]
       94 LOADK                            R32 K37 ["three"]
       95 LOADK                            R33 K38 ["four"]
       96 LOADK                            R34 K39 ["five"]
       97 LOADK                            R35 K40 ["six"]
       98 LOADK                            R36 K41 ["seven"]
       99 LOADK                            R37 K42 ["eight"]
      100 LOADK                            R38 K43 ["nine"]
      101 LOADK                            R39 K44 ["ten"]
      102 LOADK                            R40 K45 ["eleven"]
      103 LOADK                            R41 K46 ["twelve"]
      104 LOADK                            R42 K47 ["thirteen"]
      105 SETLIST                          R28 R29 14 [1]
      107 LOADNIL                          R29
      108 LOADNIL                          R30
      109 LOADNIL                          R31
      110 LOADNIL                          R32
      111 LOADNIL                          R33
      112 LOADNIL                          R34
      113 LOADNIL                          R35
      114 LOADNIL                          R36
      115 DUPCLOSURE                       R37 K48 [PROTO_1]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R17
      118 CAPTURE                          VAL R21
      119 CAPTURE                          VAL R37
      120 DUPCLOSURE                       R38 K49 [PROTO_3]
      121 CAPTURE                          VAL R24
      122 DUPCLOSURE                       R29 K50 [PROTO_5]
      123 CAPTURE                          VAL R27
      124 NEWCLOSURE                       R39 P3
      125 CAPTURE                          VAL R23
      126 CAPTURE                          REF R29
      127 CAPTURE                          VAL R37
      128 NEWCLOSURE                       R40 P4
      129 CAPTURE                          VAL R22
      130 CAPTURE                          REF R29
      131 CAPTURE                          VAL R37
      132 DUPCLOSURE                       R41 K51 [PROTO_8]
      133 CAPTURE                          VAL R14
      134 NEWCLOSURE                       R42 P6
      135 CAPTURE                          VAL R3
      136 CAPTURE                          REF R35
      137 CAPTURE                          REF R36
      138 CAPTURE                          VAL R41
      139 CAPTURE                          VAL R40
      140 NEWCLOSURE                       R43 P7
      141 CAPTURE                          VAL R3
      142 CAPTURE                          REF R35
      143 CAPTURE                          REF R36
      144 CAPTURE                          VAL R23
      145 CAPTURE                          VAL R41
      146 CAPTURE                          VAL R39
      147 NEWCLOSURE                       R44 P8
      148 CAPTURE                          VAL R3
      149 CAPTURE                          REF R35
      150 CAPTURE                          REF R36
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R41
      153 CAPTURE                          VAL R40
      154 DUPCLOSURE                       R45 K52 [PROTO_12]
      155 CAPTURE                          VAL R43
      156 CAPTURE                          VAL R44
      157 NEWCLOSURE                       R46 P10
      158 CAPTURE                          VAL R3
      159 CAPTURE                          REF R35
      160 CAPTURE                          REF R36
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R41
      163 CAPTURE                          VAL R40
      164 DUPCLOSURE                       R30 K53 [PROTO_14]
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R24
      167 DUPCLOSURE                       R31 K54 [PROTO_15]
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R15
      170 NEWCLOSURE                       R47 P13
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R8
      175 CAPTURE                          REF R30
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R22
      178 CAPTURE                          REF R29
      179 CAPTURE                          VAL R37
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R23
      182 CAPTURE                          REF R31
      183 CAPTURE                          REF R33
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R10
      186 SETGLOBAL                        R47 K55 ["printDiffOrStringify"]
      188 DUPCLOSURE                       R32 K56 [PROTO_17]
      189 NEWCLOSURE                       R33 P15
      190 CAPTURE                          VAL R18
      191 CAPTURE                          REF R34
      192 CAPTURE                          REF R33
      193 DUPCLOSURE                       R34 K57 [PROTO_20]
      194 CAPTURE                          VAL R14
      195 NEWCLOSURE                       R47 P17
      196 CAPTURE                          REF R32
      197 CAPTURE                          VAL R10
      198 DUPCLOSURE                       R48 K58 [PROTO_22]
      199 CAPTURE                          VAL R28
      200 SETGLOBAL                        R48 K59 ["pluralize"]
      202 DUPCLOSURE                       R48 K60 [PROTO_24]
      203 SETGLOBAL                        R48 K61 ["getLabelPrinter"]
      205 DUPCLOSURE                       R35 K62 [PROTO_25]
      206 CAPTURE                          VAL R25
      207 DUPCLOSURE                       R36 K63 [PROTO_26]
      208 CAPTURE                          VAL R22
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R26
      211 DUPTABLE                         R48 K83 [{["EXPECTED_COLOR"], ["RECEIVED_COLOR"], ["INVERTED_COLOR"], ["BOLD_WEIGHT"], ["DIM_COLOR"], ["SUGGEST_TO_CONTAIN_EQUAL"] = "Looks like you wanted to test for object/array equality with the stricter `toContain` matcher. You probably need to use `toContainEqual` instead.", ["stringify"], ["highlightTrailingWhitespace"], ["printReceived"], ["printExpected"], ["printWithType"], ["ensureNoExpected"], ["ensureActualIsNumber"], ["ensureExpectedIsNumber"], ["ensureNumbers"], ["ensureExpectedIsNonNegativeInteger"], ["printDiffOrStringify"], ["diff"], ["pluralize"], ["getLabelPrinter"], ["matcherErrorMessage"], ["matcherHint"]}]
      212 SETTABLEKS                       R22 R48 K64 ["EXPECTED_COLOR"]
      214 SETTABLEKS                       R23 R48 K65 ["RECEIVED_COLOR"]
      216 SETTABLEKS                       R24 R48 K66 ["INVERTED_COLOR"]
      218 SETTABLEKS                       R25 R48 K67 ["BOLD_WEIGHT"]
      220 SETTABLEKS                       R26 R48 K68 ["DIM_COLOR"]
      222 SETTABLEKS                       R37 R48 K71 ["stringify"]
      224 SETTABLEKS                       R38 R48 K72 ["highlightTrailingWhitespace"]
      226 SETTABLEKS                       R39 R48 K73 ["printReceived"]
      228 SETTABLEKS                       R40 R48 K74 ["printExpected"]
      230 SETTABLEKS                       R41 R48 K75 ["printWithType"]
      232 SETTABLEKS                       R42 R48 K76 ["ensureNoExpected"]
      234 SETTABLEKS                       R43 R48 K77 ["ensureActualIsNumber"]
      236 SETTABLEKS                       R44 R48 K78 ["ensureExpectedIsNumber"]
      238 SETTABLEKS                       R45 R48 K79 ["ensureNumbers"]
      240 SETTABLEKS                       R46 R48 K80 ["ensureExpectedIsNonNegativeInteger"]
      242 GETGLOBAL                        R49 K55 ["printDiffOrStringify"]
      244 SETTABLEKS                       R49 R48 K55 ["printDiffOrStringify"]
      246 SETTABLEKS                       R47 R48 K13 ["diff"]
      248 GETGLOBAL                        R49 K59 ["pluralize"]
      250 SETTABLEKS                       R49 R48 K59 ["pluralize"]
      252 GETGLOBAL                        R49 K61 ["getLabelPrinter"]
      254 SETTABLEKS                       R49 R48 K61 ["getLabelPrinter"]
      256 SETTABLEKS                       R35 R48 K81 ["matcherErrorMessage"]
      258 SETTABLEKS                       R36 R48 K82 ["matcherHint"]
      260 CLOSEUPVALS                      R29
      261 RETURN                           R48 1
