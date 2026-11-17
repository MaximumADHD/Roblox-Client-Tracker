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
      122 DUPTABLE                         R15 K20 [{["tag"] = "col gap-small auto-xy", ["LayoutOrder"]}]
      123 GETTABLEKS                       R16 R0 K19 ["LayoutOrder"]
      125 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      127 DUPTABLE                         R16 K23 [{"HeaderRow", "ApiKeyRow"}]
      128 GETUPVAL                         R17 4
      129 GETUPVAL                         R18 5
      130 DUPTABLE                         R19 K25 [{["tag"] = "row flex-y-fill align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      131 MOVE                             R20 R10
      132 CALL                             R20 0 1
      133 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      135 DUPTABLE                         R20 K27 [{"ProviderCheckbox"}]
      136 GETUPVAL                         R21 4
      137 GETUPVAL                         R22 6
      138 DUPTABLE                         R23 K33 [{"isChecked", "onActivated", "label", "size", "LayoutOrder", "testId"}]
      139 GETTABLEKS                       R24 R0 K9 ["isEnabled"]
      141 SETTABLEKS                       R24 R23 K28 ["isChecked"]
      143 SETTABLEKS                       R9 R23 K29 ["onActivated"]
      145 GETTABLEKS                       R24 R0 K34 ["providerCheckboxName"]
      147 SETTABLEKS                       R24 R23 K30 ["label"]
      149 GETUPVAL                         R24 7
      150 GETTABLEKS                       R24 R24 K35 ["Enums"]
      152 GETTABLEKS                       R24 R24 K36 ["InputSize"]
      154 GETTABLEKS                       R24 R24 K37 ["XSmall"]
      156 SETTABLEKS                       R24 R23 K31 ["size"]
      158 MOVE                             R24 R10
      159 CALL                             R24 0 1
      160 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      162 GETUPVAL                         R24 8
      163 GETTABLEKS                       R24 R24 K26 ["ProviderCheckbox"]
      165 GETTABLEKS                       R25 R0 K4 ["providerId"]
      167 CALL                             R24 1 1
      168 SETTABLEKS                       R24 R23 K32 ["testId"]
      170 CALL                             R21 2 1
      171 SETTABLEKS                       R21 R20 K26 ["ProviderCheckbox"]
      173 CALL                             R17 3 1
      174 SETTABLEKS                       R17 R16 K21 ["HeaderRow"]
      176 GETUPVAL                         R17 4
      177 GETUPVAL                         R18 5
      178 DUPTABLE                         R19 K20 [{["tag"] = "col gap-small auto-xy", ["LayoutOrder"]}]
      179 MOVE                             R20 R10
      180 CALL                             R20 0 1
      181 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      183 DUPTABLE                         R20 K39 [{"KeyDisplay"}]
      184 JUMPIF                           R1 ; [+82]
      185 GETUPVAL                         R21 4
      186 GETUPVAL                         R22 5
      187 DUPTABLE                         R23 K25 [{["tag"] = "row flex-y-fill align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      188 MOVE                             R24 R10
      189 CALL                             R24 0 1
      190 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      192 DUPTABLE                         R24 K42 [{"MaskedKey", "EditButton"}]
      193 GETUPVAL                         R25 4
      194 GETUPVAL                         R26 9
      195 DUPTABLE                         R27 K45 [{["tag"] = "auto-xy text-body-small text-no-wrap text-align-x-left", ["Text"], ["LayoutOrder"], ["testId"]}]
      196 JUMPIFEQKS                       R11 K1 [""] ; [+3]
      198 MOVE                             R28 R11
      199 JUMP                             ; [+2]
      200 GETTABLEKS                       R28 R5 K46 ["NoApiKey"]
      202 SETTABLEKS                       R28 R27 K44 ["Text"]
      204 MOVE                             R28 R10
      205 CALL                             R28 0 1
      206 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      208 GETUPVAL                         R28 8
      209 GETTABLEKS                       R28 R28 K47 ["APIKey"]
      211 GETTABLEKS                       R28 R28 K48 ["Display"]
      213 GETTABLEKS                       R29 R0 K4 ["providerId"]
      215 CALL                             R28 1 1
      216 SETTABLEKS                       R28 R27 K32 ["testId"]
      218 CALL                             R25 2 1
      219 SETTABLEKS                       R25 R24 K40 ["MaskedKey"]
      221 GETUPVAL                         R25 4
      222 GETUPVAL                         R26 10
      223 DUPTABLE                         R27 K51 [{"text", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      224 GETTABLEKS                       R28 R5 K52 ["Edit"]
      226 SETTABLEKS                       R28 R27 K49 ["text"]
      228 GETUPVAL                         R28 7
      229 GETTABLEKS                       R28 R28 K35 ["Enums"]
      231 GETTABLEKS                       R28 R28 K53 ["ButtonSize"]
      233 GETTABLEKS                       R28 R28 K37 ["XSmall"]
      235 SETTABLEKS                       R28 R27 K31 ["size"]
      237 GETUPVAL                         R28 7
      238 GETTABLEKS                       R28 R28 K35 ["Enums"]
      240 GETTABLEKS                       R28 R28 K54 ["ButtonVariant"]
      242 GETTABLEKS                       R28 R28 K44 ["Text"]
      244 SETTABLEKS                       R28 R27 K50 ["variant"]
      246 SETTABLEKS                       R6 R27 K29 ["onActivated"]
      248 MOVE                             R28 R10
      249 CALL                             R28 0 1
      250 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      252 GETUPVAL                         R28 8
      253 GETTABLEKS                       R28 R28 K47 ["APIKey"]
      255 GETTABLEKS                       R28 R28 K41 ["EditButton"]
      257 GETTABLEKS                       R29 R0 K4 ["providerId"]
      259 CALL                             R28 1 1
      260 SETTABLEKS                       R28 R27 K32 ["testId"]
      262 CALL                             R25 2 1
      263 SETTABLEKS                       R25 R24 K41 ["EditButton"]
      265 CALL                             R21 3 1
      266 JUMP                             ; [+145]
      267 GETUPVAL                         R21 4
      268 GETUPVAL                         R22 5
      269 DUPTABLE                         R23 K20 [{["tag"] = "col gap-small auto-xy", ["LayoutOrder"]}]
      270 MOVE                             R24 R10
      271 CALL                             R24 0 1
      272 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      274 DUPTABLE                         R24 K57 [{"InputField", "ButtonRow"}]
      275 GETUPVAL                         R25 4
      276 GETUPVAL                         R26 11
      277 DUPTABLE                         R27 K60 [{["placeholder"], ["text"], ["label"] = "", ["onChanged"], ["size"], ["LayoutOrder"], ["testId"]}]
      278 GETTABLEKS                       R28 R5 K61 ["EnterProviderKey"]
      280 SETTABLEKS                       R28 R27 K58 ["placeholder"]
      282 SETTABLEKS                       R3 R27 K49 ["text"]
      284 SETTABLEKS                       R4 R27 K59 ["onChanged"]
      286 GETUPVAL                         R28 7
      287 GETTABLEKS                       R28 R28 K35 ["Enums"]
      289 GETTABLEKS                       R28 R28 K36 ["InputSize"]
      291 GETTABLEKS                       R28 R28 K37 ["XSmall"]
      293 SETTABLEKS                       R28 R27 K31 ["size"]
      295 MOVE                             R28 R10
      296 CALL                             R28 0 1
      297 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      299 GETUPVAL                         R28 8
      300 GETTABLEKS                       R28 R28 K47 ["APIKey"]
      302 GETTABLEKS                       R28 R28 K62 ["Input"]
      304 GETTABLEKS                       R29 R0 K4 ["providerId"]
      306 CALL                             R28 1 1
      307 SETTABLEKS                       R28 R27 K32 ["testId"]
      309 CALL                             R25 2 1
      310 SETTABLEKS                       R25 R24 K55 ["InputField"]
      312 GETUPVAL                         R25 4
      313 GETUPVAL                         R26 5
      314 DUPTABLE                         R27 K64 [{["tag"] = "row gap-small auto-xy", ["LayoutOrder"]}]
      315 MOVE                             R28 R10
      316 CALL                             R28 0 1
      317 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      319 DUPTABLE                         R28 K67 [{"SaveButton", "CancelButton"}]
      320 GETUPVAL                         R29 4
      321 GETUPVAL                         R30 10
      322 DUPTABLE                         R31 K51 [{"text", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      323 GETTABLEKS                       R32 R5 K68 ["Save"]
      325 SETTABLEKS                       R32 R31 K49 ["text"]
      327 GETUPVAL                         R32 7
      328 GETTABLEKS                       R32 R32 K35 ["Enums"]
      330 GETTABLEKS                       R32 R32 K53 ["ButtonSize"]
      332 GETTABLEKS                       R32 R32 K37 ["XSmall"]
      334 SETTABLEKS                       R32 R31 K31 ["size"]
      336 GETUPVAL                         R32 7
      337 GETTABLEKS                       R32 R32 K35 ["Enums"]
      339 GETTABLEKS                       R32 R32 K54 ["ButtonVariant"]
      341 GETTABLEKS                       R32 R32 K69 ["Emphasis"]
      343 SETTABLEKS                       R32 R31 K50 ["variant"]
      345 SETTABLEKS                       R7 R31 K29 ["onActivated"]
      347 MOVE                             R32 R10
      348 CALL                             R32 0 1
      349 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      351 GETUPVAL                         R32 8
      352 GETTABLEKS                       R32 R32 K47 ["APIKey"]
      354 GETTABLEKS                       R32 R32 K65 ["SaveButton"]
      356 GETTABLEKS                       R33 R0 K4 ["providerId"]
      358 CALL                             R32 1 1
      359 SETTABLEKS                       R32 R31 K32 ["testId"]
      361 CALL                             R29 2 1
      362 SETTABLEKS                       R29 R28 K65 ["SaveButton"]
      364 GETUPVAL                         R29 4
      365 GETUPVAL                         R30 10
      366 DUPTABLE                         R31 K51 [{"text", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      367 GETTABLEKS                       R32 R5 K70 ["Cancel"]
      369 SETTABLEKS                       R32 R31 K49 ["text"]
      371 GETUPVAL                         R32 7
      372 GETTABLEKS                       R32 R32 K35 ["Enums"]
      374 GETTABLEKS                       R32 R32 K53 ["ButtonSize"]
      376 GETTABLEKS                       R32 R32 K37 ["XSmall"]
      378 SETTABLEKS                       R32 R31 K31 ["size"]
      380 GETUPVAL                         R32 7
      381 GETTABLEKS                       R32 R32 K35 ["Enums"]
      383 GETTABLEKS                       R32 R32 K54 ["ButtonVariant"]
      385 GETTABLEKS                       R32 R32 K71 ["Standard"]
      387 SETTABLEKS                       R32 R31 K50 ["variant"]
      389 SETTABLEKS                       R8 R31 K29 ["onActivated"]
      391 MOVE                             R32 R10
      392 CALL                             R32 0 1
      393 SETTABLEKS                       R32 R31 K19 ["LayoutOrder"]
      395 GETUPVAL                         R32 8
      396 GETTABLEKS                       R32 R32 K47 ["APIKey"]
      398 GETTABLEKS                       R32 R32 K66 ["CancelButton"]
      400 GETTABLEKS                       R33 R0 K4 ["providerId"]
      402 CALL                             R32 1 1
      403 SETTABLEKS                       R32 R31 K32 ["testId"]
      405 CALL                             R29 2 1
      406 SETTABLEKS                       R29 R28 K66 ["CancelButton"]
      408 CALL                             R25 3 1
      409 SETTABLEKS                       R25 R24 K56 ["ButtonRow"]
      411 CALL                             R21 3 1
      412 SETTABLEKS                       R21 R20 K38 ["KeyDisplay"]
      414 CALL                             R17 3 1
      415 SETTABLEKS                       R17 R16 K22 ["ApiKeyRow"]
      417 CALL                             R13 3 -1
      418 RETURN                           R13 -1

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
