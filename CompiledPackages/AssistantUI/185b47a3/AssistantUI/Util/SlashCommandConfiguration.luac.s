PROTO_0:
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

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R2 R0 K0 ["formId"]
        6 SETTABLE                         R0 R1 R2
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_3:
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
       43 GETTABLEKS                       R7 R1 K15 ["Features"]
       45 GETTABLEKS                       R7 R7 K16 ["Gen3dUtils"]
       47 GETTABLEKS                       R7 R7 K17 ["SegmentationEnums"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R2 K18 ["RULE_KIND"]
       52 GETTABLEKS                       R8 R5 K19 ["ROW_TYPES"]
       54 GETTABLEKS                       R9 R6 K20 ["PromptMode"]
       56 GETTABLEKS                       R10 R2 K21 ["rule"]
       58 NEWTABLE                         R11 0 0
       60 NEWTABLE                         R12 8 0
       62 DUPTABLE                         R13 K30 [{["TextPrompt"] = "textPrompt", ["SelectedRigRef"] = "selectedRigRef", ["Duration"] = "duration", ["Loop"] = "loop"}]
       63 DUPTABLE                         R14 K38 [{["formId"] = "generate_animation", ["heading"] = "/generate_animation", ["row"], ["confirmButton"], ["rows"]}]
       64 SETTABLEKS                       R13 R14 K35 ["row"]
       66 DUPTABLE                         R15 K43 [{["namespace"] = "AnimationGen", ["key"] = "InputGenerate"}]
       67 SETTABLEKS                       R15 R14 K36 ["confirmButton"]
       69 NEWTABLE                         R15 4 0
       71 GETTABLEKS                       R16 R13 K22 ["TextPrompt"]
       73 DUPTABLE                         R17 K47 [{["label"], ["multiLine"] = True}]
       74 DUPTABLE                         R18 K49 [{["namespace"] = "AnimationGen", ["key"] = "Prompt"}]
       75 SETTABLEKS                       R18 R17 K44 ["label"]
       77 SETTABLE                         R17 R15 R16
       78 GETTABLEKS                       R16 R13 K24 ["SelectedRigRef"]
       80 DUPTABLE                         R17 K52 [{["label"], ["shouldSelectModel"] = True, ["requirementMessage"]}]
       81 DUPTABLE                         R18 K54 [{["namespace"] = "AnimationGen", ["key"] = "InputRig"}]
       82 SETTABLEKS                       R18 R17 K44 ["label"]
       84 DUPTABLE                         R18 K56 [{["namespace"] = "AnimationGen", ["key"] = "RigRequired"}]
       85 SETTABLEKS                       R18 R17 K51 ["requirementMessage"]
       87 SETTABLE                         R17 R15 R16
       88 GETTABLEKS                       R16 R13 K26 ["Duration"]
       90 DUPTABLE                         R17 K57 [{"label"}]
       91 DUPTABLE                         R18 K59 [{["namespace"] = "AnimationGen", ["key"] = "InputDuration"}]
       92 SETTABLEKS                       R18 R17 K44 ["label"]
       94 SETTABLE                         R17 R15 R16
       95 GETTABLEKS                       R16 R13 K28 ["Loop"]
       97 DUPTABLE                         R17 K57 [{"label"}]
       98 DUPTABLE                         R18 K61 [{["namespace"] = "AnimationGen", ["key"] = "InputLoop"}]
       99 SETTABLEKS                       R18 R17 K44 ["label"]
      101 SETTABLE                         R17 R15 R16
      102 SETTABLEKS                       R15 R14 K37 ["rows"]
      104 SETTABLEKS                       R14 R12 K40 ["AnimationGen"]
      106 DUPTABLE                         R13 K64 [{["SelectedModelRef"] = "selectedModelRef"}]
      107 DUPTABLE                         R14 K67 [{["formId"] = "auto_setup_avatar", ["heading"] = "/auto_setup_avatar", ["row"], ["confirmButton"], ["rows"]}]
      108 SETTABLEKS                       R13 R14 K35 ["row"]
      110 DUPTABLE                         R15 K70 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputSetUpAvatar"}]
      111 SETTABLEKS                       R15 R14 K36 ["confirmButton"]
      113 NEWTABLE                         R15 1 0
      115 GETTABLEKS                       R16 R13 K62 ["SelectedModelRef"]
      117 DUPTABLE                         R17 K52 [{["label"], ["shouldSelectModel"] = True, ["requirementMessage"]}]
      118 DUPTABLE                         R18 K72 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputModel"}]
      119 SETTABLEKS                       R18 R17 K44 ["label"]
      121 DUPTABLE                         R18 K74 [{["namespace"] = "AvatarAutoSetup", ["key"] = "ModelRequired"}]
      122 SETTABLEKS                       R18 R17 K51 ["requirementMessage"]
      124 SETTABLE                         R17 R15 R16
      125 SETTABLEKS                       R15 R14 K37 ["rows"]
      127 SETTABLEKS                       R14 R12 K68 ["AvatarAutoSetup"]
      129 DUPTABLE                         R13 K88 [{["PromptMode"] = "promptMode", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["MaxTriangles"] = "maxTriangles", ["TextPartNames"] = "textPartNames", ["ImagePartNames"] = "imagePartNames", ["SuggestSegmentation"] = "suggestSegmentation", ["SelectedInstanceRef"] = "selectedInstanceRef"}]
      130 GETTABLEKS                       R14 R3 K89 ["FFlagAssistantSegmentationPromptModeSelector"]
      132 DUPTABLE                         R15 K92 [{["visible"] = True, ["enabled"] = True}]
      133 DUPTABLE                         R16 K94 [{["visible"] = False, ["enabled"] = False}]
      134 DUPTABLE                         R17 K100 [{["formId"] = "generate_mesh", ["heading"] = "/generate_mesh", ["row"], ["description"], ["confirmButton"], ["axisRules"], ["imageSelection"], ["rows"]}]
      135 SETTABLEKS                       R13 R17 K35 ["row"]
      137 DUPTABLE                         R18 K102 [{["namespace"] = "MeshGen", ["key"] = "InputDisclaimer"}]
      138 SETTABLEKS                       R18 R17 K97 ["description"]
      140 DUPTABLE                         R18 K104 [{["namespace"] = "MeshGen", ["key"] = "InputGenerateMesh"}]
      141 SETTABLEKS                       R18 R17 K36 ["confirmButton"]
      143 JUMPIFNOT                        R14 ; [+56]
      144 NEWTABLE                         R18 0 1
      146 DUPTABLE                         R19 K107 [{"watch", "cases"}]
      147 GETTABLEKS                       R20 R13 K20 ["PromptMode"]
      149 SETTABLEKS                       R20 R19 K105 ["watch"]
      151 NEWTABLE                         R20 2 0
      153 GETTABLEKS                       R21 R9 K108 ["Text"]
      155 NEWTABLE                         R22 8 0
      157 GETTABLEKS                       R23 R13 K22 ["TextPrompt"]
      159 SETTABLE                         R15 R22 R23
      160 GETTABLEKS                       R23 R13 K80 ["TextPartNames"]
      162 SETTABLE                         R15 R22 R23
      163 GETTABLEKS                       R23 R13 K76 ["HintImage"]
      165 SETTABLE                         R16 R22 R23
      166 GETTABLEKS                       R23 R13 K82 ["ImagePartNames"]
      168 SETTABLE                         R16 R22 R23
      169 GETTABLEKS                       R23 R13 K84 ["SuggestSegmentation"]
      171 DUPTABLE                         R24 K110 [{["interactable"] = True}]
      172 SETTABLE                         R24 R22 R23
      173 SETTABLE                         R22 R20 R21
      174 GETTABLEKS                       R21 R9 K111 ["Image"]
      176 NEWTABLE                         R22 8 0
      178 GETTABLEKS                       R23 R13 K22 ["TextPrompt"]
      180 SETTABLE                         R16 R22 R23
      181 GETTABLEKS                       R23 R13 K80 ["TextPartNames"]
      183 SETTABLE                         R16 R22 R23
      184 GETTABLEKS                       R23 R13 K76 ["HintImage"]
      186 SETTABLE                         R15 R22 R23
      187 GETTABLEKS                       R23 R13 K82 ["ImagePartNames"]
      189 SETTABLE                         R15 R22 R23
      190 GETTABLEKS                       R23 R13 K84 ["SuggestSegmentation"]
      192 DUPTABLE                         R24 K112 [{["interactable"] = False}]
      193 SETTABLE                         R24 R22 R23
      194 SETTABLE                         R22 R20 R21
      195 SETTABLEKS                       R20 R19 K106 ["cases"]
      197 SETLIST                          R18 R19 1 [1]
      199 JUMP                             ; [+1]
      200 LOADNIL                          R18
      201 SETTABLEKS                       R18 R17 K98 ["axisRules"]
      203 GETTABLEKS                       R19 R3 K113 ["EngineFeatureAssistantGen3dImagePreview"]
      205 JUMPIFNOT                        R19 ; [+36]
      206 DUPTABLE                         R18 K118 [{"promptKey", "wizardMode", "model", "segmentationFold"}]
      207 GETTABLEKS                       R19 R13 K22 ["TextPrompt"]
      209 SETTABLEKS                       R19 R18 K114 ["promptKey"]
      211 GETTABLEKS                       R19 R3 K119 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      213 SETTABLEKS                       R19 R18 K115 ["wizardMode"]
      215 GETTABLEKS                       R19 R3 K120 ["FStringAssistantMeshGenImageGenModelOverride"]
      217 SETTABLEKS                       R19 R18 K116 ["model"]
      219 GETTABLEKS                       R20 R3 K121 ["FFlagAssistantImageGenImprovements"]
      221 JUMPIFNOT                        R20 ; [+16]
      222 DUPTABLE                         R19 K125 [{"kind", "partNamesKey", "suggestKey"}]
      223 GETTABLEKS                       R20 R2 K126 ["SEGMENTATION_FOLD_KIND"]
      225 GETTABLEKS                       R20 R20 K127 ["Gen3D"]
      227 SETTABLEKS                       R20 R19 K122 ["kind"]
      229 GETTABLEKS                       R20 R13 K80 ["TextPartNames"]
      231 SETTABLEKS                       R20 R19 K123 ["partNamesKey"]
      233 GETTABLEKS                       R20 R13 K84 ["SuggestSegmentation"]
      235 SETTABLEKS                       R20 R19 K124 ["suggestKey"]
      237 JUMP                             ; [+1]
      238 LOADNIL                          R19
      239 SETTABLEKS                       R19 R18 K117 ["segmentationFold"]
      241 JUMP                             ; [+1]
      242 LOADNIL                          R18
      243 SETTABLEKS                       R18 R17 K99 ["imageSelection"]
      245 NEWTABLE                         R18 8 0
      247 GETTABLEKS                       R19 R13 K20 ["PromptMode"]
      249 DUPTABLE                         R20 K130 [{"label", "optionLabels", "optionBadges"}]
      250 DUPTABLE                         R21 K132 [{["namespace"] = "MeshGen", ["key"] = "InputPromptModeTitle"}]
      251 SETTABLEKS                       R21 R20 K44 ["label"]
      253 NEWTABLE                         R21 2 0
      255 GETTABLEKS                       R22 R9 K108 ["Text"]
      257 DUPTABLE                         R23 K135 [{["namespace"] = "Gen3d", ["key"] = "PromptModeText"}]
      258 SETTABLE                         R23 R21 R22
      259 GETTABLEKS                       R22 R9 K111 ["Image"]
      261 DUPTABLE                         R23 K137 [{["namespace"] = "Gen3d", ["key"] = "PromptModeImage"}]
      262 SETTABLE                         R23 R21 R22
      263 SETTABLEKS                       R21 R20 K128 ["optionLabels"]
      265 NEWTABLE                         R21 2 0
      267 GETTABLEKS                       R22 R9 K108 ["Text"]
      269 MOVE                             R23 R10
      270 DUPTABLE                         R24 K140 [{"kind", "field", "cases", "default"}]
      271 GETTABLEKS                       R25 R7 K141 ["Branch"]
      273 SETTABLEKS                       R25 R24 K122 ["kind"]
      275 GETTABLEKS                       R25 R13 K20 ["PromptMode"]
      277 SETTABLEKS                       R25 R24 K138 ["field"]
      279 NEWTABLE                         R25 1 0
      281 GETTABLEKS                       R26 R9 K111 ["Image"]
      283 MOVE                             R27 R10
      284 DUPTABLE                         R28 K142 [{"kind", "field"}]
      285 GETTABLEKS                       R29 R7 K143 ["Present"]
      287 SETTABLEKS                       R29 R28 K122 ["kind"]
      289 GETTABLEKS                       R29 R13 K22 ["TextPrompt"]
      291 SETTABLEKS                       R29 R28 K138 ["field"]
      293 CALL                             R27 1 1
      294 SETTABLE                         R27 R25 R26
      295 SETTABLEKS                       R25 R24 K106 ["cases"]
      297 MOVE                             R25 R10
      298 DUPTABLE                         R26 K144 [{"kind"}]
      299 GETTABLEKS                       R27 R7 K145 ["Never"]
      301 SETTABLEKS                       R27 R26 K122 ["kind"]
      303 CALL                             R25 1 1
      304 SETTABLEKS                       R25 R24 K139 ["default"]
      306 CALL                             R23 1 1
      307 SETTABLE                         R23 R21 R22
      308 GETTABLEKS                       R22 R9 K111 ["Image"]
      310 MOVE                             R23 R10
      311 DUPTABLE                         R24 K140 [{"kind", "field", "cases", "default"}]
      312 GETTABLEKS                       R25 R7 K141 ["Branch"]
      314 SETTABLEKS                       R25 R24 K122 ["kind"]
      316 GETTABLEKS                       R25 R13 K20 ["PromptMode"]
      318 SETTABLEKS                       R25 R24 K138 ["field"]
      320 NEWTABLE                         R25 1 0
      322 GETTABLEKS                       R26 R9 K108 ["Text"]
      324 MOVE                             R27 R10
      325 DUPTABLE                         R28 K142 [{"kind", "field"}]
      326 GETTABLEKS                       R29 R7 K143 ["Present"]
      328 SETTABLEKS                       R29 R28 K122 ["kind"]
      330 GETTABLEKS                       R29 R13 K76 ["HintImage"]
      332 SETTABLEKS                       R29 R28 K138 ["field"]
      334 CALL                             R27 1 1
      335 SETTABLE                         R27 R25 R26
      336 SETTABLEKS                       R25 R24 K106 ["cases"]
      338 MOVE                             R25 R10
      339 DUPTABLE                         R26 K144 [{"kind"}]
      340 GETTABLEKS                       R27 R7 K145 ["Never"]
      342 SETTABLEKS                       R27 R26 K122 ["kind"]
      344 CALL                             R25 1 1
      345 SETTABLEKS                       R25 R24 K139 ["default"]
      347 CALL                             R23 1 1
      348 SETTABLE                         R23 R21 R22
      349 SETTABLEKS                       R21 R20 K129 ["optionBadges"]
      351 SETTABLE                         R20 R18 R19
      352 GETTABLEKS                       R19 R13 K22 ["TextPrompt"]
      354 DUPTABLE                         R20 K47 [{["label"], ["multiLine"] = True}]
      355 DUPTABLE                         R21 K147 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      356 SETTABLEKS                       R21 R20 K44 ["label"]
      358 SETTABLE                         R20 R18 R19
      359 GETTABLEKS                       R19 R13 K76 ["HintImage"]
      361 DUPTABLE                         R20 K57 [{"label"}]
      362 DUPTABLE                         R21 K149 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      363 SETTABLEKS                       R21 R20 K44 ["label"]
      365 SETTABLE                         R20 R18 R19
      366 GETTABLEKS                       R19 R13 K78 ["MaxTriangles"]
      368 DUPTABLE                         R20 K57 [{"label"}]
      369 DUPTABLE                         R21 K151 [{["namespace"] = "MeshGen", ["key"] = "InputTriangleCountTitle"}]
      370 SETTABLEKS                       R21 R20 K44 ["label"]
      372 SETTABLE                         R20 R18 R19
      373 GETTABLEKS                       R19 R13 K80 ["TextPartNames"]
      375 DUPTABLE                         R20 K154 [{"label", "infoPopover", "suggestion"}]
      376 DUPTABLE                         R21 K156 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      377 SETTABLEKS                       R21 R20 K44 ["label"]
      379 JUMPIFNOT                        R14 ; [+2]
      380 DUPTABLE                         R21 K159 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      381 JUMP                             ; [+1]
      382 LOADNIL                          R21
      383 SETTABLEKS                       R21 R20 K152 ["infoPopover"]
      385 DUPTABLE                         R21 K162 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "mesh"}]
      386 GETTABLEKS                       R22 R13 K22 ["TextPrompt"]
      388 SETTABLEKS                       R22 R21 K114 ["promptKey"]
      390 JUMPIFNOT                        R14 ; [+6]
      391 GETTABLEKS                       R23 R3 K163 ["FFlagGen3dSegmentationSelector"]
      393 JUMPIFNOT                        R23 ; [+3]
      394 GETTABLEKS                       R22 R13 K84 ["SuggestSegmentation"]
      396 JUMP                             ; [+1]
      397 LOADNIL                          R22
      398 SETTABLEKS                       R22 R21 K124 ["suggestKey"]
      400 SETTABLEKS                       R21 R20 K153 ["suggestion"]
      402 SETTABLE                         R20 R18 R19
      403 GETTABLEKS                       R19 R13 K82 ["ImagePartNames"]
      405 DUPTABLE                         R20 K164 [{"label", "infoPopover"}]
      406 DUPTABLE                         R21 K156 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      407 SETTABLEKS                       R21 R20 K44 ["label"]
      409 JUMPIFNOT                        R14 ; [+2]
      410 DUPTABLE                         R21 K159 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      411 JUMP                             ; [+1]
      412 LOADNIL                          R21
      413 SETTABLEKS                       R21 R20 K152 ["infoPopover"]
      415 SETTABLE                         R20 R18 R19
      416 GETTABLEKS                       R19 R13 K84 ["SuggestSegmentation"]
      418 DUPTABLE                         R20 K166 [{"renderer"}]
      419 GETTABLEKS                       R21 R8 K84 ["SuggestSegmentation"]
      421 SETTABLEKS                       R21 R20 K165 ["renderer"]
      423 SETTABLE                         R20 R18 R19
      424 GETTABLEKS                       R19 R13 K86 ["SelectedInstanceRef"]
      426 DUPTABLE                         R20 K169 [{"label", "internal", "instanceClasses"}]
      427 DUPTABLE                         R21 K171 [{["namespace"] = "MeshGen", ["key"] = "InputBoundingBox"}]
      428 SETTABLEKS                       R21 R20 K44 ["label"]
      430 JUMPIFNOT                        R14 ; [+2]
      431 LOADB                            R21 1
      432 JUMP                             ; [+1]
      433 LOADNIL                          R21
      434 SETTABLEKS                       R21 R20 K167 ["internal"]
      436 NEWTABLE                         R21 0 1
      438 GETTABLEKS                       R22 R4 K172 ["BOUNDING_BOX_INSTANCE_TYPE"]
      440 SETLIST                          R21 R22 1 [1]
      442 SETTABLEKS                       R21 R20 K168 ["instanceClasses"]
      444 SETTABLE                         R20 R18 R19
      445 SETTABLEKS                       R18 R17 K37 ["rows"]
      447 SETTABLEKS                       R17 R12 K10 ["MeshGen"]
      449 DUPTABLE                         R13 K176 [{["Prompt"] = "prompt", ["HintImage"] = "hintImage", ["PartNames"] = "partNames", ["SuggestSegmentation"] = "suggestSegmentation"}]
      450 DUPTABLE                         R14 K179 [{["formId"] = "generate_procedural_model", ["heading"] = "/generate_procedural_model", ["row"], ["imageSelection"], ["rows"]}]
      451 SETTABLEKS                       R13 R14 K35 ["row"]
      453 GETTABLEKS                       R16 R3 K113 ["EngineFeatureAssistantGen3dImagePreview"]
      455 JUMPIFNOT                        R16 ; [+14]
      456 DUPTABLE                         R15 K180 [{"promptKey", "wizardMode", "model"}]
      457 GETTABLEKS                       R16 R13 K48 ["Prompt"]
      459 SETTABLEKS                       R16 R15 K114 ["promptKey"]
      461 GETTABLEKS                       R16 R3 K181 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      463 SETTABLEKS                       R16 R15 K115 ["wizardMode"]
      465 GETTABLEKS                       R16 R3 K120 ["FStringAssistantMeshGenImageGenModelOverride"]
      467 SETTABLEKS                       R16 R15 K116 ["model"]
      469 JUMP                             ; [+1]
      470 LOADNIL                          R15
      471 SETTABLEKS                       R15 R14 K99 ["imageSelection"]
      473 NEWTABLE                         R15 4 0
      475 GETTABLEKS                       R16 R13 K48 ["Prompt"]
      477 DUPTABLE                         R17 K47 [{["label"], ["multiLine"] = True}]
      478 DUPTABLE                         R18 K147 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      479 SETTABLEKS                       R18 R17 K44 ["label"]
      481 SETTABLE                         R17 R15 R16
      482 GETTABLEKS                       R16 R13 K76 ["HintImage"]
      484 DUPTABLE                         R17 K57 [{"label"}]
      485 DUPTABLE                         R18 K149 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      486 SETTABLEKS                       R18 R17 K44 ["label"]
      488 SETTABLE                         R17 R15 R16
      489 GETTABLEKS                       R16 R13 K174 ["PartNames"]
      491 DUPTABLE                         R17 K154 [{"label", "infoPopover", "suggestion"}]
      492 DUPTABLE                         R18 K183 [{["namespace"] = "PrimitiveGen", ["key"] = "InputPartNamesTitle"}]
      493 SETTABLEKS                       R18 R17 K44 ["label"]
      495 DUPTABLE                         R18 K185 [{["namespace"] = "PrimGenSegmentation", ["key"] = "ExperimentalFeature"}]
      496 SETTABLEKS                       R18 R17 K152 ["infoPopover"]
      498 DUPTABLE                         R18 K187 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "procedural"}]
      499 GETTABLEKS                       R19 R13 K48 ["Prompt"]
      501 SETTABLEKS                       R19 R18 K114 ["promptKey"]
      503 GETTABLEKS                       R19 R13 K84 ["SuggestSegmentation"]
      505 SETTABLEKS                       R19 R18 K124 ["suggestKey"]
      507 SETTABLEKS                       R18 R17 K153 ["suggestion"]
      509 SETTABLE                         R17 R15 R16
      510 GETTABLEKS                       R16 R13 K84 ["SuggestSegmentation"]
      512 DUPTABLE                         R17 K166 [{"renderer"}]
      513 GETTABLEKS                       R18 R8 K84 ["SuggestSegmentation"]
      515 SETTABLEKS                       R18 R17 K165 ["renderer"]
      517 SETTABLE                         R17 R15 R16
      518 SETTABLEKS                       R15 R14 K37 ["rows"]
      520 SETTABLEKS                       R14 R12 K182 ["PrimitiveGen"]
      522 DUPTABLE                         R13 K192 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["Parts"] = "parts"}]
      523 DUPTABLE                         R14 K195 [{["formId"] = "segment_mesh", ["heading"] = "/segment_mesh", ["row"], ["confirmButton"], ["rows"]}]
      524 SETTABLEKS                       R13 R14 K35 ["row"]
      526 DUPTABLE                         R15 K198 [{["namespace"] = "SegmentMesh", ["key"] = "ConfirmButton"}]
      527 SETTABLEKS                       R15 R14 K36 ["confirmButton"]
      529 NEWTABLE                         R15 4 0
      531 GETTABLEKS                       R16 R13 K86 ["SelectedInstanceRef"]
      533 DUPTABLE                         R17 K199 [{"label", "requirementMessage"}]
      534 DUPTABLE                         R18 K201 [{["namespace"] = "SegmentMesh", ["key"] = "MeshInstanceLabel"}]
      535 SETTABLEKS                       R18 R17 K44 ["label"]
      537 DUPTABLE                         R18 K203 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      538 SETTABLEKS                       R18 R17 K51 ["requirementMessage"]
      540 SETTABLE                         R17 R15 R16
      541 GETTABLEKS                       R16 R13 K188 ["SelectedInstanceRefIsValid"]
      543 DUPTABLE                         R17 K204 [{"requirementMessage"}]
      544 DUPTABLE                         R18 K203 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      545 SETTABLEKS                       R18 R17 K51 ["requirementMessage"]
      547 SETTABLE                         R17 R15 R16
      548 GETTABLEKS                       R16 R13 K190 ["Parts"]
      550 DUPTABLE                         R17 K205 [{["label"], ["multiLine"] = False}]
      551 DUPTABLE                         R18 K156 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      552 SETTABLEKS                       R18 R17 K44 ["label"]
      554 SETTABLE                         R17 R15 R16
      555 SETTABLEKS                       R15 R14 K37 ["rows"]
      557 SETTABLEKS                       R14 R12 K196 ["SegmentMesh"]
      559 DUPTABLE                         R13 K206 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage"}]
      560 DUPTABLE                         R14 K209 [{["formId"] = "generate_texture", ["heading"] = "/generate_texture", ["row"], ["description"], ["confirmButton"], ["imageSelection"], ["rows"]}]
      561 SETTABLEKS                       R13 R14 K35 ["row"]
      563 DUPTABLE                         R15 K211 [{["namespace"] = "TextureGen", ["key"] = "InputDisclaimer"}]
      564 SETTABLEKS                       R15 R14 K97 ["description"]
      566 DUPTABLE                         R15 K213 [{["namespace"] = "TextureGen", ["key"] = "InputGenerateTexture"}]
      567 SETTABLEKS                       R15 R14 K36 ["confirmButton"]
      569 GETTABLEKS                       R16 R3 K113 ["EngineFeatureAssistantGen3dImagePreview"]
      571 JUMPIFNOT                        R16 ; [+14]
      572 DUPTABLE                         R15 K215 [{["promptKey"], ["wizardMode"], ["model"], ["resolveSeedImageFromSelectedInstance"] = True}]
      573 GETTABLEKS                       R16 R13 K22 ["TextPrompt"]
      575 SETTABLEKS                       R16 R15 K114 ["promptKey"]
      577 GETTABLEKS                       R16 R3 K216 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      579 SETTABLEKS                       R16 R15 K115 ["wizardMode"]
      581 GETTABLEKS                       R16 R3 K120 ["FStringAssistantMeshGenImageGenModelOverride"]
      583 SETTABLEKS                       R16 R15 K116 ["model"]
      585 JUMP                             ; [+1]
      586 LOADNIL                          R15
      587 SETTABLEKS                       R15 R14 K99 ["imageSelection"]
      589 NEWTABLE                         R15 4 0
      591 GETTABLEKS                       R16 R13 K86 ["SelectedInstanceRef"]
      593 DUPTABLE                         R17 K217 [{"label", "instanceClasses", "requirementMessage"}]
      594 DUPTABLE                         R18 K219 [{["namespace"] = "TextureGen", ["key"] = "InputSelectedMesh"}]
      595 SETTABLEKS                       R18 R17 K44 ["label"]
      597 NEWTABLE                         R18 0 2
      599 LOADK                            R19 K220 ["MeshPart"]
      600 LOADK                            R20 K221 ["Model"]
      601 SETLIST                          R18 R19 2 [1]
      603 SETTABLEKS                       R18 R17 K168 ["instanceClasses"]
      605 DUPTABLE                         R18 K203 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      606 SETTABLEKS                       R18 R17 K51 ["requirementMessage"]
      608 SETTABLE                         R17 R15 R16
      609 GETTABLEKS                       R16 R13 K188 ["SelectedInstanceRefIsValid"]
      611 DUPTABLE                         R17 K204 [{"requirementMessage"}]
      612 DUPTABLE                         R18 K203 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      613 SETTABLEKS                       R18 R17 K51 ["requirementMessage"]
      615 SETTABLE                         R17 R15 R16
      616 GETTABLEKS                       R16 R13 K22 ["TextPrompt"]
      618 DUPTABLE                         R17 K47 [{["label"], ["multiLine"] = True}]
      619 DUPTABLE                         R18 K222 [{["namespace"] = "TextureGen", ["key"] = "InputPromptTitle"}]
      620 SETTABLEKS                       R18 R17 K44 ["label"]
      622 SETTABLE                         R17 R15 R16
      623 GETTABLEKS                       R16 R13 K76 ["HintImage"]
      625 DUPTABLE                         R17 K57 [{"label"}]
      626 DUPTABLE                         R18 K223 [{["namespace"] = "TextureGen", ["key"] = "InputHintImageTitle"}]
      627 SETTABLEKS                       R18 R17 K44 ["label"]
      629 SETTABLE                         R17 R15 R16
      630 SETTABLEKS                       R15 R14 K37 ["rows"]
      632 SETTABLEKS                       R14 R12 K210 ["TextureGen"]
      634 SETTABLEKS                       R12 R0 K224 ["Configs"]
      636 NEWTABLE                         R13 0 0
      638 GETIMPORT                        R14 K226 [pairs]
      640 MOVE                             R15 R12
      641 CALL                             R14 1 3
      642 FORGPREP_NEXT                    R14
      643 GETTABLEKS                       R19 R18 K31 ["formId"]
      645 SETTABLE                         R18 R13 R19
      646 FORGLOOP                         R14 2 ; [-4]
      648 LOADNIL                          R14
      649 NEWCLOSURE                       R15 P0
      650 CAPTURE                          REF R14
      651 CAPTURE                          VAL R13
      652 SETTABLEKS                       R15 R0 K227 ["getForm"]
      654 DUPCLOSURE                       R15 K228 [PROTO_1]
      655 CAPTURE                          VAL R0
      656 CAPTURE                          VAL R11
      657 SETTABLEKS                       R15 R0 K229 ["getRowPresentation"]
      659 NEWCLOSURE                       R15 P2
      660 CAPTURE                          REF R14
      661 SETTABLEKS                       R15 R0 K230 ["_registerTestConfig"]
      663 NEWCLOSURE                       R15 P3
      664 CAPTURE                          REF R14
      665 SETTABLEKS                       R15 R0 K231 ["_clearTestConfigs"]
      667 CLOSEUPVALS                      R14
      668 RETURN                           R0 1
