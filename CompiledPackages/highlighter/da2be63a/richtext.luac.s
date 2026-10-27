PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 GETIMPORT                        R2 K2 [string.gsub]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["[\0\x\x\x\x\x\x\x\x\x\x\r\x\x\x\x\x\x\x\x\x\x\x\x\x\x\x\x\x\x]+"]
        6 LOADK                            R5 K4 [""]
        7 CALL                             R2 3 1
        8 LOADK                            R3 K5 ["\t"]
        9 LOADK                            R4 K6 ["    "]
       10 CALL                             R1 3 1
       11 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[&<>\"']"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R1 K5 [string.gsub]
       10 MOVE                             R2 R0
       11 LOADK                            R3 K3 ["[&<>\"']"]
       12 GETUPVAL                         R4 0
       13 CALL                             R1 3 1
       14 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Next"]
        3 CALL                             R0 1 2
        4 GETUPVAL                         R2 1
        5 LOADN                            R3 0
        6 JUMPIFNOTLT                      R3 R2 ; [+14]
        8 JUMPIFEQKNIL                     R0 ; [+12]
       10 GETUPVAL                         R5 1
       11 ADDK                             R4 R5 K1 [1]
       12 FASTCALL2                        STRING_SUB R1 R4 ; [+4]
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K4 [string.sub]
       17 CALL                             R2 2 1
       18 MOVE                             R1 R2
       19 LOADN                            R2 0
       20 SETUPVAL                         R2 1
       21 RETURN                           R0 2

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+4]
        2 LOADNIL                          R3
        3 LOADN                            R4 1
        4 RETURN                           R3 2
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R0 K0 ["HotswapSource"]
        8 CALL                             R3 2 1
        9 LOADN                            R4 1
       10 LOADN                            R5 1
       11 JUMPIFNOT                        R2 ; [+22]
       12 GETIMPORT                        R6 K3 [string.find]
       14 MOVE                             R7 R1
       15 LOADK                            R8 K4 ["\n"]
       16 LOADN                            R9 1
       17 LOADB                            R10 1
       18 CALL                             R6 4 1
       19 JUMPIFEQKNIL                     R6 ; [+14]
       21 JUMPIFNOTLE                      R6 R3 ; [+12]
       23 ADDK                             R4 R4 K5 [1]
       24 ADDK                             R5 R6 K5 [1]
       25 GETIMPORT                        R7 K3 [string.find]
       27 MOVE                             R8 R1
       28 LOADK                            R9 K4 ["\n"]
       29 ADDK                             R10 R6 K5 [1]
       30 LOADB                            R11 1
       31 CALL                             R7 4 1
       32 MOVE                             R6 R7
       33 JUMPBACK                         ; [-15]
       34 MOVE                             R8 R5
       35 NAMECALL                         R6 R0 K6 ["SeekToByte"]
       37 CALL                             R6 2 1
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          REF R6
       41 MOVE                             R8 R4
       42 CLOSEUPVALS                      R6
       43 RETURN                           R7 2

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getOpenTag"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 JUMPIF                           R2 ; [+4]
        7 GETUPVAL                         R2 2
        8 JUMPIFNOTEQ                      R1 R2 ; [+2]
       10 LOADK                            R1 K1 [""]
       11 GETUPVAL                         R2 3
       12 SETTABLE                         R1 R2 R0
       13 RETURN                           R1 1

PROTO_5:
        0 JUMPIFEQKS                       R1 K0 [""] ; [+20]
        2 JUMPIFEQKS                       R0 K0 [""] ; [+18]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 ADDK                             R3 R4 K1 [1]
        7 SETTABLE                         R1 R2 R3
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R4 1
       10 ADDK                             R3 R4 K2 [2]
       11 SETTABLE                         R0 R2 R3
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R4 1
       14 ADDK                             R3 R4 K3 [3]
       15 LOADK                            R4 K4 ["</font>"]
       16 SETTABLE                         R4 R2 R3
       17 GETUPVAL                         R2 1
       18 ADDK                             R2 R2 K3 [3]
       19 SETUPVAL                         R2 1
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 1
       22 ADDK                             R2 R2 K1 [1]
       23 SETUPVAL                         R2 1
       24 GETUPVAL                         R2 0
       25 GETUPVAL                         R3 1
       26 SETTABLE                         R0 R2 R3
       27 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+15]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["getOpenTag"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 2
       10 JUMPIF                           R4 ; [+4]
       11 GETUPVAL                         R4 3
       12 JUMPIFNOTEQ                      R3 R4 ; [+2]
       14 LOADK                            R3 K1 [""]
       15 GETUPVAL                         R4 0
       16 SETTABLE                         R3 R4 R0
       17 MOVE                             R2 R3
       18 GETUPVAL                         R3 4
       19 JUMPIFEQKNIL                     R3 ; [+36]
       21 GETUPVAL                         R4 5
       22 GETTABLE                         R3 R4 R0
       23 JUMPIFEQKNIL                     R3 ; [+32]
       25 GETIMPORT                        R3 K4 [string.match]
       27 MOVE                             R4 R1
       28 LOADK                            R5 K5 ["^%s*(.-)%s*$"]
       29 CALL                             R3 2 1
       30 JUMPIFEQKNIL                     R3 ; [+25]
       32 GETUPVAL                         R5 4
       33 GETTABLE                         R4 R5 R3
       34 JUMPIFEQKNIL                     R4 ; [+21]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R2 R4 K6 ["custom"]
       39 JUMPIFNOTEQKNIL                  R2 ; [+16]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K0 ["getOpenTag"]
       44 LOADK                            R5 K6 ["custom"]
       45 CALL                             R4 1 1
       46 GETUPVAL                         R5 2
       47 JUMPIF                           R5 ; [+4]
       48 GETUPVAL                         R5 3
       49 JUMPIFNOTEQ                      R4 R5 ; [+2]
       51 LOADK                            R4 K1 [""]
       52 GETUPVAL                         R5 0
       53 SETTABLEKS                       R4 R5 K6 ["custom"]
       55 MOVE                             R2 R4
       56 GETUPVAL                         R3 6
       57 MOVE                             R4 R1
       58 CALL                             R3 1 1
       59 GETIMPORT                        R4 K8 [string.find]
       61 MOVE                             R5 R3
       62 LOADK                            R6 K9 ["\n"]
       63 LOADN                            R7 1
       64 LOADB                            R8 1
       65 CALL                             R4 4 1
       66 JUMPIFNOTEQKNIL                  R4 ; [+30]
       68 MOVE                             R4 R2
       69 JUMPIFEQKS                       R4 K1 [""] ; [+20]
       71 JUMPIFEQKS                       R3 K1 [""] ; [+18]
       73 GETUPVAL                         R5 7
       74 GETUPVAL                         R7 8
       75 ADDK                             R6 R7 K10 [1]
       76 SETTABLE                         R4 R5 R6
       77 GETUPVAL                         R5 7
       78 GETUPVAL                         R7 8
       79 ADDK                             R6 R7 K11 [2]
       80 SETTABLE                         R3 R5 R6
       81 GETUPVAL                         R5 7
       82 GETUPVAL                         R7 8
       83 ADDK                             R6 R7 K12 [3]
       84 LOADK                            R7 K13 ["</font>"]
       85 SETTABLE                         R7 R5 R6
       86 GETUPVAL                         R5 8
       87 ADDK                             R5 R5 K12 [3]
       88 SETUPVAL                         R5 8
       89 RETURN                           R0 0
       90 GETUPVAL                         R5 8
       91 ADDK                             R5 R5 K10 [1]
       92 SETUPVAL                         R5 8
       93 GETUPVAL                         R5 7
       94 GETUPVAL                         R6 8
       95 SETTABLE                         R3 R5 R6
       96 RETURN                           R0 0
       97 GETIMPORT                        R4 K15 [string.split]
       99 MOVE                             R5 R3
      100 LOADK                            R6 K9 ["\n"]
      101 CALL                             R4 2 1
      102 MOVE                             R5 R4
      103 LOADNIL                          R6
      104 LOADNIL                          R7
      105 FORGPREP                         R5
      106 LOADN                            R10 1
      107 JUMPIFNOTLT                      R10 R8 ; [+17]
      109 GETUPVAL                         R10 9
      110 GETUPVAL                         R11 10
      111 GETIMPORT                        R12 K18 [table.concat]
      113 GETUPVAL                         R13 7
      114 CALL                             R12 1 -1
      115 CALL                             R10 -1 0
      116 GETUPVAL                         R10 10
      117 ADDK                             R10 R10 K10 [1]
      118 SETUPVAL                         R10 10
      119 LOADN                            R10 0
      120 SETUPVAL                         R10 8
      121 GETIMPORT                        R10 K20 [table.clear]
      123 GETUPVAL                         R11 7
      124 CALL                             R10 1 0
      125 MOVE                             R10 R2
      126 JUMPIFEQKS                       R10 K1 [""] ; [+20]
      128 JUMPIFEQKS                       R9 K1 [""] ; [+18]
      130 GETUPVAL                         R11 7
      131 GETUPVAL                         R13 8
      132 ADDK                             R12 R13 K10 [1]
      133 SETTABLE                         R10 R11 R12
      134 GETUPVAL                         R11 7
      135 GETUPVAL                         R13 8
      136 ADDK                             R12 R13 K11 [2]
      137 SETTABLE                         R9 R11 R12
      138 GETUPVAL                         R11 7
      139 GETUPVAL                         R13 8
      140 ADDK                             R12 R13 K12 [3]
      141 LOADK                            R13 K13 ["</font>"]
      142 SETTABLE                         R13 R11 R12
      143 GETUPVAL                         R11 8
      144 ADDK                             R11 R11 K12 [3]
      145 SETUPVAL                         R11 8
      146 JUMP                             ; [+6]
      147 GETUPVAL                         R11 8
      148 ADDK                             R11 R11 K10 [1]
      149 SETUPVAL                         R11 8
      150 GETUPVAL                         R11 7
      151 GETUPVAL                         R12 8
      152 SETTABLE                         R9 R11 R12
      153 FORGLOOP                         R5 2 ; [-48]
      155 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["customLang"]
        2 GETTABLEKS                       R2 R0 K1 ["alwaysTagText"]
        4 GETTABLEKS                       R3 R0 K2 ["onLine"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["sanitize"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K4 ["getOpenTag"]
       12 LOADK                            R6 K5 ["iden"]
       13 CALL                             R5 1 1
       14 NEWTABLE                         R6 0 0
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R6
       21 GETIMPORT                        R11 K8 [table.create]
       23 LOADN                            R12 16
       24 CALL                             R11 1 1
       25 MOVE                             R8 R11
       26 LOADN                            R9 0
       27 GETTABLEKS                       R11 R0 K10 ["startLine"]
       29 ORK                              R10 R11 K9 [1]
       30 NEWCLOSURE                       R11 P1
       31 CAPTURE                          VAL R8
       32 CAPTURE                          REF R9
       33 NEWCLOSURE                       R12 P2
       34 CAPTURE                          VAL R6
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R8
       42 CAPTURE                          REF R9
       43 CAPTURE                          VAL R3
       44 CAPTURE                          REF R10
       45 GETTABLEKS                       R13 R0 K11 ["tokens"]
       47 GETTABLEKS                       R14 R0 K12 ["lexer"]
       49 GETTABLEKS                       R14 R14 K13 ["scanEach"]
       51 JUMPIFEQKNIL                     R13 ; [+12]
       53 MOVE                             R15 R13
       54 LOADNIL                          R16
       55 LOADNIL                          R17
       56 FORGPREP                         R15
       57 MOVE                             R20 R12
       58 MOVE                             R21 R18
       59 MOVE                             R22 R19
       60 CALL                             R20 2 0
       61 FORGLOOP                         R15 2 ; [-5]
       63 JUMP                             ; [+22]
       64 JUMPIFEQKNIL                     R14 ; [+7]
       66 MOVE                             R15 R14
       67 GETTABLEKS                       R16 R0 K14 ["src"]
       69 MOVE                             R17 R12
       70 CALL                             R15 2 0
       71 JUMP                             ; [+14]
       72 GETTABLEKS                       R15 R0 K12 ["lexer"]
       74 GETTABLEKS                       R15 R15 K15 ["scan"]
       76 GETTABLEKS                       R16 R0 K14 ["src"]
       78 CALL                             R15 1 3
       79 FORGPREP                         R15
       80 MOVE                             R20 R12
       81 MOVE                             R21 R18
       82 MOVE                             R22 R19
       83 CALL                             R20 2 0
       84 FORGLOOP                         R15 2 ; [-5]
       86 MOVE                             R15 R3
       87 MOVE                             R16 R10
       88 GETIMPORT                        R17 K17 [table.concat]
       90 MOVE                             R18 R8
       91 CALL                             R17 1 -1
       92 CALL                             R15 -1 0
       93 CLOSEUPVALS                      R9
       94 RETURN                           R10 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["normalize"]
        3 GETTABLEKS                       R2 R0 K1 ["src"]
        5 CALL                             R1 1 1
        6 LOADN                            R2 1
        7 GETIMPORT                        R3 K4 [string.find]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K5 ["\n"]
       11 LOADN                            R6 1
       12 LOADB                            R7 1
       13 CALL                             R3 4 1
       14 JUMPIFEQKNIL                     R3 ; [+11]
       16 ADDK                             R2 R2 K6 [1]
       17 GETIMPORT                        R4 K4 [string.find]
       19 MOVE                             R5 R1
       20 LOADK                            R6 K5 ["\n"]
       21 ADDK                             R7 R3 K6 [1]
       22 LOADB                            R8 1
       23 CALL                             R4 4 1
       24 MOVE                             R3 R4
       25 JUMPBACK                         ; [-12]
       26 GETIMPORT                        R4 K9 [table.create]
       28 MOVE                             R5 R2
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K10 ["buildLines"]
       33 DUPTABLE                         R6 K16 [{["src"], ["lexer"], ["customLang"], ["alwaysTagText"] = True, ["onLine"]}]
       34 SETTABLEKS                       R1 R6 K1 ["src"]
       36 GETTABLEKS                       R7 R0 K11 ["lexer"]
       38 JUMPIF                           R7 ; [+1]
       39 GETUPVAL                         R7 1
       40 SETTABLEKS                       R7 R6 K11 ["lexer"]
       42 GETTABLEKS                       R7 R0 K12 ["customLang"]
       44 SETTABLEKS                       R7 R6 K12 ["customLang"]
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R7 R6 K15 ["onLine"]
       50 CALL                             R5 1 0
       51 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["types"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["theme"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["lexer"]
       27 CALL                             R2 1 1
       28 NEWTABLE                         R3 8 0
       30 DUPCLOSURE                       R4 K8 [PROTO_0]
       31 SETTABLEKS                       R4 R3 K9 ["normalize"]
       33 NEWTABLE                         R4 8 0
       35 LOADK                            R5 K10 ["&amp;"]
       36 SETTABLEKS                       R5 R4 K11 ["&"]
       38 LOADK                            R5 K12 ["&lt;"]
       39 SETTABLEKS                       R5 R4 K13 ["<"]
       41 LOADK                            R5 K14 ["&gt;"]
       42 SETTABLEKS                       R5 R4 K15 [">"]
       44 LOADK                            R5 K16 ["&quot;"]
       45 SETTABLEKS                       R5 R4 K17 ["\""]
       47 LOADK                            R5 K18 ["&apos;"]
       48 SETTABLEKS                       R5 R4 K19 ["'"]
       50 DUPTABLE                         R5 K25 [{["iden"] = True, ["keyword"] = True, ["builtin"] = True, ["type"] = True}]
       51 DUPCLOSURE                       R6 K26 [PROTO_1]
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R6 R3 K27 ["sanitize"]
       55 DUPCLOSURE                       R6 K28 [PROTO_3]
       56 SETTABLEKS                       R6 R3 K29 ["resumeTokens"]
       58 DUPCLOSURE                       R6 K30 [PROTO_7]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R6 R3 K31 ["buildLines"]
       64 DUPCLOSURE                       R6 K32 [PROTO_9]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R6 R3 K33 ["buildRichTextLines"]
       69 RETURN                           R3 1
