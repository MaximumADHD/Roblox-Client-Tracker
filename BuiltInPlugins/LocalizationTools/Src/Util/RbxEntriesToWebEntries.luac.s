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
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
        9 MOVE                             R9 R2
       10 MOVE                             R10 R6
       11 GETIMPORT                        R8 K4 [table.insert]
       13 CALL                             R8 2 0
       14 FORGLOOP                         R3 1 ; [-8]
       16 MOVE                             R1 R2
       17 GETIMPORT                        R2 K6 [table.sort]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 RETURN                           R1 1

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
       77 NEWTABLE                         R16 0 0
       79 GETIMPORT                        R17 K35 [pairs]
       81 MOVE                             R18 R7
       82 CALL                             R17 1 3
       83 FORGPREP_NEXT                    R17
       84 FASTCALL2                        TABLE_INSERT R16 R20 ; [+5]
       86 MOVE                             R23 R16
       87 MOVE                             R24 R20
       88 GETIMPORT                        R22 K22 [table.insert]
       90 CALL                             R22 2 0
       91 FORGLOOP                         R17 1 ; [-8]
       93 MOVE                             R15 R16
       94 GETIMPORT                        R16 K37 [table.sort]
       96 MOVE                             R17 R15
       97 CALL                             R16 1 0
       98 MOVE                             R14 R15
       99 LOADK                            R15 K38 [", "]
      100 CALL                             R13 2 1
      101 SETTABLEKS                       R13 R12 K27 ["supportedLocales"]
      103 GETIMPORT                        R13 K33 [table.concat]
      105 NEWTABLE                         R16 0 0
      107 GETIMPORT                        R17 K35 [pairs]
      109 MOVE                             R18 R8
      110 CALL                             R17 1 3
      111 FORGPREP_NEXT                    R17
      112 FASTCALL2                        TABLE_INSERT R16 R20 ; [+5]
      114 MOVE                             R23 R16
      115 MOVE                             R24 R20
      116 GETIMPORT                        R22 K22 [table.insert]
      118 CALL                             R22 2 0
      119 FORGLOOP                         R17 1 ; [-8]
      121 MOVE                             R15 R16
      122 GETIMPORT                        R16 K37 [table.sort]
      124 MOVE                             R17 R15
      125 CALL                             R16 1 0
      126 MOVE                             R14 R15
      127 LOADK                            R15 K38 [", "]
      128 CALL                             R13 2 1
      129 SETTABLEKS                       R13 R12 K28 ["unsupportedLocales"]
      131 GETIMPORT                        R13 K33 [table.concat]
      133 NEWTABLE                         R16 0 0
      135 GETIMPORT                        R17 K35 [pairs]
      137 MOVE                             R18 R9
      138 CALL                             R17 1 3
      139 FORGPREP_NEXT                    R17
      140 FASTCALL2                        TABLE_INSERT R16 R20 ; [+5]
      142 MOVE                             R23 R16
      143 MOVE                             R24 R20
      144 GETIMPORT                        R22 K22 [table.insert]
      146 CALL                             R22 2 0
      147 FORGLOOP                         R17 1 ; [-8]
      149 MOVE                             R15 R16
      150 GETIMPORT                        R16 K37 [table.sort]
      152 MOVE                             R17 R15
      153 CALL                             R16 1 0
      154 MOVE                             R14 R15
      155 LOADK                            R15 K38 [", "]
      156 CALL                             R13 2 1
      157 SETTABLEKS                       R13 R12 K29 ["newLanguages"]
      159 SETTABLEKS                       R9 R12 K30 ["newLanguagesSet"]
      161 CLOSEUPVALS                      R6
      162 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_4]
        4 RETURN                           R2 1
