PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOTEQ                      R0 R5 ; [+3]
        6 LOADB                            R6 1
        7 RETURN                           R6 1
        8 FORGLOOP                         R1 2 ; [-5]
       10 LOADB                            R1 0
       11 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [string.find]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 LOADNIL                          R5
        5 LOADB                            R6 1
        6 CALL                             R2 4 2
        7 JUMPIFNOT                        R2 ; [+11]
        8 JUMPIFNOT                        R3 ; [+10]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["MatchBefore"]
       12 MOVE                             R5 R0
       13 MOVE                             R6 R2
       14 LOADK                            R7 K4 ["[[%s.,(=+-*/\"']"]
       15 LOADB                            R8 1
       16 CALL                             R4 4 1
       17 JUMPIFNOT                        R4 ; [+1]
       18 RETURN                           R2 2
       19 LOADNIL                          R4
       20 RETURN                           R4 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 LOADB                            R7 0
        8 LOADB                            R8 0
        9 NEWTABLE                         R9 2 0
       11 LOADN                            R12 1
       12 FASTCALL1                        STRING_LEN R0 ; [+3]
       13 MOVE                             R14 R0
       14 GETIMPORT                        R13 K2 [string.len]
       16 CALL                             R13 1 1
       17 MOVE                             R10 R13
       18 LOADN                            R11 1
       19 FORNPREP                         R10
       20 GETUPVAL                         R13 0
       21 GETTABLEKS                       R13 R13 K3 ["CharAt"]
       23 MOVE                             R14 R0
       24 MOVE                             R15 R12
       25 CALL                             R13 2 1
       26 GETIMPORT                        R14 K5 [string.match]
       28 MOVE                             R15 R13
       29 LOADK                            R16 K6 ["%S"]
       30 CALL                             R14 2 1
       31 JUMPIFNOT                        R14 ; [+74]
       32 JUMPIFNOT                        R8 ; [+42]
       33 JUMPIFNOT                        R3 ; [+13]
       34 JUMPIFNOT                        R4 ; [+12]
       35 NEWTABLE                         R14 2 0
       37 GETUPVAL                         R15 1
       38 GETTABLEKS                       R15 R15 K7 ["StartKey"]
       40 SETTABLE                         R3 R14 R15
       41 GETUPVAL                         R15 1
       42 GETTABLEKS                       R15 R15 K8 ["EndKey"]
       44 SETTABLE                         R4 R14 R15
       45 SETTABLEKS                       R14 R9 K9 ["Left"]
       47 JUMPIFNOT                        R5 ; [+13]
       48 JUMPIFNOT                        R6 ; [+12]
       49 NEWTABLE                         R14 2 0
       51 GETUPVAL                         R15 1
       52 GETTABLEKS                       R15 R15 K7 ["StartKey"]
       54 SETTABLE                         R5 R14 R15
       55 GETUPVAL                         R15 1
       56 GETTABLEKS                       R15 R15 K8 ["EndKey"]
       58 SETTABLE                         R6 R14 R15
       59 SETTABLEKS                       R14 R9 K10 ["Right"]
       61 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
       63 MOVE                             R15 R1
       64 MOVE                             R16 R9
       65 GETIMPORT                        R14 K13 [table.insert]
       67 CALL                             R14 2 0
       68 NEWTABLE                         R9 0 0
       70 LOADNIL                          R3
       71 LOADNIL                          R4
       72 LOADNIL                          R5
       73 LOADNIL                          R6
       74 LOADB                            R8 0
       75 JUMPIF                           R3 ; [+1]
       76 MOVE                             R3 R12
       77 JUMPIF                           R7 ; [+7]
       78 JUMPIFNOTEQKS                    R13 K14 ["="] ; [+45]
       80 JUMPIFEQKS                       R2 K15 ["~"] ; [+43]
       82 SUBK                             R4 R12 K16 [1]
       83 LOADB                            R7 1
       84 JUMP                             ; [+39]
       85 JUMPIFEQKS                       R13 K14 ["="] ; [+17]
       87 MOVE                             R5 R12
       88 JUMPIFNOT                        R3 ; [+15]
       89 JUMPIFNOT                        R4 ; [+14]
       90 NEWTABLE                         R14 2 0
       92 GETUPVAL                         R15 1
       93 GETTABLEKS                       R15 R15 K7 ["StartKey"]
       95 SETTABLE                         R3 R14 R15
       96 GETUPVAL                         R15 1
       97 GETTABLEKS                       R15 R15 K8 ["EndKey"]
       99 SETTABLE                         R4 R14 R15
      100 SETTABLEKS                       R14 R9 K9 ["Left"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R4
      104 LOADB                            R7 0
      105 JUMP                             ; [+18]
      106 JUMPIFNOT                        R2 ; [+17]
      107 GETIMPORT                        R14 K5 [string.match]
      109 MOVE                             R15 R2
      110 LOADK                            R16 K17 ["%p"]
      111 CALL                             R14 2 1
      112 JUMPIFNOT                        R14 ; [+11]
      113 JUMPIFEQKS                       R2 K14 ["="] ; [+10]
      115 JUMPIFEQKS                       R2 K18 [","] ; [+8]
      117 JUMPIF                           R8 ; [+6]
      118 LOADB                            R8 1
      119 JUMPIFNOT                        R5 ; [+2]
      120 SUBK                             R6 R12 K16 [1]
      121 JUMP                             ; [+2]
      122 JUMPIFNOT                        R3 ; [+1]
      123 SUBK                             R4 R12 K16 [1]
      124 MOVE                             R2 R13
      125 FORNLOOP                         R10
      126 NEWTABLE                         R9 0 0
      128 JUMPIFNOT                        R3 ; [+19]
      129 NEWTABLE                         R10 2 0
      131 GETUPVAL                         R11 1
      132 GETTABLEKS                       R11 R11 K7 ["StartKey"]
      134 SETTABLE                         R3 R10 R11
      135 GETUPVAL                         R11 1
      136 GETTABLEKS                       R11 R11 K8 ["EndKey"]
      138 MOVE                             R12 R4
      139 JUMPIF                           R12 ; [+5]
      140 FASTCALL1                        STRING_LEN R0 ; [+3]
      141 MOVE                             R13 R0
      142 GETIMPORT                        R12 K2 [string.len]
      144 CALL                             R12 1 1
      145 SETTABLE                         R12 R10 R11
      146 SETTABLEKS                       R10 R9 K9 ["Left"]
      148 JUMPIFNOT                        R5 ; [+19]
      149 NEWTABLE                         R10 2 0
      151 GETUPVAL                         R11 1
      152 GETTABLEKS                       R11 R11 K7 ["StartKey"]
      154 SETTABLE                         R5 R10 R11
      155 GETUPVAL                         R11 1
      156 GETTABLEKS                       R11 R11 K8 ["EndKey"]
      158 MOVE                             R12 R6
      159 JUMPIF                           R12 ; [+5]
      160 FASTCALL1                        STRING_LEN R0 ; [+3]
      161 MOVE                             R13 R0
      162 GETIMPORT                        R12 K2 [string.len]
      164 CALL                             R12 1 1
      165 SETTABLE                         R12 R10 R11
      166 SETTABLEKS                       R10 R9 K10 ["Right"]
      168 GETIMPORT                        R10 K20 [next]
      170 MOVE                             R11 R9
      171 CALL                             R10 1 1
      172 JUMPIFNOT                        R10 ; [+7]
      173 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
      175 MOVE                             R11 R1
      176 MOVE                             R12 R9
      177 GETIMPORT                        R10 K13 [table.insert]
      179 CALL                             R10 2 0
      180 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+22]
        2 GETTABLEKS                       R2 R0 K0 ["Left"]
        4 JUMPIFNOT                        R2 ; [+19]
        5 LOADB                            R2 0
        6 GETTABLEKS                       R4 R0 K0 ["Left"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K1 ["StartKey"]
       11 GETTABLE                         R3 R4 R5
       12 JUMPIFNOTLE                      R3 R1 ; [+11]
       14 GETTABLEKS                       R4 R0 K0 ["Left"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K2 ["EndKey"]
       19 GETTABLE                         R3 R4 R5
       20 JUMPIFLE                         R1 R3 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+22]
        2 GETTABLEKS                       R2 R0 K0 ["Right"]
        4 JUMPIFNOT                        R2 ; [+19]
        5 LOADB                            R2 0
        6 GETTABLEKS                       R4 R0 K0 ["Right"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K1 ["StartKey"]
       11 GETTABLE                         R3 R4 R5
       12 JUMPIFNOTLE                      R3 R1 ; [+11]
       14 GETTABLEKS                       R4 R0 K0 ["Right"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K2 ["EndKey"]
       19 GETTABLE                         R3 R4 R5
       20 JUMPIFLE                         R1 R3 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETIMPORT                        R4 K1 [ipairs]
        5 MOVE                             R5 R3
        6 CALL                             R4 1 3
        7 FORGPREP_INEXT                   R4
        8 MOVE                             R9 R8
        9 JUMPIFNOT                        R9 ; [+22]
       10 GETTABLEKS                       R9 R8 K2 ["Left"]
       12 JUMPIFNOT                        R9 ; [+19]
       13 LOADB                            R9 0
       14 GETTABLEKS                       R11 R8 K2 ["Left"]
       16 GETUPVAL                         R12 1
       17 GETTABLEKS                       R12 R12 K3 ["StartKey"]
       19 GETTABLE                         R10 R11 R12
       20 JUMPIFNOTLE                      R10 R2 ; [+11]
       22 GETTABLEKS                       R11 R8 K2 ["Left"]
       24 GETUPVAL                         R12 1
       25 GETTABLEKS                       R12 R12 K4 ["EndKey"]
       27 GETTABLE                         R10 R11 R12
       28 JUMPIFLE                         R2 R10 ; [+2]
       30 LOADB                            R9 0 +1
       31 LOADB                            R9 1
       32 JUMPIF                           R9 ; [+25]
       33 MOVE                             R9 R8
       34 JUMPIFNOT                        R9 ; [+22]
       35 GETTABLEKS                       R9 R8 K5 ["Right"]
       37 JUMPIFNOT                        R9 ; [+19]
       38 LOADB                            R9 0
       39 GETTABLEKS                       R11 R8 K5 ["Right"]
       41 GETUPVAL                         R12 1
       42 GETTABLEKS                       R12 R12 K3 ["StartKey"]
       44 GETTABLE                         R10 R11 R12
       45 JUMPIFNOTLE                      R10 R2 ; [+11]
       47 GETTABLEKS                       R11 R8 K5 ["Right"]
       49 GETUPVAL                         R12 1
       50 GETTABLEKS                       R12 R12 K4 ["EndKey"]
       52 GETTABLE                         R10 R11 R12
       53 JUMPIFLE                         R2 R10 ; [+2]
       55 LOADB                            R9 0 +1
       56 LOADB                            R9 1
       57 JUMPIFNOT                        R9 ; [+1]
       58 RETURN                           R8 1
       59 FORGLOOP                         R4 2 [inext] ; [-52]
       61 LOADNIL                          R4
       62 RETURN                           R4 1

PROTO_6:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["GetStatement"]
        4 CALL                             R3 3 1
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETTABLEKS                       R4 R3 K1 ["Left"]
        8 RETURN                           R4 1
        9 LOADNIL                          R4
       10 RETURN                           R4 1

PROTO_7:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["GetStatement"]
        4 CALL                             R3 3 1
        5 JUMPIFNOT                        R3 ; [+28]
        6 MOVE                             R4 R3
        7 JUMPIFNOT                        R4 ; [+22]
        8 GETTABLEKS                       R4 R3 K1 ["Right"]
       10 JUMPIFNOT                        R4 ; [+19]
       11 LOADB                            R4 0
       12 GETTABLEKS                       R6 R3 K1 ["Right"]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K2 ["StartKey"]
       17 GETTABLE                         R5 R6 R7
       18 JUMPIFNOTLE                      R5 R2 ; [+11]
       20 GETTABLEKS                       R6 R3 K1 ["Right"]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K3 ["EndKey"]
       25 GETTABLE                         R5 R6 R7
       26 JUMPIFLE                         R2 R5 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 JUMPIFNOT                        R4 ; [+3]
       31 GETTABLEKS                       R4 R3 K1 ["Right"]
       33 RETURN                           R4 1
       34 LOADNIL                          R4
       35 RETURN                           R4 1

PROTO_8:
        0 MOVE                             R6 R2
        1 MOVE                             R7 R3
        2 NAMECALL                         R4 R0 K0 ["GetLeftSide"]
        4 CALL                             R4 3 1
        5 JUMPIF                           R4 ; [+2]
        6 LOADNIL                          R5
        7 RETURN                           R5 1
        8 GETTABLEKS                       R7 R4 K1 ["start"]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K2 ["EndKey"]
       13 GETTABLE                         R8 R4 R9
       14 FASTCALL3                        STRING_SUB R2 R7 R8
       16 MOVE                             R6 R2
       17 GETIMPORT                        R5 K5 [string.sub]
       19 CALL                             R5 3 1
       20 GETIMPORT                        R6 K7 [pairs]
       22 MOVE                             R7 R1
       23 CALL                             R6 1 3
       24 FORGPREP_NEXT                    R6
       25 GETIMPORT                        R12 K9 [string.find]
       27 MOVE                             R13 R5
       28 MOVE                             R14 R9
       29 LOADNIL                          R15
       30 LOADB                            R16 1
       31 CALL                             R12 4 2
       32 JUMPIFNOT                        R12 ; [+12]
       33 JUMPIFNOT                        R13 ; [+11]
       34 GETUPVAL                         R14 1
       35 GETTABLEKS                       R14 R14 K10 ["MatchBefore"]
       37 MOVE                             R15 R5
       38 MOVE                             R16 R12
       39 LOADK                            R17 K11 ["[[%s.,(=+-*/\"']"]
       40 LOADB                            R18 1
       41 CALL                             R14 4 1
       42 JUMPIFNOT                        R14 ; [+2]
       43 MOVE                             R11 R12
       44 JUMP                             ; [+1]
       45 LOADNIL                          R11
       46 JUMPIFEQKNIL                     R11 ; [+2]
       48 RETURN                           R9 2
       49 FORGLOOP                         R6 2 ; [-25]
       51 LOADNIL                          R6
       52 RETURN                           R6 1

PROTO_9:
        0 MOVE                             R6 R1
        1 MOVE                             R7 R2
        2 NAMECALL                         R4 R0 K0 ["GetRightSide"]
        4 CALL                             R4 3 1
        5 JUMPIF                           R4 ; [+5]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 NAMECALL                         R4 R0 K1 ["GetLeftSide"]
       10 CALL                             R4 3 1
       11 JUMPIFNOT                        R4 ; [+105]
       12 GETTABLEKS                       R7 R4 K2 ["start"]
       14 SUBK                             R8 R2 K3 [1]
       15 FASTCALL3                        STRING_SUB R1 R7 R8
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K6 [string.sub]
       20 CALL                             R5 3 1
       21 MOVE                             R8 R5
       22 GETIMPORT                        R9 K8 [string.find]
       24 MOVE                             R10 R8
       25 MOVE                             R11 R3
       26 LOADNIL                          R12
       27 LOADB                            R13 1
       28 CALL                             R9 4 2
       29 JUMPIFNOT                        R9 ; [+13]
       30 JUMPIFNOT                        R10 ; [+12]
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R11 R11 K9 ["MatchBefore"]
       34 MOVE                             R12 R8
       35 MOVE                             R13 R9
       36 LOADK                            R14 K10 ["[[%s.,(=+-*/\"']"]
       37 LOADB                            R15 1
       38 CALL                             R11 4 1
       39 JUMPIFNOT                        R11 ; [+3]
       40 MOVE                             R6 R9
       41 MOVE                             R7 R10
       42 JUMP                             ; [+2]
       43 LOADNIL                          R6
       44 LOADNIL                          R7
       45 JUMPIFEQKNIL                     R6 ; [+71]
       47 JUMPIFEQKNIL                     R7 ; [+69]
       49 ADDK                             R10 R7 K3 [1]
       50 FASTCALL3                        STRING_SUB R5 R10 R2
       52 MOVE                             R9 R5
       53 MOVE                             R11 R2
       54 GETIMPORT                        R8 K6 [string.sub]
       56 CALL                             R8 3 1
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R9 R9 K11 ["RemoveWhitespace"]
       60 MOVE                             R10 R8
       61 CALL                             R9 1 1
       62 MOVE                             R8 R9
       63 MOVE                             R10 R8
       64 GETUPVAL                         R11 1
       65 LOADNIL                          R12
       66 LOADNIL                          R13
       67 FORGPREP                         R11
       68 JUMPIFNOTEQ                      R10 R15 ; [+3]
       70 LOADB                            R9 1
       71 JUMP                             ; [+3]
       72 FORGLOOP                         R11 2 ; [-5]
       74 LOADB                            R9 0
       75 JUMPIFNOT                        R9 ; [+1]
       76 RETURN                           R3 1
       77 ADDK                             R11 R7 K3 [1]
       78 FASTCALL1                        STRING_LEN R5 ; [+3]
       79 MOVE                             R13 R5
       80 GETIMPORT                        R12 K13 [string.len]
       82 CALL                             R12 1 1
       83 FASTCALL3                        STRING_SUB R5 R11 R12
       85 MOVE                             R10 R5
       86 GETIMPORT                        R9 K6 [string.sub]
       88 CALL                             R9 3 1
       89 MOVE                             R5 R9
       90 MOVE                             R11 R5
       91 GETIMPORT                        R12 K8 [string.find]
       93 MOVE                             R13 R11
       94 MOVE                             R14 R3
       95 LOADNIL                          R15
       96 LOADB                            R16 1
       97 CALL                             R12 4 2
       98 JUMPIFNOT                        R12 ; [+13]
       99 JUMPIFNOT                        R13 ; [+12]
      100 GETUPVAL                         R14 0
      101 GETTABLEKS                       R14 R14 K9 ["MatchBefore"]
      103 MOVE                             R15 R11
      104 MOVE                             R16 R12
      105 LOADK                            R17 K10 ["[[%s.,(=+-*/\"']"]
      106 LOADB                            R18 1
      107 CALL                             R14 4 1
      108 JUMPIFNOT                        R14 ; [+3]
      109 MOVE                             R9 R12
      110 MOVE                             R10 R13
      111 JUMP                             ; [+2]
      112 LOADNIL                          R9
      113 LOADNIL                          R10
      114 MOVE                             R6 R9
      115 MOVE                             R7 R10
      116 JUMPBACK                         ; [-72]
      117 LOADNIL                          R5
      118 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Constants"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["StringUtil"]
       14 CALL                             R2 1 1
       15 NEWTABLE                         R3 8 0
       17 NEWTABLE                         R4 0 10
       19 LOADK                            R5 K7 ["\")."]
       20 LOADK                            R6 K8 ["')."]
       21 LOADK                            R7 K9 ["\"]."]
       22 LOADK                            R8 K10 ["']."]
       23 LOADK                            R9 K11 ["."]
       24 LOADK                            R10 K12 ["[\""]
       25 LOADK                            R11 K13 [":FindFirstChild(\""]
       26 LOADK                            R12 K14 [":FindFirstChild\""]
       27 LOADK                            R13 K15 [":WaitForChild(\""]
       28 LOADK                            R14 K16 [":WaitForChild\""]
       29 SETLIST                          R4 R5 10 [1]
       31 DUPCLOSURE                       R5 K17 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 DUPCLOSURE                       R6 K18 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 DUPCLOSURE                       R7 K19 [PROTO_2]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 DUPCLOSURE                       R8 K20 [PROTO_3]
       39 CAPTURE                          VAL R1
       40 DUPCLOSURE                       R9 K21 [PROTO_4]
       41 CAPTURE                          VAL R1
       42 DUPCLOSURE                       R10 K22 [PROTO_5]
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R10 R3 K23 ["GetStatement"]
       47 DUPCLOSURE                       R10 K24 [PROTO_6]
       48 SETTABLEKS                       R10 R3 K25 ["GetLeftSide"]
       50 DUPCLOSURE                       R10 K26 [PROTO_7]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R10 R3 K27 ["GetRightSide"]
       54 DUPCLOSURE                       R10 K28 [PROTO_8]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R10 R3 K29 ["FindVariableAssignment"]
       59 DUPCLOSURE                       R10 K30 [PROTO_9]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 SETTABLEKS                       R10 R3 K31 ["FindVariableAccess"]
       64 RETURN                           R3 1
