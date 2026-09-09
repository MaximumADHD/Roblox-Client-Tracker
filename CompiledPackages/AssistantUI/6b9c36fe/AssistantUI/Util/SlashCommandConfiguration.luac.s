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
       25 GETTABLEKS                       R5 R1 K10 ["Parent"]
       27 GETTABLEKS                       R5 R5 K11 ["Gen3dCore"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R1 K6 ["Util"]
       34 GETTABLEKS                       R6 R6 K12 ["MeshGen"]
       36 GETTABLEKS                       R6 R6 K13 ["MeshGenConstants"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R1 K6 ["Util"]
       43 GETTABLEKS                       R7 R7 K14 ["Gen3dUtils"]
       45 GETTABLEKS                       R7 R7 K15 ["PromptTemplate"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R1 K16 ["Components"]
       52 GETTABLEKS                       R8 R8 K17 ["PropertyRows"]
       54 GETTABLEKS                       R8 R8 K18 ["PropertyRowTypes"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R1 K6 ["Util"]
       61 GETTABLEKS                       R9 R9 K14 ["Gen3dUtils"]
       63 GETTABLEKS                       R9 R9 K19 ["SegmentationEnums"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R10 R1 K6 ["Util"]
       70 GETTABLEKS                       R10 R10 K20 ["TextureGen"]
       72 GETTABLEKS                       R10 R10 K21 ["TextureGenTypes"]
       74 CALL                             R9 1 1
       75 GETTABLEKS                       R10 R2 K22 ["RULE_KIND"]
       77 GETTABLEKS                       R11 R7 K23 ["ROW_TYPES"]
       79 GETTABLEKS                       R12 R8 K24 ["PromptMode"]
       81 GETTABLEKS                       R13 R2 K25 ["asRule"]
       83 DUPTABLE                         R14 K27 [{["TextureGen"] = "TextureGen", ["SegmentMesh"] = "SegmentMesh"}]
       84 NEWTABLE                         R15 0 0
       86 NEWTABLE                         R16 8 0
       88 DUPTABLE                         R17 K34 [{["TextPrompt"] = "textPrompt", ["SelectedRigRef"] = "selectedRigRef", ["Duration"] = "duration"}]
       89 DUPTABLE                         R18 K42 [{["formId"] = "generate_animation", ["heading"] = "/generate_animation", ["row"], ["confirmButton"], ["rows"]}]
       90 SETTABLEKS                       R17 R18 K39 ["row"]
       92 DUPTABLE                         R19 K47 [{["namespace"] = "AnimationGen", ["key"] = "InputGenerate"}]
       93 SETTABLEKS                       R19 R18 K40 ["confirmButton"]
       95 NEWTABLE                         R19 4 0
       97 GETTABLEKS                       R20 R17 K28 ["TextPrompt"]
       99 DUPTABLE                         R21 K51 [{["label"], ["multiLine"] = True}]
      100 DUPTABLE                         R22 K53 [{["namespace"] = "AnimationGen", ["key"] = "Prompt"}]
      101 SETTABLEKS                       R22 R21 K48 ["label"]
      103 SETTABLE                         R21 R19 R20
      104 GETTABLEKS                       R20 R17 K30 ["SelectedRigRef"]
      106 DUPTABLE                         R21 K55 [{["label"], ["shouldSelectModel"] = True}]
      107 DUPTABLE                         R22 K57 [{["namespace"] = "AnimationGen", ["key"] = "InputRig"}]
      108 SETTABLEKS                       R22 R21 K48 ["label"]
      110 SETTABLE                         R21 R19 R20
      111 GETTABLEKS                       R20 R17 K32 ["Duration"]
      113 DUPTABLE                         R21 K58 [{"label"}]
      114 DUPTABLE                         R22 K60 [{["namespace"] = "AnimationGen", ["key"] = "InputDuration"}]
      115 SETTABLEKS                       R22 R21 K48 ["label"]
      117 SETTABLE                         R21 R19 R20
      118 SETTABLEKS                       R19 R18 K41 ["rows"]
      120 SETTABLEKS                       R18 R16 K44 ["AnimationGen"]
      122 DUPTABLE                         R17 K63 [{["SelectedModelRef"] = "selectedModelRef"}]
      123 DUPTABLE                         R18 K66 [{["formId"] = "auto_setup_avatar", ["heading"] = "/auto_setup_avatar", ["row"], ["confirmButton"], ["rows"]}]
      124 SETTABLEKS                       R17 R18 K39 ["row"]
      126 DUPTABLE                         R19 K69 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputSetUpAvatar"}]
      127 SETTABLEKS                       R19 R18 K40 ["confirmButton"]
      129 NEWTABLE                         R19 1 0
      131 GETTABLEKS                       R20 R17 K61 ["SelectedModelRef"]
      133 DUPTABLE                         R21 K71 [{["label"], ["shouldSelectModel"] = True, ["requirementMessage"]}]
      134 DUPTABLE                         R22 K73 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputModel"}]
      135 SETTABLEKS                       R22 R21 K48 ["label"]
      137 DUPTABLE                         R22 K75 [{["namespace"] = "AvatarAutoSetup", ["key"] = "ModelRequired"}]
      138 SETTABLEKS                       R22 R21 K70 ["requirementMessage"]
      140 SETTABLE                         R21 R19 R20
      141 SETTABLEKS                       R19 R18 K41 ["rows"]
      143 SETTABLEKS                       R18 R16 K67 ["AvatarAutoSetup"]
      145 DUPTABLE                         R17 K80 [{["TextPrompt"] = "textPrompt", ["IsometricImage"] = "isometricImage", ["TopDownImage"] = "topDownImage"}]
      146 DUPTABLE                         R18 K84 [{["formId"] = "generate_layout", ["heading"] = "/generate_layout", ["row"], ["confirmButton"], ["imageSelection"], ["rows"]}]
      147 SETTABLEKS                       R17 R18 K39 ["row"]
      149 DUPTABLE                         R19 K87 [{["namespace"] = "GenerateLayout", ["key"] = "Generate"}]
      150 SETTABLEKS                       R19 R18 K40 ["confirmButton"]
      152 DUPTABLE                         R19 K100 [{["promptKey"], ["wizardMode"] = True, ["slotCount"] = 4, ["model"] = "cube-layout-image", ["timeoutSeconds"] = 240, ["removeBackground"] = False, ["promptTemplatesByField"], ["seedImageFieldsByField"]}]
      153 GETTABLEKS                       R20 R17 K28 ["TextPrompt"]
      155 SETTABLEKS                       R20 R19 K88 ["promptKey"]
      157 NEWTABLE                         R20 2 0
      159 GETTABLEKS                       R21 R17 K76 ["IsometricImage"]
      161 GETTABLEKS                       R23 R4 K101 ["Constants"]
      163 GETTABLEKS                       R23 R23 K102 ["LAYOUT_MAP_PROMPT_PREFIX"]
      165 GETTABLEKS                       R24 R6 K103 ["PLACEHOLDER"]
      167 GETTABLEKS                       R25 R4 K101 ["Constants"]
      169 GETTABLEKS                       R25 R25 K104 ["LAYOUT_MAP_PROMPT_SUFFIX"]
      171 CONCAT                           R22 R23 R25
      172 SETTABLE                         R22 R20 R21
      173 GETTABLEKS                       R21 R17 K78 ["TopDownImage"]
      175 GETTABLEKS                       R23 R4 K101 ["Constants"]
      177 GETTABLEKS                       R23 R23 K105 ["LAYOUT_TOPDOWN_PROMPT_PREFIX"]
      179 GETTABLEKS                       R24 R6 K103 ["PLACEHOLDER"]
      181 GETTABLEKS                       R25 R4 K101 ["Constants"]
      183 GETTABLEKS                       R25 R25 K106 ["LAYOUT_TOPDOWN_PROMPT_SUFFIX"]
      185 CONCAT                           R22 R23 R25
      186 SETTABLE                         R22 R20 R21
      187 SETTABLEKS                       R20 R19 K98 ["promptTemplatesByField"]
      189 NEWTABLE                         R20 2 0
      191 GETTABLEKS                       R21 R17 K76 ["IsometricImage"]
      193 GETTABLEKS                       R22 R17 K76 ["IsometricImage"]
      195 SETTABLE                         R22 R20 R21
      196 GETTABLEKS                       R21 R17 K78 ["TopDownImage"]
      198 GETTABLEKS                       R22 R17 K76 ["IsometricImage"]
      200 SETTABLE                         R22 R20 R21
      201 SETTABLEKS                       R20 R19 K99 ["seedImageFieldsByField"]
      203 SETTABLEKS                       R19 R18 K83 ["imageSelection"]
      205 NEWTABLE                         R19 4 0
      207 GETTABLEKS                       R20 R17 K28 ["TextPrompt"]
      209 DUPTABLE                         R21 K108 [{["label"], ["internal"] = True}]
      210 DUPTABLE                         R22 K110 [{["namespace"] = "GenerateLayout", ["key"] = "InputPromptTitle"}]
      211 SETTABLEKS                       R22 R21 K48 ["label"]
      213 SETTABLE                         R21 R19 R20
      214 GETTABLEKS                       R20 R17 K76 ["IsometricImage"]
      216 DUPTABLE                         R21 K58 [{"label"}]
      217 DUPTABLE                         R22 K112 [{["namespace"] = "GenerateLayout", ["key"] = "InputIsometricImageTitle"}]
      218 SETTABLEKS                       R22 R21 K48 ["label"]
      220 SETTABLE                         R21 R19 R20
      221 GETTABLEKS                       R20 R17 K78 ["TopDownImage"]
      223 DUPTABLE                         R21 K58 [{"label"}]
      224 DUPTABLE                         R22 K114 [{["namespace"] = "GenerateLayout", ["key"] = "InputTopDownImageTitle"}]
      225 SETTABLEKS                       R22 R21 K48 ["label"]
      227 SETTABLE                         R21 R19 R20
      228 SETTABLEKS                       R19 R18 K41 ["rows"]
      230 SETTABLEKS                       R18 R16 K85 ["GenerateLayout"]
      232 DUPTABLE                         R17 K128 [{["PromptMode"] = "promptMode", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["MaxTriangles"] = "maxTriangles", ["TextPartNames"] = "textPartNames", ["ImagePartNames"] = "imagePartNames", ["SuggestSegmentation"] = "suggestSegmentation", ["SelectedInstanceRef"] = "selectedInstanceRef"}]
      233 GETTABLEKS                       R18 R3 K129 ["FFlagAssistantSegmentationPromptModeSelector"]
      235 DUPTABLE                         R19 K132 [{["visible"] = True, ["enabled"] = True}]
      236 DUPTABLE                         R20 K133 [{["visible"] = False, ["enabled"] = False}]
      237 DUPTABLE                         R21 K138 [{["formId"] = "generate_mesh", ["heading"] = "/generate_mesh", ["row"], ["description"], ["confirmButton"], ["axisResolver"], ["imageSelection"], ["rows"]}]
      238 SETTABLEKS                       R17 R21 K39 ["row"]
      240 DUPTABLE                         R22 K140 [{["namespace"] = "MeshGen", ["key"] = "InputDisclaimer"}]
      241 SETTABLEKS                       R22 R21 K136 ["description"]
      243 DUPTABLE                         R22 K142 [{["namespace"] = "MeshGen", ["key"] = "InputGenerateMesh"}]
      244 SETTABLEKS                       R22 R21 K40 ["confirmButton"]
      246 JUMPIFNOT                        R18 ; [+6]
      247 DUPCLOSURE                       R22 K143 [PROTO_0]
      248 CAPTURE                          VAL R17
      249 CAPTURE                          VAL R12
      250 CAPTURE                          VAL R20
      251 CAPTURE                          VAL R19
      252 JUMP                             ; [+1]
      253 LOADNIL                          R22
      254 SETTABLEKS                       R22 R21 K137 ["axisResolver"]
      256 GETTABLEKS                       R23 R3 K144 ["EngineFeatureAssistantGen3dImagePreview"]
      258 JUMPIFNOT                        R23 ; [+36]
      259 DUPTABLE                         R22 K146 [{"promptKey", "wizardMode", "model", "segmentationFold"}]
      260 GETTABLEKS                       R23 R17 K28 ["TextPrompt"]
      262 SETTABLEKS                       R23 R22 K88 ["promptKey"]
      264 GETTABLEKS                       R23 R3 K147 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      266 SETTABLEKS                       R23 R22 K89 ["wizardMode"]
      268 GETTABLEKS                       R23 R3 K148 ["FStringAssistantMeshGenImageGenModelOverride"]
      270 SETTABLEKS                       R23 R22 K92 ["model"]
      272 GETTABLEKS                       R24 R3 K149 ["FFlagAssistantImageGenImprovements"]
      274 JUMPIFNOT                        R24 ; [+16]
      275 DUPTABLE                         R23 K153 [{"kind", "partNamesKey", "suggestKey"}]
      276 GETTABLEKS                       R24 R2 K154 ["SEGMENTATION_FOLD_KIND"]
      278 GETTABLEKS                       R24 R24 K155 ["Gen3D"]
      280 SETTABLEKS                       R24 R23 K150 ["kind"]
      282 GETTABLEKS                       R24 R17 K120 ["TextPartNames"]
      284 SETTABLEKS                       R24 R23 K151 ["partNamesKey"]
      286 GETTABLEKS                       R24 R17 K124 ["SuggestSegmentation"]
      288 SETTABLEKS                       R24 R23 K152 ["suggestKey"]
      290 JUMP                             ; [+1]
      291 LOADNIL                          R23
      292 SETTABLEKS                       R23 R22 K145 ["segmentationFold"]
      294 JUMP                             ; [+1]
      295 LOADNIL                          R22
      296 SETTABLEKS                       R22 R21 K83 ["imageSelection"]
      298 NEWTABLE                         R22 8 0
      300 GETTABLEKS                       R23 R17 K24 ["PromptMode"]
      302 DUPTABLE                         R24 K158 [{"label", "optionLabels", "optionBadges"}]
      303 DUPTABLE                         R25 K160 [{["namespace"] = "MeshGen", ["key"] = "InputPromptModeTitle"}]
      304 SETTABLEKS                       R25 R24 K48 ["label"]
      306 NEWTABLE                         R25 2 0
      308 GETTABLEKS                       R26 R12 K161 ["Text"]
      310 DUPTABLE                         R27 K164 [{["namespace"] = "Gen3d", ["key"] = "PromptModeText"}]
      311 SETTABLE                         R27 R25 R26
      312 GETTABLEKS                       R26 R12 K165 ["Image"]
      314 DUPTABLE                         R27 K167 [{["namespace"] = "Gen3d", ["key"] = "PromptModeImage"}]
      315 SETTABLE                         R27 R25 R26
      316 SETTABLEKS                       R25 R24 K156 ["optionLabels"]
      318 NEWTABLE                         R25 2 0
      320 GETTABLEKS                       R26 R12 K161 ["Text"]
      322 MOVE                             R27 R13
      323 DUPTABLE                         R28 K171 [{"kind", "field", "cases", "default"}]
      324 GETTABLEKS                       R29 R10 K172 ["Branch"]
      326 SETTABLEKS                       R29 R28 K150 ["kind"]
      328 GETTABLEKS                       R29 R17 K24 ["PromptMode"]
      330 SETTABLEKS                       R29 R28 K168 ["field"]
      332 NEWTABLE                         R29 1 0
      334 GETTABLEKS                       R30 R12 K165 ["Image"]
      336 MOVE                             R31 R13
      337 DUPTABLE                         R32 K173 [{"kind", "field"}]
      338 GETTABLEKS                       R33 R10 K174 ["NonEmpty"]
      340 SETTABLEKS                       R33 R32 K150 ["kind"]
      342 GETTABLEKS                       R33 R17 K28 ["TextPrompt"]
      344 SETTABLEKS                       R33 R32 K168 ["field"]
      346 CALL                             R31 1 1
      347 SETTABLE                         R31 R29 R30
      348 SETTABLEKS                       R29 R28 K169 ["cases"]
      350 MOVE                             R29 R13
      351 DUPTABLE                         R30 K175 [{"kind"}]
      352 GETTABLEKS                       R31 R10 K176 ["Never"]
      354 SETTABLEKS                       R31 R30 K150 ["kind"]
      356 CALL                             R29 1 1
      357 SETTABLEKS                       R29 R28 K170 ["default"]
      359 CALL                             R27 1 1
      360 SETTABLE                         R27 R25 R26
      361 GETTABLEKS                       R26 R12 K165 ["Image"]
      363 MOVE                             R27 R13
      364 DUPTABLE                         R28 K171 [{"kind", "field", "cases", "default"}]
      365 GETTABLEKS                       R29 R10 K172 ["Branch"]
      367 SETTABLEKS                       R29 R28 K150 ["kind"]
      369 GETTABLEKS                       R29 R17 K24 ["PromptMode"]
      371 SETTABLEKS                       R29 R28 K168 ["field"]
      373 NEWTABLE                         R29 1 0
      375 GETTABLEKS                       R30 R12 K161 ["Text"]
      377 MOVE                             R31 R13
      378 DUPTABLE                         R32 K173 [{"kind", "field"}]
      379 GETTABLEKS                       R33 R10 K174 ["NonEmpty"]
      381 SETTABLEKS                       R33 R32 K150 ["kind"]
      383 GETTABLEKS                       R33 R17 K116 ["HintImage"]
      385 SETTABLEKS                       R33 R32 K168 ["field"]
      387 CALL                             R31 1 1
      388 SETTABLE                         R31 R29 R30
      389 SETTABLEKS                       R29 R28 K169 ["cases"]
      391 MOVE                             R29 R13
      392 DUPTABLE                         R30 K175 [{"kind"}]
      393 GETTABLEKS                       R31 R10 K176 ["Never"]
      395 SETTABLEKS                       R31 R30 K150 ["kind"]
      397 CALL                             R29 1 1
      398 SETTABLEKS                       R29 R28 K170 ["default"]
      400 CALL                             R27 1 1
      401 SETTABLE                         R27 R25 R26
      402 SETTABLEKS                       R25 R24 K157 ["optionBadges"]
      404 SETTABLE                         R24 R22 R23
      405 GETTABLEKS                       R23 R17 K28 ["TextPrompt"]
      407 DUPTABLE                         R24 K178 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      408 DUPTABLE                         R25 K179 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      409 SETTABLEKS                       R25 R24 K48 ["label"]
      411 GETTABLEKS                       R26 R3 K180 ["FFlagAssistantAddPlaceholderProp"]
      413 JUMPIFNOT                        R26 ; [+2]
      414 DUPTABLE                         R25 K182 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      415 JUMP                             ; [+1]
      416 LOADNIL                          R25
      417 SETTABLEKS                       R25 R24 K177 ["placeholder"]
      419 SETTABLE                         R24 R22 R23
      420 GETTABLEKS                       R23 R17 K116 ["HintImage"]
      422 DUPTABLE                         R24 K58 [{"label"}]
      423 DUPTABLE                         R25 K184 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      424 SETTABLEKS                       R25 R24 K48 ["label"]
      426 SETTABLE                         R24 R22 R23
      427 GETTABLEKS                       R23 R17 K118 ["MaxTriangles"]
      429 DUPTABLE                         R24 K58 [{"label"}]
      430 DUPTABLE                         R25 K186 [{["namespace"] = "MeshGen", ["key"] = "InputTriangleCountTitle"}]
      431 SETTABLEKS                       R25 R24 K48 ["label"]
      433 SETTABLE                         R24 R22 R23
      434 GETTABLEKS                       R23 R17 K120 ["TextPartNames"]
      436 DUPTABLE                         R24 K189 [{"label", "infoPopover", "suggestion"}]
      437 DUPTABLE                         R25 K191 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      438 SETTABLEKS                       R25 R24 K48 ["label"]
      440 JUMPIFNOT                        R18 ; [+8]
      441 DUPTABLE                         R25 K194 [{"body", "learnMore"}]
      442 DUPTABLE                         R26 K197 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      443 SETTABLEKS                       R26 R25 K192 ["body"]
      445 DUPTABLE                         R26 K199 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      446 SETTABLEKS                       R26 R25 K193 ["learnMore"]
      448 JUMP                             ; [+1]
      449 LOADNIL                          R25
      450 SETTABLEKS                       R25 R24 K187 ["infoPopover"]
      452 DUPTABLE                         R25 K202 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "mesh"}]
      453 GETTABLEKS                       R26 R17 K28 ["TextPrompt"]
      455 SETTABLEKS                       R26 R25 K88 ["promptKey"]
      457 JUMPIFNOT                        R18 ; [+6]
      458 GETTABLEKS                       R27 R3 K203 ["FFlagGen3dSegmentationSelector"]
      460 JUMPIFNOT                        R27 ; [+3]
      461 GETTABLEKS                       R26 R17 K124 ["SuggestSegmentation"]
      463 JUMP                             ; [+1]
      464 LOADNIL                          R26
      465 SETTABLEKS                       R26 R25 K152 ["suggestKey"]
      467 SETTABLEKS                       R25 R24 K188 ["suggestion"]
      469 SETTABLE                         R24 R22 R23
      470 GETTABLEKS                       R23 R17 K122 ["ImagePartNames"]
      472 DUPTABLE                         R24 K204 [{"label", "infoPopover"}]
      473 DUPTABLE                         R25 K191 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      474 SETTABLEKS                       R25 R24 K48 ["label"]
      476 JUMPIFNOT                        R18 ; [+8]
      477 DUPTABLE                         R25 K194 [{"body", "learnMore"}]
      478 DUPTABLE                         R26 K197 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      479 SETTABLEKS                       R26 R25 K192 ["body"]
      481 DUPTABLE                         R26 K199 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      482 SETTABLEKS                       R26 R25 K193 ["learnMore"]
      484 JUMP                             ; [+1]
      485 LOADNIL                          R25
      486 SETTABLEKS                       R25 R24 K187 ["infoPopover"]
      488 SETTABLE                         R24 R22 R23
      489 GETTABLEKS                       R23 R17 K124 ["SuggestSegmentation"]
      491 DUPTABLE                         R24 K206 [{"renderer"}]
      492 GETTABLEKS                       R25 R11 K124 ["SuggestSegmentation"]
      494 SETTABLEKS                       R25 R24 K205 ["renderer"]
      496 SETTABLE                         R24 R22 R23
      497 GETTABLEKS                       R23 R17 K126 ["SelectedInstanceRef"]
      499 DUPTABLE                         R24 K208 [{"label", "internal", "instanceClasses"}]
      500 DUPTABLE                         R25 K210 [{["namespace"] = "MeshGen", ["key"] = "InputBoundingBox"}]
      501 SETTABLEKS                       R25 R24 K48 ["label"]
      503 JUMPIFNOT                        R18 ; [+2]
      504 LOADB                            R25 1
      505 JUMP                             ; [+1]
      506 LOADNIL                          R25
      507 SETTABLEKS                       R25 R24 K107 ["internal"]
      509 NEWTABLE                         R25 0 1
      511 GETTABLEKS                       R26 R5 K211 ["BOUNDING_BOX_INSTANCE_TYPE"]
      513 SETLIST                          R25 R26 1 [1]
      515 SETTABLEKS                       R25 R24 K207 ["instanceClasses"]
      517 SETTABLE                         R24 R22 R23
      518 SETTABLEKS                       R22 R21 K41 ["rows"]
      520 SETTABLEKS                       R21 R16 K12 ["MeshGen"]
      522 DUPTABLE                         R17 K215 [{["Prompt"] = "prompt", ["HintImage"] = "hintImage", ["PartNames"] = "partNames", ["SuggestSegmentation"] = "suggestSegmentation"}]
      523 DUPTABLE                         R18 K218 [{["formId"] = "generate_procedural_model", ["heading"] = "/generate_procedural_model", ["row"], ["imageSelection"], ["rows"]}]
      524 SETTABLEKS                       R17 R18 K39 ["row"]
      526 GETTABLEKS                       R20 R3 K144 ["EngineFeatureAssistantGen3dImagePreview"]
      528 JUMPIFNOT                        R20 ; [+14]
      529 DUPTABLE                         R19 K219 [{"promptKey", "wizardMode", "model"}]
      530 GETTABLEKS                       R20 R17 K52 ["Prompt"]
      532 SETTABLEKS                       R20 R19 K88 ["promptKey"]
      534 GETTABLEKS                       R20 R3 K220 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      536 SETTABLEKS                       R20 R19 K89 ["wizardMode"]
      538 GETTABLEKS                       R20 R3 K148 ["FStringAssistantMeshGenImageGenModelOverride"]
      540 SETTABLEKS                       R20 R19 K92 ["model"]
      542 JUMP                             ; [+1]
      543 LOADNIL                          R19
      544 SETTABLEKS                       R19 R18 K83 ["imageSelection"]
      546 NEWTABLE                         R19 4 0
      548 GETTABLEKS                       R20 R17 K52 ["Prompt"]
      550 DUPTABLE                         R21 K178 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      551 DUPTABLE                         R22 K179 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      552 SETTABLEKS                       R22 R21 K48 ["label"]
      554 GETTABLEKS                       R23 R3 K180 ["FFlagAssistantAddPlaceholderProp"]
      556 JUMPIFNOT                        R23 ; [+2]
      557 DUPTABLE                         R22 K182 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      558 JUMP                             ; [+1]
      559 LOADNIL                          R22
      560 SETTABLEKS                       R22 R21 K177 ["placeholder"]
      562 SETTABLE                         R21 R19 R20
      563 GETTABLEKS                       R20 R17 K116 ["HintImage"]
      565 DUPTABLE                         R21 K58 [{"label"}]
      566 DUPTABLE                         R22 K184 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      567 SETTABLEKS                       R22 R21 K48 ["label"]
      569 SETTABLE                         R21 R19 R20
      570 GETTABLEKS                       R20 R17 K213 ["PartNames"]
      572 DUPTABLE                         R21 K189 [{"label", "infoPopover", "suggestion"}]
      573 DUPTABLE                         R22 K222 [{["namespace"] = "PrimitiveGen", ["key"] = "InputPartNamesTitle"}]
      574 SETTABLEKS                       R22 R21 K48 ["label"]
      576 DUPTABLE                         R22 K194 [{"body", "learnMore"}]
      577 DUPTABLE                         R23 K224 [{["namespace"] = "PrimGenSegmentation", ["key"] = "ExperimentalFeature"}]
      578 SETTABLEKS                       R23 R22 K192 ["body"]
      580 DUPTABLE                         R23 K199 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      581 SETTABLEKS                       R23 R22 K193 ["learnMore"]
      583 SETTABLEKS                       R22 R21 K187 ["infoPopover"]
      585 DUPTABLE                         R22 K226 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "procedural"}]
      586 GETTABLEKS                       R23 R17 K52 ["Prompt"]
      588 SETTABLEKS                       R23 R22 K88 ["promptKey"]
      590 GETTABLEKS                       R23 R17 K124 ["SuggestSegmentation"]
      592 SETTABLEKS                       R23 R22 K152 ["suggestKey"]
      594 SETTABLEKS                       R22 R21 K188 ["suggestion"]
      596 SETTABLE                         R21 R19 R20
      597 GETTABLEKS                       R20 R17 K124 ["SuggestSegmentation"]
      599 DUPTABLE                         R21 K206 [{"renderer"}]
      600 GETTABLEKS                       R22 R11 K124 ["SuggestSegmentation"]
      602 SETTABLEKS                       R22 R21 K205 ["renderer"]
      604 SETTABLE                         R21 R19 R20
      605 SETTABLEKS                       R19 R18 K41 ["rows"]
      607 SETTABLEKS                       R18 R16 K221 ["PrimitiveGen"]
      609 DUPTABLE                         R17 K231 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["Parts"] = "parts"}]
      610 DUPTABLE                         R18 K234 [{["formId"] = "segment_mesh", ["heading"] = "/segment_mesh", ["row"], ["confirmButton"], ["rows"]}]
      611 SETTABLEKS                       R17 R18 K39 ["row"]
      613 DUPTABLE                         R19 K236 [{["namespace"] = "SegmentMesh", ["key"] = "ConfirmButton"}]
      614 SETTABLEKS                       R19 R18 K40 ["confirmButton"]
      616 NEWTABLE                         R19 4 0
      618 GETTABLEKS                       R20 R17 K126 ["SelectedInstanceRef"]
      620 DUPTABLE                         R21 K238 [{"label", "validityBridge", "requirementMessage"}]
      621 DUPTABLE                         R22 K240 [{["namespace"] = "SegmentMesh", ["key"] = "MeshInstanceLabel"}]
      622 SETTABLEKS                       R22 R21 K48 ["label"]
      624 GETTABLEKS                       R22 R14 K26 ["SegmentMesh"]
      626 SETTABLEKS                       R22 R21 K237 ["validityBridge"]
      628 DUPTABLE                         R22 K242 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      629 SETTABLEKS                       R22 R21 K70 ["requirementMessage"]
      631 SETTABLE                         R21 R19 R20
      632 GETTABLEKS                       R21 R17 K126 ["SelectedInstanceRef"]
      634 LOADK                            R22 K243 [".isValid"]
      635 CONCAT                           R20 R21 R22
      636 DUPTABLE                         R21 K244 [{"requirementMessage"}]
      637 DUPTABLE                         R22 K242 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      638 SETTABLEKS                       R22 R21 K70 ["requirementMessage"]
      640 SETTABLE                         R21 R19 R20
      641 GETTABLEKS                       R20 R17 K227 ["SelectedInstanceRefIsValid"]
      643 DUPTABLE                         R21 K244 [{"requirementMessage"}]
      644 DUPTABLE                         R22 K242 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      645 SETTABLEKS                       R22 R21 K70 ["requirementMessage"]
      647 SETTABLE                         R21 R19 R20
      648 GETTABLEKS                       R20 R17 K229 ["Parts"]
      650 DUPTABLE                         R21 K245 [{["label"], ["multiLine"] = False}]
      651 DUPTABLE                         R22 K191 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      652 SETTABLEKS                       R22 R21 K48 ["label"]
      654 SETTABLE                         R21 R19 R20
      655 SETTABLEKS                       R19 R18 K41 ["rows"]
      657 SETTABLEKS                       R18 R16 K26 ["SegmentMesh"]
      659 DUPTABLE                         R17 K248 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["Mode"] = "mode"}]
      660 DUPTABLE                         R18 K251 [{["formId"] = "generate_texture", ["heading"] = "/generate_texture", ["row"], ["description"], ["confirmButton"], ["imageSelection"], ["rows"]}]
      661 SETTABLEKS                       R17 R18 K39 ["row"]
      663 DUPTABLE                         R19 K252 [{["namespace"] = "TextureGen", ["key"] = "InputDisclaimer"}]
      664 SETTABLEKS                       R19 R18 K136 ["description"]
      666 DUPTABLE                         R19 K254 [{["namespace"] = "TextureGen", ["key"] = "InputGenerateTexture"}]
      667 SETTABLEKS                       R19 R18 K40 ["confirmButton"]
      669 GETTABLEKS                       R20 R3 K144 ["EngineFeatureAssistantGen3dImagePreview"]
      671 JUMPIFNOT                        R20 ; [+38]
      672 DUPTABLE                         R19 K258 [{["promptKey"], ["wizardMode"], ["model"], ["resolveSeedImageFromSelectedInstance"] = True, ["skipField"], ["skipValues"]}]
      673 GETTABLEKS                       R20 R17 K28 ["TextPrompt"]
      675 SETTABLEKS                       R20 R19 K88 ["promptKey"]
      677 GETTABLEKS                       R20 R3 K259 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      679 SETTABLEKS                       R20 R19 K89 ["wizardMode"]
      681 GETTABLEKS                       R20 R3 K148 ["FStringAssistantMeshGenImageGenModelOverride"]
      683 SETTABLEKS                       R20 R19 K92 ["model"]
      685 GETTABLEKS                       R21 R3 K260 ["FFlagAssistantTextureGenModelSelection"]
      687 JUMPIFNOT                        R21 ; [+3]
      688 GETTABLEKS                       R20 R17 K246 ["Mode"]
      690 JUMP                             ; [+1]
      691 LOADNIL                          R20
      692 SETTABLEKS                       R20 R19 K256 ["skipField"]
      694 GETTABLEKS                       R21 R3 K260 ["FFlagAssistantTextureGenModelSelection"]
      696 JUMPIFNOT                        R21 ; [+9]
      697 NEWTABLE                         R20 0 1
      699 GETTABLEKS                       R21 R9 K261 ["MODE"]
      701 GETTABLEKS                       R21 R21 K262 ["Quality"]
      703 SETLIST                          R20 R21 1 [1]
      705 JUMP                             ; [+1]
      706 LOADNIL                          R20
      707 SETTABLEKS                       R20 R19 K257 ["skipValues"]
      709 JUMP                             ; [+1]
      710 LOADNIL                          R19
      711 SETTABLEKS                       R19 R18 K83 ["imageSelection"]
      713 NEWTABLE                         R19 8 0
      715 GETTABLEKS                       R20 R17 K126 ["SelectedInstanceRef"]
      717 DUPTABLE                         R21 K263 [{"label", "instanceClasses", "validityBridge", "requirementMessage"}]
      718 DUPTABLE                         R22 K265 [{["namespace"] = "TextureGen", ["key"] = "InputSelectedMesh"}]
      719 SETTABLEKS                       R22 R21 K48 ["label"]
      721 NEWTABLE                         R22 0 2
      723 LOADK                            R23 K266 ["MeshPart"]
      724 LOADK                            R24 K267 ["Model"]
      725 SETLIST                          R22 R23 2 [1]
      727 SETTABLEKS                       R22 R21 K207 ["instanceClasses"]
      729 GETTABLEKS                       R22 R14 K20 ["TextureGen"]
      731 SETTABLEKS                       R22 R21 K237 ["validityBridge"]
      733 DUPTABLE                         R22 K242 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      734 SETTABLEKS                       R22 R21 K70 ["requirementMessage"]
      736 SETTABLE                         R21 R19 R20
      737 GETTABLEKS                       R21 R17 K126 ["SelectedInstanceRef"]
      739 LOADK                            R22 K243 [".isValid"]
      740 CONCAT                           R20 R21 R22
      741 DUPTABLE                         R21 K244 [{"requirementMessage"}]
      742 DUPTABLE                         R22 K242 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      743 SETTABLEKS                       R22 R21 K70 ["requirementMessage"]
      745 SETTABLE                         R21 R19 R20
      746 GETTABLEKS                       R20 R17 K227 ["SelectedInstanceRefIsValid"]
      748 DUPTABLE                         R21 K244 [{"requirementMessage"}]
      749 DUPTABLE                         R22 K242 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      750 SETTABLEKS                       R22 R21 K70 ["requirementMessage"]
      752 SETTABLE                         R21 R19 R20
      753 GETTABLEKS                       R20 R17 K28 ["TextPrompt"]
      755 DUPTABLE                         R21 K178 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      756 DUPTABLE                         R22 K268 [{["namespace"] = "TextureGen", ["key"] = "InputPromptTitle"}]
      757 SETTABLEKS                       R22 R21 K48 ["label"]
      759 GETTABLEKS                       R23 R3 K180 ["FFlagAssistantAddPlaceholderProp"]
      761 JUMPIFNOT                        R23 ; [+2]
      762 DUPTABLE                         R22 K270 [{["namespace"] = "TextureGen", ["key"] = "InputPromptPlaceholder"}]
      763 JUMP                             ; [+1]
      764 LOADNIL                          R22
      765 SETTABLEKS                       R22 R21 K177 ["placeholder"]
      767 SETTABLE                         R21 R19 R20
      768 GETTABLEKS                       R20 R17 K116 ["HintImage"]
      770 DUPTABLE                         R21 K58 [{"label"}]
      771 DUPTABLE                         R22 K271 [{["namespace"] = "TextureGen", ["key"] = "InputHintImageTitle"}]
      772 SETTABLEKS                       R22 R21 K48 ["label"]
      774 SETTABLE                         R21 R19 R20
      775 GETTABLEKS                       R20 R17 K246 ["Mode"]
      777 DUPTABLE                         R21 K272 [{"label", "optionLabels", "infoPopover"}]
      778 DUPTABLE                         R22 K274 [{["namespace"] = "TextureGen", ["key"] = "ModelSelectorTitle"}]
      779 SETTABLEKS                       R22 R21 K48 ["label"]
      781 NEWTABLE                         R22 2 0
      783 GETTABLEKS                       R23 R9 K261 ["MODE"]
      785 GETTABLEKS                       R23 R23 K275 ["Fast"]
      787 DUPTABLE                         R24 K277 [{["namespace"] = "TextureGen", ["key"] = "ModelFast"}]
      788 SETTABLE                         R24 R22 R23
      789 GETTABLEKS                       R23 R9 K261 ["MODE"]
      791 GETTABLEKS                       R23 R23 K262 ["Quality"]
      793 DUPTABLE                         R24 K279 [{["namespace"] = "TextureGen", ["key"] = "ModelQuality"}]
      794 SETTABLE                         R24 R22 R23
      795 SETTABLEKS                       R22 R21 K156 ["optionLabels"]
      797 GETTABLEKS                       R23 R3 K260 ["FFlagAssistantTextureGenModelSelection"]
      799 JUMPIFNOT                        R23 ; [+5]
      800 DUPTABLE                         R22 K280 [{"body"}]
      801 DUPTABLE                         R23 K282 [{["namespace"] = "TextureGen", ["key"] = "ModelQualityInfo"}]
      802 SETTABLEKS                       R23 R22 K192 ["body"]
      804 JUMP                             ; [+1]
      805 LOADNIL                          R22
      806 SETTABLEKS                       R22 R21 K187 ["infoPopover"]
      808 SETTABLE                         R21 R19 R20
      809 SETTABLEKS                       R19 R18 K41 ["rows"]
      811 SETTABLEKS                       R18 R16 K20 ["TextureGen"]
      813 SETTABLEKS                       R16 R0 K283 ["Configs"]
      815 SETTABLEKS                       R14 R0 K284 ["ValidityBridge"]
      817 NEWTABLE                         R17 0 0
      819 GETIMPORT                        R18 K286 [pairs]
      821 MOVE                             R19 R16
      822 CALL                             R18 1 3
      823 FORGPREP_NEXT                    R18
      824 GETTABLEKS                       R23 R22 K35 ["formId"]
      826 SETTABLE                         R22 R17 R23
      827 FORGLOOP                         R18 2 ; [-4]
      829 LOADNIL                          R18
      830 NEWCLOSURE                       R19 P1
      831 CAPTURE                          REF R18
      832 CAPTURE                          VAL R17
      833 SETTABLEKS                       R19 R0 K287 ["getForm"]
      835 DUPCLOSURE                       R19 K288 [PROTO_2]
      836 CAPTURE                          VAL R0
      837 CAPTURE                          VAL R15
      838 SETTABLEKS                       R19 R0 K289 ["getRowPresentation"]
      840 NEWCLOSURE                       R19 P3
      841 CAPTURE                          REF R18
      842 SETTABLEKS                       R19 R0 K290 ["_registerTestConfig"]
      844 NEWCLOSURE                       R19 P4
      845 CAPTURE                          REF R18
      846 SETTABLEKS                       R19 R0 K291 ["_clearTestConfigs"]
      848 CLOSEUPVALS                      R18
      849 RETURN                           R0 1
