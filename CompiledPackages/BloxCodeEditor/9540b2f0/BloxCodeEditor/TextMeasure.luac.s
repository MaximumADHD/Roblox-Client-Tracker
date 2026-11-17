PROTO_0:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETIMPORT                        R2 K3 [utf8.len]
        7 MOVE                             R3 R0
        8 FASTPCALL                        pcall 2 ; [+2]
        9 GETIMPORT                        R1 K5 [pcall]
       11 CALL                             R1 2 2
       12 JUMPIFNOT                        R1 ; [+1]
       13 JUMPIF                           R2 ; [+2]
       14 LOADB                            R3 1
       15 RETURN                           R3 1
       16 GETIMPORT                        R3 K7 [utf8.codes]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 3
       20 FORGPREP                         R3
       21 LOADN                            R8 32
       22 JUMPIFLT                         R7 R8 ; [+4]
       24 LOADN                            R8 126
       25 JUMPIFNOTLT                      R8 R7 ; [+3]
       27 LOADB                            R8 1
       28 RETURN                           R8 1
       29 FORGLOOP                         R3 2 ; [-9]
       31 LOADB                            R3 0
       32 RETURN                           R3 1

PROTO_1:
        0 LOADN                            R2 1
        1 JUMPIFLE                         R1 R2 ; [+4]
        3 LENGTH                           R2 R0
        4 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        6 LOADN                            R2 0
        7 RETURN                           R2 1
        8 SUBK                             R3 R1 K1 [1]
        9 LENGTH                           R4 R0
       10 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       12 GETIMPORT                        R2 K4 [math.min]
       14 CALL                             R2 2 1
       15 LOADN                            R3 1
       16 JUMPIFNOTLE                      R3 R2 ; [+18]
       18 FASTCALL2                        STRING_BYTE R0 R2 ; [+5]
       20 MOVE                             R4 R0
       21 MOVE                             R5 R2
       22 GETIMPORT                        R3 K7 [string.byte]
       24 CALL                             R3 2 1
       25 LOADN                            R4 128
       26 JUMPIFLT                         R3 R4 ; [+4]
       28 LOADN                            R4 192
       29 JUMPIFNOTLE                      R4 R3 ; [+3]
       31 SUB                              R4 R1 R2
       32 RETURN                           R4 1
       33 SUBK                             R2 R2 K1 [1]
       34 JUMPBACK                         ; [-20]
       35 SUBK                             R3 R1 K1 [1]
       36 RETURN                           R3 1

PROTO_2:
        0 LENGTH                           R2 R0
        1 JUMPIFLT                         R2 R1 ; [+4]
        3 LOADN                            R2 1
        4 JUMPIFNOTLT                      R1 R2 ; [+3]
        6 LOADN                            R2 0
        7 RETURN                           R2 1
        8 FASTCALL2                        STRING_BYTE R0 R1 ; [+5]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 GETIMPORT                        R2 K2 [string.byte]
       14 CALL                             R2 2 1
       15 LOADN                            R3 128
       16 JUMPIFNOTLT                      R2 R3 ; [+3]
       18 LOADN                            R3 1
       19 RETURN                           R3 1
       20 LOADN                            R3 224
       21 JUMPIFNOTLT                      R2 R3 ; [+3]
       23 LOADN                            R3 2
       24 RETURN                           R3 1
       25 LOADN                            R3 240
       26 JUMPIFNOTLT                      R2 R3 ; [+3]
       28 LOADN                            R3 3
       29 RETURN                           R3 1
       30 LOADN                            R3 4
       31 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTextBoundsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+12]
        2 GETIMPORT                        R4 K2 [Instance.new]
        4 LOADK                            R5 K3 ["GetTextBoundsParams"]
        5 CALL                             R4 1 1
        6 FASTCALL2K                       ASSERT R4 K4 ; [+5]
        8 MOVE                             R6 R4
        9 LOADK                            R7 K4 ["GetTextBoundsParams constructor failed"]
       10 GETIMPORT                        R5 K6 [assert]
       12 CALL                             R5 2 0
       13 SETUPVAL                         R4 0
       14 GETUPVAL                         R4 0
       15 SETTABLEKS                       R1 R4 K7 ["Font"]
       17 SETTABLEKS                       R2 R4 K8 ["Size"]
       19 SETTABLEKS                       R0 R4 K9 ["Text"]
       21 JUMPIFEQKNIL                     R3 ; [+3]
       23 MOVE                             R5 R3
       24 JUMP                             ; [+1]
       25 LOADB                            R5 0
       26 SETTABLEKS                       R5 R4 K10 ["RichText"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R4
       31 FASTPCALL                        pcall 1 ; [+2]
       32 GETIMPORT                        R5 K12 [pcall]
       34 CALL                             R5 1 2
       35 JUMPIFNOT                        R5 ; [+3]
       36 GETTABLEKS                       R7 R6 K13 ["X"]
       38 RETURN                           R7 1
       39 LENGTH                           R9 R0
       40 MUL                              R8 R9 R2
       41 MULK                             R7 R8 K14 [0.5]
       42 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTextBoundsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 LOADK                            R2 K0 ["%*|%*|__lineHeight__"]
        1 MOVE                             R4 R1
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R6 R0
        4 GETIMPORT                        R5 K2 [tostring]
        6 CALL                             R5 1 1
        7 NAMECALL                         R2 R2 K3 ["format"]
        9 CALL                             R2 3 1
       10 GETUPVAL                         R4 0
       11 GETTABLE                         R3 R4 R2
       12 JUMPIFNOT                        R3 ; [+1]
       13 RETURN                           R3 1
       14 GETUPVAL                         R4 1
       15 JUMPIF                           R4 ; [+12]
       16 GETIMPORT                        R4 K6 [Instance.new]
       18 LOADK                            R5 K7 ["GetTextBoundsParams"]
       19 CALL                             R4 1 1
       20 FASTCALL2K                       ASSERT R4 K8 ; [+5]
       22 MOVE                             R6 R4
       23 LOADK                            R7 K8 ["GetTextBoundsParams constructor failed"]
       24 GETIMPORT                        R5 K10 [assert]
       26 CALL                             R5 2 0
       27 SETUPVAL                         R4 1
       28 GETUPVAL                         R4 1
       29 SETTABLEKS                       R0 R4 K11 ["Font"]
       31 SETTABLEKS                       R1 R4 K12 ["Size"]
       33 LOADK                            R5 K13 ["Mg"]
       34 SETTABLEKS                       R5 R4 K14 ["Text"]
       36 LOADB                            R5 0
       37 SETTABLEKS                       R5 R4 K15 ["RichText"]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R4
       42 FASTPCALL                        pcall 1 ; [+2]
       43 GETIMPORT                        R5 K17 [pcall]
       45 CALL                             R5 1 2
       46 JUMPIFNOT                        R5 ; [+3]
       47 GETTABLEKS                       R7 R6 K18 ["Y"]
       49 JUMP                             ; [+1]
       50 MULK                             R7 R1 K19 [1.2]
       51 GETUPVAL                         R8 0
       52 SETTABLE                         R7 R8 R2
       53 RETURN                           R7 1

PROTO_7:
        0 LOADK                            R2 K0 ["%*|%*"]
        1 MOVE                             R4 R1
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R6 R0
        4 GETIMPORT                        R5 K2 [tostring]
        6 CALL                             R5 1 1
        7 NAMECALL                         R2 R2 K3 ["format"]
        9 CALL                             R2 3 1
       10 GETUPVAL                         R4 0
       11 GETTABLE                         R3 R4 R2
       12 JUMPIFNOT                        R3 ; [+1]
       13 RETURN                           R3 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["rawMeasure"]
       17 LOADK                            R5 K5 ["|"]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 LOADB                            R8 0
       21 CALL                             R4 4 1
       22 GETUPVAL                         R5 0
       23 SETTABLE                         R4 R5 R2
       24 RETURN                           R4 1

PROTO_8:
        0 JUMPIFEQKNIL                     R3 ; [+3]
        2 MOVE                             R4 R3
        3 JUMP                             ; [+1]
        4 LOADB                            R4 0
        5 LOADK                            R5 K0 ["%*|%*|%*|%*"]
        6 MOVE                             R7 R2
        7 FASTCALL1                        TOSTRING R1 ; [+3]
        8 MOVE                             R9 R1
        9 GETIMPORT                        R8 K2 [tostring]
       11 CALL                             R8 1 1
       12 JUMPIFNOT                        R4 ; [+2]
       13 LOADK                            R9 K3 ["R"]
       14 JUMP                             ; [+1]
       15 LOADK                            R9 K4 ["P"]
       16 MOVE                             R10 R0
       17 NAMECALL                         R5 R5 K5 ["format"]
       19 CALL                             R5 5 1
       20 GETUPVAL                         R7 0
       21 GETTABLE                         R6 R7 R5
       22 JUMPIFEQKNIL                     R6 ; [+2]
       24 RETURN                           R6 1
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K6 ["rawMeasure"]
       28 MOVE                             R10 R0
       29 LOADK                            R11 K7 ["|"]
       30 CONCAT                           R9 R10 R11
       31 MOVE                             R10 R1
       32 MOVE                             R11 R2
       33 MOVE                             R12 R4
       34 CALL                             R8 4 1
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K8 ["getSentinelWidth"]
       38 MOVE                             R10 R1
       39 MOVE                             R11 R2
       40 CALL                             R9 2 1
       41 SUB                              R7 R8 R9
       42 GETUPVAL                         R8 0
       43 SETTABLE                         R7 R8 R5
       44 RETURN                           R7 1

PROTO_9:
        0 LOADN                            R4 0
        1 JUMPIFNOTLE                      R1 R4 ; [+3]
        3 LOADN                            R4 0
        4 RETURN                           R4 1
        5 LOADN                            R6 1
        6 MOVE                             R7 R1
        7 NAMECALL                         R4 R0 K0 ["sub"]
        9 CALL                             R4 3 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["measureText"]
       13 MOVE                             R6 R4
       14 MOVE                             R7 R2
       15 MOVE                             R8 R3
       16 LOADB                            R9 0
       17 CALL                             R5 4 -1
       18 RETURN                           R5 -1

PROTO_10:
        0 LOADN                            R4 0
        1 JUMPIFLE                         R1 R4 ; [+4]
        3 LENGTH                           R4 R0
        4 JUMPIFNOTEQKN                    R4 K0 [0] ; [+3]
        6 LOADN                            R4 1
        7 RETURN                           R4 1
        8 NEWTABLE                         R4 0 0
       10 GETIMPORT                        R6 K3 [utf8.len]
       12 MOVE                             R7 R0
       13 FASTPCALL                        pcall 2 ; [+2]
       14 GETIMPORT                        R5 K5 [pcall]
       16 CALL                             R5 2 2
       17 JUMPIFNOT                        R5 ; [+1]
       18 JUMPIF                           R6 ; [+13]
       19 LOADN                            R9 1
       20 LENGTH                           R7 R0
       21 LOADN                            R8 1
       22 FORNPREP                         R7
       23 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       25 MOVE                             R11 R4
       26 MOVE                             R12 R9
       27 GETIMPORT                        R10 K8 [table.insert]
       29 CALL                             R10 2 0
       30 FORNLOOP                         R7
       31 JUMP                             ; [+22]
       32 LOADN                            R9 1
       33 MOVE                             R7 R6
       34 LOADN                            R8 1
       35 FORNPREP                         R7
       36 JUMPIFNOTLT                      R9 R6 ; [+7]
       38 GETIMPORT                        R10 K10 [utf8.offset]
       40 MOVE                             R11 R0
       41 ADDK                             R12 R9 K11 [1]
       42 CALL                             R10 2 1
       43 JUMP                             ; [+2]
       44 LENGTH                           R11 R0
       45 ADDK                             R10 R11 K11 [1]
       46 SUBK                             R13 R10 K11 [1]
       47 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       49 MOVE                             R12 R4
       50 GETIMPORT                        R11 K8 [table.insert]
       52 CALL                             R11 2 0
       53 FORNLOOP                         R7
       54 LOADN                            R7 0
       55 LENGTH                           R8 R4
       56 JUMPIFNOTLT                      R7 R8 ; [+30]
       58 ADD                              R11 R7 R8
       59 DIVK                             R10 R11 K12 [2]
       60 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       61 GETIMPORT                        R9 K15 [math.floor]
       63 CALL                             R9 1 1
       64 JUMPIFNOTEQKN                    R9 K0 [0] ; [+3]
       66 LOADN                            R10 0
       67 JUMP                             ; [+1]
       68 GETTABLE                         R10 R4 R9
       69 JUMPIFNOTEQKN                    R10 K0 [0] ; [+3]
       71 LOADN                            R11 0
       72 JUMP                             ; [+8]
       73 GETUPVAL                         R11 0
       74 GETTABLEKS                       R11 R11 K16 ["measureSubstring"]
       76 MOVE                             R12 R0
       77 MOVE                             R13 R10
       78 MOVE                             R14 R2
       79 MOVE                             R15 R3
       80 CALL                             R11 4 1
       81 JUMPIFNOTLT                      R11 R1 ; [+3]
       83 ADDK                             R7 R9 K11 [1]
       84 JUMP                             ; [+1]
       85 MOVE                             R8 R9
       86 JUMPBACK                         ; [-31]
       87 LOADN                            R9 0
       88 JUMPIFNOTLT                      R9 R7 ; [+36]
       90 LENGTH                           R9 R4
       91 JUMPIFNOTLE                      R7 R9 ; [+33]
       93 JUMPIFNOTEQKN                    R7 K11 [1] ; [+3]
       95 LOADN                            R9 0
       96 JUMP                             ; [+2]
       97 SUBK                             R10 R7 K11 [1]
       98 GETTABLE                         R9 R4 R10
       99 JUMPIFNOTEQKN                    R9 K0 [0] ; [+3]
      101 LOADN                            R10 0
      102 JUMP                             ; [+8]
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R10 R10 K16 ["measureSubstring"]
      106 MOVE                             R11 R0
      107 MOVE                             R12 R9
      108 MOVE                             R13 R2
      109 MOVE                             R14 R3
      110 CALL                             R10 4 1
      111 GETUPVAL                         R11 0
      112 GETTABLEKS                       R11 R11 K16 ["measureSubstring"]
      114 MOVE                             R12 R0
      115 GETTABLE                         R13 R4 R7
      116 MOVE                             R14 R2
      117 MOVE                             R15 R3
      118 CALL                             R11 4 1
      119 SUB                              R12 R1 R10
      120 SUB                              R13 R11 R1
      121 JUMPIFNOTLT                      R12 R13 ; [+3]
      123 ADDK                             R12 R9 K11 [1]
      124 RETURN                           R12 1
      125 LENGTH                           R9 R4
      126 JUMPIFNOTLT                      R9 R7 ; [+4]
      128 LENGTH                           R10 R0
      129 ADDK                             R9 R10 K11 [1]
      130 RETURN                           R9 1
      131 JUMPIFNOTEQKN                    R7 K0 [0] ; [+3]
      133 LOADN                            R9 1
      134 RETURN                           R9 1
      135 GETTABLE                         R10 R4 R7
      136 ADDK                             R9 R10 K11 [1]
      137 RETURN                           R9 1

PROTO_11:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        3 LOADN                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["measureText"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 LOADB                            R7 0
       12 CALL                             R3 4 -1
       13 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 16 0
        9 NEWTABLE                         R2 0 0
       11 NEWTABLE                         R3 0 0
       13 LOADNIL                          R4
       14 DUPCLOSURE                       R5 K4 [PROTO_0]
       15 SETTABLEKS                       R5 R1 K5 ["containsNonMonospace"]
       17 DUPCLOSURE                       R5 K6 [PROTO_1]
       18 SETTABLEKS                       R5 R1 K7 ["prevCharBytes"]
       20 DUPCLOSURE                       R5 K8 [PROTO_2]
       21 SETTABLEKS                       R5 R1 K9 ["currCharBytes"]
       23 NEWCLOSURE                       R5 P3
       24 CAPTURE                          REF R4
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R5 R1 K10 ["rawMeasure"]
       28 NEWCLOSURE                       R5 P4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          REF R4
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R5 R1 K11 ["measureLineHeight"]
       34 DUPCLOSURE                       R5 K12 [PROTO_7]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R5 R1 K13 ["getSentinelWidth"]
       39 DUPCLOSURE                       R5 K14 [PROTO_8]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R5 R1 K15 ["measureText"]
       44 DUPCLOSURE                       R5 K16 [PROTO_9]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R5 R1 K17 ["measureSubstring"]
       48 DUPCLOSURE                       R5 K18 [PROTO_10]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R5 R1 K19 ["hitTestChar"]
       52 DUPCLOSURE                       R5 K20 [PROTO_11]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R5 R1 K21 ["measureLineWidth"]
       56 CLOSEUPVALS                      R4
       57 RETURN                           R1 1
