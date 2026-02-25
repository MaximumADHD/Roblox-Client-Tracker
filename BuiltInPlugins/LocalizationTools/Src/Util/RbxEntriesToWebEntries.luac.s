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
       30 DUPTABLE                         R20 K7 [{"identifier", "metadata", "translations", "delete"}]
       31 DUPTABLE                         R21 K11 [{"key", "context", "source"}]
       32 GETTABLEKS                       R23 R16 K13 ["Key"]
       34 ORK                              R22 R23 K12 [""]
       35 SETTABLEKS                       R22 R21 K8 ["key"]
       37 GETTABLEKS                       R23 R16 K14 ["Context"]
       39 ORK                              R22 R23 K12 [""]
       40 SETTABLEKS                       R22 R21 K9 ["context"]
       42 GETTABLEKS                       R23 R16 K15 ["Source"]
       44 ORK                              R22 R23 K12 [""]
       45 SETTABLEKS                       R22 R21 K10 ["source"]
       47 SETTABLEKS                       R21 R20 K3 ["identifier"]
       49 DUPTABLE                         R21 K17 [{"example"}]
       50 GETTABLEKS                       R23 R16 K18 ["Example"]
       52 ORK                              R22 R23 K12 [""]
       53 SETTABLEKS                       R22 R21 K16 ["example"]
       55 SETTABLEKS                       R21 R20 K4 ["metadata"]
       57 SETTABLEKS                       R17 R20 K5 ["translations"]
       59 LOADB                            R21 0
       60 SETTABLEKS                       R21 R20 K6 ["delete"]
       62 FASTCALL2                        TABLE_INSERT R4 R20 ; [+4]
       64 MOVE                             R19 R4
       65 GETIMPORT                        R18 K21 [table.insert]
       67 CALL                             R18 2 0
       68 ADDK                             R5 R5 K22 [1]
       69 FORGLOOP                         R12 2 [inext] ; [-44]
       71 DUPTABLE                         R12 K30 [{"entries", "totalRows", "totalTranslations", "supportedLocales", "unsupportedLocales", "newLanguages", "newLanguagesSet"}]
       72 SETTABLEKS                       R4 R12 K23 ["entries"]
       74 SETTABLEKS                       R5 R12 K24 ["totalRows"]
       76 SETTABLEKS                       R6 R12 K25 ["totalTranslations"]
       78 GETIMPORT                        R13 K32 [table.concat]
       80 NEWTABLE                         R16 0 0
       82 GETIMPORT                        R17 K34 [pairs]
       84 MOVE                             R18 R7
       85 CALL                             R17 1 3
       86 FORGPREP_NEXT                    R17
       87 FASTCALL2                        TABLE_INSERT R16 R20 ; [+5]
       89 MOVE                             R23 R16
       90 MOVE                             R24 R20
       91 GETIMPORT                        R22 K21 [table.insert]
       93 CALL                             R22 2 0
       94 FORGLOOP                         R17 1 ; [-8]
       96 MOVE                             R15 R16
       97 GETIMPORT                        R16 K36 [table.sort]
       99 MOVE                             R17 R15
      100 CALL                             R16 1 0
      101 MOVE                             R14 R15
      102 LOADK                            R15 K37 [", "]
      103 CALL                             R13 2 1
      104 SETTABLEKS                       R13 R12 K26 ["supportedLocales"]
      106 GETIMPORT                        R13 K32 [table.concat]
      108 NEWTABLE                         R16 0 0
      110 GETIMPORT                        R17 K34 [pairs]
      112 MOVE                             R18 R8
      113 CALL                             R17 1 3
      114 FORGPREP_NEXT                    R17
      115 FASTCALL2                        TABLE_INSERT R16 R20 ; [+5]
      117 MOVE                             R23 R16
      118 MOVE                             R24 R20
      119 GETIMPORT                        R22 K21 [table.insert]
      121 CALL                             R22 2 0
      122 FORGLOOP                         R17 1 ; [-8]
      124 MOVE                             R15 R16
      125 GETIMPORT                        R16 K36 [table.sort]
      127 MOVE                             R17 R15
      128 CALL                             R16 1 0
      129 MOVE                             R14 R15
      130 LOADK                            R15 K37 [", "]
      131 CALL                             R13 2 1
      132 SETTABLEKS                       R13 R12 K27 ["unsupportedLocales"]
      134 GETIMPORT                        R13 K32 [table.concat]
      136 NEWTABLE                         R16 0 0
      138 GETIMPORT                        R17 K34 [pairs]
      140 MOVE                             R18 R9
      141 CALL                             R17 1 3
      142 FORGPREP_NEXT                    R17
      143 FASTCALL2                        TABLE_INSERT R16 R20 ; [+5]
      145 MOVE                             R23 R16
      146 MOVE                             R24 R20
      147 GETIMPORT                        R22 K21 [table.insert]
      149 CALL                             R22 2 0
      150 FORGLOOP                         R17 1 ; [-8]
      152 MOVE                             R15 R16
      153 GETIMPORT                        R16 K36 [table.sort]
      155 MOVE                             R17 R15
      156 CALL                             R16 1 0
      157 MOVE                             R14 R15
      158 LOADK                            R15 K37 [", "]
      159 CALL                             R13 2 1
      160 SETTABLEKS                       R13 R12 K28 ["newLanguages"]
      162 SETTABLEKS                       R9 R12 K29 ["newLanguagesSet"]
      164 CLOSEUPVALS                      R6
      165 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_4]
        4 RETURN                           R2 1
