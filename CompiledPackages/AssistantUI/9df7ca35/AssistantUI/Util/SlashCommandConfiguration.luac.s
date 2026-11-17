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
      607 JUMPIFNOT                        R26 ; [+31]
      608 DUPTABLE                         R25 K322 [{"promptKey", "wizardMode", "model", "segmentationFold"}]
      609 GETTABLEKS                       R26 R21 K39 ["TextPrompt"]
      611 SETTABLEKS                       R26 R25 K318 ["promptKey"]
      613 GETTABLEKS                       R26 R4 K323 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      615 SETTABLEKS                       R26 R25 K319 ["wizardMode"]
      617 GETTABLEKS                       R26 R4 K324 ["FStringAssistantMeshGenImageGenModelOverride"]
      619 SETTABLEKS                       R26 R25 K320 ["model"]
      621 DUPTABLE                         R26 K328 [{"kind", "partNamesKey", "suggestKey"}]
      622 GETTABLEKS                       R27 R3 K329 ["SEGMENTATION_FOLD_KIND"]
      624 GETTABLEKS                       R27 R27 K330 ["Gen3D"]
      626 SETTABLEKS                       R27 R26 K325 ["kind"]
      628 GETTABLEKS                       R27 R21 K298 ["TextPartNames"]
      630 SETTABLEKS                       R27 R26 K326 ["partNamesKey"]
      632 GETTABLEKS                       R27 R21 K302 ["SuggestSegmentation"]
      634 SETTABLEKS                       R27 R26 K327 ["suggestKey"]
      636 SETTABLEKS                       R26 R25 K321 ["segmentationFold"]
      638 JUMP                             ; [+1]
      639 LOADNIL                          R25
      640 SETTABLEKS                       R25 R24 K310 ["imageSelection"]
      642 NEWTABLE                         R25 8 0
      644 GETTABLEKS                       R26 R21 K29 ["PromptMode"]
      646 DUPTABLE                         R27 K332 [{"label", "optionLabels", "optionBadges"}]
      647 DUPTABLE                         R28 K334 [{["namespace"] = "MeshGen", ["key"] = "InputPromptModeTitle"}]
      648 SETTABLEKS                       R28 R27 K124 ["label"]
      650 NEWTABLE                         R28 2 0
      652 GETTABLEKS                       R29 R14 K335 ["Text"]
      654 DUPTABLE                         R30 K338 [{["namespace"] = "Gen3d", ["key"] = "PromptModeText"}]
      655 SETTABLE                         R30 R28 R29
      656 GETTABLEKS                       R29 R14 K339 ["Image"]
      658 DUPTABLE                         R30 K341 [{["namespace"] = "Gen3d", ["key"] = "PromptModeImage"}]
      659 SETTABLE                         R30 R28 R29
      660 SETTABLEKS                       R28 R27 K125 ["optionLabels"]
      662 NEWTABLE                         R28 2 0
      664 GETTABLEKS                       R29 R14 K335 ["Text"]
      666 MOVE                             R30 R15
      667 DUPTABLE                         R31 K345 [{"kind", "field", "cases", "default"}]
      668 GETTABLEKS                       R32 R12 K346 ["Branch"]
      670 SETTABLEKS                       R32 R31 K325 ["kind"]
      672 GETTABLEKS                       R32 R21 K29 ["PromptMode"]
      674 SETTABLEKS                       R32 R31 K342 ["field"]
      676 NEWTABLE                         R32 1 0
      678 GETTABLEKS                       R33 R14 K339 ["Image"]
      680 MOVE                             R34 R15
      681 DUPTABLE                         R35 K347 [{"kind", "field"}]
      682 GETTABLEKS                       R36 R12 K348 ["NonEmpty"]
      684 SETTABLEKS                       R36 R35 K325 ["kind"]
      686 GETTABLEKS                       R36 R21 K39 ["TextPrompt"]
      688 SETTABLEKS                       R36 R35 K342 ["field"]
      690 CALL                             R34 1 1
      691 SETTABLE                         R34 R32 R33
      692 SETTABLEKS                       R32 R31 K343 ["cases"]
      694 MOVE                             R32 R15
      695 DUPTABLE                         R33 K349 [{"kind"}]
      696 GETTABLEKS                       R34 R12 K350 ["Never"]
      698 SETTABLEKS                       R34 R33 K325 ["kind"]
      700 CALL                             R32 1 1
      701 SETTABLEKS                       R32 R31 K344 ["default"]
      703 CALL                             R30 1 1
      704 SETTABLE                         R30 R28 R29
      705 GETTABLEKS                       R29 R14 K339 ["Image"]
      707 MOVE                             R30 R15
      708 DUPTABLE                         R31 K345 [{"kind", "field", "cases", "default"}]
      709 GETTABLEKS                       R32 R12 K346 ["Branch"]
      711 SETTABLEKS                       R32 R31 K325 ["kind"]
      713 GETTABLEKS                       R32 R21 K29 ["PromptMode"]
      715 SETTABLEKS                       R32 R31 K342 ["field"]
      717 NEWTABLE                         R32 1 0
      719 GETTABLEKS                       R33 R14 K335 ["Text"]
      721 MOVE                             R34 R15
      722 DUPTABLE                         R35 K347 [{"kind", "field"}]
      723 GETTABLEKS                       R36 R12 K348 ["NonEmpty"]
      725 SETTABLEKS                       R36 R35 K325 ["kind"]
      727 GETTABLEKS                       R36 R21 K294 ["HintImage"]
      729 SETTABLEKS                       R36 R35 K342 ["field"]
      731 CALL                             R34 1 1
      732 SETTABLE                         R34 R32 R33
      733 SETTABLEKS                       R32 R31 K343 ["cases"]
      735 MOVE                             R32 R15
      736 DUPTABLE                         R33 K349 [{"kind"}]
      737 GETTABLEKS                       R34 R12 K350 ["Never"]
      739 SETTABLEKS                       R34 R33 K325 ["kind"]
      741 CALL                             R32 1 1
      742 SETTABLEKS                       R32 R31 K344 ["default"]
      744 CALL                             R30 1 1
      745 SETTABLE                         R30 R28 R29
      746 SETTABLEKS                       R28 R27 K331 ["optionBadges"]
      748 SETTABLE                         R27 R25 R26
      749 GETTABLEKS                       R26 R21 K39 ["TextPrompt"]
      751 DUPTABLE                         R27 K351 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      752 DUPTABLE                         R28 K246 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      753 SETTABLEKS                       R28 R27 K124 ["label"]
      755 DUPTABLE                         R28 K353 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      756 SETTABLEKS                       R28 R27 K243 ["placeholder"]
      758 SETTABLE                         R27 R25 R26
      759 GETTABLEKS                       R26 R21 K294 ["HintImage"]
      761 DUPTABLE                         R27 K142 [{"label"}]
      762 DUPTABLE                         R28 K355 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      763 SETTABLEKS                       R28 R27 K124 ["label"]
      765 SETTABLE                         R27 R25 R26
      766 GETTABLEKS                       R26 R21 K296 ["MaxTriangles"]
      768 DUPTABLE                         R27 K142 [{"label"}]
      769 DUPTABLE                         R28 K357 [{["namespace"] = "MeshGen", ["key"] = "InputTriangleCountTitle"}]
      770 SETTABLEKS                       R28 R27 K124 ["label"]
      772 SETTABLE                         R27 R25 R26
      773 GETTABLEKS                       R26 R21 K298 ["TextPartNames"]
      775 DUPTABLE                         R27 K359 [{"label", "suggestion"}]
      776 DUPTABLE                         R28 K361 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      777 SETTABLEKS                       R28 R27 K124 ["label"]
      779 DUPTABLE                         R28 K364 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "mesh"}]
      780 GETTABLEKS                       R29 R21 K39 ["TextPrompt"]
      782 SETTABLEKS                       R29 R28 K318 ["promptKey"]
      784 GETTABLEKS                       R29 R21 K302 ["SuggestSegmentation"]
      786 SETTABLEKS                       R29 R28 K327 ["suggestKey"]
      788 SETTABLEKS                       R28 R27 K358 ["suggestion"]
      790 SETTABLE                         R27 R25 R26
      791 GETTABLEKS                       R26 R21 K300 ["ImagePartNames"]
      793 DUPTABLE                         R27 K142 [{"label"}]
      794 DUPTABLE                         R28 K361 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      795 SETTABLEKS                       R28 R27 K124 ["label"]
      797 SETTABLE                         R27 R25 R26
      798 GETTABLEKS                       R26 R21 K302 ["SuggestSegmentation"]
      800 DUPTABLE                         R27 K365 [{"renderer"}]
      801 GETTABLEKS                       R28 R13 K302 ["SuggestSegmentation"]
      803 SETTABLEKS                       R28 R27 K145 ["renderer"]
      805 SETTABLE                         R27 R25 R26
      806 GETTABLEKS                       R26 R21 K304 ["SelectedInstanceRef"]
      808 DUPTABLE                         R27 K367 [{["label"], ["internal"] = True, ["instanceClasses"]}]
      809 DUPTABLE                         R28 K369 [{["namespace"] = "MeshGen", ["key"] = "InputBoundingBox"}]
      810 SETTABLEKS                       R28 R27 K124 ["label"]
      812 NEWTABLE                         R28 0 1
      814 GETTABLEKS                       R30 R5 K370 ["getFFlagGen3dSharedMeshGenOps"]
      816 CALL                             R30 0 1
      817 JUMPIFNOT                        R30 ; [+5]
      818 GETTABLEKS                       R29 R5 K15 ["MeshGenConstants"]
      820 GETTABLEKS                       R29 R29 K371 ["BOUNDING_BOX_INSTANCE_TYPE"]
      822 JUMP                             ; [+2]
      823 GETTABLEKS                       R29 R6 K371 ["BOUNDING_BOX_INSTANCE_TYPE"]
      825 SETLIST                          R28 R29 1 [1]
      827 SETTABLEKS                       R28 R27 K366 ["instanceClasses"]
      829 SETTABLE                         R27 R25 R26
      830 SETTABLEKS                       R25 R24 K117 ["rows"]
      832 SETTABLEKS                       R24 R20 K14 ["MeshGen"]
      834 DUPTABLE                         R21 K375 [{["Prompt"] = "prompt", ["HintImage"] = "hintImage", ["PartNames"] = "partNames", ["SuggestSegmentation"] = "suggestSegmentation"}]
      835 DUPTABLE                         R22 K378 [{["formId"] = "generate_procedural_model", ["heading"] = "/generate_procedural_model", ["row"], ["imageSelection"], ["rows"]}]
      836 SETTABLEKS                       R21 R22 K113 ["row"]
      838 GETTABLEKS                       R24 R4 K317 ["EngineFeatureAssistantGen3dImagePreview"]
      840 JUMPIFNOT                        R24 ; [+14]
      841 DUPTABLE                         R23 K379 [{"promptKey", "wizardMode", "model"}]
      842 GETTABLEKS                       R24 R21 K131 ["Prompt"]
      844 SETTABLEKS                       R24 R23 K318 ["promptKey"]
      846 GETTABLEKS                       R24 R4 K380 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      848 SETTABLEKS                       R24 R23 K319 ["wizardMode"]
      850 GETTABLEKS                       R24 R4 K324 ["FStringAssistantMeshGenImageGenModelOverride"]
      852 SETTABLEKS                       R24 R23 K320 ["model"]
      854 JUMP                             ; [+1]
      855 LOADNIL                          R23
      856 SETTABLEKS                       R23 R22 K310 ["imageSelection"]
      858 NEWTABLE                         R23 4 0
      860 GETTABLEKS                       R24 R21 K131 ["Prompt"]
      862 DUPTABLE                         R25 K351 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      863 DUPTABLE                         R26 K246 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      864 SETTABLEKS                       R26 R25 K124 ["label"]
      866 DUPTABLE                         R26 K353 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      867 SETTABLEKS                       R26 R25 K243 ["placeholder"]
      869 SETTABLE                         R25 R23 R24
      870 GETTABLEKS                       R24 R21 K294 ["HintImage"]
      872 DUPTABLE                         R25 K142 [{"label"}]
      873 DUPTABLE                         R26 K355 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      874 SETTABLEKS                       R26 R25 K124 ["label"]
      876 SETTABLE                         R25 R23 R24
      877 GETTABLEKS                       R24 R21 K373 ["PartNames"]
      879 DUPTABLE                         R25 K359 [{"label", "suggestion"}]
      880 DUPTABLE                         R26 K382 [{["namespace"] = "PrimitiveGen", ["key"] = "InputPartNamesTitle"}]
      881 SETTABLEKS                       R26 R25 K124 ["label"]
      883 DUPTABLE                         R26 K384 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "procedural"}]
      884 GETTABLEKS                       R27 R21 K131 ["Prompt"]
      886 SETTABLEKS                       R27 R26 K318 ["promptKey"]
      888 GETTABLEKS                       R27 R21 K302 ["SuggestSegmentation"]
      890 SETTABLEKS                       R27 R26 K327 ["suggestKey"]
      892 SETTABLEKS                       R26 R25 K358 ["suggestion"]
      894 SETTABLE                         R25 R23 R24
      895 GETTABLEKS                       R24 R21 K302 ["SuggestSegmentation"]
      897 DUPTABLE                         R25 K365 [{"renderer"}]
      898 GETTABLEKS                       R26 R13 K302 ["SuggestSegmentation"]
      900 SETTABLEKS                       R26 R25 K145 ["renderer"]
      902 SETTABLE                         R25 R23 R24
      903 SETTABLEKS                       R23 R22 K117 ["rows"]
      905 SETTABLEKS                       R22 R20 K381 ["PrimitiveGen"]
      907 DUPTABLE                         R21 K389 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["Parts"] = "parts"}]
      908 DUPTABLE                         R22 K392 [{["formId"] = "segment_mesh", ["heading"] = "/segment_mesh", ["row"], ["confirmButton"], ["rows"]}]
      909 SETTABLEKS                       R21 R22 K113 ["row"]
      911 DUPTABLE                         R23 K394 [{["namespace"] = "SegmentMesh", ["key"] = "ConfirmButton"}]
      912 SETTABLEKS                       R23 R22 K114 ["confirmButton"]
      914 NEWTABLE                         R23 4 0
      916 GETTABLEKS                       R24 R21 K304 ["SelectedInstanceRef"]
      918 DUPTABLE                         R25 K396 [{"label", "validityBridge", "requirementMessage"}]
      919 DUPTABLE                         R26 K398 [{["namespace"] = "SegmentMesh", ["key"] = "MeshInstanceLabel"}]
      920 SETTABLEKS                       R26 R25 K124 ["label"]
      922 GETTABLEKS                       R26 R16 K31 ["SegmentMesh"]
      924 SETTABLEKS                       R26 R25 K395 ["validityBridge"]
      926 DUPTABLE                         R26 K400 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      927 SETTABLEKS                       R26 R25 K129 ["requirementMessage"]
      929 SETTABLE                         R25 R23 R24
      930 GETTABLEKS                       R25 R21 K304 ["SelectedInstanceRef"]
      932 LOADK                            R26 K401 [".isValid"]
      933 CONCAT                           R24 R25 R26
      934 DUPTABLE                         R25 K402 [{"requirementMessage"}]
      935 DUPTABLE                         R26 K400 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      936 SETTABLEKS                       R26 R25 K129 ["requirementMessage"]
      938 SETTABLE                         R25 R23 R24
      939 GETTABLEKS                       R24 R21 K385 ["SelectedInstanceRefIsValid"]
      941 DUPTABLE                         R25 K402 [{"requirementMessage"}]
      942 DUPTABLE                         R26 K400 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      943 SETTABLEKS                       R26 R25 K129 ["requirementMessage"]
      945 SETTABLE                         R25 R23 R24
      946 GETTABLEKS                       R24 R21 K387 ["Parts"]
      948 DUPTABLE                         R25 K403 [{["label"], ["multiLine"] = False}]
      949 DUPTABLE                         R26 K361 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      950 SETTABLEKS                       R26 R25 K124 ["label"]
      952 SETTABLE                         R25 R23 R24
      953 SETTABLEKS                       R23 R22 K117 ["rows"]
      955 SETTABLEKS                       R22 R20 K31 ["SegmentMesh"]
      957 DUPTABLE                         R21 K408 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["Mode"] = "mode", ["AutoSelectView"] = "autoSelectView"}]
      958 GETTABLEKS                       R22 R5 K409 ["getFFlagGen3dTextureGenBatchedPreview"]
      960 CALL                             R22 0 1
      961 GETTABLEKS                       R23 R4 K410 ["FFlagAssistantTextureGenModelSelection"]
      963 JUMPIFNOT                        R23 ; [+1]
      964 NOT                              R23 R22
      965 MOVE                             R24 R22
      966 JUMPIFNOT                        R24 ; [+2]
      967 GETTABLEKS                       R24 R4 K411 ["FFlagAssistantTextureGenAutoSelectView"]
      969 DUPTABLE                         R25 K414 [{["formId"] = "generate_texture", ["heading"] = "/generate_texture", ["row"], ["description"], ["confirmButton"], ["imageSelection"], ["rows"]}]
      970 SETTABLEKS                       R21 R25 K113 ["row"]
      972 DUPTABLE                         R26 K415 [{["namespace"] = "TextureGen", ["key"] = "InputDisclaimer"}]
      973 SETTABLEKS                       R26 R25 K309 ["description"]
      975 DUPTABLE                         R26 K417 [{["namespace"] = "TextureGen", ["key"] = "InputGenerateTexture"}]
      976 SETTABLEKS                       R26 R25 K114 ["confirmButton"]
      978 GETTABLEKS                       R27 R4 K317 ["EngineFeatureAssistantGen3dImagePreview"]
      980 JUMPIFNOT                        R27 ; [+43]
      981 DUPTABLE                         R26 K423 [{["promptKey"], ["wizardMode"], ["model"], ["resolveSeedImageFromSelectedInstance"] = True, ["skipField"], ["skipValues"], ["useTexturePreview"], ["autoSelectViewField"]}]
      982 GETTABLEKS                       R27 R21 K39 ["TextPrompt"]
      984 SETTABLEKS                       R27 R26 K318 ["promptKey"]
      986 GETTABLEKS                       R27 R4 K424 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
      988 SETTABLEKS                       R27 R26 K319 ["wizardMode"]
      990 GETTABLEKS                       R27 R4 K324 ["FStringAssistantMeshGenImageGenModelOverride"]
      992 SETTABLEKS                       R27 R26 K320 ["model"]
      994 JUMPIFNOT                        R23 ; [+3]
      995 GETTABLEKS                       R27 R21 K404 ["Mode"]
      997 JUMP                             ; [+1]
      998 LOADNIL                          R27
      999 SETTABLEKS                       R27 R26 K419 ["skipField"]
     1001 JUMPIFNOT                        R23 ; [+9]
     1002 NEWTABLE                         R27 0 1
     1004 GETTABLEKS                       R28 R9 K425 ["MODE"]
     1006 GETTABLEKS                       R28 R28 K290 ["Quality"]
     1008 SETLIST                          R27 R28 1 [1]
     1010 JUMP                             ; [+1]
     1011 LOADNIL                          R27
     1012 SETTABLEKS                       R27 R26 K420 ["skipValues"]
     1014 SETTABLEKS                       R22 R26 K421 ["useTexturePreview"]
     1016 JUMPIFNOT                        R24 ; [+3]
     1017 GETTABLEKS                       R27 R21 K406 ["AutoSelectView"]
     1019 JUMP                             ; [+1]
     1020 LOADNIL                          R27
     1021 SETTABLEKS                       R27 R26 K422 ["autoSelectViewField"]
     1023 JUMP                             ; [+1]
     1024 LOADNIL                          R26
     1025 SETTABLEKS                       R26 R25 K310 ["imageSelection"]
     1027 NEWTABLE                         R26 8 0
     1029 GETTABLEKS                       R27 R21 K304 ["SelectedInstanceRef"]
     1031 DUPTABLE                         R28 K426 [{"label", "instanceClasses", "validityBridge", "requirementMessage"}]
     1032 DUPTABLE                         R29 K428 [{["namespace"] = "TextureGen", ["key"] = "InputSelectedMesh"}]
     1033 SETTABLEKS                       R29 R28 K124 ["label"]
     1035 NEWTABLE                         R29 0 2
     1037 LOADK                            R30 K429 ["MeshPart"]
     1038 LOADK                            R31 K430 ["Model"]
     1039 SETLIST                          R29 R30 2 [1]
     1041 SETTABLEKS                       R29 R28 K366 ["instanceClasses"]
     1043 GETTABLEKS                       R29 R16 K21 ["TextureGen"]
     1045 SETTABLEKS                       R29 R28 K395 ["validityBridge"]
     1047 DUPTABLE                         R29 K400 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1048 SETTABLEKS                       R29 R28 K129 ["requirementMessage"]
     1050 SETTABLE                         R28 R26 R27
     1051 GETTABLEKS                       R28 R21 K304 ["SelectedInstanceRef"]
     1053 LOADK                            R29 K401 [".isValid"]
     1054 CONCAT                           R27 R28 R29
     1055 DUPTABLE                         R28 K402 [{"requirementMessage"}]
     1056 DUPTABLE                         R29 K400 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1057 SETTABLEKS                       R29 R28 K129 ["requirementMessage"]
     1059 SETTABLE                         R28 R26 R27
     1060 GETTABLEKS                       R27 R21 K385 ["SelectedInstanceRefIsValid"]
     1062 DUPTABLE                         R28 K402 [{"requirementMessage"}]
     1063 DUPTABLE                         R29 K400 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1064 SETTABLEKS                       R29 R28 K129 ["requirementMessage"]
     1066 SETTABLE                         R28 R26 R27
     1067 GETTABLEKS                       R27 R21 K39 ["TextPrompt"]
     1069 DUPTABLE                         R28 K351 [{["label"], ["multiLine"] = True, ["placeholder"]}]
     1070 DUPTABLE                         R29 K431 [{["namespace"] = "TextureGen", ["key"] = "InputPromptTitle"}]
     1071 SETTABLEKS                       R29 R28 K124 ["label"]
     1073 DUPTABLE                         R29 K432 [{["namespace"] = "TextureGen", ["key"] = "InputPromptPlaceholder"}]
     1074 SETTABLEKS                       R29 R28 K243 ["placeholder"]
     1076 SETTABLE                         R28 R26 R27
     1077 GETTABLEKS                       R27 R21 K294 ["HintImage"]
     1079 DUPTABLE                         R28 K142 [{"label"}]
     1080 DUPTABLE                         R29 K433 [{["namespace"] = "TextureGen", ["key"] = "InputHintImageTitle"}]
     1081 SETTABLEKS                       R29 R28 K124 ["label"]
     1083 SETTABLE                         R28 R26 R27
     1084 GETTABLEKS                       R27 R21 K404 ["Mode"]
     1086 DUPTABLE                         R28 K434 [{"label", "optionLabels", "infoPopover"}]
     1087 DUPTABLE                         R29 K436 [{["namespace"] = "TextureGen", ["key"] = "ModelSelectorTitle"}]
     1088 SETTABLEKS                       R29 R28 K124 ["label"]
     1090 NEWTABLE                         R29 2 0
     1092 GETTABLEKS                       R30 R9 K425 ["MODE"]
     1094 GETTABLEKS                       R30 R30 K437 ["Fast"]
     1096 DUPTABLE                         R31 K439 [{["namespace"] = "TextureGen", ["key"] = "ModelFast"}]
     1097 SETTABLE                         R31 R29 R30
     1098 GETTABLEKS                       R30 R9 K425 ["MODE"]
     1100 GETTABLEKS                       R30 R30 K290 ["Quality"]
     1102 DUPTABLE                         R31 K441 [{["namespace"] = "TextureGen", ["key"] = "ModelQuality"}]
     1103 SETTABLE                         R31 R29 R30
     1104 SETTABLEKS                       R29 R28 K125 ["optionLabels"]
     1106 GETTABLEKS                       R30 R4 K410 ["FFlagAssistantTextureGenModelSelection"]
     1108 JUMPIFNOT                        R30 ; [+5]
     1109 DUPTABLE                         R29 K219 [{"body"}]
     1110 DUPTABLE                         R30 K443 [{["namespace"] = "TextureGen", ["key"] = "ModelQualityInfo"}]
     1111 SETTABLEKS                       R30 R29 K218 ["body"]
     1113 JUMP                             ; [+1]
     1114 LOADNIL                          R29
     1115 SETTABLEKS                       R29 R28 K215 ["infoPopover"]
     1117 SETTABLE                         R28 R26 R27
     1118 GETTABLEKS                       R27 R21 K406 ["AutoSelectView"]
     1120 DUPTABLE                         R28 K444 [{"label", "renderer"}]
     1121 DUPTABLE                         R29 K446 [{["namespace"] = "TextureGen", ["key"] = "AutoSelectViewLabel"}]
     1122 SETTABLEKS                       R29 R28 K124 ["label"]
     1124 GETTABLEKS                       R29 R13 K447 ["LabeledBoolean"]
     1126 SETTABLEKS                       R29 R28 K145 ["renderer"]
     1128 SETTABLE                         R28 R26 R27
     1129 SETTABLEKS                       R26 R25 K117 ["rows"]
     1131 SETTABLEKS                       R25 R20 K21 ["TextureGen"]
     1133 SETTABLEKS                       R20 R0 K448 ["Configs"]
     1135 SETTABLEKS                       R16 R0 K449 ["ValidityBridge"]
     1137 SETTABLEKS                       R17 R0 K450 ["ValueChangedAction"]
     1139 SETTABLEKS                       R18 R0 K451 ["LiveChannelBridge"]
     1141 NEWTABLE                         R21 0 0
     1143 GETIMPORT                        R22 K453 [pairs]
     1145 MOVE                             R23 R20
     1146 CALL                             R22 1 3
     1147 FORGPREP_NEXT                    R22
     1148 GETTABLEKS                       R27 R26 K108 ["formId"]
     1150 SETTABLE                         R26 R21 R27
     1151 FORGLOOP                         R22 2 ; [-4]
     1153 LOADNIL                          R22
     1154 NEWCLOSURE                       R23 P6
     1155 CAPTURE                          REF R22
     1156 CAPTURE                          VAL R21
     1157 SETTABLEKS                       R23 R0 K454 ["getForm"]
     1159 DUPCLOSURE                       R23 K455 [PROTO_7]
     1160 CAPTURE                          VAL R0
     1161 SETTABLEKS                       R23 R0 K456 ["getSubmittedFields"]
     1163 DUPCLOSURE                       R23 K457 [PROTO_8]
     1164 CAPTURE                          VAL R0
     1165 CAPTURE                          VAL R19
     1166 SETTABLEKS                       R23 R0 K458 ["getRowPresentation"]
     1168 NEWCLOSURE                       R23 P9
     1169 CAPTURE                          REF R22
     1170 SETTABLEKS                       R23 R0 K459 ["_registerTestConfig"]
     1172 NEWCLOSURE                       R23 P10
     1173 CAPTURE                          REF R22
     1174 SETTABLEKS                       R23 R0 K460 ["_clearTestConfigs"]
     1176 CLOSEUPVALS                      R22
     1177 RETURN                           R0 1
