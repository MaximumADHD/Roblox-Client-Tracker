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
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["failureReason"]
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["RESTRICTED_externalHooks"]
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
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R4 R2 K0 ["textPrompt"]
        8 JUMPIFNOTEQKS                    R4 K1 [""] ; [+16]
       10 GETTABLEKS                       R5 R3 K2 ["setPreviewState"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K3 ["PreviewStates"]
       15 GETTABLEKS                       R6 R6 K4 ["GenerationFailed"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K5 ["FailureReasons"]
       20 GETTABLEKS                       R7 R7 K6 ["NoPromptProvided"]
       22 CALL                             R5 2 0
       23 LOADK                            R5 K7 ["No prompt provided, please provide a prompt"]
       24 RETURN                           R5 1
       25 GETTABLEKS                       R5 R2 K8 ["selectedRigRef"]
       27 JUMPIF                           R5 ; [+5]
       28 GETTABLEKS                       R5 R0 K9 ["bridge"]
       30 GETTABLEKS                       R5 R5 K10 ["getSelectedRigRef"]
       32 CALL                             R5 0 1
       33 JUMPIFNOTEQKNIL                  R5 ; [+16]
       35 GETTABLEKS                       R6 R3 K2 ["setPreviewState"]
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K3 ["PreviewStates"]
       40 GETTABLEKS                       R7 R7 K4 ["GenerationFailed"]
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R8 R8 K5 ["FailureReasons"]
       45 GETTABLEKS                       R8 R8 K11 ["NoRigSelected"]
       47 CALL                             R6 2 0
       48 LOADK                            R6 K12 ["No rig selected, please select a rig"]
       49 RETURN                           R6 1
       50 GETTABLEKS                       R6 R3 K13 ["replaceContent"]
       52 DUPTABLE                         R7 K20 [{"type", "previewState", "prompt", "setHostIsPlaying", "setHostCurrentTime", "setHostPlaybackSpeed"}]
       53 GETUPVAL                         R8 3
       54 GETTABLEKS                       R8 R8 K21 ["Type"]
       56 SETTABLEKS                       R8 R7 K14 ["type"]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K3 ["PreviewStates"]
       61 GETTABLEKS                       R8 R8 K22 ["Generating"]
       63 SETTABLEKS                       R8 R7 K15 ["previewState"]
       65 GETTABLEKS                       R8 R2 K0 ["textPrompt"]
       67 SETTABLEKS                       R8 R7 K16 ["prompt"]
       69 GETTABLEKS                       R8 R0 K9 ["bridge"]
       71 GETTABLEKS                       R8 R8 K23 ["setIsPlaying"]
       73 SETTABLEKS                       R8 R7 K17 ["setHostIsPlaying"]
       75 GETTABLEKS                       R8 R0 K9 ["bridge"]
       77 GETTABLEKS                       R8 R8 K24 ["setCurrentTime"]
       79 SETTABLEKS                       R8 R7 K18 ["setHostCurrentTime"]
       81 GETTABLEKS                       R8 R0 K9 ["bridge"]
       83 GETTABLEKS                       R8 R8 K25 ["setPlaybackSpeed"]
       85 SETTABLEKS                       R8 R7 K19 ["setHostPlaybackSpeed"]
       87 CALL                             R6 1 0
       88 GETTABLEKS                       R6 R0 K9 ["bridge"]
       90 GETTABLEKS                       R6 R6 K26 ["generateAnimationAndSetupAnimatorAsync"]
       92 DUPTABLE                         R7 K29 [{"rigUniqueId", "prompt", "duration"}]
       93 GETTABLEKS                       R8 R5 K30 ["uniqueId"]
       95 SETTABLEKS                       R8 R7 K27 ["rigUniqueId"]
       97 GETTABLEKS                       R8 R2 K0 ["textPrompt"]
       99 SETTABLEKS                       R8 R7 K16 ["prompt"]
      101 GETTABLEKS                       R8 R2 K28 ["duration"]
      103 SETTABLEKS                       R8 R7 K28 ["duration"]
      105 CALL                             R6 1 1
      106 JUMPIFNOTEQKN                    R6 K31 [0] ; [+16]
      108 GETTABLEKS                       R7 R3 K2 ["setPreviewState"]
      110 GETUPVAL                         R8 2
      111 GETTABLEKS                       R8 R8 K3 ["PreviewStates"]
      113 GETTABLEKS                       R8 R8 K4 ["GenerationFailed"]
      115 GETUPVAL                         R9 2
      116 GETTABLEKS                       R9 R9 K5 ["FailureReasons"]
      118 GETTABLEKS                       R9 R9 K4 ["GenerationFailed"]
      120 CALL                             R7 2 0
      121 LOADK                            R7 K32 ["Animation generation failed"]
      122 RETURN                           R7 1
      123 GETTABLEKS                       R7 R3 K13 ["replaceContent"]
      125 DUPTABLE                         R8 K33 [{"duration"}]
      126 SETTABLEKS                       R6 R8 K28 ["duration"]
      128 CALL                             R7 1 0
      129 GETTABLEKS                       R7 R3 K2 ["setPreviewState"]
      131 GETUPVAL                         R8 2
      132 GETTABLEKS                       R8 R8 K3 ["PreviewStates"]
      134 GETTABLEKS                       R8 R8 K34 ["GenerationSucceeded"]
      136 CALL                             R7 1 0
      137 LOADK                            R7 K35 ["Animation generated successfully"]
      138 RETURN                           R7 1

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
       18 GETUPVAL                         R5 4
       19 LOADK                            R7 K8 ["AnimationGen"]
       20 LOADK                            R8 K9 ["InputDuration"]
       21 NAMECALL                         R5 R5 K10 ["getText"]
       23 CALL                             R5 3 1
       24 SETTABLEKS                       R5 R4 K3 ["label"]
       26 LOADK                            R5 K11 ["duration"]
       27 SETTABLEKS                       R5 R4 K4 ["prop"]
       29 LOADN                            R5 3
       30 SETTABLEKS                       R5 R4 K5 ["initialValue"]
       32 DUPTABLE                         R5 K14 [{"min", "max"}]
       33 LOADN                            R6 1
       34 SETTABLEKS                       R6 R5 K12 ["min"]
       36 LOADN                            R6 10
       37 SETTABLEKS                       R6 R5 K13 ["max"]
       39 SETTABLEKS                       R5 R4 K6 ["options"]
       41 CALL                             R3 1 1
       42 GETUPVAL                         R4 3
       43 GETTABLEKS                       R4 R4 K15 ["createInstanceRowDefinition"]
       45 DUPTABLE                         R5 K7 [{"label", "prop", "initialValue", "options"}]
       46 GETUPVAL                         R6 4
       47 LOADK                            R8 K8 ["AnimationGen"]
       48 LOADK                            R9 K16 ["InputRig"]
       49 NAMECALL                         R6 R6 K10 ["getText"]
       51 CALL                             R6 3 1
       52 SETTABLEKS                       R6 R5 K3 ["label"]
       54 LOADK                            R6 K17 ["selectedRigRef"]
       55 SETTABLEKS                       R6 R5 K4 ["prop"]
       57 SETTABLEKS                       R1 R5 K5 ["initialValue"]
       59 DUPTABLE                         R6 K19 [{"shouldSelectModel"}]
       60 LOADB                            R7 1
       61 SETTABLEKS                       R7 R6 K18 ["shouldSelectModel"]
       63 SETTABLEKS                       R6 R5 K6 ["options"]
       65 CALL                             R4 1 -1
       66 SETLIST                          R2 R3 -1 [1]
       68 DUPTABLE                         R3 K23 [{"description", "confirmButtonText", "propertyRows"}]
       69 GETUPVAL                         R4 4
       70 LOADK                            R6 K8 ["AnimationGen"]
       71 LOADK                            R7 K24 ["InputDisclaimer"]
       72 NAMECALL                         R4 R4 K10 ["getText"]
       74 CALL                             R4 3 1
       75 SETTABLEKS                       R4 R3 K20 ["description"]
       77 GETUPVAL                         R4 4
       78 LOADK                            R6 K8 ["AnimationGen"]
       79 LOADK                            R7 K25 ["InputGenerate"]
       80 NAMECALL                         R4 R4 K10 ["getText"]
       82 CALL                             R4 3 1
       83 SETTABLEKS                       R4 R3 K21 ["confirmButtonText"]
       85 SETTABLEKS                       R2 R3 K22 ["propertyRows"]
       87 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AnimationGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 DUPTABLE                         R0 K2 [{"type", "previewState"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K4 ["PreviewStates"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["previewState"]
       13 RETURN                           R0 1

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
       23 LOADK                            R7 K3 ["Generates character animations from natural language descriptions using an AI motion generation model. Use this tool whenever the user wants to create, generate, or make an animation, motion, or movement for a character or avatar. The 'prompt' parameter accepts a natural language description of the motion, and an optional 'duration'. You should interpret the prompt to understand the intended action, and adjust the 'duration' appropriately instead of always using the default value. The duration should typically be within a range of 1 to 10 seconds. For example, very short actions (e.g., 'blink', 'nod') should use around 1–2 seconds, simple actions (e.g., 'wave', 'jump') around 2–4 seconds, and longer or complex actions (e.g., 'dance sequence', 'walk across the room') around 5–10 seconds. Avoid unnecessarily long durations for simple actions, and ensure the duration matches the natural timing of the described motion."]
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
       83 CAPTURE                          UPVAL U8
       84 DUPTABLE                         R8 K31 [{"command", "getDescription", "mapToToolCall", "getInputRequestArguments"}]
       85 LOADK                            R9 K32 ["generate_animation"]
       86 SETTABLEKS                       R9 R8 K27 ["command"]
       88 DUPCLOSURE                       R9 K33 [PROTO_15]
       89 CAPTURE                          UPVAL U8
       90 SETTABLEKS                       R9 R8 K28 ["getDescription"]
       92 SETTABLEKS                       R6 R8 K29 ["mapToToolCall"]
       94 SETTABLEKS                       R7 R8 K30 ["getInputRequestArguments"]
       96 DUPTABLE                         R9 K35 [{"transformInitialContent"}]
       97 DUPCLOSURE                       R10 K36 [PROTO_16]
       98 CAPTURE                          UPVAL U9
       99 CAPTURE                          UPVAL U10
      100 SETTABLEKS                       R10 R9 K34 ["transformInitialContent"]
      102 DUPCLOSURE                       R10 K37 [PROTO_17]
      103 DUPTABLE                         R11 K45 [{"definition", "slashCommands", "streamTransform", "contentWidgets", "toolCallOptions", "getPreExecuteWarning", "displayNameFunction"}]
      104 SETTABLEKS                       R5 R11 K38 ["definition"]
      106 NEWTABLE                         R12 0 1
      108 MOVE                             R13 R8
      109 SETLIST                          R12 R13 1 [1]
      111 SETTABLEKS                       R12 R11 K39 ["slashCommands"]
      113 SETTABLEKS                       R9 R11 K40 ["streamTransform"]
      115 NEWTABLE                         R12 0 1
      117 GETUPVAL                         R13 9
      118 SETLIST                          R12 R13 1 [1]
      120 SETTABLEKS                       R12 R11 K41 ["contentWidgets"]
      122 DUPTABLE                         R12 K47 [{"resetTimeoutOnProgress"}]
      123 LOADB                            R13 1
      124 SETTABLEKS                       R13 R12 K46 ["resetTimeoutOnProgress"]
      126 SETTABLEKS                       R12 R11 K42 ["toolCallOptions"]
      128 SETTABLEKS                       R10 R11 K43 ["getPreExecuteWarning"]
      130 DUPCLOSURE                       R12 K48 [PROTO_18]
      131 SETTABLEKS                       R12 R11 K44 ["displayNameFunction"]
      133 RETURN                           R11 1

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
       85 GETTABLEKS                       R15 R1 K26 ["Resources"]
       87 GETTABLEKS                       R15 R15 K27 ["Localization"]
       89 GETTABLEKS                       R15 R15 K28 ["Translator"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K11 [require]
       94 GETTABLEKS                       R16 R1 K29 ["Types"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K11 [require]
       99 GETTABLEKS                       R17 R1 K30 ["Flags"]
      101 GETTABLEKS                       R17 R17 K31 ["FFlagAssistantMultipleChatPersistence"]
      103 CALL                             R16 1 1
      104 GETTABLEKS                       R17 R9 K21 ["Util"]
      106 GETTABLEKS                       R17 R17 K32 ["ToolBuilder"]
      108 GETTABLEKS                       R18 R12 K33 ["ToolNames"]
      110 GETTABLEKS                       R19 R9 K21 ["Util"]
      112 GETTABLEKS                       R19 R19 K34 ["ToolResult"]
      114 DUPCLOSURE                       R20 K35 [PROTO_0]
      115 CAPTURE                          VAL R0
      116 DUPCLOSURE                       R21 K36 [PROTO_1]
      117 CAPTURE                          VAL R4
      118 DUPCLOSURE                       R22 K37 [PROTO_2]
      119 DUPCLOSURE                       R23 K38 [PROTO_8]
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R8
      122 DUPCLOSURE                       R24 K39 [PROTO_9]
      123 CAPTURE                          VAL R22
      124 CAPTURE                          VAL R23
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R6
      127 NEWTABLE                         R25 0 0
      129 DUPCLOSURE                       R26 K40 [PROTO_19]
      130 CAPTURE                          VAL R21
      131 CAPTURE                          VAL R24
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R7
      141 DUPTABLE                         R27 K43 [{"bridge", "setupGuest"}]
      142 SETTABLEKS                       R25 R27 K41 ["bridge"]
      144 SETTABLEKS                       R26 R27 K42 ["setupGuest"]
      146 RETURN                           R27 1
