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
      122 DUPTABLE                         R17 K63 [{["TextPrompt"] = "textPrompt", ["EditSourceId"] = "editSourceId", ["Duration"] = "duration"}]
      123 DUPTABLE                         R18 K65 [{["formId"] = "generate_animation_edit", ["heading"] = "/generate_animation", ["row"], ["confirmButton"], ["rows"]}]
      124 SETTABLEKS                       R17 R18 K39 ["row"]
      126 DUPTABLE                         R19 K47 [{["namespace"] = "AnimationGen", ["key"] = "InputGenerate"}]
      127 SETTABLEKS                       R19 R18 K40 ["confirmButton"]
      129 NEWTABLE                         R19 4 0
      131 GETTABLEKS                       R20 R17 K28 ["TextPrompt"]
      133 DUPTABLE                         R21 K51 [{["label"], ["multiLine"] = True}]
      134 DUPTABLE                         R22 K53 [{["namespace"] = "AnimationGen", ["key"] = "Prompt"}]
      135 SETTABLEKS                       R22 R21 K48 ["label"]
      137 SETTABLE                         R21 R19 R20
      138 GETTABLEKS                       R20 R17 K61 ["EditSourceId"]
      140 DUPTABLE                         R21 K68 [{"renderer", "durationRowName"}]
      141 GETTABLEKS                       R22 R11 K69 ["EditScrubbar"]
      143 SETTABLEKS                       R22 R21 K66 ["renderer"]
      145 GETTABLEKS                       R22 R17 K32 ["Duration"]
      147 SETTABLEKS                       R22 R21 K67 ["durationRowName"]
      149 SETTABLE                         R21 R19 R20
      150 GETTABLEKS                       R20 R17 K32 ["Duration"]
      152 DUPTABLE                         R21 K71 [{["internal"] = True}]
      153 SETTABLE                         R21 R19 R20
      154 SETTABLEKS                       R19 R18 K41 ["rows"]
      156 SETTABLEKS                       R18 R16 K72 ["AnimationGenEdit"]
      158 DUPTABLE                         R17 K75 [{["SelectedModelRef"] = "selectedModelRef"}]
      159 DUPTABLE                         R18 K78 [{["formId"] = "auto_setup_avatar", ["heading"] = "/auto_setup_avatar", ["row"], ["confirmButton"], ["rows"]}]
      160 SETTABLEKS                       R17 R18 K39 ["row"]
      162 DUPTABLE                         R19 K81 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputSetUpAvatar"}]
      163 SETTABLEKS                       R19 R18 K40 ["confirmButton"]
      165 NEWTABLE                         R19 1 0
      167 GETTABLEKS                       R20 R17 K73 ["SelectedModelRef"]
      169 DUPTABLE                         R21 K83 [{["label"], ["shouldSelectModel"] = True, ["requirementMessage"]}]
      170 DUPTABLE                         R22 K85 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputModel"}]
      171 SETTABLEKS                       R22 R21 K48 ["label"]
      173 DUPTABLE                         R22 K87 [{["namespace"] = "AvatarAutoSetup", ["key"] = "ModelRequired"}]
      174 SETTABLEKS                       R22 R21 K82 ["requirementMessage"]
      176 SETTABLE                         R21 R19 R20
      177 SETTABLEKS                       R19 R18 K41 ["rows"]
      179 SETTABLEKS                       R18 R16 K79 ["AvatarAutoSetup"]
      181 DUPTABLE                         R17 K92 [{["TextPrompt"] = "textPrompt", ["IsometricImage"] = "isometricImage", ["TopDownImage"] = "topDownImage"}]
      182 DUPTABLE                         R18 K96 [{["formId"] = "generate_layout", ["heading"] = "/generate_layout", ["row"], ["confirmButton"], ["imageSelection"], ["rows"]}]
      183 SETTABLEKS                       R17 R18 K39 ["row"]
      185 DUPTABLE                         R19 K99 [{["namespace"] = "GenerateLayout", ["key"] = "Generate"}]
      186 SETTABLEKS                       R19 R18 K40 ["confirmButton"]
      188 DUPTABLE                         R19 K112 [{["promptKey"], ["wizardMode"] = True, ["slotCount"] = 4, ["model"] = "cube-layout-image", ["timeoutSeconds"] = 240, ["removeBackground"] = False, ["promptTemplatesByField"], ["seedImageFieldsByField"]}]
      189 GETTABLEKS                       R20 R17 K28 ["TextPrompt"]
      191 SETTABLEKS                       R20 R19 K100 ["promptKey"]
      193 NEWTABLE                         R20 2 0
      195 GETTABLEKS                       R21 R17 K88 ["IsometricImage"]
      197 GETTABLEKS                       R23 R4 K113 ["Constants"]
      199 GETTABLEKS                       R23 R23 K114 ["LAYOUT_MAP_PROMPT_PREFIX"]
      201 GETTABLEKS                       R24 R6 K115 ["PLACEHOLDER"]
      203 GETTABLEKS                       R25 R4 K113 ["Constants"]
      205 GETTABLEKS                       R25 R25 K116 ["LAYOUT_MAP_PROMPT_SUFFIX"]
      207 CONCAT                           R22 R23 R25
      208 SETTABLE                         R22 R20 R21
      209 GETTABLEKS                       R21 R17 K90 ["TopDownImage"]
      211 GETTABLEKS                       R23 R4 K113 ["Constants"]
      213 GETTABLEKS                       R23 R23 K117 ["LAYOUT_TOPDOWN_PROMPT_PREFIX"]
      215 GETTABLEKS                       R24 R6 K115 ["PLACEHOLDER"]
      217 GETTABLEKS                       R25 R4 K113 ["Constants"]
      219 GETTABLEKS                       R25 R25 K118 ["LAYOUT_TOPDOWN_PROMPT_SUFFIX"]
      221 CONCAT                           R22 R23 R25
      222 SETTABLE                         R22 R20 R21
      223 SETTABLEKS                       R20 R19 K110 ["promptTemplatesByField"]
      225 NEWTABLE                         R20 2 0
      227 GETTABLEKS                       R21 R17 K88 ["IsometricImage"]
      229 GETTABLEKS                       R22 R17 K88 ["IsometricImage"]
      231 SETTABLE                         R22 R20 R21
      232 GETTABLEKS                       R21 R17 K90 ["TopDownImage"]
      234 GETTABLEKS                       R22 R17 K88 ["IsometricImage"]
      236 SETTABLE                         R22 R20 R21
      237 SETTABLEKS                       R20 R19 K111 ["seedImageFieldsByField"]
      239 SETTABLEKS                       R19 R18 K95 ["imageSelection"]
      241 NEWTABLE                         R19 4 0
      243 GETTABLEKS                       R20 R17 K28 ["TextPrompt"]
      245 DUPTABLE                         R21 K119 [{["label"], ["internal"] = True}]
      246 DUPTABLE                         R22 K121 [{["namespace"] = "GenerateLayout", ["key"] = "InputPromptTitle"}]
      247 SETTABLEKS                       R22 R21 K48 ["label"]
      249 SETTABLE                         R21 R19 R20
      250 GETTABLEKS                       R20 R17 K88 ["IsometricImage"]
      252 DUPTABLE                         R21 K58 [{"label"}]
      253 DUPTABLE                         R22 K123 [{["namespace"] = "GenerateLayout", ["key"] = "InputIsometricImageTitle"}]
      254 SETTABLEKS                       R22 R21 K48 ["label"]
      256 SETTABLE                         R21 R19 R20
      257 GETTABLEKS                       R20 R17 K90 ["TopDownImage"]
      259 DUPTABLE                         R21 K58 [{"label"}]
      260 DUPTABLE                         R22 K125 [{["namespace"] = "GenerateLayout", ["key"] = "InputTopDownImageTitle"}]
      261 SETTABLEKS                       R22 R21 K48 ["label"]
      263 SETTABLE                         R21 R19 R20
      264 SETTABLEKS                       R19 R18 K41 ["rows"]
      266 SETTABLEKS                       R18 R16 K97 ["GenerateLayout"]
      268 DUPTABLE                         R17 K139 [{["PromptMode"] = "promptMode", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["MaxTriangles"] = "maxTriangles", ["TextPartNames"] = "textPartNames", ["ImagePartNames"] = "imagePartNames", ["SuggestSegmentation"] = "suggestSegmentation", ["SelectedInstanceRef"] = "selectedInstanceRef"}]
      269 GETTABLEKS                       R18 R3 K140 ["FFlagAssistantSegmentationPromptModeSelector"]
      271 DUPTABLE                         R19 K143 [{["visible"] = True, ["enabled"] = True}]
      272 DUPTABLE                         R20 K144 [{["visible"] = False, ["enabled"] = False}]
      273 DUPTABLE                         R21 K149 [{["formId"] = "generate_mesh", ["heading"] = "/generate_mesh", ["row"], ["description"], ["confirmButton"], ["axisResolver"], ["imageSelection"], ["rows"]}]
      274 SETTABLEKS                       R17 R21 K39 ["row"]
      276 DUPTABLE                         R22 K151 [{["namespace"] = "MeshGen", ["key"] = "InputDisclaimer"}]
      277 SETTABLEKS                       R22 R21 K147 ["description"]
      279 DUPTABLE                         R22 K153 [{["namespace"] = "MeshGen", ["key"] = "InputGenerateMesh"}]
      280 SETTABLEKS                       R22 R21 K40 ["confirmButton"]
      282 JUMPIFNOT                        R18 ; [+6]
      283 DUPCLOSURE                       R22 K154 [PROTO_0]
      284 CAPTURE                          VAL R17
      285 CAPTURE                          VAL R12
      286 CAPTURE                          VAL R20
      287 CAPTURE                          VAL R19
      288 JUMP                             ; [+1]
      289 LOADNIL                          R22
      290 SETTABLEKS                       R22 R21 K148 ["axisResolver"]
      292 GETTABLEKS                       R23 R3 K155 ["EngineFeatureAssistantGen3dImagePreview"]
      294 JUMPIFNOT                        R23 ; [+36]
      295 DUPTABLE                         R22 K157 [{"promptKey", "wizardMode", "model", "segmentationFold"}]
      296 GETTABLEKS                       R23 R17 K28 ["TextPrompt"]
      298 SETTABLEKS                       R23 R22 K100 ["promptKey"]
      300 GETTABLEKS                       R23 R3 K158 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      302 SETTABLEKS                       R23 R22 K101 ["wizardMode"]
      304 GETTABLEKS                       R23 R3 K159 ["FStringAssistantMeshGenImageGenModelOverride"]
      306 SETTABLEKS                       R23 R22 K104 ["model"]
      308 GETTABLEKS                       R24 R3 K160 ["FFlagAssistantImageGenImprovements"]
      310 JUMPIFNOT                        R24 ; [+16]
      311 DUPTABLE                         R23 K164 [{"kind", "partNamesKey", "suggestKey"}]
      312 GETTABLEKS                       R24 R2 K165 ["SEGMENTATION_FOLD_KIND"]
      314 GETTABLEKS                       R24 R24 K166 ["Gen3D"]
      316 SETTABLEKS                       R24 R23 K161 ["kind"]
      318 GETTABLEKS                       R24 R17 K131 ["TextPartNames"]
      320 SETTABLEKS                       R24 R23 K162 ["partNamesKey"]
      322 GETTABLEKS                       R24 R17 K135 ["SuggestSegmentation"]
      324 SETTABLEKS                       R24 R23 K163 ["suggestKey"]
      326 JUMP                             ; [+1]
      327 LOADNIL                          R23
      328 SETTABLEKS                       R23 R22 K156 ["segmentationFold"]
      330 JUMP                             ; [+1]
      331 LOADNIL                          R22
      332 SETTABLEKS                       R22 R21 K95 ["imageSelection"]
      334 NEWTABLE                         R22 8 0
      336 GETTABLEKS                       R23 R17 K24 ["PromptMode"]
      338 DUPTABLE                         R24 K169 [{"label", "optionLabels", "optionBadges"}]
      339 DUPTABLE                         R25 K171 [{["namespace"] = "MeshGen", ["key"] = "InputPromptModeTitle"}]
      340 SETTABLEKS                       R25 R24 K48 ["label"]
      342 NEWTABLE                         R25 2 0
      344 GETTABLEKS                       R26 R12 K172 ["Text"]
      346 DUPTABLE                         R27 K175 [{["namespace"] = "Gen3d", ["key"] = "PromptModeText"}]
      347 SETTABLE                         R27 R25 R26
      348 GETTABLEKS                       R26 R12 K176 ["Image"]
      350 DUPTABLE                         R27 K178 [{["namespace"] = "Gen3d", ["key"] = "PromptModeImage"}]
      351 SETTABLE                         R27 R25 R26
      352 SETTABLEKS                       R25 R24 K167 ["optionLabels"]
      354 NEWTABLE                         R25 2 0
      356 GETTABLEKS                       R26 R12 K172 ["Text"]
      358 MOVE                             R27 R13
      359 DUPTABLE                         R28 K182 [{"kind", "field", "cases", "default"}]
      360 GETTABLEKS                       R29 R10 K183 ["Branch"]
      362 SETTABLEKS                       R29 R28 K161 ["kind"]
      364 GETTABLEKS                       R29 R17 K24 ["PromptMode"]
      366 SETTABLEKS                       R29 R28 K179 ["field"]
      368 NEWTABLE                         R29 1 0
      370 GETTABLEKS                       R30 R12 K176 ["Image"]
      372 MOVE                             R31 R13
      373 DUPTABLE                         R32 K184 [{"kind", "field"}]
      374 GETTABLEKS                       R33 R10 K185 ["NonEmpty"]
      376 SETTABLEKS                       R33 R32 K161 ["kind"]
      378 GETTABLEKS                       R33 R17 K28 ["TextPrompt"]
      380 SETTABLEKS                       R33 R32 K179 ["field"]
      382 CALL                             R31 1 1
      383 SETTABLE                         R31 R29 R30
      384 SETTABLEKS                       R29 R28 K180 ["cases"]
      386 MOVE                             R29 R13
      387 DUPTABLE                         R30 K186 [{"kind"}]
      388 GETTABLEKS                       R31 R10 K187 ["Never"]
      390 SETTABLEKS                       R31 R30 K161 ["kind"]
      392 CALL                             R29 1 1
      393 SETTABLEKS                       R29 R28 K181 ["default"]
      395 CALL                             R27 1 1
      396 SETTABLE                         R27 R25 R26
      397 GETTABLEKS                       R26 R12 K176 ["Image"]
      399 MOVE                             R27 R13
      400 DUPTABLE                         R28 K182 [{"kind", "field", "cases", "default"}]
      401 GETTABLEKS                       R29 R10 K183 ["Branch"]
      403 SETTABLEKS                       R29 R28 K161 ["kind"]
      405 GETTABLEKS                       R29 R17 K24 ["PromptMode"]
      407 SETTABLEKS                       R29 R28 K179 ["field"]
      409 NEWTABLE                         R29 1 0
      411 GETTABLEKS                       R30 R12 K172 ["Text"]
      413 MOVE                             R31 R13
      414 DUPTABLE                         R32 K184 [{"kind", "field"}]
      415 GETTABLEKS                       R33 R10 K185 ["NonEmpty"]
      417 SETTABLEKS                       R33 R32 K161 ["kind"]
      419 GETTABLEKS                       R33 R17 K127 ["HintImage"]
      421 SETTABLEKS                       R33 R32 K179 ["field"]
      423 CALL                             R31 1 1
      424 SETTABLE                         R31 R29 R30
      425 SETTABLEKS                       R29 R28 K180 ["cases"]
      427 MOVE                             R29 R13
      428 DUPTABLE                         R30 K186 [{"kind"}]
      429 GETTABLEKS                       R31 R10 K187 ["Never"]
      431 SETTABLEKS                       R31 R30 K161 ["kind"]
      433 CALL                             R29 1 1
      434 SETTABLEKS                       R29 R28 K181 ["default"]
      436 CALL                             R27 1 1
      437 SETTABLE                         R27 R25 R26
      438 SETTABLEKS                       R25 R24 K168 ["optionBadges"]
      440 SETTABLE                         R24 R22 R23
      441 GETTABLEKS                       R23 R17 K28 ["TextPrompt"]
      443 DUPTABLE                         R24 K189 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      444 DUPTABLE                         R25 K190 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      445 SETTABLEKS                       R25 R24 K48 ["label"]
      447 GETTABLEKS                       R26 R3 K191 ["FFlagAssistantAddPlaceholderProp"]
      449 JUMPIFNOT                        R26 ; [+2]
      450 DUPTABLE                         R25 K193 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      451 JUMP                             ; [+1]
      452 LOADNIL                          R25
      453 SETTABLEKS                       R25 R24 K188 ["placeholder"]
      455 SETTABLE                         R24 R22 R23
      456 GETTABLEKS                       R23 R17 K127 ["HintImage"]
      458 DUPTABLE                         R24 K58 [{"label"}]
      459 DUPTABLE                         R25 K195 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      460 SETTABLEKS                       R25 R24 K48 ["label"]
      462 SETTABLE                         R24 R22 R23
      463 GETTABLEKS                       R23 R17 K129 ["MaxTriangles"]
      465 DUPTABLE                         R24 K58 [{"label"}]
      466 DUPTABLE                         R25 K197 [{["namespace"] = "MeshGen", ["key"] = "InputTriangleCountTitle"}]
      467 SETTABLEKS                       R25 R24 K48 ["label"]
      469 SETTABLE                         R24 R22 R23
      470 GETTABLEKS                       R23 R17 K131 ["TextPartNames"]
      472 DUPTABLE                         R24 K200 [{"label", "infoPopover", "suggestion"}]
      473 DUPTABLE                         R25 K202 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      474 SETTABLEKS                       R25 R24 K48 ["label"]
      476 JUMPIFNOT                        R18 ; [+8]
      477 DUPTABLE                         R25 K205 [{"body", "learnMore"}]
      478 DUPTABLE                         R26 K208 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      479 SETTABLEKS                       R26 R25 K203 ["body"]
      481 DUPTABLE                         R26 K210 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      482 SETTABLEKS                       R26 R25 K204 ["learnMore"]
      484 JUMP                             ; [+1]
      485 LOADNIL                          R25
      486 SETTABLEKS                       R25 R24 K198 ["infoPopover"]
      488 DUPTABLE                         R25 K213 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "mesh"}]
      489 GETTABLEKS                       R26 R17 K28 ["TextPrompt"]
      491 SETTABLEKS                       R26 R25 K100 ["promptKey"]
      493 JUMPIFNOT                        R18 ; [+6]
      494 GETTABLEKS                       R27 R3 K214 ["FFlagGen3dSegmentationSelector"]
      496 JUMPIFNOT                        R27 ; [+3]
      497 GETTABLEKS                       R26 R17 K135 ["SuggestSegmentation"]
      499 JUMP                             ; [+1]
      500 LOADNIL                          R26
      501 SETTABLEKS                       R26 R25 K163 ["suggestKey"]
      503 SETTABLEKS                       R25 R24 K199 ["suggestion"]
      505 SETTABLE                         R24 R22 R23
      506 GETTABLEKS                       R23 R17 K133 ["ImagePartNames"]
      508 DUPTABLE                         R24 K215 [{"label", "infoPopover"}]
      509 DUPTABLE                         R25 K202 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      510 SETTABLEKS                       R25 R24 K48 ["label"]
      512 JUMPIFNOT                        R18 ; [+8]
      513 DUPTABLE                         R25 K205 [{"body", "learnMore"}]
      514 DUPTABLE                         R26 K208 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      515 SETTABLEKS                       R26 R25 K203 ["body"]
      517 DUPTABLE                         R26 K210 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      518 SETTABLEKS                       R26 R25 K204 ["learnMore"]
      520 JUMP                             ; [+1]
      521 LOADNIL                          R25
      522 SETTABLEKS                       R25 R24 K198 ["infoPopover"]
      524 SETTABLE                         R24 R22 R23
      525 GETTABLEKS                       R23 R17 K135 ["SuggestSegmentation"]
      527 DUPTABLE                         R24 K216 [{"renderer"}]
      528 GETTABLEKS                       R25 R11 K135 ["SuggestSegmentation"]
      530 SETTABLEKS                       R25 R24 K66 ["renderer"]
      532 SETTABLE                         R24 R22 R23
      533 GETTABLEKS                       R23 R17 K137 ["SelectedInstanceRef"]
      535 DUPTABLE                         R24 K218 [{"label", "internal", "instanceClasses"}]
      536 DUPTABLE                         R25 K220 [{["namespace"] = "MeshGen", ["key"] = "InputBoundingBox"}]
      537 SETTABLEKS                       R25 R24 K48 ["label"]
      539 JUMPIFNOT                        R18 ; [+2]
      540 LOADB                            R25 1
      541 JUMP                             ; [+1]
      542 LOADNIL                          R25
      543 SETTABLEKS                       R25 R24 K70 ["internal"]
      545 NEWTABLE                         R25 0 1
      547 GETTABLEKS                       R26 R5 K221 ["BOUNDING_BOX_INSTANCE_TYPE"]
      549 SETLIST                          R25 R26 1 [1]
      551 SETTABLEKS                       R25 R24 K217 ["instanceClasses"]
      553 SETTABLE                         R24 R22 R23
      554 SETTABLEKS                       R22 R21 K41 ["rows"]
      556 SETTABLEKS                       R21 R16 K12 ["MeshGen"]
      558 DUPTABLE                         R17 K225 [{["Prompt"] = "prompt", ["HintImage"] = "hintImage", ["PartNames"] = "partNames", ["SuggestSegmentation"] = "suggestSegmentation"}]
      559 DUPTABLE                         R18 K228 [{["formId"] = "generate_procedural_model", ["heading"] = "/generate_procedural_model", ["row"], ["imageSelection"], ["rows"]}]
      560 SETTABLEKS                       R17 R18 K39 ["row"]
      562 GETTABLEKS                       R20 R3 K155 ["EngineFeatureAssistantGen3dImagePreview"]
      564 JUMPIFNOT                        R20 ; [+14]
      565 DUPTABLE                         R19 K229 [{"promptKey", "wizardMode", "model"}]
      566 GETTABLEKS                       R20 R17 K52 ["Prompt"]
      568 SETTABLEKS                       R20 R19 K100 ["promptKey"]
      570 GETTABLEKS                       R20 R3 K230 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      572 SETTABLEKS                       R20 R19 K101 ["wizardMode"]
      574 GETTABLEKS                       R20 R3 K159 ["FStringAssistantMeshGenImageGenModelOverride"]
      576 SETTABLEKS                       R20 R19 K104 ["model"]
      578 JUMP                             ; [+1]
      579 LOADNIL                          R19
      580 SETTABLEKS                       R19 R18 K95 ["imageSelection"]
      582 NEWTABLE                         R19 4 0
      584 GETTABLEKS                       R20 R17 K52 ["Prompt"]
      586 DUPTABLE                         R21 K189 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      587 DUPTABLE                         R22 K190 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      588 SETTABLEKS                       R22 R21 K48 ["label"]
      590 GETTABLEKS                       R23 R3 K191 ["FFlagAssistantAddPlaceholderProp"]
      592 JUMPIFNOT                        R23 ; [+2]
      593 DUPTABLE                         R22 K193 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      594 JUMP                             ; [+1]
      595 LOADNIL                          R22
      596 SETTABLEKS                       R22 R21 K188 ["placeholder"]
      598 SETTABLE                         R21 R19 R20
      599 GETTABLEKS                       R20 R17 K127 ["HintImage"]
      601 DUPTABLE                         R21 K58 [{"label"}]
      602 DUPTABLE                         R22 K195 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      603 SETTABLEKS                       R22 R21 K48 ["label"]
      605 SETTABLE                         R21 R19 R20
      606 GETTABLEKS                       R20 R17 K223 ["PartNames"]
      608 DUPTABLE                         R21 K200 [{"label", "infoPopover", "suggestion"}]
      609 DUPTABLE                         R22 K232 [{["namespace"] = "PrimitiveGen", ["key"] = "InputPartNamesTitle"}]
      610 SETTABLEKS                       R22 R21 K48 ["label"]
      612 DUPTABLE                         R22 K205 [{"body", "learnMore"}]
      613 DUPTABLE                         R23 K234 [{["namespace"] = "PrimGenSegmentation", ["key"] = "ExperimentalFeature"}]
      614 SETTABLEKS                       R23 R22 K203 ["body"]
      616 DUPTABLE                         R23 K210 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      617 SETTABLEKS                       R23 R22 K204 ["learnMore"]
      619 SETTABLEKS                       R22 R21 K198 ["infoPopover"]
      621 DUPTABLE                         R22 K236 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "procedural"}]
      622 GETTABLEKS                       R23 R17 K52 ["Prompt"]
      624 SETTABLEKS                       R23 R22 K100 ["promptKey"]
      626 GETTABLEKS                       R23 R17 K135 ["SuggestSegmentation"]
      628 SETTABLEKS                       R23 R22 K163 ["suggestKey"]
      630 SETTABLEKS                       R22 R21 K199 ["suggestion"]
      632 SETTABLE                         R21 R19 R20
      633 GETTABLEKS                       R20 R17 K135 ["SuggestSegmentation"]
      635 DUPTABLE                         R21 K216 [{"renderer"}]
      636 GETTABLEKS                       R22 R11 K135 ["SuggestSegmentation"]
      638 SETTABLEKS                       R22 R21 K66 ["renderer"]
      640 SETTABLE                         R21 R19 R20
      641 SETTABLEKS                       R19 R18 K41 ["rows"]
      643 SETTABLEKS                       R18 R16 K231 ["PrimitiveGen"]
      645 DUPTABLE                         R17 K241 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["Parts"] = "parts"}]
      646 DUPTABLE                         R18 K244 [{["formId"] = "segment_mesh", ["heading"] = "/segment_mesh", ["row"], ["confirmButton"], ["rows"]}]
      647 SETTABLEKS                       R17 R18 K39 ["row"]
      649 DUPTABLE                         R19 K246 [{["namespace"] = "SegmentMesh", ["key"] = "ConfirmButton"}]
      650 SETTABLEKS                       R19 R18 K40 ["confirmButton"]
      652 NEWTABLE                         R19 4 0
      654 GETTABLEKS                       R20 R17 K137 ["SelectedInstanceRef"]
      656 DUPTABLE                         R21 K248 [{"label", "validityBridge", "requirementMessage"}]
      657 DUPTABLE                         R22 K250 [{["namespace"] = "SegmentMesh", ["key"] = "MeshInstanceLabel"}]
      658 SETTABLEKS                       R22 R21 K48 ["label"]
      660 GETTABLEKS                       R22 R14 K26 ["SegmentMesh"]
      662 SETTABLEKS                       R22 R21 K247 ["validityBridge"]
      664 DUPTABLE                         R22 K252 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      665 SETTABLEKS                       R22 R21 K82 ["requirementMessage"]
      667 SETTABLE                         R21 R19 R20
      668 GETTABLEKS                       R21 R17 K137 ["SelectedInstanceRef"]
      670 LOADK                            R22 K253 [".isValid"]
      671 CONCAT                           R20 R21 R22
      672 DUPTABLE                         R21 K254 [{"requirementMessage"}]
      673 DUPTABLE                         R22 K252 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      674 SETTABLEKS                       R22 R21 K82 ["requirementMessage"]
      676 SETTABLE                         R21 R19 R20
      677 GETTABLEKS                       R20 R17 K237 ["SelectedInstanceRefIsValid"]
      679 DUPTABLE                         R21 K254 [{"requirementMessage"}]
      680 DUPTABLE                         R22 K252 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      681 SETTABLEKS                       R22 R21 K82 ["requirementMessage"]
      683 SETTABLE                         R21 R19 R20
      684 GETTABLEKS                       R20 R17 K239 ["Parts"]
      686 DUPTABLE                         R21 K255 [{["label"], ["multiLine"] = False}]
      687 DUPTABLE                         R22 K202 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      688 SETTABLEKS                       R22 R21 K48 ["label"]
      690 SETTABLE                         R21 R19 R20
      691 SETTABLEKS                       R19 R18 K41 ["rows"]
      693 SETTABLEKS                       R18 R16 K26 ["SegmentMesh"]
      695 DUPTABLE                         R17 K258 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["Mode"] = "mode"}]
      696 DUPTABLE                         R18 K261 [{["formId"] = "generate_texture", ["heading"] = "/generate_texture", ["row"], ["description"], ["confirmButton"], ["imageSelection"], ["rows"]}]
      697 SETTABLEKS                       R17 R18 K39 ["row"]
      699 DUPTABLE                         R19 K262 [{["namespace"] = "TextureGen", ["key"] = "InputDisclaimer"}]
      700 SETTABLEKS                       R19 R18 K147 ["description"]
      702 DUPTABLE                         R19 K264 [{["namespace"] = "TextureGen", ["key"] = "InputGenerateTexture"}]
      703 SETTABLEKS                       R19 R18 K40 ["confirmButton"]
      705 GETTABLEKS                       R20 R3 K155 ["EngineFeatureAssistantGen3dImagePreview"]
      707 JUMPIFNOT                        R20 ; [+38]
      708 DUPTABLE                         R19 K268 [{["promptKey"], ["wizardMode"], ["model"], ["resolveSeedImageFromSelectedInstance"] = True, ["skipField"], ["skipValues"]}]
      709 GETTABLEKS                       R20 R17 K28 ["TextPrompt"]
      711 SETTABLEKS                       R20 R19 K100 ["promptKey"]
      713 GETTABLEKS                       R20 R3 K269 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      715 SETTABLEKS                       R20 R19 K101 ["wizardMode"]
      717 GETTABLEKS                       R20 R3 K159 ["FStringAssistantMeshGenImageGenModelOverride"]
      719 SETTABLEKS                       R20 R19 K104 ["model"]
      721 GETTABLEKS                       R21 R3 K270 ["FFlagAssistantTextureGenModelSelection"]
      723 JUMPIFNOT                        R21 ; [+3]
      724 GETTABLEKS                       R20 R17 K256 ["Mode"]
      726 JUMP                             ; [+1]
      727 LOADNIL                          R20
      728 SETTABLEKS                       R20 R19 K266 ["skipField"]
      730 GETTABLEKS                       R21 R3 K270 ["FFlagAssistantTextureGenModelSelection"]
      732 JUMPIFNOT                        R21 ; [+9]
      733 NEWTABLE                         R20 0 1
      735 GETTABLEKS                       R21 R9 K271 ["MODE"]
      737 GETTABLEKS                       R21 R21 K272 ["Quality"]
      739 SETLIST                          R20 R21 1 [1]
      741 JUMP                             ; [+1]
      742 LOADNIL                          R20
      743 SETTABLEKS                       R20 R19 K267 ["skipValues"]
      745 JUMP                             ; [+1]
      746 LOADNIL                          R19
      747 SETTABLEKS                       R19 R18 K95 ["imageSelection"]
      749 NEWTABLE                         R19 8 0
      751 GETTABLEKS                       R20 R17 K137 ["SelectedInstanceRef"]
      753 DUPTABLE                         R21 K273 [{"label", "instanceClasses", "validityBridge", "requirementMessage"}]
      754 DUPTABLE                         R22 K275 [{["namespace"] = "TextureGen", ["key"] = "InputSelectedMesh"}]
      755 SETTABLEKS                       R22 R21 K48 ["label"]
      757 NEWTABLE                         R22 0 2
      759 LOADK                            R23 K276 ["MeshPart"]
      760 LOADK                            R24 K277 ["Model"]
      761 SETLIST                          R22 R23 2 [1]
      763 SETTABLEKS                       R22 R21 K217 ["instanceClasses"]
      765 GETTABLEKS                       R22 R14 K20 ["TextureGen"]
      767 SETTABLEKS                       R22 R21 K247 ["validityBridge"]
      769 DUPTABLE                         R22 K252 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      770 SETTABLEKS                       R22 R21 K82 ["requirementMessage"]
      772 SETTABLE                         R21 R19 R20
      773 GETTABLEKS                       R21 R17 K137 ["SelectedInstanceRef"]
      775 LOADK                            R22 K253 [".isValid"]
      776 CONCAT                           R20 R21 R22
      777 DUPTABLE                         R21 K254 [{"requirementMessage"}]
      778 DUPTABLE                         R22 K252 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      779 SETTABLEKS                       R22 R21 K82 ["requirementMessage"]
      781 SETTABLE                         R21 R19 R20
      782 GETTABLEKS                       R20 R17 K237 ["SelectedInstanceRefIsValid"]
      784 DUPTABLE                         R21 K254 [{"requirementMessage"}]
      785 DUPTABLE                         R22 K252 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      786 SETTABLEKS                       R22 R21 K82 ["requirementMessage"]
      788 SETTABLE                         R21 R19 R20
      789 GETTABLEKS                       R20 R17 K28 ["TextPrompt"]
      791 DUPTABLE                         R21 K189 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      792 DUPTABLE                         R22 K278 [{["namespace"] = "TextureGen", ["key"] = "InputPromptTitle"}]
      793 SETTABLEKS                       R22 R21 K48 ["label"]
      795 GETTABLEKS                       R23 R3 K191 ["FFlagAssistantAddPlaceholderProp"]
      797 JUMPIFNOT                        R23 ; [+2]
      798 DUPTABLE                         R22 K280 [{["namespace"] = "TextureGen", ["key"] = "InputPromptPlaceholder"}]
      799 JUMP                             ; [+1]
      800 LOADNIL                          R22
      801 SETTABLEKS                       R22 R21 K188 ["placeholder"]
      803 SETTABLE                         R21 R19 R20
      804 GETTABLEKS                       R20 R17 K127 ["HintImage"]
      806 DUPTABLE                         R21 K58 [{"label"}]
      807 DUPTABLE                         R22 K281 [{["namespace"] = "TextureGen", ["key"] = "InputHintImageTitle"}]
      808 SETTABLEKS                       R22 R21 K48 ["label"]
      810 SETTABLE                         R21 R19 R20
      811 GETTABLEKS                       R20 R17 K256 ["Mode"]
      813 DUPTABLE                         R21 K282 [{"label", "optionLabels", "infoPopover"}]
      814 DUPTABLE                         R22 K284 [{["namespace"] = "TextureGen", ["key"] = "ModelSelectorTitle"}]
      815 SETTABLEKS                       R22 R21 K48 ["label"]
      817 NEWTABLE                         R22 2 0
      819 GETTABLEKS                       R23 R9 K271 ["MODE"]
      821 GETTABLEKS                       R23 R23 K285 ["Fast"]
      823 DUPTABLE                         R24 K287 [{["namespace"] = "TextureGen", ["key"] = "ModelFast"}]
      824 SETTABLE                         R24 R22 R23
      825 GETTABLEKS                       R23 R9 K271 ["MODE"]
      827 GETTABLEKS                       R23 R23 K272 ["Quality"]
      829 DUPTABLE                         R24 K289 [{["namespace"] = "TextureGen", ["key"] = "ModelQuality"}]
      830 SETTABLE                         R24 R22 R23
      831 SETTABLEKS                       R22 R21 K167 ["optionLabels"]
      833 GETTABLEKS                       R23 R3 K270 ["FFlagAssistantTextureGenModelSelection"]
      835 JUMPIFNOT                        R23 ; [+5]
      836 DUPTABLE                         R22 K290 [{"body"}]
      837 DUPTABLE                         R23 K292 [{["namespace"] = "TextureGen", ["key"] = "ModelQualityInfo"}]
      838 SETTABLEKS                       R23 R22 K203 ["body"]
      840 JUMP                             ; [+1]
      841 LOADNIL                          R22
      842 SETTABLEKS                       R22 R21 K198 ["infoPopover"]
      844 SETTABLE                         R21 R19 R20
      845 SETTABLEKS                       R19 R18 K41 ["rows"]
      847 SETTABLEKS                       R18 R16 K20 ["TextureGen"]
      849 SETTABLEKS                       R16 R0 K293 ["Configs"]
      851 SETTABLEKS                       R14 R0 K294 ["ValidityBridge"]
      853 NEWTABLE                         R17 0 0
      855 GETIMPORT                        R18 K296 [pairs]
      857 MOVE                             R19 R16
      858 CALL                             R18 1 3
      859 FORGPREP_NEXT                    R18
      860 GETTABLEKS                       R23 R22 K35 ["formId"]
      862 SETTABLE                         R22 R17 R23
      863 FORGLOOP                         R18 2 ; [-4]
      865 LOADNIL                          R18
      866 NEWCLOSURE                       R19 P1
      867 CAPTURE                          REF R18
      868 CAPTURE                          VAL R17
      869 SETTABLEKS                       R19 R0 K297 ["getForm"]
      871 DUPCLOSURE                       R19 K298 [PROTO_2]
      872 CAPTURE                          VAL R0
      873 CAPTURE                          VAL R15
      874 SETTABLEKS                       R19 R0 K299 ["getRowPresentation"]
      876 NEWCLOSURE                       R19 P3
      877 CAPTURE                          REF R18
      878 SETTABLEKS                       R19 R0 K300 ["_registerTestConfig"]
      880 NEWCLOSURE                       R19 P4
      881 CAPTURE                          REF R18
      882 SETTABLEKS                       R19 R0 K301 ["_clearTestConfigs"]
      884 CLOSEUPVALS                      R18
      885 RETURN                           R0 1
