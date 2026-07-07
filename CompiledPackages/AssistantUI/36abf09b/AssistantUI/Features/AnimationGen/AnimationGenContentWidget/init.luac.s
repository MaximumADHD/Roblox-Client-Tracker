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
       75 DUPTABLE                         R6 K15 [{["tag"] = "col gap-small size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       76 GETTABLEKS                       R7 R0 K16 ["layoutOrder"]
       78 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
       80 DUPTABLE                         R7 K19 [{"LoadingLabel", "FailureMessage"}]
       81 MOVE                             R8 R2
       82 JUMPIFNOT                        R8 ; [+12]
       83 GETUPVAL                         R8 3
       84 GETUPVAL                         R9 5
       85 DUPTABLE                         R10 K22 [{["tag"] = "size-full-0 auto-y text-label-small content-default", ["Text"]}]
       86 SETTABLEKS                       R2 R10 K21 ["Text"]
       88 DUPTABLE                         R11 K24 [{"Shimmer"}]
       89 GETUPVAL                         R12 3
       90 GETUPVAL                         R13 6
       91 CALL                             R12 1 1
       92 SETTABLEKS                       R12 R11 K23 ["Shimmer"]
       94 CALL                             R8 3 1
       95 SETTABLEKS                       R8 R7 K17 ["LoadingLabel"]
       97 MOVE                             R8 R3
       98 JUMPIFNOT                        R8 ; [+6]
       99 GETUPVAL                         R8 3
      100 GETUPVAL                         R9 5
      101 DUPTABLE                         R10 K26 [{["tag"] = "size-full-0 auto-y text-body-small", ["Text"]}]
      102 SETTABLEKS                       R3 R10 K21 ["Text"]
      104 CALL                             R8 2 1
      105 SETTABLEKS                       R8 R7 K18 ["FailureMessage"]
      107 CALL                             R4 3 -1
      108 RETURN                           R4 -1

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
       40 DUPTABLE                         R7 K11 [{["tag"] = "col gap-small size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       41 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       43 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       45 DUPTABLE                         R8 K15 [{"StatusWidget", "PlaybackWidget", "PublishButton"}]
       46 GETUPVAL                         R9 4
       47 GETUPVAL                         R10 6
       48 DUPTABLE                         R11 K18 [{"layoutOrder", "previewState", "failureReason"}]
       49 MOVE                             R12 R4
       50 CALL                             R12 0 1
       51 SETTABLEKS                       R12 R11 K16 ["layoutOrder"]
       53 GETTABLEKS                       R12 R0 K0 ["previewState"]
       55 SETTABLEKS                       R12 R11 K0 ["previewState"]
       57 GETTABLEKS                       R12 R0 K17 ["failureReason"]
       59 SETTABLEKS                       R12 R11 K17 ["failureReason"]
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K12 ["StatusWidget"]
       64 MOVE                             R9 R1
       65 JUMPIFNOT                        R9 ; [+32]
       66 GETUPVAL                         R9 4
       67 GETUPVAL                         R10 7
       68 DUPTABLE                         R11 K25 [{"layoutOrder", "duration", "animatorRemovedSignal", "rigSelectedSignal", "setHostIsPlaying", "setHostCurrentTime", "setHostPlaybackSpeed"}]
       69 MOVE                             R12 R4
       70 CALL                             R12 0 1
       71 SETTABLEKS                       R12 R11 K16 ["layoutOrder"]
       73 GETTABLEKS                       R12 R0 K19 ["duration"]
       75 SETTABLEKS                       R12 R11 K19 ["duration"]
       77 GETTABLEKS                       R12 R0 K20 ["animatorRemovedSignal"]
       79 SETTABLEKS                       R12 R11 K20 ["animatorRemovedSignal"]
       81 GETTABLEKS                       R12 R0 K21 ["rigSelectedSignal"]
       83 SETTABLEKS                       R12 R11 K21 ["rigSelectedSignal"]
       85 GETTABLEKS                       R12 R0 K22 ["setHostIsPlaying"]
       87 SETTABLEKS                       R12 R11 K22 ["setHostIsPlaying"]
       89 GETTABLEKS                       R12 R0 K23 ["setHostCurrentTime"]
       91 SETTABLEKS                       R12 R11 K23 ["setHostCurrentTime"]
       93 GETTABLEKS                       R12 R0 K24 ["setHostPlaybackSpeed"]
       95 SETTABLEKS                       R12 R11 K24 ["setHostPlaybackSpeed"]
       97 CALL                             R9 2 1
       98 SETTABLEKS                       R9 R8 K13 ["PlaybackWidget"]
      100 MOVE                             R9 R1
      101 JUMPIFNOT                        R9 ; [+32]
      102 GETUPVAL                         R9 4
      103 GETUPVAL                         R10 8
      104 DUPTABLE                         R11 K30 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      105 MOVE                             R12 R4
      106 CALL                             R12 0 1
      107 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      109 GETTABLEKS                       R12 R2 K31 ["Publish"]
      111 SETTABLEKS                       R12 R11 K26 ["text"]
      113 GETUPVAL                         R12 9
      114 GETTABLEKS                       R12 R12 K32 ["Enums"]
      116 GETTABLEKS                       R12 R12 K33 ["InputSize"]
      118 GETTABLEKS                       R12 R12 K34 ["Small"]
      120 SETTABLEKS                       R12 R11 K27 ["size"]
      122 GETUPVAL                         R12 9
      123 GETTABLEKS                       R12 R12 K32 ["Enums"]
      125 GETTABLEKS                       R12 R12 K35 ["ButtonVariant"]
      127 GETTABLEKS                       R12 R12 K36 ["Standard"]
      129 SETTABLEKS                       R12 R11 K28 ["variant"]
      131 SETTABLEKS                       R3 R11 K29 ["onActivated"]
      133 CALL                             R9 2 1
      134 SETTABLEKS                       R9 R8 K14 ["PublishButton"]
      136 CALL                             R5 3 -1
      137 RETURN                           R5 -1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"previewState", "prompt", "duration"}]
        1 GETTABLEKS                       R2 R0 K0 ["previewState"]
        3 SETTABLEKS                       R2 R1 K0 ["previewState"]
        5 GETTABLEKS                       R2 R0 K1 ["prompt"]
        7 SETTABLEKS                       R2 R1 K1 ["prompt"]
        9 GETTABLEKS                       R2 R0 K2 ["duration"]
       11 SETTABLEKS                       R2 R1 K2 ["duration"]
       13 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R2 K5 [{[1] = "AnimationGen", ["previewState"], ["prompt"], ["duration"]}]
        1 GETTABLEKS                       R3 R0 K2 ["previewState"]
        3 SETTABLEKS                       R3 R2 K2 ["previewState"]
        5 GETTABLEKS                       R3 R0 K3 ["prompt"]
        7 SETTABLEKS                       R3 R2 K3 ["prompt"]
        9 GETTABLEKS                       R3 R0 K4 ["duration"]
       11 SETTABLEKS                       R3 R2 K4 ["duration"]
       13 RETURN                           R2 1

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
       77 GETTABLEKS                       R13 R4 K23 ["Button"]
       79 GETTABLEKS                       R14 R4 K24 ["Text"]
       81 GETTABLEKS                       R15 R4 K25 ["View"]
       83 GETTABLEKS                       R16 R7 K26 ["createNextOrder"]
       85 GETTABLEKS                       R17 R6 K27 ["createElement"]
       87 DUPCLOSURE                       R18 K28 [PROTO_1]
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R17
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R14
       94 CAPTURE                          VAL R9
       95 DUPCLOSURE                       R19 K29 [PROTO_4]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R17
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R18
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R4
      106 DUPTABLE                         R20 K32 [{"toMeta", "fromMeta"}]
      107 DUPCLOSURE                       R21 K33 [PROTO_5]
      108 SETTABLEKS                       R21 R20 K30 ["toMeta"]
      110 DUPCLOSURE                       R21 K34 [PROTO_6]
      111 SETTABLEKS                       R21 R20 K31 ["fromMeta"]
      113 DUPTABLE                         R21 K38 [{["Type"] = "AnimationGen", ["ContentWidget"], ["Serialization"]}]
      114 GETTABLEKS                       R22 R6 K39 ["memo"]
      116 MOVE                             R23 R19
      117 CALL                             R22 1 1
      118 SETTABLEKS                       R22 R21 K36 ["ContentWidget"]
      120 SETTABLEKS                       R20 R21 K37 ["Serialization"]
      122 RETURN                           R21 1
