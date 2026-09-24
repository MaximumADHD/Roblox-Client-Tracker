PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 0
        7 SETTABLE                         R2 R3 R0
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+2]
        3 MOVE                             R1 R2
        4 JUMP                             ; [+5]
        5 NEWTABLE                         R3 0 0
        7 GETUPVAL                         R4 0
        8 SETTABLE                         R3 R4 R0
        9 MOVE                             R1 R3
       10 GETTABLEKS                       R2 R1 K0 ["generationThread"]
       12 JUMPIFNOT                        R2 ; [+10]
       13 GETIMPORT                        R3 K3 [coroutine.status]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 JUMPIFEQKS                       R3 K4 ["dead"] ; [+5]
       19 GETIMPORT                        R3 K7 [task.cancel]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R1 K0 ["generationThread"]
       26 GETTABLEKS                       R3 R1 K8 ["previewAssets"]
       28 JUMPIFNOT                        R3 ; [+6]
       29 NAMECALL                         R4 R3 K9 ["Destroy"]
       31 CALL                             R4 1 0
       32 LOADNIL                          R4
       33 SETTABLEKS                       R4 R1 K8 ["previewAssets"]
       35 GETTABLEKS                       R4 R1 K10 ["preloadedInsertAsset"]
       37 JUMPIFNOT                        R4 ; [+28]
       38 LOADNIL                          R5
       39 SETTABLEKS                       R5 R1 K10 ["preloadedInsertAsset"]
       41 GETTABLEKS                       R5 R4 K11 ["done"]
       43 JUMPIFNOT                        R5 ; [+19]
       44 GETTABLEKS                       R5 R4 K12 ["loadedInstances"]
       46 JUMPIFNOT                        R5 ; [+10]
       47 GETTABLEKS                       R5 R4 K12 ["loadedInstances"]
       49 LOADNIL                          R6
       50 LOADNIL                          R7
       51 FORGPREP                         R5
       52 NAMECALL                         R10 R9 K9 ["Destroy"]
       54 CALL                             R10 1 0
       55 FORGLOOP                         R5 2 ; [-4]
       57 GETTABLEKS                       R5 R4 K13 ["readyEvent"]
       59 NAMECALL                         R5 R5 K9 ["Destroy"]
       61 CALL                             R5 1 0
       62 JUMP                             ; [+3]
       63 LOADB                            R5 1
       64 SETTABLEKS                       R5 R4 K14 ["cancelled"]
       66 GETUPVAL                         R5 1
       67 GETTABLEKS                       R5 R5 K15 ["destroyPlan"]
       69 GETTABLEKS                       R6 R1 K16 ["reapplyPlan"]
       71 CALL                             R5 1 0
       72 LOADNIL                          R5
       73 SETTABLEKS                       R5 R1 K16 ["reapplyPlan"]
       75 GETUPVAL                         R5 0
       76 LOADNIL                          R6
       77 SETTABLE                         R6 R5 R0
       78 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["destroyPlan"]
        7 GETTABLEKS                       R3 R1 K1 ["reapplyPlan"]
        9 CALL                             R2 1 0
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K1 ["reapplyPlan"]
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R2 R0 K0 ["assetId"]
        6 CALL                             R1 1 1
        7 RETURN                           R0 2

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 3
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K2 ["cancelled"]
       10 JUMPIFNOT                        R3 ; [+18]
       11 JUMPIFNOT                        R0 ; [+10]
       12 JUMPIFNOT                        R2 ; [+9]
       13 MOVE                             R3 R2
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 NAMECALL                         R8 R7 K3 ["Destroy"]
       19 CALL                             R8 1 0
       20 FORGLOOP                         R3 2 ; [-4]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K4 ["readyEvent"]
       25 NAMECALL                         R3 R3 K3 ["Destroy"]
       27 CALL                             R3 1 0
       28 RETURN                           R0 0
       29 JUMPIF                           R0 ; [+9]
       30 GETUPVAL                         R3 3
       31 FASTCALL1                        TOSTRING R1 ; [+3]
       32 MOVE                             R5 R1
       33 GETIMPORT                        R4 K6 [tostring]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K7 ["errorMessage"]
       38 JUMP                             ; [+6]
       39 GETUPVAL                         R3 3
       40 SETTABLEKS                       R1 R3 K8 ["publishResult"]
       42 GETUPVAL                         R3 3
       43 SETTABLEKS                       R2 R3 K9 ["loadedInstances"]
       45 GETUPVAL                         R3 3
       46 LOADB                            R4 1
       47 SETTABLEKS                       R4 R3 K10 ["done"]
       49 GETUPVAL                         R3 3
       50 GETTABLEKS                       R3 R3 K4 ["readyEvent"]
       52 NAMECALL                         R3 R3 K11 ["Fire"]
       54 CALL                             R3 1 0
       55 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R4 K4 [{[1], ["done"] = False, ["cancelled"] = False}]
        1 GETIMPORT                        R5 K7 [Instance.new]
        3 LOADK                            R6 K8 ["BindableEvent"]
        4 CALL                             R5 1 1
        5 SETTABLEKS                       R5 R4 K0 ["readyEvent"]
        7 SETTABLEKS                       R4 R0 K9 ["preloadedInsertAsset"]
        9 GETIMPORT                        R5 K12 [task.spawn]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R4
       16 CALL                             R5 1 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["preloadedInsertAsset"]
        2 LOADNIL                          R5
        3 SETTABLEKS                       R5 R0 K0 ["preloadedInsertAsset"]
        5 JUMPIF                           R4 ; [+8]
        6 MOVE                             R5 R1
        7 MOVE                             R6 R3
        8 CALL                             R5 1 1
        9 MOVE                             R6 R2
       10 GETTABLEKS                       R7 R5 K1 ["assetId"]
       12 CALL                             R6 1 1
       13 RETURN                           R5 2
       14 GETTABLEKS                       R5 R4 K2 ["done"]
       16 JUMPIF                           R5 ; [+7]
       17 GETTABLEKS                       R5 R4 K3 ["readyEvent"]
       19 GETTABLEKS                       R5 R5 K4 ["Event"]
       21 NAMECALL                         R5 R5 K5 ["Wait"]
       23 CALL                             R5 1 0
       24 GETTABLEKS                       R5 R4 K3 ["readyEvent"]
       26 NAMECALL                         R5 R5 K6 ["Destroy"]
       28 CALL                             R5 1 0
       29 GETTABLEKS                       R5 R4 K7 ["errorMessage"]
       31 JUMPIFNOT                        R5 ; [+6]
       32 GETIMPORT                        R5 K9 [error]
       34 GETTABLEKS                       R6 R4 K7 ["errorMessage"]
       36 LOADN                            R7 0
       37 CALL                             R5 2 0
       38 GETTABLEKS                       R6 R4 K10 ["publishResult"]
       40 JUMPIFNOT                        R6 ; [+2]
       41 GETTABLEKS                       R6 R4 K11 ["loadedInstances"]
       43 FASTCALL2K                       ASSERT R6 K12 ; [+4]
       45 LOADK                            R7 K12 ["Preloaded insert asset missing result"]
       46 GETIMPORT                        R5 K14 [assert]
       48 CALL                             R5 2 0
       49 GETTABLEKS                       R5 R4 K10 ["publishResult"]
       51 GETTABLEKS                       R6 R4 K11 ["loadedInstances"]
       53 RETURN                           R5 2

PROTO_8:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["ATTRIBUTE_AI_GENERATED"]
        3 LOADB                            R6 1
        4 NAMECALL                         R3 R0 K1 ["SetAttribute"]
        6 CALL                             R3 3 0
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       10 MOVE                             R6 R2
       11 JUMPIF                           R6 ; [+7]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K3 ["Enums"]
       15 GETTABLEKS                       R6 R6 K4 ["GenerationType"]
       17 GETTABLEKS                       R6 R6 K5 ["TextureGen"]
       19 NAMECALL                         R3 R0 K1 ["SetAttribute"]
       21 CALL                             R3 3 0
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K6 ["ATTRIBUTE_AI_GENERATION_ID"]
       25 MOVE                             R6 R1
       26 NAMECALL                         R3 R0 K1 ["SetAttribute"]
       28 CALL                             R3 3 0
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K7 ["TAG_AI_GENERATED_ASSET"]
       32 NAMECALL                         R3 R0 K8 ["AddTag"]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ATTRIBUTE_AI_GENERATED"]
        3 LOADNIL                          R4
        4 NAMECALL                         R1 R0 K1 ["SetAttribute"]
        6 CALL                             R1 3 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       10 LOADNIL                          R4
       11 NAMECALL                         R1 R0 K1 ["SetAttribute"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["ATTRIBUTE_AI_GENERATION_ID"]
       17 LOADNIL                          R4
       18 NAMECALL                         R1 R0 K1 ["SetAttribute"]
       20 CALL                             R1 3 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K4 ["TAG_AI_GENERATED_ASSET"]
       24 NAMECALL                         R1 R0 K5 ["RemoveTag"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K4 [{"generated", "generationType", "generationId", "hadTag"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K5 ["ATTRIBUTE_AI_GENERATED"]
        4 NAMECALL                         R2 R0 K6 ["GetAttribute"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["generated"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K7 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       12 NAMECALL                         R2 R0 K6 ["GetAttribute"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K1 ["generationType"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K8 ["ATTRIBUTE_AI_GENERATION_ID"]
       20 NAMECALL                         R2 R0 K6 ["GetAttribute"]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K2 ["generationId"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K9 ["TAG_AI_GENERATED_ASSET"]
       28 NAMECALL                         R2 R0 K10 ["HasTag"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R1 K3 ["hadTag"]
       33 RETURN                           R1 1

PROTO_11:
        0 JUMPIF                           R1 ; [+28]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["ATTRIBUTE_AI_GENERATED"]
        4 LOADNIL                          R5
        5 NAMECALL                         R2 R0 K1 ["SetAttribute"]
        7 CALL                             R2 3 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       11 LOADNIL                          R5
       12 NAMECALL                         R2 R0 K1 ["SetAttribute"]
       14 CALL                             R2 3 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K3 ["ATTRIBUTE_AI_GENERATION_ID"]
       18 LOADNIL                          R5
       19 NAMECALL                         R2 R0 K1 ["SetAttribute"]
       21 CALL                             R2 3 0
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K4 ["TAG_AI_GENERATED_ASSET"]
       25 NAMECALL                         R2 R0 K5 ["RemoveTag"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K0 ["ATTRIBUTE_AI_GENERATED"]
       32 GETTABLEKS                       R5 R1 K6 ["generated"]
       34 NAMECALL                         R2 R0 K1 ["SetAttribute"]
       36 CALL                             R2 3 0
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K2 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       40 GETTABLEKS                       R5 R1 K7 ["generationType"]
       42 NAMECALL                         R2 R0 K1 ["SetAttribute"]
       44 CALL                             R2 3 0
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K3 ["ATTRIBUTE_AI_GENERATION_ID"]
       48 GETTABLEKS                       R5 R1 K8 ["generationId"]
       50 NAMECALL                         R2 R0 K1 ["SetAttribute"]
       52 CALL                             R2 3 0
       53 GETTABLEKS                       R2 R1 K9 ["hadTag"]
       55 JUMPIFNOT                        R2 ; [+7]
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R4 R4 K4 ["TAG_AI_GENERATED_ASSET"]
       59 NAMECALL                         R2 R0 K10 ["AddTag"]
       61 CALL                             R2 2 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K4 ["TAG_AI_GENERATED_ASSET"]
       66 NAMECALL                         R2 R0 K5 ["RemoveTag"]
       68 CALL                             R2 2 0
       69 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ATTRIBUTE_AI_GENERATION_ID"]
        3 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        5 CALL                             R1 2 1
        6 FASTCALL1                        TYPEOF R1 ; [+3]
        7 MOVE                             R4 R1
        8 GETIMPORT                        R3 K3 [typeof]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+3]
       13 MOVE                             R2 R1
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ATTRIBUTE_AI_GENERATION_TYPE"]
        3 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        5 CALL                             R1 2 1
        6 FASTCALL1                        TYPEOF R1 ; [+3]
        7 MOVE                             R4 R1
        8 GETIMPORT                        R3 K3 [typeof]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+3]
       13 MOVE                             R2 R1
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["TAG_AI_GENERATED_ASSET"]
        4 NAMECALL                         R0 R0 K1 ["GetTagged"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R5 0
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R7 R7 K0 ["TAG_AI_GENERATED_ASSET"]
        6 NAMECALL                         R5 R5 K1 ["GetTagged"]
        8 CALL                             R5 2 3
        9 MOVE                             R2 R5
       10 MOVE                             R3 R6
       11 MOVE                             R4 R7
       12 FORGPREP                         R2
       13 GETIMPORT                        R9 K3 [game]
       15 NAMECALL                         R7 R6 K4 ["IsDescendantOf"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+46]
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K5 ["ATTRIBUTE_AI_GENERATION_ID"]
       22 NAMECALL                         R8 R6 K6 ["GetAttribute"]
       24 CALL                             R8 2 1
       25 FASTCALL1                        TYPEOF R8 ; [+3]
       26 MOVE                             R10 R8
       27 GETIMPORT                        R9 K8 [typeof]
       29 CALL                             R9 1 1
       30 JUMPIFNOTEQKS                    R9 K9 ["string"] ; [+3]
       32 MOVE                             R7 R8
       33 JUMP                             ; [+1]
       34 LOADNIL                          R7
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R11 R11 K10 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       38 NAMECALL                         R9 R6 K6 ["GetAttribute"]
       40 CALL                             R9 2 1
       41 FASTCALL1                        TYPEOF R9 ; [+3]
       42 MOVE                             R11 R9
       43 GETIMPORT                        R10 K8 [typeof]
       45 CALL                             R10 1 1
       46 JUMPIFNOTEQKS                    R10 K9 ["string"] ; [+3]
       48 MOVE                             R8 R9
       49 JUMP                             ; [+1]
       50 LOADNIL                          R8
       51 JUMPIFNOT                        R7 ; [+13]
       52 JUMPIFNOT                        R8 ; [+12]
       53 GETTABLE                         R9 R1 R7
       54 JUMPIF                           R9 ; [+10]
       55 LOADB                            R9 1
       56 SETTABLE                         R9 R1 R7
       57 GETTABLEKS                       R9 R0 K11 ["logAssetPublished"]
       59 DUPTABLE                         R10 K14 [{"generationId", "generationType"}]
       60 SETTABLEKS                       R7 R10 K12 ["generationId"]
       62 SETTABLEKS                       R8 R10 K13 ["generationType"]
       64 CALL                             R9 1 0
       65 FORGLOOP                         R2 2 ; [-53]
       67 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R3 P2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 NEWCLOSURE                       R4 P3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 DUPCLOSURE                       R5 K0 [PROTO_6]
       13 DUPCLOSURE                       R6 K1 [PROTO_7]
       14 DUPCLOSURE                       R7 K2 [PROTO_8]
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 DUPCLOSURE                       R8 K3 [PROTO_9]
       18 CAPTURE                          UPVAL U1
       19 DUPCLOSURE                       R9 K4 [PROTO_10]
       20 CAPTURE                          UPVAL U1
       21 DUPCLOSURE                       R10 K5 [PROTO_11]
       22 CAPTURE                          UPVAL U1
       23 DUPCLOSURE                       R11 K6 [PROTO_12]
       24 CAPTURE                          UPVAL U1
       25 DUPCLOSURE                       R12 K7 [PROTO_13]
       26 CAPTURE                          UPVAL U1
       27 DUPCLOSURE                       R13 K8 [PROTO_14]
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U1
       30 DUPCLOSURE                       R14 K9 [PROTO_15]
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U1
       33 DUPTABLE                         R15 K24 [{"getGenerationSession", "clearGenerationSession", "cancelGenerationSession", "markAsAIGeneratedAsset", "unmarkAsAIGeneratedAsset", "captureAIGeneratedMarks", "restoreAIGeneratedMarks", "releaseReapplyPlan", "getGenerationId", "getGenerationType", "getTaggedGeneratedAssets", "reportPublishedAssets", "startPreloadInsertAsync", "resolveInsertAssetAsync"}]
       34 SETTABLEKS                       R1 R15 K10 ["getGenerationSession"]
       36 SETTABLEKS                       R2 R15 K11 ["clearGenerationSession"]
       38 SETTABLEKS                       R3 R15 K12 ["cancelGenerationSession"]
       40 SETTABLEKS                       R7 R15 K13 ["markAsAIGeneratedAsset"]
       42 SETTABLEKS                       R8 R15 K14 ["unmarkAsAIGeneratedAsset"]
       44 SETTABLEKS                       R9 R15 K15 ["captureAIGeneratedMarks"]
       46 SETTABLEKS                       R10 R15 K16 ["restoreAIGeneratedMarks"]
       48 SETTABLEKS                       R4 R15 K17 ["releaseReapplyPlan"]
       50 SETTABLEKS                       R11 R15 K18 ["getGenerationId"]
       52 SETTABLEKS                       R12 R15 K19 ["getGenerationType"]
       54 SETTABLEKS                       R13 R15 K20 ["getTaggedGeneratedAssets"]
       56 SETTABLEKS                       R14 R15 K21 ["reportPublishedAssets"]
       58 SETTABLEKS                       R5 R15 K22 ["startPreloadInsertAsync"]
       60 SETTABLEKS                       R6 R15 K23 ["resolveInsertAssetAsync"]
       62 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K7 [script]
       20 GETTABLEKS                       R3 R3 K8 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["Gen3dTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K7 [script]
       29 GETTABLEKS                       R4 R4 K8 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["HostSurface"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K7 [script]
       38 GETTABLEKS                       R5 R5 K8 ["Parent"]
       40 GETTABLEKS                       R5 R5 K12 ["MeshReapply"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K13 [PROTO_16]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R0
       48 RETURN                           R5 1
