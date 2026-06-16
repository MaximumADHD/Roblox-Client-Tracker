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
        0 DUPTABLE                         R0 K1 [{"Publish"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["AnimationGen"]
        3 LOADK                            R4 K0 ["Publish"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Publish"]
        9 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishAnimationAsync"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["publishAnimationAsync"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["previewState"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["PreviewStates"]
        5 GETTABLEKS                       R3 R3 K2 ["GenerationSucceeded"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["useMemo"]
       14 DUPCLOSURE                       R3 K4 [PROTO_2]
       15 CAPTURE                          UPVAL U2
       16 NEWTABLE                         R4 0 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K5 ["locale"]
       21 SETLIST                          R4 R5 1 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K6 ["useCallback"]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R5 0 1
       31 GETTABLEKS                       R6 R0 K7 ["publishAnimationAsync"]
       33 SETLIST                          R5 R6 1 [1]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R4 3
       37 CALL                             R4 0 1
       38 GETUPVAL                         R5 4
       39 GETUPVAL                         R6 5
       40 DUPTABLE                         R7 K10 [{"tag", "LayoutOrder"}]
       41 LOADK                            R8 K11 ["col size-full-0 auto-y padding-small gap-small"]
       42 SETTABLEKS                       R8 R7 K8 ["tag"]
       44 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       46 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       48 DUPTABLE                         R8 K15 [{"StatusWidget", "PlaybackWidget", "PublishButton"}]
       49 GETUPVAL                         R9 4
       50 GETUPVAL                         R10 6
       51 DUPTABLE                         R11 K18 [{"layoutOrder", "previewState", "failureReason"}]
       52 MOVE                             R12 R4
       53 CALL                             R12 0 1
       54 SETTABLEKS                       R12 R11 K16 ["layoutOrder"]
       56 GETTABLEKS                       R12 R0 K0 ["previewState"]
       58 SETTABLEKS                       R12 R11 K0 ["previewState"]
       60 GETTABLEKS                       R12 R0 K17 ["failureReason"]
       62 SETTABLEKS                       R12 R11 K17 ["failureReason"]
       64 CALL                             R9 2 1
       65 SETTABLEKS                       R9 R8 K12 ["StatusWidget"]
       67 MOVE                             R9 R1
       68 JUMPIFNOT                        R9 ; [+32]
       69 GETUPVAL                         R9 4
       70 GETUPVAL                         R10 7
       71 DUPTABLE                         R11 K25 [{"layoutOrder", "duration", "animatorRemovedSignal", "rigSelectedSignal", "setHostIsPlaying", "setHostCurrentTime", "setHostPlaybackSpeed"}]
       72 MOVE                             R12 R4
       73 CALL                             R12 0 1
       74 SETTABLEKS                       R12 R11 K16 ["layoutOrder"]
       76 GETTABLEKS                       R12 R0 K19 ["duration"]
       78 SETTABLEKS                       R12 R11 K19 ["duration"]
       80 GETTABLEKS                       R12 R0 K20 ["animatorRemovedSignal"]
       82 SETTABLEKS                       R12 R11 K20 ["animatorRemovedSignal"]
       84 GETTABLEKS                       R12 R0 K21 ["rigSelectedSignal"]
       86 SETTABLEKS                       R12 R11 K21 ["rigSelectedSignal"]
       88 GETTABLEKS                       R12 R0 K22 ["setHostIsPlaying"]
       90 SETTABLEKS                       R12 R11 K22 ["setHostIsPlaying"]
       92 GETTABLEKS                       R12 R0 K23 ["setHostCurrentTime"]
       94 SETTABLEKS                       R12 R11 K23 ["setHostCurrentTime"]
       96 GETTABLEKS                       R12 R0 K24 ["setHostPlaybackSpeed"]
       98 SETTABLEKS                       R12 R11 K24 ["setHostPlaybackSpeed"]
      100 CALL                             R9 2 1
      101 SETTABLEKS                       R9 R8 K13 ["PlaybackWidget"]
      103 MOVE                             R9 R1
      104 JUMPIFNOT                        R9 ; [+32]
      105 GETUPVAL                         R9 4
      106 GETUPVAL                         R10 8
      107 DUPTABLE                         R11 K30 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      108 MOVE                             R12 R4
      109 CALL                             R12 0 1
      110 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
      112 GETTABLEKS                       R12 R2 K31 ["Publish"]
      114 SETTABLEKS                       R12 R11 K26 ["text"]
      116 GETUPVAL                         R12 9
      117 GETTABLEKS                       R12 R12 K32 ["Enums"]
      119 GETTABLEKS                       R12 R12 K33 ["InputSize"]
      121 GETTABLEKS                       R12 R12 K34 ["Small"]
      123 SETTABLEKS                       R12 R11 K27 ["size"]
      125 GETUPVAL                         R12 9
      126 GETTABLEKS                       R12 R12 K32 ["Enums"]
      128 GETTABLEKS                       R12 R12 K35 ["ButtonVariant"]
      130 GETTABLEKS                       R12 R12 K36 ["Standard"]
      132 SETTABLEKS                       R12 R11 K28 ["variant"]
      134 SETTABLEKS                       R3 R11 K29 ["onActivated"]
      136 CALL                             R9 2 1
      137 SETTABLEKS                       R9 R8 K14 ["PublishButton"]
      139 CALL                             R5 3 -1
      140 RETURN                           R5 -1

PROTO_5:
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

PROTO_6:
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
       60 GETTABLEKS                       R11 R2 K18 ["Signal"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K7 [require]
       65 GETTABLEKS                       R12 R0 K19 ["Resources"]
       67 GETTABLEKS                       R12 R12 K20 ["Localization"]
       69 GETTABLEKS                       R12 R12 K21 ["Translator"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K7 [require]
       74 GETTABLEKS                       R13 R0 K22 ["Types"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K7 [require]
       79 GETTABLEKS                       R14 R0 K23 ["Flags"]
       81 GETTABLEKS                       R14 R14 K24 ["FFlagAssistantMultipleChatPersistence"]
       83 CALL                             R13 1 1
       84 GETTABLEKS                       R14 R4 K25 ["Button"]
       86 GETTABLEKS                       R15 R4 K26 ["Text"]
       88 GETTABLEKS                       R16 R4 K27 ["View"]
       90 GETTABLEKS                       R17 R7 K28 ["createNextOrder"]
       92 GETTABLEKS                       R18 R6 K29 ["createElement"]
       94 DUPCLOSURE                       R19 K30 [PROTO_1]
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R18
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R9
      102 DUPCLOSURE                       R20 K31 [PROTO_4]
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R19
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R4
      113 DUPTABLE                         R21 K34 [{"toMeta", "fromMeta"}]
      114 DUPCLOSURE                       R22 K35 [PROTO_5]
      115 CAPTURE                          VAL R13
      116 SETTABLEKS                       R22 R21 K32 ["toMeta"]
      118 DUPCLOSURE                       R22 K36 [PROTO_6]
      119 CAPTURE                          VAL R13
      120 SETTABLEKS                       R22 R21 K33 ["fromMeta"]
      122 DUPTABLE                         R22 K40 [{"Type", "ContentWidget", "Serialization"}]
      123 LOADK                            R23 K4 ["AnimationGen"]
      124 SETTABLEKS                       R23 R22 K37 ["Type"]
      126 GETTABLEKS                       R23 R6 K41 ["memo"]
      128 MOVE                             R24 R20
      129 CALL                             R23 1 1
      130 SETTABLEKS                       R23 R22 K38 ["ContentWidget"]
      132 SETTABLEKS                       R21 R22 K39 ["Serialization"]
      134 RETURN                           R22 1
