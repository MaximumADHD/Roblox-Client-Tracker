PROTO_0:
        0 GETUPVAL                         R4 0
        1 LENGTH                           R3 R4
        2 LOADN                            R4 0
        3 JUMPIFLT                         R4 R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 NOT                              R1 R2
        8 JUMPIF                           R1 ; [+5]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 GETUPVAL                         R4 0
       12 CALL                             R2 2 1
       13 NOT                              R1 R2
       14 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R1 4 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R2 ; [+4]
        2 NEWTABLE                         R3 0 0
        4 JUMP                             ; [+1]
        5 MOVE                             R3 R2
        6 GETTABLEKS                       R10 R3 K0 ["selector"]
        8 JUMPIFNOTEQKNIL                  R10 ; [+7]
       10 NEWTABLE                         R4 0 1
       12 LOADK                            R10 K1 ["."]
       13 SETLIST                          R4 R10 1 [1]
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R4 R3 K0 ["selector"]
       18 GETTABLEKS                       R10 R3 K2 ["exact"]
       20 JUMPIFNOTEQKNIL                  R10 ; [+3]
       22 LOADB                            R5 1
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R5 R3 K2 ["exact"]
       26 GETTABLEKS                       R6 R3 K3 ["collapseWhitespace"]
       28 GETTABLEKS                       R7 R3 K4 ["trim"]
       30 GETTABLEKS                       R10 R3 K5 ["ignore"]
       32 JUMPIFNOTEQKNIL                  R10 ; [+7]
       34 GETUPVAL                         R10 0
       35 CALL                             R10 0 1
       36 MOVE                             R8 R10
       37 GETTABLEKS                       R8 R8 K6 ["defaultIgnore"]
       39 JUMP                             ; [+2]
       40 GETTABLEKS                       R8 R3 K5 ["ignore"]
       42 GETTABLEKS                       R9 R3 K7 ["normalizer"]
       44 GETUPVAL                         R10 1
       45 MOVE                             R11 R0
       46 CALL                             R10 1 0
       47 JUMPIFNOT                        R5 ; [+2]
       48 GETUPVAL                         R10 2
       49 JUMP                             ; [+1]
       50 GETUPVAL                         R10 3
       51 GETUPVAL                         R11 4
       52 DUPTABLE                         R12 K8 [{"collapseWhitespace", "trim", "normalizer"}]
       53 SETTABLEKS                       R6 R12 K3 ["collapseWhitespace"]
       55 SETTABLEKS                       R7 R12 K4 ["trim"]
       57 SETTABLEKS                       R9 R12 K7 ["normalizer"]
       59 CALL                             R11 1 1
       60 NEWTABLE                         R12 0 0
       62 GETUPVAL                         R13 5
       63 MOVE                             R14 R0
       64 MOVE                             R15 R4
       65 CALL                             R13 2 1
       66 JUMPIFNOT                        R13 ; [+6]
       67 NEWTABLE                         R13 0 1
       69 MOVE                             R14 R0
       70 SETLIST                          R13 R14 1 [1]
       72 MOVE                             R12 R13
       73 GETUPVAL                         R13 6
       74 GETTABLEKS                       R13 R13 K9 ["filter"]
       76 GETUPVAL                         R14 6
       77 GETTABLEKS                       R14 R14 K9 ["filter"]
       79 GETUPVAL                         R15 6
       80 GETTABLEKS                       R15 R15 K10 ["concat"]
       82 NEWTABLE                         R16 0 0
       84 MOVE                             R17 R12
       85 GETUPVAL                         R18 7
       86 MOVE                             R19 R0
       87 MOVE                             R20 R4
       88 CALL                             R18 2 -1
       89 CALL                             R15 -1 1
       90 NEWCLOSURE                       R16 P0
       91 CAPTURE                          VAL R8
       92 CAPTURE                          UPVAL U5
       93 CALL                             R14 2 1
       94 NEWCLOSURE                       R15 P1
       95 CAPTURE                          VAL R10
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R11
       99 CALL                             R13 2 -1
      100 RETURN                           R13 -1

PROTO_3:
        0 LOADK                            R2 K0 ["Found multiple elements with the text: %s"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R2 ; [+4]
        2 NEWTABLE                         R3 0 0
        4 JUMP                             ; [+1]
        5 MOVE                             R3 R2
        6 GETTABLEKS                       R4 R3 K0 ["collapseWhitespace"]
        8 GETTABLEKS                       R5 R3 K1 ["trim"]
       10 GETTABLEKS                       R6 R3 K2 ["normalizer"]
       12 GETUPVAL                         R7 0
       13 DUPTABLE                         R8 K3 [{"collapseWhitespace", "trim", "normalizer"}]
       14 SETTABLEKS                       R4 R8 K0 ["collapseWhitespace"]
       16 SETTABLEKS                       R5 R8 K1 ["trim"]
       18 SETTABLEKS                       R6 R8 K2 ["normalizer"]
       20 CALL                             R7 1 1
       21 MOVE                             R8 R7
       22 FASTCALL1                        TOSTRING R1 ; [+3]
       23 MOVE                             R10 R1
       24 GETIMPORT                        R9 K5 [tostring]
       26 CALL                             R9 1 1
       27 CALL                             R8 1 1
       28 FASTCALL1                        TOSTRING R1 ; [+3]
       29 MOVE                             R11 R1
       30 GETIMPORT                        R10 K5 [tostring]
       32 CALL                             R10 1 1
       33 JUMPIFNOTEQ                      R8 R10 ; [+2]
       35 LOADB                            R9 0 +1
       36 LOADB                            R9 1
       37 LOADK                            R10 K6 ["Unable to find an element with the text: %s. This could be because the text is broken up by multiple elements. In this case, you can provide a function for your text matcher to make your matcher more flexible."]
       38 JUMPIFNOT                        R9 ; [+11]
       39 LOADK                            R13 K7 ["%s (normalized from '%s')"]
       40 MOVE                             R15 R8
       41 FASTCALL1                        TOSTRING R1 ; [+3]
       42 MOVE                             R17 R1
       43 GETIMPORT                        R16 K5 [tostring]
       45 CALL                             R16 1 1
       46 NAMECALL                         R13 R13 K8 ["format"]
       48 CALL                             R13 3 1
       49 JUMP                             ; [+1]
       50 MOVE                             R13 R1
       51 FASTCALL1                        TOSTRING R13 ; [+2]
       52 GETIMPORT                        R12 K5 [tostring]
       54 CALL                             R12 1 1
       55 NAMECALL                         R10 R10 K8 ["format"]
       57 CALL                             R10 2 -1
       58 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K2 ["Parent"]
       22 GETTABLEKS                       R4 R4 K2 ["Parent"]
       24 GETTABLEKS                       R4 R4 K7 ["jsHelpers"]
       26 GETTABLEKS                       R4 R4 K8 ["querySelectors"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K9 ["matches"]
       31 GETTABLEKS                       R5 R3 K10 ["querySelectorAll"]
       33 NEWTABLE                         R6 8 0
       35 GETIMPORT                        R7 K4 [require]
       37 GETIMPORT                        R9 K1 [script]
       39 GETTABLEKS                       R9 R9 K2 ["Parent"]
       41 GETTABLEKS                       R9 R9 K2 ["Parent"]
       43 GETTABLEKS                       R8 R9 K11 ["query-helpers"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R7 R7 K12 ["wrapAllByQueryWithSuggestion"]
       48 GETIMPORT                        R8 K4 [require]
       50 GETIMPORT                        R9 K1 [script]
       52 GETTABLEKS                       R9 R9 K2 ["Parent"]
       54 GETTABLEKS                       R9 R9 K2 ["Parent"]
       56 GETTABLEKS                       R9 R9 K13 ["helpers"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R8 R8 K14 ["checkContainerType"]
       61 GETIMPORT                        R9 K4 [require]
       63 GETIMPORT                        R10 K1 [script]
       65 GETTABLEKS                       R10 R10 K2 ["Parent"]
       67 GETTABLEKS                       R10 R10 K2 ["Parent"]
       69 GETTABLEKS                       R10 R10 K15 ["types"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K4 [require]
       74 GETIMPORT                        R12 K1 [script]
       76 GETTABLEKS                       R12 R12 K2 ["Parent"]
       78 GETTABLEKS                       R11 R12 K16 ["all-utils"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R10 K17 ["fuzzyMatches"]
       83 GETTABLEKS                       R12 R10 K9 ["matches"]
       85 GETTABLEKS                       R13 R10 K18 ["makeNormalizer"]
       87 GETTABLEKS                       R14 R10 K19 ["getNodeText"]
       89 GETTABLEKS                       R15 R10 K20 ["buildQueries"]
       91 GETTABLEKS                       R16 R10 K21 ["getConfig"]
       93 LOADNIL                          R17
       94 DUPCLOSURE                       R17 K22 [PROTO_2]
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R14
      104 LOADNIL                          R18
      105 DUPCLOSURE                       R18 K23 [PROTO_3]
      106 LOADNIL                          R19
      107 DUPCLOSURE                       R19 K24 [PROTO_4]
      108 CAPTURE                          VAL R13
      109 MOVE                             R20 R7
      110 MOVE                             R21 R17
      111 GETIMPORT                        R22 K27 [debug.info]
      113 MOVE                             R23 R17
      114 LOADK                            R24 K28 ["n"]
      115 CALL                             R22 2 1
      116 LOADK                            R23 K29 ["queryAll"]
      117 CALL                             R20 3 1
      118 MOVE                             R21 R15
      119 MOVE                             R22 R17
      120 MOVE                             R23 R18
      121 MOVE                             R24 R19
      122 CALL                             R21 3 5
      123 SETTABLEKS                       R21 R6 K30 ["queryByText"]
      125 SETTABLEKS                       R20 R6 K31 ["queryAllByText"]
      127 SETTABLEKS                       R23 R6 K32 ["getByText"]
      129 SETTABLEKS                       R22 R6 K33 ["getAllByText"]
      131 SETTABLEKS                       R24 R6 K34 ["findAllByText"]
      133 SETTABLEKS                       R25 R6 K35 ["findByText"]
      135 RETURN                           R6 1
