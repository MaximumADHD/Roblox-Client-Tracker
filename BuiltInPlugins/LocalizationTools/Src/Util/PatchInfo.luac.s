PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+11]
        2 GETTABLE                         R2 R1 R0
        3 JUMPIFEQKNIL                     R2 ; [+8]
        5 GETIMPORT                        R2 K2 [string.gsub]
        7 MOVE                             R3 R0
        8 LOADK                            R4 K3 ["-"]
        9 LOADK                            R5 K4 ["_"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1
       12 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R9 R6 K3 ["identifier"]
        9 GETTABLEKS                       R8 R9 K4 ["key"]
       11 ORK                              R7 R8 K2 [""]
       12 GETTABLEKS                       R10 R6 K3 ["identifier"]
       14 GETTABLEKS                       R9 R10 K5 ["source"]
       16 ORK                              R8 R9 K2 [""]
       17 GETTABLEKS                       R11 R6 K3 ["identifier"]
       19 GETTABLEKS                       R10 R11 K6 ["context"]
       21 ORK                              R9 R10 K2 [""]
       22 GETTABLE                         R10 R1 R7
       23 JUMPIF                           R10 ; [+2]
       24 NEWTABLE                         R10 0 0
       26 SETTABLE                         R10 R1 R7
       27 GETTABLE                         R10 R1 R7
       28 GETTABLE                         R12 R1 R7
       29 GETTABLE                         R11 R12 R8
       30 JUMPIF                           R11 ; [+2]
       31 NEWTABLE                         R11 0 0
       33 SETTABLE                         R11 R10 R8
       34 GETTABLE                         R11 R1 R7
       35 GETTABLE                         R10 R11 R8
       36 GETTABLE                         R14 R1 R7
       37 GETTABLE                         R13 R14 R8
       38 GETTABLE                         R12 R13 R9
       39 OR                               R11 R12 R5
       40 SETTABLE                         R11 R10 R9
       41 FORGLOOP                         R2 2 [inext] ; [-35]
       43 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 GETTABLEKS                       R3 R0 K2 ["translations"]
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 GETTABLEKS                       R7 R6 K3 ["locale"]
       10 GETTABLEKS                       R8 R6 K4 ["translationText"]
       12 SETTABLE                         R8 R1 R7
       13 FORGLOOP                         R2 2 [inext] ; [-6]
       15 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R7 0 0
        2 NEWTABLE                         R8 0 0
        4 NEWTABLE                         R10 0 0
        6 GETIMPORT                        R11 K1 [ipairs]
        8 GETTABLEKS                       R12 R1 K2 ["translations"]
       10 CALL                             R11 1 3
       11 FORGPREP_INEXT                   R11
       12 GETTABLEKS                       R16 R15 K3 ["locale"]
       14 GETTABLEKS                       R17 R15 K4 ["translationText"]
       16 SETTABLE                         R17 R10 R16
       17 FORGLOOP                         R11 2 [inext] ; [-6]
       19 MOVE                             R9 R10
       20 NEWTABLE                         R11 0 0
       22 GETIMPORT                        R12 K1 [ipairs]
       24 GETTABLEKS                       R13 R0 K2 ["translations"]
       26 CALL                             R12 1 3
       27 FORGPREP_INEXT                   R12
       28 GETTABLEKS                       R17 R16 K3 ["locale"]
       30 GETTABLEKS                       R18 R16 K4 ["translationText"]
       32 SETTABLE                         R18 R11 R17
       33 FORGLOOP                         R12 2 [inext] ; [-6]
       35 MOVE                             R10 R11
       36 GETIMPORT                        R11 K1 [ipairs]
       38 GETTABLEKS                       R12 R0 K2 ["translations"]
       40 CALL                             R11 1 3
       41 FORGPREP_INEXT                   R11
       42 GETTABLEKS                       R16 R15 K3 ["locale"]
       44 LOADB                            R17 1
       45 SETTABLE                         R17 R8 R16
       46 GETTABLEKS                       R17 R15 K3 ["locale"]
       48 GETTABLE                         R16 R9 R17
       49 JUMPIFNOTEQKNIL                  R16 ; [+43]
       51 JUMPIFNOT                        R3 ; [+41]
       52 GETTABLEKS                       R17 R15 K3 ["locale"]
       54 JUMPIFEQKNIL                     R5 ; [+12]
       56 GETTABLE                         R18 R5 R17
       57 JUMPIFEQKNIL                     R18 ; [+9]
       59 GETIMPORT                        R18 K7 [string.gsub]
       61 MOVE                             R19 R17
       62 LOADK                            R20 K8 ["-"]
       63 LOADK                            R21 K9 ["_"]
       64 CALL                             R18 3 1
       65 MOVE                             R16 R18
       66 JUMP                             ; [+1]
       67 MOVE                             R16 R17
       68 DUPTABLE                         R19 K11 [{"locale", "translationText", "delete"}]
       69 SETTABLEKS                       R16 R19 K3 ["locale"]
       71 GETTABLEKS                       R20 R15 K4 ["translationText"]
       73 SETTABLEKS                       R20 R19 K4 ["translationText"]
       75 LOADB                            R20 1
       76 SETTABLEKS                       R20 R19 K10 ["delete"]
       78 FASTCALL2                        TABLE_INSERT R7 R19 ; [+4]
       80 MOVE                             R18 R7
       81 GETIMPORT                        R17 K14 [table.insert]
       83 CALL                             R17 2 0
       84 GETTABLEKS                       R18 R2 K16 ["numRemovedTranslations"]
       86 ADDK                             R17 R18 K15 [1]
       87 SETTABLEKS                       R17 R2 K16 ["numRemovedTranslations"]
       89 GETTABLEKS                       R17 R15 K3 ["locale"]
       91 LOADB                            R18 0
       92 SETTABLE                         R18 R8 R17
       93 FORGLOOP                         R11 2 [inext] ; [-52]
       95 NEWTABLE                         R11 0 0
       97 GETIMPORT                        R12 K1 [ipairs]
       99 GETTABLEKS                       R13 R1 K2 ["translations"]
      101 CALL                             R12 1 3
      102 FORGPREP_INEXT                   R12
      103 GETTABLEKS                       R18 R16 K3 ["locale"]
      105 GETTABLE                         R17 R10 R18
      106 JUMPIFNOTEQKNIL                  R17 ; [+21]
      108 JUMPIFEQKNIL                     R5 ; [+19]
      110 GETTABLEKS                       R19 R16 K3 ["locale"]
      112 GETTABLE                         R18 R5 R19
      113 JUMPIFEQKNIL                     R18 ; [+14]
      115 GETTABLEKS                       R19 R16 K3 ["locale"]
      117 GETTABLE                         R18 R5 R19
      118 JUMPIFEQ                         R18 R4 ; [+9]
      120 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
      122 MOVE                             R19 R11
      123 MOVE                             R20 R16
      124 GETIMPORT                        R18 K14 [table.insert]
      126 CALL                             R18 2 0
      127 JUMP                             ; [+53]
      128 GETTABLEKS                       R18 R16 K4 ["translationText"]
      130 JUMPIFEQ                         R17 R18 ; [+50]
      132 DUPTABLE                         R20 K11 [{"locale", "translationText", "delete"}]
      133 GETTABLEKS                       R22 R16 K3 ["locale"]
      135 JUMPIFEQKNIL                     R5 ; [+12]
      137 GETTABLE                         R23 R5 R22
      138 JUMPIFEQKNIL                     R23 ; [+9]
      140 GETIMPORT                        R23 K7 [string.gsub]
      142 MOVE                             R24 R22
      143 LOADK                            R25 K8 ["-"]
      144 LOADK                            R26 K9 ["_"]
      145 CALL                             R23 3 1
      146 MOVE                             R21 R23
      147 JUMP                             ; [+1]
      148 MOVE                             R21 R22
      149 SETTABLEKS                       R21 R20 K3 ["locale"]
      151 GETTABLEKS                       R21 R16 K4 ["translationText"]
      153 SETTABLEKS                       R21 R20 K4 ["translationText"]
      155 LOADB                            R21 0
      156 SETTABLEKS                       R21 R20 K10 ["delete"]
      158 FASTCALL2                        TABLE_INSERT R7 R20 ; [+4]
      160 MOVE                             R19 R7
      161 GETIMPORT                        R18 K14 [table.insert]
      163 CALL                             R18 2 0
      164 GETTABLEKS                       R18 R16 K3 ["locale"]
      166 LOADB                            R19 1
      167 SETTABLE                         R19 R8 R18
      168 JUMPIFEQKNIL                     R17 ; [+7]
      170 GETTABLEKS                       R19 R2 K17 ["numChangedTranslations"]
      172 ADDK                             R18 R19 K15 [1]
      173 SETTABLEKS                       R18 R2 K17 ["numChangedTranslations"]
      175 JUMP                             ; [+5]
      176 GETTABLEKS                       R19 R2 K18 ["numAddedTranslations"]
      178 ADDK                             R18 R19 K15 [1]
      179 SETTABLEKS                       R18 R2 K18 ["numAddedTranslations"]
      181 FORGLOOP                         R12 2 [inext] ; [-79]
      183 GETIMPORT                        R12 K1 [ipairs]
      185 MOVE                             R13 R11
      186 CALL                             R12 1 3
      187 FORGPREP_INEXT                   R12
      188 GETTABLEKS                       R18 R16 K3 ["locale"]
      190 GETTABLE                         R17 R5 R18
      191 GETTABLE                         R18 R8 R17
      192 JUMPIFNOT                        R18 ; [+38]
      193 DUPTABLE                         R20 K11 [{"locale", "translationText", "delete"}]
      194 GETTABLEKS                       R22 R16 K3 ["locale"]
      196 JUMPIFEQKNIL                     R5 ; [+12]
      198 GETTABLE                         R23 R5 R22
      199 JUMPIFEQKNIL                     R23 ; [+9]
      201 GETIMPORT                        R23 K7 [string.gsub]
      203 MOVE                             R24 R22
      204 LOADK                            R25 K8 ["-"]
      205 LOADK                            R26 K9 ["_"]
      206 CALL                             R23 3 1
      207 MOVE                             R21 R23
      208 JUMP                             ; [+1]
      209 MOVE                             R21 R22
      210 SETTABLEKS                       R21 R20 K3 ["locale"]
      212 GETTABLEKS                       R21 R16 K4 ["translationText"]
      214 SETTABLEKS                       R21 R20 K4 ["translationText"]
      216 LOADB                            R21 0
      217 SETTABLEKS                       R21 R20 K10 ["delete"]
      219 FASTCALL2                        TABLE_INSERT R7 R20 ; [+4]
      221 MOVE                             R19 R7
      222 GETIMPORT                        R18 K14 [table.insert]
      224 CALL                             R18 2 0
      225 GETTABLEKS                       R19 R2 K18 ["numAddedTranslations"]
      227 ADDK                             R18 R19 K15 [1]
      228 SETTABLEKS                       R18 R2 K18 ["numAddedTranslations"]
      230 JUMP                             ; [+49]
      231 GETIMPORT                        R18 K20 [warn]
      233 LOADK                            R21 K21 ["UploadDialogContent"]
      234 LOADK                            R22 K22 ["ParentLangaugeTranslationMissing"]
      235 DUPTABLE                         R23 K27 [{"locale", "language", "key", "source", "context"}]
      236 LOADK                            R25 K28 ["\""]
      237 GETTABLEKS                       R26 R16 K3 ["locale"]
      239 LOADK                            R27 K28 ["\""]
      240 CONCAT                           R24 R25 R27
      241 SETTABLEKS                       R24 R23 K3 ["locale"]
      243 LOADK                            R25 K28 ["\""]
      244 MOVE                             R26 R17
      245 LOADK                            R27 K28 ["\""]
      246 CONCAT                           R24 R25 R27
      247 SETTABLEKS                       R24 R23 K23 ["language"]
      249 LOADK                            R25 K28 ["\""]
      250 GETTABLEKS                       R28 R1 K29 ["identifier"]
      252 GETTABLEKS                       R26 R28 K24 ["key"]
      254 LOADK                            R27 K28 ["\""]
      255 CONCAT                           R24 R25 R27
      256 SETTABLEKS                       R24 R23 K24 ["key"]
      258 LOADK                            R25 K28 ["\""]
      259 GETTABLEKS                       R28 R1 K29 ["identifier"]
      261 GETTABLEKS                       R26 R28 K25 ["source"]
      263 LOADK                            R27 K28 ["\""]
      264 CONCAT                           R24 R25 R27
      265 SETTABLEKS                       R24 R23 K25 ["source"]
      267 LOADK                            R25 K28 ["\""]
      268 GETTABLEKS                       R28 R1 K29 ["identifier"]
      270 GETTABLEKS                       R26 R28 K26 ["context"]
      272 LOADK                            R27 K28 ["\""]
      273 CONCAT                           R24 R25 R27
      274 SETTABLEKS                       R24 R23 K26 ["context"]
      276 NAMECALL                         R19 R6 K30 ["getText"]
      278 CALL                             R19 4 -1
      279 CALL                             R18 -1 0
      280 FORGLOOP                         R12 2 [inext] ; [-93]
      282 DUPTABLE                         R12 K32 [{"identifier", "metadata", "translations", "delete"}]
      283 DUPTABLE                         R13 K33 [{"key", "source", "context"}]
      284 GETTABLEKS                       R15 R1 K29 ["identifier"]
      286 GETTABLEKS                       R14 R15 K24 ["key"]
      288 SETTABLEKS                       R14 R13 K24 ["key"]
      290 GETTABLEKS                       R15 R1 K29 ["identifier"]
      292 GETTABLEKS                       R14 R15 K25 ["source"]
      294 SETTABLEKS                       R14 R13 K25 ["source"]
      296 GETTABLEKS                       R15 R1 K29 ["identifier"]
      298 GETTABLEKS                       R14 R15 K26 ["context"]
      300 SETTABLEKS                       R14 R13 K26 ["context"]
      302 SETTABLEKS                       R13 R12 K29 ["identifier"]
      304 GETTABLEKS                       R13 R1 K31 ["metadata"]
      306 SETTABLEKS                       R13 R12 K31 ["metadata"]
      308 SETTABLEKS                       R7 R12 K2 ["translations"]
      310 LOADB                            R13 0
      311 SETTABLEKS                       R13 R12 K10 ["delete"]
      313 RETURN                           R12 1

PROTO_4:
        0 GETTABLEKS                       R6 R1 K1 ["numAddedEntries"]
        2 ADDK                             R5 R6 K0 [1]
        3 SETTABLEKS                       R5 R1 K1 ["numAddedEntries"]
        5 NEWTABLE                         R5 0 0
        7 NEWTABLE                         R6 0 0
        9 NEWTABLE                         R7 0 0
       11 GETIMPORT                        R8 K3 [ipairs]
       13 GETTABLEKS                       R9 R0 K4 ["translations"]
       15 CALL                             R8 1 3
       16 FORGPREP_INEXT                   R8
       17 JUMPIFEQKNIL                     R3 ; [+19]
       19 GETTABLEKS                       R14 R12 K5 ["locale"]
       21 GETTABLE                         R13 R3 R14
       22 JUMPIFEQKNIL                     R13 ; [+14]
       24 GETTABLEKS                       R14 R12 K5 ["locale"]
       26 GETTABLE                         R13 R3 R14
       27 JUMPIFEQ                         R13 R2 ; [+9]
       29 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       31 MOVE                             R14 R6
       32 MOVE                             R15 R12
       33 GETIMPORT                        R13 K8 [table.insert]
       35 CALL                             R13 2 0
       36 JUMP                             ; [+41]
       37 DUPTABLE                         R15 K11 [{"locale", "translationText", "delete"}]
       38 GETTABLEKS                       R17 R12 K5 ["locale"]
       40 JUMPIFEQKNIL                     R3 ; [+12]
       42 GETTABLE                         R18 R3 R17
       43 JUMPIFEQKNIL                     R18 ; [+9]
       45 GETIMPORT                        R18 K14 [string.gsub]
       47 MOVE                             R19 R17
       48 LOADK                            R20 K15 ["-"]
       49 LOADK                            R21 K16 ["_"]
       50 CALL                             R18 3 1
       51 MOVE                             R16 R18
       52 JUMP                             ; [+1]
       53 MOVE                             R16 R17
       54 SETTABLEKS                       R16 R15 K5 ["locale"]
       56 GETTABLEKS                       R16 R12 K9 ["translationText"]
       58 SETTABLEKS                       R16 R15 K9 ["translationText"]
       60 LOADB                            R16 0
       61 SETTABLEKS                       R16 R15 K10 ["delete"]
       63 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       65 MOVE                             R14 R5
       66 GETIMPORT                        R13 K8 [table.insert]
       68 CALL                             R13 2 0
       69 GETTABLEKS                       R14 R1 K17 ["numAddedTranslations"]
       71 ADDK                             R13 R14 K0 [1]
       72 SETTABLEKS                       R13 R1 K17 ["numAddedTranslations"]
       74 GETTABLEKS                       R13 R12 K5 ["locale"]
       76 LOADB                            R14 1
       77 SETTABLE                         R14 R7 R13
       78 FORGLOOP                         R8 2 [inext] ; [-62]
       80 GETIMPORT                        R8 K3 [ipairs]
       82 MOVE                             R9 R6
       83 CALL                             R8 1 3
       84 FORGPREP_INEXT                   R8
       85 GETTABLEKS                       R14 R12 K5 ["locale"]
       87 GETTABLE                         R13 R3 R14
       88 GETTABLE                         R14 R7 R13
       89 JUMPIFNOT                        R14 ; [+38]
       90 DUPTABLE                         R16 K11 [{"locale", "translationText", "delete"}]
       91 GETTABLEKS                       R18 R12 K5 ["locale"]
       93 JUMPIFEQKNIL                     R3 ; [+12]
       95 GETTABLE                         R19 R3 R18
       96 JUMPIFEQKNIL                     R19 ; [+9]
       98 GETIMPORT                        R19 K14 [string.gsub]
      100 MOVE                             R20 R18
      101 LOADK                            R21 K15 ["-"]
      102 LOADK                            R22 K16 ["_"]
      103 CALL                             R19 3 1
      104 MOVE                             R17 R19
      105 JUMP                             ; [+1]
      106 MOVE                             R17 R18
      107 SETTABLEKS                       R17 R16 K5 ["locale"]
      109 GETTABLEKS                       R17 R12 K9 ["translationText"]
      111 SETTABLEKS                       R17 R16 K9 ["translationText"]
      113 LOADB                            R17 0
      114 SETTABLEKS                       R17 R16 K10 ["delete"]
      116 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
      118 MOVE                             R15 R5
      119 GETIMPORT                        R14 K8 [table.insert]
      121 CALL                             R14 2 0
      122 GETTABLEKS                       R15 R1 K17 ["numAddedTranslations"]
      124 ADDK                             R14 R15 K0 [1]
      125 SETTABLEKS                       R14 R1 K17 ["numAddedTranslations"]
      127 JUMP                             ; [+49]
      128 GETIMPORT                        R14 K19 [warn]
      130 LOADK                            R17 K20 ["UploadDialogContent"]
      131 LOADK                            R18 K21 ["ParentLangaugeTranslationMissing"]
      132 DUPTABLE                         R19 K26 [{"locale", "language", "key", "source", "context"}]
      133 LOADK                            R21 K27 ["\""]
      134 GETTABLEKS                       R22 R12 K5 ["locale"]
      136 LOADK                            R23 K27 ["\""]
      137 CONCAT                           R20 R21 R23
      138 SETTABLEKS                       R20 R19 K5 ["locale"]
      140 LOADK                            R21 K27 ["\""]
      141 MOVE                             R22 R13
      142 LOADK                            R23 K27 ["\""]
      143 CONCAT                           R20 R21 R23
      144 SETTABLEKS                       R20 R19 K22 ["language"]
      146 LOADK                            R21 K27 ["\""]
      147 GETTABLEKS                       R24 R0 K28 ["identifier"]
      149 GETTABLEKS                       R22 R24 K23 ["key"]
      151 LOADK                            R23 K27 ["\""]
      152 CONCAT                           R20 R21 R23
      153 SETTABLEKS                       R20 R19 K23 ["key"]
      155 LOADK                            R21 K27 ["\""]
      156 GETTABLEKS                       R24 R0 K28 ["identifier"]
      158 GETTABLEKS                       R22 R24 K24 ["source"]
      160 LOADK                            R23 K27 ["\""]
      161 CONCAT                           R20 R21 R23
      162 SETTABLEKS                       R20 R19 K24 ["source"]
      164 LOADK                            R21 K27 ["\""]
      165 GETTABLEKS                       R24 R0 K28 ["identifier"]
      167 GETTABLEKS                       R22 R24 K25 ["context"]
      169 LOADK                            R23 K27 ["\""]
      170 CONCAT                           R20 R21 R23
      171 SETTABLEKS                       R20 R19 K25 ["context"]
      173 NAMECALL                         R15 R4 K29 ["getText"]
      175 CALL                             R15 4 -1
      176 CALL                             R14 -1 0
      177 FORGLOOP                         R8 2 [inext] ; [-93]
      179 DUPTABLE                         R8 K31 [{"identifier", "metadata", "translations", "delete"}]
      180 DUPTABLE                         R9 K32 [{"key", "source", "context"}]
      181 GETTABLEKS                       R11 R0 K28 ["identifier"]
      183 GETTABLEKS                       R10 R11 K23 ["key"]
      185 SETTABLEKS                       R10 R9 K23 ["key"]
      187 GETTABLEKS                       R11 R0 K28 ["identifier"]
      189 GETTABLEKS                       R10 R11 K24 ["source"]
      191 SETTABLEKS                       R10 R9 K24 ["source"]
      193 GETTABLEKS                       R11 R0 K28 ["identifier"]
      195 GETTABLEKS                       R10 R11 K25 ["context"]
      197 SETTABLEKS                       R10 R9 K25 ["context"]
      199 SETTABLEKS                       R9 R8 K28 ["identifier"]
      201 GETTABLEKS                       R9 R0 K30 ["metadata"]
      203 SETTABLEKS                       R9 R8 K30 ["metadata"]
      205 SETTABLEKS                       R5 R8 K4 ["translations"]
      207 LOADB                            R9 0
      208 SETTABLEKS                       R9 R8 K10 ["delete"]
      210 RETURN                           R8 1

PROTO_5:
        0 GETTABLEKS                       R4 R1 K1 ["numRemovedEntries"]
        2 ADDK                             R3 R4 K0 [1]
        3 SETTABLEKS                       R3 R1 K1 ["numRemovedEntries"]
        5 NEWTABLE                         R3 0 0
        7 GETIMPORT                        R4 K3 [ipairs]
        9 GETTABLEKS                       R5 R0 K4 ["translations"]
       11 CALL                             R4 1 3
       12 FORGPREP_INEXT                   R4
       13 GETTABLEKS                       R10 R8 K5 ["locale"]
       15 JUMPIFEQKNIL                     R2 ; [+12]
       17 GETTABLE                         R11 R2 R10
       18 JUMPIFEQKNIL                     R11 ; [+9]
       20 GETIMPORT                        R11 K8 [string.gsub]
       22 MOVE                             R12 R10
       23 LOADK                            R13 K9 ["-"]
       24 LOADK                            R14 K10 ["_"]
       25 CALL                             R11 3 1
       26 MOVE                             R9 R11
       27 JUMP                             ; [+1]
       28 MOVE                             R9 R10
       29 DUPTABLE                         R12 K13 [{"locale", "translationText", "delete"}]
       30 SETTABLEKS                       R9 R12 K5 ["locale"]
       32 GETTABLEKS                       R13 R8 K11 ["translationText"]
       34 SETTABLEKS                       R13 R12 K11 ["translationText"]
       36 LOADB                            R13 1
       37 SETTABLEKS                       R13 R12 K12 ["delete"]
       39 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       41 MOVE                             R11 R3
       42 GETIMPORT                        R10 K16 [table.insert]
       44 CALL                             R10 2 0
       45 GETTABLEKS                       R11 R1 K17 ["numRemovedTranslations"]
       47 ADDK                             R10 R11 K0 [1]
       48 SETTABLEKS                       R10 R1 K17 ["numRemovedTranslations"]
       50 FORGLOOP                         R4 2 [inext] ; [-38]
       52 DUPTABLE                         R4 K20 [{"identifier", "metadata", "translations", "delete"}]
       53 DUPTABLE                         R5 K24 [{"key", "source", "context"}]
       54 GETTABLEKS                       R7 R0 K18 ["identifier"]
       56 GETTABLEKS                       R6 R7 K21 ["key"]
       58 SETTABLEKS                       R6 R5 K21 ["key"]
       60 GETTABLEKS                       R7 R0 K18 ["identifier"]
       62 GETTABLEKS                       R6 R7 K22 ["source"]
       64 SETTABLEKS                       R6 R5 K22 ["source"]
       66 GETTABLEKS                       R7 R0 K18 ["identifier"]
       68 GETTABLEKS                       R6 R7 K23 ["context"]
       70 SETTABLEKS                       R6 R5 K23 ["context"]
       72 SETTABLEKS                       R5 R4 K18 ["identifier"]
       74 GETTABLEKS                       R5 R0 K19 ["metadata"]
       76 SETTABLEKS                       R5 R4 K19 ["metadata"]
       78 SETTABLEKS                       R3 R4 K4 ["translations"]
       80 LOADB                            R5 1
       81 SETTABLEKS                       R5 R4 K12 ["delete"]
       83 RETURN                           R4 1

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"name", "entries"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["name"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["entries"]
        7 RETURN                           R0 1

PROTO_7:
        0 GETTABLE                         R4 R0 R1
        1 JUMPIFEQKNIL                     R4 ; [+14]
        3 GETTABLE                         R5 R0 R1
        4 GETTABLE                         R4 R5 R2
        5 JUMPIFEQKNIL                     R4 ; [+10]
        7 GETTABLE                         R6 R0 R1
        8 GETTABLE                         R5 R6 R2
        9 GETTABLE                         R4 R5 R3
       10 JUMPIFEQKNIL                     R4 ; [+5]
       12 GETTABLE                         R6 R0 R1
       13 GETTABLE                         R5 R6 R2
       14 GETTABLE                         R4 R5 R3
       15 RETURN                           R4 1
       16 LOADN                            R4 0
       17 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R7 0
        1 MOVE                             R8 R2
        2 CALL                             R7 1 1
        3 GETUPVAL                         R8 0
        4 MOVE                             R9 R1
        5 CALL                             R8 1 1
        6 NEWTABLE                         R9 0 0
        8 DUPTABLE                         R10 K6 [{"numAddedTranslations", "numChangedTranslations", "numRemovedTranslations", "numAddedEntries", "numRemovedEntries", "makePatch"}]
        9 LOADN                            R11 0
       10 SETTABLEKS                       R11 R10 K0 ["numAddedTranslations"]
       12 LOADN                            R11 0
       13 SETTABLEKS                       R11 R10 K1 ["numChangedTranslations"]
       15 LOADN                            R11 0
       16 SETTABLEKS                       R11 R10 K2 ["numRemovedTranslations"]
       18 LOADN                            R11 0
       19 SETTABLEKS                       R11 R10 K3 ["numAddedEntries"]
       21 LOADN                            R11 0
       22 SETTABLEKS                       R11 R10 K4 ["numRemovedEntries"]
       24 NEWCLOSURE                       R11 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R9
       27 SETTABLEKS                       R11 R10 K5 ["makePatch"]
       29 DUPCLOSURE                       R11 K7 [PROTO_7]
       30 GETIMPORT                        R12 K9 [pairs]
       32 MOVE                             R13 R1
       33 CALL                             R12 1 3
       34 FORGPREP_NEXT                    R12
       35 GETTABLEKS                       R19 R16 K10 ["identifier"]
       37 GETTABLEKS                       R18 R19 K11 ["key"]
       39 GETTABLEKS                       R20 R16 K10 ["identifier"]
       41 GETTABLEKS                       R19 R20 K12 ["source"]
       43 GETTABLEKS                       R21 R16 K10 ["identifier"]
       45 GETTABLEKS                       R20 R21 K13 ["context"]
       47 GETTABLE                         R21 R7 R18
       48 JUMPIFEQKNIL                     R21 ; [+14]
       50 GETTABLE                         R22 R7 R18
       51 GETTABLE                         R21 R22 R19
       52 JUMPIFEQKNIL                     R21 ; [+10]
       54 GETTABLE                         R23 R7 R18
       55 GETTABLE                         R22 R23 R19
       56 GETTABLE                         R21 R22 R20
       57 JUMPIFEQKNIL                     R21 ; [+5]
       59 GETTABLE                         R22 R7 R18
       60 GETTABLE                         R21 R22 R19
       61 GETTABLE                         R17 R21 R20
       62 JUMP                             ; [+1]
       63 LOADN                            R17 0
       64 JUMPIFNOTEQKN                    R17 K14 [0] ; [+15]
       66 JUMPIFNOT                        R3 ; [+48]
       67 GETUPVAL                         R18 1
       68 MOVE                             R19 R16
       69 MOVE                             R20 R10
       70 MOVE                             R21 R5
       71 CALL                             R18 3 1
       72 FASTCALL2                        TABLE_INSERT R9 R18 ; [+5]
       74 MOVE                             R20 R9
       75 MOVE                             R21 R18
       76 GETIMPORT                        R19 K17 [table.insert]
       78 CALL                             R19 2 0
       79 JUMP                             ; [+35]
       80 LOADNIL                          R18
       81 GETUPVAL                         R19 2
       82 MOVE                             R20 R16
       83 GETTABLE                         R21 R2 R17
       84 MOVE                             R22 R10
       85 MOVE                             R23 R3
       86 MOVE                             R24 R4
       87 MOVE                             R25 R5
       88 MOVE                             R26 R6
       89 CALL                             R19 7 1
       90 MOVE                             R18 R19
       91 GETIMPORT                        R19 K19 [next]
       93 GETTABLEKS                       R20 R18 K20 ["translations"]
       95 CALL                             R19 1 1
       96 JUMPIFNOTEQKNIL                  R19 ; [+11]
       98 GETTABLEKS                       R20 R18 K21 ["metadata"]
      100 GETTABLEKS                       R19 R20 K22 ["example"]
      102 GETTABLEKS                       R21 R16 K21 ["metadata"]
      104 GETTABLEKS                       R20 R21 K22 ["example"]
      106 JUMPIFEQ                         R19 R20 ; [+8]
      108 FASTCALL2                        TABLE_INSERT R9 R18 ; [+5]
      110 MOVE                             R20 R9
      111 MOVE                             R21 R18
      112 GETIMPORT                        R19 K17 [table.insert]
      114 CALL                             R19 2 0
      115 FORGLOOP                         R12 2 ; [-81]
      117 GETIMPORT                        R12 K9 [pairs]
      119 MOVE                             R13 R2
      120 CALL                             R12 1 3
      121 FORGPREP_NEXT                    R12
      122 GETTABLEKS                       R19 R16 K10 ["identifier"]
      124 GETTABLEKS                       R18 R19 K11 ["key"]
      126 GETTABLEKS                       R20 R16 K10 ["identifier"]
      128 GETTABLEKS                       R19 R20 K12 ["source"]
      130 GETTABLEKS                       R21 R16 K10 ["identifier"]
      132 GETTABLEKS                       R20 R21 K13 ["context"]
      134 GETTABLE                         R21 R8 R18
      135 JUMPIFEQKNIL                     R21 ; [+14]
      137 GETTABLE                         R22 R8 R18
      138 GETTABLE                         R21 R22 R19
      139 JUMPIFEQKNIL                     R21 ; [+10]
      141 GETTABLE                         R23 R8 R18
      142 GETTABLE                         R22 R23 R19
      143 GETTABLE                         R21 R22 R20
      144 JUMPIFEQKNIL                     R21 ; [+5]
      146 GETTABLE                         R22 R8 R18
      147 GETTABLE                         R21 R22 R19
      148 GETTABLE                         R17 R21 R20
      149 JUMP                             ; [+1]
      150 LOADN                            R17 0
      151 JUMPIFNOTEQKN                    R17 K14 [0] ; [+15]
      153 GETUPVAL                         R18 3
      154 MOVE                             R19 R16
      155 MOVE                             R20 R10
      156 MOVE                             R21 R4
      157 MOVE                             R22 R5
      158 MOVE                             R23 R6
      159 CALL                             R18 5 1
      160 FASTCALL2                        TABLE_INSERT R9 R18 ; [+5]
      162 MOVE                             R20 R9
      163 MOVE                             R21 R18
      164 GETIMPORT                        R19 K17 [table.insert]
      166 CALL                             R19 2 0
      167 FORGLOOP                         R12 2 ; [-46]
      169 RETURN                           R10 1

PROTO_9:
        0 DUPTABLE                         R1 K4 [{"identifier", "metadata", "translations", "delete"}]
        1 DUPTABLE                         R2 K8 [{"key", "source", "context"}]
        2 GETTABLEKS                       R4 R0 K0 ["identifier"]
        4 GETTABLEKS                       R3 R4 K5 ["key"]
        6 SETTABLEKS                       R3 R2 K5 ["key"]
        8 GETTABLEKS                       R4 R0 K0 ["identifier"]
       10 GETTABLEKS                       R3 R4 K6 ["source"]
       12 SETTABLEKS                       R3 R2 K6 ["source"]
       14 GETTABLEKS                       R4 R0 K0 ["identifier"]
       16 GETTABLEKS                       R3 R4 K7 ["context"]
       18 SETTABLEKS                       R3 R2 K7 ["context"]
       20 SETTABLEKS                       R2 R1 K0 ["identifier"]
       22 DUPTABLE                         R2 K10 [{"example"}]
       23 GETTABLEKS                       R3 R0 K1 ["metadata"]
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETTABLEKS                       R4 R0 K1 ["metadata"]
       28 GETTABLEKS                       R3 R4 K9 ["example"]
       30 SETTABLEKS                       R3 R2 K9 ["example"]
       32 SETTABLEKS                       R2 R1 K1 ["metadata"]
       34 NEWTABLE                         R2 0 0
       36 SETTABLEKS                       R2 R1 K2 ["translations"]
       38 GETTABLEKS                       R2 R0 K3 ["delete"]
       40 SETTABLEKS                       R2 R1 K3 ["delete"]
       42 RETURN                           R1 1

PROTO_10:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

PROTO_11:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 ADDK                             R0 R1 K0 [1]
        4 SETUPVAL                         R0 1
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 JUMPIFNOTLE                      R1 R0 ; [+3]
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 3
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+22]
        2 DUPTABLE                         R1 K2 [{"name", "entries"}]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["name"]
        6 SETTABLEKS                       R2 R1 K0 ["name"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K1 ["entries"]
       12 SETUPVAL                         R1 0
       13 LOADN                            R1 0
       14 SETUPVAL                         R1 2
       15 LOADN                            R1 0
       16 SETUPVAL                         R1 3
       17 GETUPVAL                         R2 4
       18 GETUPVAL                         R3 0
       19 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       21 GETIMPORT                        R1 K5 [table.insert]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 5
       25 JUMPIF                           R1 ; [+13]
       26 GETUPVAL                         R1 6
       27 MOVE                             R2 R0
       28 CALL                             R1 1 1
       29 SETUPVAL                         R1 5
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K1 ["entries"]
       33 GETUPVAL                         R3 5
       34 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       36 GETIMPORT                        R1 K5 [table.insert]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R3 0 0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 NEWCLOSURE                       R8 P0
        7 CAPTURE                          REF R4
        8 CAPTURE                          REF R5
        9 NEWCLOSURE                       R9 P1
       10 CAPTURE                          REF R5
       11 CAPTURE                          REF R7
       12 CAPTURE                          VAL R1
       13 CAPTURE                          REF R4
       14 NEWCLOSURE                       R10 P2
       15 CAPTURE                          REF R4
       16 CAPTURE                          VAL R0
       17 CAPTURE                          REF R6
       18 CAPTURE                          REF R7
       19 CAPTURE                          VAL R3
       20 CAPTURE                          REF R5
       21 CAPTURE                          UPVAL U0
       22 GETIMPORT                        R11 K1 [ipairs]
       24 GETTABLEKS                       R12 R0 K2 ["entries"]
       26 CALL                             R11 1 3
       27 FORGPREP_INEXT                   R11
       28 GETTABLEKS                       R16 R15 K3 ["translations"]
       30 JUMPIFNOT                        R16 ; [+32]
       31 MOVE                             R16 R10
       32 MOVE                             R17 R15
       33 CALL                             R16 1 0
       34 GETIMPORT                        R16 K1 [ipairs]
       36 GETTABLEKS                       R17 R15 K3 ["translations"]
       38 CALL                             R16 1 3
       39 FORGPREP_INEXT                   R16
       40 MOVE                             R21 R10
       41 MOVE                             R22 R15
       42 CALL                             R21 1 0
       43 GETTABLEKS                       R22 R5 K3 ["translations"]
       45 FASTCALL2                        TABLE_INSERT R22 R20 ; [+4]
       47 MOVE                             R23 R20
       48 GETIMPORT                        R21 K6 [table.insert]
       50 CALL                             R21 2 0
       51 ADDK                             R6 R6 K7 [1]
       52 JUMPIFNOTLE                      R2 R6 ; [+3]
       54 LOADNIL                          R4
       55 LOADNIL                          R5
       56 FORGLOOP                         R16 2 [inext] ; [-17]
       58 LOADNIL                          R5
       59 ADDK                             R7 R7 K7 [1]
       60 JUMPIFNOTLE                      R1 R7 ; [+2]
       62 LOADNIL                          R4
       63 FORGLOOP                         R11 2 [inext] ; [-36]
       65 CLOSEUPVALS                      R4
       66 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPCLOSURE                       R3 K3 [PROTO_3]
        5 DUPCLOSURE                       R4 K4 [PROTO_4]
        6 DUPCLOSURE                       R5 K5 [PROTO_5]
        7 DUPCLOSURE                       R6 K6 [PROTO_8]
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R5
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R4
       12 DUPCLOSURE                       R7 K7 [PROTO_9]
       13 DUPCLOSURE                       R8 K8 [PROTO_13]
       14 CAPTURE                          VAL R7
       15 DUPTABLE                         R9 K12 [{"MakePatchEntryToChangeRow", "DiffTables", "SplitByLimits"}]
       16 SETTABLEKS                       R3 R9 K9 ["MakePatchEntryToChangeRow"]
       18 SETTABLEKS                       R6 R9 K10 ["DiffTables"]
       20 SETTABLEKS                       R8 R9 K11 ["SplitByLimits"]
       22 RETURN                           R9 1
