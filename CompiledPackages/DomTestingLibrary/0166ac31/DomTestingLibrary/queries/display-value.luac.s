PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Text"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R2 ; [+4]
        2 NEWTABLE                         R3 0 0
        4 JUMP                             ; [+1]
        5 MOVE                             R3 R2
        6 GETTABLEKS                       R8 R3 K0 ["exact"]
        8 JUMPIFNOTEQKNIL                  R8 ; [+3]
       10 LOADB                            R4 1
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R4 R3 K0 ["exact"]
       14 GETTABLEKS                       R5 R3 K1 ["collapseWhitespace"]
       16 GETTABLEKS                       R6 R3 K2 ["trim"]
       18 GETTABLEKS                       R7 R3 K3 ["normalizer"]
       20 GETUPVAL                         R8 0
       21 MOVE                             R9 R0
       22 CALL                             R8 1 0
       23 JUMPIFNOT                        R4 ; [+2]
       24 GETUPVAL                         R8 1
       25 JUMP                             ; [+1]
       26 GETUPVAL                         R8 2
       27 GETUPVAL                         R9 3
       28 DUPTABLE                         R10 K4 [{"collapseWhitespace", "trim", "normalizer"}]
       29 SETTABLEKS                       R5 R10 K1 ["collapseWhitespace"]
       31 SETTABLEKS                       R6 R10 K2 ["trim"]
       33 SETTABLEKS                       R7 R10 K3 ["normalizer"]
       35 CALL                             R9 1 1
       36 GETUPVAL                         R11 4
       37 GETTABLEKS                       R10 R11 K5 ["filter"]
       39 GETUPVAL                         R11 5
       40 MOVE                             R12 R0
       41 NEWTABLE                         R13 0 1
       43 LOADK                            R14 K6 ["TextBox"]
       44 SETLIST                          R13 R14 1 [1]
       46 CALL                             R11 2 1
       47 NEWCLOSURE                       R12 P0
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R9
       51 CALL                             R10 2 -1
       52 RETURN                           R10 -1

PROTO_2:
        0 LOADK                            R2 K0 ["Found multiple elements with the display value: %s."]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_3:
        0 LOADK                            R2 K0 ["Unable to find an element with the display value: %s."]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETIMPORT                        R9 K1 [script]
       20 GETTABLEKS                       R8 R9 K2 ["Parent"]
       22 GETTABLEKS                       R7 R8 K2 ["Parent"]
       24 GETTABLEKS                       R6 R7 K7 ["jsHelpers"]
       26 GETTABLEKS                       R5 R6 K8 ["querySelectors"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R3 R4 K9 ["querySelectorAll"]
       31 NEWTABLE                         R4 8 0
       33 GETIMPORT                        R6 K4 [require]
       35 GETIMPORT                        R10 K1 [script]
       37 GETTABLEKS                       R9 R10 K2 ["Parent"]
       39 GETTABLEKS                       R8 R9 K2 ["Parent"]
       41 GETTABLEKS                       R7 R8 K10 ["query-helpers"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R5 R6 K11 ["wrapAllByQueryWithSuggestion"]
       46 GETIMPORT                        R7 K4 [require]
       48 GETIMPORT                        R11 K1 [script]
       50 GETTABLEKS                       R10 R11 K2 ["Parent"]
       52 GETTABLEKS                       R9 R10 K2 ["Parent"]
       54 GETTABLEKS                       R8 R9 K12 ["helpers"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R6 R7 K13 ["checkContainerType"]
       59 GETIMPORT                        R7 K4 [require]
       61 GETIMPORT                        R11 K1 [script]
       63 GETTABLEKS                       R10 R11 K2 ["Parent"]
       65 GETTABLEKS                       R9 R10 K2 ["Parent"]
       67 GETTABLEKS                       R8 R9 K14 ["types"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K4 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R10 R11 K2 ["Parent"]
       76 GETTABLEKS                       R9 R10 K15 ["all-utils"]
       78 CALL                             R8 1 1
       79 GETTABLEKS                       R9 R8 K16 ["getNodeText"]
       81 GETTABLEKS                       R10 R8 K17 ["matches"]
       83 GETTABLEKS                       R11 R8 K18 ["fuzzyMatches"]
       85 GETTABLEKS                       R12 R8 K19 ["makeNormalizer"]
       87 GETTABLEKS                       R13 R8 K20 ["buildQueries"]
       89 LOADNIL                          R14
       90 DUPCLOSURE                       R14 K21 [PROTO_1]
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R3
       97 LOADNIL                          R15
       98 DUPCLOSURE                       R15 K22 [PROTO_2]
       99 LOADNIL                          R16
      100 DUPCLOSURE                       R16 K23 [PROTO_3]
      101 MOVE                             R17 R5
      102 MOVE                             R18 R14
      103 GETIMPORT                        R19 K26 [debug.info]
      105 MOVE                             R20 R14
      106 LOADK                            R21 K27 ["n"]
      107 CALL                             R19 2 1
      108 LOADK                            R20 K28 ["queryAll"]
      109 CALL                             R17 3 1
      110 MOVE                             R18 R13
      111 MOVE                             R19 R14
      112 MOVE                             R20 R15
      113 MOVE                             R21 R16
      114 CALL                             R18 3 5
      115 SETTABLEKS                       R18 R4 K29 ["queryByDisplayValue"]
      117 SETTABLEKS                       R17 R4 K30 ["queryAllByDisplayValue"]
      119 SETTABLEKS                       R20 R4 K31 ["getByDisplayValue"]
      121 SETTABLEKS                       R19 R4 K32 ["getAllByDisplayValue"]
      123 SETTABLEKS                       R21 R4 K33 ["findAllByDisplayValue"]
      125 SETTABLEKS                       R22 R4 K34 ["findByDisplayValue"]
      127 RETURN                           R4 1
