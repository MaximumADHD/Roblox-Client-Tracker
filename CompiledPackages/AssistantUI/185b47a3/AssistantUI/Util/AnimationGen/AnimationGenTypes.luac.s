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
       11 LOADK                            R2 K3 ["Assistant-AnimationGenLink-%*"]
       12 MOVE                             R4 R0
       13 NAMECALL                         R2 R2 K4 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["Tagging"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Types"]
       23 CALL                             R3 1 1
       24 NEWTABLE                         R4 4 0
       26 DUPCLOSURE                       R5 K10 [PROTO_0]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R5 R4 K11 ["getLinkTag"]
       31 DUPTABLE                         R5 K16 [{["Preparing"] = "Preparing", ["Generating"] = "Generating", ["GenerationFailed"] = "GenerationFailed", ["GenerationSucceeded"] = "GenerationSucceeded"}]
       32 SETTABLEKS                       R5 R4 K17 ["PreviewStates"]
       34 DUPTABLE                         R5 K20 [{["NoRigSelected"] = "NoRigSelected", ["NoPromptProvided"] = "NoPromptProvided", ["GenerationFailed"] = "GenerationFailed"}]
       35 SETTABLEKS                       R5 R4 K21 ["FailureReasons"]
       37 RETURN                           R4 1
