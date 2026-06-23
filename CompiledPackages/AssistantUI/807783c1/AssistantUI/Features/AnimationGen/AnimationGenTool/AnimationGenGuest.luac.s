PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["previewState"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["failureReason"]
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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
       40 JUMPIFNOTEQ                      R5 R7 ; [+26]
       42 MOVE                             R7 R6
       43 JUMPIF                           R7 ; [+5]
       44 GETTABLEKS                       R7 R0 K12 ["bridge"]
       46 GETTABLEKS                       R7 R7 K13 ["getSelectedRigRef"]
       48 CALL                             R7 0 1
       49 MOVE                             R6 R7
       50 JUMPIFNOTEQKNIL                  R6 ; [+16]
       52 GETTABLEKS                       R7 R3 K2 ["setPreviewState"]
       54 GETUPVAL                         R8 2
       55 GETTABLEKS                       R8 R8 K3 ["PreviewStates"]
       57 GETTABLEKS                       R8 R8 K4 ["GenerationFailed"]
       59 GETUPVAL                         R9 2
       60 GETTABLEKS                       R9 R9 K5 ["FailureReasons"]
       62 GETTABLEKS                       R9 R9 K14 ["NoRigSelected"]
       64 CALL                             R7 2 0
       65 LOADK                            R7 K15 ["No rig selected, please select a rig"]
       66 RETURN                           R7 1
       67 GETTABLEKS                       R7 R0 K16 ["handlerArgs"]
       69 GETTABLEKS                       R7 R7 K17 ["contentId"]
       71 GETUPVAL                         R8 3
       72 GETTABLEKS                       R8 R8 K18 ["new"]
       74 CALL                             R8 0 1
       75 GETUPVAL                         R9 4
       76 SETTABLE                         R8 R9 R7
       77 GETUPVAL                         R9 3
       78 GETTABLEKS                       R9 R9 K18 ["new"]
       80 CALL                             R9 0 1
       81 GETUPVAL                         R10 5
       82 SETTABLE                         R9 R10 R7
       83 GETTABLEKS                       R10 R3 K19 ["replaceContent"]
       85 DUPTABLE                         R11 K29 [{"type", "previewState", "prompt", "setHostIsPlaying", "setHostCurrentTime", "setHostPlaybackSpeed", "animatorRemovedSignal", "rigSelectedSignal", "publishAnimationAsync"}]
       86 GETUPVAL                         R12 6
       87 GETTABLEKS                       R12 R12 K30 ["Type"]
       89 SETTABLEKS                       R12 R11 K20 ["type"]
       91 GETUPVAL                         R12 2
       92 GETTABLEKS                       R12 R12 K3 ["PreviewStates"]
       94 GETTABLEKS                       R12 R12 K31 ["Generating"]
       96 SETTABLEKS                       R12 R11 K21 ["previewState"]
       98 GETTABLEKS                       R12 R2 K0 ["textPrompt"]
      100 SETTABLEKS                       R12 R11 K22 ["prompt"]
      102 GETTABLEKS                       R12 R0 K12 ["bridge"]
      104 GETTABLEKS                       R12 R12 K32 ["setIsPlaying"]
      106 SETTABLEKS                       R12 R11 K23 ["setHostIsPlaying"]
      108 GETTABLEKS                       R12 R0 K12 ["bridge"]
      110 GETTABLEKS                       R12 R12 K33 ["setCurrentTime"]
      112 SETTABLEKS                       R12 R11 K24 ["setHostCurrentTime"]
      114 GETTABLEKS                       R12 R0 K12 ["bridge"]
      116 GETTABLEKS                       R12 R12 K34 ["setPlaybackSpeed"]
      118 SETTABLEKS                       R12 R11 K25 ["setHostPlaybackSpeed"]
      120 SETTABLEKS                       R8 R11 K26 ["animatorRemovedSignal"]
      122 SETTABLEKS                       R9 R11 K27 ["rigSelectedSignal"]
      124 GETTABLEKS                       R12 R0 K12 ["bridge"]
      126 GETTABLEKS                       R12 R12 K28 ["publishAnimationAsync"]
      128 SETTABLEKS                       R12 R11 K28 ["publishAnimationAsync"]
      130 CALL                             R10 1 0
      131 GETTABLEKS                       R10 R0 K12 ["bridge"]
      133 GETTABLEKS                       R10 R10 K35 ["generateAndSaveAnimationAsync"]
      135 DUPTABLE                         R11 K43 [{"prompt", "mode", "rigUniqueId", "duration", "loop", "startFrame", "endFrame", "styleConstraint", "styleStrength"}]
      136 GETTABLEKS                       R12 R2 K0 ["textPrompt"]
      138 SETTABLEKS                       R12 R11 K22 ["prompt"]
      140 SETTABLEKS                       R5 R11 K8 ["mode"]
      142 MOVE                             R12 R6
      143 JUMPIFNOT                        R12 ; [+2]
      144 GETTABLEKS                       R12 R6 K44 ["uniqueId"]
      146 SETTABLEKS                       R12 R11 K36 ["rigUniqueId"]
      148 GETTABLEKS                       R12 R2 K37 ["duration"]
      150 SETTABLEKS                       R12 R11 K37 ["duration"]
      152 GETTABLEKS                       R12 R2 K38 ["loop"]
      154 SETTABLEKS                       R12 R11 K38 ["loop"]
      156 GETTABLEKS                       R13 R2 K45 ["startTime"]
      158 JUMPIFEQKNIL                     R13 ; [+12]
      160 GETTABLEKS                       R14 R2 K45 ["startTime"]
      162 GETUPVAL                         R15 7
      163 GETTABLEKS                       R15 R15 K46 ["DEFAULT_GENERATION_FPS"]
      165 MUL                              R13 R14 R15
      166 FASTCALL1                        MATH_ROUND R13 ; [+2]
      167 GETIMPORT                        R12 K49 [math.round]
      169 CALL                             R12 1 1
      170 JUMP                             ; [+1]
      171 LOADNIL                          R12
      172 SETTABLEKS                       R12 R11 K39 ["startFrame"]
      174 GETTABLEKS                       R13 R2 K50 ["endTime"]
      176 JUMPIFEQKNIL                     R13 ; [+12]
      178 GETTABLEKS                       R14 R2 K50 ["endTime"]
      180 GETUPVAL                         R15 7
      181 GETTABLEKS                       R15 R15 K46 ["DEFAULT_GENERATION_FPS"]
      183 MUL                              R13 R14 R15
      184 FASTCALL1                        MATH_ROUND R13 ; [+2]
      185 GETIMPORT                        R12 K49 [math.round]
      187 CALL                             R12 1 1
      188 JUMP                             ; [+1]
      189 LOADNIL                          R12
      190 SETTABLEKS                       R12 R11 K40 ["endFrame"]
      192 GETTABLEKS                       R12 R2 K41 ["styleConstraint"]
      194 SETTABLEKS                       R12 R11 K41 ["styleConstraint"]
      196 GETTABLEKS                       R12 R2 K42 ["styleStrength"]
      198 SETTABLEKS                       R12 R11 K42 ["styleStrength"]
      200 CALL                             R10 1 1
      201 JUMPIFNOTEQKN                    R10 K51 [0] ; [+16]
      203 GETTABLEKS                       R11 R3 K2 ["setPreviewState"]
      205 GETUPVAL                         R12 2
      206 GETTABLEKS                       R12 R12 K3 ["PreviewStates"]
      208 GETTABLEKS                       R12 R12 K4 ["GenerationFailed"]
      210 GETUPVAL                         R13 2
      211 GETTABLEKS                       R13 R13 K5 ["FailureReasons"]
      213 GETTABLEKS                       R13 R13 K4 ["GenerationFailed"]
      215 CALL                             R11 2 0
      216 LOADK                            R11 K52 ["Animation generation failed"]
      217 RETURN                           R11 1
      218 GETTABLEKS                       R11 R3 K19 ["replaceContent"]
      220 DUPTABLE                         R12 K53 [{"duration"}]
      221 SETTABLEKS                       R10 R12 K37 ["duration"]
      223 CALL                             R11 1 0
      224 GETTABLEKS                       R11 R3 K2 ["setPreviewState"]
      226 GETUPVAL                         R12 2
      227 GETTABLEKS                       R12 R12 K3 ["PreviewStates"]
      229 GETTABLEKS                       R12 R12 K54 ["GenerationSucceeded"]
      231 CALL                             R11 1 0
      232 LOADK                            R11 K55 ["Animation generated successfully"]
      233 RETURN                           R11 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["handlerArgs"]
        3 GETTABLEKS                       R3 R3 K1 ["contentId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFEQKNIL                     R1 ; [+4]
        8 NAMECALL                         R2 R1 K2 ["Fire"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["handlerArgs"]
        3 GETTABLEKS                       R3 R3 K1 ["contentId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFEQKNIL                     R1 ; [+4]
        8 NAMECALL                         R2 R1 K2 ["Fire"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 CALL                             R3 5 -1
        7 RETURN                           R3 -1

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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
       15 DUPTABLE                         R3 K15 [{"textPrompt", "mode", "selectedRigRef", "duration", "loop", "startTime", "endTime", "styleStrength", "styleConstraint"}]
       16 SETTABLEKS                       R2 R3 K6 ["textPrompt"]
       18 GETTABLEKS                       R4 R1 K7 ["mode"]
       20 SETTABLEKS                       R4 R3 K7 ["mode"]
       22 LOADNIL                          R4
       23 SETTABLEKS                       R4 R3 K8 ["selectedRigRef"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K16 ["getOptionalNumber"]
       28 GETTABLEKS                       R5 R1 K9 ["duration"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K9 ["duration"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K17 ["getOptionalBoolean"]
       36 GETTABLEKS                       R5 R1 K10 ["loop"]
       38 CALL                             R4 1 1
       39 SETTABLEKS                       R4 R3 K10 ["loop"]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K16 ["getOptionalNumber"]
       44 GETTABLEKS                       R5 R1 K11 ["startTime"]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K11 ["startTime"]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K16 ["getOptionalNumber"]
       52 GETTABLEKS                       R5 R1 K12 ["endTime"]
       54 CALL                             R4 1 1
       55 SETTABLEKS                       R4 R3 K12 ["endTime"]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K16 ["getOptionalNumber"]
       60 GETTABLEKS                       R5 R1 K13 ["styleStrength"]
       62 CALL                             R4 1 1
       63 SETTABLEKS                       R4 R3 K13 ["styleStrength"]
       65 GETTABLEKS                       R4 R1 K14 ["styleConstraint"]
       67 SETTABLEKS                       R4 R3 K14 ["styleConstraint"]
       69 DUPTABLE                         R4 K20 [{"name", "arguments"}]
       70 GETUPVAL                         R5 1
       71 GETTABLEKS                       R5 R5 K21 ["AnimationGen"]
       73 SETTABLEKS                       R5 R4 K18 ["name"]
       75 SETTABLEKS                       R3 R4 K19 ["arguments"]
       77 RETURN                           R4 1

PROTO_15:
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
       12 NEWTABLE                         R2 0 3
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["createInstanceRowDefinition"]
       17 DUPTABLE                         R4 K7 [{"label", "prop", "initialValue", "options"}]
       18 GETUPVAL                         R5 4
       19 LOADK                            R7 K8 ["AnimationGen"]
       20 LOADK                            R8 K9 ["InputRig"]
       21 NAMECALL                         R5 R5 K10 ["getText"]
       23 CALL                             R5 3 1
       24 SETTABLEKS                       R5 R4 K3 ["label"]
       26 LOADK                            R5 K11 ["selectedRigRef"]
       27 SETTABLEKS                       R5 R4 K4 ["prop"]
       29 SETTABLEKS                       R1 R4 K5 ["initialValue"]
       31 DUPTABLE                         R5 K13 [{"shouldSelectModel"}]
       32 LOADB                            R6 1
       33 SETTABLEKS                       R6 R5 K12 ["shouldSelectModel"]
       35 SETTABLEKS                       R5 R4 K6 ["options"]
       37 CALL                             R3 1 1
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K14 ["createNumberRowDefinition"]
       41 DUPTABLE                         R5 K7 [{"label", "prop", "initialValue", "options"}]
       42 GETUPVAL                         R6 4
       43 LOADK                            R8 K8 ["AnimationGen"]
       44 LOADK                            R9 K15 ["InputDuration"]
       45 NAMECALL                         R6 R6 K10 ["getText"]
       47 CALL                             R6 3 1
       48 SETTABLEKS                       R6 R5 K3 ["label"]
       50 LOADK                            R6 K16 ["duration"]
       51 SETTABLEKS                       R6 R5 K4 ["prop"]
       53 LOADN                            R6 3
       54 SETTABLEKS                       R6 R5 K5 ["initialValue"]
       56 DUPTABLE                         R6 K19 [{"min", "max"}]
       57 LOADN                            R7 1
       58 SETTABLEKS                       R7 R6 K17 ["min"]
       60 LOADN                            R7 10
       61 SETTABLEKS                       R7 R6 K18 ["max"]
       63 SETTABLEKS                       R6 R5 K6 ["options"]
       65 CALL                             R4 1 1
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R5 R5 K20 ["createBooleanRowDefinition"]
       69 DUPTABLE                         R6 K21 [{"label", "prop", "initialValue"}]
       70 GETUPVAL                         R7 4
       71 LOADK                            R9 K8 ["AnimationGen"]
       72 LOADK                            R10 K22 ["InputLoop"]
       73 NAMECALL                         R7 R7 K10 ["getText"]
       75 CALL                             R7 3 1
       76 SETTABLEKS                       R7 R6 K3 ["label"]
       78 LOADK                            R7 K23 ["loop"]
       79 SETTABLEKS                       R7 R6 K4 ["prop"]
       81 LOADB                            R7 0
       82 SETTABLEKS                       R7 R6 K5 ["initialValue"]
       84 CALL                             R5 1 -1
       85 SETLIST                          R2 R3 -1 [1]
       87 DUPTABLE                         R3 K27 [{"description", "confirmButtonText", "propertyRows"}]
       88 GETUPVAL                         R4 4
       89 LOADK                            R6 K8 ["AnimationGen"]
       90 LOADK                            R7 K28 ["InputDisclaimer"]
       91 NAMECALL                         R4 R4 K10 ["getText"]
       93 CALL                             R4 3 1
       94 SETTABLEKS                       R4 R3 K24 ["description"]
       96 GETUPVAL                         R4 4
       97 LOADK                            R6 K8 ["AnimationGen"]
       98 LOADK                            R7 K29 ["InputGenerate"]
       99 NAMECALL                         R4 R4 K10 ["getText"]
      101 CALL                             R4 3 1
      102 SETTABLEKS                       R4 R3 K25 ["confirmButtonText"]
      104 SETTABLEKS                       R2 R3 K26 ["propertyRows"]
      106 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["AnimationGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_17:
        0 DUPTABLE                         R0 K2 [{"type", "previewState"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K4 ["PreviewStates"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["previewState"]
       13 RETURN                           R0 1

PROTO_18:
        0 DUPTABLE                         R2 K1 [{"shouldConfirm"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["shouldConfirm"]
        4 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["AnimationGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_20:
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
       13 LOADK                            R6 K0 ["Generates character animations from natural language descriptions using an AI motion generation model. "]
       14 LOADK                            R7 K1 ["Use this tool whenever the user wants to create, generate, or make an animation, motion, or movement for a character or avatar. "]
       15 LOADK                            R8 K2 ["The 'prompt' parameter accepts a natural language description of the motion, and an optional 'duration'. "]
       16 LOADK                            R9 K3 ["You should interpret the prompt to understand the intended action, and adjust the 'duration' appropriately instead of always using the default value. "]
       17 LOADK                            R10 K4 ["The duration should typically be within a range of 1 to 10 seconds. "]
       18 LOADK                            R11 K5 ["For example, very short actions (e.g., 'blink', 'nod') should use around 1–2 seconds, "]
       19 LOADK                            R12 K6 ["simple actions (e.g., 'wave', 'jump') around 2–4 seconds, "]
       20 LOADK                            R13 K7 ["and longer or complex actions (e.g., 'dance sequence', 'walk across the room') around 5–10 seconds. "]
       21 LOADK                            R14 K8 ["Avoid unnecessarily long durations for simple actions, and ensure the duration matches the natural timing of the described motion. "]
       22 LOADK                            R15 K9 ["This tool supports three modes via the 'mode' parameter (all parameters listed for each mode are required and must be included in the tool call): "]
       23 LOADK                            R22 K10 ["'%*' (default) — creates a brand-new animation. Use this when the user wants to generate a new motion. "]
       24 GETUPVAL                         R24 4
       25 GETTABLEKS                       R24 R24 K11 ["AnimationGenMode"]
       27 GETTABLEKS                       R24 R24 K12 ["New"]
       29 NAMECALL                         R22 R22 K13 ["format"]
       31 CALL                             R22 2 1
       32 MOVE                             R16 R22
       33 LOADK                            R17 K14 ["Parameters: textPrompt (the motion description), duration (length in seconds, infer from the motion), loop (true if the motion should repeat seamlessly). "]
       34 LOADK                            R22 K15 ["'%*' — modifies an existing animation. Use this when the user wants to change or refine a previously generated animation. "]
       35 GETUPVAL                         R24 4
       36 GETTABLEKS                       R24 R24 K11 ["AnimationGenMode"]
       38 GETTABLEKS                       R24 R24 K16 ["Edit"]
       40 NAMECALL                         R22 R22 K13 ["format"]
       42 CALL                             R22 2 1
       43 MOVE                             R18 R22
       44 LOADK                            R19 K17 ["Parameters: textPrompt, and startTime and endTime (in seconds) to restrict edits to a specific time range. startTime and endTime must be within the duration of the previous animation clip. "]
       45 LOADK                            R22 K18 ["'%*' — applies a stylistic transformation to an existing animation while preserving the underlying motion. Use this when the user wants to restyle the motion (e.g. 'make it more robotic', 'add a limp'). "]
       46 GETUPVAL                         R24 4
       47 GETTABLEKS                       R24 R24 K11 ["AnimationGenMode"]
       49 GETTABLEKS                       R24 R24 K19 ["Style"]
       51 NAMECALL                         R22 R22 K13 ["format"]
       53 CALL                             R22 2 1
       54 MOVE                             R20 R22
       55 LOADK                            R21 K20 ["Parameters: textPrompt, styleStrength (1–10, where 10 is maximum style influence), and styleConstraint ('Body', 'Hands', or 'Feet') to limit which body parts are affected."]
       56 CONCAT                           R5 R6 R21
       57 GETUPVAL                         R6 5
       58 GETTABLEKS                       R6 R6 K21 ["define"]
       60 CALL                             R6 0 1
       61 GETUPVAL                         R8 6
       62 GETTABLEKS                       R8 R8 K22 ["AnimationGen"]
       64 NAMECALL                         R6 R6 K23 ["setName"]
       66 CALL                             R6 2 1
       67 MOVE                             R8 R5
       68 NAMECALL                         R6 R6 K24 ["setDescription"]
       70 CALL                             R6 2 1
       71 LOADK                            R8 K25 ["textPrompt"]
       72 DUPTABLE                         R9 K28 [{"type", "description"}]
       73 LOADK                            R10 K29 ["string"]
       74 SETTABLEKS                       R10 R9 K26 ["type"]
       76 LOADK                            R10 K30 ["The text prompt describing the animation to generate."]
       77 SETTABLEKS                       R10 R9 K27 ["description"]
       79 NAMECALL                         R6 R6 K31 ["addArgument"]
       81 CALL                             R6 3 1
       82 LOADK                            R8 K32 ["mode"]
       83 DUPTABLE                         R9 K28 [{"type", "description"}]
       84 LOADK                            R10 K29 ["string"]
       85 SETTABLEKS                       R10 R9 K26 ["type"]
       87 LOADK                            R11 K33 ["Operation mode: '%*' (default) to create a new animation, '%*' to modify an existing animation, or '%*' to restyle an existing animation."]
       88 GETUPVAL                         R13 4
       89 GETTABLEKS                       R13 R13 K11 ["AnimationGenMode"]
       91 GETTABLEKS                       R13 R13 K12 ["New"]
       93 GETUPVAL                         R14 4
       94 GETTABLEKS                       R14 R14 K11 ["AnimationGenMode"]
       96 GETTABLEKS                       R14 R14 K16 ["Edit"]
       98 GETUPVAL                         R15 4
       99 GETTABLEKS                       R15 R15 K11 ["AnimationGenMode"]
      101 GETTABLEKS                       R15 R15 K19 ["Style"]
      103 NAMECALL                         R11 R11 K13 ["format"]
      105 CALL                             R11 4 1
      106 MOVE                             R10 R11
      107 SETTABLEKS                       R10 R9 K27 ["description"]
      109 NAMECALL                         R6 R6 K34 ["addOptionalArgument"]
      111 CALL                             R6 3 1
      112 LOADK                            R8 K35 ["duration"]
      113 DUPTABLE                         R9 K28 [{"type", "description"}]
      114 LOADK                            R10 K36 ["number"]
      115 SETTABLEKS                       R10 R9 K26 ["type"]
      117 LOADK                            R10 K37 ["Length of the animation in seconds. Animation will be 30 fps."]
      118 SETTABLEKS                       R10 R9 K27 ["description"]
      120 NAMECALL                         R6 R6 K34 ["addOptionalArgument"]
      122 CALL                             R6 3 1
      123 LOADK                            R8 K38 ["loop"]
      124 DUPTABLE                         R9 K28 [{"type", "description"}]
      125 LOADK                            R10 K39 ["boolean"]
      126 SETTABLEKS                       R10 R9 K26 ["type"]
      128 LOADK                            R10 K40 ["Whether the animation should loop."]
      129 SETTABLEKS                       R10 R9 K27 ["description"]
      131 NAMECALL                         R6 R6 K34 ["addOptionalArgument"]
      133 CALL                             R6 3 1
      134 LOADK                            R8 K41 ["startTime"]
      135 DUPTABLE                         R9 K28 [{"type", "description"}]
      136 LOADK                            R10 K36 ["number"]
      137 SETTABLEKS                       R10 R9 K26 ["type"]
      139 LOADK                            R11 K42 ["Start time in seconds for edit mode. Only used when mode is '%*'."]
      140 GETUPVAL                         R13 4
      141 GETTABLEKS                       R13 R13 K11 ["AnimationGenMode"]
      143 GETTABLEKS                       R13 R13 K16 ["Edit"]
      145 NAMECALL                         R11 R11 K13 ["format"]
      147 CALL                             R11 2 1
      148 MOVE                             R10 R11
      149 SETTABLEKS                       R10 R9 K27 ["description"]
      151 NAMECALL                         R6 R6 K34 ["addOptionalArgument"]
      153 CALL                             R6 3 1
      154 LOADK                            R8 K43 ["endTime"]
      155 DUPTABLE                         R9 K28 [{"type", "description"}]
      156 LOADK                            R10 K36 ["number"]
      157 SETTABLEKS                       R10 R9 K26 ["type"]
      159 LOADK                            R11 K44 ["End time in seconds for edit mode. Only used when mode is '%*'."]
      160 GETUPVAL                         R13 4
      161 GETTABLEKS                       R13 R13 K11 ["AnimationGenMode"]
      163 GETTABLEKS                       R13 R13 K16 ["Edit"]
      165 NAMECALL                         R11 R11 K13 ["format"]
      167 CALL                             R11 2 1
      168 MOVE                             R10 R11
      169 SETTABLEKS                       R10 R9 K27 ["description"]
      171 NAMECALL                         R6 R6 K34 ["addOptionalArgument"]
      173 CALL                             R6 3 1
      174 LOADK                            R8 K45 ["styleStrength"]
      175 DUPTABLE                         R9 K28 [{"type", "description"}]
      176 LOADK                            R10 K36 ["number"]
      177 SETTABLEKS                       R10 R9 K26 ["type"]
      179 LOADK                            R11 K46 ["Strength of the style transformation from 1 to 10. Only used when mode is '%*'."]
      180 GETUPVAL                         R13 4
      181 GETTABLEKS                       R13 R13 K11 ["AnimationGenMode"]
      183 GETTABLEKS                       R13 R13 K19 ["Style"]
      185 NAMECALL                         R11 R11 K13 ["format"]
      187 CALL                             R11 2 1
      188 MOVE                             R10 R11
      189 SETTABLEKS                       R10 R9 K27 ["description"]
      191 NAMECALL                         R6 R6 K34 ["addOptionalArgument"]
      193 CALL                             R6 3 1
      194 LOADK                            R8 K47 ["styleConstraint"]
      195 DUPTABLE                         R9 K28 [{"type", "description"}]
      196 LOADK                            R10 K29 ["string"]
      197 SETTABLEKS                       R10 R9 K26 ["type"]
      199 LOADK                            R11 K48 ["Which body parts to apply the style to: 'Body', 'Hands', or 'Feet'. Only used when mode is '%*'."]
      200 GETUPVAL                         R13 4
      201 GETTABLEKS                       R13 R13 K11 ["AnimationGenMode"]
      203 GETTABLEKS                       R13 R13 K19 ["Style"]
      205 NAMECALL                         R11 R11 K13 ["format"]
      207 CALL                             R11 2 1
      208 MOVE                             R10 R11
      209 SETTABLEKS                       R10 R9 K27 ["description"]
      211 NAMECALL                         R6 R6 K34 ["addOptionalArgument"]
      213 CALL                             R6 3 1
      214 DUPTABLE                         R8 K54 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      215 LOADK                            R9 K55 ["Animation Generation"]
      216 SETTABLEKS                       R9 R8 K49 ["title"]
      218 LOADB                            R9 0
      219 SETTABLEKS                       R9 R8 K50 ["readOnlyHint"]
      221 LOADB                            R9 0
      222 SETTABLEKS                       R9 R8 K51 ["destructiveHint"]
      224 LOADB                            R9 0
      225 SETTABLEKS                       R9 R8 K52 ["idempotentHint"]
      227 LOADB                            R9 0
      228 SETTABLEKS                       R9 R8 K53 ["openWorldHint"]
      230 NAMECALL                         R6 R6 K56 ["setAnnotations"]
      232 CALL                             R6 2 1
      233 MOVE                             R8 R4
      234 NAMECALL                         R6 R6 K57 ["setHandler"]
      236 CALL                             R6 2 1
      237 NAMECALL                         R6 R6 K58 ["build"]
      239 CALL                             R6 1 1
      240 DUPCLOSURE                       R7 K59 [PROTO_14]
      241 CAPTURE                          UPVAL U7
      242 CAPTURE                          UPVAL U6
      243 NEWCLOSURE                       R8 P4
      244 CAPTURE                          UPVAL U0
      245 CAPTURE                          VAL R0
      246 CAPTURE                          VAL R1
      247 CAPTURE                          UPVAL U8
      248 CAPTURE                          UPVAL U9
      249 DUPTABLE                         R9 K64 [{"command", "getDescription", "mapToToolCall", "getInputRequestArguments"}]
      250 LOADK                            R10 K65 ["generate_animation"]
      251 SETTABLEKS                       R10 R9 K60 ["command"]
      253 DUPCLOSURE                       R10 K66 [PROTO_16]
      254 CAPTURE                          UPVAL U9
      255 SETTABLEKS                       R10 R9 K61 ["getDescription"]
      257 SETTABLEKS                       R7 R9 K62 ["mapToToolCall"]
      259 SETTABLEKS                       R8 R9 K63 ["getInputRequestArguments"]
      261 DUPTABLE                         R10 K68 [{"transformInitialContent"}]
      262 DUPCLOSURE                       R11 K69 [PROTO_17]
      263 CAPTURE                          UPVAL U10
      264 CAPTURE                          UPVAL U4
      265 SETTABLEKS                       R11 R10 K67 ["transformInitialContent"]
      267 DUPCLOSURE                       R11 K70 [PROTO_18]
      268 DUPTABLE                         R12 K78 [{"definition", "slashCommands", "streamTransform", "contentWidgets", "toolCallOptions", "getPreExecuteWarning", "displayNameFunction"}]
      269 SETTABLEKS                       R6 R12 K71 ["definition"]
      271 NEWTABLE                         R13 0 1
      273 MOVE                             R14 R9
      274 SETLIST                          R13 R14 1 [1]
      276 SETTABLEKS                       R13 R12 K72 ["slashCommands"]
      278 SETTABLEKS                       R10 R12 K73 ["streamTransform"]
      280 GETUPVAL                         R14 11
      281 CALL                             R14 0 1
      282 JUMPIFNOT                        R14 ; [+2]
      283 LOADNIL                          R13
      284 JUMP                             ; [+5]
      285 NEWTABLE                         R13 0 1
      287 GETUPVAL                         R14 10
      288 SETLIST                          R13 R14 1 [1]
      290 SETTABLEKS                       R13 R12 K74 ["contentWidgets"]
      292 DUPTABLE                         R13 K80 [{"resetTimeoutOnProgress"}]
      293 LOADB                            R14 1
      294 SETTABLEKS                       R14 R13 K79 ["resetTimeoutOnProgress"]
      296 SETTABLEKS                       R13 R12 K75 ["toolCallOptions"]
      298 SETTABLEKS                       R11 R12 K76 ["getPreExecuteWarning"]
      300 GETUPVAL                         R14 11
      301 CALL                             R14 0 1
      302 JUMPIFNOT                        R14 ; [+2]
      303 LOADNIL                          R13
      304 JUMP                             ; [+2]
      305 DUPCLOSURE                       R13 K81 [PROTO_19]
      306 CAPTURE                          UPVAL U9
      307 SETTABLEKS                       R13 R12 K77 ["displayNameFunction"]
      309 RETURN                           R12 1

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
       19 GETTABLEKS                       R4 R4 K9 ["AnimationGenBridge"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R1 K8 ["AnimationGenTool"]
       26 GETTABLEKS                       R5 R5 K10 ["AnimationGenBridgeTypes"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K7 [require]
       31 GETTABLEKS                       R6 R1 K11 ["AnimationGenContentWidget"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K7 [require]
       36 GETTABLEKS                       R7 R1 K12 ["AnimationGenTypes"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K7 [require]
       41 GETTABLEKS                       R8 R1 K13 ["AnimationGenConstants"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K7 [require]
       46 GETTABLEKS                       R9 R2 K14 ["Dash"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K7 [require]
       51 GETTABLEKS                       R10 R2 K15 ["ModelContextProtocol"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K7 [require]
       56 GETTABLEKS                       R11 R0 K16 ["Components"]
       58 GETTABLEKS                       R11 R11 K17 ["PropertyRows"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K7 [require]
       63 GETTABLEKS                       R12 R2 K18 ["Signal"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K7 [require]
       68 GETTABLEKS                       R13 R0 K19 ["Util"]
       70 GETTABLEKS                       R13 R13 K20 ["SlashCommandArgs"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K7 [require]
       75 GETTABLEKS                       R14 R0 K21 ["Tools"]
       77 GETTABLEKS                       R14 R14 K22 ["ToolTypes"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K7 [require]
       82 GETTABLEKS                       R15 R0 K19 ["Util"]
       84 GETTABLEKS                       R15 R15 K23 ["ToolUtils"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K7 [require]
       89 GETTABLEKS                       R16 R0 K24 ["Resources"]
       91 GETTABLEKS                       R16 R16 K25 ["Localization"]
       93 GETTABLEKS                       R16 R16 K26 ["Translator"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K7 [require]
       98 GETTABLEKS                       R17 R0 K27 ["Types"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K7 [require]
      103 GETTABLEKS                       R18 R0 K28 ["Flags"]
      105 GETTABLEKS                       R18 R18 K29 ["FFlagAssistantMultipleChatPersistence"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K7 [require]
      110 GETTABLEKS                       R19 R0 K28 ["Flags"]
      112 GETTABLEKS                       R19 R19 K30 ["FFlagAssistantSplitToolsAndWidgets"]
      114 CALL                             R18 1 1
      115 GETTABLEKS                       R19 R9 K19 ["Util"]
      117 GETTABLEKS                       R19 R19 K31 ["ToolBuilder"]
      119 GETTABLEKS                       R20 R13 K32 ["ToolNames"]
      121 GETTABLEKS                       R21 R9 K19 ["Util"]
      123 GETTABLEKS                       R21 R21 K33 ["ToolResult"]
      125 NEWTABLE                         R22 0 0
      127 NEWTABLE                         R23 0 0
      129 DUPCLOSURE                       R24 K34 [PROTO_0]
      130 CAPTURE                          VAL R3
      131 DUPCLOSURE                       R25 K35 [PROTO_1]
      132 DUPCLOSURE                       R26 K36 [PROTO_7]
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R8
      135 DUPCLOSURE                       R27 K37 [PROTO_8]
      136 CAPTURE                          VAL R25
      137 CAPTURE                          VAL R26
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R22
      141 CAPTURE                          VAL R23
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R7
      144 DUPCLOSURE                       R28 K38 [PROTO_9]
      145 CAPTURE                          VAL R22
      146 DUPCLOSURE                       R29 K39 [PROTO_10]
      147 CAPTURE                          VAL R23
      148 DUPTABLE                         R30 K42 [{"animatorRemoved", "rigSelected"}]
      149 SETTABLEKS                       R28 R30 K40 ["animatorRemoved"]
      151 SETTABLEKS                       R29 R30 K41 ["rigSelected"]
      153 DUPCLOSURE                       R31 K43 [PROTO_20]
      154 CAPTURE                          VAL R24
      155 CAPTURE                          VAL R27
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R19
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R18
      166 DUPTABLE                         R32 K46 [{"bridge", "setupGuest"}]
      167 SETTABLEKS                       R30 R32 K44 ["bridge"]
      169 SETTABLEKS                       R31 R32 K45 ["setupGuest"]
      171 RETURN                           R32 1
