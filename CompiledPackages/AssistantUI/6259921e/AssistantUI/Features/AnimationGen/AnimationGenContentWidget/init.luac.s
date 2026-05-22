PROTO_0:
        0 DUPTABLE                         R0 K5 [{"Preparing", "Generating", "NoRigSelected", "NoPromptProvided", "GenerationFailed"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["AnimationGen"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["AnimationGen"]
       11 LOADK                            R4 K1 ["Generating"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Generating"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K6 ["AnimationGen"]
       19 LOADK                            R4 K2 ["NoRigSelected"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["NoRigSelected"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K6 ["AnimationGen"]
       27 LOADK                            R4 K3 ["NoPromptProvided"]
       28 NAMECALL                         R1 R1 K7 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["NoPromptProvided"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K6 ["AnimationGen"]
       35 LOADK                            R4 K4 ["GenerationFailed"]
       36 NAMECALL                         R1 R1 K7 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["GenerationFailed"]
       41 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 LOADNIL                          R2
       14 GETTABLEKS                       R3 R0 K3 ["previewState"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["PreviewStates"]
       19 GETTABLEKS                       R4 R4 K5 ["Preparing"]
       21 JUMPIFNOTEQ                      R3 R4 ; [+4]
       23 GETTABLEKS                       R2 R1 K5 ["Preparing"]
       25 JUMP                             ; [+11]
       26 GETTABLEKS                       R3 R0 K3 ["previewState"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K4 ["PreviewStates"]
       31 GETTABLEKS                       R4 R4 K6 ["Generating"]
       33 JUMPIFNOTEQ                      R3 R4 ; [+3]
       35 GETTABLEKS                       R2 R1 K6 ["Generating"]
       37 LOADNIL                          R3
       38 GETTABLEKS                       R4 R0 K7 ["failureReason"]
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R5 R5 K8 ["FailureReasons"]
       43 GETTABLEKS                       R5 R5 K9 ["NoRigSelected"]
       45 JUMPIFNOTEQ                      R4 R5 ; [+4]
       47 GETTABLEKS                       R3 R1 K9 ["NoRigSelected"]
       49 JUMP                             ; [+23]
       50 GETTABLEKS                       R4 R0 K7 ["failureReason"]
       52 GETUPVAL                         R5 2
       53 GETTABLEKS                       R5 R5 K8 ["FailureReasons"]
       55 GETTABLEKS                       R5 R5 K10 ["NoPromptProvided"]
       57 JUMPIFNOTEQ                      R4 R5 ; [+4]
       59 GETTABLEKS                       R3 R1 K10 ["NoPromptProvided"]
       61 JUMP                             ; [+11]
       62 GETTABLEKS                       R4 R0 K7 ["failureReason"]
       64 GETUPVAL                         R5 2
       65 GETTABLEKS                       R5 R5 K8 ["FailureReasons"]
       67 GETTABLEKS                       R5 R5 K11 ["GenerationFailed"]
       69 JUMPIFNOTEQ                      R4 R5 ; [+3]
       71 GETTABLEKS                       R3 R1 K11 ["GenerationFailed"]
       73 GETUPVAL                         R4 3
       74 GETUPVAL                         R5 4
       75 DUPTABLE                         R6 K14 [{"tag", "LayoutOrder"}]
       76 LOADK                            R7 K15 ["col size-full-0 auto-y padding-small gap-small"]
       77 SETTABLEKS                       R7 R6 K12 ["tag"]
       79 GETTABLEKS                       R7 R0 K16 ["layoutOrder"]
       81 SETTABLEKS                       R7 R6 K13 ["LayoutOrder"]
       83 DUPTABLE                         R7 K19 [{"LoadingLabel", "FailureMessage"}]
       84 MOVE                             R8 R2
       85 JUMPIFNOT                        R8 ; [+15]
       86 GETUPVAL                         R8 3
       87 GETUPVAL                         R9 5
       88 DUPTABLE                         R10 K21 [{"tag", "Text"}]
       89 LOADK                            R11 K22 ["size-full-0 auto-y text-label-small content-default"]
       90 SETTABLEKS                       R11 R10 K12 ["tag"]
       92 SETTABLEKS                       R2 R10 K20 ["Text"]
       94 DUPTABLE                         R11 K24 [{"Shimmer"}]
       95 GETUPVAL                         R12 3
       96 GETUPVAL                         R13 6
       97 CALL                             R12 1 1
       98 SETTABLEKS                       R12 R11 K23 ["Shimmer"]
      100 CALL                             R8 3 1
      101 SETTABLEKS                       R8 R7 K17 ["LoadingLabel"]
      103 MOVE                             R8 R3
      104 JUMPIFNOT                        R8 ; [+9]
      105 GETUPVAL                         R8 3
      106 GETUPVAL                         R9 5
      107 DUPTABLE                         R10 K21 [{"tag", "Text"}]
      108 LOADK                            R11 K25 ["size-full-0 auto-y text-body-small content-negative"]
      109 SETTABLEKS                       R11 R10 K12 ["tag"]
      111 SETTABLEKS                       R3 R10 K20 ["Text"]
      113 CALL                             R8 2 1
      114 SETTABLEKS                       R8 R7 K18 ["FailureMessage"]
      116 CALL                             R4 3 -1
      117 RETURN                           R4 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["previewState"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["PreviewStates"]
        5 GETTABLEKS                       R3 R3 K2 ["GenerationSucceeded"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 DUPTABLE                         R5 K5 [{"tag", "LayoutOrder"}]
       16 LOADK                            R6 K6 ["col size-full-0 auto-y padding-small gap-small"]
       17 SETTABLEKS                       R6 R5 K3 ["tag"]
       19 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       21 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       23 DUPTABLE                         R6 K9 [{"StatusWidget", "PlaybackWidget"}]
       24 GETUPVAL                         R7 2
       25 GETUPVAL                         R8 4
       26 DUPTABLE                         R9 K12 [{"layoutOrder", "previewState", "failureReason"}]
       27 MOVE                             R10 R2
       28 CALL                             R10 0 1
       29 SETTABLEKS                       R10 R9 K10 ["layoutOrder"]
       31 GETTABLEKS                       R10 R0 K0 ["previewState"]
       33 SETTABLEKS                       R10 R9 K0 ["previewState"]
       35 GETTABLEKS                       R10 R0 K11 ["failureReason"]
       37 SETTABLEKS                       R10 R9 K11 ["failureReason"]
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K7 ["StatusWidget"]
       42 MOVE                             R7 R1
       43 JUMPIFNOT                        R7 ; [+24]
       44 GETUPVAL                         R7 2
       45 GETUPVAL                         R8 5
       46 DUPTABLE                         R9 K17 [{"layoutOrder", "duration", "setHostIsPlaying", "setHostCurrentTime", "setHostPlaybackSpeed"}]
       47 MOVE                             R10 R2
       48 CALL                             R10 0 1
       49 SETTABLEKS                       R10 R9 K10 ["layoutOrder"]
       51 GETTABLEKS                       R10 R0 K13 ["duration"]
       53 SETTABLEKS                       R10 R9 K13 ["duration"]
       55 GETTABLEKS                       R10 R0 K14 ["setHostIsPlaying"]
       57 SETTABLEKS                       R10 R9 K14 ["setHostIsPlaying"]
       59 GETTABLEKS                       R10 R0 K15 ["setHostCurrentTime"]
       61 SETTABLEKS                       R10 R9 K15 ["setHostCurrentTime"]
       63 GETTABLEKS                       R10 R0 K16 ["setHostPlaybackSpeed"]
       65 SETTABLEKS                       R10 R9 K16 ["setHostPlaybackSpeed"]
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K8 ["PlaybackWidget"]
       70 CALL                             R3 3 -1
       71 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"previewState", "prompt", "duration"}]
        9 GETTABLEKS                       R2 R0 K3 ["previewState"]
       11 SETTABLEKS                       R2 R1 K3 ["previewState"]
       13 GETTABLEKS                       R2 R0 K4 ["prompt"]
       15 SETTABLEKS                       R2 R1 K4 ["prompt"]
       17 GETTABLEKS                       R2 R0 K5 ["duration"]
       19 SETTABLEKS                       R2 R1 K5 ["duration"]
       21 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R2 K7 [{"type", "previewState", "prompt", "duration"}]
        9 LOADK                            R3 K8 ["AnimationGen"]
       10 SETTABLEKS                       R3 R2 K3 ["type"]
       12 GETTABLEKS                       R3 R0 K4 ["previewState"]
       14 SETTABLEKS                       R3 R2 K4 ["previewState"]
       16 GETTABLEKS                       R3 R0 K5 ["prompt"]
       18 SETTABLEKS                       R3 R2 K5 ["prompt"]
       20 GETTABLEKS                       R3 R0 K6 ["duration"]
       22 SETTABLEKS                       R3 R2 K6 ["duration"]
       24 RETURN                           R2 1

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
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R6 R6 K10 ["PlaybackWidget"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K7 [require]
       34 GETTABLEKS                       R7 R2 K11 ["React"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R8 R2 K12 ["ReactUtils"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K7 [require]
       44 GETTABLEKS                       R9 R0 K13 ["Util"]
       46 GETTABLEKS                       R9 R9 K14 ["Serializer"]
       48 GETTABLEKS                       R9 R9 K15 ["SerializerTypes"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K7 [require]
       53 GETTABLEKS                       R10 R0 K16 ["Components"]
       55 GETTABLEKS                       R10 R10 K17 ["ShimmerGradient"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K7 [require]
       60 GETTABLEKS                       R11 R0 K18 ["Resources"]
       62 GETTABLEKS                       R11 R11 K19 ["Localization"]
       64 GETTABLEKS                       R11 R11 K20 ["Translator"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K7 [require]
       69 GETTABLEKS                       R12 R0 K21 ["Types"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K7 [require]
       74 GETTABLEKS                       R13 R0 K22 ["Flags"]
       76 GETTABLEKS                       R13 R13 K23 ["FFlagAssistantMultipleChatPersistence"]
       78 CALL                             R12 1 1
       79 GETTABLEKS                       R13 R4 K24 ["Text"]
       81 GETTABLEKS                       R14 R4 K25 ["View"]
       83 GETTABLEKS                       R15 R7 K26 ["createNextOrder"]
       85 GETTABLEKS                       R16 R6 K27 ["createElement"]
       87 DUPCLOSURE                       R17 K28 [PROTO_1]
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R9
       95 DUPCLOSURE                       R18 K29 [PROTO_2]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R17
      101 CAPTURE                          VAL R5
      102 DUPTABLE                         R19 K32 [{"toMeta", "fromMeta"}]
      103 DUPCLOSURE                       R20 K33 [PROTO_3]
      104 CAPTURE                          VAL R12
      105 SETTABLEKS                       R20 R19 K30 ["toMeta"]
      107 DUPCLOSURE                       R20 K34 [PROTO_4]
      108 CAPTURE                          VAL R12
      109 SETTABLEKS                       R20 R19 K31 ["fromMeta"]
      111 DUPTABLE                         R20 K38 [{"Type", "ContentWidget", "Serialization"}]
      112 LOADK                            R21 K4 ["AnimationGen"]
      113 SETTABLEKS                       R21 R20 K35 ["Type"]
      115 GETTABLEKS                       R21 R6 K39 ["memo"]
      117 MOVE                             R22 R18
      118 CALL                             R21 1 1
      119 SETTABLEKS                       R21 R20 K36 ["ContentWidget"]
      121 SETTABLEKS                       R19 R20 K37 ["Serialization"]
      123 RETURN                           R20 1
