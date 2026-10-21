PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GenerationMode"]
        3 GETTABLE                         R1 R0 R2
        4 GETUPVAL                         R2 1
        5 JUMPIFNOTEQ                      R1 R2 ; [+3]
        7 LOADK                            R2 K1 ["/generate_animation (Edit New)"]
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 2
       10 JUMPIFNOTEQ                      R1 R2 ; [+3]
       12 LOADK                            R2 K2 ["/generate_animation (Edit Upscale)"]
       13 RETURN                           R2 1
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["GenerationMode"]
        3 GETTABLE                         R2 R0 R3
        4 GETUPVAL                         R3 1
        5 JUMPIFNOTEQ                      R2 R3 ; [+69]
        7 NEWTABLE                         R3 16 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K1 ["TextPrompt"]
       12 GETUPVAL                         R5 2
       13 SETTABLE                         R5 R3 R4
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K2 ["EditTextPrompt"]
       17 GETUPVAL                         R5 2
       18 SETTABLE                         R5 R3 R4
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K3 ["SelectedRigRef"]
       22 GETUPVAL                         R5 3
       23 SETTABLE                         R5 R3 R4
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K4 ["Duration"]
       27 GETUPVAL                         R5 2
       28 SETTABLE                         R5 R3 R4
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K5 ["EditDuration"]
       32 GETUPVAL                         R5 2
       33 SETTABLE                         R5 R3 R4
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K6 ["InputAssetId"]
       37 GETUPVAL                         R5 3
       38 SETTABLE                         R5 R3 R4
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K7 ["ClipPreview"]
       42 GETUPVAL                         R5 4
       43 SETTABLE                         R5 R3 R4
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K8 ["EditSourceId"]
       47 GETUPVAL                         R5 2
       48 SETTABLE                         R5 R3 R4
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K9 ["ArmsReach"]
       52 GETUPVAL                         R5 2
       53 SETTABLE                         R5 R3 R4
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K10 ["LegsReach"]
       57 GETUPVAL                         R5 2
       58 SETTABLE                         R5 R3 R4
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R4 R4 K11 ["R6Blend"]
       62 GETUPVAL                         R5 2
       63 SETTABLE                         R5 R3 R4
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K12 ["UpperBodyBlend"]
       67 GETUPVAL                         R5 2
       68 SETTABLE                         R5 R3 R4
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K13 ["LowerBodyBlend"]
       72 GETUPVAL                         R5 2
       73 SETTABLE                         R5 R3 R4
       74 RETURN                           R3 1
       75 GETUPVAL                         R3 5
       76 JUMPIFNOTEQ                      R2 R3 ; [+74]
       78 NEWTABLE                         R3 16 0
       80 GETUPVAL                         R4 0
       81 GETTABLEKS                       R4 R4 K0 ["GenerationMode"]
       83 GETUPVAL                         R5 6
       84 SETTABLE                         R5 R3 R4
       85 GETUPVAL                         R4 0
       86 GETTABLEKS                       R4 R4 K1 ["TextPrompt"]
       88 GETUPVAL                         R5 2
       89 SETTABLE                         R5 R3 R4
       90 GETUPVAL                         R4 0
       91 GETTABLEKS                       R4 R4 K2 ["EditTextPrompt"]
       93 GETUPVAL                         R5 3
       94 SETTABLE                         R5 R3 R4
       95 GETUPVAL                         R4 0
       96 GETTABLEKS                       R4 R4 K3 ["SelectedRigRef"]
       98 GETUPVAL                         R5 2
       99 SETTABLE                         R5 R3 R4
      100 GETUPVAL                         R4 0
      101 GETTABLEKS                       R4 R4 K4 ["Duration"]
      103 GETUPVAL                         R5 2
      104 SETTABLE                         R5 R3 R4
      105 GETUPVAL                         R4 0
      106 GETTABLEKS                       R4 R4 K5 ["EditDuration"]
      108 GETUPVAL                         R5 2
      109 SETTABLE                         R5 R3 R4
      110 GETUPVAL                         R4 0
      111 GETTABLEKS                       R4 R4 K6 ["InputAssetId"]
      113 GETUPVAL                         R5 2
      114 SETTABLE                         R5 R3 R4
      115 GETUPVAL                         R4 0
      116 GETTABLEKS                       R4 R4 K7 ["ClipPreview"]
      118 GETUPVAL                         R5 2
      119 SETTABLE                         R5 R3 R4
      120 GETUPVAL                         R4 0
      121 GETTABLEKS                       R4 R4 K8 ["EditSourceId"]
      123 GETUPVAL                         R5 4
      124 SETTABLE                         R5 R3 R4
      125 GETUPVAL                         R4 0
      126 GETTABLEKS                       R4 R4 K9 ["ArmsReach"]
      128 GETUPVAL                         R5 2
      129 SETTABLE                         R5 R3 R4
      130 GETUPVAL                         R4 0
      131 GETTABLEKS                       R4 R4 K10 ["LegsReach"]
      133 GETUPVAL                         R5 2
      134 SETTABLE                         R5 R3 R4
      135 GETUPVAL                         R4 0
      136 GETTABLEKS                       R4 R4 K11 ["R6Blend"]
      138 GETUPVAL                         R5 2
      139 SETTABLE                         R5 R3 R4
      140 GETUPVAL                         R4 0
      141 GETTABLEKS                       R4 R4 K12 ["UpperBodyBlend"]
      143 GETUPVAL                         R5 2
      144 SETTABLE                         R5 R3 R4
      145 GETUPVAL                         R4 0
      146 GETTABLEKS                       R4 R4 K13 ["LowerBodyBlend"]
      148 GETUPVAL                         R5 2
      149 SETTABLE                         R5 R3 R4
      150 RETURN                           R3 1
      151 GETUPVAL                         R3 7
      152 JUMPIFNOTEQ                      R2 R3 ; [+74]
      154 NEWTABLE                         R3 16 0
      156 GETUPVAL                         R4 0
      157 GETTABLEKS                       R4 R4 K0 ["GenerationMode"]
      159 GETUPVAL                         R5 6
      160 SETTABLE                         R5 R3 R4
      161 GETUPVAL                         R4 0
      162 GETTABLEKS                       R4 R4 K1 ["TextPrompt"]
      164 GETUPVAL                         R5 2
      165 SETTABLE                         R5 R3 R4
      166 GETUPVAL                         R4 0
      167 GETTABLEKS                       R4 R4 K2 ["EditTextPrompt"]
      169 GETUPVAL                         R5 2
      170 SETTABLE                         R5 R3 R4
      171 GETUPVAL                         R4 0
      172 GETTABLEKS                       R4 R4 K3 ["SelectedRigRef"]
      174 GETUPVAL                         R5 2
      175 SETTABLE                         R5 R3 R4
      176 GETUPVAL                         R4 0
      177 GETTABLEKS                       R4 R4 K4 ["Duration"]
      179 GETUPVAL                         R5 2
      180 SETTABLE                         R5 R3 R4
      181 GETUPVAL                         R4 0
      182 GETTABLEKS                       R4 R4 K5 ["EditDuration"]
      184 GETUPVAL                         R5 2
      185 SETTABLE                         R5 R3 R4
      186 GETUPVAL                         R4 0
      187 GETTABLEKS                       R4 R4 K6 ["InputAssetId"]
      189 GETUPVAL                         R5 2
      190 SETTABLE                         R5 R3 R4
      191 GETUPVAL                         R4 0
      192 GETTABLEKS                       R4 R4 K7 ["ClipPreview"]
      194 GETUPVAL                         R5 2
      195 SETTABLE                         R5 R3 R4
      196 GETUPVAL                         R4 0
      197 GETTABLEKS                       R4 R4 K8 ["EditSourceId"]
      199 GETUPVAL                         R5 4
      200 SETTABLE                         R5 R3 R4
      201 GETUPVAL                         R4 0
      202 GETTABLEKS                       R4 R4 K9 ["ArmsReach"]
      204 GETUPVAL                         R5 3
      205 SETTABLE                         R5 R3 R4
      206 GETUPVAL                         R4 0
      207 GETTABLEKS                       R4 R4 K10 ["LegsReach"]
      209 GETUPVAL                         R5 3
      210 SETTABLE                         R5 R3 R4
      211 GETUPVAL                         R4 0
      212 GETTABLEKS                       R4 R4 K11 ["R6Blend"]
      214 GETUPVAL                         R5 3
      215 SETTABLE                         R5 R3 R4
      216 GETUPVAL                         R4 0
      217 GETTABLEKS                       R4 R4 K12 ["UpperBodyBlend"]
      219 GETUPVAL                         R5 3
      220 SETTABLE                         R5 R3 R4
      221 GETUPVAL                         R4 0
      222 GETTABLEKS                       R4 R4 K13 ["LowerBodyBlend"]
      224 GETUPVAL                         R5 3
      225 SETTABLE                         R5 R3 R4
      226 RETURN                           R3 1
      227 NEWTABLE                         R3 16 0
      229 GETUPVAL                         R4 0
      230 GETTABLEKS                       R4 R4 K1 ["TextPrompt"]
      232 GETUPVAL                         R5 3
      233 SETTABLE                         R5 R3 R4
      234 GETUPVAL                         R4 0
      235 GETTABLEKS                       R4 R4 K2 ["EditTextPrompt"]
      237 GETUPVAL                         R5 2
      238 SETTABLE                         R5 R3 R4
      239 GETUPVAL                         R4 0
      240 GETTABLEKS                       R4 R4 K3 ["SelectedRigRef"]
      242 GETUPVAL                         R5 3
      243 SETTABLE                         R5 R3 R4
      244 GETUPVAL                         R4 0
      245 GETTABLEKS                       R4 R4 K4 ["Duration"]
      247 GETUPVAL                         R5 3
      248 SETTABLE                         R5 R3 R4
      249 GETUPVAL                         R4 0
      250 GETTABLEKS                       R4 R4 K5 ["EditDuration"]
      252 GETUPVAL                         R5 2
      253 SETTABLE                         R5 R3 R4
      254 GETUPVAL                         R4 0
      255 GETTABLEKS                       R4 R4 K6 ["InputAssetId"]
      257 GETUPVAL                         R5 2
      258 SETTABLE                         R5 R3 R4
      259 GETUPVAL                         R4 0
      260 GETTABLEKS                       R4 R4 K7 ["ClipPreview"]
      262 GETUPVAL                         R5 2
      263 SETTABLE                         R5 R3 R4
      264 GETUPVAL                         R4 0
      265 GETTABLEKS                       R4 R4 K8 ["EditSourceId"]
      267 GETUPVAL                         R5 2
      268 SETTABLE                         R5 R3 R4
      269 GETUPVAL                         R4 0
      270 GETTABLEKS                       R4 R4 K9 ["ArmsReach"]
      272 GETUPVAL                         R5 2
      273 SETTABLE                         R5 R3 R4
      274 GETUPVAL                         R4 0
      275 GETTABLEKS                       R4 R4 K10 ["LegsReach"]
      277 GETUPVAL                         R5 2
      278 SETTABLE                         R5 R3 R4
      279 GETUPVAL                         R4 0
      280 GETTABLEKS                       R4 R4 K11 ["R6Blend"]
      282 GETUPVAL                         R5 2
      283 SETTABLE                         R5 R3 R4
      284 GETUPVAL                         R4 0
      285 GETTABLEKS                       R4 R4 K12 ["UpperBodyBlend"]
      287 GETUPVAL                         R5 2
      288 SETTABLE                         R5 R3 R4
      289 GETUPVAL                         R4 0
      290 GETTABLEKS                       R4 R4 K13 ["LowerBodyBlend"]
      292 GETUPVAL                         R5 2
      293 SETTABLE                         R5 R3 R4
      294 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R2 1 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["ReduceTriangles"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K1 ["SetupType"]
        8 GETTABLE                         R5 R0 R6
        9 JUMPIFNOTEQKS                    R5 K2 ["Development"] ; [+3]
       11 GETUPVAL                         R4 1
       12 JUMP                             ; [+1]
       13 GETUPVAL                         R4 2
       14 SETTABLE                         R4 R2 R3
       15 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
        3 GETTABLE                         R2 R0 R3
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Image"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+29]
        9 NEWTABLE                         R2 8 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["TextPrompt"]
       14 GETUPVAL                         R4 2
       15 SETTABLE                         R4 R2 R3
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["TextPartNames"]
       19 GETUPVAL                         R4 2
       20 SETTABLE                         R4 R2 R3
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K4 ["HintImage"]
       24 GETUPVAL                         R4 3
       25 SETTABLE                         R4 R2 R3
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K5 ["ImagePartNames"]
       29 GETUPVAL                         R4 3
       30 SETTABLE                         R4 R2 R3
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K6 ["SuggestSegmentation"]
       34 DUPTABLE                         R4 K9 [{["interactable"] = False}]
       35 SETTABLE                         R4 R2 R3
       36 RETURN                           R2 1
       37 GETTABLEKS                       R2 R1 K10 ["isSubmitted"]
       39 JUMPIFNOT                        R2 ; [+8]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K4 ["HintImage"]
       43 GETTABLE                         R3 R0 R4
       44 JUMPIFNOTEQKNIL                  R3 ; [+2]
       46 LOADB                            R2 0 +1
       47 LOADB                            R2 1
       48 NEWTABLE                         R3 8 0
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K2 ["TextPrompt"]
       53 GETUPVAL                         R5 3
       54 SETTABLE                         R5 R3 R4
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K3 ["TextPartNames"]
       58 GETUPVAL                         R5 3
       59 SETTABLE                         R5 R3 R4
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K4 ["HintImage"]
       63 JUMPIFNOT                        R2 ; [+2]
       64 GETUPVAL                         R5 3
       65 JUMP                             ; [+1]
       66 GETUPVAL                         R5 2
       67 SETTABLE                         R5 R3 R4
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R4 R4 K5 ["ImagePartNames"]
       71 GETUPVAL                         R5 2
       72 SETTABLE                         R5 R3 R4
       73 GETUPVAL                         R4 0
       74 GETTABLEKS                       R4 R4 K6 ["SuggestSegmentation"]
       76 DUPTABLE                         R5 K12 [{["interactable"] = True}]
       77 SETTABLE                         R5 R3 R4
       78 RETURN                           R3 1

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLE                         R1 R2 R0
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETUPVAL                         R2 0
       10 GETTABLE                         R1 R2 R0
       11 RETURN                           R1 1
       12 GETUPVAL                         R2 1
       13 GETTABLE                         R1 R2 R0
       14 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getForm"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETTABLEKS                       R4 R2 K1 ["rows"]
        8 GETTABLE                         R3 R4 R1
        9 JUMPIF                           R3 ; [+1]
       10 GETUPVAL                         R3 1
       11 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R2 R0 K0 ["formId"]
        6 SETTABLE                         R0 R1 R2
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Util"]
       13 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       15 GETTABLEKS                       R3 R3 K8 ["AnimationGenTypes"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K6 ["Util"]
       22 GETTABLEKS                       R4 R4 K9 ["AskInput"]
       24 GETTABLEKS                       R4 R4 K10 ["AskInputTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R1 K11 ["Flags"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R1 K12 ["Parent"]
       36 GETTABLEKS                       R6 R6 K13 ["Gen3dCore"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R1 K6 ["Util"]
       43 GETTABLEKS                       R7 R7 K14 ["MeshGen"]
       45 GETTABLEKS                       R7 R7 K15 ["MeshGenConstants"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R1 K16 ["Components"]
       52 GETTABLEKS                       R8 R8 K17 ["PropertyRows"]
       54 GETTABLEKS                       R8 R8 K18 ["PropertyRowTypes"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R1 K6 ["Util"]
       61 GETTABLEKS                       R9 R9 K7 ["AnimationGen"]
       63 GETTABLEKS                       R9 R9 K19 ["ReachSteps"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R10 R1 K6 ["Util"]
       70 GETTABLEKS                       R10 R10 K20 ["TextureGen"]
       72 GETTABLEKS                       R10 R10 K21 ["TextureGenTypes"]
       74 CALL                             R9 1 1
       75 GETTABLEKS                       R10 R5 K22 ["SegmentationEnums"]
       77 GETTABLEKS                       R11 R3 K23 ["RULE_KIND"]
       79 GETTABLEKS                       R12 R7 K24 ["ROW_TYPES"]
       81 GETTABLEKS                       R13 R10 K25 ["PromptMode"]
       83 GETTABLEKS                       R14 R3 K26 ["asRule"]
       85 DUPTABLE                         R15 K28 [{["TextureGen"] = "TextureGen", ["SegmentMesh"] = "SegmentMesh"}]
       86 DUPTABLE                         R16 K31 [{["AnimationGenEditPreviewReach"] = "AnimationGenEditPreviewReach", ["AnimationGenEditPreviewBlend"] = "AnimationGenEditPreviewBlend"}]
       87 NEWTABLE                         R17 0 0
       89 NEWTABLE                         R18 8 0
       91 DUPTABLE                         R19 K60 [{["GenerationMode"] = "generationMode", ["TextPrompt"] = "textPrompt", ["EditTextPrompt"] = "editTextPrompt", ["SelectedRigRef"] = "selectedRigRef", ["Duration"] = "duration", ["EditDuration"] = "editDuration", ["InputAssetId"] = "inputAssetId", ["ClipPreview"] = "clipPreview", ["EditSourceId"] = "editSourceId", ["ArmsReach"] = "armsReach", ["LegsReach"] = "legsReach", ["R6Blend"] = "r6Blend", ["UpperBodyBlend"] = "upperBodyBlend", ["LowerBodyBlend"] = "lowerBodyBlend"}]
       92 GETTABLEKS                       R20 R2 K61 ["GenerationModes"]
       94 GETTABLEKS                       R20 R20 K62 ["New"]
       96 GETTABLEKS                       R21 R2 K61 ["GenerationModes"]
       98 GETTABLEKS                       R21 R21 K63 ["Upscale"]
      100 GETTABLEKS                       R22 R2 K61 ["GenerationModes"]
      102 GETTABLEKS                       R22 R22 K64 ["EditNew"]
      104 GETTABLEKS                       R23 R2 K61 ["GenerationModes"]
      106 GETTABLEKS                       R23 R23 K65 ["EditUpscale"]
      108 DUPTABLE                         R24 K69 [{["visible"] = True, ["enabled"] = True}]
      109 DUPTABLE                         R25 K71 [{["visible"] = False, ["enabled"] = False}]
      110 DUPTABLE                         R26 K72 [{["visible"] = False, ["enabled"] = True}]
      111 DUPTABLE                         R27 K73 [{["visible"] = True, ["enabled"] = False}]
      112 DUPTABLE                         R28 K83 [{["formId"] = "generate_animation", ["heading"] = "/generate_animation", ["headingResolver"], ["row"], ["confirmButton"], ["axisResolver"], ["rows"]}]
      113 DUPCLOSURE                       R29 K84 [PROTO_0]
      114 CAPTURE                          VAL R19
      115 CAPTURE                          VAL R22
      116 CAPTURE                          VAL R23
      117 SETTABLEKS                       R29 R28 K78 ["headingResolver"]
      119 SETTABLEKS                       R19 R28 K79 ["row"]
      121 DUPTABLE                         R29 K88 [{["namespace"] = "AnimationGen", ["key"] = "InputGenerate"}]
      122 SETTABLEKS                       R29 R28 K80 ["confirmButton"]
      124 DUPCLOSURE                       R29 K89 [PROTO_1]
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R21
      127 CAPTURE                          VAL R25
      128 CAPTURE                          VAL R24
      129 CAPTURE                          VAL R27
      130 CAPTURE                          VAL R22
      131 CAPTURE                          VAL R26
      132 CAPTURE                          VAL R23
      133 SETTABLEKS                       R29 R28 K81 ["axisResolver"]
      135 NEWTABLE                         R29 16 0
      137 GETTABLEKS                       R30 R19 K32 ["GenerationMode"]
      139 DUPTABLE                         R31 K93 [{["label"] = "Mode", ["optionLabels"]}]
      140 NEWTABLE                         R32 4 0
      142 LOADK                            R33 K94 ["New animation"]
      143 SETTABLE                         R33 R32 R20
      144 LOADK                            R33 K95 ["Upscale animation"]
      145 SETTABLE                         R33 R32 R21
      146 LOADK                            R33 K96 ["Edit New"]
      147 SETTABLE                         R33 R32 R22
      148 LOADK                            R33 K97 ["Edit Upscale"]
      149 SETTABLE                         R33 R32 R23
      150 SETTABLEKS                       R32 R31 K92 ["optionLabels"]
      152 SETTABLE                         R31 R29 R30
      153 GETTABLEKS                       R30 R19 K34 ["TextPrompt"]
      155 DUPTABLE                         R31 K101 [{["label"], ["multiLine"] = True, ["requirementMessage"] = "A text prompt is required"}]
      156 DUPTABLE                         R32 K103 [{["namespace"] = "AnimationGen", ["key"] = "Prompt"}]
      157 SETTABLEKS                       R32 R31 K90 ["label"]
      159 SETTABLE                         R31 R29 R30
      160 GETTABLEKS                       R30 R19 K36 ["EditTextPrompt"]
      162 DUPTABLE                         R31 K104 [{["label"], ["multiLine"] = True}]
      163 DUPTABLE                         R32 K103 [{["namespace"] = "AnimationGen", ["key"] = "Prompt"}]
      164 SETTABLEKS                       R32 R31 K90 ["label"]
      166 SETTABLE                         R31 R29 R30
      167 GETTABLEKS                       R30 R19 K38 ["SelectedRigRef"]
      169 DUPTABLE                         R31 K106 [{["label"], ["shouldSelectModel"] = True}]
      170 DUPTABLE                         R32 K108 [{["namespace"] = "AnimationGen", ["key"] = "InputRig"}]
      171 SETTABLEKS                       R32 R31 K90 ["label"]
      173 SETTABLE                         R31 R29 R30
      174 GETTABLEKS                       R30 R19 K40 ["Duration"]
      176 DUPTABLE                         R31 K109 [{"label"}]
      177 DUPTABLE                         R32 K111 [{["namespace"] = "AnimationGen", ["key"] = "InputDuration"}]
      178 SETTABLEKS                       R32 R31 K90 ["label"]
      180 SETTABLE                         R31 R29 R30
      181 GETTABLEKS                       R30 R19 K42 ["EditDuration"]
      183 DUPTABLE                         R31 K113 [{["internal"] = True}]
      184 SETTABLE                         R31 R29 R30
      185 GETTABLEKS                       R30 R19 K44 ["InputAssetId"]
      187 DUPTABLE                         R31 K117 [{["label"] = "Animation clip", ["renderer"], ["requirementMessage"] = "An animation clip is required for upscaling"}]
      188 GETTABLEKS                       R32 R12 K118 ["Content"]
      190 SETTABLEKS                       R32 R31 K115 ["renderer"]
      192 SETTABLE                         R31 R29 R30
      193 GETTABLEKS                       R30 R19 K46 ["ClipPreview"]
      195 DUPTABLE                         R31 K121 [{"renderer", "clipRowName", "rigRowName"}]
      196 GETTABLEKS                       R32 R12 K46 ["ClipPreview"]
      198 SETTABLEKS                       R32 R31 K115 ["renderer"]
      200 GETTABLEKS                       R32 R19 K44 ["InputAssetId"]
      202 SETTABLEKS                       R32 R31 K119 ["clipRowName"]
      204 GETTABLEKS                       R32 R19 K38 ["SelectedRigRef"]
      206 SETTABLEKS                       R32 R31 K120 ["rigRowName"]
      208 SETTABLE                         R31 R29 R30
      209 GETTABLEKS                       R30 R19 K48 ["EditSourceId"]
      211 DUPTABLE                         R31 K123 [{"renderer", "durationRowName"}]
      212 GETTABLEKS                       R32 R12 K124 ["EditScrubbar"]
      214 SETTABLEKS                       R32 R31 K115 ["renderer"]
      216 GETTABLEKS                       R32 R19 K42 ["EditDuration"]
      218 SETTABLEKS                       R32 R31 K122 ["durationRowName"]
      220 SETTABLE                         R31 R29 R30
      221 GETTABLEKS                       R30 R19 K50 ["ArmsReach"]
      223 DUPTABLE                         R31 K135 [{["label"] = "Arms Bending", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["snapValue"], ["valueChangedAction"]}]
      224 GETTABLEKS                       R32 R12 K136 ["NumberInput"]
      226 SETTABLEKS                       R32 R31 K115 ["renderer"]
      228 GETTABLEKS                       R32 R8 K137 ["snapPercent"]
      230 SETTABLEKS                       R32 R31 K133 ["snapValue"]
      232 GETTABLEKS                       R32 R16 K29 ["AnimationGenEditPreviewReach"]
      234 SETTABLEKS                       R32 R31 K134 ["valueChangedAction"]
      236 SETTABLE                         R31 R29 R30
      237 GETTABLEKS                       R30 R19 K52 ["LegsReach"]
      239 DUPTABLE                         R31 K139 [{["label"] = "Legs Bending", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["snapValue"], ["valueChangedAction"]}]
      240 GETTABLEKS                       R32 R12 K136 ["NumberInput"]
      242 SETTABLEKS                       R32 R31 K115 ["renderer"]
      244 GETTABLEKS                       R32 R8 K137 ["snapPercent"]
      246 SETTABLEKS                       R32 R31 K133 ["snapValue"]
      248 GETTABLEKS                       R32 R16 K29 ["AnimationGenEditPreviewReach"]
      250 SETTABLEKS                       R32 R31 K134 ["valueChangedAction"]
      252 SETTABLE                         R31 R29 R30
      253 GETTABLEKS                       R30 R19 K54 ["R6Blend"]
      255 DUPTABLE                         R31 K141 [{["label"] = "Blend with R6", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      256 GETTABLEKS                       R32 R12 K136 ["NumberInput"]
      258 SETTABLEKS                       R32 R31 K115 ["renderer"]
      260 GETTABLEKS                       R32 R16 K30 ["AnimationGenEditPreviewBlend"]
      262 SETTABLEKS                       R32 R31 K134 ["valueChangedAction"]
      264 SETTABLE                         R31 R29 R30
      265 GETTABLEKS                       R30 R19 K56 ["UpperBodyBlend"]
      267 DUPTABLE                         R31 K143 [{["label"] = "Upper Body Blend", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      268 GETTABLEKS                       R32 R12 K136 ["NumberInput"]
      270 SETTABLEKS                       R32 R31 K115 ["renderer"]
      272 GETTABLEKS                       R32 R16 K30 ["AnimationGenEditPreviewBlend"]
      274 SETTABLEKS                       R32 R31 K134 ["valueChangedAction"]
      276 SETTABLE                         R31 R29 R30
      277 GETTABLEKS                       R30 R19 K58 ["LowerBodyBlend"]
      279 DUPTABLE                         R31 K145 [{["label"] = "Lower Body Blend", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      280 GETTABLEKS                       R32 R12 K136 ["NumberInput"]
      282 SETTABLEKS                       R32 R31 K115 ["renderer"]
      284 GETTABLEKS                       R32 R16 K30 ["AnimationGenEditPreviewBlend"]
      286 SETTABLEKS                       R32 R31 K134 ["valueChangedAction"]
      288 SETTABLE                         R31 R29 R30
      289 SETTABLEKS                       R29 R28 K82 ["rows"]
      291 SETTABLEKS                       R28 R18 K7 ["AnimationGen"]
      293 DUPTABLE                         R19 K160 [{["SelectedModelRef"] = "selectedModelRef", ["SetupType"] = "setup_type", ["R15Plus"] = "r15_plus", ["AlignFrontAngle"] = "align_front_angle", ["DecalToDynamicHead"] = "decal_to_dynamic_head", ["EnableAdditionalHeadProcessing"] = "enable_additional_head_processing", ["ReduceTriangles"] = "reduce_triangles"}]
      294 DUPTABLE                         R20 K163 [{["Platform"] = "Platform", ["Development"] = "Development"}]
      295 DUPTABLE                         R21 K69 [{["visible"] = True, ["enabled"] = True}]
      296 DUPTABLE                         R22 K71 [{["visible"] = False, ["enabled"] = False}]
      297 DUPTABLE                         R23 K166 [{["formId"] = "auto_setup_avatar", ["heading"] = "/auto_setup_avatar", ["row"], ["confirmButton"], ["axisResolver"], ["rows"]}]
      298 SETTABLEKS                       R19 R23 K79 ["row"]
      300 DUPTABLE                         R24 K169 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputSetUpAvatar"}]
      301 SETTABLEKS                       R24 R23 K80 ["confirmButton"]
      303 DUPCLOSURE                       R24 K170 [PROTO_2]
      304 CAPTURE                          VAL R19
      305 CAPTURE                          VAL R21
      306 CAPTURE                          VAL R22
      307 SETTABLEKS                       R24 R23 K81 ["axisResolver"]
      309 NEWTABLE                         R24 8 0
      311 GETTABLEKS                       R25 R19 K146 ["SelectedModelRef"]
      313 DUPTABLE                         R26 K171 [{["label"], ["shouldSelectModel"] = True, ["requirementMessage"]}]
      314 DUPTABLE                         R27 K173 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputModel"}]
      315 SETTABLEKS                       R27 R26 K90 ["label"]
      317 DUPTABLE                         R27 K175 [{["namespace"] = "AvatarAutoSetup", ["key"] = "ModelRequired"}]
      318 SETTABLEKS                       R27 R26 K99 ["requirementMessage"]
      320 SETTABLE                         R26 R24 R25
      321 GETTABLEKS                       R25 R19 K148 ["SetupType"]
      323 DUPTABLE                         R26 K176 [{"label", "optionLabels"}]
      324 DUPTABLE                         R27 K178 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "SetupType"}]
      325 SETTABLEKS                       R27 R26 K90 ["label"]
      327 NEWTABLE                         R27 2 0
      329 DUPTABLE                         R28 K180 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "PlatformAvatar"}]
      330 SETTABLEKS                       R28 R27 K161 ["Platform"]
      332 DUPTABLE                         R28 K182 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "DevelopmentAvatar"}]
      333 SETTABLEKS                       R28 R27 K162 ["Development"]
      335 SETTABLEKS                       R27 R26 K92 ["optionLabels"]
      337 SETTABLE                         R26 R24 R25
      338 GETTABLEKS                       R25 R19 K150 ["R15Plus"]
      340 DUPTABLE                         R26 K184 [{"label", "infoPopover"}]
      341 DUPTABLE                         R27 K185 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "R15Plus"}]
      342 SETTABLEKS                       R27 R26 K90 ["label"]
      344 DUPTABLE                         R27 K187 [{"body"}]
      345 DUPTABLE                         R28 K189 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "R15PlusDescription"}]
      346 SETTABLEKS                       R28 R27 K186 ["body"]
      348 SETTABLEKS                       R27 R26 K183 ["infoPopover"]
      350 SETTABLE                         R26 R24 R25
      351 GETTABLEKS                       R25 R19 K152 ["AlignFrontAngle"]
      353 DUPTABLE                         R26 K184 [{"label", "infoPopover"}]
      354 DUPTABLE                         R27 K191 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "AlignFront"}]
      355 SETTABLEKS                       R27 R26 K90 ["label"]
      357 DUPTABLE                         R27 K187 [{"body"}]
      358 DUPTABLE                         R28 K193 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "AlignFrontDescription"}]
      359 SETTABLEKS                       R28 R27 K186 ["body"]
      361 SETTABLEKS                       R27 R26 K183 ["infoPopover"]
      363 SETTABLE                         R26 R24 R25
      364 GETTABLEKS                       R25 R19 K154 ["DecalToDynamicHead"]
      366 DUPTABLE                         R26 K184 [{"label", "infoPopover"}]
      367 DUPTABLE                         R27 K194 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "DecalToDynamicHead"}]
      368 SETTABLEKS                       R27 R26 K90 ["label"]
      370 DUPTABLE                         R27 K187 [{"body"}]
      371 DUPTABLE                         R28 K196 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "DecalToDynamicHeadDescription"}]
      372 SETTABLEKS                       R28 R27 K186 ["body"]
      374 SETTABLEKS                       R27 R26 K183 ["infoPopover"]
      376 SETTABLE                         R26 R24 R25
      377 GETTABLEKS                       R25 R19 K156 ["EnableAdditionalHeadProcessing"]
      379 DUPTABLE                         R26 K184 [{"label", "infoPopover"}]
      380 DUPTABLE                         R27 K198 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "FacialCaging"}]
      381 SETTABLEKS                       R27 R26 K90 ["label"]
      383 DUPTABLE                         R27 K187 [{"body"}]
      384 DUPTABLE                         R28 K200 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "FacialCagingDescription"}]
      385 SETTABLEKS                       R28 R27 K186 ["body"]
      387 SETTABLEKS                       R27 R26 K183 ["infoPopover"]
      389 SETTABLE                         R26 R24 R25
      390 GETTABLEKS                       R25 R19 K158 ["ReduceTriangles"]
      392 DUPTABLE                         R26 K184 [{"label", "infoPopover"}]
      393 DUPTABLE                         R27 K201 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "ReduceTriangles"}]
      394 SETTABLEKS                       R27 R26 K90 ["label"]
      396 DUPTABLE                         R27 K187 [{"body"}]
      397 DUPTABLE                         R28 K203 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "ReduceTrianglesDescription"}]
      398 SETTABLEKS                       R28 R27 K186 ["body"]
      400 SETTABLEKS                       R27 R26 K183 ["infoPopover"]
      402 SETTABLE                         R26 R24 R25
      403 SETTABLEKS                       R24 R23 K82 ["rows"]
      405 SETTABLEKS                       R23 R18 K167 ["AvatarAutoSetup"]
      407 DUPTABLE                         R19 K204 [{["TextPrompt"] = "textPrompt"}]
      408 DUPTABLE                         R20 K207 [{["formId"] = "generate_avatar", ["heading"] = "/generate_avatar", ["row"], ["confirmButton"], ["rows"]}]
      409 SETTABLEKS                       R19 R20 K79 ["row"]
      411 DUPTABLE                         R21 K210 [{["namespace"] = "AvatarGen", ["key"] = "InputGenerateAvatar"}]
      412 SETTABLEKS                       R21 R20 K80 ["confirmButton"]
      414 NEWTABLE                         R21 1 0
      416 GETTABLEKS                       R22 R19 K34 ["TextPrompt"]
      418 DUPTABLE                         R23 K212 [{["label"], ["multiLine"] = True, ["placeholder"], ["requirementMessage"]}]
      419 DUPTABLE                         R24 K214 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      420 SETTABLEKS                       R24 R23 K90 ["label"]
      422 DUPTABLE                         R24 K216 [{["namespace"] = "AvatarGen", ["key"] = "InputPromptPlaceholder"}]
      423 SETTABLEKS                       R24 R23 K211 ["placeholder"]
      425 DUPTABLE                         R24 K218 [{["namespace"] = "AvatarGen", ["key"] = "PromptRequired"}]
      426 SETTABLEKS                       R24 R23 K99 ["requirementMessage"]
      428 SETTABLE                         R23 R21 R22
      429 SETTABLEKS                       R21 R20 K82 ["rows"]
      431 SETTABLEKS                       R20 R18 K208 ["AvatarGen"]
      433 DUPTABLE                         R19 K223 [{["TextPrompt"] = "textPrompt", ["IsometricImage"] = "isometricImage", ["TopDownImage"] = "topDownImage"}]
      434 DUPTABLE                         R20 K227 [{["formId"] = "generate_layout", ["heading"] = "/generate_layout", ["row"], ["confirmButton"], ["imageSelection"], ["rows"]}]
      435 SETTABLEKS                       R19 R20 K79 ["row"]
      437 DUPTABLE                         R21 K230 [{["namespace"] = "GenerateLayout", ["key"] = "Generate"}]
      438 SETTABLEKS                       R21 R20 K80 ["confirmButton"]
      440 DUPTABLE                         R21 K242 [{["promptKey"], ["wizardMode"] = True, ["slotCount"] = 4, ["model"] = "cube-layout-image", ["timeoutSeconds"] = 240, ["removeBackground"] = False, ["promptTemplatesByField"], ["seedImageFieldsByField"]}]
      441 GETTABLEKS                       R22 R19 K34 ["TextPrompt"]
      443 SETTABLEKS                       R22 R21 K231 ["promptKey"]
      445 NEWTABLE                         R22 2 0
      447 GETTABLEKS                       R23 R19 K219 ["IsometricImage"]
      449 GETTABLEKS                       R25 R5 K243 ["Constants"]
      451 GETTABLEKS                       R25 R25 K244 ["LAYOUT_MAP_PROMPT_PREFIX"]
      453 GETTABLEKS                       R26 R5 K245 ["PromptTemplate"]
      455 GETTABLEKS                       R26 R26 K246 ["PLACEHOLDER"]
      457 GETTABLEKS                       R27 R5 K243 ["Constants"]
      459 GETTABLEKS                       R27 R27 K247 ["LAYOUT_MAP_PROMPT_SUFFIX"]
      461 CONCAT                           R24 R25 R27
      462 SETTABLE                         R24 R22 R23
      463 GETTABLEKS                       R23 R19 K221 ["TopDownImage"]
      465 GETTABLEKS                       R25 R5 K243 ["Constants"]
      467 GETTABLEKS                       R25 R25 K248 ["LAYOUT_TOPDOWN_PROMPT_PREFIX"]
      469 GETTABLEKS                       R26 R5 K245 ["PromptTemplate"]
      471 GETTABLEKS                       R26 R26 K246 ["PLACEHOLDER"]
      473 GETTABLEKS                       R27 R5 K243 ["Constants"]
      475 GETTABLEKS                       R27 R27 K249 ["LAYOUT_TOPDOWN_PROMPT_SUFFIX"]
      477 CONCAT                           R24 R25 R27
      478 SETTABLE                         R24 R22 R23
      479 SETTABLEKS                       R22 R21 K240 ["promptTemplatesByField"]
      481 NEWTABLE                         R22 2 0
      483 GETTABLEKS                       R23 R19 K219 ["IsometricImage"]
      485 GETTABLEKS                       R24 R19 K219 ["IsometricImage"]
      487 SETTABLE                         R24 R22 R23
      488 GETTABLEKS                       R23 R19 K221 ["TopDownImage"]
      490 GETTABLEKS                       R24 R19 K219 ["IsometricImage"]
      492 SETTABLE                         R24 R22 R23
      493 SETTABLEKS                       R22 R21 K241 ["seedImageFieldsByField"]
      495 SETTABLEKS                       R21 R20 K226 ["imageSelection"]
      497 NEWTABLE                         R21 4 0
      499 GETTABLEKS                       R22 R19 K34 ["TextPrompt"]
      501 DUPTABLE                         R23 K250 [{["label"], ["internal"] = True}]
      502 DUPTABLE                         R24 K251 [{["namespace"] = "GenerateLayout", ["key"] = "InputPromptTitle"}]
      503 SETTABLEKS                       R24 R23 K90 ["label"]
      505 SETTABLE                         R23 R21 R22
      506 GETTABLEKS                       R22 R19 K219 ["IsometricImage"]
      508 DUPTABLE                         R23 K109 [{"label"}]
      509 DUPTABLE                         R24 K253 [{["namespace"] = "GenerateLayout", ["key"] = "InputIsometricImageTitle"}]
      510 SETTABLEKS                       R24 R23 K90 ["label"]
      512 SETTABLE                         R23 R21 R22
      513 GETTABLEKS                       R22 R19 K221 ["TopDownImage"]
      515 DUPTABLE                         R23 K109 [{"label"}]
      516 DUPTABLE                         R24 K255 [{["namespace"] = "GenerateLayout", ["key"] = "InputTopDownImageTitle"}]
      517 SETTABLEKS                       R24 R23 K90 ["label"]
      519 SETTABLE                         R23 R21 R22
      520 SETTABLEKS                       R21 R20 K82 ["rows"]
      522 SETTABLEKS                       R20 R18 K228 ["GenerateLayout"]
      524 DUPTABLE                         R19 K269 [{["PromptMode"] = "promptMode", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["MaxTriangles"] = "maxTriangles", ["TextPartNames"] = "textPartNames", ["ImagePartNames"] = "imagePartNames", ["SuggestSegmentation"] = "suggestSegmentation", ["SelectedInstanceRef"] = "selectedInstanceRef"}]
      525 GETTABLEKS                       R20 R4 K270 ["FFlagAssistantSegmentationPromptModeSelector"]
      527 DUPTABLE                         R21 K69 [{["visible"] = True, ["enabled"] = True}]
      528 DUPTABLE                         R22 K71 [{["visible"] = False, ["enabled"] = False}]
      529 DUPTABLE                         R23 K274 [{["formId"] = "generate_mesh", ["heading"] = "/generate_mesh", ["row"], ["description"], ["confirmButton"], ["axisResolver"], ["imageSelection"], ["rows"]}]
      530 SETTABLEKS                       R19 R23 K79 ["row"]
      532 DUPTABLE                         R24 K276 [{["namespace"] = "MeshGen", ["key"] = "InputDisclaimer"}]
      533 SETTABLEKS                       R24 R23 K273 ["description"]
      535 DUPTABLE                         R24 K278 [{["namespace"] = "MeshGen", ["key"] = "InputGenerateMesh"}]
      536 SETTABLEKS                       R24 R23 K80 ["confirmButton"]
      538 JUMPIFNOT                        R20 ; [+6]
      539 DUPCLOSURE                       R24 K279 [PROTO_3]
      540 CAPTURE                          VAL R19
      541 CAPTURE                          VAL R13
      542 CAPTURE                          VAL R22
      543 CAPTURE                          VAL R21
      544 JUMP                             ; [+1]
      545 LOADNIL                          R24
      546 SETTABLEKS                       R24 R23 K81 ["axisResolver"]
      548 GETTABLEKS                       R25 R4 K280 ["EngineFeatureAssistantGen3dImagePreview"]
      550 JUMPIFNOT                        R25 ; [+36]
      551 DUPTABLE                         R24 K282 [{"promptKey", "wizardMode", "model", "segmentationFold"}]
      552 GETTABLEKS                       R25 R19 K34 ["TextPrompt"]
      554 SETTABLEKS                       R25 R24 K231 ["promptKey"]
      556 GETTABLEKS                       R25 R4 K283 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      558 SETTABLEKS                       R25 R24 K232 ["wizardMode"]
      560 GETTABLEKS                       R25 R4 K284 ["FStringAssistantMeshGenImageGenModelOverride"]
      562 SETTABLEKS                       R25 R24 K235 ["model"]
      564 GETTABLEKS                       R26 R4 K285 ["FFlagAssistantImageGenImprovements"]
      566 JUMPIFNOT                        R26 ; [+16]
      567 DUPTABLE                         R25 K289 [{"kind", "partNamesKey", "suggestKey"}]
      568 GETTABLEKS                       R26 R3 K290 ["SEGMENTATION_FOLD_KIND"]
      570 GETTABLEKS                       R26 R26 K291 ["Gen3D"]
      572 SETTABLEKS                       R26 R25 K286 ["kind"]
      574 GETTABLEKS                       R26 R19 K261 ["TextPartNames"]
      576 SETTABLEKS                       R26 R25 K287 ["partNamesKey"]
      578 GETTABLEKS                       R26 R19 K265 ["SuggestSegmentation"]
      580 SETTABLEKS                       R26 R25 K288 ["suggestKey"]
      582 JUMP                             ; [+1]
      583 LOADNIL                          R25
      584 SETTABLEKS                       R25 R24 K281 ["segmentationFold"]
      586 JUMP                             ; [+1]
      587 LOADNIL                          R24
      588 SETTABLEKS                       R24 R23 K226 ["imageSelection"]
      590 NEWTABLE                         R24 8 0
      592 GETTABLEKS                       R25 R19 K25 ["PromptMode"]
      594 DUPTABLE                         R26 K293 [{"label", "optionLabels", "optionBadges"}]
      595 DUPTABLE                         R27 K295 [{["namespace"] = "MeshGen", ["key"] = "InputPromptModeTitle"}]
      596 SETTABLEKS                       R27 R26 K90 ["label"]
      598 NEWTABLE                         R27 2 0
      600 GETTABLEKS                       R28 R13 K296 ["Text"]
      602 DUPTABLE                         R29 K299 [{["namespace"] = "Gen3d", ["key"] = "PromptModeText"}]
      603 SETTABLE                         R29 R27 R28
      604 GETTABLEKS                       R28 R13 K300 ["Image"]
      606 DUPTABLE                         R29 K302 [{["namespace"] = "Gen3d", ["key"] = "PromptModeImage"}]
      607 SETTABLE                         R29 R27 R28
      608 SETTABLEKS                       R27 R26 K92 ["optionLabels"]
      610 NEWTABLE                         R27 2 0
      612 GETTABLEKS                       R28 R13 K296 ["Text"]
      614 MOVE                             R29 R14
      615 DUPTABLE                         R30 K306 [{"kind", "field", "cases", "default"}]
      616 GETTABLEKS                       R31 R11 K307 ["Branch"]
      618 SETTABLEKS                       R31 R30 K286 ["kind"]
      620 GETTABLEKS                       R31 R19 K25 ["PromptMode"]
      622 SETTABLEKS                       R31 R30 K303 ["field"]
      624 NEWTABLE                         R31 1 0
      626 GETTABLEKS                       R32 R13 K300 ["Image"]
      628 MOVE                             R33 R14
      629 DUPTABLE                         R34 K308 [{"kind", "field"}]
      630 GETTABLEKS                       R35 R11 K309 ["NonEmpty"]
      632 SETTABLEKS                       R35 R34 K286 ["kind"]
      634 GETTABLEKS                       R35 R19 K34 ["TextPrompt"]
      636 SETTABLEKS                       R35 R34 K303 ["field"]
      638 CALL                             R33 1 1
      639 SETTABLE                         R33 R31 R32
      640 SETTABLEKS                       R31 R30 K304 ["cases"]
      642 MOVE                             R31 R14
      643 DUPTABLE                         R32 K310 [{"kind"}]
      644 GETTABLEKS                       R33 R11 K311 ["Never"]
      646 SETTABLEKS                       R33 R32 K286 ["kind"]
      648 CALL                             R31 1 1
      649 SETTABLEKS                       R31 R30 K305 ["default"]
      651 CALL                             R29 1 1
      652 SETTABLE                         R29 R27 R28
      653 GETTABLEKS                       R28 R13 K300 ["Image"]
      655 MOVE                             R29 R14
      656 DUPTABLE                         R30 K306 [{"kind", "field", "cases", "default"}]
      657 GETTABLEKS                       R31 R11 K307 ["Branch"]
      659 SETTABLEKS                       R31 R30 K286 ["kind"]
      661 GETTABLEKS                       R31 R19 K25 ["PromptMode"]
      663 SETTABLEKS                       R31 R30 K303 ["field"]
      665 NEWTABLE                         R31 1 0
      667 GETTABLEKS                       R32 R13 K296 ["Text"]
      669 MOVE                             R33 R14
      670 DUPTABLE                         R34 K308 [{"kind", "field"}]
      671 GETTABLEKS                       R35 R11 K309 ["NonEmpty"]
      673 SETTABLEKS                       R35 R34 K286 ["kind"]
      675 GETTABLEKS                       R35 R19 K257 ["HintImage"]
      677 SETTABLEKS                       R35 R34 K303 ["field"]
      679 CALL                             R33 1 1
      680 SETTABLE                         R33 R31 R32
      681 SETTABLEKS                       R31 R30 K304 ["cases"]
      683 MOVE                             R31 R14
      684 DUPTABLE                         R32 K310 [{"kind"}]
      685 GETTABLEKS                       R33 R11 K311 ["Never"]
      687 SETTABLEKS                       R33 R32 K286 ["kind"]
      689 CALL                             R31 1 1
      690 SETTABLEKS                       R31 R30 K305 ["default"]
      692 CALL                             R29 1 1
      693 SETTABLE                         R29 R27 R28
      694 SETTABLEKS                       R27 R26 K292 ["optionBadges"]
      696 SETTABLE                         R26 R24 R25
      697 GETTABLEKS                       R25 R19 K34 ["TextPrompt"]
      699 DUPTABLE                         R26 K312 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      700 DUPTABLE                         R27 K214 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      701 SETTABLEKS                       R27 R26 K90 ["label"]
      703 GETTABLEKS                       R28 R4 K313 ["FFlagAssistantAddPlaceholderProp"]
      705 JUMPIFNOT                        R28 ; [+2]
      706 DUPTABLE                         R27 K315 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      707 JUMP                             ; [+1]
      708 LOADNIL                          R27
      709 SETTABLEKS                       R27 R26 K211 ["placeholder"]
      711 SETTABLE                         R26 R24 R25
      712 GETTABLEKS                       R25 R19 K257 ["HintImage"]
      714 DUPTABLE                         R26 K109 [{"label"}]
      715 DUPTABLE                         R27 K317 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      716 SETTABLEKS                       R27 R26 K90 ["label"]
      718 SETTABLE                         R26 R24 R25
      719 GETTABLEKS                       R25 R19 K259 ["MaxTriangles"]
      721 DUPTABLE                         R26 K109 [{"label"}]
      722 DUPTABLE                         R27 K319 [{["namespace"] = "MeshGen", ["key"] = "InputTriangleCountTitle"}]
      723 SETTABLEKS                       R27 R26 K90 ["label"]
      725 SETTABLE                         R26 R24 R25
      726 GETTABLEKS                       R25 R19 K261 ["TextPartNames"]
      728 DUPTABLE                         R26 K321 [{"label", "infoPopover", "suggestion"}]
      729 DUPTABLE                         R27 K323 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      730 SETTABLEKS                       R27 R26 K90 ["label"]
      732 JUMPIFNOT                        R20 ; [+8]
      733 DUPTABLE                         R27 K325 [{"body", "learnMore"}]
      734 DUPTABLE                         R28 K328 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      735 SETTABLEKS                       R28 R27 K186 ["body"]
      737 DUPTABLE                         R28 K330 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      738 SETTABLEKS                       R28 R27 K324 ["learnMore"]
      740 JUMP                             ; [+1]
      741 LOADNIL                          R27
      742 SETTABLEKS                       R27 R26 K183 ["infoPopover"]
      744 DUPTABLE                         R27 K333 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "mesh"}]
      745 GETTABLEKS                       R28 R19 K34 ["TextPrompt"]
      747 SETTABLEKS                       R28 R27 K231 ["promptKey"]
      749 JUMPIFNOT                        R20 ; [+6]
      750 GETTABLEKS                       R29 R4 K334 ["FFlagGen3dSegmentationSelector"]
      752 JUMPIFNOT                        R29 ; [+3]
      753 GETTABLEKS                       R28 R19 K265 ["SuggestSegmentation"]
      755 JUMP                             ; [+1]
      756 LOADNIL                          R28
      757 SETTABLEKS                       R28 R27 K288 ["suggestKey"]
      759 SETTABLEKS                       R27 R26 K320 ["suggestion"]
      761 SETTABLE                         R26 R24 R25
      762 GETTABLEKS                       R25 R19 K263 ["ImagePartNames"]
      764 DUPTABLE                         R26 K184 [{"label", "infoPopover"}]
      765 DUPTABLE                         R27 K323 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      766 SETTABLEKS                       R27 R26 K90 ["label"]
      768 JUMPIFNOT                        R20 ; [+8]
      769 DUPTABLE                         R27 K325 [{"body", "learnMore"}]
      770 DUPTABLE                         R28 K328 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      771 SETTABLEKS                       R28 R27 K186 ["body"]
      773 DUPTABLE                         R28 K330 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      774 SETTABLEKS                       R28 R27 K324 ["learnMore"]
      776 JUMP                             ; [+1]
      777 LOADNIL                          R27
      778 SETTABLEKS                       R27 R26 K183 ["infoPopover"]
      780 SETTABLE                         R26 R24 R25
      781 GETTABLEKS                       R25 R19 K265 ["SuggestSegmentation"]
      783 DUPTABLE                         R26 K335 [{"renderer"}]
      784 GETTABLEKS                       R27 R12 K265 ["SuggestSegmentation"]
      786 SETTABLEKS                       R27 R26 K115 ["renderer"]
      788 SETTABLE                         R26 R24 R25
      789 GETTABLEKS                       R25 R19 K267 ["SelectedInstanceRef"]
      791 DUPTABLE                         R26 K337 [{"label", "internal", "instanceClasses"}]
      792 DUPTABLE                         R27 K339 [{["namespace"] = "MeshGen", ["key"] = "InputBoundingBox"}]
      793 SETTABLEKS                       R27 R26 K90 ["label"]
      795 JUMPIFNOT                        R20 ; [+2]
      796 LOADB                            R27 1
      797 JUMP                             ; [+1]
      798 LOADNIL                          R27
      799 SETTABLEKS                       R27 R26 K112 ["internal"]
      801 NEWTABLE                         R27 0 1
      803 GETTABLEKS                       R29 R5 K340 ["getFFlagGen3dSharedMeshGenOps"]
      805 CALL                             R29 0 1
      806 JUMPIFNOT                        R29 ; [+5]
      807 GETTABLEKS                       R28 R5 K15 ["MeshGenConstants"]
      809 GETTABLEKS                       R28 R28 K341 ["BOUNDING_BOX_INSTANCE_TYPE"]
      811 JUMP                             ; [+2]
      812 GETTABLEKS                       R28 R6 K341 ["BOUNDING_BOX_INSTANCE_TYPE"]
      814 SETLIST                          R27 R28 1 [1]
      816 SETTABLEKS                       R27 R26 K336 ["instanceClasses"]
      818 SETTABLE                         R26 R24 R25
      819 SETTABLEKS                       R24 R23 K82 ["rows"]
      821 SETTABLEKS                       R23 R18 K14 ["MeshGen"]
      823 DUPTABLE                         R19 K345 [{["Prompt"] = "prompt", ["HintImage"] = "hintImage", ["PartNames"] = "partNames", ["SuggestSegmentation"] = "suggestSegmentation"}]
      824 DUPTABLE                         R20 K348 [{["formId"] = "generate_procedural_model", ["heading"] = "/generate_procedural_model", ["row"], ["imageSelection"], ["rows"]}]
      825 SETTABLEKS                       R19 R20 K79 ["row"]
      827 GETTABLEKS                       R22 R4 K280 ["EngineFeatureAssistantGen3dImagePreview"]
      829 JUMPIFNOT                        R22 ; [+14]
      830 DUPTABLE                         R21 K349 [{"promptKey", "wizardMode", "model"}]
      831 GETTABLEKS                       R22 R19 K102 ["Prompt"]
      833 SETTABLEKS                       R22 R21 K231 ["promptKey"]
      835 GETTABLEKS                       R22 R4 K350 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      837 SETTABLEKS                       R22 R21 K232 ["wizardMode"]
      839 GETTABLEKS                       R22 R4 K284 ["FStringAssistantMeshGenImageGenModelOverride"]
      841 SETTABLEKS                       R22 R21 K235 ["model"]
      843 JUMP                             ; [+1]
      844 LOADNIL                          R21
      845 SETTABLEKS                       R21 R20 K226 ["imageSelection"]
      847 NEWTABLE                         R21 4 0
      849 GETTABLEKS                       R22 R19 K102 ["Prompt"]
      851 DUPTABLE                         R23 K312 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      852 DUPTABLE                         R24 K214 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      853 SETTABLEKS                       R24 R23 K90 ["label"]
      855 GETTABLEKS                       R25 R4 K313 ["FFlagAssistantAddPlaceholderProp"]
      857 JUMPIFNOT                        R25 ; [+2]
      858 DUPTABLE                         R24 K315 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      859 JUMP                             ; [+1]
      860 LOADNIL                          R24
      861 SETTABLEKS                       R24 R23 K211 ["placeholder"]
      863 SETTABLE                         R23 R21 R22
      864 GETTABLEKS                       R22 R19 K257 ["HintImage"]
      866 DUPTABLE                         R23 K109 [{"label"}]
      867 DUPTABLE                         R24 K317 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      868 SETTABLEKS                       R24 R23 K90 ["label"]
      870 SETTABLE                         R23 R21 R22
      871 GETTABLEKS                       R22 R19 K343 ["PartNames"]
      873 DUPTABLE                         R23 K321 [{"label", "infoPopover", "suggestion"}]
      874 DUPTABLE                         R24 K352 [{["namespace"] = "PrimitiveGen", ["key"] = "InputPartNamesTitle"}]
      875 SETTABLEKS                       R24 R23 K90 ["label"]
      877 DUPTABLE                         R24 K325 [{"body", "learnMore"}]
      878 DUPTABLE                         R25 K354 [{["namespace"] = "PrimGenSegmentation", ["key"] = "ExperimentalFeature"}]
      879 SETTABLEKS                       R25 R24 K186 ["body"]
      881 DUPTABLE                         R25 K330 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      882 SETTABLEKS                       R25 R24 K324 ["learnMore"]
      884 SETTABLEKS                       R24 R23 K183 ["infoPopover"]
      886 DUPTABLE                         R24 K356 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "procedural"}]
      887 GETTABLEKS                       R25 R19 K102 ["Prompt"]
      889 SETTABLEKS                       R25 R24 K231 ["promptKey"]
      891 GETTABLEKS                       R25 R19 K265 ["SuggestSegmentation"]
      893 SETTABLEKS                       R25 R24 K288 ["suggestKey"]
      895 SETTABLEKS                       R24 R23 K320 ["suggestion"]
      897 SETTABLE                         R23 R21 R22
      898 GETTABLEKS                       R22 R19 K265 ["SuggestSegmentation"]
      900 DUPTABLE                         R23 K335 [{"renderer"}]
      901 GETTABLEKS                       R24 R12 K265 ["SuggestSegmentation"]
      903 SETTABLEKS                       R24 R23 K115 ["renderer"]
      905 SETTABLE                         R23 R21 R22
      906 SETTABLEKS                       R21 R20 K82 ["rows"]
      908 SETTABLEKS                       R20 R18 K351 ["PrimitiveGen"]
      910 DUPTABLE                         R19 K361 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["Parts"] = "parts"}]
      911 DUPTABLE                         R20 K364 [{["formId"] = "segment_mesh", ["heading"] = "/segment_mesh", ["row"], ["confirmButton"], ["rows"]}]
      912 SETTABLEKS                       R19 R20 K79 ["row"]
      914 DUPTABLE                         R21 K366 [{["namespace"] = "SegmentMesh", ["key"] = "ConfirmButton"}]
      915 SETTABLEKS                       R21 R20 K80 ["confirmButton"]
      917 NEWTABLE                         R21 4 0
      919 GETTABLEKS                       R22 R19 K267 ["SelectedInstanceRef"]
      921 DUPTABLE                         R23 K368 [{"label", "validityBridge", "requirementMessage"}]
      922 DUPTABLE                         R24 K370 [{["namespace"] = "SegmentMesh", ["key"] = "MeshInstanceLabel"}]
      923 SETTABLEKS                       R24 R23 K90 ["label"]
      925 GETTABLEKS                       R24 R15 K27 ["SegmentMesh"]
      927 SETTABLEKS                       R24 R23 K367 ["validityBridge"]
      929 DUPTABLE                         R24 K372 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      930 SETTABLEKS                       R24 R23 K99 ["requirementMessage"]
      932 SETTABLE                         R23 R21 R22
      933 GETTABLEKS                       R23 R19 K267 ["SelectedInstanceRef"]
      935 LOADK                            R24 K373 [".isValid"]
      936 CONCAT                           R22 R23 R24
      937 DUPTABLE                         R23 K374 [{"requirementMessage"}]
      938 DUPTABLE                         R24 K372 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      939 SETTABLEKS                       R24 R23 K99 ["requirementMessage"]
      941 SETTABLE                         R23 R21 R22
      942 GETTABLEKS                       R22 R19 K357 ["SelectedInstanceRefIsValid"]
      944 DUPTABLE                         R23 K374 [{"requirementMessage"}]
      945 DUPTABLE                         R24 K372 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      946 SETTABLEKS                       R24 R23 K99 ["requirementMessage"]
      948 SETTABLE                         R23 R21 R22
      949 GETTABLEKS                       R22 R19 K359 ["Parts"]
      951 DUPTABLE                         R23 K375 [{["label"], ["multiLine"] = False}]
      952 DUPTABLE                         R24 K323 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      953 SETTABLEKS                       R24 R23 K90 ["label"]
      955 SETTABLE                         R23 R21 R22
      956 SETTABLEKS                       R21 R20 K82 ["rows"]
      958 SETTABLEKS                       R20 R18 K27 ["SegmentMesh"]
      960 DUPTABLE                         R19 K379 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["Mode"] = "mode", ["AutoSelectView"] = "autoSelectView"}]
      961 GETTABLEKS                       R20 R5 K380 ["getFFlagGen3dTextureGenBatchedPreview"]
      963 CALL                             R20 0 1
      964 GETTABLEKS                       R21 R4 K381 ["FFlagAssistantTextureGenModelSelection"]
      966 JUMPIFNOT                        R21 ; [+1]
      967 NOT                              R21 R20
      968 MOVE                             R22 R20
      969 JUMPIFNOT                        R22 ; [+2]
      970 GETTABLEKS                       R22 R4 K382 ["FFlagAssistantTextureGenAutoSelectView"]
      972 DUPTABLE                         R23 K385 [{["formId"] = "generate_texture", ["heading"] = "/generate_texture", ["row"], ["description"], ["confirmButton"], ["imageSelection"], ["rows"]}]
      973 SETTABLEKS                       R19 R23 K79 ["row"]
      975 DUPTABLE                         R24 K386 [{["namespace"] = "TextureGen", ["key"] = "InputDisclaimer"}]
      976 SETTABLEKS                       R24 R23 K273 ["description"]
      978 DUPTABLE                         R24 K388 [{["namespace"] = "TextureGen", ["key"] = "InputGenerateTexture"}]
      979 SETTABLEKS                       R24 R23 K80 ["confirmButton"]
      981 GETTABLEKS                       R25 R4 K280 ["EngineFeatureAssistantGen3dImagePreview"]
      983 JUMPIFNOT                        R25 ; [+43]
      984 DUPTABLE                         R24 K394 [{["promptKey"], ["wizardMode"], ["model"], ["resolveSeedImageFromSelectedInstance"] = True, ["skipField"], ["skipValues"], ["useTexturePreview"], ["autoSelectViewField"]}]
      985 GETTABLEKS                       R25 R19 K34 ["TextPrompt"]
      987 SETTABLEKS                       R25 R24 K231 ["promptKey"]
      989 GETTABLEKS                       R25 R4 K395 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      991 SETTABLEKS                       R25 R24 K232 ["wizardMode"]
      993 GETTABLEKS                       R25 R4 K284 ["FStringAssistantMeshGenImageGenModelOverride"]
      995 SETTABLEKS                       R25 R24 K235 ["model"]
      997 JUMPIFNOT                        R21 ; [+3]
      998 GETTABLEKS                       R25 R19 K91 ["Mode"]
     1000 JUMP                             ; [+1]
     1001 LOADNIL                          R25
     1002 SETTABLEKS                       R25 R24 K390 ["skipField"]
     1004 JUMPIFNOT                        R21 ; [+9]
     1005 NEWTABLE                         R25 0 1
     1007 GETTABLEKS                       R26 R9 K396 ["MODE"]
     1009 GETTABLEKS                       R26 R26 K397 ["Quality"]
     1011 SETLIST                          R25 R26 1 [1]
     1013 JUMP                             ; [+1]
     1014 LOADNIL                          R25
     1015 SETTABLEKS                       R25 R24 K391 ["skipValues"]
     1017 SETTABLEKS                       R20 R24 K392 ["useTexturePreview"]
     1019 JUMPIFNOT                        R22 ; [+3]
     1020 GETTABLEKS                       R25 R19 K377 ["AutoSelectView"]
     1022 JUMP                             ; [+1]
     1023 LOADNIL                          R25
     1024 SETTABLEKS                       R25 R24 K393 ["autoSelectViewField"]
     1026 JUMP                             ; [+1]
     1027 LOADNIL                          R24
     1028 SETTABLEKS                       R24 R23 K226 ["imageSelection"]
     1030 NEWTABLE                         R24 8 0
     1032 GETTABLEKS                       R25 R19 K267 ["SelectedInstanceRef"]
     1034 DUPTABLE                         R26 K398 [{"label", "instanceClasses", "validityBridge", "requirementMessage"}]
     1035 DUPTABLE                         R27 K400 [{["namespace"] = "TextureGen", ["key"] = "InputSelectedMesh"}]
     1036 SETTABLEKS                       R27 R26 K90 ["label"]
     1038 NEWTABLE                         R27 0 2
     1040 LOADK                            R28 K401 ["MeshPart"]
     1041 LOADK                            R29 K402 ["Model"]
     1042 SETLIST                          R27 R28 2 [1]
     1044 SETTABLEKS                       R27 R26 K336 ["instanceClasses"]
     1046 GETTABLEKS                       R27 R15 K20 ["TextureGen"]
     1048 SETTABLEKS                       R27 R26 K367 ["validityBridge"]
     1050 DUPTABLE                         R27 K372 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1051 SETTABLEKS                       R27 R26 K99 ["requirementMessage"]
     1053 SETTABLE                         R26 R24 R25
     1054 GETTABLEKS                       R26 R19 K267 ["SelectedInstanceRef"]
     1056 LOADK                            R27 K373 [".isValid"]
     1057 CONCAT                           R25 R26 R27
     1058 DUPTABLE                         R26 K374 [{"requirementMessage"}]
     1059 DUPTABLE                         R27 K372 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1060 SETTABLEKS                       R27 R26 K99 ["requirementMessage"]
     1062 SETTABLE                         R26 R24 R25
     1063 GETTABLEKS                       R25 R19 K357 ["SelectedInstanceRefIsValid"]
     1065 DUPTABLE                         R26 K374 [{"requirementMessage"}]
     1066 DUPTABLE                         R27 K372 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1067 SETTABLEKS                       R27 R26 K99 ["requirementMessage"]
     1069 SETTABLE                         R26 R24 R25
     1070 GETTABLEKS                       R25 R19 K34 ["TextPrompt"]
     1072 DUPTABLE                         R26 K312 [{["label"], ["multiLine"] = True, ["placeholder"]}]
     1073 DUPTABLE                         R27 K403 [{["namespace"] = "TextureGen", ["key"] = "InputPromptTitle"}]
     1074 SETTABLEKS                       R27 R26 K90 ["label"]
     1076 GETTABLEKS                       R28 R4 K313 ["FFlagAssistantAddPlaceholderProp"]
     1078 JUMPIFNOT                        R28 ; [+2]
     1079 DUPTABLE                         R27 K404 [{["namespace"] = "TextureGen", ["key"] = "InputPromptPlaceholder"}]
     1080 JUMP                             ; [+1]
     1081 LOADNIL                          R27
     1082 SETTABLEKS                       R27 R26 K211 ["placeholder"]
     1084 SETTABLE                         R26 R24 R25
     1085 GETTABLEKS                       R25 R19 K257 ["HintImage"]
     1087 DUPTABLE                         R26 K109 [{"label"}]
     1088 DUPTABLE                         R27 K405 [{["namespace"] = "TextureGen", ["key"] = "InputHintImageTitle"}]
     1089 SETTABLEKS                       R27 R26 K90 ["label"]
     1091 SETTABLE                         R26 R24 R25
     1092 GETTABLEKS                       R25 R19 K91 ["Mode"]
     1094 DUPTABLE                         R26 K406 [{"label", "optionLabels", "infoPopover"}]
     1095 DUPTABLE                         R27 K408 [{["namespace"] = "TextureGen", ["key"] = "ModelSelectorTitle"}]
     1096 SETTABLEKS                       R27 R26 K90 ["label"]
     1098 NEWTABLE                         R27 2 0
     1100 GETTABLEKS                       R28 R9 K396 ["MODE"]
     1102 GETTABLEKS                       R28 R28 K409 ["Fast"]
     1104 DUPTABLE                         R29 K411 [{["namespace"] = "TextureGen", ["key"] = "ModelFast"}]
     1105 SETTABLE                         R29 R27 R28
     1106 GETTABLEKS                       R28 R9 K396 ["MODE"]
     1108 GETTABLEKS                       R28 R28 K397 ["Quality"]
     1110 DUPTABLE                         R29 K413 [{["namespace"] = "TextureGen", ["key"] = "ModelQuality"}]
     1111 SETTABLE                         R29 R27 R28
     1112 SETTABLEKS                       R27 R26 K92 ["optionLabels"]
     1114 GETTABLEKS                       R28 R4 K381 ["FFlagAssistantTextureGenModelSelection"]
     1116 JUMPIFNOT                        R28 ; [+5]
     1117 DUPTABLE                         R27 K187 [{"body"}]
     1118 DUPTABLE                         R28 K415 [{["namespace"] = "TextureGen", ["key"] = "ModelQualityInfo"}]
     1119 SETTABLEKS                       R28 R27 K186 ["body"]
     1121 JUMP                             ; [+1]
     1122 LOADNIL                          R27
     1123 SETTABLEKS                       R27 R26 K183 ["infoPopover"]
     1125 SETTABLE                         R26 R24 R25
     1126 GETTABLEKS                       R25 R19 K377 ["AutoSelectView"]
     1128 DUPTABLE                         R26 K416 [{"label", "renderer"}]
     1129 DUPTABLE                         R27 K418 [{["namespace"] = "TextureGen", ["key"] = "AutoSelectViewLabel"}]
     1130 SETTABLEKS                       R27 R26 K90 ["label"]
     1132 GETTABLEKS                       R27 R12 K419 ["LabeledBoolean"]
     1134 SETTABLEKS                       R27 R26 K115 ["renderer"]
     1136 SETTABLE                         R26 R24 R25
     1137 SETTABLEKS                       R24 R23 K82 ["rows"]
     1139 SETTABLEKS                       R23 R18 K20 ["TextureGen"]
     1141 SETTABLEKS                       R18 R0 K420 ["Configs"]
     1143 SETTABLEKS                       R15 R0 K421 ["ValidityBridge"]
     1145 SETTABLEKS                       R16 R0 K422 ["ValueChangedAction"]
     1147 NEWTABLE                         R19 0 0
     1149 GETIMPORT                        R20 K424 [pairs]
     1151 MOVE                             R21 R18
     1152 CALL                             R20 1 3
     1153 FORGPREP_NEXT                    R20
     1154 GETTABLEKS                       R25 R24 K74 ["formId"]
     1156 SETTABLE                         R24 R19 R25
     1157 FORGLOOP                         R20 2 ; [-4]
     1159 LOADNIL                          R20
     1160 NEWCLOSURE                       R21 P4
     1161 CAPTURE                          REF R20
     1162 CAPTURE                          VAL R19
     1163 SETTABLEKS                       R21 R0 K425 ["getForm"]
     1165 DUPCLOSURE                       R21 K426 [PROTO_5]
     1166 CAPTURE                          VAL R0
     1167 CAPTURE                          VAL R17
     1168 SETTABLEKS                       R21 R0 K427 ["getRowPresentation"]
     1170 NEWCLOSURE                       R21 P6
     1171 CAPTURE                          REF R20
     1172 SETTABLEKS                       R21 R0 K428 ["_registerTestConfig"]
     1174 NEWCLOSURE                       R21 P7
     1175 CAPTURE                          REF R20
     1176 SETTABLEKS                       R21 R0 K429 ["_clearTestConfigs"]
     1178 CLOSEUPVALS                      R20
     1179 RETURN                           R0 1
