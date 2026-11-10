PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["rowStatus"]
        2 JUMPIFEQKNIL                     R2 ; [+8]
        4 GETTABLEKS                       R2 R0 K0 ["rowStatus"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["ClipPreview"]
        9 GETTABLE                         R1 R2 R3
       10 RETURN                           R1 1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GenerationMode"]
        3 GETTABLE                         R1 R0 R2
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
        7 JUMPIFNOT                        R2 ; [+17]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["isEditMode"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMPIFNOT                        R2 ; [+11]
       14 LOADK                            R2 K3 ["/generate_animation (%*)"]
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K4 ["AnimationGen"]
       17 LOADK                            R7 K5 ["ModeEdit"]
       18 NAMECALL                         R4 R4 K6 ["getText"]
       20 CALL                             R4 3 1
       21 NAMECALL                         R2 R2 K7 ["format"]
       23 CALL                             R2 2 1
       24 RETURN                           R2 1
       25 GETUPVAL                         R2 4
       26 JUMPIFNOTEQ                      R1 R2 ; [+3]
       28 LOADK                            R2 K8 ["/generate_animation (Edit New)"]
       29 RETURN                           R2 1
       30 GETUPVAL                         R2 5
       31 JUMPIFNOTEQ                      R1 R2 ; [+3]
       33 LOADK                            R2 K9 ["/generate_animation (Edit Upscale)"]
       34 RETURN                           R2 1
       35 LOADNIL                          R2
       36 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["GenerationMode"]
        3 GETTABLE                         R2 R0 R3
        4 GETUPVAL                         R3 1
        5 JUMPIFNOTEQ                      R2 R3 ; [+90]
        7 GETTABLEKS                       R4 R1 K1 ["rowStatus"]
        9 JUMPIFEQKNIL                     R4 ; [+8]
       11 GETTABLEKS                       R4 R1 K1 ["rowStatus"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K2 ["ClipPreview"]
       16 GETTABLE                         R3 R4 R5
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 JUMPIFEQKNIL                     R3 ; [+4]
       21 GETTABLEKS                       R4 R3 K3 ["generation"]
       23 JUMP                             ; [+1]
       24 LOADK                            R4 K4 ["idle"]
       25 JUMPIFEQKNIL                     R3 ; [+10]
       27 GETTABLEKS                       R6 R3 K5 ["previewFailure"]
       29 JUMPIFEQKNIL                     R6 ; [+6]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R7 R3 K5 ["previewFailure"]
       34 GETTABLE                         R5 R6 R7
       35 JUMP                             ; [+14]
       36 JUMPIFEQKNIL                     R3 ; [+12]
       38 GETTABLEKS                       R6 R3 K6 ["generationFailure"]
       40 JUMPIFEQKNIL                     R6 ; [+8]
       42 GETUPVAL                         R5 3
       43 GETTABLEKS                       R5 R5 K7 ["getFailureMessage"]
       45 GETTABLEKS                       R6 R3 K6 ["generationFailure"]
       47 CALL                             R5 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R5
       50 DUPTABLE                         R6 K12 [{"buttons", "submitText", "isSubmitDisabled", "warning"}]
       51 NEWTABLE                         R7 0 1
       53 DUPTABLE                         R8 K18 [{["id"] = "generateUpscale", ["text"], ["isDisabled"], ["isLoading"]}]
       54 DUPTABLE                         R9 K23 [{["namespace"] = "AnimationGen", ["key"] = "InputGenerate"}]
       55 SETTABLEKS                       R9 R8 K15 ["text"]
       57 LOADB                            R9 1
       58 JUMPIFEQKNIL                     R3 ; [+13]
       60 LOADB                            R9 1
       61 GETTABLEKS                       R10 R3 K24 ["preview"]
       63 JUMPIFNOTEQKS                    R10 K25 ["ready"] ; [+8]
       65 LOADB                            R9 1
       66 JUMPIFEQKS                       R4 K26 ["running"] ; [+5]
       68 JUMPIFEQKS                       R4 K27 ["done"] ; [+2]
       70 LOADB                            R9 0 +1
       71 LOADB                            R9 1
       72 SETTABLEKS                       R9 R8 K16 ["isDisabled"]
       74 JUMPIFEQKS                       R4 K26 ["running"] ; [+2]
       76 LOADB                            R9 0 +1
       77 LOADB                            R9 1
       78 SETTABLEKS                       R9 R8 K17 ["isLoading"]
       80 SETLIST                          R7 R8 1 [1]
       82 SETTABLEKS                       R7 R6 K8 ["buttons"]
       84 GETUPVAL                         R7 4
       85 SETTABLEKS                       R7 R6 K9 ["submitText"]
       87 JUMPIFNOTEQKS                    R4 K27 ["done"] ; [+2]
       89 LOADB                            R7 0 +1
       90 LOADB                            R7 1
       91 SETTABLEKS                       R7 R6 K10 ["isSubmitDisabled"]
       93 SETTABLEKS                       R5 R6 K11 ["warning"]
       95 RETURN                           R6 1
       96 GETUPVAL                         R3 5
       97 JUMPIFEQ                         R2 R3 ; [+4]
       99 GETUPVAL                         R3 6
      100 JUMPIFNOTEQ                      R2 R3 ; [+25]
      102 GETTABLEKS                       R4 R1 K1 ["rowStatus"]
      104 JUMPIFEQKNIL                     R4 ; [+8]
      106 GETTABLEKS                       R4 R1 K1 ["rowStatus"]
      108 GETUPVAL                         R5 0
      109 GETTABLEKS                       R5 R5 K28 ["EditSourceId"]
      111 GETTABLE                         R3 R4 R5
      112 JUMP                             ; [+1]
      113 LOADNIL                          R3
      114 JUMPIFEQKNIL                     R3 ; [+11]
      116 DUPTABLE                         R4 K29 [{"submitText", "isSubmitDisabled"}]
      117 GETUPVAL                         R5 4
      118 SETTABLEKS                       R5 R4 K9 ["submitText"]
      120 GETTABLEKS                       R6 R3 K30 ["hasChanges"]
      122 NOT                              R5 R6
      123 SETTABLEKS                       R5 R4 K10 ["isSubmitDisabled"]
      125 RETURN                           R4 1
      126 NEWTABLE                         R3 0 0
      128 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["GenerationMode"]
        3 GETTABLE                         R2 R0 R3
        4 GETUPVAL                         R3 1
        5 JUMPIFNOTEQ                      R2 R3 ; [+95]
        7 GETTABLEKS                       R4 R1 K1 ["rowStatus"]
        9 JUMPIFEQKNIL                     R4 ; [+8]
       11 GETTABLEKS                       R4 R1 K1 ["rowStatus"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K2 ["ClipPreview"]
       16 GETTABLE                         R3 R4 R5
       17 JUMP                             ; [+1]
       18 LOADNIL                          R3
       19 JUMPIFEQKNIL                     R3 ; [+7]
       21 GETTABLEKS                       R5 R3 K3 ["generation"]
       23 JUMPIFNOTEQKS                    R5 K4 ["done"] ; [+3]
       25 GETUPVAL                         R4 2
       26 JUMP                             ; [+1]
       27 GETUPVAL                         R4 3
       28 NEWTABLE                         R5 16 0
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K0 ["GenerationMode"]
       33 GETUPVAL                         R7 4
       34 SETTABLE                         R7 R5 R6
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K5 ["TextPrompt"]
       38 GETUPVAL                         R7 5
       39 SETTABLE                         R7 R5 R6
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K6 ["EditTextPrompt"]
       43 GETUPVAL                         R7 5
       44 SETTABLE                         R7 R5 R6
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K7 ["SelectedRigRef"]
       48 GETUPVAL                         R7 4
       49 SETTABLE                         R7 R5 R6
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K8 ["Duration"]
       53 GETUPVAL                         R7 5
       54 SETTABLE                         R7 R5 R6
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K9 ["EditDuration"]
       58 GETUPVAL                         R7 5
       59 SETTABLE                         R7 R5 R6
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K10 ["InputAssetId"]
       63 GETUPVAL                         R7 4
       64 SETTABLE                         R7 R5 R6
       65 GETUPVAL                         R6 0
       66 GETTABLEKS                       R6 R6 K2 ["ClipPreview"]
       68 GETUPVAL                         R7 6
       69 SETTABLE                         R7 R5 R6
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K11 ["ArmsReach"]
       73 SETTABLE                         R4 R5 R6
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K12 ["LegsReach"]
       77 SETTABLE                         R4 R5 R6
       78 GETUPVAL                         R6 0
       79 GETTABLEKS                       R6 R6 K13 ["EditSourceId"]
       81 GETUPVAL                         R7 5
       82 SETTABLE                         R7 R5 R6
       83 GETUPVAL                         R6 0
       84 GETTABLEKS                       R6 R6 K14 ["EditSourceDuration"]
       86 GETUPVAL                         R7 5
       87 SETTABLE                         R7 R5 R6
       88 GETUPVAL                         R6 0
       89 GETTABLEKS                       R6 R6 K15 ["R6Blend"]
       91 SETTABLE                         R4 R5 R6
       92 GETUPVAL                         R6 0
       93 GETTABLEKS                       R6 R6 K16 ["UpperBodyBlend"]
       95 SETTABLE                         R4 R5 R6
       96 GETUPVAL                         R6 0
       97 GETTABLEKS                       R6 R6 K17 ["LowerBodyBlend"]
       99 SETTABLE                         R4 R5 R6
      100 RETURN                           R5 1
      101 GETUPVAL                         R3 7
      102 JUMPIFNOTEQ                      R2 R3 ; [+79]
      104 NEWTABLE                         R3 16 0
      106 GETUPVAL                         R4 0
      107 GETTABLEKS                       R4 R4 K0 ["GenerationMode"]
      109 GETUPVAL                         R5 8
      110 SETTABLE                         R5 R3 R4
      111 GETUPVAL                         R4 0
      112 GETTABLEKS                       R4 R4 K5 ["TextPrompt"]
      114 GETUPVAL                         R5 5
      115 SETTABLE                         R5 R3 R4
      116 GETUPVAL                         R4 0
      117 GETTABLEKS                       R4 R4 K6 ["EditTextPrompt"]
      119 GETUPVAL                         R5 4
      120 SETTABLE                         R5 R3 R4
      121 GETUPVAL                         R4 0
      122 GETTABLEKS                       R4 R4 K7 ["SelectedRigRef"]
      124 GETUPVAL                         R5 5
      125 SETTABLE                         R5 R3 R4
      126 GETUPVAL                         R4 0
      127 GETTABLEKS                       R4 R4 K8 ["Duration"]
      129 GETUPVAL                         R5 5
      130 SETTABLE                         R5 R3 R4
      131 GETUPVAL                         R4 0
      132 GETTABLEKS                       R4 R4 K9 ["EditDuration"]
      134 GETUPVAL                         R5 5
      135 SETTABLE                         R5 R3 R4
      136 GETUPVAL                         R4 0
      137 GETTABLEKS                       R4 R4 K10 ["InputAssetId"]
      139 GETUPVAL                         R5 5
      140 SETTABLE                         R5 R3 R4
      141 GETUPVAL                         R4 0
      142 GETTABLEKS                       R4 R4 K2 ["ClipPreview"]
      144 GETUPVAL                         R5 5
      145 SETTABLE                         R5 R3 R4
      146 GETUPVAL                         R4 0
      147 GETTABLEKS                       R4 R4 K11 ["ArmsReach"]
      149 GETUPVAL                         R5 5
      150 SETTABLE                         R5 R3 R4
      151 GETUPVAL                         R4 0
      152 GETTABLEKS                       R4 R4 K12 ["LegsReach"]
      154 GETUPVAL                         R5 5
      155 SETTABLE                         R5 R3 R4
      156 GETUPVAL                         R4 0
      157 GETTABLEKS                       R4 R4 K13 ["EditSourceId"]
      159 GETUPVAL                         R5 6
      160 SETTABLE                         R5 R3 R4
      161 GETUPVAL                         R4 0
      162 GETTABLEKS                       R4 R4 K14 ["EditSourceDuration"]
      164 GETUPVAL                         R5 5
      165 SETTABLE                         R5 R3 R4
      166 GETUPVAL                         R4 0
      167 GETTABLEKS                       R4 R4 K15 ["R6Blend"]
      169 GETUPVAL                         R5 5
      170 SETTABLE                         R5 R3 R4
      171 GETUPVAL                         R4 0
      172 GETTABLEKS                       R4 R4 K16 ["UpperBodyBlend"]
      174 GETUPVAL                         R5 5
      175 SETTABLE                         R5 R3 R4
      176 GETUPVAL                         R4 0
      177 GETTABLEKS                       R4 R4 K17 ["LowerBodyBlend"]
      179 GETUPVAL                         R5 5
      180 SETTABLE                         R5 R3 R4
      181 RETURN                           R3 1
      182 GETUPVAL                         R3 9
      183 JUMPIFNOTEQ                      R2 R3 ; [+79]
      185 NEWTABLE                         R3 16 0
      187 GETUPVAL                         R4 0
      188 GETTABLEKS                       R4 R4 K0 ["GenerationMode"]
      190 GETUPVAL                         R5 8
      191 SETTABLE                         R5 R3 R4
      192 GETUPVAL                         R4 0
      193 GETTABLEKS                       R4 R4 K5 ["TextPrompt"]
      195 GETUPVAL                         R5 5
      196 SETTABLE                         R5 R3 R4
      197 GETUPVAL                         R4 0
      198 GETTABLEKS                       R4 R4 K6 ["EditTextPrompt"]
      200 GETUPVAL                         R5 5
      201 SETTABLE                         R5 R3 R4
      202 GETUPVAL                         R4 0
      203 GETTABLEKS                       R4 R4 K7 ["SelectedRigRef"]
      205 GETUPVAL                         R5 5
      206 SETTABLE                         R5 R3 R4
      207 GETUPVAL                         R4 0
      208 GETTABLEKS                       R4 R4 K8 ["Duration"]
      210 GETUPVAL                         R5 5
      211 SETTABLE                         R5 R3 R4
      212 GETUPVAL                         R4 0
      213 GETTABLEKS                       R4 R4 K9 ["EditDuration"]
      215 GETUPVAL                         R5 5
      216 SETTABLE                         R5 R3 R4
      217 GETUPVAL                         R4 0
      218 GETTABLEKS                       R4 R4 K10 ["InputAssetId"]
      220 GETUPVAL                         R5 5
      221 SETTABLE                         R5 R3 R4
      222 GETUPVAL                         R4 0
      223 GETTABLEKS                       R4 R4 K2 ["ClipPreview"]
      225 GETUPVAL                         R5 5
      226 SETTABLE                         R5 R3 R4
      227 GETUPVAL                         R4 0
      228 GETTABLEKS                       R4 R4 K11 ["ArmsReach"]
      230 GETUPVAL                         R5 5
      231 SETTABLE                         R5 R3 R4
      232 GETUPVAL                         R4 0
      233 GETTABLEKS                       R4 R4 K12 ["LegsReach"]
      235 GETUPVAL                         R5 5
      236 SETTABLE                         R5 R3 R4
      237 GETUPVAL                         R4 0
      238 GETTABLEKS                       R4 R4 K13 ["EditSourceId"]
      240 GETUPVAL                         R5 6
      241 SETTABLE                         R5 R3 R4
      242 GETUPVAL                         R4 0
      243 GETTABLEKS                       R4 R4 K14 ["EditSourceDuration"]
      245 GETUPVAL                         R5 5
      246 SETTABLE                         R5 R3 R4
      247 GETUPVAL                         R4 0
      248 GETTABLEKS                       R4 R4 K15 ["R6Blend"]
      250 GETUPVAL                         R5 5
      251 SETTABLE                         R5 R3 R4
      252 GETUPVAL                         R4 0
      253 GETTABLEKS                       R4 R4 K16 ["UpperBodyBlend"]
      255 GETUPVAL                         R5 5
      256 SETTABLE                         R5 R3 R4
      257 GETUPVAL                         R4 0
      258 GETTABLEKS                       R4 R4 K17 ["LowerBodyBlend"]
      260 GETUPVAL                         R5 5
      261 SETTABLE                         R5 R3 R4
      262 RETURN                           R3 1
      263 NEWTABLE                         R3 16 0
      265 GETUPVAL                         R4 0
      266 GETTABLEKS                       R4 R4 K0 ["GenerationMode"]
      268 GETUPVAL                         R5 4
      269 SETTABLE                         R5 R3 R4
      270 GETUPVAL                         R4 0
      271 GETTABLEKS                       R4 R4 K5 ["TextPrompt"]
      273 GETUPVAL                         R5 4
      274 SETTABLE                         R5 R3 R4
      275 GETUPVAL                         R4 0
      276 GETTABLEKS                       R4 R4 K6 ["EditTextPrompt"]
      278 GETUPVAL                         R5 5
      279 SETTABLE                         R5 R3 R4
      280 GETUPVAL                         R4 0
      281 GETTABLEKS                       R4 R4 K7 ["SelectedRigRef"]
      283 GETUPVAL                         R5 4
      284 SETTABLE                         R5 R3 R4
      285 GETUPVAL                         R4 0
      286 GETTABLEKS                       R4 R4 K8 ["Duration"]
      288 GETUPVAL                         R5 4
      289 SETTABLE                         R5 R3 R4
      290 GETUPVAL                         R4 0
      291 GETTABLEKS                       R4 R4 K9 ["EditDuration"]
      293 GETUPVAL                         R5 5
      294 SETTABLE                         R5 R3 R4
      295 GETUPVAL                         R4 0
      296 GETTABLEKS                       R4 R4 K10 ["InputAssetId"]
      298 GETUPVAL                         R5 5
      299 SETTABLE                         R5 R3 R4
      300 GETUPVAL                         R4 0
      301 GETTABLEKS                       R4 R4 K2 ["ClipPreview"]
      303 GETUPVAL                         R5 5
      304 SETTABLE                         R5 R3 R4
      305 GETUPVAL                         R4 0
      306 GETTABLEKS                       R4 R4 K11 ["ArmsReach"]
      308 GETUPVAL                         R5 5
      309 SETTABLE                         R5 R3 R4
      310 GETUPVAL                         R4 0
      311 GETTABLEKS                       R4 R4 K12 ["LegsReach"]
      313 GETUPVAL                         R5 5
      314 SETTABLE                         R5 R3 R4
      315 GETUPVAL                         R4 0
      316 GETTABLEKS                       R4 R4 K13 ["EditSourceId"]
      318 GETUPVAL                         R5 5
      319 SETTABLE                         R5 R3 R4
      320 GETUPVAL                         R4 0
      321 GETTABLEKS                       R4 R4 K14 ["EditSourceDuration"]
      323 GETUPVAL                         R5 5
      324 SETTABLE                         R5 R3 R4
      325 GETUPVAL                         R4 0
      326 GETTABLEKS                       R4 R4 K15 ["R6Blend"]
      328 GETUPVAL                         R5 5
      329 SETTABLE                         R5 R3 R4
      330 GETUPVAL                         R4 0
      331 GETTABLEKS                       R4 R4 K16 ["UpperBodyBlend"]
      333 GETUPVAL                         R5 5
      334 SETTABLE                         R5 R3 R4
      335 GETUPVAL                         R4 0
      336 GETTABLEKS                       R4 R4 K17 ["LowerBodyBlend"]
      338 GETUPVAL                         R5 5
      339 SETTABLE                         R5 R3 R4
      340 RETURN                           R3 1

PROTO_4:
        0 NEWTABLE                         R2 1 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["ReduceTriangles"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K1 ["SetupType"]
        8 GETTABLE                         R5 R0 R6
        9 JUMPIFNOTEQKS                    R5 K2 ["Development"] ; [+3]
       11 GETUPVAL                         R4 1
       12 JUMP                             ; [+1]
       13 GETUPVAL                         R4 2
       14 SETTABLE                         R4 R2 R3
       15 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["PromptMode"]
        3 GETTABLE                         R2 R0 R3
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Image"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+29]
        9 NEWTABLE                         R2 8 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["TextPrompt"]
       14 GETUPVAL                         R4 2
       15 SETTABLE                         R4 R2 R3
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["TextPartNames"]
       19 GETUPVAL                         R4 2
       20 SETTABLE                         R4 R2 R3
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K4 ["HintImage"]
       24 GETUPVAL                         R4 3
       25 SETTABLE                         R4 R2 R3
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K5 ["ImagePartNames"]
       29 GETUPVAL                         R4 3
       30 SETTABLE                         R4 R2 R3
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K6 ["SuggestSegmentation"]
       34 DUPTABLE                         R4 K9 [{["interactable"] = False}]
       35 SETTABLE                         R4 R2 R3
       36 RETURN                           R2 1
       37 GETTABLEKS                       R2 R1 K10 ["isSubmitted"]
       39 JUMPIFNOT                        R2 ; [+8]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K4 ["HintImage"]
       43 GETTABLE                         R3 R0 R4
       44 JUMPIFNOTEQKNIL                  R3 ; [+2]
       46 LOADB                            R2 0 +1
       47 LOADB                            R2 1
       48 NEWTABLE                         R3 8 0
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K2 ["TextPrompt"]
       53 GETUPVAL                         R5 3
       54 SETTABLE                         R5 R3 R4
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K3 ["TextPartNames"]
       58 GETUPVAL                         R5 3
       59 SETTABLE                         R5 R3 R4
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K4 ["HintImage"]
       63 JUMPIFNOT                        R2 ; [+2]
       64 GETUPVAL                         R5 3
       65 JUMP                             ; [+1]
       66 GETUPVAL                         R5 2
       67 SETTABLE                         R5 R3 R4
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R4 R4 K5 ["ImagePartNames"]
       71 GETUPVAL                         R5 2
       72 SETTABLE                         R5 R3 R4
       73 GETUPVAL                         R4 0
       74 GETTABLEKS                       R4 R4 K6 ["SuggestSegmentation"]
       76 DUPTABLE                         R5 K12 [{["interactable"] = True}]
       77 SETTABLE                         R5 R3 R4
       78 RETURN                           R3 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLE                         R1 R2 R0
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETUPVAL                         R2 0
       10 GETTABLE                         R1 R2 R0
       11 RETURN                           R1 1
       12 GETUPVAL                         R2 1
       13 GETTABLE                         R1 R2 R0
       14 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getForm"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 JUMPIFEQKNIL                     R4 ; [+5]
        7 GETTABLEKS                       R5 R4 K1 ["axisResolver"]
        9 JUMPIFNOTEQKNIL                  R5 ; [+2]
       11 RETURN                           R1 1
       12 GETTABLEKS                       R5 R4 K1 ["axisResolver"]
       14 MOVE                             R6 R2
       15 MOVE                             R7 R3
       16 CALL                             R5 2 1
       17 NEWTABLE                         R6 0 0
       19 MOVE                             R7 R1
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 FORGPREP                         R7
       23 GETTABLEKS                       R13 R11 K2 ["name"]
       25 GETTABLE                         R12 R5 R13
       26 JUMPIFEQKNIL                     R12 ; [+5]
       28 GETTABLEKS                       R13 R12 K3 ["enabled"]
       30 JUMPIFEQKB                       R13 FALSE ; [+8]
       32 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       34 MOVE                             R14 R6
       35 MOVE                             R15 R11
       36 GETIMPORT                        R13 K6 [table.insert]
       38 CALL                             R13 2 0
       39 FORGLOOP                         R7 2 ; [-17]
       41 RETURN                           R6 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getForm"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETTABLEKS                       R4 R2 K1 ["rows"]
        8 GETTABLE                         R3 R4 R1
        9 JUMPIF                           R3 ; [+1]
       10 GETUPVAL                         R3 1
       11 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R2 R0 K0 ["formId"]
        6 SETTABLE                         R0 R1 R2
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Util"]
       13 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       15 GETTABLEKS                       R3 R3 K8 ["AnimationGenTypes"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K6 ["Util"]
       22 GETTABLEKS                       R4 R4 K9 ["AskInput"]
       24 GETTABLEKS                       R4 R4 K10 ["AskInputTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R1 K11 ["Flags"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R1 K12 ["Parent"]
       36 GETTABLEKS                       R6 R6 K13 ["Gen3dCore"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R1 K6 ["Util"]
       43 GETTABLEKS                       R7 R7 K14 ["MeshGen"]
       45 GETTABLEKS                       R7 R7 K15 ["MeshGenConstants"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R1 K16 ["Components"]
       52 GETTABLEKS                       R8 R8 K17 ["PropertyRows"]
       54 GETTABLEKS                       R8 R8 K18 ["PropertyRowTypes"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R1 K6 ["Util"]
       61 GETTABLEKS                       R9 R9 K19 ["LayoutGen"]
       63 GETTABLEKS                       R9 R9 K20 ["SceneBoundsForm"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R10 R1 K6 ["Util"]
       70 GETTABLEKS                       R10 R10 K21 ["TextureGen"]
       72 GETTABLEKS                       R10 R10 K22 ["TextureGenTypes"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R11 R1 K23 ["Resources"]
       79 GETTABLEKS                       R11 R11 K24 ["Localization"]
       81 GETTABLEKS                       R11 R11 K25 ["Translator"]
       83 CALL                             R10 1 1
       84 GETTABLEKS                       R11 R5 K26 ["SegmentationEnums"]
       86 GETTABLEKS                       R12 R3 K27 ["RULE_KIND"]
       88 GETTABLEKS                       R13 R7 K28 ["ROW_TYPES"]
       90 GETTABLEKS                       R14 R11 K29 ["PromptMode"]
       92 GETTABLEKS                       R15 R3 K30 ["asRule"]
       94 DUPTABLE                         R16 K32 [{["TextureGen"] = "TextureGen", ["SegmentMesh"] = "SegmentMesh"}]
       95 DUPTABLE                         R17 K34 [{["AnimationGenUpscaleForm"] = "AnimationGenUpscaleForm"}]
       96 DUPTABLE                         R18 K36 [{["LayoutGenSceneBox"] = "LayoutGenSceneBox"}]
       97 NEWTABLE                         R19 0 0
       99 NEWTABLE                         R20 8 0
      101 DUPTABLE                         R21 K67 [{["GenerationMode"] = "generationMode", ["TextPrompt"] = "textPrompt", ["EditTextPrompt"] = "editTextPrompt", ["SelectedRigRef"] = "selectedRigRef", ["Duration"] = "duration", ["EditDuration"] = "editDuration", ["InputAssetId"] = "inputAssetId", ["ClipPreview"] = "clipPreview", ["ArmsReach"] = "armsReach", ["LegsReach"] = "legsReach", ["EditSourceId"] = "editSourceId", ["EditSourceDuration"] = "editSourceDuration", ["R6Blend"] = "r6Blend", ["UpperBodyBlend"] = "upperBodyBlend", ["LowerBodyBlend"] = "lowerBodyBlend"}]
      102 GETTABLEKS                       R22 R2 K68 ["GenerationModes"]
      104 GETTABLEKS                       R22 R22 K69 ["New"]
      106 GETTABLEKS                       R23 R2 K68 ["GenerationModes"]
      108 GETTABLEKS                       R23 R23 K70 ["Upscale"]
      110 GETTABLEKS                       R24 R2 K68 ["GenerationModes"]
      112 GETTABLEKS                       R24 R24 K71 ["EditNew"]
      114 GETTABLEKS                       R25 R2 K68 ["GenerationModes"]
      116 GETTABLEKS                       R25 R25 K72 ["EditUpscale"]
      118 DUPTABLE                         R26 K76 [{["visible"] = True, ["enabled"] = True}]
      119 DUPTABLE                         R27 K78 [{["visible"] = False, ["enabled"] = False}]
      120 DUPTABLE                         R28 K79 [{["visible"] = False, ["enabled"] = True}]
      121 DUPTABLE                         R29 K80 [{["visible"] = True, ["enabled"] = False}]
      122 DUPTABLE                         R30 K82 [{["visible"] = True, ["enabled"] = True, ["interactable"] = True}]
      123 DUPTABLE                         R31 K83 [{["visible"] = True, ["enabled"] = True, ["interactable"] = False}]
      124 DUPTABLE                         R32 K86 [{["GenerateUpscale"] = "generateUpscale"}]
      125 DUPTABLE                         R33 K90 [{["namespace"] = "AskInput", ["key"] = "SubmitButton"}]
      126 DUPTABLE                         R34 K92 [{["namespace"] = "AnimationGen", ["key"] = "ModeEdit"}]
      127 NEWTABLE                         R35 4 0
      129 DUPTABLE                         R36 K94 [{["namespace"] = "AnimationGen", ["key"] = "ModeNew"}]
      130 SETTABLE                         R36 R35 R22
      131 DUPTABLE                         R36 K96 [{["namespace"] = "AnimationGen", ["key"] = "ModeUpscale"}]
      132 SETTABLE                         R36 R35 R23
      133 GETTABLEKS                       R37 R4 K97 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
      135 JUMPIFNOT                        R37 ; [+2]
      136 MOVE                             R36 R34
      137 JUMP                             ; [+1]
      138 LOADK                            R36 K98 ["Edit New"]
      139 SETTABLE                         R36 R35 R24
      140 GETTABLEKS                       R37 R4 K97 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
      142 JUMPIFNOT                        R37 ; [+2]
      143 MOVE                             R36 R34
      144 JUMP                             ; [+1]
      145 LOADK                            R36 K99 ["Edit Upscale"]
      146 SETTABLE                         R36 R35 R25
      147 DUPTABLE                         R36 K106 [{["NotR6"] = "Preview supports R6 clips only.", ["UnsupportedClipType"] = "This animation type can't be previewed or upscaled.", ["LoadFailed"] = "Couldn't load this clip for preview."}]
      148 DUPCLOSURE                       R37 K107 [PROTO_0]
      149 CAPTURE                          VAL R21
      150 DUPTABLE                         R38 K118 [{["formId"] = "generate_animation", ["heading"] = "/generate_animation", ["headingResolver"], ["row"], ["confirmButton"], ["footerResolver"], ["axisResolver"], ["rows"]}]
      151 DUPCLOSURE                       R39 K119 [PROTO_1]
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R24
      157 CAPTURE                          VAL R25
      158 SETTABLEKS                       R39 R38 K112 ["headingResolver"]
      160 SETTABLEKS                       R21 R38 K113 ["row"]
      162 DUPTABLE                         R39 K121 [{["namespace"] = "AnimationGen", ["key"] = "InputGenerate"}]
      163 SETTABLEKS                       R39 R38 K114 ["confirmButton"]
      165 DUPCLOSURE                       R39 K122 [PROTO_2]
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R23
      168 CAPTURE                          VAL R36
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R33
      171 CAPTURE                          VAL R24
      172 CAPTURE                          VAL R25
      173 SETTABLEKS                       R39 R38 K115 ["footerResolver"]
      175 DUPCLOSURE                       R39 K123 [PROTO_3]
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R23
      178 CAPTURE                          VAL R30
      179 CAPTURE                          VAL R31
      180 CAPTURE                          VAL R26
      181 CAPTURE                          VAL R27
      182 CAPTURE                          VAL R29
      183 CAPTURE                          VAL R24
      184 CAPTURE                          VAL R28
      185 CAPTURE                          VAL R25
      186 SETTABLEKS                       R39 R38 K116 ["axisResolver"]
      188 NEWTABLE                         R39 16 0
      190 GETTABLEKS                       R40 R21 K37 ["GenerationMode"]
      192 DUPTABLE                         R41 K126 [{"label", "optionLabels"}]
      193 DUPTABLE                         R42 K127 [{["namespace"] = "AnimationGen", ["key"] = "GenerationMode"}]
      194 SETTABLEKS                       R42 R41 K124 ["label"]
      196 SETTABLEKS                       R35 R41 K125 ["optionLabels"]
      198 SETTABLE                         R41 R39 R40
      199 GETTABLEKS                       R40 R21 K39 ["TextPrompt"]
      201 DUPTABLE                         R41 K130 [{["label"], ["multiLine"] = True, ["requirementMessage"]}]
      202 DUPTABLE                         R42 K132 [{["namespace"] = "AnimationGen", ["key"] = "Prompt"}]
      203 SETTABLEKS                       R42 R41 K124 ["label"]
      205 DUPTABLE                         R42 K134 [{["namespace"] = "AnimationGen", ["key"] = "TextPromptRequired"}]
      206 SETTABLEKS                       R42 R41 K129 ["requirementMessage"]
      208 SETTABLE                         R41 R39 R40
      209 GETTABLEKS                       R40 R21 K41 ["EditTextPrompt"]
      211 DUPTABLE                         R41 K135 [{["label"], ["multiLine"] = True}]
      212 DUPTABLE                         R42 K132 [{["namespace"] = "AnimationGen", ["key"] = "Prompt"}]
      213 SETTABLEKS                       R42 R41 K124 ["label"]
      215 SETTABLE                         R41 R39 R40
      216 GETTABLEKS                       R40 R21 K47 ["EditDuration"]
      218 DUPTABLE                         R41 K137 [{["internal"] = True}]
      219 SETTABLE                         R41 R39 R40
      220 GETTABLEKS                       R40 R21 K43 ["SelectedRigRef"]
      222 DUPTABLE                         R41 K139 [{["label"], ["shouldSelectModel"] = True}]
      223 DUPTABLE                         R42 K141 [{["namespace"] = "AnimationGen", ["key"] = "InputRig"}]
      224 SETTABLEKS                       R42 R41 K124 ["label"]
      226 SETTABLE                         R41 R39 R40
      227 GETTABLEKS                       R40 R21 K45 ["Duration"]
      229 DUPTABLE                         R41 K142 [{"label"}]
      230 DUPTABLE                         R42 K144 [{["namespace"] = "AnimationGen", ["key"] = "InputDuration"}]
      231 SETTABLEKS                       R42 R41 K124 ["label"]
      233 SETTABLE                         R41 R39 R40
      234 GETTABLEKS                       R40 R21 K49 ["InputAssetId"]
      236 DUPTABLE                         R41 K146 [{"label", "renderer", "requirementMessage"}]
      237 DUPTABLE                         R42 K148 [{["namespace"] = "AnimationGen", ["key"] = "AnimationClip"}]
      238 SETTABLEKS                       R42 R41 K124 ["label"]
      240 GETTABLEKS                       R42 R13 K149 ["Content"]
      242 SETTABLEKS                       R42 R41 K145 ["renderer"]
      244 DUPTABLE                         R42 K151 [{["namespace"] = "AnimationGen", ["key"] = "AnimationClipRequired"}]
      245 SETTABLEKS                       R42 R41 K129 ["requirementMessage"]
      247 SETTABLE                         R41 R39 R40
      248 GETTABLEKS                       R40 R21 K51 ["ClipPreview"]
      250 DUPTABLE                         R41 K155 [{["renderer"], ["clipRowName"], ["rigRowName"], ["generateButtonId"] = "generateUpscale"}]
      251 GETTABLEKS                       R42 R13 K51 ["ClipPreview"]
      253 SETTABLEKS                       R42 R41 K145 ["renderer"]
      255 GETTABLEKS                       R42 R21 K49 ["InputAssetId"]
      257 SETTABLEKS                       R42 R41 K152 ["clipRowName"]
      259 GETTABLEKS                       R42 R21 K43 ["SelectedRigRef"]
      261 SETTABLEKS                       R42 R41 K153 ["rigRowName"]
      263 SETTABLE                         R41 R39 R40
      264 GETTABLEKS                       R40 R21 K53 ["ArmsReach"]
      266 DUPTABLE                         R41 K165 [{["label"] = "Arms Bending", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      267 GETTABLEKS                       R42 R13 K166 ["NumberInput"]
      269 SETTABLEKS                       R42 R41 K145 ["renderer"]
      271 GETTABLEKS                       R42 R17 K33 ["AnimationGenUpscaleForm"]
      273 SETTABLEKS                       R42 R41 K164 ["valueChangedAction"]
      275 SETTABLE                         R41 R39 R40
      276 GETTABLEKS                       R40 R21 K55 ["LegsReach"]
      278 DUPTABLE                         R41 K168 [{["label"] = "Legs Bending", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      279 GETTABLEKS                       R42 R13 K166 ["NumberInput"]
      281 SETTABLEKS                       R42 R41 K145 ["renderer"]
      283 GETTABLEKS                       R42 R17 K33 ["AnimationGenUpscaleForm"]
      285 SETTABLEKS                       R42 R41 K164 ["valueChangedAction"]
      287 SETTABLE                         R41 R39 R40
      288 GETTABLEKS                       R40 R21 K57 ["EditSourceId"]
      290 DUPTABLE                         R41 K170 [{"renderer", "durationRowName"}]
      291 GETTABLEKS                       R42 R13 K171 ["EditScrubbar"]
      293 SETTABLEKS                       R42 R41 K145 ["renderer"]
      295 GETTABLEKS                       R42 R21 K59 ["EditSourceDuration"]
      297 SETTABLEKS                       R42 R41 K169 ["durationRowName"]
      299 SETTABLE                         R41 R39 R40
      300 GETTABLEKS                       R40 R21 K59 ["EditSourceDuration"]
      302 DUPTABLE                         R41 K137 [{["internal"] = True}]
      303 SETTABLE                         R41 R39 R40
      304 GETTABLEKS                       R40 R21 K61 ["R6Blend"]
      306 DUPTABLE                         R41 K173 [{["label"] = "Blend with R6", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      307 GETTABLEKS                       R42 R13 K166 ["NumberInput"]
      309 SETTABLEKS                       R42 R41 K145 ["renderer"]
      311 GETTABLEKS                       R42 R17 K33 ["AnimationGenUpscaleForm"]
      313 SETTABLEKS                       R42 R41 K164 ["valueChangedAction"]
      315 SETTABLE                         R41 R39 R40
      316 GETTABLEKS                       R40 R21 K63 ["UpperBodyBlend"]
      318 DUPTABLE                         R41 K176 [{["label"] = "Upper Body Blend", ["parentRow"], ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      319 GETTABLEKS                       R42 R21 K61 ["R6Blend"]
      321 SETTABLEKS                       R42 R41 K175 ["parentRow"]
      323 GETTABLEKS                       R42 R13 K166 ["NumberInput"]
      325 SETTABLEKS                       R42 R41 K145 ["renderer"]
      327 GETTABLEKS                       R42 R17 K33 ["AnimationGenUpscaleForm"]
      329 SETTABLEKS                       R42 R41 K164 ["valueChangedAction"]
      331 SETTABLE                         R41 R39 R40
      332 GETTABLEKS                       R40 R21 K65 ["LowerBodyBlend"]
      334 DUPTABLE                         R41 K178 [{["label"] = "Lower Body Blend", ["parentRow"], ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      335 GETTABLEKS                       R42 R21 K61 ["R6Blend"]
      337 SETTABLEKS                       R42 R41 K175 ["parentRow"]
      339 GETTABLEKS                       R42 R13 K166 ["NumberInput"]
      341 SETTABLEKS                       R42 R41 K145 ["renderer"]
      343 GETTABLEKS                       R42 R17 K33 ["AnimationGenUpscaleForm"]
      345 SETTABLEKS                       R42 R41 K164 ["valueChangedAction"]
      347 SETTABLE                         R41 R39 R40
      348 SETTABLEKS                       R39 R38 K117 ["rows"]
      350 SETTABLEKS                       R38 R20 K7 ["AnimationGen"]
      352 DUPTABLE                         R21 K193 [{["SelectedModelRef"] = "selectedModelRef", ["SetupType"] = "setup_type", ["R15Plus"] = "r15_plus", ["AlignFrontAngle"] = "align_front_angle", ["DecalToDynamicHead"] = "decal_to_dynamic_head", ["EnableAdditionalHeadProcessing"] = "enable_additional_head_processing", ["ReduceTriangles"] = "reduce_triangles"}]
      353 DUPTABLE                         R22 K196 [{["Platform"] = "Platform", ["Development"] = "Development"}]
      354 DUPTABLE                         R23 K76 [{["visible"] = True, ["enabled"] = True}]
      355 DUPTABLE                         R24 K78 [{["visible"] = False, ["enabled"] = False}]
      356 DUPTABLE                         R25 K199 [{["formId"] = "auto_setup_avatar", ["heading"] = "/auto_setup_avatar", ["row"], ["confirmButton"], ["axisResolver"], ["rows"]}]
      357 SETTABLEKS                       R21 R25 K113 ["row"]
      359 DUPTABLE                         R26 K202 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputSetUpAvatar"}]
      360 SETTABLEKS                       R26 R25 K114 ["confirmButton"]
      362 DUPCLOSURE                       R26 K203 [PROTO_4]
      363 CAPTURE                          VAL R21
      364 CAPTURE                          VAL R23
      365 CAPTURE                          VAL R24
      366 SETTABLEKS                       R26 R25 K116 ["axisResolver"]
      368 NEWTABLE                         R26 8 0
      370 GETTABLEKS                       R27 R21 K179 ["SelectedModelRef"]
      372 DUPTABLE                         R28 K204 [{["label"], ["shouldSelectModel"] = True, ["requirementMessage"]}]
      373 DUPTABLE                         R29 K206 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputModel"}]
      374 SETTABLEKS                       R29 R28 K124 ["label"]
      376 DUPTABLE                         R29 K208 [{["namespace"] = "AvatarAutoSetup", ["key"] = "ModelRequired"}]
      377 SETTABLEKS                       R29 R28 K129 ["requirementMessage"]
      379 SETTABLE                         R28 R26 R27
      380 GETTABLEKS                       R27 R21 K181 ["SetupType"]
      382 DUPTABLE                         R28 K126 [{"label", "optionLabels"}]
      383 DUPTABLE                         R29 K210 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "SetupType"}]
      384 SETTABLEKS                       R29 R28 K124 ["label"]
      386 NEWTABLE                         R29 2 0
      388 DUPTABLE                         R30 K212 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "PlatformAvatar"}]
      389 SETTABLEKS                       R30 R29 K194 ["Platform"]
      391 DUPTABLE                         R30 K214 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "DevelopmentAvatar"}]
      392 SETTABLEKS                       R30 R29 K195 ["Development"]
      394 SETTABLEKS                       R29 R28 K125 ["optionLabels"]
      396 SETTABLE                         R28 R26 R27
      397 GETTABLEKS                       R27 R21 K183 ["R15Plus"]
      399 DUPTABLE                         R28 K216 [{"label", "infoPopover"}]
      400 DUPTABLE                         R29 K217 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "R15Plus"}]
      401 SETTABLEKS                       R29 R28 K124 ["label"]
      403 DUPTABLE                         R29 K219 [{"body"}]
      404 DUPTABLE                         R30 K221 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "R15PlusDescription"}]
      405 SETTABLEKS                       R30 R29 K218 ["body"]
      407 SETTABLEKS                       R29 R28 K215 ["infoPopover"]
      409 SETTABLE                         R28 R26 R27
      410 GETTABLEKS                       R27 R21 K185 ["AlignFrontAngle"]
      412 DUPTABLE                         R28 K216 [{"label", "infoPopover"}]
      413 DUPTABLE                         R29 K223 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "AlignFront"}]
      414 SETTABLEKS                       R29 R28 K124 ["label"]
      416 DUPTABLE                         R29 K219 [{"body"}]
      417 DUPTABLE                         R30 K225 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "AlignFrontDescription"}]
      418 SETTABLEKS                       R30 R29 K218 ["body"]
      420 SETTABLEKS                       R29 R28 K215 ["infoPopover"]
      422 SETTABLE                         R28 R26 R27
      423 GETTABLEKS                       R27 R21 K187 ["DecalToDynamicHead"]
      425 DUPTABLE                         R28 K216 [{"label", "infoPopover"}]
      426 DUPTABLE                         R29 K226 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "DecalToDynamicHead"}]
      427 SETTABLEKS                       R29 R28 K124 ["label"]
      429 DUPTABLE                         R29 K219 [{"body"}]
      430 DUPTABLE                         R30 K228 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "DecalToDynamicHeadDescription"}]
      431 SETTABLEKS                       R30 R29 K218 ["body"]
      433 SETTABLEKS                       R29 R28 K215 ["infoPopover"]
      435 SETTABLE                         R28 R26 R27
      436 GETTABLEKS                       R27 R21 K189 ["EnableAdditionalHeadProcessing"]
      438 DUPTABLE                         R28 K216 [{"label", "infoPopover"}]
      439 DUPTABLE                         R29 K230 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "FacialCaging"}]
      440 SETTABLEKS                       R29 R28 K124 ["label"]
      442 DUPTABLE                         R29 K219 [{"body"}]
      443 DUPTABLE                         R30 K232 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "FacialCagingDescription"}]
      444 SETTABLEKS                       R30 R29 K218 ["body"]
      446 SETTABLEKS                       R29 R28 K215 ["infoPopover"]
      448 SETTABLE                         R28 R26 R27
      449 GETTABLEKS                       R27 R21 K191 ["ReduceTriangles"]
      451 DUPTABLE                         R28 K216 [{"label", "infoPopover"}]
      452 DUPTABLE                         R29 K233 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "ReduceTriangles"}]
      453 SETTABLEKS                       R29 R28 K124 ["label"]
      455 DUPTABLE                         R29 K219 [{"body"}]
      456 DUPTABLE                         R30 K235 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "ReduceTrianglesDescription"}]
      457 SETTABLEKS                       R30 R29 K218 ["body"]
      459 SETTABLEKS                       R29 R28 K215 ["infoPopover"]
      461 SETTABLE                         R28 R26 R27
      462 SETTABLEKS                       R26 R25 K117 ["rows"]
      464 SETTABLEKS                       R25 R20 K200 ["AvatarAutoSetup"]
      466 DUPTABLE                         R21 K236 [{["TextPrompt"] = "textPrompt"}]
      467 DUPTABLE                         R22 K239 [{["formId"] = "generate_avatar", ["heading"] = "/generate_avatar", ["row"], ["confirmButton"], ["rows"]}]
      468 SETTABLEKS                       R21 R22 K113 ["row"]
      470 DUPTABLE                         R23 K242 [{["namespace"] = "AvatarGen", ["key"] = "InputGenerateAvatar"}]
      471 SETTABLEKS                       R23 R22 K114 ["confirmButton"]
      473 NEWTABLE                         R23 1 0
      475 GETTABLEKS                       R24 R21 K39 ["TextPrompt"]
      477 DUPTABLE                         R25 K244 [{["label"], ["multiLine"] = True, ["placeholder"], ["requirementMessage"]}]
      478 DUPTABLE                         R26 K246 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      479 SETTABLEKS                       R26 R25 K124 ["label"]
      481 DUPTABLE                         R26 K248 [{["namespace"] = "AvatarGen", ["key"] = "InputPromptPlaceholder"}]
      482 SETTABLEKS                       R26 R25 K243 ["placeholder"]
      484 DUPTABLE                         R26 K250 [{["namespace"] = "AvatarGen", ["key"] = "PromptRequired"}]
      485 SETTABLEKS                       R26 R25 K129 ["requirementMessage"]
      487 SETTABLE                         R25 R23 R24
      488 SETTABLEKS                       R23 R22 K117 ["rows"]
      490 SETTABLEKS                       R22 R20 K240 ["AvatarGen"]
      492 GETTABLEKS                       R21 R8 K251 ["Row"]
      494 GETTABLEKS                       R22 R8 K252 ["ModelSegment"]
      496 GETTABLEKS                       R23 R5 K253 ["Constants"]
      498 GETTABLEKS                       R23 R23 K254 ["Enums"]
      500 GETTABLEKS                       R23 R23 K255 ["SceneQuality"]
      502 NEWTABLE                         R24 2 0
      504 GETTABLEKS                       R25 R22 K256 ["ProcModels"]
      506 DUPTABLE                         R26 K258 [{["namespace"] = "GenerateLayout", ["key"] = "ProcModels"}]
      507 SETTABLE                         R26 R24 R25
      508 GETTABLEKS                       R25 R22 K259 ["ProcModelsAndMeshes"]
      510 DUPTABLE                         R26 K260 [{["namespace"] = "GenerateLayout", ["key"] = "ProcModelsAndMeshes"}]
      511 SETTABLE                         R26 R24 R25
      512 NEWTABLE                         R25 4 0
      514 GETTABLEKS                       R26 R23 K261 ["Minimal"]
      516 DUPTABLE                         R27 K263 [{["namespace"] = "GenerateLayout", ["key"] = "QualityMinimal"}]
      517 SETTABLE                         R27 R25 R26
      518 GETTABLEKS                       R26 R23 K264 ["Low"]
      520 DUPTABLE                         R27 K266 [{["namespace"] = "GenerateLayout", ["key"] = "QualityLow"}]
      521 SETTABLE                         R27 R25 R26
      522 GETTABLEKS                       R26 R23 K267 ["Medium"]
      524 DUPTABLE                         R27 K269 [{["namespace"] = "GenerateLayout", ["key"] = "QualityMedium"}]
      525 SETTABLE                         R27 R25 R26
      526 GETTABLEKS                       R26 R23 K270 ["High"]
      528 DUPTABLE                         R27 K272 [{["namespace"] = "GenerateLayout", ["key"] = "QualityHigh"}]
      529 SETTABLE                         R27 R25 R26
      530 DUPTABLE                         R26 K275 [{["formId"], ["cancelInFooter"] = True, ["heading"] = "/generate_scene", ["row"], ["confirmButton"], ["rows"]}]
      531 GETTABLEKS                       R27 R8 K276 ["FormId"]
      533 SETTABLEKS                       R27 R26 K108 ["formId"]
      535 SETTABLEKS                       R21 R26 K113 ["row"]
      537 DUPTABLE                         R27 K278 [{["namespace"] = "GenerateLayout", ["key"] = "Generate"}]
      538 SETTABLEKS                       R27 R26 K114 ["confirmButton"]
      540 NEWTABLE                         R27 4 0
      542 GETTABLEKS                       R28 R21 K279 ["Size"]
      544 DUPTABLE                         R29 K282 [{["label"], ["liveChannelBridge"], ["roundToWholeStud"] = True}]
      545 DUPTABLE                         R30 K284 [{["namespace"] = "GenerateLayout", ["key"] = "SceneSize"}]
      546 SETTABLEKS                       R30 R29 K124 ["label"]
      548 GETTABLEKS                       R30 R18 K35 ["LayoutGenSceneBox"]
      550 SETTABLEKS                       R30 R29 K280 ["liveChannelBridge"]
      552 SETTABLE                         R29 R27 R28
      553 GETTABLEKS                       R28 R21 K285 ["Position"]
      555 DUPTABLE                         R29 K282 [{["label"], ["liveChannelBridge"], ["roundToWholeStud"] = True}]
      556 DUPTABLE                         R30 K286 [{["namespace"] = "GenerateLayout", ["key"] = "Position"}]
      557 SETTABLEKS                       R30 R29 K124 ["label"]
      559 GETTABLEKS                       R30 R18 K35 ["LayoutGenSceneBox"]
      561 SETTABLEKS                       R30 R29 K280 ["liveChannelBridge"]
      563 SETTABLE                         R29 R27 R28
      564 GETTABLEKS                       R28 R21 K287 ["UseMeshGen"]
      566 DUPTABLE                         R29 K126 [{"label", "optionLabels"}]
      567 DUPTABLE                         R30 K289 [{["namespace"] = "GenerateLayout", ["key"] = "Models"}]
      568 SETTABLEKS                       R30 R29 K124 ["label"]
      570 SETTABLEKS                       R24 R29 K125 ["optionLabels"]
      572 SETTABLE                         R29 R27 R28
      573 GETTABLEKS                       R28 R21 K290 ["Quality"]
      575 DUPTABLE                         R29 K126 [{"label", "optionLabels"}]
      576 DUPTABLE                         R30 K291 [{["namespace"] = "GenerateLayout", ["key"] = "Quality"}]
      577 SETTABLEKS                       R30 R29 K124 ["label"]
      579 SETTABLEKS                       R25 R29 K125 ["optionLabels"]
      581 SETTABLE                         R29 R27 R28
      582 SETTABLEKS                       R27 R26 K117 ["rows"]
      584 SETTABLEKS                       R26 R20 K292 ["GenerateSceneBounds"]
      586 DUPTABLE                         R21 K306 [{["PromptMode"] = "promptMode", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["MaxTriangles"] = "maxTriangles", ["TextPartNames"] = "textPartNames", ["ImagePartNames"] = "imagePartNames", ["SuggestSegmentation"] = "suggestSegmentation", ["SelectedInstanceRef"] = "selectedInstanceRef"}]
      587 DUPTABLE                         R22 K76 [{["visible"] = True, ["enabled"] = True}]
      588 DUPTABLE                         R23 K78 [{["visible"] = False, ["enabled"] = False}]
      589 DUPTABLE                         R24 K311 [{["formId"] = "generate_mesh", ["heading"] = "/generate_mesh", ["row"], ["description"], ["confirmButton"], ["axisResolver"], ["imageSelection"], ["rows"]}]
      590 SETTABLEKS                       R21 R24 K113 ["row"]
      592 DUPTABLE                         R25 K313 [{["namespace"] = "MeshGen", ["key"] = "InputDisclaimer"}]
      593 SETTABLEKS                       R25 R24 K309 ["description"]
      595 DUPTABLE                         R25 K315 [{["namespace"] = "MeshGen", ["key"] = "InputGenerateMesh"}]
      596 SETTABLEKS                       R25 R24 K114 ["confirmButton"]
      598 DUPCLOSURE                       R25 K316 [PROTO_5]
      599 CAPTURE                          VAL R21
      600 CAPTURE                          VAL R14
      601 CAPTURE                          VAL R23
      602 CAPTURE                          VAL R22
      603 SETTABLEKS                       R25 R24 K116 ["axisResolver"]
      605 GETTABLEKS                       R26 R4 K317 ["EngineFeatureAssistantGen3dImagePreview"]
      607 JUMPIFNOT                        R26 ; [+36]
      608 DUPTABLE                         R25 K322 [{"promptKey", "wizardMode", "model", "segmentationFold"}]
      609 GETTABLEKS                       R26 R21 K39 ["TextPrompt"]
      611 SETTABLEKS                       R26 R25 K318 ["promptKey"]
      613 GETTABLEKS                       R26 R4 K323 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      615 SETTABLEKS                       R26 R25 K319 ["wizardMode"]
      617 GETTABLEKS                       R26 R4 K324 ["FStringAssistantMeshGenImageGenModelOverride"]
      619 SETTABLEKS                       R26 R25 K320 ["model"]
      621 GETTABLEKS                       R27 R4 K325 ["FFlagAssistantImageGenImprovements"]
      623 JUMPIFNOT                        R27 ; [+16]
      624 DUPTABLE                         R26 K329 [{"kind", "partNamesKey", "suggestKey"}]
      625 GETTABLEKS                       R27 R3 K330 ["SEGMENTATION_FOLD_KIND"]
      627 GETTABLEKS                       R27 R27 K331 ["Gen3D"]
      629 SETTABLEKS                       R27 R26 K326 ["kind"]
      631 GETTABLEKS                       R27 R21 K298 ["TextPartNames"]
      633 SETTABLEKS                       R27 R26 K327 ["partNamesKey"]
      635 GETTABLEKS                       R27 R21 K302 ["SuggestSegmentation"]
      637 SETTABLEKS                       R27 R26 K328 ["suggestKey"]
      639 JUMP                             ; [+1]
      640 LOADNIL                          R26
      641 SETTABLEKS                       R26 R25 K321 ["segmentationFold"]
      643 JUMP                             ; [+1]
      644 LOADNIL                          R25
      645 SETTABLEKS                       R25 R24 K310 ["imageSelection"]
      647 NEWTABLE                         R25 8 0
      649 GETTABLEKS                       R26 R21 K29 ["PromptMode"]
      651 DUPTABLE                         R27 K333 [{"label", "optionLabels", "optionBadges"}]
      652 DUPTABLE                         R28 K335 [{["namespace"] = "MeshGen", ["key"] = "InputPromptModeTitle"}]
      653 SETTABLEKS                       R28 R27 K124 ["label"]
      655 NEWTABLE                         R28 2 0
      657 GETTABLEKS                       R29 R14 K336 ["Text"]
      659 DUPTABLE                         R30 K339 [{["namespace"] = "Gen3d", ["key"] = "PromptModeText"}]
      660 SETTABLE                         R30 R28 R29
      661 GETTABLEKS                       R29 R14 K340 ["Image"]
      663 DUPTABLE                         R30 K342 [{["namespace"] = "Gen3d", ["key"] = "PromptModeImage"}]
      664 SETTABLE                         R30 R28 R29
      665 SETTABLEKS                       R28 R27 K125 ["optionLabels"]
      667 NEWTABLE                         R28 2 0
      669 GETTABLEKS                       R29 R14 K336 ["Text"]
      671 MOVE                             R30 R15
      672 DUPTABLE                         R31 K346 [{"kind", "field", "cases", "default"}]
      673 GETTABLEKS                       R32 R12 K347 ["Branch"]
      675 SETTABLEKS                       R32 R31 K326 ["kind"]
      677 GETTABLEKS                       R32 R21 K29 ["PromptMode"]
      679 SETTABLEKS                       R32 R31 K343 ["field"]
      681 NEWTABLE                         R32 1 0
      683 GETTABLEKS                       R33 R14 K340 ["Image"]
      685 MOVE                             R34 R15
      686 DUPTABLE                         R35 K348 [{"kind", "field"}]
      687 GETTABLEKS                       R36 R12 K349 ["NonEmpty"]
      689 SETTABLEKS                       R36 R35 K326 ["kind"]
      691 GETTABLEKS                       R36 R21 K39 ["TextPrompt"]
      693 SETTABLEKS                       R36 R35 K343 ["field"]
      695 CALL                             R34 1 1
      696 SETTABLE                         R34 R32 R33
      697 SETTABLEKS                       R32 R31 K344 ["cases"]
      699 MOVE                             R32 R15
      700 DUPTABLE                         R33 K350 [{"kind"}]
      701 GETTABLEKS                       R34 R12 K351 ["Never"]
      703 SETTABLEKS                       R34 R33 K326 ["kind"]
      705 CALL                             R32 1 1
      706 SETTABLEKS                       R32 R31 K345 ["default"]
      708 CALL                             R30 1 1
      709 SETTABLE                         R30 R28 R29
      710 GETTABLEKS                       R29 R14 K340 ["Image"]
      712 MOVE                             R30 R15
      713 DUPTABLE                         R31 K346 [{"kind", "field", "cases", "default"}]
      714 GETTABLEKS                       R32 R12 K347 ["Branch"]
      716 SETTABLEKS                       R32 R31 K326 ["kind"]
      718 GETTABLEKS                       R32 R21 K29 ["PromptMode"]
      720 SETTABLEKS                       R32 R31 K343 ["field"]
      722 NEWTABLE                         R32 1 0
      724 GETTABLEKS                       R33 R14 K336 ["Text"]
      726 MOVE                             R34 R15
      727 DUPTABLE                         R35 K348 [{"kind", "field"}]
      728 GETTABLEKS                       R36 R12 K349 ["NonEmpty"]
      730 SETTABLEKS                       R36 R35 K326 ["kind"]
      732 GETTABLEKS                       R36 R21 K294 ["HintImage"]
      734 SETTABLEKS                       R36 R35 K343 ["field"]
      736 CALL                             R34 1 1
      737 SETTABLE                         R34 R32 R33
      738 SETTABLEKS                       R32 R31 K344 ["cases"]
      740 MOVE                             R32 R15
      741 DUPTABLE                         R33 K350 [{"kind"}]
      742 GETTABLEKS                       R34 R12 K351 ["Never"]
      744 SETTABLEKS                       R34 R33 K326 ["kind"]
      746 CALL                             R32 1 1
      747 SETTABLEKS                       R32 R31 K345 ["default"]
      749 CALL                             R30 1 1
      750 SETTABLE                         R30 R28 R29
      751 SETTABLEKS                       R28 R27 K332 ["optionBadges"]
      753 SETTABLE                         R27 R25 R26
      754 GETTABLEKS                       R26 R21 K39 ["TextPrompt"]
      756 DUPTABLE                         R27 K352 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      757 DUPTABLE                         R28 K246 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      758 SETTABLEKS                       R28 R27 K124 ["label"]
      760 GETTABLEKS                       R29 R4 K353 ["FFlagAssistantAddPlaceholderProp"]
      762 JUMPIFNOT                        R29 ; [+2]
      763 DUPTABLE                         R28 K355 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      764 JUMP                             ; [+1]
      765 LOADNIL                          R28
      766 SETTABLEKS                       R28 R27 K243 ["placeholder"]
      768 SETTABLE                         R27 R25 R26
      769 GETTABLEKS                       R26 R21 K294 ["HintImage"]
      771 DUPTABLE                         R27 K142 [{"label"}]
      772 DUPTABLE                         R28 K357 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      773 SETTABLEKS                       R28 R27 K124 ["label"]
      775 SETTABLE                         R27 R25 R26
      776 GETTABLEKS                       R26 R21 K296 ["MaxTriangles"]
      778 DUPTABLE                         R27 K142 [{"label"}]
      779 DUPTABLE                         R28 K359 [{["namespace"] = "MeshGen", ["key"] = "InputTriangleCountTitle"}]
      780 SETTABLEKS                       R28 R27 K124 ["label"]
      782 SETTABLE                         R27 R25 R26
      783 GETTABLEKS                       R26 R21 K298 ["TextPartNames"]
      785 DUPTABLE                         R27 K361 [{"label", "suggestion"}]
      786 DUPTABLE                         R28 K363 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      787 SETTABLEKS                       R28 R27 K124 ["label"]
      789 DUPTABLE                         R28 K366 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "mesh"}]
      790 GETTABLEKS                       R29 R21 K39 ["TextPrompt"]
      792 SETTABLEKS                       R29 R28 K318 ["promptKey"]
      794 GETTABLEKS                       R30 R4 K367 ["FFlagGen3dSegmentationSelector"]
      796 JUMPIFNOT                        R30 ; [+3]
      797 GETTABLEKS                       R29 R21 K302 ["SuggestSegmentation"]
      799 JUMP                             ; [+1]
      800 LOADNIL                          R29
      801 SETTABLEKS                       R29 R28 K328 ["suggestKey"]
      803 SETTABLEKS                       R28 R27 K360 ["suggestion"]
      805 SETTABLE                         R27 R25 R26
      806 GETTABLEKS                       R26 R21 K300 ["ImagePartNames"]
      808 DUPTABLE                         R27 K142 [{"label"}]
      809 DUPTABLE                         R28 K363 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      810 SETTABLEKS                       R28 R27 K124 ["label"]
      812 SETTABLE                         R27 R25 R26
      813 GETTABLEKS                       R26 R21 K302 ["SuggestSegmentation"]
      815 DUPTABLE                         R27 K368 [{"renderer"}]
      816 GETTABLEKS                       R28 R13 K302 ["SuggestSegmentation"]
      818 SETTABLEKS                       R28 R27 K145 ["renderer"]
      820 SETTABLE                         R27 R25 R26
      821 GETTABLEKS                       R26 R21 K304 ["SelectedInstanceRef"]
      823 DUPTABLE                         R27 K370 [{["label"], ["internal"] = True, ["instanceClasses"]}]
      824 DUPTABLE                         R28 K372 [{["namespace"] = "MeshGen", ["key"] = "InputBoundingBox"}]
      825 SETTABLEKS                       R28 R27 K124 ["label"]
      827 NEWTABLE                         R28 0 1
      829 GETTABLEKS                       R30 R5 K373 ["getFFlagGen3dSharedMeshGenOps"]
      831 CALL                             R30 0 1
      832 JUMPIFNOT                        R30 ; [+5]
      833 GETTABLEKS                       R29 R5 K15 ["MeshGenConstants"]
      835 GETTABLEKS                       R29 R29 K374 ["BOUNDING_BOX_INSTANCE_TYPE"]
      837 JUMP                             ; [+2]
      838 GETTABLEKS                       R29 R6 K374 ["BOUNDING_BOX_INSTANCE_TYPE"]
      840 SETLIST                          R28 R29 1 [1]
      842 SETTABLEKS                       R28 R27 K369 ["instanceClasses"]
      844 SETTABLE                         R27 R25 R26
      845 SETTABLEKS                       R25 R24 K117 ["rows"]
      847 SETTABLEKS                       R24 R20 K14 ["MeshGen"]
      849 DUPTABLE                         R21 K378 [{["Prompt"] = "prompt", ["HintImage"] = "hintImage", ["PartNames"] = "partNames", ["SuggestSegmentation"] = "suggestSegmentation"}]
      850 DUPTABLE                         R22 K381 [{["formId"] = "generate_procedural_model", ["heading"] = "/generate_procedural_model", ["row"], ["imageSelection"], ["rows"]}]
      851 SETTABLEKS                       R21 R22 K113 ["row"]
      853 GETTABLEKS                       R24 R4 K317 ["EngineFeatureAssistantGen3dImagePreview"]
      855 JUMPIFNOT                        R24 ; [+14]
      856 DUPTABLE                         R23 K382 [{"promptKey", "wizardMode", "model"}]
      857 GETTABLEKS                       R24 R21 K131 ["Prompt"]
      859 SETTABLEKS                       R24 R23 K318 ["promptKey"]
      861 GETTABLEKS                       R24 R4 K383 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      863 SETTABLEKS                       R24 R23 K319 ["wizardMode"]
      865 GETTABLEKS                       R24 R4 K324 ["FStringAssistantMeshGenImageGenModelOverride"]
      867 SETTABLEKS                       R24 R23 K320 ["model"]
      869 JUMP                             ; [+1]
      870 LOADNIL                          R23
      871 SETTABLEKS                       R23 R22 K310 ["imageSelection"]
      873 NEWTABLE                         R23 4 0
      875 GETTABLEKS                       R24 R21 K131 ["Prompt"]
      877 DUPTABLE                         R25 K352 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      878 DUPTABLE                         R26 K246 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      879 SETTABLEKS                       R26 R25 K124 ["label"]
      881 GETTABLEKS                       R27 R4 K353 ["FFlagAssistantAddPlaceholderProp"]
      883 JUMPIFNOT                        R27 ; [+2]
      884 DUPTABLE                         R26 K355 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      885 JUMP                             ; [+1]
      886 LOADNIL                          R26
      887 SETTABLEKS                       R26 R25 K243 ["placeholder"]
      889 SETTABLE                         R25 R23 R24
      890 GETTABLEKS                       R24 R21 K294 ["HintImage"]
      892 DUPTABLE                         R25 K142 [{"label"}]
      893 DUPTABLE                         R26 K357 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      894 SETTABLEKS                       R26 R25 K124 ["label"]
      896 SETTABLE                         R25 R23 R24
      897 GETTABLEKS                       R24 R21 K376 ["PartNames"]
      899 DUPTABLE                         R25 K361 [{"label", "suggestion"}]
      900 DUPTABLE                         R26 K385 [{["namespace"] = "PrimitiveGen", ["key"] = "InputPartNamesTitle"}]
      901 SETTABLEKS                       R26 R25 K124 ["label"]
      903 DUPTABLE                         R26 K387 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "procedural"}]
      904 GETTABLEKS                       R27 R21 K131 ["Prompt"]
      906 SETTABLEKS                       R27 R26 K318 ["promptKey"]
      908 GETTABLEKS                       R27 R21 K302 ["SuggestSegmentation"]
      910 SETTABLEKS                       R27 R26 K328 ["suggestKey"]
      912 SETTABLEKS                       R26 R25 K360 ["suggestion"]
      914 SETTABLE                         R25 R23 R24
      915 GETTABLEKS                       R24 R21 K302 ["SuggestSegmentation"]
      917 DUPTABLE                         R25 K368 [{"renderer"}]
      918 GETTABLEKS                       R26 R13 K302 ["SuggestSegmentation"]
      920 SETTABLEKS                       R26 R25 K145 ["renderer"]
      922 SETTABLE                         R25 R23 R24
      923 SETTABLEKS                       R23 R22 K117 ["rows"]
      925 SETTABLEKS                       R22 R20 K384 ["PrimitiveGen"]
      927 DUPTABLE                         R21 K392 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["Parts"] = "parts"}]
      928 DUPTABLE                         R22 K395 [{["formId"] = "segment_mesh", ["heading"] = "/segment_mesh", ["row"], ["confirmButton"], ["rows"]}]
      929 SETTABLEKS                       R21 R22 K113 ["row"]
      931 DUPTABLE                         R23 K397 [{["namespace"] = "SegmentMesh", ["key"] = "ConfirmButton"}]
      932 SETTABLEKS                       R23 R22 K114 ["confirmButton"]
      934 NEWTABLE                         R23 4 0
      936 GETTABLEKS                       R24 R21 K304 ["SelectedInstanceRef"]
      938 DUPTABLE                         R25 K399 [{"label", "validityBridge", "requirementMessage"}]
      939 DUPTABLE                         R26 K401 [{["namespace"] = "SegmentMesh", ["key"] = "MeshInstanceLabel"}]
      940 SETTABLEKS                       R26 R25 K124 ["label"]
      942 GETTABLEKS                       R26 R16 K31 ["SegmentMesh"]
      944 SETTABLEKS                       R26 R25 K398 ["validityBridge"]
      946 DUPTABLE                         R26 K403 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      947 SETTABLEKS                       R26 R25 K129 ["requirementMessage"]
      949 SETTABLE                         R25 R23 R24
      950 GETTABLEKS                       R25 R21 K304 ["SelectedInstanceRef"]
      952 LOADK                            R26 K404 [".isValid"]
      953 CONCAT                           R24 R25 R26
      954 DUPTABLE                         R25 K405 [{"requirementMessage"}]
      955 DUPTABLE                         R26 K403 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      956 SETTABLEKS                       R26 R25 K129 ["requirementMessage"]
      958 SETTABLE                         R25 R23 R24
      959 GETTABLEKS                       R24 R21 K388 ["SelectedInstanceRefIsValid"]
      961 DUPTABLE                         R25 K405 [{"requirementMessage"}]
      962 DUPTABLE                         R26 K403 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      963 SETTABLEKS                       R26 R25 K129 ["requirementMessage"]
      965 SETTABLE                         R25 R23 R24
      966 GETTABLEKS                       R24 R21 K390 ["Parts"]
      968 DUPTABLE                         R25 K406 [{["label"], ["multiLine"] = False}]
      969 DUPTABLE                         R26 K363 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      970 SETTABLEKS                       R26 R25 K124 ["label"]
      972 SETTABLE                         R25 R23 R24
      973 SETTABLEKS                       R23 R22 K117 ["rows"]
      975 SETTABLEKS                       R22 R20 K31 ["SegmentMesh"]
      977 DUPTABLE                         R21 K411 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["Mode"] = "mode", ["AutoSelectView"] = "autoSelectView"}]
      978 GETTABLEKS                       R22 R5 K412 ["getFFlagGen3dTextureGenBatchedPreview"]
      980 CALL                             R22 0 1
      981 GETTABLEKS                       R23 R4 K413 ["FFlagAssistantTextureGenModelSelection"]
      983 JUMPIFNOT                        R23 ; [+1]
      984 NOT                              R23 R22
      985 MOVE                             R24 R22
      986 JUMPIFNOT                        R24 ; [+2]
      987 GETTABLEKS                       R24 R4 K414 ["FFlagAssistantTextureGenAutoSelectView"]
      989 DUPTABLE                         R25 K417 [{["formId"] = "generate_texture", ["heading"] = "/generate_texture", ["row"], ["description"], ["confirmButton"], ["imageSelection"], ["rows"]}]
      990 SETTABLEKS                       R21 R25 K113 ["row"]
      992 DUPTABLE                         R26 K418 [{["namespace"] = "TextureGen", ["key"] = "InputDisclaimer"}]
      993 SETTABLEKS                       R26 R25 K309 ["description"]
      995 DUPTABLE                         R26 K420 [{["namespace"] = "TextureGen", ["key"] = "InputGenerateTexture"}]
      996 SETTABLEKS                       R26 R25 K114 ["confirmButton"]
      998 GETTABLEKS                       R27 R4 K317 ["EngineFeatureAssistantGen3dImagePreview"]
     1000 JUMPIFNOT                        R27 ; [+43]
     1001 DUPTABLE                         R26 K426 [{["promptKey"], ["wizardMode"], ["model"], ["resolveSeedImageFromSelectedInstance"] = True, ["skipField"], ["skipValues"], ["useTexturePreview"], ["autoSelectViewField"]}]
     1002 GETTABLEKS                       R27 R21 K39 ["TextPrompt"]
     1004 SETTABLEKS                       R27 R26 K318 ["promptKey"]
     1006 GETTABLEKS                       R27 R4 K427 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
     1008 SETTABLEKS                       R27 R26 K319 ["wizardMode"]
     1010 GETTABLEKS                       R27 R4 K324 ["FStringAssistantMeshGenImageGenModelOverride"]
     1012 SETTABLEKS                       R27 R26 K320 ["model"]
     1014 JUMPIFNOT                        R23 ; [+3]
     1015 GETTABLEKS                       R27 R21 K407 ["Mode"]
     1017 JUMP                             ; [+1]
     1018 LOADNIL                          R27
     1019 SETTABLEKS                       R27 R26 K422 ["skipField"]
     1021 JUMPIFNOT                        R23 ; [+9]
     1022 NEWTABLE                         R27 0 1
     1024 GETTABLEKS                       R28 R9 K428 ["MODE"]
     1026 GETTABLEKS                       R28 R28 K290 ["Quality"]
     1028 SETLIST                          R27 R28 1 [1]
     1030 JUMP                             ; [+1]
     1031 LOADNIL                          R27
     1032 SETTABLEKS                       R27 R26 K423 ["skipValues"]
     1034 SETTABLEKS                       R22 R26 K424 ["useTexturePreview"]
     1036 JUMPIFNOT                        R24 ; [+3]
     1037 GETTABLEKS                       R27 R21 K409 ["AutoSelectView"]
     1039 JUMP                             ; [+1]
     1040 LOADNIL                          R27
     1041 SETTABLEKS                       R27 R26 K425 ["autoSelectViewField"]
     1043 JUMP                             ; [+1]
     1044 LOADNIL                          R26
     1045 SETTABLEKS                       R26 R25 K310 ["imageSelection"]
     1047 NEWTABLE                         R26 8 0
     1049 GETTABLEKS                       R27 R21 K304 ["SelectedInstanceRef"]
     1051 DUPTABLE                         R28 K429 [{"label", "instanceClasses", "validityBridge", "requirementMessage"}]
     1052 DUPTABLE                         R29 K431 [{["namespace"] = "TextureGen", ["key"] = "InputSelectedMesh"}]
     1053 SETTABLEKS                       R29 R28 K124 ["label"]
     1055 NEWTABLE                         R29 0 2
     1057 LOADK                            R30 K432 ["MeshPart"]
     1058 LOADK                            R31 K433 ["Model"]
     1059 SETLIST                          R29 R30 2 [1]
     1061 SETTABLEKS                       R29 R28 K369 ["instanceClasses"]
     1063 GETTABLEKS                       R29 R16 K21 ["TextureGen"]
     1065 SETTABLEKS                       R29 R28 K398 ["validityBridge"]
     1067 DUPTABLE                         R29 K403 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1068 SETTABLEKS                       R29 R28 K129 ["requirementMessage"]
     1070 SETTABLE                         R28 R26 R27
     1071 GETTABLEKS                       R28 R21 K304 ["SelectedInstanceRef"]
     1073 LOADK                            R29 K404 [".isValid"]
     1074 CONCAT                           R27 R28 R29
     1075 DUPTABLE                         R28 K405 [{"requirementMessage"}]
     1076 DUPTABLE                         R29 K403 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1077 SETTABLEKS                       R29 R28 K129 ["requirementMessage"]
     1079 SETTABLE                         R28 R26 R27
     1080 GETTABLEKS                       R27 R21 K388 ["SelectedInstanceRefIsValid"]
     1082 DUPTABLE                         R28 K405 [{"requirementMessage"}]
     1083 DUPTABLE                         R29 K403 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1084 SETTABLEKS                       R29 R28 K129 ["requirementMessage"]
     1086 SETTABLE                         R28 R26 R27
     1087 GETTABLEKS                       R27 R21 K39 ["TextPrompt"]
     1089 DUPTABLE                         R28 K352 [{["label"], ["multiLine"] = True, ["placeholder"]}]
     1090 DUPTABLE                         R29 K434 [{["namespace"] = "TextureGen", ["key"] = "InputPromptTitle"}]
     1091 SETTABLEKS                       R29 R28 K124 ["label"]
     1093 GETTABLEKS                       R30 R4 K353 ["FFlagAssistantAddPlaceholderProp"]
     1095 JUMPIFNOT                        R30 ; [+2]
     1096 DUPTABLE                         R29 K435 [{["namespace"] = "TextureGen", ["key"] = "InputPromptPlaceholder"}]
     1097 JUMP                             ; [+1]
     1098 LOADNIL                          R29
     1099 SETTABLEKS                       R29 R28 K243 ["placeholder"]
     1101 SETTABLE                         R28 R26 R27
     1102 GETTABLEKS                       R27 R21 K294 ["HintImage"]
     1104 DUPTABLE                         R28 K142 [{"label"}]
     1105 DUPTABLE                         R29 K436 [{["namespace"] = "TextureGen", ["key"] = "InputHintImageTitle"}]
     1106 SETTABLEKS                       R29 R28 K124 ["label"]
     1108 SETTABLE                         R28 R26 R27
     1109 GETTABLEKS                       R27 R21 K407 ["Mode"]
     1111 DUPTABLE                         R28 K437 [{"label", "optionLabels", "infoPopover"}]
     1112 DUPTABLE                         R29 K439 [{["namespace"] = "TextureGen", ["key"] = "ModelSelectorTitle"}]
     1113 SETTABLEKS                       R29 R28 K124 ["label"]
     1115 NEWTABLE                         R29 2 0
     1117 GETTABLEKS                       R30 R9 K428 ["MODE"]
     1119 GETTABLEKS                       R30 R30 K440 ["Fast"]
     1121 DUPTABLE                         R31 K442 [{["namespace"] = "TextureGen", ["key"] = "ModelFast"}]
     1122 SETTABLE                         R31 R29 R30
     1123 GETTABLEKS                       R30 R9 K428 ["MODE"]
     1125 GETTABLEKS                       R30 R30 K290 ["Quality"]
     1127 DUPTABLE                         R31 K444 [{["namespace"] = "TextureGen", ["key"] = "ModelQuality"}]
     1128 SETTABLE                         R31 R29 R30
     1129 SETTABLEKS                       R29 R28 K125 ["optionLabels"]
     1131 GETTABLEKS                       R30 R4 K413 ["FFlagAssistantTextureGenModelSelection"]
     1133 JUMPIFNOT                        R30 ; [+5]
     1134 DUPTABLE                         R29 K219 [{"body"}]
     1135 DUPTABLE                         R30 K446 [{["namespace"] = "TextureGen", ["key"] = "ModelQualityInfo"}]
     1136 SETTABLEKS                       R30 R29 K218 ["body"]
     1138 JUMP                             ; [+1]
     1139 LOADNIL                          R29
     1140 SETTABLEKS                       R29 R28 K215 ["infoPopover"]
     1142 SETTABLE                         R28 R26 R27
     1143 GETTABLEKS                       R27 R21 K409 ["AutoSelectView"]
     1145 DUPTABLE                         R28 K447 [{"label", "renderer"}]
     1146 DUPTABLE                         R29 K449 [{["namespace"] = "TextureGen", ["key"] = "AutoSelectViewLabel"}]
     1147 SETTABLEKS                       R29 R28 K124 ["label"]
     1149 GETTABLEKS                       R29 R13 K450 ["LabeledBoolean"]
     1151 SETTABLEKS                       R29 R28 K145 ["renderer"]
     1153 SETTABLE                         R28 R26 R27
     1154 SETTABLEKS                       R26 R25 K117 ["rows"]
     1156 SETTABLEKS                       R25 R20 K21 ["TextureGen"]
     1158 SETTABLEKS                       R20 R0 K451 ["Configs"]
     1160 SETTABLEKS                       R16 R0 K452 ["ValidityBridge"]
     1162 SETTABLEKS                       R17 R0 K453 ["ValueChangedAction"]
     1164 SETTABLEKS                       R18 R0 K454 ["LiveChannelBridge"]
     1166 NEWTABLE                         R21 0 0
     1168 GETIMPORT                        R22 K456 [pairs]
     1170 MOVE                             R23 R20
     1171 CALL                             R22 1 3
     1172 FORGPREP_NEXT                    R22
     1173 GETTABLEKS                       R27 R26 K108 ["formId"]
     1175 SETTABLE                         R26 R21 R27
     1176 FORGLOOP                         R22 2 ; [-4]
     1178 LOADNIL                          R22
     1179 NEWCLOSURE                       R23 P6
     1180 CAPTURE                          REF R22
     1181 CAPTURE                          VAL R21
     1182 SETTABLEKS                       R23 R0 K457 ["getForm"]
     1184 DUPCLOSURE                       R23 K458 [PROTO_7]
     1185 CAPTURE                          VAL R0
     1186 SETTABLEKS                       R23 R0 K459 ["getSubmittedFields"]
     1188 DUPCLOSURE                       R23 K460 [PROTO_8]
     1189 CAPTURE                          VAL R0
     1190 CAPTURE                          VAL R19
     1191 SETTABLEKS                       R23 R0 K461 ["getRowPresentation"]
     1193 NEWCLOSURE                       R23 P9
     1194 CAPTURE                          REF R22
     1195 SETTABLEKS                       R23 R0 K462 ["_registerTestConfig"]
     1197 NEWCLOSURE                       R23 P10
     1198 CAPTURE                          REF R22
     1199 SETTABLEKS                       R23 R0 K463 ["_clearTestConfigs"]
     1201 CLOSEUPVALS                      R22
     1202 RETURN                           R0 1
