PROTO_0:
        0 DUPTABLE                         R0 K5 [{"Edit", "Save", "Cancel", "NoApiKey", "EnterProviderKey"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["SettingsDialog"]
        3 LOADK                            R4 K0 ["Edit"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Edit"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K8 ["Settings"]
       11 LOADK                            R4 K1 ["Save"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Save"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K8 ["Settings"]
       19 LOADK                            R4 K2 ["Cancel"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Cancel"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K6 ["SettingsDialog"]
       27 LOADK                            R4 K3 ["NoApiKey"]
       28 NAMECALL                         R1 R1 K7 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["NoApiKey"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K6 ["SettingsDialog"]
       35 LOADK                            R4 K4 ["EnterProviderKey"]
       36 DUPTABLE                         R5 K10 [{"provider"}]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K11 ["providerId"]
       40 SETTABLEKS                       R6 R5 K9 ["provider"]
       42 NAMECALL                         R1 R1 K7 ["getText"]
       44 CALL                             R1 4 1
       45 SETTABLEKS                       R1 R0 K4 ["EnterProviderKey"]
       47 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K1 ["apiKeyValue"]
        4 ORK                              R1 R2 K0 [""]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onApiKeyChange"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K1 ["apiKeyValue"]
       11 GETUPVAL                         R1 1
       12 JUMPIFEQ                         R0 R1 ; [+13]
       14 GETUPVAL                         R0 3
       15 GETTABLEKS                       R0 R0 K2 ["get"]
       17 CALL                             R0 0 1
       18 GETTABLEKS                       R0 R0 K3 ["EventLogger"]
       20 GETTABLEKS                       R1 R0 K4 ["logApiKeyAdded"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K5 ["providerId"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onToggle"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["isEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADK                            R4 K1 [""]
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R7 0 2
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K3 ["locale"]
       21 GETTABLEKS                       R9 R0 K4 ["providerId"]
       23 SETLIST                          R7 R8 2 [1]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R8 0 1
       35 GETTABLEKS                       R9 R0 K6 ["apiKeyValue"]
       37 SETLIST                          R8 R9 1 [1]
       39 CALL                             R6 2 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       43 NEWCLOSURE                       R8 P2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          UPVAL U2
       48 NEWTABLE                         R9 0 4
       50 GETTABLEKS                       R10 R0 K7 ["onApiKeyChange"]
       52 MOVE                             R11 R3
       53 GETTABLEKS                       R12 R0 K4 ["providerId"]
       55 GETTABLEKS                       R13 R0 K6 ["apiKeyValue"]
       57 SETLIST                          R9 R10 4 [1]
       59 CALL                             R7 2 1
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       63 NEWCLOSURE                       R9 P3
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 NEWTABLE                         R10 0 0
       68 CALL                             R8 2 1
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       72 NEWCLOSURE                       R10 P4
       73 CAPTURE                          VAL R0
       74 NEWTABLE                         R11 0 2
       76 GETTABLEKS                       R12 R0 K8 ["onToggle"]
       78 GETTABLEKS                       R13 R0 K9 ["isEnabled"]
       80 SETLIST                          R11 R12 2 [1]
       82 CALL                             R9 2 1
       83 GETUPVAL                         R10 3
       84 CALL                             R10 0 1
       85 LOADK                            R11 K1 [""]
       86 GETTABLEKS                       R13 R0 K6 ["apiKeyValue"]
       88 FASTCALL1                        STRING_LEN R13 ; [+2]
       89 GETIMPORT                        R12 K12 [string.len]
       91 CALL                             R12 1 1
       92 LOADN                            R13 8
       93 JUMPIFNOTLE                      R13 R12 ; [+22]
       95 GETTABLEKS                       R14 R0 K6 ["apiKeyValue"]
       97 LOADN                            R15 1
       98 LOADN                            R16 3
       99 FASTCALL                         STRING_SUB ; [+2]
      100 GETIMPORT                        R13 K14 [string.sub]
      102 CALL                             R13 3 1
      103 GETTABLEKS                       R15 R0 K6 ["apiKeyValue"]
      105 FASTCALL2K                       STRING_SUB R15 K15 ; [+4]
      107 LOADK                            R16 K15 [-4]
      108 GETIMPORT                        R14 K14 [string.sub]
      110 CALL                             R14 2 1
      111 MOVE                             R15 R13
      112 LOADK                            R16 K16 ["••••"]
      113 MOVE                             R17 R14
      114 CONCAT                           R11 R15 R17
      115 JUMP                             ; [+4]
      116 LOADN                            R13 0
      117 JUMPIFNOTLT                      R13 R12 ; [+2]
      119 LOADK                            R11 K16 ["••••"]
      120 GETUPVAL                         R13 4
      121 GETUPVAL                         R14 5
      122 DUPTABLE                         R15 K19 [{"tag", "LayoutOrder"}]
      123 LOADK                            R16 K20 ["col auto-xy gap-small"]
      124 SETTABLEKS                       R16 R15 K17 ["tag"]
      126 GETTABLEKS                       R16 R0 K18 ["LayoutOrder"]
      128 SETTABLEKS                       R16 R15 K18 ["LayoutOrder"]
      130 DUPTABLE                         R16 K23 [{"HeaderRow", "ApiKeyRow"}]
      131 GETUPVAL                         R17 4
      132 GETUPVAL                         R18 5
      133 DUPTABLE                         R19 K19 [{"tag", "LayoutOrder"}]
      134 LOADK                            R20 K24 ["row size-full-0 auto-y gap-small flex-y-fill align-y-center"]
      135 SETTABLEKS                       R20 R19 K17 ["tag"]
      137 MOVE                             R20 R10
      138 CALL                             R20 0 1
      139 SETTABLEKS                       R20 R19 K18 ["LayoutOrder"]
      141 DUPTABLE                         R20 K26 [{"ProviderCheckbox"}]
      142 GETUPVAL                         R21 4
      143 GETUPVAL                         R22 6
      144 DUPTABLE                         R23 K32 [{"isChecked", "onActivated", "label", "size", "LayoutOrder", "testId"}]
      145 GETTABLEKS                       R24 R0 K9 ["isEnabled"]
      147 SETTABLEKS                       R24 R23 K27 ["isChecked"]
      149 SETTABLEKS                       R9 R23 K28 ["onActivated"]
      151 GETTABLEKS                       R24 R0 K33 ["providerCheckboxName"]
      153 SETTABLEKS                       R24 R23 K29 ["label"]
      155 GETUPVAL                         R24 7
      156 GETTABLEKS                       R24 R24 K34 ["Enums"]
      158 GETTABLEKS                       R24 R24 K35 ["InputSize"]
      160 GETTABLEKS                       R24 R24 K36 ["XSmall"]
      162 SETTABLEKS                       R24 R23 K30 ["size"]
      164 MOVE                             R24 R10
      165 CALL                             R24 0 1
      166 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      168 GETUPVAL                         R24 8
      169 GETTABLEKS                       R24 R24 K25 ["ProviderCheckbox"]
      171 GETTABLEKS                       R25 R0 K4 ["providerId"]
      173 CALL                             R24 1 1
      174 SETTABLEKS                       R24 R23 K31 ["testId"]
      176 CALL                             R21 2 1
      177 SETTABLEKS                       R21 R20 K25 ["ProviderCheckbox"]
      179 CALL                             R17 3 1
      180 SETTABLEKS                       R17 R16 K21 ["HeaderRow"]
      182 GETUPVAL                         R17 4
      183 GETUPVAL                         R18 5
      184 DUPTABLE                         R19 K19 [{"tag", "LayoutOrder"}]
      185 LOADK                            R20 K20 ["col auto-xy gap-small"]
      186 SETTABLEKS                       R20 R19 K17 ["tag"]
      188 MOVE                             R20 R10
      189 CALL                             R20 0 1
      190 SETTABLEKS                       R20 R19 K18 ["LayoutOrder"]
      192 DUPTABLE                         R20 K38 [{"KeyDisplay"}]
      193 JUMPIF                           R1 ; [+88]
      194 GETUPVAL                         R21 4
      195 GETUPVAL                         R22 5
      196 DUPTABLE                         R23 K19 [{"tag", "LayoutOrder"}]
      197 LOADK                            R24 K24 ["row size-full-0 auto-y gap-small flex-y-fill align-y-center"]
      198 SETTABLEKS                       R24 R23 K17 ["tag"]
      200 MOVE                             R24 R10
      201 CALL                             R24 0 1
      202 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      204 DUPTABLE                         R24 K41 [{"MaskedKey", "EditButton"}]
      205 GETUPVAL                         R25 4
      206 GETUPVAL                         R26 9
      207 DUPTABLE                         R27 K43 [{"tag", "Text", "LayoutOrder", "testId"}]
      208 LOADK                            R28 K44 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
      209 SETTABLEKS                       R28 R27 K17 ["tag"]
      211 JUMPIFEQKS                       R11 K1 [""] ; [+3]
      213 MOVE                             R28 R11
      214 JUMP                             ; [+2]
      215 GETTABLEKS                       R28 R5 K45 ["NoApiKey"]
      217 SETTABLEKS                       R28 R27 K42 ["Text"]
      219 MOVE                             R28 R10
      220 CALL                             R28 0 1
      221 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      223 GETUPVAL                         R28 8
      224 GETTABLEKS                       R28 R28 K46 ["APIKey"]
      226 GETTABLEKS                       R28 R28 K47 ["Display"]
      228 GETTABLEKS                       R29 R0 K4 ["providerId"]
      230 CALL                             R28 1 1
      231 SETTABLEKS                       R28 R27 K31 ["testId"]
      233 CALL                             R25 2 1
      234 SETTABLEKS                       R25 R24 K39 ["MaskedKey"]
      236 GETUPVAL                         R25 4
      237 GETUPVAL                         R26 10
      238 DUPTABLE                         R27 K50 [{"text", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      239 GETTABLEKS                       R28 R5 K51 ["Edit"]
      241 SETTABLEKS                       R28 R27 K48 ["text"]
      243 GETUPVAL                         R28 7
      244 GETTABLEKS                       R28 R28 K34 ["Enums"]
      246 GETTABLEKS                       R28 R28 K52 ["ButtonSize"]
      248 GETTABLEKS                       R28 R28 K36 ["XSmall"]
      250 SETTABLEKS                       R28 R27 K30 ["size"]
      252 GETUPVAL                         R28 7
      253 GETTABLEKS                       R28 R28 K34 ["Enums"]
      255 GETTABLEKS                       R28 R28 K53 ["ButtonVariant"]
      257 GETTABLEKS                       R28 R28 K42 ["Text"]
      259 SETTABLEKS                       R28 R27 K49 ["variant"]
      261 SETTABLEKS                       R6 R27 K28 ["onActivated"]
      263 MOVE                             R28 R10
      264 CALL                             R28 0 1
      265 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      267 GETUPVAL                         R28 8
      268 GETTABLEKS                       R28 R28 K46 ["APIKey"]
      270 GETTABLEKS                       R28 R28 K40 ["EditButton"]
      272 GETTABLEKS                       R29 R0 K4 ["providerId"]
      274 CALL                             R28 1 1
      275 SETTABLEKS                       R28 R27 K31 ["testId"]
      277 CALL                             R25 2 1
      278 SETTABLEKS                       R25 R24 K40 ["EditButton"]
      280 CALL                             R21 3 1
      281 JUMP                             ; [+154]
      282 GETUPVAL                         R21 4
      283 GETUPVAL                         R22 5
      284 DUPTABLE                         R23 K19 [{"tag", "LayoutOrder"}]
      285 LOADK                            R24 K20 ["col auto-xy gap-small"]
      286 SETTABLEKS                       R24 R23 K17 ["tag"]
      288 MOVE                             R24 R10
      289 CALL                             R24 0 1
      290 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      292 DUPTABLE                         R24 K56 [{"InputField", "ButtonRow"}]
      293 GETUPVAL                         R25 4
      294 GETUPVAL                         R26 11
      295 DUPTABLE                         R27 K59 [{"placeholder", "text", "label", "onChanged", "size", "LayoutOrder", "testId"}]
      296 GETTABLEKS                       R28 R5 K60 ["EnterProviderKey"]
      298 SETTABLEKS                       R28 R27 K57 ["placeholder"]
      300 SETTABLEKS                       R3 R27 K48 ["text"]
      302 LOADK                            R28 K1 [""]
      303 SETTABLEKS                       R28 R27 K29 ["label"]
      305 SETTABLEKS                       R4 R27 K58 ["onChanged"]
      307 GETUPVAL                         R28 7
      308 GETTABLEKS                       R28 R28 K34 ["Enums"]
      310 GETTABLEKS                       R28 R28 K35 ["InputSize"]
      312 GETTABLEKS                       R28 R28 K36 ["XSmall"]
      314 SETTABLEKS                       R28 R27 K30 ["size"]
      316 MOVE                             R28 R10
      317 CALL                             R28 0 1
      318 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      320 GETUPVAL                         R28 8
      321 GETTABLEKS                       R28 R28 K46 ["APIKey"]
      323 GETTABLEKS                       R28 R28 K61 ["Input"]
      325 GETTABLEKS                       R29 R0 K4 ["providerId"]
      327 CALL                             R28 1 1
      328 SETTABLEKS                       R28 R27 K31 ["testId"]
      330 CALL                             R25 2 1
      331 SETTABLEKS                       R25 R24 K54 ["InputField"]
      333 GETUPVAL                         R25 4
      334 GETUPVAL                         R26 5
      335 DUPTABLE                         R27 K19 [{"tag", "LayoutOrder"}]
      336 LOADK                            R28 K62 ["row gap-small auto-xy"]
      337 SETTABLEKS                       R28 R27 K17 ["tag"]
      339 MOVE                             R28 R10
      340 CALL                             R28 0 1
      341 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      343 DUPTABLE                         R28 K65 [{"SaveButton", "CancelButton"}]
      344 GETUPVAL                         R29 4
      345 GETUPVAL                         R30 10
      346 DUPTABLE                         R31 K50 [{"text", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      347 GETTABLEKS                       R32 R5 K66 ["Save"]
      349 SETTABLEKS                       R32 R31 K48 ["text"]
      351 GETUPVAL                         R32 7
      352 GETTABLEKS                       R32 R32 K34 ["Enums"]
      354 GETTABLEKS                       R32 R32 K52 ["ButtonSize"]
      356 GETTABLEKS                       R32 R32 K36 ["XSmall"]
      358 SETTABLEKS                       R32 R31 K30 ["size"]
      360 GETUPVAL                         R32 7
      361 GETTABLEKS                       R32 R32 K34 ["Enums"]
      363 GETTABLEKS                       R32 R32 K53 ["ButtonVariant"]
      365 GETTABLEKS                       R32 R32 K67 ["Emphasis"]
      367 SETTABLEKS                       R32 R31 K49 ["variant"]
      369 SETTABLEKS                       R7 R31 K28 ["onActivated"]
      371 MOVE                             R32 R10
      372 CALL                             R32 0 1
      373 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      375 GETUPVAL                         R32 8
      376 GETTABLEKS                       R32 R32 K46 ["APIKey"]
      378 GETTABLEKS                       R32 R32 K63 ["SaveButton"]
      380 GETTABLEKS                       R33 R0 K4 ["providerId"]
      382 CALL                             R32 1 1
      383 SETTABLEKS                       R32 R31 K31 ["testId"]
      385 CALL                             R29 2 1
      386 SETTABLEKS                       R29 R28 K63 ["SaveButton"]
      388 GETUPVAL                         R29 4
      389 GETUPVAL                         R30 10
      390 DUPTABLE                         R31 K50 [{"text", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      391 GETTABLEKS                       R32 R5 K68 ["Cancel"]
      393 SETTABLEKS                       R32 R31 K48 ["text"]
      395 GETUPVAL                         R32 7
      396 GETTABLEKS                       R32 R32 K34 ["Enums"]
      398 GETTABLEKS                       R32 R32 K52 ["ButtonSize"]
      400 GETTABLEKS                       R32 R32 K36 ["XSmall"]
      402 SETTABLEKS                       R32 R31 K30 ["size"]
      404 GETUPVAL                         R32 7
      405 GETTABLEKS                       R32 R32 K34 ["Enums"]
      407 GETTABLEKS                       R32 R32 K53 ["ButtonVariant"]
      409 GETTABLEKS                       R32 R32 K69 ["Standard"]
      411 SETTABLEKS                       R32 R31 K49 ["variant"]
      413 SETTABLEKS                       R8 R31 K28 ["onActivated"]
      415 MOVE                             R32 R10
      416 CALL                             R32 0 1
      417 SETTABLEKS                       R32 R31 K18 ["LayoutOrder"]
      419 GETUPVAL                         R32 8
      420 GETTABLEKS                       R32 R32 K46 ["APIKey"]
      422 GETTABLEKS                       R32 R32 K64 ["CancelButton"]
      424 GETTABLEKS                       R33 R0 K4 ["providerId"]
      426 CALL                             R32 1 1
      427 SETTABLEKS                       R32 R31 K31 ["testId"]
      429 CALL                             R29 2 1
      430 SETTABLEKS                       R29 R28 K64 ["CancelButton"]
      432 CALL                             R25 3 1
      433 SETTABLEKS                       R25 R24 K55 ["ButtonRow"]
      435 CALL                             R21 3 1
      436 SETTABLEKS                       R21 R20 K37 ["KeyDisplay"]
      438 CALL                             R17 3 1
      439 SETTABLEKS                       R17 R16 K22 ["ApiKeyRow"]
      441 CALL                             R13 3 -1
      442 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Resources"]
       46 GETTABLEKS                       R7 R7 K15 ["Localization"]
       48 GETTABLEKS                       R7 R7 K16 ["Translator"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K17 ["Types"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R2 K18 ["Button"]
       58 GETTABLEKS                       R9 R2 K19 ["Checkbox"]
       60 GETTABLEKS                       R10 R2 K20 ["Text"]
       62 GETTABLEKS                       R11 R2 K21 ["TextInput"]
       64 GETTABLEKS                       R12 R2 K22 ["View"]
       66 GETTABLEKS                       R13 R4 K23 ["createNextOrder"]
       68 GETTABLEKS                       R14 R3 K24 ["createElement"]
       70 DUPCLOSURE                       R15 K25 [PROTO_5]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R14
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R11
       83 RETURN                           R15 1
