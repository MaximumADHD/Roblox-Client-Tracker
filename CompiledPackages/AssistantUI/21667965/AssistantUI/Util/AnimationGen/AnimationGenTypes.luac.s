PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseNewTags"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getUniqueTag"]
        7 LOADK                            R2 K2 ["Animation"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 LOADK                            R1 K3 ["Assistant-AnimationGenLink-%*"]
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K4 ["format"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["Tagging"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Types"]
       30 CALL                             R4 1 1
       31 NEWTABLE                         R5 4 0
       33 GETIMPORT                        R6 K14 [table.freeze]
       35 DUPTABLE                         R7 K23 [{["New"] = "new", ["Upscale"] = "upscale", ["EditNew"] = "editNew", ["EditUpscale"] = "editUpscale"}]
       36 CALL                             R6 1 1
       37 SETTABLEKS                       R6 R5 K24 ["GenerationModes"]
       39 DUPCLOSURE                       R6 K25 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R6 R5 K26 ["getLinkTag"]
       44 DUPTABLE                         R6 K31 [{["Preparing"] = "Preparing", ["Generating"] = "Generating", ["GenerationFailed"] = "GenerationFailed", ["GenerationSucceeded"] = "GenerationSucceeded"}]
       45 SETTABLEKS                       R6 R5 K32 ["PreviewStates"]
       47 DUPTABLE                         R6 K37 [{["NoPromptProvided"] = "NoPromptProvided", ["GenerationFailed"] = "GenerationFailed", ["RigInsertFailed"] = "RigInsertFailed", ["InputClipNotR6"] = "InputClipNotR6", ["EditSourceNotFound"] = "EditSourceNotFound"}]
       48 SETTABLEKS                       R6 R5 K38 ["FailureReasons"]
       50 RETURN                           R5 1
