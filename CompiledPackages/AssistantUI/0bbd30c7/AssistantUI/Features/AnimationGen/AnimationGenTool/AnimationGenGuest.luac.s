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
       32 GETTABLEKS                       R2 R0 K9 ["mode"]
       34 JUMPIFEQKNIL                     R2 ; [+31]
       36 LOADN                            R7 1
       37 LOADN                            R8 1
       38 NAMECALL                         R5 R2 K10 ["sub"]
       40 CALL                             R5 3 1
       41 NAMECALL                         R5 R5 K11 ["upper"]
       43 CALL                             R5 1 1
       44 MOVE                             R3 R5
       45 LOADN                            R6 2
       46 NAMECALL                         R4 R2 K10 ["sub"]
       48 CALL                             R4 2 1
       49 CONCAT                           R2 R3 R4
       50 LOADB                            R4 1
       51 JUMPIFEQKS                       R2 K12 ["New"] ; [+8]
       53 LOADB                            R4 1
       54 JUMPIFEQKS                       R2 K13 ["Edit"] ; [+5]
       56 JUMPIFEQKS                       R2 K14 ["Style"] ; [+2]
       58 LOADB                            R4 0 +1
       59 LOADB                            R4 1
       60 FASTCALL2K                       ASSERT R4 K15 ; [+4]
       62 LOADK                            R5 K15 ["mode must be \"New\", \"Edit\", or \"Style\""]
       63 GETIMPORT                        R3 K5 [assert]
       65 CALL                             R3 2 0
       66 GETTABLEKS                       R3 R0 K16 ["selectedRigRef"]
       68 GETTABLEKS                       R4 R0 K17 ["duration"]
       70 JUMPIFEQKNIL                     R4 ; [+16]
       72 FASTCALL1                        TYPEOF R4 ; [+3]
       73 MOVE                             R8 R4
       74 GETIMPORT                        R7 K1 [typeof]
       76 CALL                             R7 1 1
       77 JUMPIFEQKS                       R7 K18 ["number"] ; [+2]
       79 LOADB                            R6 0 +1
       80 LOADB                            R6 1
       81 FASTCALL2K                       ASSERT R6 K19 ; [+4]
       83 LOADK                            R7 K19 ["duration must be a number"]
       84 GETIMPORT                        R5 K5 [assert]
       86 CALL                             R5 2 0
       87 GETTABLEKS                       R5 R0 K20 ["loop"]
       89 JUMPIFEQKNIL                     R5 ; [+16]
       91 FASTCALL1                        TYPEOF R5 ; [+3]
       92 MOVE                             R9 R5
       93 GETIMPORT                        R8 K1 [typeof]
       95 CALL                             R8 1 1
       96 JUMPIFEQKS                       R8 K21 ["boolean"] ; [+2]
       98 LOADB                            R7 0 +1
       99 LOADB                            R7 1
      100 FASTCALL2K                       ASSERT R7 K22 ; [+4]
      102 LOADK                            R8 K22 ["loop must be a boolean"]
      103 GETIMPORT                        R6 K5 [assert]
      105 CALL                             R6 2 0
      106 GETTABLEKS                       R6 R0 K23 ["startTime"]
      108 JUMPIFEQKNIL                     R6 ; [+16]
      110 FASTCALL1                        TYPEOF R6 ; [+3]
      111 MOVE                             R10 R6
      112 GETIMPORT                        R9 K1 [typeof]
      114 CALL                             R9 1 1
      115 JUMPIFEQKS                       R9 K18 ["number"] ; [+2]
      117 LOADB                            R8 0 +1
      118 LOADB                            R8 1
      119 FASTCALL2K                       ASSERT R8 K24 ; [+4]
      121 LOADK                            R9 K24 ["startTime must be a number"]
      122 GETIMPORT                        R7 K5 [assert]
      124 CALL                             R7 2 0
      125 GETTABLEKS                       R7 R0 K25 ["endTime"]
      127 JUMPIFEQKNIL                     R7 ; [+16]
      129 FASTCALL1                        TYPEOF R7 ; [+3]
      130 MOVE                             R11 R7
      131 GETIMPORT                        R10 K1 [typeof]
      133 CALL                             R10 1 1
      134 JUMPIFEQKS                       R10 K18 ["number"] ; [+2]
      136 LOADB                            R9 0 +1
      137 LOADB                            R9 1
      138 FASTCALL2K                       ASSERT R9 K26 ; [+4]
      140 LOADK                            R10 K26 ["endTime must be a number"]
      141 GETIMPORT                        R8 K5 [assert]
      143 CALL                             R8 2 0
      144 GETTABLEKS                       R8 R0 K27 ["styleStrength"]
      146 JUMPIFEQKNIL                     R8 ; [+16]
      148 FASTCALL1                        TYPEOF R8 ; [+3]
      149 MOVE                             R12 R8
      150 GETIMPORT                        R11 K1 [typeof]
      152 CALL                             R11 1 1
      153 JUMPIFEQKS                       R11 K18 ["number"] ; [+2]
      155 LOADB                            R10 0 +1
      156 LOADB                            R10 1
      157 FASTCALL2K                       ASSERT R10 K28 ; [+4]
      159 LOADK                            R11 K28 ["styleStrength must be a number"]
      160 GETIMPORT                        R9 K5 [assert]
      162 CALL                             R9 2 0
      163 GETTABLEKS                       R9 R0 K29 ["styleConstraint"]
      165 JUMPIFEQKNIL                     R9 ; [+31]
      167 LOADN                            R14 1
      168 LOADN                            R15 1
      169 NAMECALL                         R12 R9 K10 ["sub"]
      171 CALL                             R12 3 1
      172 NAMECALL                         R12 R12 K11 ["upper"]
      174 CALL                             R12 1 1
      175 MOVE                             R10 R12
      176 LOADN                            R13 2
      177 NAMECALL                         R11 R9 K10 ["sub"]
      179 CALL                             R11 2 1
      180 CONCAT                           R9 R10 R11
      181 LOADB                            R11 1
      182 JUMPIFEQKS                       R9 K30 ["Body"] ; [+8]
      184 LOADB                            R11 1
      185 JUMPIFEQKS                       R9 K31 ["Hands"] ; [+5]
      187 JUMPIFEQKS                       R9 K32 ["Feet"] ; [+2]
      189 LOADB                            R11 0 +1
      190 LOADB                            R11 1
      191 FASTCALL2K                       ASSERT R11 K33 ; [+4]
      193 LOADK                            R12 K33 ["styleConstraint must be \"Body\", \"Hands\", or \"Feet\""]
      194 GETIMPORT                        R10 K5 [assert]
      196 CALL                             R10 2 0
      197 DUPTABLE                         R10 K34 [{"textPrompt", "mode", "selectedRigRef", "duration", "loop", "startTime", "endTime", "styleConstraint", "styleStrength"}]
      198 SETTABLEKS                       R1 R10 K6 ["textPrompt"]
      200 SETTABLEKS                       R2 R10 K9 ["mode"]
      202 SETTABLEKS                       R3 R10 K16 ["selectedRigRef"]
      204 SETTABLEKS                       R4 R10 K17 ["duration"]
      206 SETTABLEKS                       R5 R10 K20 ["loop"]
      208 SETTABLEKS                       R6 R10 K23 ["startTime"]
      210 SETTABLEKS                       R7 R10 K25 ["endTime"]
      212 SETTABLEKS                       R9 R10 K29 ["styleConstraint"]
      214 SETTABLEKS                       R8 R10 K27 ["styleStrength"]
      216 RETURN                           R10 1

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
       25 GETTABLEKS                       R5 R2 K8 ["mode"]
       27 JUMPIF                           R5 ; [+5]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K9 ["AnimationGenMode"]
       31 GETTABLEKS                       R5 R5 K10 ["New"]
       33 GETTABLEKS                       R6 R2 K11 ["selectedRigRef"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K9 ["AnimationGenMode"]
       38 GETTABLEKS                       R7 R7 K10 ["New"]
       40 JUMPIFNOTEQ                      R5 R7 ; [+13]
       42 MOVE                             R7 R6
       43 JUMPIF                           R7 ; [+5]
       44 GETTABLEKS                       R7 R0 K12 ["bridge"]
       46 GETTABLEKS                       R7 R7 K13 ["getSelectedRigRef"]
       48 CALL                             R7 0 1
       49 MOVE                             R6 R7
       50 JUMPIFNOTEQKNIL                  R6 ; [+3]
       52 LOADK                            R7 K14 ["No rig selected, please select a rig"]
       53 RETURN                           R7 1
       54 GETTABLEKS                       R7 R0 K15 ["callArgs"]
       56 GETTABLEKS                       R7 R7 K16 ["contentId"]
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R8 R8 K17 ["new"]
       61 CALL                             R8 0 1
       62 GETUPVAL                         R9 4
       63 SETTABLE                         R8 R9 R7
       64 GETUPVAL                         R9 3
       65 GETTABLEKS                       R9 R9 K17 ["new"]
       67 CALL                             R9 0 1
       68 GETUPVAL                         R10 5
       69 SETTABLE                         R9 R10 R7
       70 GETTABLEKS                       R10 R3 K18 ["replaceContent"]
       72 DUPTABLE                         R11 K28 [{"type", "previewState", "prompt", "setHostIsPlaying", "setHostCurrentTime", "setHostPlaybackSpeed", "animatorRemovedSignal", "rigSelectedSignal", "publishAnimationAsync"}]
       73 GETUPVAL                         R12 6
       74 GETTABLEKS                       R12 R12 K29 ["Type"]
       76 SETTABLEKS                       R12 R11 K19 ["type"]
       78 GETUPVAL                         R12 2
       79 GETTABLEKS                       R12 R12 K3 ["PreviewStates"]
       81 GETTABLEKS                       R12 R12 K30 ["Generating"]
       83 SETTABLEKS                       R12 R11 K20 ["previewState"]
       85 GETTABLEKS                       R12 R2 K0 ["textPrompt"]
       87 SETTABLEKS                       R12 R11 K21 ["prompt"]
       89 GETTABLEKS                       R12 R0 K12 ["bridge"]
       91 GETTABLEKS                       R12 R12 K31 ["setIsPlaying"]
       93 SETTABLEKS                       R12 R11 K22 ["setHostIsPlaying"]
       95 GETTABLEKS                       R12 R0 K12 ["bridge"]
       97 GETTABLEKS                       R12 R12 K32 ["setCurrentTime"]
       99 SETTABLEKS                       R12 R11 K23 ["setHostCurrentTime"]
      101 GETTABLEKS                       R12 R0 K12 ["bridge"]
      103 GETTABLEKS                       R12 R12 K33 ["setPlaybackSpeed"]
      105 SETTABLEKS                       R12 R11 K24 ["setHostPlaybackSpeed"]
      107 SETTABLEKS                       R8 R11 K25 ["animatorRemovedSignal"]
      109 SETTABLEKS                       R9 R11 K26 ["rigSelectedSignal"]
      111 GETTABLEKS                       R12 R0 K12 ["bridge"]
      113 GETTABLEKS                       R12 R12 K27 ["publishAnimationAsync"]
      115 SETTABLEKS                       R12 R11 K27 ["publishAnimationAsync"]
      117 CALL                             R10 1 0
      118 GETTABLEKS                       R10 R0 K12 ["bridge"]
      120 GETTABLEKS                       R10 R10 K34 ["generateAndSaveAnimationAsync"]
      122 DUPTABLE                         R11 K42 [{"prompt", "mode", "rigUniqueId", "duration", "loop", "startFrame", "endFrame", "styleConstraint", "styleStrength"}]
      123 GETTABLEKS                       R12 R2 K0 ["textPrompt"]
      125 SETTABLEKS                       R12 R11 K21 ["prompt"]
      127 SETTABLEKS                       R5 R11 K8 ["mode"]
      129 MOVE                             R12 R6
      130 JUMPIFNOT                        R12 ; [+2]
      131 GETTABLEKS                       R12 R6 K43 ["uniqueId"]
      133 SETTABLEKS                       R12 R11 K35 ["rigUniqueId"]
      135 GETTABLEKS                       R12 R2 K36 ["duration"]
      137 SETTABLEKS                       R12 R11 K36 ["duration"]
      139 GETTABLEKS                       R12 R2 K37 ["loop"]
      141 SETTABLEKS                       R12 R11 K37 ["loop"]
      143 GETTABLEKS                       R13 R2 K44 ["startTime"]
      145 JUMPIFEQKNIL                     R13 ; [+12]
      147 GETTABLEKS                       R14 R2 K44 ["startTime"]
      149 GETUPVAL                         R15 7
      150 GETTABLEKS                       R15 R15 K45 ["DEFAULT_GENERATION_FPS"]
      152 MUL                              R13 R14 R15
      153 FASTCALL1                        MATH_ROUND R13 ; [+2]
      154 GETIMPORT                        R12 K48 [math.round]
      156 CALL                             R12 1 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R12
      159 SETTABLEKS                       R12 R11 K38 ["startFrame"]
      161 GETTABLEKS                       R13 R2 K49 ["endTime"]
      163 JUMPIFEQKNIL                     R13 ; [+12]
      165 GETTABLEKS                       R14 R2 K49 ["endTime"]
      167 GETUPVAL                         R15 7
      168 GETTABLEKS                       R15 R15 K45 ["DEFAULT_GENERATION_FPS"]
      170 MUL                              R13 R14 R15
      171 FASTCALL1                        MATH_ROUND R13 ; [+2]
      172 GETIMPORT                        R12 K48 [math.round]
      174 CALL                             R12 1 1
      175 JUMP                             ; [+1]
      176 LOADNIL                          R12
      177 SETTABLEKS                       R12 R11 K39 ["endFrame"]
      179 GETTABLEKS                       R12 R2 K40 ["styleConstraint"]
      181 SETTABLEKS                       R12 R11 K40 ["styleConstraint"]
      183 GETTABLEKS                       R12 R2 K41 ["styleStrength"]
      185 SETTABLEKS                       R12 R11 K41 ["styleStrength"]
      187 CALL                             R10 1 1
      188 GETTABLEKS                       R11 R10 K36 ["duration"]
      190 JUMPIFNOTEQKN                    R11 K50 [0] ; [+16]
      192 GETTABLEKS                       R11 R3 K2 ["setPreviewState"]
      194 GETUPVAL                         R12 2
      195 GETTABLEKS                       R12 R12 K3 ["PreviewStates"]
      197 GETTABLEKS                       R12 R12 K4 ["GenerationFailed"]
      199 GETUPVAL                         R13 2
      200 GETTABLEKS                       R13 R13 K5 ["FailureReasons"]
      202 GETTABLEKS                       R13 R13 K4 ["GenerationFailed"]
      204 CALL                             R11 2 0
      205 LOADK                            R11 K51 ["Animation generation failed"]
      206 RETURN                           R11 1
      207 GETTABLEKS                       R11 R3 K18 ["replaceContent"]
      209 DUPTABLE                         R12 K52 [{"duration"}]
      210 GETTABLEKS                       R13 R10 K36 ["duration"]
      212 SETTABLEKS                       R13 R12 K36 ["duration"]
      214 CALL                             R11 1 0
      215 GETTABLEKS                       R11 R3 K2 ["setPreviewState"]
      217 GETUPVAL                         R12 2
      218 GETTABLEKS                       R12 R12 K3 ["PreviewStates"]
      220 GETTABLEKS                       R12 R12 K53 ["GenerationSucceeded"]
      222 CALL                             R11 1 0
      223 GETTABLEKS                       R11 R10 K54 ["name"]
      225 GETTABLEKS                       R12 R3 K55 ["updateWidget"]
      227 NEWCLOSURE                       R13 P0
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R0
      230 CALL                             R12 1 0
      231 GETTABLEKS                       R12 R0 K12 ["bridge"]
      233 GETTABLEKS                       R12 R12 K56 ["listenToLinkChanges"]
      235 DUPTABLE                         R13 K58 [{"generationName"}]
      236 SETTABLEKS                       R11 R13 K57 ["generationName"]
      238 CALL                             R12 1 0
      239 LOADK                            R12 K59 ["Animation generated successfully"]
      240 RETURN                           R12 1

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
       15 DUPTABLE                         R3 K16 [{["textPrompt"], ["mode"], ["selectedRigRef"] = , ["duration"], ["loop"], ["startTime"], ["endTime"], ["styleStrength"], ["styleConstraint"]}]
       16 SETTABLEKS                       R2 R3 K6 ["textPrompt"]
       18 GETTABLEKS                       R4 R1 K7 ["mode"]
       20 SETTABLEKS                       R4 R3 K7 ["mode"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K17 ["getOptionalNumber"]
       25 GETTABLEKS                       R5 R1 K10 ["duration"]
       27 CALL                             R4 1 1
       28 SETTABLEKS                       R4 R3 K10 ["duration"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K18 ["getOptionalBoolean"]
       33 GETTABLEKS                       R5 R1 K11 ["loop"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K11 ["loop"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K17 ["getOptionalNumber"]
       41 GETTABLEKS                       R5 R1 K12 ["startTime"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R4 R3 K12 ["startTime"]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K17 ["getOptionalNumber"]
       49 GETTABLEKS                       R5 R1 K13 ["endTime"]
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R4 R3 K13 ["endTime"]
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K17 ["getOptionalNumber"]
       57 GETTABLEKS                       R5 R1 K14 ["styleStrength"]
       59 CALL                             R4 1 1
       60 SETTABLEKS                       R4 R3 K14 ["styleStrength"]
       62 GETTABLEKS                       R4 R1 K15 ["styleConstraint"]
       64 SETTABLEKS                       R4 R3 K15 ["styleConstraint"]
       66 DUPTABLE                         R4 K21 [{"name", "arguments"}]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K22 ["AnimationGen"]
       70 SETTABLEKS                       R5 R4 K19 ["name"]
       72 SETTABLEKS                       R3 R4 K20 ["arguments"]
       74 RETURN                           R4 1

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
       38 SETTABLEKS                       R1 R5 K20 ["initialValue"]
       40 DUPTABLE                         R6 K25 [{["shouldSelectModel"] = True}]
       41 SETTABLEKS                       R6 R5 K21 ["options"]
       43 CALL                             R4 1 1
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K26 ["createNumberRowDefinition"]
       47 DUPTABLE                         R6 K29 [{["label"], ["prop"] = "duration", ["initialValue"] = 3, ["options"]}]
       48 GETUPVAL                         R7 2
       49 LOADK                            R9 K15 ["AnimationGen"]
       50 LOADK                            R10 K30 ["InputDuration"]
       51 NAMECALL                         R7 R7 K17 ["getText"]
       53 CALL                             R7 3 1
       54 SETTABLEKS                       R7 R6 K9 ["label"]
       56 DUPTABLE                         R7 K35 [{["min"] = 1, ["max"] = 10}]
       57 SETTABLEKS                       R7 R6 K21 ["options"]
       59 CALL                             R5 1 1
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K36 ["createBooleanRowDefinition"]
       63 DUPTABLE                         R7 K38 [{["label"], ["prop"] = "loop", ["initialValue"] = False}]
       64 GETUPVAL                         R8 2
       65 LOADK                            R10 K15 ["AnimationGen"]
       66 LOADK                            R11 K39 ["InputLoop"]
       67 NAMECALL                         R8 R8 K17 ["getText"]
       69 CALL                             R8 3 1
       70 SETTABLEKS                       R8 R7 K9 ["label"]
       72 CALL                             R6 1 -1
       73 SETLIST                          R2 R3 -1 [1]
       75 DUPTABLE                         R3 K43 [{"confirmButtonText", "propertyRows", "getDisabledReason"}]
       76 GETUPVAL                         R4 2
       77 LOADK                            R6 K15 ["AnimationGen"]
       78 LOADK                            R7 K44 ["InputGenerate"]
       79 NAMECALL                         R4 R4 K17 ["getText"]
       81 CALL                             R4 3 1
       82 SETTABLEKS                       R4 R3 K40 ["confirmButtonText"]
       84 SETTABLEKS                       R2 R3 K41 ["propertyRows"]
       86 DUPCLOSURE                       R4 K45 [PROTO_17]
       87 CAPTURE                          UPVAL U2
       88 SETTABLEKS                       R4 R3 K42 ["getDisabledReason"]
       90 RETURN                           R3 1

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
        7 LOADK                            R4 K0 ["Generates character animations from natural language descriptions using an AI motion generation model. "]
        8 LOADK                            R5 K1 ["Use this tool whenever the user wants to create, generate, or make an animation, motion, or movement for a character or avatar. "]
        9 LOADK                            R6 K2 ["The 'prompt' parameter accepts a natural language description of the motion, and an optional 'duration'. "]
       10 LOADK                            R7 K3 ["You should interpret the prompt to understand the intended action, and adjust the 'duration' appropriately instead of always using the default value. "]
       11 LOADK                            R8 K4 ["The duration should typically be within a range of 1 to 10 seconds. "]
       12 LOADK                            R9 K5 ["For example, very short actions (e.g., 'blink', 'nod') should use around 1–2 seconds, "]
       13 LOADK                            R10 K6 ["simple actions (e.g., 'wave', 'jump') around 2–4 seconds, "]
       14 LOADK                            R11 K7 ["and longer or complex actions (e.g., 'dance sequence', 'walk across the room') around 5–10 seconds. "]
       15 LOADK                            R12 K8 ["Avoid unnecessarily long durations for simple actions, and ensure the duration matches the natural timing of the described motion. "]
       16 LOADK                            R13 K9 ["This tool supports three modes via the 'mode' parameter (all parameters listed for each mode are required and must be included in the tool call): "]
       17 LOADK                            R20 K10 ["'%*' (default) — creates a brand-new animation. Use this when the user wants to generate a new motion. "]
       18 GETUPVAL                         R22 3
       19 GETTABLEKS                       R22 R22 K11 ["AnimationGenMode"]
       21 GETTABLEKS                       R22 R22 K12 ["New"]
       23 NAMECALL                         R20 R20 K13 ["format"]
       25 CALL                             R20 2 1
       26 MOVE                             R14 R20
       27 LOADK                            R15 K14 ["Parameters: textPrompt (the motion description), duration (length in seconds, infer from the motion), loop (true if the motion should repeat seamlessly). "]
       28 LOADK                            R20 K15 ["'%*' — modifies an existing animation. Use this when the user wants to change or refine a previously generated animation. "]
       29 GETUPVAL                         R22 3
       30 GETTABLEKS                       R22 R22 K11 ["AnimationGenMode"]
       32 GETTABLEKS                       R22 R22 K16 ["Edit"]
       34 NAMECALL                         R20 R20 K13 ["format"]
       36 CALL                             R20 2 1
       37 MOVE                             R16 R20
       38 LOADK                            R17 K17 ["Parameters: textPrompt, and startTime and endTime (in seconds) to restrict edits to a specific time range. startTime and endTime must be within the duration of the previous animation clip. "]
       39 LOADK                            R20 K18 ["'%*' — applies a stylistic transformation to an existing animation while preserving the underlying motion. Use this when the user wants to restyle the motion (e.g. 'make it more robotic', 'add a limp'). "]
       40 GETUPVAL                         R22 3
       41 GETTABLEKS                       R22 R22 K11 ["AnimationGenMode"]
       43 GETTABLEKS                       R22 R22 K19 ["Style"]
       45 NAMECALL                         R20 R20 K13 ["format"]
       47 CALL                             R20 2 1
       48 MOVE                             R18 R20
       49 LOADK                            R19 K20 ["Parameters: textPrompt, styleStrength (1–10, where 10 is maximum style influence), and styleConstraint ('Body', 'Hands', or 'Feet') to limit which body parts are affected."]
       50 CONCAT                           R3 R4 R19
       51 GETUPVAL                         R4 4
       52 GETTABLEKS                       R4 R4 K21 ["define"]
       54 CALL                             R4 0 1
       55 GETUPVAL                         R6 5
       56 GETTABLEKS                       R6 R6 K22 ["AnimationGen"]
       58 NAMECALL                         R4 R4 K23 ["setName"]
       60 CALL                             R4 2 1
       61 MOVE                             R6 R3
       62 NAMECALL                         R4 R4 K24 ["setDescription"]
       64 CALL                             R4 2 1
       65 LOADK                            R6 K25 ["textPrompt"]
       66 DUPTABLE                         R7 K30 [{["type"] = "string", ["description"] = "The text prompt describing the animation to generate."}]
       67 NAMECALL                         R4 R4 K31 ["addArgument"]
       69 CALL                             R4 3 1
       70 LOADK                            R6 K32 ["mode"]
       71 DUPTABLE                         R7 K33 [{["type"] = "string", ["description"]}]
       72 LOADK                            R9 K34 ["Operation mode: '%*' (default) to create a new animation, '%*' to modify an existing animation, or '%*' to restyle an existing animation."]
       73 GETUPVAL                         R11 3
       74 GETTABLEKS                       R11 R11 K11 ["AnimationGenMode"]
       76 GETTABLEKS                       R11 R11 K12 ["New"]
       78 GETUPVAL                         R12 3
       79 GETTABLEKS                       R12 R12 K11 ["AnimationGenMode"]
       81 GETTABLEKS                       R12 R12 K16 ["Edit"]
       83 GETUPVAL                         R13 3
       84 GETTABLEKS                       R13 R13 K11 ["AnimationGenMode"]
       86 GETTABLEKS                       R13 R13 K19 ["Style"]
       88 NAMECALL                         R9 R9 K13 ["format"]
       90 CALL                             R9 4 1
       91 MOVE                             R8 R9
       92 SETTABLEKS                       R8 R7 K28 ["description"]
       94 NAMECALL                         R4 R4 K35 ["addOptionalArgument"]
       96 CALL                             R4 3 1
       97 LOADK                            R6 K36 ["duration"]
       98 DUPTABLE                         R7 K39 [{["type"] = "number", ["description"] = "Length of the animation in seconds. Animation will be 30 fps."}]
       99 NAMECALL                         R4 R4 K35 ["addOptionalArgument"]
      101 CALL                             R4 3 1
      102 LOADK                            R6 K40 ["loop"]
      103 DUPTABLE                         R7 K43 [{["type"] = "boolean", ["description"] = "Whether the animation should loop."}]
      104 NAMECALL                         R4 R4 K35 ["addOptionalArgument"]
      106 CALL                             R4 3 1
      107 LOADK                            R6 K44 ["startTime"]
      108 DUPTABLE                         R7 K45 [{["type"] = "number", ["description"]}]
      109 LOADK                            R9 K46 ["Start time in seconds for edit mode. Only used when mode is '%*'."]
      110 GETUPVAL                         R11 3
      111 GETTABLEKS                       R11 R11 K11 ["AnimationGenMode"]
      113 GETTABLEKS                       R11 R11 K16 ["Edit"]
      115 NAMECALL                         R9 R9 K13 ["format"]
      117 CALL                             R9 2 1
      118 MOVE                             R8 R9
      119 SETTABLEKS                       R8 R7 K28 ["description"]
      121 NAMECALL                         R4 R4 K35 ["addOptionalArgument"]
      123 CALL                             R4 3 1
      124 LOADK                            R6 K47 ["endTime"]
      125 DUPTABLE                         R7 K45 [{["type"] = "number", ["description"]}]
      126 LOADK                            R9 K48 ["End time in seconds for edit mode. Only used when mode is '%*'."]
      127 GETUPVAL                         R11 3
      128 GETTABLEKS                       R11 R11 K11 ["AnimationGenMode"]
      130 GETTABLEKS                       R11 R11 K16 ["Edit"]
      132 NAMECALL                         R9 R9 K13 ["format"]
      134 CALL                             R9 2 1
      135 MOVE                             R8 R9
      136 SETTABLEKS                       R8 R7 K28 ["description"]
      138 NAMECALL                         R4 R4 K35 ["addOptionalArgument"]
      140 CALL                             R4 3 1
      141 LOADK                            R6 K49 ["styleStrength"]
      142 DUPTABLE                         R7 K45 [{["type"] = "number", ["description"]}]
      143 LOADK                            R9 K50 ["Strength of the style transformation from 1 to 10. Only used when mode is '%*'."]
      144 GETUPVAL                         R11 3
      145 GETTABLEKS                       R11 R11 K11 ["AnimationGenMode"]
      147 GETTABLEKS                       R11 R11 K19 ["Style"]
      149 NAMECALL                         R9 R9 K13 ["format"]
      151 CALL                             R9 2 1
      152 MOVE                             R8 R9
      153 SETTABLEKS                       R8 R7 K28 ["description"]
      155 NAMECALL                         R4 R4 K35 ["addOptionalArgument"]
      157 CALL                             R4 3 1
      158 LOADK                            R6 K51 ["styleConstraint"]
      159 DUPTABLE                         R7 K33 [{["type"] = "string", ["description"]}]
      160 LOADK                            R9 K52 ["Which body parts to apply the style to: 'Body', 'Hands', or 'Feet'. Only used when mode is '%*'."]
      161 GETUPVAL                         R11 3
      162 GETTABLEKS                       R11 R11 K11 ["AnimationGenMode"]
      164 GETTABLEKS                       R11 R11 K19 ["Style"]
      166 NAMECALL                         R9 R9 K13 ["format"]
      168 CALL                             R9 2 1
      169 MOVE                             R8 R9
      170 SETTABLEKS                       R8 R7 K28 ["description"]
      172 NAMECALL                         R4 R4 K35 ["addOptionalArgument"]
      174 CALL                             R4 3 1
      175 DUPTABLE                         R6 K60 [{["title"] = "Animation Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      176 NAMECALL                         R4 R4 K61 ["setAnnotations"]
      178 CALL                             R4 2 1
      179 MOVE                             R6 R2
      180 NAMECALL                         R4 R4 K62 ["setHandler"]
      182 CALL                             R4 2 1
      183 NAMECALL                         R4 R4 K63 ["build"]
      185 CALL                             R4 1 1
      186 DUPCLOSURE                       R5 K64 [PROTO_16]
      187 CAPTURE                          UPVAL U6
      188 CAPTURE                          UPVAL U5
      189 NEWCLOSURE                       R6 P3
      190 CAPTURE                          VAL R0
      191 CAPTURE                          UPVAL U7
      192 CAPTURE                          UPVAL U8
      193 DUPTABLE                         R7 K70 [{["command"] = "generate_animation", ["getDescription"], ["mapToToolCall"], ["getInputRequestArguments"]}]
      194 DUPCLOSURE                       R8 K71 [PROTO_19]
      195 CAPTURE                          UPVAL U8
      196 SETTABLEKS                       R8 R7 K67 ["getDescription"]
      198 SETTABLEKS                       R5 R7 K68 ["mapToToolCall"]
      200 SETTABLEKS                       R6 R7 K69 ["getInputRequestArguments"]
      202 DUPTABLE                         R8 K73 [{"transformInitialContent"}]
      203 DUPCLOSURE                       R9 K74 [PROTO_20]
      204 CAPTURE                          UPVAL U9
      205 CAPTURE                          UPVAL U3
      206 SETTABLEKS                       R9 R8 K72 ["transformInitialContent"]
      208 DUPCLOSURE                       R9 K75 [PROTO_21]
      209 DUPTABLE                         R10 K83 [{"definition", "slashCommands", "streamTransform", "contentWidgets", "toolCallOptions", "getPreExecuteWarning", "displayNameFunction"}]
      210 SETTABLEKS                       R4 R10 K76 ["definition"]
      212 NEWTABLE                         R11 0 1
      214 MOVE                             R12 R7
      215 SETLIST                          R11 R12 1 [1]
      217 SETTABLEKS                       R11 R10 K77 ["slashCommands"]
      219 SETTABLEKS                       R8 R10 K78 ["streamTransform"]
      221 GETUPVAL                         R12 10
      222 GETTABLEKS                       R12 R12 K84 ["FFlagAssistantSplitToolsAndWidgets"]
      224 JUMPIFNOT                        R12 ; [+2]
      225 LOADNIL                          R11
      226 JUMP                             ; [+5]
      227 NEWTABLE                         R11 0 1
      229 GETUPVAL                         R12 9
      230 SETLIST                          R11 R12 1 [1]
      232 SETTABLEKS                       R11 R10 K79 ["contentWidgets"]
      234 DUPTABLE                         R11 K87 [{["resetTimeoutOnProgress"] = True}]
      235 SETTABLEKS                       R11 R10 K80 ["toolCallOptions"]
      237 SETTABLEKS                       R9 R10 K81 ["getPreExecuteWarning"]
      239 GETUPVAL                         R12 10
      240 GETTABLEKS                       R12 R12 K84 ["FFlagAssistantSplitToolsAndWidgets"]
      242 JUMPIFNOT                        R12 ; [+2]
      243 LOADNIL                          R11
      244 JUMP                             ; [+2]
      245 DUPCLOSURE                       R11 K88 [PROTO_22]
      246 CAPTURE                          UPVAL U8
      247 SETTABLEKS                       R11 R10 K82 ["displayNameFunction"]
      249 RETURN                           R10 1

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
       19 GETTABLEKS                       R4 R4 K9 ["AnimationGenBridgeTypes"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R1 K10 ["AnimationGenContentWidget"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K7 [require]
       29 GETTABLEKS                       R6 R1 K11 ["AnimationGenTypes"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K7 [require]
       34 GETTABLEKS                       R7 R1 K12 ["AnimationGenConstants"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R8 R2 K13 ["Dash"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K7 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Flags"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K7 [require]
       49 GETTABLEKS                       R10 R2 K15 ["ModelContextProtocol"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K7 [require]
       54 GETTABLEKS                       R11 R0 K16 ["Components"]
       56 GETTABLEKS                       R11 R11 K17 ["PropertyRows"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K7 [require]
       61 GETTABLEKS                       R12 R2 K18 ["Signal"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K7 [require]
       66 GETTABLEKS                       R13 R0 K19 ["Util"]
       68 GETTABLEKS                       R13 R13 K20 ["SlashCommandArgs"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K7 [require]
       73 GETTABLEKS                       R14 R0 K21 ["Tools"]
       75 GETTABLEKS                       R14 R14 K22 ["ToolTypes"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K7 [require]
       80 GETTABLEKS                       R15 R0 K19 ["Util"]
       82 GETTABLEKS                       R15 R15 K23 ["ToolUtils"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K7 [require]
       87 GETTABLEKS                       R16 R0 K24 ["Resources"]
       89 GETTABLEKS                       R16 R16 K25 ["Localization"]
       91 GETTABLEKS                       R16 R16 K26 ["Translator"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K7 [require]
       96 GETTABLEKS                       R17 R0 K27 ["Types"]
       98 CALL                             R16 1 1
       99 GETTABLEKS                       R17 R9 K19 ["Util"]
      101 GETTABLEKS                       R17 R17 K28 ["ToolBuilder"]
      103 GETTABLEKS                       R18 R13 K29 ["ToolNames"]
      105 GETTABLEKS                       R19 R9 K19 ["Util"]
      107 GETTABLEKS                       R19 R19 K30 ["ToolResult"]
      109 NEWTABLE                         R20 0 0
      111 NEWTABLE                         R21 0 0
      113 DUPCLOSURE                       R22 K31 [PROTO_0]
      114 DUPCLOSURE                       R23 K32 [PROTO_6]
      115 CAPTURE                          VAL R7
      116 DUPCLOSURE                       R24 K33 [PROTO_9]
      117 CAPTURE                          VAL R22
      118 CAPTURE                          VAL R23
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R20
      122 CAPTURE                          VAL R21
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R6
      125 DUPCLOSURE                       R25 K34 [PROTO_10]
      126 CAPTURE                          VAL R20
      127 DUPCLOSURE                       R26 K35 [PROTO_11]
      128 CAPTURE                          VAL R21
      129 DUPCLOSURE                       R27 K36 [PROTO_13]
      130 CAPTURE                          VAL R23
      131 DUPTABLE                         R28 K40 [{"animatorRemoved", "rigSelected", "updateContentHeader"}]
      132 SETTABLEKS                       R25 R28 K37 ["animatorRemoved"]
      134 SETTABLEKS                       R26 R28 K38 ["rigSelected"]
      136 SETTABLEKS                       R27 R28 K39 ["updateContentHeader"]
      138 DUPCLOSURE                       R29 K41 [PROTO_23]
      139 CAPTURE                          VAL R24
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R19
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R8
      150 DUPTABLE                         R30 K44 [{"bridge", "setupGuest"}]
      151 SETTABLEKS                       R28 R30 K42 ["bridge"]
      153 SETTABLEKS                       R29 R30 K43 ["setupGuest"]
      155 RETURN                           R30 1
