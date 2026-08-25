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
       35 GETUPVAL                         R4 0
       36 LOADNIL                          R5
       37 SETTABLE                         R5 R4 R0
       38 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["TAG_AI_GENERATED_ASSET"]
        4 NAMECALL                         R0 R0 K1 ["GetTagged"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_7:
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

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R3 P2
        7 CAPTURE                          VAL R0
        8 DUPCLOSURE                       R4 K0 [PROTO_3]
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 DUPCLOSURE                       R5 K1 [PROTO_4]
       12 CAPTURE                          UPVAL U0
       13 DUPCLOSURE                       R6 K2 [PROTO_5]
       14 CAPTURE                          UPVAL U0
       15 DUPCLOSURE                       R7 K3 [PROTO_6]
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U0
       18 DUPCLOSURE                       R8 K4 [PROTO_7]
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U0
       21 DUPTABLE                         R9 K13 [{"getGenerationSession", "clearGenerationSession", "cancelGenerationSession", "markAsAIGeneratedAsset", "getGenerationId", "getGenerationType", "getTaggedGeneratedAssets", "reportPublishedAssets"}]
       22 SETTABLEKS                       R1 R9 K5 ["getGenerationSession"]
       24 SETTABLEKS                       R2 R9 K6 ["clearGenerationSession"]
       26 SETTABLEKS                       R3 R9 K7 ["cancelGenerationSession"]
       28 SETTABLEKS                       R4 R9 K8 ["markAsAIGeneratedAsset"]
       30 SETTABLEKS                       R5 R9 K9 ["getGenerationId"]
       32 SETTABLEKS                       R6 R9 K10 ["getGenerationType"]
       34 SETTABLEKS                       R7 R9 K11 ["getTaggedGeneratedAssets"]
       36 SETTABLEKS                       R8 R9 K12 ["reportPublishedAssets"]
       38 RETURN                           R9 1

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
       25 DUPCLOSURE                       R3 K11 [PROTO_8]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 RETURN                           R3 1
