PROTO_0:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETIMPORT                        R1 K2 [pcall]
        7 GETIMPORT                        R2 K5 [utf8.len]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 2
       11 JUMPIFNOT                        R1 ; [+1]
       12 JUMPIF                           R2 ; [+2]
       13 LOADB                            R3 1
       14 RETURN                           R3 1
       15 GETIMPORT                        R3 K7 [utf8.codes]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 3
       19 FORGPREP                         R3
       20 JUMPIFEQKN                       R7 K8 [9] ; [+9]
       22 LOADN                            R8 32
       23 JUMPIFLT                         R7 R8 ; [+4]
       25 LOADN                            R8 126
       26 JUMPIFNOTLT                      R8 R7 ; [+3]
       28 LOADB                            R8 1
       29 RETURN                           R8 1
       30 FORGLOOP                         R3 2 ; [-11]
       32 LOADB                            R3 0
       33 RETURN                           R3 1

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
       28 GETIMPORT                        R5 K12 [pcall]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R4
       33 CALL                             R5 1 2
       34 JUMPIFNOT                        R5 ; [+3]
       35 GETTABLEKS                       R7 R6 K13 ["X"]
       37 RETURN                           R7 1
       38 LENGTH                           R9 R0
       39 MUL                              R8 R9 R2
       40 MULK                             R7 R8 K14 [0.5]
       41 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTextBoundsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 LOADK                            R3 K0 ["%*|%*|__lineHeight__"]
        1 MOVE                             R5 R1
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R7 R0
        4 GETIMPORT                        R6 K2 [tostring]
        6 CALL                             R6 1 1
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 3 1
       10 MOVE                             R2 R3
       11 GETUPVAL                         R4 0
       12 GETTABLE                         R3 R4 R2
       13 JUMPIFNOT                        R3 ; [+1]
       14 RETURN                           R3 1
       15 GETUPVAL                         R4 1
       16 JUMPIF                           R4 ; [+12]
       17 GETIMPORT                        R4 K6 [Instance.new]
       19 LOADK                            R5 K7 ["GetTextBoundsParams"]
       20 CALL                             R4 1 1
       21 FASTCALL2K                       ASSERT R4 K8 ; [+5]
       23 MOVE                             R6 R4
       24 LOADK                            R7 K8 ["GetTextBoundsParams constructor failed"]
       25 GETIMPORT                        R5 K10 [assert]
       27 CALL                             R5 2 0
       28 SETUPVAL                         R4 1
       29 GETUPVAL                         R4 1
       30 SETTABLEKS                       R0 R4 K11 ["Font"]
       32 SETTABLEKS                       R1 R4 K12 ["Size"]
       34 LOADK                            R5 K13 ["Mg"]
       35 SETTABLEKS                       R5 R4 K14 ["Text"]
       37 LOADB                            R5 0
       38 SETTABLEKS                       R5 R4 K15 ["RichText"]
       40 GETIMPORT                        R5 K17 [pcall]
       42 NEWCLOSURE                       R6 P0
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R4
       45 CALL                             R5 1 2
       46 JUMPIFNOT                        R5 ; [+3]
       47 GETTABLEKS                       R7 R6 K18 ["Y"]
       49 JUMP                             ; [+1]
       50 MULK                             R7 R1 K19 [1.2]
       51 GETUPVAL                         R8 0
       52 SETTABLE                         R7 R8 R2
       53 RETURN                           R7 1

PROTO_7:
        0 LOADK                            R3 K0 ["%*|%*"]
        1 MOVE                             R5 R1
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R7 R0
        4 GETIMPORT                        R6 K2 [tostring]
        6 CALL                             R6 1 1
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 3 1
       10 MOVE                             R2 R3
       11 GETUPVAL                         R4 0
       12 GETTABLE                         R3 R4 R2
       13 JUMPIFNOT                        R3 ; [+1]
       14 RETURN                           R3 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K4 ["rawMeasure"]
       18 LOADK                            R5 K5 ["|"]
       19 MOVE                             R6 R0
       20 MOVE                             R7 R1
       21 LOADB                            R8 0
       22 CALL                             R4 4 1
       23 GETUPVAL                         R5 0
       24 SETTABLE                         R4 R5 R2
       25 RETURN                           R4 1

PROTO_8:
        0 JUMPIFEQKNIL                     R3 ; [+3]
        2 MOVE                             R4 R3
        3 JUMP                             ; [+1]
        4 LOADB                            R4 0
        5 LOADK                            R6 K0 ["%*|%*|%*|%*"]
        6 MOVE                             R8 R2
        7 FASTCALL1                        TOSTRING R1 ; [+3]
        8 MOVE                             R10 R1
        9 GETIMPORT                        R9 K2 [tostring]
       11 CALL                             R9 1 1
       12 JUMPIFNOT                        R4 ; [+2]
       13 LOADK                            R10 K3 ["R"]
       14 JUMP                             ; [+1]
       15 LOADK                            R10 K4 ["P"]
       16 MOVE                             R11 R0
       17 NAMECALL                         R6 R6 K5 ["format"]
       19 CALL                             R6 5 1
       20 MOVE                             R5 R6
       21 GETUPVAL                         R7 0
       22 GETTABLE                         R6 R7 R5
       23 JUMPIFEQKNIL                     R6 ; [+2]
       25 RETURN                           R6 1
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K6 ["rawMeasure"]
       29 MOVE                             R10 R0
       30 LOADK                            R11 K7 ["|"]
       31 CONCAT                           R9 R10 R11
       32 MOVE                             R10 R1
       33 MOVE                             R11 R2
       34 MOVE                             R12 R4
       35 CALL                             R8 4 1
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K8 ["getSentinelWidth"]
       39 MOVE                             R10 R1
       40 MOVE                             R11 R2
       41 CALL                             R9 2 1
       42 SUB                              R7 R8 R9
       43 GETUPVAL                         R8 0
       44 SETTABLE                         R7 R8 R5
       45 RETURN                           R7 1

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
       10 GETIMPORT                        R5 K2 [pcall]
       12 GETIMPORT                        R6 K5 [utf8.len]
       14 MOVE                             R7 R0
       15 CALL                             R5 2 2
       16 JUMPIFNOT                        R5 ; [+1]
       17 JUMPIF                           R6 ; [+13]
       18 LOADN                            R9 1
       19 LENGTH                           R7 R0
       20 LOADN                            R8 1
       21 FORNPREP                         R7
       22 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       24 MOVE                             R11 R4
       25 MOVE                             R12 R9
       26 GETIMPORT                        R10 K8 [table.insert]
       28 CALL                             R10 2 0
       29 FORNLOOP                         R7
       30 JUMP                             ; [+22]
       31 LOADN                            R9 1
       32 MOVE                             R7 R6
       33 LOADN                            R8 1
       34 FORNPREP                         R7
       35 JUMPIFNOTLT                      R9 R6 ; [+7]
       37 GETIMPORT                        R10 K10 [utf8.offset]
       39 MOVE                             R11 R0
       40 ADDK                             R12 R9 K11 [1]
       41 CALL                             R10 2 1
       42 JUMP                             ; [+2]
       43 LENGTH                           R11 R0
       44 ADDK                             R10 R11 K11 [1]
       45 SUBK                             R13 R10 K11 [1]
       46 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       48 MOVE                             R12 R4
       49 GETIMPORT                        R11 K8 [table.insert]
       51 CALL                             R11 2 0
       52 FORNLOOP                         R7
       53 LOADN                            R7 0
       54 LENGTH                           R8 R4
       55 JUMPIFNOTLT                      R7 R8 ; [+30]
       57 ADD                              R11 R7 R8
       58 DIVK                             R10 R11 K12 [2]
       59 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       60 GETIMPORT                        R9 K15 [math.floor]
       62 CALL                             R9 1 1
       63 JUMPIFNOTEQKN                    R9 K0 [0] ; [+3]
       65 LOADN                            R10 0
       66 JUMP                             ; [+1]
       67 GETTABLE                         R10 R4 R9
       68 JUMPIFNOTEQKN                    R10 K0 [0] ; [+3]
       70 LOADN                            R11 0
       71 JUMP                             ; [+8]
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R11 R11 K16 ["measureSubstring"]
       75 MOVE                             R12 R0
       76 MOVE                             R13 R10
       77 MOVE                             R14 R2
       78 MOVE                             R15 R3
       79 CALL                             R11 4 1
       80 JUMPIFNOTLT                      R11 R1 ; [+3]
       82 ADDK                             R7 R9 K11 [1]
       83 JUMP                             ; [+1]
       84 MOVE                             R8 R9
       85 JUMPBACK                         ; [-31]
       86 LOADN                            R9 0
       87 JUMPIFNOTLT                      R9 R7 ; [+36]
       89 LENGTH                           R9 R4
       90 JUMPIFNOTLE                      R7 R9 ; [+33]
       92 JUMPIFNOTEQKN                    R7 K11 [1] ; [+3]
       94 LOADN                            R9 0
       95 JUMP                             ; [+2]
       96 SUBK                             R10 R7 K11 [1]
       97 GETTABLE                         R9 R4 R10
       98 JUMPIFNOTEQKN                    R9 K0 [0] ; [+3]
      100 LOADN                            R10 0
      101 JUMP                             ; [+8]
      102 GETUPVAL                         R10 0
      103 GETTABLEKS                       R10 R10 K16 ["measureSubstring"]
      105 MOVE                             R11 R0
      106 MOVE                             R12 R9
      107 MOVE                             R13 R2
      108 MOVE                             R14 R3
      109 CALL                             R10 4 1
      110 GETUPVAL                         R11 0
      111 GETTABLEKS                       R11 R11 K16 ["measureSubstring"]
      113 MOVE                             R12 R0
      114 GETTABLE                         R13 R4 R7
      115 MOVE                             R14 R2
      116 MOVE                             R15 R3
      117 CALL                             R11 4 1
      118 SUB                              R12 R1 R10
      119 SUB                              R13 R11 R1
      120 JUMPIFNOTLT                      R12 R13 ; [+3]
      122 ADDK                             R12 R9 K11 [1]
      123 RETURN                           R12 1
      124 LENGTH                           R9 R4
      125 JUMPIFNOTLT                      R9 R7 ; [+4]
      127 LENGTH                           R10 R0
      128 ADDK                             R9 R10 K11 [1]
      129 RETURN                           R9 1
      130 JUMPIFNOTEQKN                    R7 K0 [0] ; [+3]
      132 LOADN                            R9 1
      133 RETURN                           R9 1
      134 GETTABLE                         R10 R4 R7
      135 ADDK                             R9 R10 K11 [1]
      136 RETURN                           R9 1

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
