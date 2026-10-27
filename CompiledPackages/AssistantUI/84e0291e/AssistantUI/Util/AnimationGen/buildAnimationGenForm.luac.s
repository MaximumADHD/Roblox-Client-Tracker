PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toForm"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["resolve"]
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 1
        8 NEWTABLE                         R1 0 0
       10 NEWTABLE                         R2 0 5
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K2 ["R6Blend"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K3 ["UpperBodyBlend"]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K4 ["LowerBodyBlend"]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K5 ["ArmsReach"]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K6 ["LegsReach"]
       27 SETLIST                          R2 R5 5 [1]
       29 LOADNIL                          R3
       30 LOADNIL                          R4
       31 FORGPREP                         R2
       32 DUPTABLE                         R9 K14 [{["name"], ["inputType"], ["initialValue"], ["min"] = 0, ["max"] = 100}]
       33 SETTABLEKS                       R6 R9 K7 ["name"]
       35 GETUPVAL                         R10 2
       36 GETTABLEKS                       R10 R10 K15 ["Number"]
       38 SETTABLEKS                       R10 R9 K8 ["inputType"]
       40 GETTABLE                         R10 R0 R6
       41 SETTABLEKS                       R10 R9 K9 ["initialValue"]
       43 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       45 MOVE                             R8 R1
       46 GETIMPORT                        R7 K18 [table.insert]
       48 CALL                             R7 2 0
       49 FORGLOOP                         R2 2 ; [-18]
       51 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagPropertiesExposeContentView"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantAskInputFooterResolver"]
        7 NEWTABLE                         R2 0 2
        9 DUPTABLE                         R3 K6 [{"name", "inputType", "options", "initialValue"}]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K7 ["GenerationMode"]
       13 SETTABLEKS                       R4 R3 K2 ["name"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K8 ["Option"]
       18 SETTABLEKS                       R4 R3 K3 ["inputType"]
       20 JUMPIFNOT                        R1 ; [+2]
       21 GETUPVAL                         R4 3
       22 JUMP                             ; [+7]
       23 NEWTABLE                         R4 0 1
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K9 ["New"]
       28 SETLIST                          R4 R5 1 [1]
       30 SETTABLEKS                       R4 R3 K4 ["options"]
       32 JUMPIFNOT                        R1 ; [+3]
       33 GETTABLEKS                       R4 R0 K10 ["generationMode"]
       35 JUMP                             ; [+3]
       36 GETUPVAL                         R4 4
       37 GETTABLEKS                       R4 R4 K9 ["New"]
       39 SETTABLEKS                       R4 R3 K5 ["initialValue"]
       41 DUPTABLE                         R4 K11 [{"name", "inputType", "initialValue"}]
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K12 ["TextPrompt"]
       45 SETTABLEKS                       R5 R4 K2 ["name"]
       47 GETUPVAL                         R5 2
       48 GETTABLEKS                       R5 R5 K13 ["String"]
       50 SETTABLEKS                       R5 R4 K3 ["inputType"]
       52 GETTABLEKS                       R5 R0 K14 ["textPrompt"]
       54 SETTABLEKS                       R5 R4 K5 ["initialValue"]
       56 SETLIST                          R2 R3 2 [1]
       58 JUMPIFNOT                        R1 ; [+21]
       59 DUPTABLE                         R5 K11 [{"name", "inputType", "initialValue"}]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K15 ["InputAssetId"]
       63 SETTABLEKS                       R6 R5 K2 ["name"]
       65 GETUPVAL                         R6 2
       66 GETTABLEKS                       R6 R6 K13 ["String"]
       68 SETTABLEKS                       R6 R5 K3 ["inputType"]
       70 GETTABLEKS                       R6 R0 K16 ["inputAssetId"]
       72 SETTABLEKS                       R6 R5 K5 ["initialValue"]
       74 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       76 MOVE                             R4 R2
       77 GETIMPORT                        R3 K19 [table.insert]
       79 CALL                             R3 2 0
       80 DUPTABLE                         R5 K11 [{"name", "inputType", "initialValue"}]
       81 GETUPVAL                         R6 1
       82 GETTABLEKS                       R6 R6 K20 ["SelectedRigRef"]
       84 SETTABLEKS                       R6 R5 K2 ["name"]
       86 GETUPVAL                         R6 2
       87 GETTABLEKS                       R6 R6 K21 ["Instance"]
       89 SETTABLEKS                       R6 R5 K3 ["inputType"]
       91 GETTABLEKS                       R6 R0 K22 ["selectedRigRef"]
       93 SETTABLEKS                       R6 R5 K5 ["initialValue"]
       95 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       97 MOVE                             R4 R2
       98 GETIMPORT                        R3 K19 [table.insert]
      100 CALL                             R3 2 0
      101 DUPTABLE                         R5 K25 [{"name", "inputType", "initialValue", "min", "max"}]
      102 GETUPVAL                         R6 1
      103 GETTABLEKS                       R6 R6 K26 ["Duration"]
      105 SETTABLEKS                       R6 R5 K2 ["name"]
      107 GETUPVAL                         R6 2
      108 GETTABLEKS                       R6 R6 K27 ["Number"]
      110 SETTABLEKS                       R6 R5 K3 ["inputType"]
      112 GETTABLEKS                       R6 R0 K28 ["duration"]
      114 SETTABLEKS                       R6 R5 K5 ["initialValue"]
      116 GETUPVAL                         R6 5
      117 SETTABLEKS                       R6 R5 K23 ["min"]
      119 GETUPVAL                         R6 6
      120 SETTABLEKS                       R6 R5 K24 ["max"]
      122 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      124 MOVE                             R4 R2
      125 GETIMPORT                        R3 K19 [table.insert]
      127 CALL                             R3 2 0
      128 JUMPIFNOT                        R1 ; [+33]
      129 GETUPVAL                         R3 0
      130 GETTABLEKS                       R3 R3 K29 ["FFlagAssistantAddNumberInput"]
      132 JUMPIFNOT                        R3 ; [+12]
      133 GETUPVAL                         R3 7
      134 CALL                             R3 0 3
      135 FORGPREP                         R3
      136 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
      138 MOVE                             R9 R2
      139 MOVE                             R10 R7
      140 GETIMPORT                        R8 K19 [table.insert]
      142 CALL                             R8 2 0
      143 FORGLOOP                         R3 2 ; [-8]
      145 DUPTABLE                         R5 K30 [{"name", "inputType"}]
      146 GETUPVAL                         R6 1
      147 GETTABLEKS                       R6 R6 K31 ["ClipPreview"]
      149 SETTABLEKS                       R6 R5 K2 ["name"]
      151 GETUPVAL                         R6 2
      152 GETTABLEKS                       R6 R6 K13 ["String"]
      154 SETTABLEKS                       R6 R5 K3 ["inputType"]
      156 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      158 MOVE                             R4 R2
      159 GETIMPORT                        R3 K19 [table.insert]
      161 CALL                             R3 2 0
      162 DUPTABLE                         R3 K35 [{"formId", "fields", "validation"}]
      163 GETUPVAL                         R4 8
      164 GETTABLEKS                       R4 R4 K32 ["formId"]
      166 SETTABLEKS                       R4 R3 K32 ["formId"]
      168 SETTABLEKS                       R2 R3 K33 ["fields"]
      170 GETUPVAL                         R4 9
      171 DUPTABLE                         R5 K40 [{"kind", "field", "cases", "default"}]
      172 GETUPVAL                         R6 10
      173 GETTABLEKS                       R6 R6 K41 ["Branch"]
      175 SETTABLEKS                       R6 R5 K36 ["kind"]
      177 GETUPVAL                         R6 1
      178 GETTABLEKS                       R6 R6 K7 ["GenerationMode"]
      180 SETTABLEKS                       R6 R5 K37 ["field"]
      182 NEWTABLE                         R6 2 0
      184 GETUPVAL                         R7 4
      185 GETTABLEKS                       R7 R7 K9 ["New"]
      187 GETUPVAL                         R8 9
      188 DUPTABLE                         R9 K43 [{"kind", "rules"}]
      189 GETUPVAL                         R10 10
      190 GETTABLEKS                       R10 R10 K44 ["All"]
      192 SETTABLEKS                       R10 R9 K36 ["kind"]
      194 NEWTABLE                         R10 0 2
      196 GETUPVAL                         R11 9
      197 DUPTABLE                         R12 K45 [{"kind", "field"}]
      198 GETUPVAL                         R13 10
      199 GETTABLEKS                       R13 R13 K46 ["NonEmpty"]
      201 SETTABLEKS                       R13 R12 K36 ["kind"]
      203 GETUPVAL                         R13 1
      204 GETTABLEKS                       R13 R13 K12 ["TextPrompt"]
      206 SETTABLEKS                       R13 R12 K37 ["field"]
      208 CALL                             R11 1 1
      209 GETUPVAL                         R12 9
      210 DUPTABLE                         R13 K47 [{"kind", "field", "min", "max"}]
      211 GETUPVAL                         R14 10
      212 GETTABLEKS                       R14 R14 K48 ["Range"]
      214 SETTABLEKS                       R14 R13 K36 ["kind"]
      216 GETUPVAL                         R14 1
      217 GETTABLEKS                       R14 R14 K26 ["Duration"]
      219 SETTABLEKS                       R14 R13 K37 ["field"]
      221 GETUPVAL                         R14 5
      222 SETTABLEKS                       R14 R13 K23 ["min"]
      224 GETUPVAL                         R14 6
      225 SETTABLEKS                       R14 R13 K24 ["max"]
      227 CALL                             R12 1 -1
      228 SETLIST                          R10 R11 -1 [1]
      230 SETTABLEKS                       R10 R9 K42 ["rules"]
      232 CALL                             R8 1 1
      233 SETTABLE                         R8 R6 R7
      234 GETUPVAL                         R7 4
      235 GETTABLEKS                       R7 R7 K49 ["Upscale"]
      237 GETUPVAL                         R8 9
      238 DUPTABLE                         R9 K45 [{"kind", "field"}]
      239 GETUPVAL                         R10 10
      240 GETTABLEKS                       R10 R10 K46 ["NonEmpty"]
      242 SETTABLEKS                       R10 R9 K36 ["kind"]
      244 GETUPVAL                         R10 1
      245 GETTABLEKS                       R10 R10 K15 ["InputAssetId"]
      247 SETTABLEKS                       R10 R9 K37 ["field"]
      249 CALL                             R8 1 1
      250 SETTABLE                         R8 R6 R7
      251 SETTABLEKS                       R6 R5 K38 ["cases"]
      253 GETUPVAL                         R6 9
      254 DUPTABLE                         R7 K45 [{"kind", "field"}]
      255 GETUPVAL                         R8 10
      256 GETTABLEKS                       R8 R8 K46 ["NonEmpty"]
      258 SETTABLEKS                       R8 R7 K36 ["kind"]
      260 GETUPVAL                         R8 1
      261 GETTABLEKS                       R8 R8 K12 ["TextPrompt"]
      263 SETTABLEKS                       R8 R7 K37 ["field"]
      265 CALL                             R6 1 1
      266 SETTABLEKS                       R6 R5 K39 ["default"]
      268 CALL                             R4 1 1
      269 SETTABLEKS                       R4 R3 K34 ["validation"]
      271 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 NEWTABLE                         R2 0 1
        4 DUPTABLE                         R3 K7 [{["name"], ["inputType"], ["options"], ["initialValue"], ["required"] = True}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K8 ["GenerationMode"]
        8 SETTABLEKS                       R4 R3 K1 ["name"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K9 ["Option"]
       13 SETTABLEKS                       R4 R3 K2 ["inputType"]
       15 NEWTABLE                         R4 0 1
       17 GETTABLEKS                       R5 R0 K10 ["generationMode"]
       19 SETLIST                          R4 R5 1 [1]
       21 SETTABLEKS                       R4 R3 K3 ["options"]
       23 GETTABLEKS                       R4 R0 K10 ["generationMode"]
       25 SETTABLEKS                       R4 R3 K4 ["initialValue"]
       27 SETLIST                          R2 R3 1 [1]
       29 GETTABLEKS                       R3 R0 K10 ["generationMode"]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K11 ["EditNew"]
       34 JUMPIFNOTEQ                      R3 R4 ; [+22]
       36 DUPTABLE                         R5 K12 [{"name", "inputType", "initialValue"}]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K13 ["EditTextPrompt"]
       40 SETTABLEKS                       R6 R5 K1 ["name"]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R6 R6 K14 ["String"]
       45 SETTABLEKS                       R6 R5 K2 ["inputType"]
       47 GETTABLEKS                       R6 R0 K15 ["textPrompt"]
       49 SETTABLEKS                       R6 R5 K4 ["initialValue"]
       51 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       53 MOVE                             R4 R2
       54 GETIMPORT                        R3 K18 [table.insert]
       56 CALL                             R3 2 0
       57 DUPTABLE                         R5 K12 [{"name", "inputType", "initialValue"}]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K19 ["EditDuration"]
       61 SETTABLEKS                       R6 R5 K1 ["name"]
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R6 R6 K20 ["Number"]
       66 SETTABLEKS                       R6 R5 K2 ["inputType"]
       68 GETTABLEKS                       R6 R0 K21 ["duration"]
       70 JUMPIF                           R6 ; [+2]
       71 GETTABLEKS                       R6 R1 K21 ["duration"]
       73 SETTABLEKS                       R6 R5 K4 ["initialValue"]
       75 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       77 MOVE                             R4 R2
       78 GETIMPORT                        R3 K18 [table.insert]
       80 CALL                             R3 2 0
       81 DUPTABLE                         R5 K12 [{"name", "inputType", "initialValue"}]
       82 GETUPVAL                         R6 0
       83 GETTABLEKS                       R6 R6 K22 ["EditSourceId"]
       85 SETTABLEKS                       R6 R5 K1 ["name"]
       87 GETUPVAL                         R6 1
       88 GETTABLEKS                       R6 R6 K14 ["String"]
       90 SETTABLEKS                       R6 R5 K2 ["inputType"]
       92 GETTABLEKS                       R6 R1 K23 ["savedKeyframesContentId"]
       94 SETTABLEKS                       R6 R5 K4 ["initialValue"]
       96 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       98 MOVE                             R4 R2
       99 GETIMPORT                        R3 K18 [table.insert]
      101 CALL                             R3 2 0
      102 DUPTABLE                         R5 K12 [{"name", "inputType", "initialValue"}]
      103 GETUPVAL                         R6 0
      104 GETTABLEKS                       R6 R6 K24 ["EditSourceDuration"]
      106 SETTABLEKS                       R6 R5 K1 ["name"]
      108 GETUPVAL                         R6 1
      109 GETTABLEKS                       R6 R6 K20 ["Number"]
      111 SETTABLEKS                       R6 R5 K2 ["inputType"]
      113 GETTABLEKS                       R6 R1 K21 ["duration"]
      115 SETTABLEKS                       R6 R5 K4 ["initialValue"]
      117 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      119 MOVE                             R4 R2
      120 GETIMPORT                        R3 K18 [table.insert]
      122 CALL                             R3 2 0
      123 DUPTABLE                         R3 K27 [{"formId", "fields"}]
      124 GETUPVAL                         R4 3
      125 GETTABLEKS                       R4 R4 K25 ["formId"]
      127 SETTABLEKS                       R4 R3 K25 ["formId"]
      129 SETTABLEKS                       R2 R3 K26 ["fields"]
      131 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["generationMode"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["EditNew"]
        5 JUMPIFEQ                         R1 R2 ; [+8]
        7 GETTABLEKS                       R1 R0 K0 ["generationMode"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["EditUpscale"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+5]
       14 GETUPVAL                         R1 1
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 2
       19 MOVE                             R2 R0
       20 CALL                             R1 1 1
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["AskInput"]
       22 GETTABLEKS                       R3 R3 K10 ["AskInputTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Util"]
       29 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       31 GETTABLEKS                       R4 R4 K11 ["EditInAssistantState"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K12 ["Flags"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["SlashCommandConfiguration"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Util"]
       50 GETTABLEKS                       R7 R7 K7 ["AnimationGen"]
       52 GETTABLEKS                       R7 R7 K14 ["UpscaleSettings"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R2 K15 ["INPUT_TYPE"]
       57 GETTABLEKS                       R8 R1 K16 ["GenerationModes"]
       59 GETTABLEKS                       R9 R2 K17 ["RULE_KIND"]
       61 GETTABLEKS                       R10 R2 K18 ["asRule"]
       63 GETTABLEKS                       R11 R5 K19 ["Configs"]
       65 GETTABLEKS                       R11 R11 K7 ["AnimationGen"]
       67 GETTABLEKS                       R12 R11 K20 ["row"]
       69 GETTABLEKS                       R13 R4 K21 ["FIntAssistantAnimationGenPluginMinDurationSeconds"]
       71 GETTABLEKS                       R14 R4 K22 ["FIntAssistantAnimationGenPluginMaxDurationSeconds"]
       73 NEWTABLE                         R15 0 2
       75 GETTABLEKS                       R16 R8 K23 ["Upscale"]
       77 GETTABLEKS                       R17 R8 K24 ["New"]
       79 SETLIST                          R15 R16 2 [1]
       81 DUPCLOSURE                       R16 K25 [PROTO_0]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R7
       85 DUPCLOSURE                       R17 K26 [PROTO_1]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R9
       97 DUPCLOSURE                       R18 K27 [PROTO_2]
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R11
      102 DUPCLOSURE                       R19 K28 [PROTO_3]
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R17
      106 RETURN                           R19 1
