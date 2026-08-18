PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantGen3DAssetPublishTracking"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 LOADK                            R5 K1 ["RBX_AI_GENERATED"]
        6 LOADB                            R6 1
        7 NAMECALL                         R3 R0 K2 ["SetAttribute"]
        9 CALL                             R3 3 0
       10 LOADK                            R5 K3 ["RBX_AI_GENERATION_ID"]
       11 MOVE                             R6 R1
       12 NAMECALL                         R3 R0 K2 ["SetAttribute"]
       14 CALL                             R3 3 0
       15 LOADK                            R5 K4 ["RBX_AI_MODEL_FLOW"]
       16 MOVE                             R6 R2
       17 NAMECALL                         R3 R0 K2 ["SetAttribute"]
       19 CALL                             R3 3 0
       20 LOADK                            R5 K5 ["AssistantAIGeneratedAsset"]
       21 NAMECALL                         R3 R0 K6 ["AddTag"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["RBX_AI_GENERATION_ID"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R4 R1
        6 GETIMPORT                        R3 K3 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+3]
       11 MOVE                             R2 R1
       12 RETURN                           R2 1
       13 LOADNIL                          R2
       14 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R3 K0 ["RBX_AI_MODEL_FLOW"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R4 R1
        6 GETIMPORT                        R3 K3 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+3]
       11 MOVE                             R2 R1
       12 RETURN                           R2 1
       13 LOADNIL                          R2
       14 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantAIGeneratedAsset"]
        2 NAMECALL                         R0 R0 K1 ["GetTagged"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantGen3DAssetPublishTracking"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R5 1
        8 LOADK                            R7 K1 ["AssistantAIGeneratedAsset"]
        9 NAMECALL                         R5 R5 K2 ["GetTagged"]
       11 CALL                             R5 2 3
       12 MOVE                             R2 R5
       13 MOVE                             R3 R6
       14 MOVE                             R4 R7
       15 FORGPREP                         R2
       16 GETIMPORT                        R9 K4 [game]
       18 NAMECALL                         R7 R6 K5 ["IsDescendantOf"]
       20 CALL                             R7 2 1
       21 JUMPIFNOT                        R7 ; [+44]
       22 LOADK                            R10 K6 ["RBX_AI_GENERATION_ID"]
       23 NAMECALL                         R8 R6 K7 ["GetAttribute"]
       25 CALL                             R8 2 1
       26 FASTCALL1                        TYPEOF R8 ; [+3]
       27 MOVE                             R10 R8
       28 GETIMPORT                        R9 K9 [typeof]
       30 CALL                             R9 1 1
       31 JUMPIFNOTEQKS                    R9 K10 ["string"] ; [+3]
       33 MOVE                             R7 R8
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 LOADK                            R11 K11 ["RBX_AI_MODEL_FLOW"]
       37 NAMECALL                         R9 R6 K7 ["GetAttribute"]
       39 CALL                             R9 2 1
       40 FASTCALL1                        TYPEOF R9 ; [+3]
       41 MOVE                             R11 R9
       42 GETIMPORT                        R10 K9 [typeof]
       44 CALL                             R10 1 1
       45 JUMPIFNOTEQKS                    R10 K10 ["string"] ; [+3]
       47 MOVE                             R8 R9
       48 JUMP                             ; [+1]
       49 LOADNIL                          R8
       50 JUMPIFEQKNIL                     R7 ; [+15]
       52 JUMPIFEQKNIL                     R8 ; [+13]
       54 GETTABLE                         R9 R1 R7
       55 JUMPIF                           R9 ; [+10]
       56 LOADB                            R9 1
       57 SETTABLE                         R9 R1 R7
       58 GETTABLEKS                       R9 R0 K12 ["logGen3DAssetPublished"]
       60 DUPTABLE                         R10 K15 [{"generationId", "modelFlow"}]
       61 SETTABLEKS                       R7 R10 K13 ["generationId"]
       63 SETTABLEKS                       R8 R10 K14 ["modelFlow"]
       65 CALL                             R9 1 0
       66 FORGLOOP                         R2 2 ; [-51]
       68 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R3 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K13 ["Types"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K14 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 DUPCLOSURE                       R6 K15 [PROTO_1]
       33 DUPCLOSURE                       R7 K16 [PROTO_2]
       34 DUPCLOSURE                       R8 K17 [PROTO_3]
       35 CAPTURE                          VAL R1
       36 DUPCLOSURE                       R9 K18 [PROTO_4]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 DUPTABLE                         R10 K32 [{["TAG_AI_GENERATED_ASSET"] = "AssistantAIGeneratedAsset", ["ATTRIBUTE_AI_GENERATED"] = "RBX_AI_GENERATED", ["ATTRIBUTE_AI_GENERATION_ID"] = "RBX_AI_GENERATION_ID", ["ATTRIBUTE_AI_MODEL_FLOW"] = "RBX_AI_MODEL_FLOW", ["markGeneratedAsset"], ["getGenerationId"], ["getModelFlow"], ["getTaggedGeneratedAssets"], ["reportPublishedAssets"]}]
       40 SETTABLEKS                       R5 R10 K27 ["markGeneratedAsset"]
       42 SETTABLEKS                       R6 R10 K28 ["getGenerationId"]
       44 SETTABLEKS                       R7 R10 K29 ["getModelFlow"]
       46 SETTABLEKS                       R8 R10 K30 ["getTaggedGeneratedAssets"]
       48 SETTABLEKS                       R9 R10 K31 ["reportPublishedAssets"]
       50 RETURN                           R10 1
