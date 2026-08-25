PROTO_0:
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
       32 GETTABLEKS                       R2 R0 K9 ["selectedRigRef"]
       34 GETTABLEKS                       R3 R0 K10 ["duration"]
       36 JUMPIFEQKNIL                     R3 ; [+16]
       38 FASTCALL1                        TYPEOF R3 ; [+3]
       39 MOVE                             R7 R3
       40 GETIMPORT                        R6 K1 [typeof]
       42 CALL                             R6 1 1
       43 JUMPIFEQKS                       R6 K11 ["number"] ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       49 LOADK                            R6 K12 ["duration must be a number"]
       50 GETIMPORT                        R4 K5 [assert]
       52 CALL                             R4 2 0
       53 GETTABLEKS                       R4 R0 K13 ["loop"]
       55 JUMPIFEQKNIL                     R4 ; [+16]
       57 FASTCALL1                        TYPEOF R4 ; [+3]
       58 MOVE                             R8 R4
       59 GETIMPORT                        R7 K1 [typeof]
       61 CALL                             R7 1 1
       62 JUMPIFEQKS                       R7 K14 ["boolean"] ; [+2]
       64 LOADB                            R6 0 +1
       65 LOADB                            R6 1
       66 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       68 LOADK                            R7 K15 ["loop must be a boolean"]
       69 GETIMPORT                        R5 K5 [assert]
       71 CALL                             R5 2 0
       72 DUPTABLE                         R5 K16 [{"textPrompt", "selectedRigRef", "duration", "loop"}]
       73 SETTABLEKS                       R1 R5 K6 ["textPrompt"]
       75 SETTABLEKS                       R2 R5 K9 ["selectedRigRef"]
       77 SETTABLEKS                       R3 R5 K10 ["duration"]
       79 SETTABLEKS                       R4 R5 K13 ["loop"]
       81 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["callArgs"]
       10 GETTABLEKS                       R2 R2 K2 ["contentId"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["getContentHooks"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K4 ["editContent"]
       19 MOVE                             R5 R0
       20 CALL                             R4 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["callArgs"]
        6 GETTABLEKS                       R2 R2 K1 ["isThirdPartyRequest"]
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["callArgs"]
       13 GETTABLEKS                       R3 R3 K2 ["contentId"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["getContentHooks"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R4 K4 ["editContent"]
       22 MOVE                             R6 R1
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["previewState"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["failureReason"]
        6 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["callArgs"]
        6 GETTABLEKS                       R3 R3 K1 ["isThirdPartyRequest"]
        8 JUMPIFNOT                        R3 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["callArgs"]
       13 GETTABLEKS                       R4 R4 K2 ["contentId"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K3 ["getContentHooks"]
       18 MOVE                             R6 R4
       19 CALL                             R5 1 1
       20 GETTABLEKS                       R6 R5 K4 ["editContent"]
       22 MOVE                             R7 R2
       23 CALL                             R6 1 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["RESTRICTED_externalHooks"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 DUPTABLE                         R5 K5 [{"updateWidget", "replaceContent", "setPreviewState"}]
       15 SETTABLEKS                       R2 R5 K2 ["updateWidget"]
       17 SETTABLEKS                       R3 R5 K3 ["replaceContent"]
       19 SETTABLEKS                       R4 R5 K4 ["setPreviewState"]
       21 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["selectLinkedAnimation"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 GETUPVAL                         R1 0
        4 SETTABLEKS                       R1 R0 K1 ["displayName"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R1 R0 K2 ["onChipClicked"]
       10 DUPTABLE                         R1 K5 [{["rawTransformValues"] = True}]
       11 RETURN                           R1 1

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
       27 MOVE                             R6 R5
       28 JUMPIF                           R6 ; [+5]
       29 GETTABLEKS                       R6 R0 K9 ["bridge"]
       31 GETTABLEKS                       R6 R6 K10 ["getSelectedRigRef"]
       33 CALL                             R6 0 1
       34 MOVE                             R5 R6
       35 JUMPIFNOTEQKNIL                  R5 ; [+3]
       37 LOADK                            R6 K11 ["No rig selected, please select a rig"]
       38 RETURN                           R6 1
       39 GETTABLEKS                       R6 R0 K12 ["callArgs"]
       41 GETTABLEKS                       R6 R6 K13 ["contentId"]
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R7 R7 K14 ["new"]
       46 CALL                             R7 0 1
       47 GETUPVAL                         R8 4
       48 SETTABLE                         R7 R8 R6
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R8 R8 K14 ["new"]
       52 CALL                             R8 0 1
       53 GETUPVAL                         R9 5
       54 SETTABLE                         R8 R9 R6
       55 GETTABLEKS                       R9 R3 K15 ["replaceContent"]
       57 DUPTABLE                         R10 K25 [{"type", "previewState", "prompt", "setHostIsPlaying", "setHostCurrentTime", "setHostPlaybackSpeed", "animatorRemovedSignal", "rigSelectedSignal", "publishAnimationAsync"}]
       58 GETUPVAL                         R11 6
       59 GETTABLEKS                       R11 R11 K26 ["Type"]
       61 SETTABLEKS                       R11 R10 K16 ["type"]
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R11 R11 K3 ["PreviewStates"]
       66 GETTABLEKS                       R11 R11 K27 ["Generating"]
       68 SETTABLEKS                       R11 R10 K17 ["previewState"]
       70 GETTABLEKS                       R11 R2 K0 ["textPrompt"]
       72 SETTABLEKS                       R11 R10 K18 ["prompt"]
       74 GETTABLEKS                       R11 R0 K9 ["bridge"]
       76 GETTABLEKS                       R11 R11 K28 ["setIsPlaying"]
       78 SETTABLEKS                       R11 R10 K19 ["setHostIsPlaying"]
       80 GETTABLEKS                       R11 R0 K9 ["bridge"]
       82 GETTABLEKS                       R11 R11 K29 ["setCurrentTime"]
       84 SETTABLEKS                       R11 R10 K20 ["setHostCurrentTime"]
       86 GETTABLEKS                       R11 R0 K9 ["bridge"]
       88 GETTABLEKS                       R11 R11 K30 ["setPlaybackSpeed"]
       90 SETTABLEKS                       R11 R10 K21 ["setHostPlaybackSpeed"]
       92 SETTABLEKS                       R7 R10 K22 ["animatorRemovedSignal"]
       94 SETTABLEKS                       R8 R10 K23 ["rigSelectedSignal"]
       96 GETTABLEKS                       R11 R0 K9 ["bridge"]
       98 GETTABLEKS                       R11 R11 K24 ["publishAnimationAsync"]
      100 SETTABLEKS                       R11 R10 K24 ["publishAnimationAsync"]
      102 CALL                             R9 1 0
      103 GETTABLEKS                       R9 R0 K9 ["bridge"]
      105 GETTABLEKS                       R9 R9 K31 ["generateAndSaveAnimationAsync"]
      107 DUPTABLE                         R10 K35 [{"prompt", "rigUniqueId", "duration", "loop"}]
      108 GETTABLEKS                       R11 R2 K0 ["textPrompt"]
      110 SETTABLEKS                       R11 R10 K18 ["prompt"]
      112 MOVE                             R11 R5
      113 JUMPIFNOT                        R11 ; [+2]
      114 GETTABLEKS                       R11 R5 K36 ["uniqueId"]
      116 SETTABLEKS                       R11 R10 K32 ["rigUniqueId"]
      118 GETTABLEKS                       R11 R2 K33 ["duration"]
      120 SETTABLEKS                       R11 R10 K33 ["duration"]
      122 GETTABLEKS                       R11 R2 K34 ["loop"]
      124 SETTABLEKS                       R11 R10 K34 ["loop"]
      126 CALL                             R9 1 1
      127 GETTABLEKS                       R10 R9 K33 ["duration"]
      129 JUMPIFNOTEQKN                    R10 K37 [0] ; [+16]
      131 GETTABLEKS                       R10 R3 K2 ["setPreviewState"]
      133 GETUPVAL                         R11 2
      134 GETTABLEKS                       R11 R11 K3 ["PreviewStates"]
      136 GETTABLEKS                       R11 R11 K4 ["GenerationFailed"]
      138 GETUPVAL                         R12 2
      139 GETTABLEKS                       R12 R12 K5 ["FailureReasons"]
      141 GETTABLEKS                       R12 R12 K4 ["GenerationFailed"]
      143 CALL                             R10 2 0
      144 LOADK                            R10 K38 ["Animation generation failed"]
      145 RETURN                           R10 1
      146 GETTABLEKS                       R10 R3 K15 ["replaceContent"]
      148 DUPTABLE                         R11 K39 [{"duration"}]
      149 GETTABLEKS                       R12 R9 K33 ["duration"]
      151 SETTABLEKS                       R12 R11 K33 ["duration"]
      153 CALL                             R10 1 0
      154 GETTABLEKS                       R10 R3 K2 ["setPreviewState"]
      156 GETUPVAL                         R11 2
      157 GETTABLEKS                       R11 R11 K3 ["PreviewStates"]
      159 GETTABLEKS                       R11 R11 K40 ["GenerationSucceeded"]
      161 CALL                             R10 1 0
      162 GETTABLEKS                       R10 R9 K41 ["name"]
      164 GETTABLEKS                       R11 R3 K42 ["updateWidget"]
      166 NEWCLOSURE                       R12 P0
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R0
      169 CALL                             R11 1 0
      170 GETTABLEKS                       R11 R0 K9 ["bridge"]
      172 GETTABLEKS                       R11 R11 K43 ["listenToLinkChanges"]
      174 DUPTABLE                         R12 K45 [{"generationName"}]
      175 SETTABLEKS                       R10 R12 K44 ["generationName"]
      177 CALL                             R11 1 0
      178 LOADK                            R11 K46 ["Animation generated successfully"]
      179 RETURN                           R11 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["callArgs"]
        3 GETTABLEKS                       R3 R3 K1 ["contentId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFEQKNIL                     R1 ; [+4]
        8 NAMECALL                         R2 R1 K2 ["Fire"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["callArgs"]
        3 GETTABLEKS                       R3 R3 K1 ["contentId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFEQKNIL                     R1 ; [+4]
        8 NAMECALL                         R2 R1 K2 ["Fire"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["showChip"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["newDisplayName"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K2 ["displayName"]
       11 DUPTABLE                         R1 K5 [{["rawTransformValues"] = True}]
       12 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createGuestContext"]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K3 [{"isThirdPartyRequest", "contentId"}]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R5 R1 K1 ["isThirdPartyRequest"]
        8 JUMPIF                           R5 ; [+1]
        9 LOADB                            R5 0
       10 SETTABLEKS                       R5 R4 K1 ["isThirdPartyRequest"]
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R5 R1 K2 ["contentId"]
       15 JUMPIF                           R5 ; [+1]
       16 LOADK                            R5 K4 [""]
       17 SETTABLEKS                       R5 R4 K2 ["contentId"]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 1
       21 MOVE                             R4 R2
       22 MOVE                             R5 R0
       23 CALL                             R3 2 1
       24 RETURN                           R3 1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADK                            R5 K2 ["%s*%S+=%S+"]
        6 LOADK                            R6 K1 [""]
        7 NAMECALL                         R3 R0 K3 ["gsub"]
        9 CALL                             R3 3 1
       10 LOADK                            R5 K4 ["^%s*(.-)%s*$"]
       11 NAMECALL                         R3 R3 K5 ["match"]
       13 CALL                             R3 2 1
       14 ORK                              R2 R3 K1 [""]
       15 DUPTABLE                         R3 K11 [{["textPrompt"], ["selectedRigRef"] = , ["duration"], ["loop"]}]
       16 SETTABLEKS                       R2 R3 K6 ["textPrompt"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K12 ["getOptionalNumber"]
       21 GETTABLEKS                       R5 R1 K9 ["duration"]
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R4 R3 K9 ["duration"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K13 ["getOptionalBoolean"]
       29 GETTABLEKS                       R5 R1 K10 ["loop"]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K10 ["loop"]
       34 DUPTABLE                         R4 K16 [{"name", "arguments"}]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K17 ["AnimationGen"]
       38 SETTABLEKS                       R5 R4 K14 ["name"]
       40 SETTABLEKS                       R3 R4 K15 ["arguments"]
       42 RETURN                           R4 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["selectedRigRef"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+8]
        4 GETUPVAL                         R2 0
        5 LOADK                            R4 K1 ["AnimationGen"]
        6 LOADK                            R5 K2 ["RigRequired"]
        7 NAMECALL                         R2 R2 K3 ["getText"]
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createGuestContext"]
        3 LOADNIL                          R1
        4 DUPTABLE                         R2 K5 [{["isThirdPartyRequest"] = False, ["contentId"] = }]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R1 R0 K6 ["bridge"]
        8 GETTABLEKS                       R1 R1 K7 ["getSelectedRigRef"]
       10 CALL                             R1 0 1
       11 NEWTABLE                         R2 0 4
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K8 ["createStringRowDefinition"]
       16 DUPTABLE                         R4 K14 [{["label"], ["prop"] = "textPrompt", ["multiLine"] = True}]
       17 GETUPVAL                         R5 2
       18 LOADK                            R7 K15 ["AnimationGen"]
       19 LOADK                            R8 K16 ["Prompt"]
       20 NAMECALL                         R5 R5 K17 ["getText"]
       22 CALL                             R5 3 1
       23 SETTABLEKS                       R5 R4 K9 ["label"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K18 ["createInstanceRowDefinition"]
       29 DUPTABLE                         R5 K22 [{["label"], ["prop"] = "selectedRigRef", ["initialValue"], ["options"]}]
       30 GETUPVAL                         R6 2
       31 LOADK                            R8 K15 ["AnimationGen"]
       32 LOADK                            R9 K23 ["InputRig"]
       33 NAMECALL                         R6 R6 K17 ["getText"]
       35 CALL                             R6 3 1
       36 SETTABLEKS                       R6 R5 K9 ["label"]
       38 JUMPIFNOT                        R1 ; [+14]
       39 DUPTABLE                         R6 K28 [{["uniqueId"], ["name"], ["className"], ["isValid"] = }]
       40 GETTABLEKS                       R7 R1 K24 ["uniqueId"]
       42 SETTABLEKS                       R7 R6 K24 ["uniqueId"]
       44 GETTABLEKS                       R7 R1 K25 ["name"]
       46 SETTABLEKS                       R7 R6 K25 ["name"]
       48 GETTABLEKS                       R7 R1 K26 ["className"]
       50 SETTABLEKS                       R7 R6 K26 ["className"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R6
       54 SETTABLEKS                       R6 R5 K20 ["initialValue"]
       56 DUPTABLE                         R6 K30 [{["shouldSelectModel"] = True}]
       57 SETTABLEKS                       R6 R5 K21 ["options"]
       59 CALL                             R4 1 1
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K31 ["createNumberRowDefinition"]
       63 DUPTABLE                         R6 K34 [{["label"], ["prop"] = "duration", ["initialValue"] = 3, ["options"]}]
       64 GETUPVAL                         R7 2
       65 LOADK                            R9 K15 ["AnimationGen"]
       66 LOADK                            R10 K35 ["InputDuration"]
       67 NAMECALL                         R7 R7 K17 ["getText"]
       69 CALL                             R7 3 1
       70 SETTABLEKS                       R7 R6 K9 ["label"]
       72 DUPTABLE                         R7 K40 [{["min"] = 1, ["max"] = 10}]
       73 SETTABLEKS                       R7 R6 K21 ["options"]
       75 CALL                             R5 1 1
       76 GETUPVAL                         R6 1
       77 GETTABLEKS                       R6 R6 K41 ["createBooleanRowDefinition"]
       79 DUPTABLE                         R7 K43 [{["label"], ["prop"] = "loop", ["initialValue"] = False}]
       80 GETUPVAL                         R8 2
       81 LOADK                            R10 K15 ["AnimationGen"]
       82 LOADK                            R11 K44 ["InputLoop"]
       83 NAMECALL                         R8 R8 K17 ["getText"]
       85 CALL                             R8 3 1
       86 SETTABLEKS                       R8 R7 K9 ["label"]
       88 CALL                             R6 1 -1
       89 SETLIST                          R2 R3 -1 [1]
       91 DUPTABLE                         R3 K48 [{"confirmButtonText", "propertyRows", "getDisabledReason"}]
       92 GETUPVAL                         R4 2
       93 LOADK                            R6 K15 ["AnimationGen"]
       94 LOADK                            R7 K49 ["InputGenerate"]
       95 NAMECALL                         R4 R4 K17 ["getText"]
       97 CALL                             R4 3 1
       98 SETTABLEKS                       R4 R3 K45 ["confirmButtonText"]
      100 SETTABLEKS                       R2 R3 K46 ["propertyRows"]
      102 DUPCLOSURE                       R4 K50 [PROTO_17]
      103 CAPTURE                          UPVAL U2
      104 SETTABLEKS                       R4 R3 K47 ["getDisabledReason"]
      106 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AnimationGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_20:
        0 DUPTABLE                         R0 K2 [{"type", "previewState"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K4 ["PreviewStates"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["previewState"]
       13 RETURN                           R0 1

PROTO_21:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["AnimationGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_23:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K0 ["define"]
       10 CALL                             R3 0 1
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R5 R5 K1 ["AnimationGen"]
       14 NAMECALL                         R3 R3 K2 ["setName"]
       16 CALL                             R3 2 1
       17 LOADK                            R5 K3 ["Generates character animations from natural language descriptions using an AI motion generation model. Use this tool whenever the user wants to create, generate, or make an animation, motion, or movement for a character or avatar. The 'prompt' parameter accepts a natural language description of the motion, and an optional 'duration'. You should interpret the prompt to understand the intended action, and adjust the 'duration' appropriately instead of always using the default value. The duration should typically be within a range of 1 to 10 seconds. For example, very short actions (e.g., 'blink', 'nod') should use around 1–2 seconds, simple actions (e.g., 'wave', 'jump') around 2–4 seconds, and longer or complex actions (e.g., 'dance sequence', 'walk across the room') around 5–10 seconds. Avoid unnecessarily long durations for simple actions, and ensure the duration matches the natural timing of the described motion. Parameters: textPrompt (the motion description), duration (length in seconds, infer from the motion), loop (true if the motion should repeat seamlessly)."]
       18 NAMECALL                         R3 R3 K4 ["setDescription"]
       20 CALL                             R3 2 1
       21 LOADK                            R5 K5 ["textPrompt"]
       22 DUPTABLE                         R6 K10 [{["type"] = "string", ["description"] = "The text prompt describing the animation to generate."}]
       23 NAMECALL                         R3 R3 K11 ["addArgument"]
       25 CALL                             R3 3 1
       26 LOADK                            R5 K12 ["duration"]
       27 DUPTABLE                         R6 K15 [{["type"] = "number", ["description"] = "Length of the animation in seconds. Animation will be 30 fps."}]
       28 NAMECALL                         R3 R3 K16 ["addOptionalArgument"]
       30 CALL                             R3 3 1
       31 LOADK                            R5 K17 ["loop"]
       32 DUPTABLE                         R6 K20 [{["type"] = "boolean", ["description"] = "Whether the animation should loop."}]
       33 NAMECALL                         R3 R3 K16 ["addOptionalArgument"]
       35 CALL                             R3 3 1
       36 DUPTABLE                         R5 K28 [{["title"] = "Animation Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       37 NAMECALL                         R3 R3 K29 ["setAnnotations"]
       39 CALL                             R3 2 1
       40 MOVE                             R5 R2
       41 NAMECALL                         R3 R3 K30 ["setHandler"]
       43 CALL                             R3 2 1
       44 NAMECALL                         R3 R3 K31 ["build"]
       46 CALL                             R3 1 1
       47 DUPCLOSURE                       R4 K32 [PROTO_16]
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U4
       50 NEWCLOSURE                       R5 P3
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          UPVAL U7
       54 DUPTABLE                         R6 K40 [{["command"] = "generate_animation", ["getDescription"], ["runToolChain"] = , ["mapToToolCall"], ["getInputRequestArguments"]}]
       55 DUPCLOSURE                       R7 K41 [PROTO_19]
       56 CAPTURE                          UPVAL U7
       57 SETTABLEKS                       R7 R6 K35 ["getDescription"]
       59 SETTABLEKS                       R4 R6 K38 ["mapToToolCall"]
       61 SETTABLEKS                       R5 R6 K39 ["getInputRequestArguments"]
       63 DUPTABLE                         R7 K43 [{"transformInitialContent"}]
       64 DUPCLOSURE                       R8 K44 [PROTO_20]
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          UPVAL U9
       67 SETTABLEKS                       R8 R7 K42 ["transformInitialContent"]
       69 DUPCLOSURE                       R8 K45 [PROTO_21]
       70 DUPTABLE                         R9 K53 [{"definition", "slashCommands", "streamTransform", "contentWidgets", "toolCallOptions", "getPreExecuteWarning", "displayNameFunction"}]
       71 SETTABLEKS                       R3 R9 K46 ["definition"]
       73 NEWTABLE                         R10 0 1
       75 MOVE                             R11 R6
       76 SETLIST                          R10 R11 1 [1]
       78 SETTABLEKS                       R10 R9 K47 ["slashCommands"]
       80 SETTABLEKS                       R7 R9 K48 ["streamTransform"]
       82 GETUPVAL                         R11 10
       83 GETTABLEKS                       R11 R11 K54 ["FFlagAssistantSplitToolsAndWidgets"]
       85 JUMPIFNOT                        R11 ; [+2]
       86 LOADNIL                          R10
       87 JUMP                             ; [+5]
       88 NEWTABLE                         R10 0 1
       90 GETUPVAL                         R11 8
       91 SETLIST                          R10 R11 1 [1]
       93 SETTABLEKS                       R10 R9 K49 ["contentWidgets"]
       95 DUPTABLE                         R10 K57 [{["resetTimeoutOnProgress"] = True}]
       96 SETTABLEKS                       R10 R9 K50 ["toolCallOptions"]
       98 SETTABLEKS                       R8 R9 K51 ["getPreExecuteWarning"]
      100 GETUPVAL                         R11 10
      101 GETTABLEKS                       R11 R11 K54 ["FFlagAssistantSplitToolsAndWidgets"]
      103 JUMPIFNOT                        R11 ; [+2]
      104 LOADNIL                          R10
      105 JUMP                             ; [+2]
      106 DUPCLOSURE                       R10 K58 [PROTO_22]
      107 CAPTURE                          UPVAL U7
      108 SETTABLEKS                       R10 R9 K52 ["displayNameFunction"]
      110 RETURN                           R9 1

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
       17 GETTABLEKS                       R4 R1 K8 ["AnimationGenTool"]
       19 GETTABLEKS                       R4 R4 K9 ["AnimationGenToolBridgeTypes"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R1 K10 ["DEPRECATED_AnimationGenContentWidget"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K7 [require]
       29 GETTABLEKS                       R6 R0 K11 ["Util"]
       31 GETTABLEKS                       R6 R6 K4 ["AnimationGen"]
       33 GETTABLEKS                       R6 R6 K12 ["AnimationGenTypes"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K7 [require]
       38 GETTABLEKS                       R7 R0 K13 ["Components"]
       40 GETTABLEKS                       R7 R7 K14 ["DEPRECATED_PropertyRows"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K7 [require]
       45 GETTABLEKS                       R8 R2 K15 ["Dash"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K7 [require]
       50 GETTABLEKS                       R9 R0 K16 ["Flags"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K7 [require]
       55 GETTABLEKS                       R10 R2 K17 ["ModelContextProtocol"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K7 [require]
       60 GETTABLEKS                       R11 R2 K18 ["Signal"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K7 [require]
       65 GETTABLEKS                       R12 R0 K11 ["Util"]
       67 GETTABLEKS                       R12 R12 K19 ["SlashCommandArgs"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K7 [require]
       72 GETTABLEKS                       R13 R0 K20 ["Tools"]
       74 GETTABLEKS                       R13 R13 K21 ["ToolTypes"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K7 [require]
       79 GETTABLEKS                       R14 R0 K11 ["Util"]
       81 GETTABLEKS                       R14 R14 K22 ["ToolUtils"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K7 [require]
       86 GETTABLEKS                       R15 R0 K23 ["Resources"]
       88 GETTABLEKS                       R15 R15 K24 ["Localization"]
       90 GETTABLEKS                       R15 R15 K25 ["Translator"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K7 [require]
       95 GETTABLEKS                       R16 R0 K26 ["Types"]
       97 CALL                             R15 1 1
       98 GETTABLEKS                       R16 R9 K11 ["Util"]
      100 GETTABLEKS                       R16 R16 K27 ["ToolBuilder"]
      102 GETTABLEKS                       R17 R12 K28 ["ToolNames"]
      104 GETTABLEKS                       R18 R9 K11 ["Util"]
      106 GETTABLEKS                       R18 R18 K29 ["ToolResult"]
      108 NEWTABLE                         R19 0 0
      110 NEWTABLE                         R20 0 0
      112 DUPCLOSURE                       R21 K30 [PROTO_0]
      113 DUPCLOSURE                       R22 K31 [PROTO_6]
      114 CAPTURE                          VAL R7
      115 DUPCLOSURE                       R23 K32 [PROTO_9]
      116 CAPTURE                          VAL R21
      117 CAPTURE                          VAL R22
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R19
      121 CAPTURE                          VAL R20
      122 CAPTURE                          VAL R4
      123 DUPCLOSURE                       R24 K33 [PROTO_10]
      124 CAPTURE                          VAL R19
      125 DUPCLOSURE                       R25 K34 [PROTO_11]
      126 CAPTURE                          VAL R20
      127 DUPCLOSURE                       R26 K35 [PROTO_13]
      128 CAPTURE                          VAL R22
      129 DUPTABLE                         R27 K39 [{"animatorRemoved", "rigSelected", "updateContentHeader"}]
      130 SETTABLEKS                       R24 R27 K36 ["animatorRemoved"]
      132 SETTABLEKS                       R25 R27 K37 ["rigSelected"]
      134 SETTABLEKS                       R26 R27 K38 ["updateContentHeader"]
      136 DUPCLOSURE                       R28 K40 [PROTO_23]
      137 CAPTURE                          VAL R23
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R18
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R8
      148 DUPTABLE                         R29 K43 [{"bridge", "setupGuest"}]
      149 SETTABLEKS                       R27 R29 K41 ["bridge"]
      151 SETTABLEKS                       R28 R29 K42 ["setupGuest"]
      153 RETURN                           R29 1
