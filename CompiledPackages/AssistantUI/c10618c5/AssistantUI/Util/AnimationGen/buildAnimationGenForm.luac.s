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
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K4 [{"kind", "field", "cases", "default"}]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K5 ["Branch"]
        5 SETTABLEKS                       R2 R1 K0 ["kind"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K6 ["GenerationMode"]
       10 SETTABLEKS                       R2 R1 K1 ["field"]
       12 NEWTABLE                         R2 2 0
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K7 ["New"]
       17 GETUPVAL                         R4 0
       18 DUPTABLE                         R5 K9 [{"kind", "rules"}]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K10 ["All"]
       22 SETTABLEKS                       R6 R5 K0 ["kind"]
       24 NEWTABLE                         R6 0 2
       26 GETUPVAL                         R7 0
       27 DUPTABLE                         R8 K11 [{"kind", "field"}]
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K12 ["NonEmpty"]
       31 SETTABLEKS                       R9 R8 K0 ["kind"]
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R9 R9 K13 ["TextPrompt"]
       36 SETTABLEKS                       R9 R8 K1 ["field"]
       38 CALL                             R7 1 1
       39 GETUPVAL                         R8 0
       40 DUPTABLE                         R9 K16 [{"kind", "field", "min", "max"}]
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R10 R10 K17 ["Range"]
       44 SETTABLEKS                       R10 R9 K0 ["kind"]
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R10 R10 K18 ["Duration"]
       49 SETTABLEKS                       R10 R9 K1 ["field"]
       51 GETUPVAL                         R10 4
       52 SETTABLEKS                       R10 R9 K14 ["min"]
       54 GETUPVAL                         R10 5
       55 SETTABLEKS                       R10 R9 K15 ["max"]
       57 CALL                             R8 1 -1
       58 SETLIST                          R6 R7 -1 [1]
       60 SETTABLEKS                       R6 R5 K8 ["rules"]
       62 CALL                             R4 1 1
       63 SETTABLE                         R4 R2 R3
       64 GETUPVAL                         R3 3
       65 GETTABLEKS                       R3 R3 K19 ["Upscale"]
       67 GETUPVAL                         R4 0
       68 DUPTABLE                         R5 K11 [{"kind", "field"}]
       69 GETUPVAL                         R6 1
       70 GETTABLEKS                       R6 R6 K12 ["NonEmpty"]
       72 SETTABLEKS                       R6 R5 K0 ["kind"]
       74 GETUPVAL                         R6 2
       75 GETTABLEKS                       R6 R6 K20 ["InputAssetId"]
       77 SETTABLEKS                       R6 R5 K1 ["field"]
       79 CALL                             R4 1 1
       80 SETTABLE                         R4 R2 R3
       81 SETTABLEKS                       R2 R1 K2 ["cases"]
       83 GETUPVAL                         R2 0
       84 DUPTABLE                         R3 K11 [{"kind", "field"}]
       85 GETUPVAL                         R4 1
       86 GETTABLEKS                       R4 R4 K12 ["NonEmpty"]
       88 SETTABLEKS                       R4 R3 K0 ["kind"]
       90 GETUPVAL                         R4 2
       91 GETTABLEKS                       R4 R4 K13 ["TextPrompt"]
       93 SETTABLEKS                       R4 R3 K1 ["field"]
       95 CALL                             R2 1 1
       96 SETTABLEKS                       R2 R1 K3 ["default"]
       98 CALL                             R0 1 -1
       99 RETURN                           R0 -1

PROTO_2:
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
       41 DUPTABLE                         R4 K12 [{"name", "inputType", "initialValue", "required"}]
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K13 ["TextPrompt"]
       45 SETTABLEKS                       R5 R4 K2 ["name"]
       47 GETUPVAL                         R5 2
       48 GETTABLEKS                       R5 R5 K14 ["String"]
       50 SETTABLEKS                       R5 R4 K3 ["inputType"]
       52 GETTABLEKS                       R5 R0 K15 ["textPrompt"]
       54 SETTABLEKS                       R5 R4 K5 ["initialValue"]
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K16 ["FFlagAssistantAskInputRequiredMarkers"]
       59 JUMPIFNOT                        R6 ; [+2]
       60 LOADB                            R5 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R5
       63 SETTABLEKS                       R5 R4 K11 ["required"]
       65 SETLIST                          R2 R3 2 [1]
       67 JUMPIFNOT                        R1 ; [+30]
       68 DUPTABLE                         R5 K12 [{"name", "inputType", "initialValue", "required"}]
       69 GETUPVAL                         R6 1
       70 GETTABLEKS                       R6 R6 K17 ["InputAssetId"]
       72 SETTABLEKS                       R6 R5 K2 ["name"]
       74 GETUPVAL                         R6 2
       75 GETTABLEKS                       R6 R6 K14 ["String"]
       77 SETTABLEKS                       R6 R5 K3 ["inputType"]
       79 GETTABLEKS                       R6 R0 K18 ["inputAssetId"]
       81 SETTABLEKS                       R6 R5 K5 ["initialValue"]
       83 GETUPVAL                         R7 0
       84 GETTABLEKS                       R7 R7 K16 ["FFlagAssistantAskInputRequiredMarkers"]
       86 JUMPIFNOT                        R7 ; [+2]
       87 LOADB                            R6 1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R6
       90 SETTABLEKS                       R6 R5 K11 ["required"]
       92 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       94 MOVE                             R4 R2
       95 GETIMPORT                        R3 K21 [table.insert]
       97 CALL                             R3 2 0
       98 DUPTABLE                         R5 K22 [{"name", "inputType", "initialValue"}]
       99 GETUPVAL                         R6 1
      100 GETTABLEKS                       R6 R6 K23 ["SelectedRigRef"]
      102 SETTABLEKS                       R6 R5 K2 ["name"]
      104 GETUPVAL                         R6 2
      105 GETTABLEKS                       R6 R6 K24 ["Instance"]
      107 SETTABLEKS                       R6 R5 K3 ["inputType"]
      109 GETTABLEKS                       R6 R0 K25 ["selectedRigRef"]
      111 SETTABLEKS                       R6 R5 K5 ["initialValue"]
      113 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      115 MOVE                             R4 R2
      116 GETIMPORT                        R3 K21 [table.insert]
      118 CALL                             R3 2 0
      119 DUPTABLE                         R5 K28 [{"name", "inputType", "initialValue", "min", "max"}]
      120 GETUPVAL                         R6 1
      121 GETTABLEKS                       R6 R6 K29 ["Duration"]
      123 SETTABLEKS                       R6 R5 K2 ["name"]
      125 GETUPVAL                         R6 2
      126 GETTABLEKS                       R6 R6 K30 ["Number"]
      128 SETTABLEKS                       R6 R5 K3 ["inputType"]
      130 GETTABLEKS                       R6 R0 K31 ["duration"]
      132 SETTABLEKS                       R6 R5 K5 ["initialValue"]
      134 GETUPVAL                         R6 5
      135 SETTABLEKS                       R6 R5 K26 ["min"]
      137 GETUPVAL                         R6 6
      138 SETTABLEKS                       R6 R5 K27 ["max"]
      140 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      142 MOVE                             R4 R2
      143 GETIMPORT                        R3 K21 [table.insert]
      145 CALL                             R3 2 0
      146 JUMPIFNOT                        R1 ; [+33]
      147 GETUPVAL                         R3 0
      148 GETTABLEKS                       R3 R3 K32 ["FFlagAssistantAddNumberInput"]
      150 JUMPIFNOT                        R3 ; [+12]
      151 GETUPVAL                         R3 7
      152 CALL                             R3 0 3
      153 FORGPREP                         R3
      154 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
      156 MOVE                             R9 R2
      157 MOVE                             R10 R7
      158 GETIMPORT                        R8 K21 [table.insert]
      160 CALL                             R8 2 0
      161 FORGLOOP                         R3 2 ; [-8]
      163 DUPTABLE                         R5 K33 [{"name", "inputType"}]
      164 GETUPVAL                         R6 1
      165 GETTABLEKS                       R6 R6 K34 ["ClipPreview"]
      167 SETTABLEKS                       R6 R5 K2 ["name"]
      169 GETUPVAL                         R6 2
      170 GETTABLEKS                       R6 R6 K14 ["String"]
      172 SETTABLEKS                       R6 R5 K3 ["inputType"]
      174 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      176 MOVE                             R4 R2
      177 GETIMPORT                        R3 K21 [table.insert]
      179 CALL                             R3 2 0
      180 DUPTABLE                         R3 K38 [{"formId", "fields", "validation"}]
      181 GETUPVAL                         R4 8
      182 GETTABLEKS                       R4 R4 K35 ["formId"]
      184 SETTABLEKS                       R4 R3 K35 ["formId"]
      186 SETTABLEKS                       R2 R3 K36 ["fields"]
      188 GETUPVAL                         R5 0
      189 GETTABLEKS                       R5 R5 K16 ["FFlagAssistantAskInputRequiredMarkers"]
      191 JUMPIFNOT                        R5 ; [+2]
      192 LOADNIL                          R4
      193 JUMP                             ; [+2]
      194 GETUPVAL                         R4 9
      195 CALL                             R4 0 1
      196 SETTABLEKS                       R4 R3 K37 ["validation"]
      198 RETURN                           R3 1

PROTO_3:
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
       34 JUMPIFNOTEQ                      R3 R4 ; [+26]
       36 GETUPVAL                         R3 3
       37 GETTABLEKS                       R3 R3 K12 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
       39 JUMPIF                           R3 ; [+21]
       40 DUPTABLE                         R5 K13 [{"name", "inputType", "initialValue"}]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K14 ["EditTextPrompt"]
       44 SETTABLEKS                       R6 R5 K1 ["name"]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K15 ["String"]
       49 SETTABLEKS                       R6 R5 K2 ["inputType"]
       51 GETTABLEKS                       R6 R0 K16 ["textPrompt"]
       53 SETTABLEKS                       R6 R5 K4 ["initialValue"]
       55 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       57 MOVE                             R4 R2
       58 GETIMPORT                        R3 K19 [table.insert]
       60 CALL                             R3 2 0
       61 DUPTABLE                         R5 K13 [{"name", "inputType", "initialValue"}]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K20 ["EditDuration"]
       65 SETTABLEKS                       R6 R5 K1 ["name"]
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K21 ["Number"]
       70 SETTABLEKS                       R6 R5 K2 ["inputType"]
       72 GETTABLEKS                       R6 R0 K22 ["duration"]
       74 JUMPIF                           R6 ; [+2]
       75 GETTABLEKS                       R6 R1 K22 ["duration"]
       77 SETTABLEKS                       R6 R5 K4 ["initialValue"]
       79 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       81 MOVE                             R4 R2
       82 GETIMPORT                        R3 K19 [table.insert]
       84 CALL                             R3 2 0
       85 DUPTABLE                         R5 K13 [{"name", "inputType", "initialValue"}]
       86 GETUPVAL                         R6 0
       87 GETTABLEKS                       R6 R6 K23 ["EditSourceId"]
       89 SETTABLEKS                       R6 R5 K1 ["name"]
       91 GETUPVAL                         R6 1
       92 GETTABLEKS                       R6 R6 K15 ["String"]
       94 SETTABLEKS                       R6 R5 K2 ["inputType"]
       96 GETTABLEKS                       R6 R1 K24 ["savedKeyframesContentId"]
       98 SETTABLEKS                       R6 R5 K4 ["initialValue"]
      100 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      102 MOVE                             R4 R2
      103 GETIMPORT                        R3 K19 [table.insert]
      105 CALL                             R3 2 0
      106 DUPTABLE                         R5 K13 [{"name", "inputType", "initialValue"}]
      107 GETUPVAL                         R6 0
      108 GETTABLEKS                       R6 R6 K25 ["EditSourceDuration"]
      110 SETTABLEKS                       R6 R5 K1 ["name"]
      112 GETUPVAL                         R6 1
      113 GETTABLEKS                       R6 R6 K21 ["Number"]
      115 SETTABLEKS                       R6 R5 K2 ["inputType"]
      117 GETTABLEKS                       R6 R1 K22 ["duration"]
      119 SETTABLEKS                       R6 R5 K4 ["initialValue"]
      121 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
      123 MOVE                             R4 R2
      124 GETIMPORT                        R3 K19 [table.insert]
      126 CALL                             R3 2 0
      127 DUPTABLE                         R3 K28 [{"formId", "fields"}]
      128 GETUPVAL                         R4 4
      129 GETTABLEKS                       R4 R4 K26 ["formId"]
      131 SETTABLEKS                       R4 R3 K26 ["formId"]
      133 SETTABLEKS                       R2 R3 K27 ["fields"]
      135 RETURN                           R3 1

PROTO_4:
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
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R14
       92 DUPCLOSURE                       R18 K27 [PROTO_2]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R17
      103 DUPCLOSURE                       R19 K28 [PROTO_3]
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R11
      109 DUPCLOSURE                       R20 K29 [PROTO_4]
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R19
      112 CAPTURE                          VAL R18
      113 RETURN                           R20 1
