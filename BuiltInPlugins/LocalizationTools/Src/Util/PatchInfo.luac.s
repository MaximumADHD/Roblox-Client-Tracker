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
        7 GETTABLEKS                       R8 R6 K3 ["identifier"]
        9 GETTABLEKS                       R8 R8 K4 ["key"]
       11 ORK                              R7 R8 K2 [""]
       12 GETTABLEKS                       R9 R6 K3 ["identifier"]
       14 GETTABLEKS                       R9 R9 K5 ["source"]
       16 ORK                              R8 R9 K2 [""]
       17 GETTABLEKS                       R10 R6 K3 ["identifier"]
       19 GETTABLEKS                       R10 R10 K6 ["context"]
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
       49 JUMPIFNOTEQKNIL                  R16 ; [+40]
       51 JUMPIFNOT                        R3 ; [+38]
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
       68 DUPTABLE                         R19 K12 [{["locale"], ["translationText"], ["delete"] = True}]
       69 SETTABLEKS                       R16 R19 K3 ["locale"]
       71 GETTABLEKS                       R20 R15 K4 ["translationText"]
       73 SETTABLEKS                       R20 R19 K4 ["translationText"]
       75 FASTCALL2                        TABLE_INSERT R7 R19 ; [+4]
       77 MOVE                             R18 R7
       78 GETIMPORT                        R17 K15 [table.insert]
       80 CALL                             R17 2 0
       81 GETTABLEKS                       R18 R2 K17 ["numRemovedTranslations"]
       83 ADDK                             R17 R18 K16 [1]
       84 SETTABLEKS                       R17 R2 K17 ["numRemovedTranslations"]
       86 GETTABLEKS                       R17 R15 K3 ["locale"]
       88 LOADB                            R18 0
       89 SETTABLE                         R18 R8 R17
       90 FORGLOOP                         R11 2 [inext] ; [-49]
       92 NEWTABLE                         R11 0 0
       94 GETIMPORT                        R12 K1 [ipairs]
       96 GETTABLEKS                       R13 R1 K2 ["translations"]
       98 CALL                             R12 1 3
       99 FORGPREP_INEXT                   R12
      100 GETTABLEKS                       R18 R16 K3 ["locale"]
      102 GETTABLE                         R17 R10 R18
      103 JUMPIFNOTEQKNIL                  R17 ; [+21]
      105 JUMPIFEQKNIL                     R5 ; [+19]
      107 GETTABLEKS                       R19 R16 K3 ["locale"]
      109 GETTABLE                         R18 R5 R19
      110 JUMPIFEQKNIL                     R18 ; [+14]
      112 GETTABLEKS                       R19 R16 K3 ["locale"]
      114 GETTABLE                         R18 R5 R19
      115 JUMPIFEQ                         R18 R4 ; [+9]
      117 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
      119 MOVE                             R19 R11
      120 MOVE                             R20 R16
      121 GETIMPORT                        R18 K15 [table.insert]
      123 CALL                             R18 2 0
      124 JUMP                             ; [+50]
      125 GETTABLEKS                       R18 R16 K4 ["translationText"]
      127 JUMPIFEQ                         R17 R18 ; [+47]
      129 DUPTABLE                         R20 K19 [{["locale"], ["translationText"], ["delete"] = False}]
      130 GETTABLEKS                       R22 R16 K3 ["locale"]
      132 JUMPIFEQKNIL                     R5 ; [+12]
      134 GETTABLE                         R23 R5 R22
      135 JUMPIFEQKNIL                     R23 ; [+9]
      137 GETIMPORT                        R23 K7 [string.gsub]
      139 MOVE                             R24 R22
      140 LOADK                            R25 K8 ["-"]
      141 LOADK                            R26 K9 ["_"]
      142 CALL                             R23 3 1
      143 MOVE                             R21 R23
      144 JUMP                             ; [+1]
      145 MOVE                             R21 R22
      146 SETTABLEKS                       R21 R20 K3 ["locale"]
      148 GETTABLEKS                       R21 R16 K4 ["translationText"]
      150 SETTABLEKS                       R21 R20 K4 ["translationText"]
      152 FASTCALL2                        TABLE_INSERT R7 R20 ; [+4]
      154 MOVE                             R19 R7
      155 GETIMPORT                        R18 K15 [table.insert]
      157 CALL                             R18 2 0
      158 GETTABLEKS                       R18 R16 K3 ["locale"]
      160 LOADB                            R19 1
      161 SETTABLE                         R19 R8 R18
      162 JUMPIFEQKNIL                     R17 ; [+7]
      164 GETTABLEKS                       R19 R2 K20 ["numChangedTranslations"]
      166 ADDK                             R18 R19 K16 [1]
      167 SETTABLEKS                       R18 R2 K20 ["numChangedTranslations"]
      169 JUMP                             ; [+5]
      170 GETTABLEKS                       R19 R2 K21 ["numAddedTranslations"]
      172 ADDK                             R18 R19 K16 [1]
      173 SETTABLEKS                       R18 R2 K21 ["numAddedTranslations"]
      175 FORGLOOP                         R12 2 [inext] ; [-76]
      177 GETIMPORT                        R12 K1 [ipairs]
      179 MOVE                             R13 R11
      180 CALL                             R12 1 3
      181 FORGPREP_INEXT                   R12
      182 GETTABLEKS                       R18 R16 K3 ["locale"]
      184 GETTABLE                         R17 R5 R18
      185 GETTABLE                         R18 R8 R17
      186 JUMPIFNOT                        R18 ; [+35]
      187 DUPTABLE                         R20 K19 [{["locale"], ["translationText"], ["delete"] = False}]
      188 GETTABLEKS                       R22 R16 K3 ["locale"]
      190 JUMPIFEQKNIL                     R5 ; [+12]
      192 GETTABLE                         R23 R5 R22
      193 JUMPIFEQKNIL                     R23 ; [+9]
      195 GETIMPORT                        R23 K7 [string.gsub]
      197 MOVE                             R24 R22
      198 LOADK                            R25 K8 ["-"]
      199 LOADK                            R26 K9 ["_"]
      200 CALL                             R23 3 1
      201 MOVE                             R21 R23
      202 JUMP                             ; [+1]
      203 MOVE                             R21 R22
      204 SETTABLEKS                       R21 R20 K3 ["locale"]
      206 GETTABLEKS                       R21 R16 K4 ["translationText"]
      208 SETTABLEKS                       R21 R20 K4 ["translationText"]
      210 FASTCALL2                        TABLE_INSERT R7 R20 ; [+4]
      212 MOVE                             R19 R7
      213 GETIMPORT                        R18 K15 [table.insert]
      215 CALL                             R18 2 0
      216 GETTABLEKS                       R19 R2 K21 ["numAddedTranslations"]
      218 ADDK                             R18 R19 K16 [1]
      219 SETTABLEKS                       R18 R2 K21 ["numAddedTranslations"]
      221 JUMP                             ; [+49]
      222 GETIMPORT                        R18 K23 [warn]
      224 LOADK                            R21 K24 ["UploadDialogContent"]
      225 LOADK                            R22 K25 ["ParentLangaugeTranslationMissing"]
      226 DUPTABLE                         R23 K30 [{"locale", "language", "key", "source", "context"}]
      227 LOADK                            R25 K31 ["\""]
      228 GETTABLEKS                       R26 R16 K3 ["locale"]
      230 LOADK                            R27 K31 ["\""]
      231 CONCAT                           R24 R25 R27
      232 SETTABLEKS                       R24 R23 K3 ["locale"]
      234 LOADK                            R25 K31 ["\""]
      235 MOVE                             R26 R17
      236 LOADK                            R27 K31 ["\""]
      237 CONCAT                           R24 R25 R27
      238 SETTABLEKS                       R24 R23 K26 ["language"]
      240 LOADK                            R25 K31 ["\""]
      241 GETTABLEKS                       R26 R1 K32 ["identifier"]
      243 GETTABLEKS                       R26 R26 K27 ["key"]
      245 LOADK                            R27 K31 ["\""]
      246 CONCAT                           R24 R25 R27
      247 SETTABLEKS                       R24 R23 K27 ["key"]
      249 LOADK                            R25 K31 ["\""]
      250 GETTABLEKS                       R26 R1 K32 ["identifier"]
      252 GETTABLEKS                       R26 R26 K28 ["source"]
      254 LOADK                            R27 K31 ["\""]
      255 CONCAT                           R24 R25 R27
      256 SETTABLEKS                       R24 R23 K28 ["source"]
      258 LOADK                            R25 K31 ["\""]
      259 GETTABLEKS                       R26 R1 K32 ["identifier"]
      261 GETTABLEKS                       R26 R26 K29 ["context"]
      263 LOADK                            R27 K31 ["\""]
      264 CONCAT                           R24 R25 R27
      265 SETTABLEKS                       R24 R23 K29 ["context"]
      267 NAMECALL                         R19 R6 K33 ["getText"]
      269 CALL                             R19 4 -1
      270 CALL                             R18 -1 0
      271 FORGLOOP                         R12 2 [inext] ; [-90]
      273 DUPTABLE                         R12 K35 [{["identifier"], ["metadata"], ["translations"], ["delete"] = False}]
      274 DUPTABLE                         R13 K36 [{"key", "source", "context"}]
      275 GETTABLEKS                       R14 R1 K32 ["identifier"]
      277 GETTABLEKS                       R14 R14 K27 ["key"]
      279 SETTABLEKS                       R14 R13 K27 ["key"]
      281 GETTABLEKS                       R14 R1 K32 ["identifier"]
      283 GETTABLEKS                       R14 R14 K28 ["source"]
      285 SETTABLEKS                       R14 R13 K28 ["source"]
      287 GETTABLEKS                       R14 R1 K32 ["identifier"]
      289 GETTABLEKS                       R14 R14 K29 ["context"]
      291 SETTABLEKS                       R14 R13 K29 ["context"]
      293 SETTABLEKS                       R13 R12 K32 ["identifier"]
      295 GETTABLEKS                       R13 R1 K34 ["metadata"]
      297 SETTABLEKS                       R13 R12 K34 ["metadata"]
      299 SETTABLEKS                       R7 R12 K2 ["translations"]
      301 RETURN                           R12 1

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
       36 JUMP                             ; [+38]
       37 DUPTABLE                         R15 K12 [{["locale"], ["translationText"], ["delete"] = False}]
       38 GETTABLEKS                       R17 R12 K5 ["locale"]
       40 JUMPIFEQKNIL                     R3 ; [+12]
       42 GETTABLE                         R18 R3 R17
       43 JUMPIFEQKNIL                     R18 ; [+9]
       45 GETIMPORT                        R18 K15 [string.gsub]
       47 MOVE                             R19 R17
       48 LOADK                            R20 K16 ["-"]
       49 LOADK                            R21 K17 ["_"]
       50 CALL                             R18 3 1
       51 MOVE                             R16 R18
       52 JUMP                             ; [+1]
       53 MOVE                             R16 R17
       54 SETTABLEKS                       R16 R15 K5 ["locale"]
       56 GETTABLEKS                       R16 R12 K9 ["translationText"]
       58 SETTABLEKS                       R16 R15 K9 ["translationText"]
       60 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       62 MOVE                             R14 R5
       63 GETIMPORT                        R13 K8 [table.insert]
       65 CALL                             R13 2 0
       66 GETTABLEKS                       R14 R1 K18 ["numAddedTranslations"]
       68 ADDK                             R13 R14 K0 [1]
       69 SETTABLEKS                       R13 R1 K18 ["numAddedTranslations"]
       71 GETTABLEKS                       R13 R12 K5 ["locale"]
       73 LOADB                            R14 1
       74 SETTABLE                         R14 R7 R13
       75 FORGLOOP                         R8 2 [inext] ; [-59]
       77 GETIMPORT                        R8 K3 [ipairs]
       79 MOVE                             R9 R6
       80 CALL                             R8 1 3
       81 FORGPREP_INEXT                   R8
       82 GETTABLEKS                       R14 R12 K5 ["locale"]
       84 GETTABLE                         R13 R3 R14
       85 GETTABLE                         R14 R7 R13
       86 JUMPIFNOT                        R14 ; [+35]
       87 DUPTABLE                         R16 K12 [{["locale"], ["translationText"], ["delete"] = False}]
       88 GETTABLEKS                       R18 R12 K5 ["locale"]
       90 JUMPIFEQKNIL                     R3 ; [+12]
       92 GETTABLE                         R19 R3 R18
       93 JUMPIFEQKNIL                     R19 ; [+9]
       95 GETIMPORT                        R19 K15 [string.gsub]
       97 MOVE                             R20 R18
       98 LOADK                            R21 K16 ["-"]
       99 LOADK                            R22 K17 ["_"]
      100 CALL                             R19 3 1
      101 MOVE                             R17 R19
      102 JUMP                             ; [+1]
      103 MOVE                             R17 R18
      104 SETTABLEKS                       R17 R16 K5 ["locale"]
      106 GETTABLEKS                       R17 R12 K9 ["translationText"]
      108 SETTABLEKS                       R17 R16 K9 ["translationText"]
      110 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
      112 MOVE                             R15 R5
      113 GETIMPORT                        R14 K8 [table.insert]
      115 CALL                             R14 2 0
      116 GETTABLEKS                       R15 R1 K18 ["numAddedTranslations"]
      118 ADDK                             R14 R15 K0 [1]
      119 SETTABLEKS                       R14 R1 K18 ["numAddedTranslations"]
      121 JUMP                             ; [+49]
      122 GETIMPORT                        R14 K20 [warn]
      124 LOADK                            R17 K21 ["UploadDialogContent"]
      125 LOADK                            R18 K22 ["ParentLangaugeTranslationMissing"]
      126 DUPTABLE                         R19 K27 [{"locale", "language", "key", "source", "context"}]
      127 LOADK                            R21 K28 ["\""]
      128 GETTABLEKS                       R22 R12 K5 ["locale"]
      130 LOADK                            R23 K28 ["\""]
      131 CONCAT                           R20 R21 R23
      132 SETTABLEKS                       R20 R19 K5 ["locale"]
      134 LOADK                            R21 K28 ["\""]
      135 MOVE                             R22 R13
      136 LOADK                            R23 K28 ["\""]
      137 CONCAT                           R20 R21 R23
      138 SETTABLEKS                       R20 R19 K23 ["language"]
      140 LOADK                            R21 K28 ["\""]
      141 GETTABLEKS                       R22 R0 K29 ["identifier"]
      143 GETTABLEKS                       R22 R22 K24 ["key"]
      145 LOADK                            R23 K28 ["\""]
      146 CONCAT                           R20 R21 R23
      147 SETTABLEKS                       R20 R19 K24 ["key"]
      149 LOADK                            R21 K28 ["\""]
      150 GETTABLEKS                       R22 R0 K29 ["identifier"]
      152 GETTABLEKS                       R22 R22 K25 ["source"]
      154 LOADK                            R23 K28 ["\""]
      155 CONCAT                           R20 R21 R23
      156 SETTABLEKS                       R20 R19 K25 ["source"]
      158 LOADK                            R21 K28 ["\""]
      159 GETTABLEKS                       R22 R0 K29 ["identifier"]
      161 GETTABLEKS                       R22 R22 K26 ["context"]
      163 LOADK                            R23 K28 ["\""]
      164 CONCAT                           R20 R21 R23
      165 SETTABLEKS                       R20 R19 K26 ["context"]
      167 NAMECALL                         R15 R4 K30 ["getText"]
      169 CALL                             R15 4 -1
      170 CALL                             R14 -1 0
      171 FORGLOOP                         R8 2 [inext] ; [-90]
      173 DUPTABLE                         R8 K32 [{["identifier"], ["metadata"], ["translations"], ["delete"] = False}]
      174 DUPTABLE                         R9 K33 [{"key", "source", "context"}]
      175 GETTABLEKS                       R10 R0 K29 ["identifier"]
      177 GETTABLEKS                       R10 R10 K24 ["key"]
      179 SETTABLEKS                       R10 R9 K24 ["key"]
      181 GETTABLEKS                       R10 R0 K29 ["identifier"]
      183 GETTABLEKS                       R10 R10 K25 ["source"]
      185 SETTABLEKS                       R10 R9 K25 ["source"]
      187 GETTABLEKS                       R10 R0 K29 ["identifier"]
      189 GETTABLEKS                       R10 R10 K26 ["context"]
      191 SETTABLEKS                       R10 R9 K26 ["context"]
      193 SETTABLEKS                       R9 R8 K29 ["identifier"]
      195 GETTABLEKS                       R9 R0 K31 ["metadata"]
      197 SETTABLEKS                       R9 R8 K31 ["metadata"]
      199 SETTABLEKS                       R5 R8 K4 ["translations"]
      201 RETURN                           R8 1

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
       29 DUPTABLE                         R12 K14 [{["locale"], ["translationText"], ["delete"] = True}]
       30 SETTABLEKS                       R9 R12 K5 ["locale"]
       32 GETTABLEKS                       R13 R8 K11 ["translationText"]
       34 SETTABLEKS                       R13 R12 K11 ["translationText"]
       36 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       38 MOVE                             R11 R3
       39 GETIMPORT                        R10 K17 [table.insert]
       41 CALL                             R10 2 0
       42 GETTABLEKS                       R11 R1 K18 ["numRemovedTranslations"]
       44 ADDK                             R10 R11 K0 [1]
       45 SETTABLEKS                       R10 R1 K18 ["numRemovedTranslations"]
       47 FORGLOOP                         R4 2 [inext] ; [-35]
       49 DUPTABLE                         R4 K21 [{["identifier"], ["metadata"], ["translations"], ["delete"] = True}]
       50 DUPTABLE                         R5 K25 [{"key", "source", "context"}]
       51 GETTABLEKS                       R6 R0 K19 ["identifier"]
       53 GETTABLEKS                       R6 R6 K22 ["key"]
       55 SETTABLEKS                       R6 R5 K22 ["key"]
       57 GETTABLEKS                       R6 R0 K19 ["identifier"]
       59 GETTABLEKS                       R6 R6 K23 ["source"]
       61 SETTABLEKS                       R6 R5 K23 ["source"]
       63 GETTABLEKS                       R6 R0 K19 ["identifier"]
       65 GETTABLEKS                       R6 R6 K24 ["context"]
       67 SETTABLEKS                       R6 R5 K24 ["context"]
       69 SETTABLEKS                       R5 R4 K19 ["identifier"]
       71 GETTABLEKS                       R5 R0 K20 ["metadata"]
       73 SETTABLEKS                       R5 R4 K20 ["metadata"]
       75 SETTABLEKS                       R3 R4 K4 ["translations"]
       77 RETURN                           R4 1

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
        8 DUPTABLE                         R10 K7 [{[1] = 0, ["numChangedTranslations"] = 0, ["numRemovedTranslations"] = 0, ["numAddedEntries"] = 0, ["numRemovedEntries"] = 0, ["makePatch"]}]
        9 NEWCLOSURE                       R11 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R9
       12 SETTABLEKS                       R11 R10 K6 ["makePatch"]
       14 DUPCLOSURE                       R11 K8 [PROTO_7]
       15 GETIMPORT                        R12 K10 [pairs]
       17 MOVE                             R13 R1
       18 CALL                             R12 1 3
       19 FORGPREP_NEXT                    R12
       20 GETTABLEKS                       R18 R16 K11 ["identifier"]
       22 GETTABLEKS                       R18 R18 K12 ["key"]
       24 GETTABLEKS                       R19 R16 K11 ["identifier"]
       26 GETTABLEKS                       R19 R19 K13 ["source"]
       28 GETTABLEKS                       R20 R16 K11 ["identifier"]
       30 GETTABLEKS                       R20 R20 K14 ["context"]
       32 GETTABLE                         R21 R7 R18
       33 JUMPIFEQKNIL                     R21 ; [+14]
       35 GETTABLE                         R22 R7 R18
       36 GETTABLE                         R21 R22 R19
       37 JUMPIFEQKNIL                     R21 ; [+10]
       39 GETTABLE                         R23 R7 R18
       40 GETTABLE                         R22 R23 R19
       41 GETTABLE                         R21 R22 R20
       42 JUMPIFEQKNIL                     R21 ; [+5]
       44 GETTABLE                         R22 R7 R18
       45 GETTABLE                         R21 R22 R19
       46 GETTABLE                         R17 R21 R20
       47 JUMP                             ; [+1]
       48 LOADN                            R17 0
       49 JUMPIFNOTEQKN                    R17 K1 [0] ; [+15]
       51 JUMPIFNOT                        R3 ; [+48]
       52 GETUPVAL                         R18 1
       53 MOVE                             R19 R16
       54 MOVE                             R20 R10
       55 MOVE                             R21 R5
       56 CALL                             R18 3 1
       57 FASTCALL2                        TABLE_INSERT R9 R18 ; [+5]
       59 MOVE                             R20 R9
       60 MOVE                             R21 R18
       61 GETIMPORT                        R19 K17 [table.insert]
       63 CALL                             R19 2 0
       64 JUMP                             ; [+35]
       65 LOADNIL                          R18
       66 GETUPVAL                         R19 2
       67 MOVE                             R20 R16
       68 GETTABLE                         R21 R2 R17
       69 MOVE                             R22 R10
       70 MOVE                             R23 R3
       71 MOVE                             R24 R4
       72 MOVE                             R25 R5
       73 MOVE                             R26 R6
       74 CALL                             R19 7 1
       75 MOVE                             R18 R19
       76 GETIMPORT                        R19 K19 [next]
       78 GETTABLEKS                       R20 R18 K20 ["translations"]
       80 CALL                             R19 1 1
       81 JUMPIFNOTEQKNIL                  R19 ; [+11]
       83 GETTABLEKS                       R19 R18 K21 ["metadata"]
       85 GETTABLEKS                       R19 R19 K22 ["example"]
       87 GETTABLEKS                       R20 R16 K21 ["metadata"]
       89 GETTABLEKS                       R20 R20 K22 ["example"]
       91 JUMPIFEQ                         R19 R20 ; [+8]
       93 FASTCALL2                        TABLE_INSERT R9 R18 ; [+5]
       95 MOVE                             R20 R9
       96 MOVE                             R21 R18
       97 GETIMPORT                        R19 K17 [table.insert]
       99 CALL                             R19 2 0
      100 FORGLOOP                         R12 2 ; [-81]
      102 GETIMPORT                        R12 K10 [pairs]
      104 MOVE                             R13 R2
      105 CALL                             R12 1 3
      106 FORGPREP_NEXT                    R12
      107 GETTABLEKS                       R18 R16 K11 ["identifier"]
      109 GETTABLEKS                       R18 R18 K12 ["key"]
      111 GETTABLEKS                       R19 R16 K11 ["identifier"]
      113 GETTABLEKS                       R19 R19 K13 ["source"]
      115 GETTABLEKS                       R20 R16 K11 ["identifier"]
      117 GETTABLEKS                       R20 R20 K14 ["context"]
      119 GETTABLE                         R21 R8 R18
      120 JUMPIFEQKNIL                     R21 ; [+14]
      122 GETTABLE                         R22 R8 R18
      123 GETTABLE                         R21 R22 R19
      124 JUMPIFEQKNIL                     R21 ; [+10]
      126 GETTABLE                         R23 R8 R18
      127 GETTABLE                         R22 R23 R19
      128 GETTABLE                         R21 R22 R20
      129 JUMPIFEQKNIL                     R21 ; [+5]
      131 GETTABLE                         R22 R8 R18
      132 GETTABLE                         R21 R22 R19
      133 GETTABLE                         R17 R21 R20
      134 JUMP                             ; [+1]
      135 LOADN                            R17 0
      136 JUMPIFNOTEQKN                    R17 K1 [0] ; [+15]
      138 GETUPVAL                         R18 3
      139 MOVE                             R19 R16
      140 MOVE                             R20 R10
      141 MOVE                             R21 R4
      142 MOVE                             R22 R5
      143 MOVE                             R23 R6
      144 CALL                             R18 5 1
      145 FASTCALL2                        TABLE_INSERT R9 R18 ; [+5]
      147 MOVE                             R20 R9
      148 MOVE                             R21 R18
      149 GETIMPORT                        R19 K17 [table.insert]
      151 CALL                             R19 2 0
      152 FORGLOOP                         R12 2 ; [-46]
      154 RETURN                           R10 1

PROTO_9:
        0 DUPTABLE                         R1 K4 [{"identifier", "metadata", "translations", "delete"}]
        1 DUPTABLE                         R2 K8 [{"key", "source", "context"}]
        2 GETTABLEKS                       R3 R0 K0 ["identifier"]
        4 GETTABLEKS                       R3 R3 K5 ["key"]
        6 SETTABLEKS                       R3 R2 K5 ["key"]
        8 GETTABLEKS                       R3 R0 K0 ["identifier"]
       10 GETTABLEKS                       R3 R3 K6 ["source"]
       12 SETTABLEKS                       R3 R2 K6 ["source"]
       14 GETTABLEKS                       R3 R0 K0 ["identifier"]
       16 GETTABLEKS                       R3 R3 K7 ["context"]
       18 SETTABLEKS                       R3 R2 K7 ["context"]
       20 SETTABLEKS                       R2 R1 K0 ["identifier"]
       22 DUPTABLE                         R2 K10 [{"example"}]
       23 GETTABLEKS                       R3 R0 K1 ["metadata"]
       25 JUMPIFNOT                        R3 ; [+4]
       26 GETTABLEKS                       R3 R0 K1 ["metadata"]
       28 GETTABLEKS                       R3 R3 K9 ["example"]
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
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["name"]
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
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K1 ["entries"]
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
