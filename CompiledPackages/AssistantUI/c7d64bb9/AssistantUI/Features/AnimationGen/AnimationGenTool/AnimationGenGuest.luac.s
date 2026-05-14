PROTO_0:
        0 LOADK                            R1 K0 ["AnimationGen-%*"]
        1 GETUPVAL                         R3 0
        2 LOADB                            R5 0
        3 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
        5 CALL                             R3 2 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R5 K3 [{"isThirdPartyRequest", "messageId", "contentId"}]
        1 SETTABLEKS                       R2 R5 K0 ["isThirdPartyRequest"]
        3 SETTABLEKS                       R3 R5 K1 ["messageId"]
        5 SETTABLEKS                       R4 R5 K2 ["contentId"]
        7 DUPTABLE                         R6 K5 [{"handlerArgs"}]
        8 SETTABLEKS                       R5 R6 K4 ["handlerArgs"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K6 ["createGuestContext"]
       13 MOVE                             R8 R0
       14 MOVE                             R9 R6
       15 MOVE                             R10 R1
       16 LOADNIL                          R11
       17 CALL                             R7 4 -1
       18 RETURN                           R7 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Tool arguments must be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K6 ["textPrompt"]
       17 FASTCALL1                        TYPEOF R1 ; [+3]
       18 MOVE                             R5 R1
       19 GETIMPORT                        R4 K1 [typeof]
       21 CALL                             R4 1 1
       22 JUMPIFEQKS                       R4 K7 ["string"] ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       28 LOADK                            R4 K8 ["textPrompt must be a string"]
       29 GETIMPORT                        R2 K5 [assert]
       31 CALL                             R2 2 0
       32 GETTABLEKS                       R2 R0 K9 ["duration"]
       34 JUMPIFEQKNIL                     R2 ; [+16]
       36 FASTCALL1                        TYPEOF R2 ; [+3]
       37 MOVE                             R6 R2
       38 GETIMPORT                        R5 K1 [typeof]
       40 CALL                             R5 1 1
       41 JUMPIFEQKS                       R5 K10 ["number"] ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 FASTCALL2K                       ASSERT R4 K11 ; [+4]
       47 LOADK                            R5 K11 ["duration must be a number"]
       48 GETIMPORT                        R3 K5 [assert]
       50 CALL                             R3 2 0
       51 GETTABLEKS                       R3 R0 K12 ["selectedRigRef"]
       53 DUPTABLE                         R4 K13 [{"textPrompt", "duration", "selectedRigRef"}]
       54 SETTABLEKS                       R1 R4 K6 ["textPrompt"]
       56 SETTABLEKS                       R2 R4 K9 ["duration"]
       58 SETTABLEKS                       R3 R4 K12 ["selectedRigRef"]
       60 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handlerArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["handlerArgs"]
       10 GETTABLEKS                       R2 R2 K2 ["messageId"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["handlerArgs"]
       15 GETTABLEKS                       R3 R3 K3 ["contentId"]
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+10]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["getContentHooks"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K5 ["editContent"]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K5 ["editContent"]
       33 DUPTABLE                         R5 K7 [{"messageId", "contentId", "transformFn"}]
       34 SETTABLEKS                       R2 R5 K2 ["messageId"]
       36 SETTABLEKS                       R3 R5 K3 ["contentId"]
       38 SETTABLEKS                       R0 R5 K6 ["transformFn"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["previewState"]
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["externalHooks"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          VAL R2
       13 DUPTABLE                         R5 K5 [{"updateWidget", "replaceContent", "setPreviewState"}]
       14 SETTABLEKS                       R2 R5 K2 ["updateWidget"]
       16 SETTABLEKS                       R3 R5 K3 ["replaceContent"]
       18 SETTABLEKS                       R4 R5 K4 ["setPreviewState"]
       20 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 LOADK                            R4 K0 ["AnimationGen-%*"]
        4 GETUPVAL                         R6 1
        5 LOADB                            R8 0
        6 NAMECALL                         R6 R6 K1 ["GenerateGUID"]
        8 CALL                             R6 2 1
        9 NAMECALL                         R4 R4 K2 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R0
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R4 K3 ["replaceContent"]
       18 DUPTABLE                         R6 K10 [{"type", "previewState", "prompt", "setHostIsPlaying", "setHostCurrentTime", "setHostPlaybackSpeed"}]
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K11 ["Type"]
       22 SETTABLEKS                       R7 R6 K4 ["type"]
       24 GETUPVAL                         R7 4
       25 GETTABLEKS                       R7 R7 K12 ["PreviewStates"]
       27 GETTABLEKS                       R7 R7 K13 ["Generating"]
       29 SETTABLEKS                       R7 R6 K5 ["previewState"]
       31 GETTABLEKS                       R7 R2 K14 ["textPrompt"]
       33 SETTABLEKS                       R7 R6 K6 ["prompt"]
       35 GETTABLEKS                       R7 R0 K15 ["bridge"]
       37 GETTABLEKS                       R7 R7 K16 ["setIsPlaying"]
       39 SETTABLEKS                       R7 R6 K7 ["setHostIsPlaying"]
       41 GETTABLEKS                       R7 R0 K15 ["bridge"]
       43 GETTABLEKS                       R7 R7 K17 ["setCurrentTime"]
       45 SETTABLEKS                       R7 R6 K8 ["setHostCurrentTime"]
       47 GETTABLEKS                       R7 R0 K15 ["bridge"]
       49 GETTABLEKS                       R7 R7 K18 ["setPlaybackSpeed"]
       51 SETTABLEKS                       R7 R6 K9 ["setHostPlaybackSpeed"]
       53 CALL                             R5 1 0
       54 GETTABLEKS                       R5 R2 K19 ["selectedRigRef"]
       56 JUMPIFNOTEQKNIL                  R5 ; [+11]
       58 GETTABLEKS                       R5 R4 K20 ["setPreviewState"]
       60 GETUPVAL                         R6 4
       61 GETTABLEKS                       R6 R6 K12 ["PreviewStates"]
       63 GETTABLEKS                       R6 R6 K21 ["GenerationFailed"]
       65 CALL                             R5 1 0
       66 LOADK                            R5 K22 ["No rig selected"]
       67 RETURN                           R5 1
       68 GETTABLEKS                       R5 R0 K15 ["bridge"]
       70 GETTABLEKS                       R5 R5 K23 ["generateAnimationAndSetupAnimatorAsync"]
       72 DUPTABLE                         R6 K26 [{"rigUniqueId", "prompt", "duration"}]
       73 GETTABLEKS                       R7 R2 K19 ["selectedRigRef"]
       75 GETTABLEKS                       R7 R7 K27 ["uniqueId"]
       77 SETTABLEKS                       R7 R6 K24 ["rigUniqueId"]
       79 GETTABLEKS                       R7 R2 K14 ["textPrompt"]
       81 SETTABLEKS                       R7 R6 K6 ["prompt"]
       83 GETTABLEKS                       R7 R2 K25 ["duration"]
       85 SETTABLEKS                       R7 R6 K25 ["duration"]
       87 CALL                             R5 1 1
       88 JUMPIFNOTEQKN                    R5 K28 [0] ; [+11]
       90 GETTABLEKS                       R6 R4 K20 ["setPreviewState"]
       92 GETUPVAL                         R7 4
       93 GETTABLEKS                       R7 R7 K12 ["PreviewStates"]
       95 GETTABLEKS                       R7 R7 K21 ["GenerationFailed"]
       97 CALL                             R6 1 0
       98 LOADK                            R6 K29 ["Animation generation failed"]
       99 RETURN                           R6 1
      100 GETTABLEKS                       R6 R4 K3 ["replaceContent"]
      102 DUPTABLE                         R7 K30 [{"duration"}]
      103 SETTABLEKS                       R5 R7 K25 ["duration"]
      105 CALL                             R6 1 0
      106 GETTABLEKS                       R6 R4 K20 ["setPreviewState"]
      108 GETUPVAL                         R7 4
      109 GETTABLEKS                       R7 R7 K12 ["PreviewStates"]
      111 GETTABLEKS                       R7 R7 K31 ["GenerationSucceeded"]
      113 CALL                             R6 1 0
      114 LOADK                            R6 K32 ["Animation generated successfully"]
      115 RETURN                           R6 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 CALL                             R3 5 -1
        7 RETURN                           R3 -1

PROTO_11:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["isThirdPartyRequest"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADB                            R2 0
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R3 R1 K1 ["messageId"]
        8 JUMPIF                           R3 ; [+1]
        9 LOADK                            R3 K2 [""]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R4 R1 K3 ["contentId"]
       13 JUMPIF                           R4 ; [+1]
       14 LOADK                            R4 K2 [""]
       15 GETUPVAL                         R5 0
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R7 2
       18 MOVE                             R8 R2
       19 MOVE                             R9 R3
       20 MOVE                             R10 R4
       21 CALL                             R5 5 1
       22 GETUPVAL                         R6 3
       23 MOVE                             R7 R5
       24 MOVE                             R8 R0
       25 CALL                             R6 2 1
       26 RETURN                           R6 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["runWithProgressLoop"]
        3 GETTABLEKS                       R4 R2 K1 ["sendProgress"]
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 MOVE                             R7 R1
        8 CALL                             R3 4 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["toString"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 2
       15 CALL                             R5 0 1
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R5 K3 ["addText"]
       19 CALL                             R5 2 1
       20 NAMECALL                         R5 R5 K4 ["build"]
       22 CALL                             R5 1 -1
       23 RETURN                           R5 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K4 [{"textPrompt", "duration", "selectedRigRef"}]
        6 SETTABLEKS                       R0 R2 K1 ["textPrompt"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K5 ["getOptionalNumber"]
       11 GETTABLEKS                       R4 R1 K2 ["duration"]
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K2 ["duration"]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K3 ["selectedRigRef"]
       19 DUPTABLE                         R3 K8 [{"name", "arguments"}]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K9 ["AnimationGen"]
       23 SETTABLEKS                       R4 R3 K6 ["name"]
       25 SETTABLEKS                       R2 R3 K7 ["arguments"]
       27 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 LOADB                            R3 0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 CALL                             R0 5 1
        7 GETTABLEKS                       R1 R0 K0 ["bridge"]
        9 GETTABLEKS                       R1 R1 K1 ["getSelectedRigRef"]
       11 CALL                             R1 0 1
       12 NEWTABLE                         R2 0 2
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["createNumberRowDefinition"]
       17 DUPTABLE                         R4 K7 [{"label", "prop", "initialValue", "options"}]
       18 LOADK                            R5 K8 ["Duration"]
       19 SETTABLEKS                       R5 R4 K3 ["label"]
       21 LOADK                            R5 K9 ["duration"]
       22 SETTABLEKS                       R5 R4 K4 ["prop"]
       24 LOADN                            R5 3
       25 SETTABLEKS                       R5 R4 K5 ["initialValue"]
       27 DUPTABLE                         R5 K12 [{"min", "max"}]
       28 LOADN                            R6 1
       29 SETTABLEKS                       R6 R5 K10 ["min"]
       31 LOADN                            R6 10
       32 SETTABLEKS                       R6 R5 K11 ["max"]
       34 SETTABLEKS                       R5 R4 K6 ["options"]
       36 CALL                             R3 1 1
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R4 R4 K13 ["createInstanceRowDefinition"]
       40 DUPTABLE                         R5 K7 [{"label", "prop", "initialValue", "options"}]
       41 LOADK                            R6 K14 ["Rig"]
       42 SETTABLEKS                       R6 R5 K3 ["label"]
       44 LOADK                            R6 K15 ["selectedRigRef"]
       45 SETTABLEKS                       R6 R5 K4 ["prop"]
       47 SETTABLEKS                       R1 R5 K5 ["initialValue"]
       49 DUPTABLE                         R6 K17 [{"isA"}]
       50 NEWTABLE                         R7 0 1
       52 LOADK                            R8 K18 ["Model"]
       53 SETLIST                          R7 R8 1 [1]
       55 SETTABLEKS                       R7 R6 K16 ["isA"]
       57 SETTABLEKS                       R6 R5 K6 ["options"]
       59 CALL                             R4 1 -1
       60 SETLIST                          R2 R3 -1 [1]
       62 DUPTABLE                         R3 K22 [{"description", "confirmButtonText", "propertyRows"}]
       63 LOADK                            R4 K23 ["Please complete the following to generate the animation"]
       64 SETTABLEKS                       R4 R3 K19 ["description"]
       66 LOADK                            R4 K24 ["Generate"]
       67 SETTABLEKS                       R4 R3 K20 ["confirmButtonText"]
       69 SETTABLEKS                       R2 R3 K21 ["propertyRows"]
       71 RETURN                           R3 1

PROTO_15:
        0 LOADK                            R0 K0 ["Generate an animation"]
        1 RETURN                           R0 1

PROTO_16:
        0 DUPTABLE                         R0 K3 [{"type", "previewState", "prompt"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K5 ["PreviewStates"]
        9 GETTABLEKS                       R1 R1 K6 ["Generating"]
       11 SETTABLEKS                       R1 R0 K1 ["previewState"]
       13 LOADK                            R1 K7 [""]
       14 SETTABLEKS                       R1 R0 K2 ["prompt"]
       16 RETURN                           R0 1

PROTO_17:
        0 DUPTABLE                         R2 K1 [{"shouldConfirm"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["shouldConfirm"]
        4 RETURN                           R2 1

PROTO_18:
        0 LOADK                            R0 K0 ["Generate Animation"]
        1 RETURN                           R0 1

PROTO_19:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 NEWCLOSURE                       R4 P2
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U3
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K0 ["define"]
       16 CALL                             R5 0 1
       17 GETUPVAL                         R7 5
       18 GETTABLEKS                       R7 R7 K1 ["AnimationGen"]
       20 NAMECALL                         R5 R5 K2 ["setName"]
       22 CALL                             R5 2 1
       23 LOADK                            R7 K3 ["Generates an animation from a prompt using AI."]
       24 NAMECALL                         R5 R5 K4 ["setDescription"]
       26 CALL                             R5 2 1
       27 LOADK                            R7 K5 ["textPrompt"]
       28 DUPTABLE                         R8 K8 [{"type", "description"}]
       29 LOADK                            R9 K9 ["string"]
       30 SETTABLEKS                       R9 R8 K6 ["type"]
       32 LOADK                            R9 K10 ["The text prompt describing the animation to generate."]
       33 SETTABLEKS                       R9 R8 K7 ["description"]
       35 NAMECALL                         R5 R5 K11 ["addArgument"]
       37 CALL                             R5 3 1
       38 LOADK                            R7 K12 ["duration"]
       39 DUPTABLE                         R8 K8 [{"type", "description"}]
       40 LOADK                            R9 K13 ["number"]
       41 SETTABLEKS                       R9 R8 K6 ["type"]
       43 LOADK                            R9 K14 ["Length of the animation in seconds. Animation will be 30 fps."]
       44 SETTABLEKS                       R9 R8 K7 ["description"]
       46 NAMECALL                         R5 R5 K15 ["addOptionalArgument"]
       48 CALL                             R5 3 1
       49 DUPTABLE                         R7 K21 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       50 LOADK                            R8 K22 ["Animation Generation"]
       51 SETTABLEKS                       R8 R7 K16 ["title"]
       53 LOADB                            R8 0
       54 SETTABLEKS                       R8 R7 K17 ["readOnlyHint"]
       56 LOADB                            R8 0
       57 SETTABLEKS                       R8 R7 K18 ["destructiveHint"]
       59 LOADB                            R8 0
       60 SETTABLEKS                       R8 R7 K19 ["idempotentHint"]
       62 LOADB                            R8 0
       63 SETTABLEKS                       R8 R7 K20 ["openWorldHint"]
       65 NAMECALL                         R5 R5 K23 ["setAnnotations"]
       67 CALL                             R5 2 1
       68 MOVE                             R7 R4
       69 NAMECALL                         R5 R5 K24 ["setHandler"]
       71 CALL                             R5 2 1
       72 NAMECALL                         R5 R5 K25 ["build"]
       74 CALL                             R5 1 1
       75 DUPCLOSURE                       R6 K26 [PROTO_13]
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          UPVAL U5
       78 NEWCLOSURE                       R7 P4
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R1
       82 CAPTURE                          UPVAL U7
       83 DUPTABLE                         R8 K31 [{"command", "getDescription", "mapToToolCall", "getInputRequestArguments"}]
       84 LOADK                            R9 K32 ["generate_animation"]
       85 SETTABLEKS                       R9 R8 K27 ["command"]
       87 DUPCLOSURE                       R9 K33 [PROTO_15]
       88 SETTABLEKS                       R9 R8 K28 ["getDescription"]
       90 SETTABLEKS                       R6 R8 K29 ["mapToToolCall"]
       92 SETTABLEKS                       R7 R8 K30 ["getInputRequestArguments"]
       94 DUPTABLE                         R9 K35 [{"transformInitialContent"}]
       95 DUPCLOSURE                       R10 K36 [PROTO_16]
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          UPVAL U9
       98 SETTABLEKS                       R10 R9 K34 ["transformInitialContent"]
      100 DUPCLOSURE                       R10 K37 [PROTO_17]
      101 DUPTABLE                         R11 K45 [{"definition", "slashCommands", "streamTransform", "contentWidgets", "toolCallOptions", "getPreExecuteWarning", "displayNameFunction"}]
      102 SETTABLEKS                       R5 R11 K38 ["definition"]
      104 NEWTABLE                         R12 0 1
      106 MOVE                             R13 R8
      107 SETLIST                          R12 R13 1 [1]
      109 SETTABLEKS                       R12 R11 K39 ["slashCommands"]
      111 SETTABLEKS                       R9 R11 K40 ["streamTransform"]
      113 NEWTABLE                         R12 0 1
      115 GETUPVAL                         R13 8
      116 SETLIST                          R12 R13 1 [1]
      118 SETTABLEKS                       R12 R11 K41 ["contentWidgets"]
      120 DUPTABLE                         R12 K47 [{"resetTimeoutOnProgress"}]
      121 LOADB                            R13 1
      122 SETTABLEKS                       R13 R12 K46 ["resetTimeoutOnProgress"]
      124 SETTABLEKS                       R12 R11 K42 ["toolCallOptions"]
      126 SETTABLEKS                       R10 R11 K43 ["getPreExecuteWarning"]
      128 DUPCLOSURE                       R12 K48 [PROTO_18]
      129 SETTABLEKS                       R12 R11 K44 ["displayNameFunction"]
      131 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [script]
       15 LOADK                            R4 K8 ["AnimationGen"]
       16 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R1 K9 ["Parent"]
       21 GETIMPORT                        R4 K11 [require]
       23 GETTABLEKS                       R5 R2 K12 ["AnimationGenTool"]
       25 GETTABLEKS                       R5 R5 K13 ["AnimationGenBridge"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K11 [require]
       30 GETTABLEKS                       R6 R2 K12 ["AnimationGenTool"]
       32 GETTABLEKS                       R6 R6 K14 ["AnimationGenBridgeTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K11 [require]
       37 GETTABLEKS                       R7 R2 K15 ["AnimationGenContentWidget"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K11 [require]
       42 GETTABLEKS                       R8 R2 K16 ["AnimationGenTypes"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K11 [require]
       47 GETTABLEKS                       R9 R3 K17 ["Dash"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K11 [require]
       52 GETTABLEKS                       R10 R3 K18 ["ModelContextProtocol"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K11 [require]
       57 GETTABLEKS                       R11 R1 K19 ["Components"]
       59 GETTABLEKS                       R11 R11 K20 ["PropertyRows"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K11 [require]
       64 GETTABLEKS                       R12 R1 K21 ["Util"]
       66 GETTABLEKS                       R12 R12 K22 ["SlashCommandArgs"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K11 [require]
       71 GETTABLEKS                       R13 R1 K23 ["Tools"]
       73 GETTABLEKS                       R13 R13 K24 ["ToolTypes"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K11 [require]
       78 GETTABLEKS                       R14 R1 K21 ["Util"]
       80 GETTABLEKS                       R14 R14 K25 ["ToolUtils"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K11 [require]
       85 GETTABLEKS                       R15 R1 K26 ["Types"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K11 [require]
       90 GETTABLEKS                       R16 R1 K27 ["Flags"]
       92 GETTABLEKS                       R16 R16 K28 ["FFlagAssistantMultipleChatPersistence"]
       94 CALL                             R15 1 1
       95 GETTABLEKS                       R16 R9 K21 ["Util"]
       97 GETTABLEKS                       R16 R16 K29 ["ToolBuilder"]
       99 GETTABLEKS                       R17 R12 K30 ["ToolNames"]
      101 GETTABLEKS                       R18 R9 K21 ["Util"]
      103 GETTABLEKS                       R18 R18 K31 ["ToolResult"]
      105 DUPCLOSURE                       R19 K32 [PROTO_0]
      106 CAPTURE                          VAL R0
      107 DUPCLOSURE                       R20 K33 [PROTO_1]
      108 CAPTURE                          VAL R4
      109 DUPCLOSURE                       R21 K34 [PROTO_2]
      110 DUPCLOSURE                       R22 K35 [PROTO_8]
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R8
      113 DUPCLOSURE                       R23 K36 [PROTO_9]
      114 CAPTURE                          VAL R21
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R22
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R7
      119 NEWTABLE                         R24 0 0
      121 DUPCLOSURE                       R25 K37 [PROTO_19]
      122 CAPTURE                          VAL R20
      123 CAPTURE                          VAL R23
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R18
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R7
      132 DUPTABLE                         R26 K40 [{"bridge", "setupGuest"}]
      133 SETTABLEKS                       R24 R26 K38 ["bridge"]
      135 SETTABLEKS                       R25 R26 K39 ["setupGuest"]
      137 RETURN                           R26 1
