PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Enums"]
        3 GETTABLEKS                       R2 R2 K1 ["GenerationType"]
        5 GETTABLEKS                       R2 R2 K2 ["TextureGen"]
        7 JUMPIFNOTEQ                      R0 R2 ; [+9]
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R1
       11 JUMPIF                           R4 ; [+3]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["DEFAULT_TEXTURE_GEN_MODEL"]
       15 GETTABLE                         R2 R3 R4
       16 RETURN                           R2 1
       17 GETUPVAL                         R3 3
       18 GETTABLE                         R2 R3 R0
       19 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 0
        7 SETTABLE                         R2 R3 R0
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R2 R0 K0 ["assetId"]
        6 CALL                             R1 1 1
        7 RETURN                           R0 2

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 MOVE                             R4 R2
        1 JUMPIF                           R4 ; [+7]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["Enums"]
        5 GETTABLEKS                       R4 R4 K1 ["GenerationType"]
        7 GETTABLEKS                       R4 R4 K2 ["TextureGen"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K3 ["ATTRIBUTE_AI_GENERATED"]
       12 LOADB                            R8 1
       13 NAMECALL                         R5 R0 K4 ["SetAttribute"]
       15 CALL                             R5 3 0
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K5 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       19 MOVE                             R8 R4
       20 NAMECALL                         R5 R0 K4 ["SetAttribute"]
       22 CALL                             R5 3 0
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K6 ["ATTRIBUTE_AI_GENERATION_ID"]
       26 MOVE                             R8 R1
       27 NAMECALL                         R5 R0 K4 ["SetAttribute"]
       29 CALL                             R5 3 0
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K7 ["TAG_AI_GENERATED_ASSET"]
       33 NAMECALL                         R5 R0 K8 ["AddTag"]
       35 CALL                             R5 2 0
       36 GETUPVAL                         R5 2
       37 CALL                             R5 0 1
       38 JUMPIF                           R5 ; [+1]
       39 RETURN                           R0 0
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K9 ["ATTRIBUTE_AI_MODEL_FLOW"]
       43 GETUPVAL                         R9 0
       44 GETTABLEKS                       R9 R9 K0 ["Enums"]
       46 GETTABLEKS                       R9 R9 K1 ["GenerationType"]
       48 GETTABLEKS                       R9 R9 K2 ["TextureGen"]
       50 JUMPIFNOTEQ                      R4 R9 ; [+9]
       52 GETUPVAL                         R9 3
       53 MOVE                             R10 R3
       54 JUMPIF                           R10 ; [+3]
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R10 R10 K10 ["DEFAULT_TEXTURE_GEN_MODEL"]
       58 GETTABLE                         R8 R9 R10
       59 JUMP                             ; [+2]
       60 GETUPVAL                         R9 4
       61 GETTABLE                         R8 R9 R4
       62 NAMECALL                         R5 R0 K4 ["SetAttribute"]
       64 CALL                             R5 3 0
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K11 ["TAG_ASSISTANT_AI_GENERATED_ASSET"]
       68 NAMECALL                         R5 R0 K8 ["AddTag"]
       70 CALL                             R5 2 0
       71 RETURN                           R0 0

PROTO_10:
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
       27 GETUPVAL                         R1 1
       28 CALL                             R1 0 1
       29 JUMPIF                           R1 ; [+1]
       30 RETURN                           R0 0
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K6 ["ATTRIBUTE_AI_MODEL_FLOW"]
       34 LOADNIL                          R4
       35 NAMECALL                         R1 R0 K1 ["SetAttribute"]
       37 CALL                             R1 3 0
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K7 ["TAG_ASSISTANT_AI_GENERATED_ASSET"]
       41 NAMECALL                         R1 R0 K5 ["RemoveTag"]
       43 CALL                             R1 2 0
       44 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K6 [{"generated", "generationType", "generationId", "hadTag", "modelFlow", "hadAssistantTag"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K7 ["ATTRIBUTE_AI_GENERATED"]
        4 NAMECALL                         R2 R0 K8 ["GetAttribute"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["generated"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K9 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       12 NAMECALL                         R2 R0 K8 ["GetAttribute"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K1 ["generationType"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K10 ["ATTRIBUTE_AI_GENERATION_ID"]
       20 NAMECALL                         R2 R0 K8 ["GetAttribute"]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K2 ["generationId"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K11 ["TAG_AI_GENERATED_ASSET"]
       28 NAMECALL                         R2 R0 K12 ["HasTag"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R1 K3 ["hadTag"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K13 ["ATTRIBUTE_AI_MODEL_FLOW"]
       36 NAMECALL                         R2 R0 K8 ["GetAttribute"]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K4 ["modelFlow"]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K14 ["TAG_ASSISTANT_AI_GENERATED_ASSET"]
       44 NAMECALL                         R2 R0 K12 ["HasTag"]
       46 CALL                             R2 2 1
       47 SETTABLEKS                       R2 R1 K5 ["hadAssistantTag"]
       49 RETURN                           R1 1

PROTO_12:
        0 JUMPIF                           R1 ; [+4]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["ATTRIBUTE_AI_GENERATED"]
        8 GETTABLEKS                       R5 R1 K1 ["generated"]
       10 NAMECALL                         R2 R0 K2 ["SetAttribute"]
       12 CALL                             R2 3 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K3 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       16 GETTABLEKS                       R5 R1 K4 ["generationType"]
       18 NAMECALL                         R2 R0 K2 ["SetAttribute"]
       20 CALL                             R2 3 0
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K5 ["ATTRIBUTE_AI_GENERATION_ID"]
       24 GETTABLEKS                       R5 R1 K6 ["generationId"]
       26 NAMECALL                         R2 R0 K2 ["SetAttribute"]
       28 CALL                             R2 3 0
       29 GETTABLEKS                       R2 R1 K7 ["hadTag"]
       31 JUMPIFNOT                        R2 ; [+7]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K8 ["TAG_AI_GENERATED_ASSET"]
       35 NAMECALL                         R2 R0 K9 ["AddTag"]
       37 CALL                             R2 2 0
       38 JUMP                             ; [+6]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K8 ["TAG_AI_GENERATED_ASSET"]
       42 NAMECALL                         R2 R0 K10 ["RemoveTag"]
       44 CALL                             R2 2 0
       45 GETUPVAL                         R2 2
       46 CALL                             R2 0 1
       47 JUMPIF                           R2 ; [+1]
       48 RETURN                           R0 0
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K11 ["ATTRIBUTE_AI_MODEL_FLOW"]
       52 GETTABLEKS                       R5 R1 K12 ["modelFlow"]
       54 NAMECALL                         R2 R0 K2 ["SetAttribute"]
       56 CALL                             R2 3 0
       57 GETTABLEKS                       R2 R1 K13 ["hadAssistantTag"]
       59 JUMPIFNOT                        R2 ; [+7]
       60 GETUPVAL                         R4 1
       61 GETTABLEKS                       R4 R4 K14 ["TAG_ASSISTANT_AI_GENERATED_ASSET"]
       63 NAMECALL                         R2 R0 K9 ["AddTag"]
       65 CALL                             R2 2 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R4 1
       68 GETTABLEKS                       R4 R4 K14 ["TAG_ASSISTANT_AI_GENERATED_ASSET"]
       70 NAMECALL                         R2 R0 K10 ["RemoveTag"]
       72 CALL                             R2 2 0
       73 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["TAG_AI_GENERATED_ASSET"]
        4 NAMECALL                         R0 R0 K1 ["GetTagged"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["logAssetPublished"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R6 0
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R8 R8 K1 ["TAG_AI_GENERATED_ASSET"]
       10 NAMECALL                         R6 R6 K2 ["GetTagged"]
       12 CALL                             R6 2 3
       13 MOVE                             R3 R6
       14 MOVE                             R4 R7
       15 MOVE                             R5 R8
       16 FORGPREP                         R3
       17 GETIMPORT                        R10 K4 [game]
       19 NAMECALL                         R8 R7 K5 ["IsDescendantOf"]
       21 CALL                             R8 2 1
       22 JUMPIFNOT                        R8 ; [+45]
       23 GETUPVAL                         R11 1
       24 GETTABLEKS                       R11 R11 K6 ["ATTRIBUTE_AI_GENERATION_ID"]
       26 NAMECALL                         R9 R7 K7 ["GetAttribute"]
       28 CALL                             R9 2 1
       29 FASTCALL1                        TYPEOF R9 ; [+3]
       30 MOVE                             R11 R9
       31 GETIMPORT                        R10 K9 [typeof]
       33 CALL                             R10 1 1
       34 JUMPIFNOTEQKS                    R10 K10 ["string"] ; [+3]
       36 MOVE                             R8 R9
       37 JUMP                             ; [+1]
       38 LOADNIL                          R8
       39 GETUPVAL                         R12 1
       40 GETTABLEKS                       R12 R12 K11 ["ATTRIBUTE_AI_GENERATION_TYPE"]
       42 NAMECALL                         R10 R7 K7 ["GetAttribute"]
       44 CALL                             R10 2 1
       45 FASTCALL1                        TYPEOF R10 ; [+3]
       46 MOVE                             R12 R10
       47 GETIMPORT                        R11 K9 [typeof]
       49 CALL                             R11 1 1
       50 JUMPIFNOTEQKS                    R11 K10 ["string"] ; [+3]
       52 MOVE                             R9 R10
       53 JUMP                             ; [+1]
       54 LOADNIL                          R9
       55 JUMPIFNOT                        R8 ; [+12]
       56 JUMPIFNOT                        R9 ; [+11]
       57 GETTABLE                         R10 R2 R8
       58 JUMPIF                           R10 ; [+9]
       59 LOADB                            R10 1
       60 SETTABLE                         R10 R2 R8
       61 MOVE                             R10 R1
       62 DUPTABLE                         R11 K14 [{"generationId", "generationType"}]
       63 SETTABLEKS                       R8 R11 K12 ["generationId"]
       65 SETTABLEKS                       R9 R11 K13 ["generationType"]
       67 CALL                             R10 1 0
       68 FORGLOOP                         R3 2 ; [-52]
       70 RETURN                           R0 0

PROTO_17:
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
       12 DUPCLOSURE                       R5 K0 [PROTO_7]
       13 DUPCLOSURE                       R6 K1 [PROTO_8]
       14 DUPCLOSURE                       R7 K2 [PROTO_9]
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 DUPCLOSURE                       R8 K3 [PROTO_10]
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 DUPCLOSURE                       R9 K4 [PROTO_11]
       24 CAPTURE                          UPVAL U2
       25 DUPCLOSURE                       R10 K5 [PROTO_12]
       26 CAPTURE                          VAL R8
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 DUPCLOSURE                       R11 K6 [PROTO_13]
       30 CAPTURE                          UPVAL U2
       31 DUPCLOSURE                       R12 K7 [PROTO_14]
       32 CAPTURE                          UPVAL U2
       33 DUPCLOSURE                       R13 K8 [PROTO_15]
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U2
       36 DUPCLOSURE                       R14 K9 [PROTO_16]
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U2
       39 DUPTABLE                         R15 K24 [{"getGenerationSession", "clearGenerationSession", "cancelGenerationSession", "markAsAIGeneratedAsset", "unmarkAsAIGeneratedAsset", "captureAIGeneratedMarks", "restoreAIGeneratedMarks", "releaseReapplyPlan", "getGenerationId", "getGenerationType", "getTaggedGeneratedAssets", "reportPublishedAssets", "startPreloadInsertAsync", "resolveInsertAssetAsync"}]
       40 SETTABLEKS                       R1 R15 K10 ["getGenerationSession"]
       42 SETTABLEKS                       R2 R15 K11 ["clearGenerationSession"]
       44 SETTABLEKS                       R3 R15 K12 ["cancelGenerationSession"]
       46 SETTABLEKS                       R7 R15 K13 ["markAsAIGeneratedAsset"]
       48 SETTABLEKS                       R8 R15 K14 ["unmarkAsAIGeneratedAsset"]
       50 SETTABLEKS                       R9 R15 K15 ["captureAIGeneratedMarks"]
       52 SETTABLEKS                       R10 R15 K16 ["restoreAIGeneratedMarks"]
       54 SETTABLEKS                       R4 R15 K17 ["releaseReapplyPlan"]
       56 SETTABLEKS                       R11 R15 K18 ["getGenerationId"]
       58 SETTABLEKS                       R12 R15 K19 ["getGenerationType"]
       60 SETTABLEKS                       R13 R15 K20 ["getTaggedGeneratedAssets"]
       62 SETTABLEKS                       R14 R15 K21 ["reportPublishedAssets"]
       64 SETTABLEKS                       R5 R15 K22 ["startPreloadInsertAsync"]
       66 SETTABLEKS                       R6 R15 K23 ["resolveInsertAssetAsync"]
       68 RETURN                           R15 1

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
       43 GETIMPORT                        R5 K5 [require]
       45 GETIMPORT                        R6 K7 [script]
       47 GETTABLEKS                       R6 R6 K8 ["Parent"]
       49 GETTABLEKS                       R6 R6 K13 ["Flags"]
       51 GETTABLEKS                       R6 R6 K14 ["getFFlagGen3dAssetPublishModelFlow"]
       53 CALL                             R5 1 1
       54 NEWTABLE                         R6 2 0
       56 GETTABLEKS                       R7 R2 K15 ["Enums"]
       58 GETTABLEKS                       R7 R7 K16 ["GenerationType"]
       60 GETTABLEKS                       R7 R7 K17 ["SegmentMesh"]
       62 GETTABLEKS                       R8 R2 K15 ["Enums"]
       64 GETTABLEKS                       R8 R8 K18 ["ModelFlow"]
       66 GETTABLEKS                       R8 R8 K19 ["Segment"]
       68 SETTABLE                         R8 R6 R7
       69 GETTABLEKS                       R7 R2 K15 ["Enums"]
       71 GETTABLEKS                       R7 R7 K16 ["GenerationType"]
       73 GETTABLEKS                       R7 R7 K20 ["Scene"]
       75 GETTABLEKS                       R8 R2 K15 ["Enums"]
       77 GETTABLEKS                       R8 R8 K18 ["ModelFlow"]
       79 GETTABLEKS                       R8 R8 K20 ["Scene"]
       81 SETTABLE                         R8 R6 R7
       82 NEWTABLE                         R7 2 0
       84 GETTABLEKS                       R8 R1 K15 ["Enums"]
       86 GETTABLEKS                       R8 R8 K21 ["TextureGenModel"]
       88 GETTABLEKS                       R8 R8 K22 ["RbxTexture1"]
       90 GETTABLEKS                       R9 R2 K15 ["Enums"]
       92 GETTABLEKS                       R9 R9 K18 ["ModelFlow"]
       94 GETTABLEKS                       R9 R9 K23 ["Texture1"]
       96 SETTABLE                         R9 R7 R8
       97 GETTABLEKS                       R8 R1 K15 ["Enums"]
       99 GETTABLEKS                       R8 R8 K21 ["TextureGenModel"]
      101 GETTABLEKS                       R8 R8 K24 ["RbxTexture2"]
      103 GETTABLEKS                       R9 R2 K15 ["Enums"]
      105 GETTABLEKS                       R9 R9 K18 ["ModelFlow"]
      107 GETTABLEKS                       R9 R9 K25 ["Texture2"]
      109 SETTABLE                         R9 R7 R8
      110 DUPCLOSURE                       R8 K26 [PROTO_0]
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R6
      115 DUPCLOSURE                       R9 K27 [PROTO_17]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R0
      123 RETURN                           R9 1
