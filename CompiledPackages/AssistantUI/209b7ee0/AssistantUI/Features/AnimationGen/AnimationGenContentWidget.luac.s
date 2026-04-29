PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["previewState"]
        4 JUMPIFEQKS                       R3 K1 ["Generating"] ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 DUPTABLE                         R5 K4 [{"tag", "LayoutOrder"}]
       11 LOADK                            R6 K5 ["col size-full-0 auto-y padding-small gap-small"]
       12 SETTABLEKS                       R6 R5 K2 ["tag"]
       14 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       16 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       18 DUPTABLE                         R6 K7 [{"Label"}]
       19 GETUPVAL                         R7 1
       20 GETUPVAL                         R8 3
       21 DUPTABLE                         R9 K9 [{"tag", "Text", "LayoutOrder"}]
       22 LOADK                            R10 K10 ["size-full-0 auto-y text-label-small content-default"]
       23 SETTABLEKS                       R10 R9 K2 ["tag"]
       25 LOADK                            R11 K11 ["Preview state: %*"]
       26 GETTABLEKS                       R13 R0 K0 ["previewState"]
       28 NAMECALL                         R11 R11 K12 ["format"]
       30 CALL                             R11 2 1
       31 MOVE                             R10 R11
       32 SETTABLEKS                       R10 R9 K8 ["Text"]
       34 MOVE                             R10 R1
       35 CALL                             R10 0 1
       36 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       38 DUPTABLE                         R10 K14 [{"Shimmer"}]
       39 MOVE                             R11 R2
       40 JUMPIFNOT                        R11 ; [+3]
       41 GETUPVAL                         R11 1
       42 GETUPVAL                         R12 4
       43 CALL                             R11 1 1
       44 SETTABLEKS                       R11 R10 K13 ["Shimmer"]
       46 CALL                             R7 3 1
       47 SETTABLEKS                       R7 R6 K6 ["Label"]
       49 CALL                             R3 3 -1
       50 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"type", "previewState", "prompt"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["previewState"]
       15 SETTABLEKS                       R2 R1 K4 ["previewState"]
       17 GETTABLEKS                       R2 R0 K5 ["prompt"]
       19 SETTABLEKS                       R2 R1 K5 ["prompt"]
       21 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"type", "previewState", "prompt"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["previewState"]
       15 SETTABLEKS                       R2 R1 K4 ["previewState"]
       17 GETTABLEKS                       R2 R0 K5 ["prompt"]
       19 SETTABLEKS                       R2 R1 K5 ["prompt"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AnimationGen"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R1 K8 ["AnimationGenTypes"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R2 K9 ["Foundation"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R2 K10 ["React"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R2 K11 ["ReactUtils"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K7 [require]
       37 GETTABLEKS                       R9 R0 K12 ["Components"]
       39 GETTABLEKS                       R8 R9 K13 ["ShimmerGradient"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K7 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Types"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K7 [require]
       49 GETTABLEKS                       R11 R0 K15 ["Flags"]
       51 GETTABLEKS                       R10 R11 K16 ["FFlagAssistantMultipleChatPersistence"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R10 R4 K17 ["Text"]
       56 GETTABLEKS                       R11 R4 K18 ["View"]
       58 GETTABLEKS                       R12 R5 K19 ["createElement"]
       60 GETTABLEKS                       R13 R6 K20 ["createNextOrder"]
       62 DUPCLOSURE                       R14 K21 [PROTO_0]
       63 CAPTURE                          VAL R13
       64 CAPTURE                          VAL R12
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R7
       68 DUPCLOSURE                       R15 K22 [PROTO_1]
       69 CAPTURE                          VAL R9
       70 DUPCLOSURE                       R16 K23 [PROTO_2]
       71 CAPTURE                          VAL R9
       72 DUPTABLE                         R17 K27 [{"Type", "ContentWidget", "Serialization"}]
       73 LOADK                            R18 K4 ["AnimationGen"]
       74 SETTABLEKS                       R18 R17 K24 ["Type"]
       76 GETTABLEKS                       R18 R5 K28 ["memo"]
       78 MOVE                             R19 R14
       79 CALL                             R18 1 1
       80 SETTABLEKS                       R18 R17 K25 ["ContentWidget"]
       82 DUPTABLE                         R18 K31 [{"serialize", "deserialize"}]
       83 SETTABLEKS                       R15 R18 K29 ["serialize"]
       85 SETTABLEKS                       R16 R18 K30 ["deserialize"]
       87 SETTABLEKS                       R18 R17 K26 ["Serialization"]
       89 RETURN                           R17 1
