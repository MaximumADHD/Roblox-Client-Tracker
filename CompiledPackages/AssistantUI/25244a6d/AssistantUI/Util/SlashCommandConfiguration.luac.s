PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R2 R0 K0 ["formId"]
        6 SETTABLE                         R0 R1 R2
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_4:
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
       13 GETTABLEKS                       R3 R3 K7 ["AskInput"]
       15 GETTABLEKS                       R3 R3 K8 ["AskInputTypes"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K9 ["Flags"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K6 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["MeshGen"]
       29 GETTABLEKS                       R5 R5 K11 ["MeshGenConstants"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R1 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["PropertyRows"]
       38 GETTABLEKS                       R6 R6 K14 ["PropertyRowTypes"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R1 K6 ["Util"]
       45 GETTABLEKS                       R7 R7 K15 ["Gen3dUtils"]
       47 GETTABLEKS                       R7 R7 K16 ["SegmentationEnums"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R1 K6 ["Util"]
       54 GETTABLEKS                       R8 R8 K17 ["TextureGen"]
       56 GETTABLEKS                       R8 R8 K18 ["TextureGenTypes"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R2 K19 ["RULE_KIND"]
       61 GETTABLEKS                       R9 R5 K20 ["ROW_TYPES"]
       63 GETTABLEKS                       R10 R6 K21 ["PromptMode"]
       65 GETTABLEKS                       R11 R2 K22 ["asRule"]
       67 DUPTABLE                         R12 K24 [{["TextureGen"] = "TextureGen", ["SegmentMesh"] = "SegmentMesh"}]
       68 NEWTABLE                         R13 0 0
       70 NEWTABLE                         R14 8 0
       72 DUPTABLE                         R15 K33 [{["TextPrompt"] = "textPrompt", ["SelectedRigRef"] = "selectedRigRef", ["Duration"] = "duration", ["Loop"] = "loop"}]
       73 DUPTABLE                         R16 K41 [{["formId"] = "generate_animation", ["heading"] = "/generate_animation", ["row"], ["confirmButton"], ["rows"]}]
       74 SETTABLEKS                       R15 R16 K38 ["row"]
       76 DUPTABLE                         R17 K46 [{["namespace"] = "AnimationGen", ["key"] = "InputGenerate"}]
       77 SETTABLEKS                       R17 R16 K39 ["confirmButton"]
       79 NEWTABLE                         R17 4 0
       81 GETTABLEKS                       R18 R15 K25 ["TextPrompt"]
       83 DUPTABLE                         R19 K50 [{["label"], ["multiLine"] = True}]
       84 DUPTABLE                         R20 K52 [{["namespace"] = "AnimationGen", ["key"] = "Prompt"}]
       85 SETTABLEKS                       R20 R19 K47 ["label"]
       87 SETTABLE                         R19 R17 R18
       88 GETTABLEKS                       R18 R15 K27 ["SelectedRigRef"]
       90 DUPTABLE                         R19 K54 [{["label"], ["shouldSelectModel"] = True}]
       91 DUPTABLE                         R20 K56 [{["namespace"] = "AnimationGen", ["key"] = "InputRig"}]
       92 SETTABLEKS                       R20 R19 K47 ["label"]
       94 SETTABLE                         R19 R17 R18
       95 GETTABLEKS                       R18 R15 K29 ["Duration"]
       97 DUPTABLE                         R19 K57 [{"label"}]
       98 DUPTABLE                         R20 K59 [{["namespace"] = "AnimationGen", ["key"] = "InputDuration"}]
       99 SETTABLEKS                       R20 R19 K47 ["label"]
      101 SETTABLE                         R19 R17 R18
      102 GETTABLEKS                       R18 R15 K31 ["Loop"]
      104 DUPTABLE                         R19 K57 [{"label"}]
      105 DUPTABLE                         R20 K61 [{["namespace"] = "AnimationGen", ["key"] = "InputLoop"}]
      106 SETTABLEKS                       R20 R19 K47 ["label"]
      108 SETTABLE                         R19 R17 R18
      109 SETTABLEKS                       R17 R16 K40 ["rows"]
      111 SETTABLEKS                       R16 R14 K43 ["AnimationGen"]
      113 DUPTABLE                         R15 K64 [{["SelectedModelRef"] = "selectedModelRef"}]
      114 DUPTABLE                         R16 K67 [{["formId"] = "auto_setup_avatar", ["heading"] = "/auto_setup_avatar", ["row"], ["confirmButton"], ["rows"]}]
      115 SETTABLEKS                       R15 R16 K38 ["row"]
      117 DUPTABLE                         R17 K70 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputSetUpAvatar"}]
      118 SETTABLEKS                       R17 R16 K39 ["confirmButton"]
      120 NEWTABLE                         R17 1 0
      122 GETTABLEKS                       R18 R15 K62 ["SelectedModelRef"]
      124 DUPTABLE                         R19 K72 [{["label"], ["shouldSelectModel"] = True, ["requirementMessage"]}]
      125 DUPTABLE                         R20 K74 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputModel"}]
      126 SETTABLEKS                       R20 R19 K47 ["label"]
      128 DUPTABLE                         R20 K76 [{["namespace"] = "AvatarAutoSetup", ["key"] = "ModelRequired"}]
      129 SETTABLEKS                       R20 R19 K71 ["requirementMessage"]
      131 SETTABLE                         R19 R17 R18
      132 SETTABLEKS                       R17 R16 K40 ["rows"]
      134 SETTABLEKS                       R16 R14 K68 ["AvatarAutoSetup"]
      136 DUPTABLE                         R15 K90 [{["PromptMode"] = "promptMode", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["MaxTriangles"] = "maxTriangles", ["TextPartNames"] = "textPartNames", ["ImagePartNames"] = "imagePartNames", ["SuggestSegmentation"] = "suggestSegmentation", ["SelectedInstanceRef"] = "selectedInstanceRef"}]
      137 GETTABLEKS                       R16 R3 K91 ["FFlagAssistantSegmentationPromptModeSelector"]
      139 DUPTABLE                         R17 K94 [{["visible"] = True, ["enabled"] = True}]
      140 DUPTABLE                         R18 K96 [{["visible"] = False, ["enabled"] = False}]
      141 DUPTABLE                         R19 K102 [{["formId"] = "generate_mesh", ["heading"] = "/generate_mesh", ["row"], ["description"], ["confirmButton"], ["axisResolver"], ["imageSelection"], ["rows"]}]
      142 SETTABLEKS                       R15 R19 K38 ["row"]
      144 DUPTABLE                         R20 K104 [{["namespace"] = "MeshGen", ["key"] = "InputDisclaimer"}]
      145 SETTABLEKS                       R20 R19 K99 ["description"]
      147 DUPTABLE                         R20 K106 [{["namespace"] = "MeshGen", ["key"] = "InputGenerateMesh"}]
      148 SETTABLEKS                       R20 R19 K39 ["confirmButton"]
      150 JUMPIFNOT                        R16 ; [+6]
      151 DUPCLOSURE                       R20 K107 [PROTO_0]
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R17
      156 JUMP                             ; [+1]
      157 LOADNIL                          R20
      158 SETTABLEKS                       R20 R19 K100 ["axisResolver"]
      160 GETTABLEKS                       R21 R3 K108 ["EngineFeatureAssistantGen3dImagePreview"]
      162 JUMPIFNOT                        R21 ; [+36]
      163 DUPTABLE                         R20 K113 [{"promptKey", "wizardMode", "model", "segmentationFold"}]
      164 GETTABLEKS                       R21 R15 K25 ["TextPrompt"]
      166 SETTABLEKS                       R21 R20 K109 ["promptKey"]
      168 GETTABLEKS                       R21 R3 K114 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      170 SETTABLEKS                       R21 R20 K110 ["wizardMode"]
      172 GETTABLEKS                       R21 R3 K115 ["FStringAssistantMeshGenImageGenModelOverride"]
      174 SETTABLEKS                       R21 R20 K111 ["model"]
      176 GETTABLEKS                       R22 R3 K116 ["FFlagAssistantImageGenImprovements"]
      178 JUMPIFNOT                        R22 ; [+16]
      179 DUPTABLE                         R21 K120 [{"kind", "partNamesKey", "suggestKey"}]
      180 GETTABLEKS                       R22 R2 K121 ["SEGMENTATION_FOLD_KIND"]
      182 GETTABLEKS                       R22 R22 K122 ["Gen3D"]
      184 SETTABLEKS                       R22 R21 K117 ["kind"]
      186 GETTABLEKS                       R22 R15 K82 ["TextPartNames"]
      188 SETTABLEKS                       R22 R21 K118 ["partNamesKey"]
      190 GETTABLEKS                       R22 R15 K86 ["SuggestSegmentation"]
      192 SETTABLEKS                       R22 R21 K119 ["suggestKey"]
      194 JUMP                             ; [+1]
      195 LOADNIL                          R21
      196 SETTABLEKS                       R21 R20 K112 ["segmentationFold"]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R20
      200 SETTABLEKS                       R20 R19 K101 ["imageSelection"]
      202 NEWTABLE                         R20 8 0
      204 GETTABLEKS                       R21 R15 K21 ["PromptMode"]
      206 DUPTABLE                         R22 K125 [{"label", "optionLabels", "optionBadges"}]
      207 DUPTABLE                         R23 K127 [{["namespace"] = "MeshGen", ["key"] = "InputPromptModeTitle"}]
      208 SETTABLEKS                       R23 R22 K47 ["label"]
      210 NEWTABLE                         R23 2 0
      212 GETTABLEKS                       R24 R10 K128 ["Text"]
      214 DUPTABLE                         R25 K131 [{["namespace"] = "Gen3d", ["key"] = "PromptModeText"}]
      215 SETTABLE                         R25 R23 R24
      216 GETTABLEKS                       R24 R10 K132 ["Image"]
      218 DUPTABLE                         R25 K134 [{["namespace"] = "Gen3d", ["key"] = "PromptModeImage"}]
      219 SETTABLE                         R25 R23 R24
      220 SETTABLEKS                       R23 R22 K123 ["optionLabels"]
      222 NEWTABLE                         R23 2 0
      224 GETTABLEKS                       R24 R10 K128 ["Text"]
      226 MOVE                             R25 R11
      227 DUPTABLE                         R26 K138 [{"kind", "field", "cases", "default"}]
      228 GETTABLEKS                       R27 R8 K139 ["Branch"]
      230 SETTABLEKS                       R27 R26 K117 ["kind"]
      232 GETTABLEKS                       R27 R15 K21 ["PromptMode"]
      234 SETTABLEKS                       R27 R26 K135 ["field"]
      236 NEWTABLE                         R27 1 0
      238 GETTABLEKS                       R28 R10 K132 ["Image"]
      240 MOVE                             R29 R11
      241 DUPTABLE                         R30 K140 [{"kind", "field"}]
      242 GETTABLEKS                       R31 R8 K141 ["NonEmpty"]
      244 SETTABLEKS                       R31 R30 K117 ["kind"]
      246 GETTABLEKS                       R31 R15 K25 ["TextPrompt"]
      248 SETTABLEKS                       R31 R30 K135 ["field"]
      250 CALL                             R29 1 1
      251 SETTABLE                         R29 R27 R28
      252 SETTABLEKS                       R27 R26 K136 ["cases"]
      254 MOVE                             R27 R11
      255 DUPTABLE                         R28 K142 [{"kind"}]
      256 GETTABLEKS                       R29 R8 K143 ["Never"]
      258 SETTABLEKS                       R29 R28 K117 ["kind"]
      260 CALL                             R27 1 1
      261 SETTABLEKS                       R27 R26 K137 ["default"]
      263 CALL                             R25 1 1
      264 SETTABLE                         R25 R23 R24
      265 GETTABLEKS                       R24 R10 K132 ["Image"]
      267 MOVE                             R25 R11
      268 DUPTABLE                         R26 K138 [{"kind", "field", "cases", "default"}]
      269 GETTABLEKS                       R27 R8 K139 ["Branch"]
      271 SETTABLEKS                       R27 R26 K117 ["kind"]
      273 GETTABLEKS                       R27 R15 K21 ["PromptMode"]
      275 SETTABLEKS                       R27 R26 K135 ["field"]
      277 NEWTABLE                         R27 1 0
      279 GETTABLEKS                       R28 R10 K128 ["Text"]
      281 MOVE                             R29 R11
      282 DUPTABLE                         R30 K140 [{"kind", "field"}]
      283 GETTABLEKS                       R31 R8 K141 ["NonEmpty"]
      285 SETTABLEKS                       R31 R30 K117 ["kind"]
      287 GETTABLEKS                       R31 R15 K78 ["HintImage"]
      289 SETTABLEKS                       R31 R30 K135 ["field"]
      291 CALL                             R29 1 1
      292 SETTABLE                         R29 R27 R28
      293 SETTABLEKS                       R27 R26 K136 ["cases"]
      295 MOVE                             R27 R11
      296 DUPTABLE                         R28 K142 [{"kind"}]
      297 GETTABLEKS                       R29 R8 K143 ["Never"]
      299 SETTABLEKS                       R29 R28 K117 ["kind"]
      301 CALL                             R27 1 1
      302 SETTABLEKS                       R27 R26 K137 ["default"]
      304 CALL                             R25 1 1
      305 SETTABLE                         R25 R23 R24
      306 SETTABLEKS                       R23 R22 K124 ["optionBadges"]
      308 SETTABLE                         R22 R20 R21
      309 GETTABLEKS                       R21 R15 K25 ["TextPrompt"]
      311 DUPTABLE                         R22 K50 [{["label"], ["multiLine"] = True}]
      312 DUPTABLE                         R23 K145 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      313 SETTABLEKS                       R23 R22 K47 ["label"]
      315 SETTABLE                         R22 R20 R21
      316 GETTABLEKS                       R21 R15 K78 ["HintImage"]
      318 DUPTABLE                         R22 K57 [{"label"}]
      319 DUPTABLE                         R23 K147 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      320 SETTABLEKS                       R23 R22 K47 ["label"]
      322 SETTABLE                         R22 R20 R21
      323 GETTABLEKS                       R21 R15 K80 ["MaxTriangles"]
      325 DUPTABLE                         R22 K57 [{"label"}]
      326 DUPTABLE                         R23 K149 [{["namespace"] = "MeshGen", ["key"] = "InputTriangleCountTitle"}]
      327 SETTABLEKS                       R23 R22 K47 ["label"]
      329 SETTABLE                         R22 R20 R21
      330 GETTABLEKS                       R21 R15 K82 ["TextPartNames"]
      332 DUPTABLE                         R22 K152 [{"label", "infoPopover", "suggestion"}]
      333 DUPTABLE                         R23 K154 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      334 SETTABLEKS                       R23 R22 K47 ["label"]
      336 JUMPIFNOT                        R16 ; [+8]
      337 DUPTABLE                         R23 K157 [{"body", "learnMore"}]
      338 DUPTABLE                         R24 K160 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      339 SETTABLEKS                       R24 R23 K155 ["body"]
      341 DUPTABLE                         R24 K162 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      342 SETTABLEKS                       R24 R23 K156 ["learnMore"]
      344 JUMP                             ; [+1]
      345 LOADNIL                          R23
      346 SETTABLEKS                       R23 R22 K150 ["infoPopover"]
      348 DUPTABLE                         R23 K165 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "mesh"}]
      349 GETTABLEKS                       R24 R15 K25 ["TextPrompt"]
      351 SETTABLEKS                       R24 R23 K109 ["promptKey"]
      353 JUMPIFNOT                        R16 ; [+6]
      354 GETTABLEKS                       R25 R3 K166 ["FFlagGen3dSegmentationSelector"]
      356 JUMPIFNOT                        R25 ; [+3]
      357 GETTABLEKS                       R24 R15 K86 ["SuggestSegmentation"]
      359 JUMP                             ; [+1]
      360 LOADNIL                          R24
      361 SETTABLEKS                       R24 R23 K119 ["suggestKey"]
      363 SETTABLEKS                       R23 R22 K151 ["suggestion"]
      365 SETTABLE                         R22 R20 R21
      366 GETTABLEKS                       R21 R15 K84 ["ImagePartNames"]
      368 DUPTABLE                         R22 K167 [{"label", "infoPopover"}]
      369 DUPTABLE                         R23 K154 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      370 SETTABLEKS                       R23 R22 K47 ["label"]
      372 JUMPIFNOT                        R16 ; [+8]
      373 DUPTABLE                         R23 K157 [{"body", "learnMore"}]
      374 DUPTABLE                         R24 K160 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      375 SETTABLEKS                       R24 R23 K155 ["body"]
      377 DUPTABLE                         R24 K162 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      378 SETTABLEKS                       R24 R23 K156 ["learnMore"]
      380 JUMP                             ; [+1]
      381 LOADNIL                          R23
      382 SETTABLEKS                       R23 R22 K150 ["infoPopover"]
      384 SETTABLE                         R22 R20 R21
      385 GETTABLEKS                       R21 R15 K86 ["SuggestSegmentation"]
      387 DUPTABLE                         R22 K169 [{"renderer"}]
      388 GETTABLEKS                       R23 R9 K86 ["SuggestSegmentation"]
      390 SETTABLEKS                       R23 R22 K168 ["renderer"]
      392 SETTABLE                         R22 R20 R21
      393 GETTABLEKS                       R21 R15 K88 ["SelectedInstanceRef"]
      395 DUPTABLE                         R22 K172 [{"label", "internal", "instanceClasses"}]
      396 DUPTABLE                         R23 K174 [{["namespace"] = "MeshGen", ["key"] = "InputBoundingBox"}]
      397 SETTABLEKS                       R23 R22 K47 ["label"]
      399 JUMPIFNOT                        R16 ; [+2]
      400 LOADB                            R23 1
      401 JUMP                             ; [+1]
      402 LOADNIL                          R23
      403 SETTABLEKS                       R23 R22 K170 ["internal"]
      405 NEWTABLE                         R23 0 1
      407 GETTABLEKS                       R24 R4 K175 ["BOUNDING_BOX_INSTANCE_TYPE"]
      409 SETLIST                          R23 R24 1 [1]
      411 SETTABLEKS                       R23 R22 K171 ["instanceClasses"]
      413 SETTABLE                         R22 R20 R21
      414 SETTABLEKS                       R20 R19 K40 ["rows"]
      416 SETTABLEKS                       R19 R14 K10 ["MeshGen"]
      418 DUPTABLE                         R15 K179 [{["Prompt"] = "prompt", ["HintImage"] = "hintImage", ["PartNames"] = "partNames", ["SuggestSegmentation"] = "suggestSegmentation"}]
      419 DUPTABLE                         R16 K182 [{["formId"] = "generate_procedural_model", ["heading"] = "/generate_procedural_model", ["row"], ["imageSelection"], ["rows"]}]
      420 SETTABLEKS                       R15 R16 K38 ["row"]
      422 GETTABLEKS                       R18 R3 K108 ["EngineFeatureAssistantGen3dImagePreview"]
      424 JUMPIFNOT                        R18 ; [+14]
      425 DUPTABLE                         R17 K183 [{"promptKey", "wizardMode", "model"}]
      426 GETTABLEKS                       R18 R15 K51 ["Prompt"]
      428 SETTABLEKS                       R18 R17 K109 ["promptKey"]
      430 GETTABLEKS                       R18 R3 K184 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      432 SETTABLEKS                       R18 R17 K110 ["wizardMode"]
      434 GETTABLEKS                       R18 R3 K115 ["FStringAssistantMeshGenImageGenModelOverride"]
      436 SETTABLEKS                       R18 R17 K111 ["model"]
      438 JUMP                             ; [+1]
      439 LOADNIL                          R17
      440 SETTABLEKS                       R17 R16 K101 ["imageSelection"]
      442 NEWTABLE                         R17 4 0
      444 GETTABLEKS                       R18 R15 K51 ["Prompt"]
      446 DUPTABLE                         R19 K50 [{["label"], ["multiLine"] = True}]
      447 DUPTABLE                         R20 K145 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      448 SETTABLEKS                       R20 R19 K47 ["label"]
      450 SETTABLE                         R19 R17 R18
      451 GETTABLEKS                       R18 R15 K78 ["HintImage"]
      453 DUPTABLE                         R19 K57 [{"label"}]
      454 DUPTABLE                         R20 K147 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      455 SETTABLEKS                       R20 R19 K47 ["label"]
      457 SETTABLE                         R19 R17 R18
      458 GETTABLEKS                       R18 R15 K177 ["PartNames"]
      460 DUPTABLE                         R19 K152 [{"label", "infoPopover", "suggestion"}]
      461 DUPTABLE                         R20 K186 [{["namespace"] = "PrimitiveGen", ["key"] = "InputPartNamesTitle"}]
      462 SETTABLEKS                       R20 R19 K47 ["label"]
      464 DUPTABLE                         R20 K157 [{"body", "learnMore"}]
      465 DUPTABLE                         R21 K188 [{["namespace"] = "PrimGenSegmentation", ["key"] = "ExperimentalFeature"}]
      466 SETTABLEKS                       R21 R20 K155 ["body"]
      468 DUPTABLE                         R21 K162 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      469 SETTABLEKS                       R21 R20 K156 ["learnMore"]
      471 SETTABLEKS                       R20 R19 K150 ["infoPopover"]
      473 DUPTABLE                         R20 K190 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "procedural"}]
      474 GETTABLEKS                       R21 R15 K51 ["Prompt"]
      476 SETTABLEKS                       R21 R20 K109 ["promptKey"]
      478 GETTABLEKS                       R21 R15 K86 ["SuggestSegmentation"]
      480 SETTABLEKS                       R21 R20 K119 ["suggestKey"]
      482 SETTABLEKS                       R20 R19 K151 ["suggestion"]
      484 SETTABLE                         R19 R17 R18
      485 GETTABLEKS                       R18 R15 K86 ["SuggestSegmentation"]
      487 DUPTABLE                         R19 K169 [{"renderer"}]
      488 GETTABLEKS                       R20 R9 K86 ["SuggestSegmentation"]
      490 SETTABLEKS                       R20 R19 K168 ["renderer"]
      492 SETTABLE                         R19 R17 R18
      493 SETTABLEKS                       R17 R16 K40 ["rows"]
      495 SETTABLEKS                       R16 R14 K185 ["PrimitiveGen"]
      497 DUPTABLE                         R15 K195 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["Parts"] = "parts"}]
      498 DUPTABLE                         R16 K198 [{["formId"] = "segment_mesh", ["heading"] = "/segment_mesh", ["row"], ["confirmButton"], ["rows"]}]
      499 SETTABLEKS                       R15 R16 K38 ["row"]
      501 DUPTABLE                         R17 K200 [{["namespace"] = "SegmentMesh", ["key"] = "ConfirmButton"}]
      502 SETTABLEKS                       R17 R16 K39 ["confirmButton"]
      504 NEWTABLE                         R17 4 0
      506 GETTABLEKS                       R18 R15 K88 ["SelectedInstanceRef"]
      508 DUPTABLE                         R19 K202 [{"label", "validityBridge", "requirementMessage"}]
      509 DUPTABLE                         R20 K204 [{["namespace"] = "SegmentMesh", ["key"] = "MeshInstanceLabel"}]
      510 SETTABLEKS                       R20 R19 K47 ["label"]
      512 GETTABLEKS                       R20 R12 K23 ["SegmentMesh"]
      514 SETTABLEKS                       R20 R19 K201 ["validityBridge"]
      516 DUPTABLE                         R20 K206 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      517 SETTABLEKS                       R20 R19 K71 ["requirementMessage"]
      519 SETTABLE                         R19 R17 R18
      520 GETTABLEKS                       R19 R15 K88 ["SelectedInstanceRef"]
      522 LOADK                            R20 K207 [".isValid"]
      523 CONCAT                           R18 R19 R20
      524 DUPTABLE                         R19 K208 [{"requirementMessage"}]
      525 DUPTABLE                         R20 K206 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      526 SETTABLEKS                       R20 R19 K71 ["requirementMessage"]
      528 SETTABLE                         R19 R17 R18
      529 GETTABLEKS                       R18 R15 K191 ["SelectedInstanceRefIsValid"]
      531 DUPTABLE                         R19 K208 [{"requirementMessage"}]
      532 DUPTABLE                         R20 K206 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      533 SETTABLEKS                       R20 R19 K71 ["requirementMessage"]
      535 SETTABLE                         R19 R17 R18
      536 GETTABLEKS                       R18 R15 K193 ["Parts"]
      538 DUPTABLE                         R19 K209 [{["label"], ["multiLine"] = False}]
      539 DUPTABLE                         R20 K154 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      540 SETTABLEKS                       R20 R19 K47 ["label"]
      542 SETTABLE                         R19 R17 R18
      543 SETTABLEKS                       R17 R16 K40 ["rows"]
      545 SETTABLEKS                       R16 R14 K23 ["SegmentMesh"]
      547 DUPTABLE                         R15 K212 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["Mode"] = "mode"}]
      548 DUPTABLE                         R16 K215 [{["formId"] = "generate_texture", ["heading"] = "/generate_texture", ["row"], ["description"], ["confirmButton"], ["imageSelection"], ["rows"]}]
      549 SETTABLEKS                       R15 R16 K38 ["row"]
      551 DUPTABLE                         R17 K216 [{["namespace"] = "TextureGen", ["key"] = "InputDisclaimer"}]
      552 SETTABLEKS                       R17 R16 K99 ["description"]
      554 DUPTABLE                         R17 K218 [{["namespace"] = "TextureGen", ["key"] = "InputGenerateTexture"}]
      555 SETTABLEKS                       R17 R16 K39 ["confirmButton"]
      557 GETTABLEKS                       R18 R3 K108 ["EngineFeatureAssistantGen3dImagePreview"]
      559 JUMPIFNOT                        R18 ; [+38]
      560 DUPTABLE                         R17 K222 [{["promptKey"], ["wizardMode"], ["model"], ["resolveSeedImageFromSelectedInstance"] = True, ["skipField"], ["skipValues"]}]
      561 GETTABLEKS                       R18 R15 K25 ["TextPrompt"]
      563 SETTABLEKS                       R18 R17 K109 ["promptKey"]
      565 GETTABLEKS                       R18 R3 K223 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      567 SETTABLEKS                       R18 R17 K110 ["wizardMode"]
      569 GETTABLEKS                       R18 R3 K115 ["FStringAssistantMeshGenImageGenModelOverride"]
      571 SETTABLEKS                       R18 R17 K111 ["model"]
      573 GETTABLEKS                       R19 R3 K224 ["FFlagAssistantTextureGenModelSelection"]
      575 JUMPIFNOT                        R19 ; [+3]
      576 GETTABLEKS                       R18 R15 K210 ["Mode"]
      578 JUMP                             ; [+1]
      579 LOADNIL                          R18
      580 SETTABLEKS                       R18 R17 K220 ["skipField"]
      582 GETTABLEKS                       R19 R3 K224 ["FFlagAssistantTextureGenModelSelection"]
      584 JUMPIFNOT                        R19 ; [+9]
      585 NEWTABLE                         R18 0 1
      587 GETTABLEKS                       R19 R7 K225 ["MODE"]
      589 GETTABLEKS                       R19 R19 K226 ["Quality"]
      591 SETLIST                          R18 R19 1 [1]
      593 JUMP                             ; [+1]
      594 LOADNIL                          R18
      595 SETTABLEKS                       R18 R17 K221 ["skipValues"]
      597 JUMP                             ; [+1]
      598 LOADNIL                          R17
      599 SETTABLEKS                       R17 R16 K101 ["imageSelection"]
      601 NEWTABLE                         R17 8 0
      603 GETTABLEKS                       R18 R15 K88 ["SelectedInstanceRef"]
      605 DUPTABLE                         R19 K227 [{"label", "instanceClasses", "validityBridge", "requirementMessage"}]
      606 DUPTABLE                         R20 K229 [{["namespace"] = "TextureGen", ["key"] = "InputSelectedMesh"}]
      607 SETTABLEKS                       R20 R19 K47 ["label"]
      609 NEWTABLE                         R20 0 2
      611 LOADK                            R21 K230 ["MeshPart"]
      612 LOADK                            R22 K231 ["Model"]
      613 SETLIST                          R20 R21 2 [1]
      615 SETTABLEKS                       R20 R19 K171 ["instanceClasses"]
      617 GETTABLEKS                       R20 R12 K17 ["TextureGen"]
      619 SETTABLEKS                       R20 R19 K201 ["validityBridge"]
      621 DUPTABLE                         R20 K206 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      622 SETTABLEKS                       R20 R19 K71 ["requirementMessage"]
      624 SETTABLE                         R19 R17 R18
      625 GETTABLEKS                       R19 R15 K88 ["SelectedInstanceRef"]
      627 LOADK                            R20 K207 [".isValid"]
      628 CONCAT                           R18 R19 R20
      629 DUPTABLE                         R19 K208 [{"requirementMessage"}]
      630 DUPTABLE                         R20 K206 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      631 SETTABLEKS                       R20 R19 K71 ["requirementMessage"]
      633 SETTABLE                         R19 R17 R18
      634 GETTABLEKS                       R18 R15 K191 ["SelectedInstanceRefIsValid"]
      636 DUPTABLE                         R19 K208 [{"requirementMessage"}]
      637 DUPTABLE                         R20 K206 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      638 SETTABLEKS                       R20 R19 K71 ["requirementMessage"]
      640 SETTABLE                         R19 R17 R18
      641 GETTABLEKS                       R18 R15 K25 ["TextPrompt"]
      643 DUPTABLE                         R19 K50 [{["label"], ["multiLine"] = True}]
      644 DUPTABLE                         R20 K232 [{["namespace"] = "TextureGen", ["key"] = "InputPromptTitle"}]
      645 SETTABLEKS                       R20 R19 K47 ["label"]
      647 SETTABLE                         R19 R17 R18
      648 GETTABLEKS                       R18 R15 K78 ["HintImage"]
      650 DUPTABLE                         R19 K57 [{"label"}]
      651 DUPTABLE                         R20 K233 [{["namespace"] = "TextureGen", ["key"] = "InputHintImageTitle"}]
      652 SETTABLEKS                       R20 R19 K47 ["label"]
      654 SETTABLE                         R19 R17 R18
      655 GETTABLEKS                       R18 R15 K210 ["Mode"]
      657 DUPTABLE                         R19 K234 [{"label", "optionLabels", "infoPopover"}]
      658 DUPTABLE                         R20 K236 [{["namespace"] = "TextureGen", ["key"] = "ModelSelectorTitle"}]
      659 SETTABLEKS                       R20 R19 K47 ["label"]
      661 NEWTABLE                         R20 2 0
      663 GETTABLEKS                       R21 R7 K225 ["MODE"]
      665 GETTABLEKS                       R21 R21 K237 ["Fast"]
      667 DUPTABLE                         R22 K239 [{["namespace"] = "TextureGen", ["key"] = "ModelFast"}]
      668 SETTABLE                         R22 R20 R21
      669 GETTABLEKS                       R21 R7 K225 ["MODE"]
      671 GETTABLEKS                       R21 R21 K226 ["Quality"]
      673 DUPTABLE                         R22 K241 [{["namespace"] = "TextureGen", ["key"] = "ModelQuality"}]
      674 SETTABLE                         R22 R20 R21
      675 SETTABLEKS                       R20 R19 K123 ["optionLabels"]
      677 GETTABLEKS                       R21 R3 K224 ["FFlagAssistantTextureGenModelSelection"]
      679 JUMPIFNOT                        R21 ; [+5]
      680 DUPTABLE                         R20 K242 [{"body"}]
      681 DUPTABLE                         R21 K244 [{["namespace"] = "TextureGen", ["key"] = "ModelQualityInfo"}]
      682 SETTABLEKS                       R21 R20 K155 ["body"]
      684 JUMP                             ; [+1]
      685 LOADNIL                          R20
      686 SETTABLEKS                       R20 R19 K150 ["infoPopover"]
      688 SETTABLE                         R19 R17 R18
      689 SETTABLEKS                       R17 R16 K40 ["rows"]
      691 SETTABLEKS                       R16 R14 K17 ["TextureGen"]
      693 SETTABLEKS                       R14 R0 K245 ["Configs"]
      695 SETTABLEKS                       R12 R0 K246 ["ValidityBridge"]
      697 NEWTABLE                         R15 0 0
      699 GETIMPORT                        R16 K248 [pairs]
      701 MOVE                             R17 R14
      702 CALL                             R16 1 3
      703 FORGPREP_NEXT                    R16
      704 GETTABLEKS                       R21 R20 K34 ["formId"]
      706 SETTABLE                         R20 R15 R21
      707 FORGLOOP                         R16 2 ; [-4]
      709 LOADNIL                          R16
      710 NEWCLOSURE                       R17 P1
      711 CAPTURE                          REF R16
      712 CAPTURE                          VAL R15
      713 SETTABLEKS                       R17 R0 K249 ["getForm"]
      715 DUPCLOSURE                       R17 K250 [PROTO_2]
      716 CAPTURE                          VAL R0
      717 CAPTURE                          VAL R13
      718 SETTABLEKS                       R17 R0 K251 ["getRowPresentation"]
      720 NEWCLOSURE                       R17 P3
      721 CAPTURE                          REF R16
      722 SETTABLEKS                       R17 R0 K252 ["_registerTestConfig"]
      724 NEWCLOSURE                       R17 P4
      725 CAPTURE                          REF R16
      726 SETTABLEKS                       R17 R0 K253 ["_clearTestConfigs"]
      728 CLOSEUPVALS                      R16
      729 RETURN                           R0 1
