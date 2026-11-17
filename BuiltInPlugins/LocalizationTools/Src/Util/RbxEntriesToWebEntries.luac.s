PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 1 ; [-8]
       16 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 1 ; [-8]
       16 GETIMPORT                        R2 K6 [table.sort]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+10]
        3 LOADB                            R1 0
        4 GETUPVAL                         R2 1
        5 JUMPIFEQKNIL                     R2 ; [+7]
        7 GETUPVAL                         R3 1
        8 GETTABLE                         R2 R3 R0
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 NAMECALL                         R7 R5 K2 ["lower"]
        9 CALL                             R7 1 1
       10 GETUPVAL                         R9 0
       11 GETTABLE                         R8 R9 R7
       12 JUMPIF                           R8 ; [+10]
       13 LOADB                            R8 0
       14 GETUPVAL                         R9 1
       15 JUMPIFEQKNIL                     R9 ; [+7]
       17 GETUPVAL                         R10 1
       18 GETTABLE                         R9 R10 R7
       19 JUMPIFNOTEQKNIL                  R9 ; [+2]
       21 LOADB                            R8 0 +1
       22 LOADB                            R8 1
       23 JUMPIFNOT                        R8 ; [+30]
       24 DUPTABLE                         R10 K5 [{"locale", "translationText"}]
       25 SETTABLEKS                       R7 R10 K3 ["locale"]
       27 SETTABLEKS                       R6 R10 K4 ["translationText"]
       29 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       31 MOVE                             R9 R1
       32 GETIMPORT                        R8 K8 [table.insert]
       34 CALL                             R8 2 0
       35 GETUPVAL                         R8 2
       36 LOADB                            R9 1
       37 SETTABLE                         R9 R8 R7
       38 GETUPVAL                         R9 3
       39 ADDK                             R8 R9 K9 [1]
       40 SETUPVAL                         R8 3
       41 GETUPVAL                         R8 4
       42 JUMPIFEQKNIL                     R8 ; [+14]
       44 GETUPVAL                         R10 1
       45 GETTABLE                         R9 R10 R7
       46 OR                               R8 R9 R7
       47 GETUPVAL                         R10 4
       48 GETTABLE                         R9 R10 R8
       49 JUMPIF                           R9 ; [+7]
       50 GETUPVAL                         R9 5
       51 LOADB                            R10 1
       52 SETTABLE                         R10 R9 R8
       53 JUMP                             ; [+3]
       54 GETUPVAL                         R8 6
       55 LOADB                            R9 1
       56 SETTABLE                         R9 R8 R5
       57 FORGLOOP                         R2 2 ; [-51]
       59 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R4 0 0
        2 LOADN                            R5 0
        3 LOADN                            R6 0
        4 NEWTABLE                         R7 0 0
        6 NEWTABLE                         R8 0 0
        8 NEWTABLE                         R9 0 0
       10 NEWCLOSURE                       R10 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 NEWCLOSURE                       R11 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R7
       17 CAPTURE                          REF R6
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R9
       20 CAPTURE                          VAL R8
       21 GETIMPORT                        R12 K1 [ipairs]
       23 MOVE                             R13 R0
       24 CALL                             R12 1 3
       25 FORGPREP_INEXT                   R12
       26 MOVE                             R17 R11
       27 GETTABLEKS                       R18 R16 K2 ["Values"]
       29 CALL                             R17 1 1
       30 DUPTABLE                         R20 K8 [{["identifier"], ["metadata"], ["translations"], ["delete"] = False}]
       31 DUPTABLE                         R21 K12 [{"key", "context", "source"}]
       32 GETTABLEKS                       R23 R16 K14 ["Key"]
       34 ORK                              R22 R23 K13 [""]
       35 SETTABLEKS                       R22 R21 K9 ["key"]
       37 GETTABLEKS                       R23 R16 K15 ["Context"]
       39 ORK                              R22 R23 K13 [""]
       40 SETTABLEKS                       R22 R21 K10 ["context"]
       42 GETTABLEKS                       R23 R16 K16 ["Source"]
       44 ORK                              R22 R23 K13 [""]
       45 SETTABLEKS                       R22 R21 K11 ["source"]
       47 SETTABLEKS                       R21 R20 K3 ["identifier"]
       49 DUPTABLE                         R21 K18 [{"example"}]
       50 GETTABLEKS                       R23 R16 K19 ["Example"]
       52 ORK                              R22 R23 K13 [""]
       53 SETTABLEKS                       R22 R21 K17 ["example"]
       55 SETTABLEKS                       R21 R20 K4 ["metadata"]
       57 SETTABLEKS                       R17 R20 K5 ["translations"]
       59 FASTCALL2                        TABLE_INSERT R4 R20 ; [+4]
       61 MOVE                             R19 R4
       62 GETIMPORT                        R18 K22 [table.insert]
       64 CALL                             R18 2 0
       65 ADDK                             R5 R5 K23 [1]
       66 FORGLOOP                         R12 2 [inext] ; [-41]
       68 DUPTABLE                         R12 K31 [{"entries", "totalRows", "totalTranslations", "supportedLocales", "unsupportedLocales", "newLanguages", "newLanguagesSet"}]
       69 SETTABLEKS                       R4 R12 K24 ["entries"]
       71 SETTABLEKS                       R5 R12 K25 ["totalRows"]
       73 SETTABLEKS                       R6 R12 K26 ["totalTranslations"]
       75 GETIMPORT                        R13 K33 [table.concat]
       77 NEWTABLE                         R14 0 0
       79 GETIMPORT                        R15 K35 [pairs]
       81 MOVE                             R16 R7
       82 CALL                             R15 1 3
       83 FORGPREP_NEXT                    R15
       84 FASTCALL2                        TABLE_INSERT R14 R18 ; [+5]
       86 MOVE                             R21 R14
       87 MOVE                             R22 R18
       88 GETIMPORT                        R20 K22 [table.insert]
       90 CALL                             R20 2 0
       91 FORGLOOP                         R15 1 ; [-8]
       93 GETIMPORT                        R15 K37 [table.sort]
       95 MOVE                             R16 R14
       96 CALL                             R15 1 0
       97 LOADK                            R15 K38 [", "]
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K27 ["supportedLocales"]
      101 GETIMPORT                        R13 K33 [table.concat]
      103 NEWTABLE                         R14 0 0
      105 GETIMPORT                        R15 K35 [pairs]
      107 MOVE                             R16 R8
      108 CALL                             R15 1 3
      109 FORGPREP_NEXT                    R15
      110 FASTCALL2                        TABLE_INSERT R14 R18 ; [+5]
      112 MOVE                             R21 R14
      113 MOVE                             R22 R18
      114 GETIMPORT                        R20 K22 [table.insert]
      116 CALL                             R20 2 0
      117 FORGLOOP                         R15 1 ; [-8]
      119 GETIMPORT                        R15 K37 [table.sort]
      121 MOVE                             R16 R14
      122 CALL                             R15 1 0
      123 LOADK                            R15 K38 [", "]
      124 CALL                             R13 2 1
      125 SETTABLEKS                       R13 R12 K28 ["unsupportedLocales"]
      127 GETIMPORT                        R13 K33 [table.concat]
      129 NEWTABLE                         R14 0 0
      131 GETIMPORT                        R15 K35 [pairs]
      133 MOVE                             R16 R9
      134 CALL                             R15 1 3
      135 FORGPREP_NEXT                    R15
      136 FASTCALL2                        TABLE_INSERT R14 R18 ; [+5]
      138 MOVE                             R21 R14
      139 MOVE                             R22 R18
      140 GETIMPORT                        R20 K22 [table.insert]
      142 CALL                             R20 2 0
      143 FORGLOOP                         R15 1 ; [-8]
      145 GETIMPORT                        R15 K37 [table.sort]
      147 MOVE                             R16 R14
      148 CALL                             R15 1 0
      149 LOADK                            R15 K38 [", "]
      150 CALL                             R13 2 1
      151 SETTABLEKS                       R13 R12 K29 ["newLanguages"]
      153 SETTABLEKS                       R9 R12 K30 ["newLanguagesSet"]
      155 CLOSEUPVALS                      R6
      156 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_4]
        4 RETURN                           R2 1
