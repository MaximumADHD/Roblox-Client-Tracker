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
        7 JUMPIFNOT                        R2 ; [+8]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["isEditMode"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMPIFNOT                        R2 ; [+2]
       14 LOADK                            R2 K3 ["/generate_animation (Edit Animation)"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 3
       17 JUMPIFNOTEQ                      R1 R2 ; [+3]
       19 LOADK                            R2 K4 ["/generate_animation (Edit New)"]
       20 RETURN                           R2 1
       21 GETUPVAL                         R2 4
       22 JUMPIFNOTEQ                      R1 R2 ; [+3]
       24 LOADK                            R2 K5 ["/generate_animation (Edit Upscale)"]
       25 RETURN                           R2 1
       26 LOADNIL                          R2
       27 RETURN                           R2 1

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
       75 GETTABLEKS                       R10 R5 K23 ["SegmentationEnums"]
       77 GETTABLEKS                       R11 R3 K24 ["RULE_KIND"]
       79 GETTABLEKS                       R12 R7 K25 ["ROW_TYPES"]
       81 GETTABLEKS                       R13 R10 K26 ["PromptMode"]
       83 GETTABLEKS                       R14 R3 K27 ["asRule"]
       85 DUPTABLE                         R15 K29 [{["TextureGen"] = "TextureGen", ["SegmentMesh"] = "SegmentMesh"}]
       86 DUPTABLE                         R16 K31 [{["AnimationGenUpscaleForm"] = "AnimationGenUpscaleForm"}]
       87 DUPTABLE                         R17 K33 [{["LayoutGenSceneBox"] = "LayoutGenSceneBox"}]
       88 NEWTABLE                         R18 0 0
       90 NEWTABLE                         R19 8 0
       92 DUPTABLE                         R20 K64 [{["GenerationMode"] = "generationMode", ["TextPrompt"] = "textPrompt", ["EditTextPrompt"] = "editTextPrompt", ["SelectedRigRef"] = "selectedRigRef", ["Duration"] = "duration", ["EditDuration"] = "editDuration", ["InputAssetId"] = "inputAssetId", ["ClipPreview"] = "clipPreview", ["ArmsReach"] = "armsReach", ["LegsReach"] = "legsReach", ["EditSourceId"] = "editSourceId", ["EditSourceDuration"] = "editSourceDuration", ["R6Blend"] = "r6Blend", ["UpperBodyBlend"] = "upperBodyBlend", ["LowerBodyBlend"] = "lowerBodyBlend"}]
       93 GETTABLEKS                       R21 R2 K65 ["GenerationModes"]
       95 GETTABLEKS                       R21 R21 K66 ["New"]
       97 GETTABLEKS                       R22 R2 K65 ["GenerationModes"]
       99 GETTABLEKS                       R22 R22 K67 ["Upscale"]
      101 GETTABLEKS                       R23 R2 K65 ["GenerationModes"]
      103 GETTABLEKS                       R23 R23 K68 ["EditNew"]
      105 GETTABLEKS                       R24 R2 K65 ["GenerationModes"]
      107 GETTABLEKS                       R24 R24 K69 ["EditUpscale"]
      109 DUPTABLE                         R25 K73 [{["visible"] = True, ["enabled"] = True}]
      110 DUPTABLE                         R26 K75 [{["visible"] = False, ["enabled"] = False}]
      111 DUPTABLE                         R27 K76 [{["visible"] = False, ["enabled"] = True}]
      112 DUPTABLE                         R28 K77 [{["visible"] = True, ["enabled"] = False}]
      113 DUPTABLE                         R29 K79 [{["visible"] = True, ["enabled"] = True, ["interactable"] = True}]
      114 DUPTABLE                         R30 K80 [{["visible"] = True, ["enabled"] = True, ["interactable"] = False}]
      115 DUPTABLE                         R31 K83 [{["GenerateUpscale"] = "generateUpscale"}]
      116 DUPTABLE                         R32 K87 [{["namespace"] = "AskInput", ["key"] = "SubmitButton"}]
      117 DUPTABLE                         R33 K94 [{["NotR6"] = "Preview supports R6 clips only.", ["UnsupportedClipType"] = "This animation type can't be previewed or upscaled.", ["LoadFailed"] = "Couldn't load this clip for preview."}]
      118 DUPCLOSURE                       R34 K95 [PROTO_0]
      119 CAPTURE                          VAL R20
      120 DUPTABLE                         R35 K106 [{["formId"] = "generate_animation", ["heading"] = "/generate_animation", ["headingResolver"], ["row"], ["confirmButton"], ["footerResolver"], ["axisResolver"], ["rows"]}]
      121 DUPCLOSURE                       R36 K107 [PROTO_1]
      122 CAPTURE                          VAL R20
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R23
      126 CAPTURE                          VAL R24
      127 SETTABLEKS                       R36 R35 K100 ["headingResolver"]
      129 SETTABLEKS                       R20 R35 K101 ["row"]
      131 DUPTABLE                         R36 K109 [{["namespace"] = "AnimationGen", ["key"] = "InputGenerate"}]
      132 SETTABLEKS                       R36 R35 K102 ["confirmButton"]
      134 DUPCLOSURE                       R36 K110 [PROTO_2]
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R22
      137 CAPTURE                          VAL R33
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R32
      140 CAPTURE                          VAL R23
      141 CAPTURE                          VAL R24
      142 SETTABLEKS                       R36 R35 K103 ["footerResolver"]
      144 DUPCLOSURE                       R36 K111 [PROTO_3]
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R22
      147 CAPTURE                          VAL R29
      148 CAPTURE                          VAL R30
      149 CAPTURE                          VAL R25
      150 CAPTURE                          VAL R26
      151 CAPTURE                          VAL R28
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R27
      154 CAPTURE                          VAL R24
      155 SETTABLEKS                       R36 R35 K104 ["axisResolver"]
      157 NEWTABLE                         R36 16 0
      159 GETTABLEKS                       R37 R20 K34 ["GenerationMode"]
      161 DUPTABLE                         R38 K115 [{["label"] = "Mode", ["optionLabels"]}]
      162 NEWTABLE                         R39 4 0
      164 LOADK                            R40 K116 ["New animation"]
      165 SETTABLE                         R40 R39 R21
      166 LOADK                            R40 K117 ["Upscale animation"]
      167 SETTABLE                         R40 R39 R22
      168 GETTABLEKS                       R41 R4 K118 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
      170 JUMPIFNOT                        R41 ; [+2]
      171 LOADK                            R40 K119 ["Edit Animation"]
      172 JUMP                             ; [+1]
      173 LOADK                            R40 K120 ["Edit New"]
      174 SETTABLE                         R40 R39 R23
      175 GETTABLEKS                       R41 R4 K118 ["FFlagAssistantAnimationGenRemoveEditFormPrompt"]
      177 JUMPIFNOT                        R41 ; [+2]
      178 LOADK                            R40 K119 ["Edit Animation"]
      179 JUMP                             ; [+1]
      180 LOADK                            R40 K121 ["Edit Upscale"]
      181 SETTABLE                         R40 R39 R24
      182 SETTABLEKS                       R39 R38 K114 ["optionLabels"]
      184 SETTABLE                         R38 R36 R37
      185 GETTABLEKS                       R37 R20 K36 ["TextPrompt"]
      187 DUPTABLE                         R38 K125 [{["label"], ["multiLine"] = True, ["requirementMessage"] = "A text prompt is required"}]
      188 DUPTABLE                         R39 K127 [{["namespace"] = "AnimationGen", ["key"] = "Prompt"}]
      189 SETTABLEKS                       R39 R38 K112 ["label"]
      191 SETTABLE                         R38 R36 R37
      192 GETTABLEKS                       R37 R20 K38 ["EditTextPrompt"]
      194 DUPTABLE                         R38 K128 [{["label"], ["multiLine"] = True}]
      195 DUPTABLE                         R39 K127 [{["namespace"] = "AnimationGen", ["key"] = "Prompt"}]
      196 SETTABLEKS                       R39 R38 K112 ["label"]
      198 SETTABLE                         R38 R36 R37
      199 GETTABLEKS                       R37 R20 K44 ["EditDuration"]
      201 DUPTABLE                         R38 K130 [{["internal"] = True}]
      202 SETTABLE                         R38 R36 R37
      203 GETTABLEKS                       R37 R20 K40 ["SelectedRigRef"]
      205 DUPTABLE                         R38 K132 [{["label"], ["shouldSelectModel"] = True}]
      206 DUPTABLE                         R39 K134 [{["namespace"] = "AnimationGen", ["key"] = "InputRig"}]
      207 SETTABLEKS                       R39 R38 K112 ["label"]
      209 SETTABLE                         R38 R36 R37
      210 GETTABLEKS                       R37 R20 K42 ["Duration"]
      212 DUPTABLE                         R38 K135 [{"label"}]
      213 DUPTABLE                         R39 K137 [{["namespace"] = "AnimationGen", ["key"] = "InputDuration"}]
      214 SETTABLEKS                       R39 R38 K112 ["label"]
      216 SETTABLE                         R38 R36 R37
      217 GETTABLEKS                       R37 R20 K46 ["InputAssetId"]
      219 DUPTABLE                         R38 K140 [{["label"], ["renderer"], ["requirementMessage"] = "An animation clip is required for upscaling"}]
      220 DUPTABLE                         R39 K142 [{["namespace"] = "AnimationGen", ["key"] = "AnimationClip"}]
      221 SETTABLEKS                       R39 R38 K112 ["label"]
      223 GETTABLEKS                       R39 R12 K143 ["Content"]
      225 SETTABLEKS                       R39 R38 K138 ["renderer"]
      227 SETTABLE                         R38 R36 R37
      228 GETTABLEKS                       R37 R20 K48 ["ClipPreview"]
      230 DUPTABLE                         R38 K147 [{["renderer"], ["clipRowName"], ["rigRowName"], ["generateButtonId"] = "generateUpscale"}]
      231 GETTABLEKS                       R39 R12 K48 ["ClipPreview"]
      233 SETTABLEKS                       R39 R38 K138 ["renderer"]
      235 GETTABLEKS                       R39 R20 K46 ["InputAssetId"]
      237 SETTABLEKS                       R39 R38 K144 ["clipRowName"]
      239 GETTABLEKS                       R39 R20 K40 ["SelectedRigRef"]
      241 SETTABLEKS                       R39 R38 K145 ["rigRowName"]
      243 SETTABLE                         R38 R36 R37
      244 GETTABLEKS                       R37 R20 K50 ["ArmsReach"]
      246 DUPTABLE                         R38 K157 [{["label"] = "Arms Bending", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      247 GETTABLEKS                       R39 R12 K158 ["NumberInput"]
      249 SETTABLEKS                       R39 R38 K138 ["renderer"]
      251 GETTABLEKS                       R39 R16 K30 ["AnimationGenUpscaleForm"]
      253 SETTABLEKS                       R39 R38 K156 ["valueChangedAction"]
      255 SETTABLE                         R38 R36 R37
      256 GETTABLEKS                       R37 R20 K52 ["LegsReach"]
      258 DUPTABLE                         R38 K160 [{["label"] = "Legs Bending", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      259 GETTABLEKS                       R39 R12 K158 ["NumberInput"]
      261 SETTABLEKS                       R39 R38 K138 ["renderer"]
      263 GETTABLEKS                       R39 R16 K30 ["AnimationGenUpscaleForm"]
      265 SETTABLEKS                       R39 R38 K156 ["valueChangedAction"]
      267 SETTABLE                         R38 R36 R37
      268 GETTABLEKS                       R37 R20 K54 ["EditSourceId"]
      270 DUPTABLE                         R38 K162 [{"renderer", "durationRowName"}]
      271 GETTABLEKS                       R39 R12 K163 ["EditScrubbar"]
      273 SETTABLEKS                       R39 R38 K138 ["renderer"]
      275 GETTABLEKS                       R39 R20 K56 ["EditSourceDuration"]
      277 SETTABLEKS                       R39 R38 K161 ["durationRowName"]
      279 SETTABLE                         R38 R36 R37
      280 GETTABLEKS                       R37 R20 K56 ["EditSourceDuration"]
      282 DUPTABLE                         R38 K130 [{["internal"] = True}]
      283 SETTABLE                         R38 R36 R37
      284 GETTABLEKS                       R37 R20 K58 ["R6Blend"]
      286 DUPTABLE                         R38 K165 [{["label"] = "Blend with R6", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      287 GETTABLEKS                       R39 R12 K158 ["NumberInput"]
      289 SETTABLEKS                       R39 R38 K138 ["renderer"]
      291 GETTABLEKS                       R39 R16 K30 ["AnimationGenUpscaleForm"]
      293 SETTABLEKS                       R39 R38 K156 ["valueChangedAction"]
      295 SETTABLE                         R38 R36 R37
      296 GETTABLEKS                       R37 R20 K60 ["UpperBodyBlend"]
      298 DUPTABLE                         R38 K168 [{["label"] = "Upper Body Blend", ["parentRow"], ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      299 GETTABLEKS                       R39 R20 K58 ["R6Blend"]
      301 SETTABLEKS                       R39 R38 K167 ["parentRow"]
      303 GETTABLEKS                       R39 R12 K158 ["NumberInput"]
      305 SETTABLEKS                       R39 R38 K138 ["renderer"]
      307 GETTABLEKS                       R39 R16 K30 ["AnimationGenUpscaleForm"]
      309 SETTABLEKS                       R39 R38 K156 ["valueChangedAction"]
      311 SETTABLE                         R38 R36 R37
      312 GETTABLEKS                       R37 R20 K62 ["LowerBodyBlend"]
      314 DUPTABLE                         R38 K170 [{["label"] = "Lower Body Blend", ["parentRow"], ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      315 GETTABLEKS                       R39 R20 K58 ["R6Blend"]
      317 SETTABLEKS                       R39 R38 K167 ["parentRow"]
      319 GETTABLEKS                       R39 R12 K158 ["NumberInput"]
      321 SETTABLEKS                       R39 R38 K138 ["renderer"]
      323 GETTABLEKS                       R39 R16 K30 ["AnimationGenUpscaleForm"]
      325 SETTABLEKS                       R39 R38 K156 ["valueChangedAction"]
      327 SETTABLE                         R38 R36 R37
      328 SETTABLEKS                       R36 R35 K105 ["rows"]
      330 SETTABLEKS                       R35 R19 K7 ["AnimationGen"]
      332 DUPTABLE                         R20 K185 [{["SelectedModelRef"] = "selectedModelRef", ["SetupType"] = "setup_type", ["R15Plus"] = "r15_plus", ["AlignFrontAngle"] = "align_front_angle", ["DecalToDynamicHead"] = "decal_to_dynamic_head", ["EnableAdditionalHeadProcessing"] = "enable_additional_head_processing", ["ReduceTriangles"] = "reduce_triangles"}]
      333 DUPTABLE                         R21 K188 [{["Platform"] = "Platform", ["Development"] = "Development"}]
      334 DUPTABLE                         R22 K73 [{["visible"] = True, ["enabled"] = True}]
      335 DUPTABLE                         R23 K75 [{["visible"] = False, ["enabled"] = False}]
      336 DUPTABLE                         R24 K191 [{["formId"] = "auto_setup_avatar", ["heading"] = "/auto_setup_avatar", ["row"], ["confirmButton"], ["axisResolver"], ["rows"]}]
      337 SETTABLEKS                       R20 R24 K101 ["row"]
      339 DUPTABLE                         R25 K194 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputSetUpAvatar"}]
      340 SETTABLEKS                       R25 R24 K102 ["confirmButton"]
      342 DUPCLOSURE                       R25 K195 [PROTO_4]
      343 CAPTURE                          VAL R20
      344 CAPTURE                          VAL R22
      345 CAPTURE                          VAL R23
      346 SETTABLEKS                       R25 R24 K104 ["axisResolver"]
      348 NEWTABLE                         R25 8 0
      350 GETTABLEKS                       R26 R20 K171 ["SelectedModelRef"]
      352 DUPTABLE                         R27 K196 [{["label"], ["shouldSelectModel"] = True, ["requirementMessage"]}]
      353 DUPTABLE                         R28 K198 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputModel"}]
      354 SETTABLEKS                       R28 R27 K112 ["label"]
      356 DUPTABLE                         R28 K200 [{["namespace"] = "AvatarAutoSetup", ["key"] = "ModelRequired"}]
      357 SETTABLEKS                       R28 R27 K123 ["requirementMessage"]
      359 SETTABLE                         R27 R25 R26
      360 GETTABLEKS                       R26 R20 K173 ["SetupType"]
      362 DUPTABLE                         R27 K201 [{"label", "optionLabels"}]
      363 DUPTABLE                         R28 K203 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "SetupType"}]
      364 SETTABLEKS                       R28 R27 K112 ["label"]
      366 NEWTABLE                         R28 2 0
      368 DUPTABLE                         R29 K205 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "PlatformAvatar"}]
      369 SETTABLEKS                       R29 R28 K186 ["Platform"]
      371 DUPTABLE                         R29 K207 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "DevelopmentAvatar"}]
      372 SETTABLEKS                       R29 R28 K187 ["Development"]
      374 SETTABLEKS                       R28 R27 K114 ["optionLabels"]
      376 SETTABLE                         R27 R25 R26
      377 GETTABLEKS                       R26 R20 K175 ["R15Plus"]
      379 DUPTABLE                         R27 K209 [{"label", "infoPopover"}]
      380 DUPTABLE                         R28 K210 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "R15Plus"}]
      381 SETTABLEKS                       R28 R27 K112 ["label"]
      383 DUPTABLE                         R28 K212 [{"body"}]
      384 DUPTABLE                         R29 K214 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "R15PlusDescription"}]
      385 SETTABLEKS                       R29 R28 K211 ["body"]
      387 SETTABLEKS                       R28 R27 K208 ["infoPopover"]
      389 SETTABLE                         R27 R25 R26
      390 GETTABLEKS                       R26 R20 K177 ["AlignFrontAngle"]
      392 DUPTABLE                         R27 K209 [{"label", "infoPopover"}]
      393 DUPTABLE                         R28 K216 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "AlignFront"}]
      394 SETTABLEKS                       R28 R27 K112 ["label"]
      396 DUPTABLE                         R28 K212 [{"body"}]
      397 DUPTABLE                         R29 K218 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "AlignFrontDescription"}]
      398 SETTABLEKS                       R29 R28 K211 ["body"]
      400 SETTABLEKS                       R28 R27 K208 ["infoPopover"]
      402 SETTABLE                         R27 R25 R26
      403 GETTABLEKS                       R26 R20 K179 ["DecalToDynamicHead"]
      405 DUPTABLE                         R27 K209 [{"label", "infoPopover"}]
      406 DUPTABLE                         R28 K219 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "DecalToDynamicHead"}]
      407 SETTABLEKS                       R28 R27 K112 ["label"]
      409 DUPTABLE                         R28 K212 [{"body"}]
      410 DUPTABLE                         R29 K221 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "DecalToDynamicHeadDescription"}]
      411 SETTABLEKS                       R29 R28 K211 ["body"]
      413 SETTABLEKS                       R28 R27 K208 ["infoPopover"]
      415 SETTABLE                         R27 R25 R26
      416 GETTABLEKS                       R26 R20 K181 ["EnableAdditionalHeadProcessing"]
      418 DUPTABLE                         R27 K209 [{"label", "infoPopover"}]
      419 DUPTABLE                         R28 K223 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "FacialCaging"}]
      420 SETTABLEKS                       R28 R27 K112 ["label"]
      422 DUPTABLE                         R28 K212 [{"body"}]
      423 DUPTABLE                         R29 K225 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "FacialCagingDescription"}]
      424 SETTABLEKS                       R29 R28 K211 ["body"]
      426 SETTABLEKS                       R28 R27 K208 ["infoPopover"]
      428 SETTABLE                         R27 R25 R26
      429 GETTABLEKS                       R26 R20 K183 ["ReduceTriangles"]
      431 DUPTABLE                         R27 K209 [{"label", "infoPopover"}]
      432 DUPTABLE                         R28 K226 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "ReduceTriangles"}]
      433 SETTABLEKS                       R28 R27 K112 ["label"]
      435 DUPTABLE                         R28 K212 [{"body"}]
      436 DUPTABLE                         R29 K228 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "ReduceTrianglesDescription"}]
      437 SETTABLEKS                       R29 R28 K211 ["body"]
      439 SETTABLEKS                       R28 R27 K208 ["infoPopover"]
      441 SETTABLE                         R27 R25 R26
      442 SETTABLEKS                       R25 R24 K105 ["rows"]
      444 SETTABLEKS                       R24 R19 K192 ["AvatarAutoSetup"]
      446 DUPTABLE                         R20 K229 [{["TextPrompt"] = "textPrompt"}]
      447 DUPTABLE                         R21 K232 [{["formId"] = "generate_avatar", ["heading"] = "/generate_avatar", ["row"], ["confirmButton"], ["rows"]}]
      448 SETTABLEKS                       R20 R21 K101 ["row"]
      450 DUPTABLE                         R22 K235 [{["namespace"] = "AvatarGen", ["key"] = "InputGenerateAvatar"}]
      451 SETTABLEKS                       R22 R21 K102 ["confirmButton"]
      453 NEWTABLE                         R22 1 0
      455 GETTABLEKS                       R23 R20 K36 ["TextPrompt"]
      457 DUPTABLE                         R24 K237 [{["label"], ["multiLine"] = True, ["placeholder"], ["requirementMessage"]}]
      458 DUPTABLE                         R25 K239 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      459 SETTABLEKS                       R25 R24 K112 ["label"]
      461 DUPTABLE                         R25 K241 [{["namespace"] = "AvatarGen", ["key"] = "InputPromptPlaceholder"}]
      462 SETTABLEKS                       R25 R24 K236 ["placeholder"]
      464 DUPTABLE                         R25 K243 [{["namespace"] = "AvatarGen", ["key"] = "PromptRequired"}]
      465 SETTABLEKS                       R25 R24 K123 ["requirementMessage"]
      467 SETTABLE                         R24 R22 R23
      468 SETTABLEKS                       R22 R21 K105 ["rows"]
      470 SETTABLEKS                       R21 R19 K233 ["AvatarGen"]
      472 GETTABLEKS                       R20 R8 K244 ["Row"]
      474 GETTABLEKS                       R21 R8 K245 ["ModelSegment"]
      476 GETTABLEKS                       R22 R5 K246 ["Constants"]
      478 GETTABLEKS                       R22 R22 K247 ["Enums"]
      480 GETTABLEKS                       R22 R22 K248 ["SceneQuality"]
      482 NEWTABLE                         R23 2 0
      484 GETTABLEKS                       R24 R21 K249 ["ProcModels"]
      486 DUPTABLE                         R25 K251 [{["namespace"] = "GenerateLayout", ["key"] = "ProcModels"}]
      487 SETTABLE                         R25 R23 R24
      488 GETTABLEKS                       R24 R21 K252 ["ProcModelsAndMeshes"]
      490 DUPTABLE                         R25 K253 [{["namespace"] = "GenerateLayout", ["key"] = "ProcModelsAndMeshes"}]
      491 SETTABLE                         R25 R23 R24
      492 NEWTABLE                         R24 4 0
      494 GETTABLEKS                       R25 R22 K254 ["Minimal"]
      496 DUPTABLE                         R26 K256 [{["namespace"] = "GenerateLayout", ["key"] = "QualityMinimal"}]
      497 SETTABLE                         R26 R24 R25
      498 GETTABLEKS                       R25 R22 K257 ["Low"]
      500 DUPTABLE                         R26 K259 [{["namespace"] = "GenerateLayout", ["key"] = "QualityLow"}]
      501 SETTABLE                         R26 R24 R25
      502 GETTABLEKS                       R25 R22 K260 ["Medium"]
      504 DUPTABLE                         R26 K262 [{["namespace"] = "GenerateLayout", ["key"] = "QualityMedium"}]
      505 SETTABLE                         R26 R24 R25
      506 GETTABLEKS                       R25 R22 K263 ["High"]
      508 DUPTABLE                         R26 K265 [{["namespace"] = "GenerateLayout", ["key"] = "QualityHigh"}]
      509 SETTABLE                         R26 R24 R25
      510 DUPTABLE                         R25 K268 [{["formId"], ["cancelInFooter"] = True, ["heading"] = "/generate_scene", ["row"], ["confirmButton"], ["rows"]}]
      511 GETTABLEKS                       R26 R8 K269 ["FormId"]
      513 SETTABLEKS                       R26 R25 K96 ["formId"]
      515 SETTABLEKS                       R20 R25 K101 ["row"]
      517 DUPTABLE                         R26 K271 [{["namespace"] = "GenerateLayout", ["key"] = "Generate"}]
      518 SETTABLEKS                       R26 R25 K102 ["confirmButton"]
      520 NEWTABLE                         R26 4 0
      522 GETTABLEKS                       R27 R20 K272 ["Size"]
      524 DUPTABLE                         R28 K275 [{["label"], ["liveChannelBridge"], ["roundToWholeStud"] = True}]
      525 DUPTABLE                         R29 K277 [{["namespace"] = "GenerateLayout", ["key"] = "SceneSize"}]
      526 SETTABLEKS                       R29 R28 K112 ["label"]
      528 GETTABLEKS                       R29 R17 K32 ["LayoutGenSceneBox"]
      530 SETTABLEKS                       R29 R28 K273 ["liveChannelBridge"]
      532 SETTABLE                         R28 R26 R27
      533 GETTABLEKS                       R27 R20 K278 ["Position"]
      535 DUPTABLE                         R28 K275 [{["label"], ["liveChannelBridge"], ["roundToWholeStud"] = True}]
      536 DUPTABLE                         R29 K279 [{["namespace"] = "GenerateLayout", ["key"] = "Position"}]
      537 SETTABLEKS                       R29 R28 K112 ["label"]
      539 GETTABLEKS                       R29 R17 K32 ["LayoutGenSceneBox"]
      541 SETTABLEKS                       R29 R28 K273 ["liveChannelBridge"]
      543 SETTABLE                         R28 R26 R27
      544 GETTABLEKS                       R27 R20 K280 ["UseMeshGen"]
      546 DUPTABLE                         R28 K201 [{"label", "optionLabels"}]
      547 DUPTABLE                         R29 K282 [{["namespace"] = "GenerateLayout", ["key"] = "Models"}]
      548 SETTABLEKS                       R29 R28 K112 ["label"]
      550 SETTABLEKS                       R23 R28 K114 ["optionLabels"]
      552 SETTABLE                         R28 R26 R27
      553 GETTABLEKS                       R27 R20 K283 ["Quality"]
      555 DUPTABLE                         R28 K201 [{"label", "optionLabels"}]
      556 DUPTABLE                         R29 K284 [{["namespace"] = "GenerateLayout", ["key"] = "Quality"}]
      557 SETTABLEKS                       R29 R28 K112 ["label"]
      559 SETTABLEKS                       R24 R28 K114 ["optionLabels"]
      561 SETTABLE                         R28 R26 R27
      562 SETTABLEKS                       R26 R25 K105 ["rows"]
      564 SETTABLEKS                       R25 R19 K285 ["GenerateSceneBounds"]
      566 DUPTABLE                         R20 K299 [{["PromptMode"] = "promptMode", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["MaxTriangles"] = "maxTriangles", ["TextPartNames"] = "textPartNames", ["ImagePartNames"] = "imagePartNames", ["SuggestSegmentation"] = "suggestSegmentation", ["SelectedInstanceRef"] = "selectedInstanceRef"}]
      567 GETTABLEKS                       R21 R4 K300 ["FFlagAssistantSegmentationPromptModeSelector"]
      569 DUPTABLE                         R22 K73 [{["visible"] = True, ["enabled"] = True}]
      570 DUPTABLE                         R23 K75 [{["visible"] = False, ["enabled"] = False}]
      571 DUPTABLE                         R24 K305 [{["formId"] = "generate_mesh", ["heading"] = "/generate_mesh", ["row"], ["description"], ["confirmButton"], ["axisResolver"], ["imageSelection"], ["rows"]}]
      572 SETTABLEKS                       R20 R24 K101 ["row"]
      574 DUPTABLE                         R25 K307 [{["namespace"] = "MeshGen", ["key"] = "InputDisclaimer"}]
      575 SETTABLEKS                       R25 R24 K303 ["description"]
      577 DUPTABLE                         R25 K309 [{["namespace"] = "MeshGen", ["key"] = "InputGenerateMesh"}]
      578 SETTABLEKS                       R25 R24 K102 ["confirmButton"]
      580 JUMPIFNOT                        R21 ; [+6]
      581 DUPCLOSURE                       R25 K310 [PROTO_5]
      582 CAPTURE                          VAL R20
      583 CAPTURE                          VAL R13
      584 CAPTURE                          VAL R23
      585 CAPTURE                          VAL R22
      586 JUMP                             ; [+1]
      587 LOADNIL                          R25
      588 SETTABLEKS                       R25 R24 K104 ["axisResolver"]
      590 GETTABLEKS                       R26 R4 K311 ["EngineFeatureAssistantGen3dImagePreview"]
      592 JUMPIFNOT                        R26 ; [+36]
      593 DUPTABLE                         R25 K316 [{"promptKey", "wizardMode", "model", "segmentationFold"}]
      594 GETTABLEKS                       R26 R20 K36 ["TextPrompt"]
      596 SETTABLEKS                       R26 R25 K312 ["promptKey"]
      598 GETTABLEKS                       R26 R4 K317 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      600 SETTABLEKS                       R26 R25 K313 ["wizardMode"]
      602 GETTABLEKS                       R26 R4 K318 ["FStringAssistantMeshGenImageGenModelOverride"]
      604 SETTABLEKS                       R26 R25 K314 ["model"]
      606 GETTABLEKS                       R27 R4 K319 ["FFlagAssistantImageGenImprovements"]
      608 JUMPIFNOT                        R27 ; [+16]
      609 DUPTABLE                         R26 K323 [{"kind", "partNamesKey", "suggestKey"}]
      610 GETTABLEKS                       R27 R3 K324 ["SEGMENTATION_FOLD_KIND"]
      612 GETTABLEKS                       R27 R27 K325 ["Gen3D"]
      614 SETTABLEKS                       R27 R26 K320 ["kind"]
      616 GETTABLEKS                       R27 R20 K291 ["TextPartNames"]
      618 SETTABLEKS                       R27 R26 K321 ["partNamesKey"]
      620 GETTABLEKS                       R27 R20 K295 ["SuggestSegmentation"]
      622 SETTABLEKS                       R27 R26 K322 ["suggestKey"]
      624 JUMP                             ; [+1]
      625 LOADNIL                          R26
      626 SETTABLEKS                       R26 R25 K315 ["segmentationFold"]
      628 JUMP                             ; [+1]
      629 LOADNIL                          R25
      630 SETTABLEKS                       R25 R24 K304 ["imageSelection"]
      632 NEWTABLE                         R25 8 0
      634 GETTABLEKS                       R26 R20 K26 ["PromptMode"]
      636 DUPTABLE                         R27 K327 [{"label", "optionLabels", "optionBadges"}]
      637 DUPTABLE                         R28 K329 [{["namespace"] = "MeshGen", ["key"] = "InputPromptModeTitle"}]
      638 SETTABLEKS                       R28 R27 K112 ["label"]
      640 NEWTABLE                         R28 2 0
      642 GETTABLEKS                       R29 R13 K330 ["Text"]
      644 DUPTABLE                         R30 K333 [{["namespace"] = "Gen3d", ["key"] = "PromptModeText"}]
      645 SETTABLE                         R30 R28 R29
      646 GETTABLEKS                       R29 R13 K334 ["Image"]
      648 DUPTABLE                         R30 K336 [{["namespace"] = "Gen3d", ["key"] = "PromptModeImage"}]
      649 SETTABLE                         R30 R28 R29
      650 SETTABLEKS                       R28 R27 K114 ["optionLabels"]
      652 NEWTABLE                         R28 2 0
      654 GETTABLEKS                       R29 R13 K330 ["Text"]
      656 MOVE                             R30 R14
      657 DUPTABLE                         R31 K340 [{"kind", "field", "cases", "default"}]
      658 GETTABLEKS                       R32 R11 K341 ["Branch"]
      660 SETTABLEKS                       R32 R31 K320 ["kind"]
      662 GETTABLEKS                       R32 R20 K26 ["PromptMode"]
      664 SETTABLEKS                       R32 R31 K337 ["field"]
      666 NEWTABLE                         R32 1 0
      668 GETTABLEKS                       R33 R13 K334 ["Image"]
      670 MOVE                             R34 R14
      671 DUPTABLE                         R35 K342 [{"kind", "field"}]
      672 GETTABLEKS                       R36 R11 K343 ["NonEmpty"]
      674 SETTABLEKS                       R36 R35 K320 ["kind"]
      676 GETTABLEKS                       R36 R20 K36 ["TextPrompt"]
      678 SETTABLEKS                       R36 R35 K337 ["field"]
      680 CALL                             R34 1 1
      681 SETTABLE                         R34 R32 R33
      682 SETTABLEKS                       R32 R31 K338 ["cases"]
      684 MOVE                             R32 R14
      685 DUPTABLE                         R33 K344 [{"kind"}]
      686 GETTABLEKS                       R34 R11 K345 ["Never"]
      688 SETTABLEKS                       R34 R33 K320 ["kind"]
      690 CALL                             R32 1 1
      691 SETTABLEKS                       R32 R31 K339 ["default"]
      693 CALL                             R30 1 1
      694 SETTABLE                         R30 R28 R29
      695 GETTABLEKS                       R29 R13 K334 ["Image"]
      697 MOVE                             R30 R14
      698 DUPTABLE                         R31 K340 [{"kind", "field", "cases", "default"}]
      699 GETTABLEKS                       R32 R11 K341 ["Branch"]
      701 SETTABLEKS                       R32 R31 K320 ["kind"]
      703 GETTABLEKS                       R32 R20 K26 ["PromptMode"]
      705 SETTABLEKS                       R32 R31 K337 ["field"]
      707 NEWTABLE                         R32 1 0
      709 GETTABLEKS                       R33 R13 K330 ["Text"]
      711 MOVE                             R34 R14
      712 DUPTABLE                         R35 K342 [{"kind", "field"}]
      713 GETTABLEKS                       R36 R11 K343 ["NonEmpty"]
      715 SETTABLEKS                       R36 R35 K320 ["kind"]
      717 GETTABLEKS                       R36 R20 K287 ["HintImage"]
      719 SETTABLEKS                       R36 R35 K337 ["field"]
      721 CALL                             R34 1 1
      722 SETTABLE                         R34 R32 R33
      723 SETTABLEKS                       R32 R31 K338 ["cases"]
      725 MOVE                             R32 R14
      726 DUPTABLE                         R33 K344 [{"kind"}]
      727 GETTABLEKS                       R34 R11 K345 ["Never"]
      729 SETTABLEKS                       R34 R33 K320 ["kind"]
      731 CALL                             R32 1 1
      732 SETTABLEKS                       R32 R31 K339 ["default"]
      734 CALL                             R30 1 1
      735 SETTABLE                         R30 R28 R29
      736 SETTABLEKS                       R28 R27 K326 ["optionBadges"]
      738 SETTABLE                         R27 R25 R26
      739 GETTABLEKS                       R26 R20 K36 ["TextPrompt"]
      741 DUPTABLE                         R27 K346 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      742 DUPTABLE                         R28 K239 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      743 SETTABLEKS                       R28 R27 K112 ["label"]
      745 GETTABLEKS                       R29 R4 K347 ["FFlagAssistantAddPlaceholderProp"]
      747 JUMPIFNOT                        R29 ; [+2]
      748 DUPTABLE                         R28 K349 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      749 JUMP                             ; [+1]
      750 LOADNIL                          R28
      751 SETTABLEKS                       R28 R27 K236 ["placeholder"]
      753 SETTABLE                         R27 R25 R26
      754 GETTABLEKS                       R26 R20 K287 ["HintImage"]
      756 DUPTABLE                         R27 K135 [{"label"}]
      757 DUPTABLE                         R28 K351 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      758 SETTABLEKS                       R28 R27 K112 ["label"]
      760 SETTABLE                         R27 R25 R26
      761 GETTABLEKS                       R26 R20 K289 ["MaxTriangles"]
      763 DUPTABLE                         R27 K135 [{"label"}]
      764 DUPTABLE                         R28 K353 [{["namespace"] = "MeshGen", ["key"] = "InputTriangleCountTitle"}]
      765 SETTABLEKS                       R28 R27 K112 ["label"]
      767 SETTABLE                         R27 R25 R26
      768 GETTABLEKS                       R26 R20 K291 ["TextPartNames"]
      770 DUPTABLE                         R27 K355 [{"label", "infoPopover", "suggestion"}]
      771 DUPTABLE                         R28 K357 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      772 SETTABLEKS                       R28 R27 K112 ["label"]
      774 JUMPIFNOT                        R21 ; [+8]
      775 DUPTABLE                         R28 K359 [{"body", "learnMore"}]
      776 DUPTABLE                         R29 K362 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      777 SETTABLEKS                       R29 R28 K211 ["body"]
      779 DUPTABLE                         R29 K364 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      780 SETTABLEKS                       R29 R28 K358 ["learnMore"]
      782 JUMP                             ; [+1]
      783 LOADNIL                          R28
      784 SETTABLEKS                       R28 R27 K208 ["infoPopover"]
      786 DUPTABLE                         R28 K367 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "mesh"}]
      787 GETTABLEKS                       R29 R20 K36 ["TextPrompt"]
      789 SETTABLEKS                       R29 R28 K312 ["promptKey"]
      791 JUMPIFNOT                        R21 ; [+6]
      792 GETTABLEKS                       R30 R4 K368 ["FFlagGen3dSegmentationSelector"]
      794 JUMPIFNOT                        R30 ; [+3]
      795 GETTABLEKS                       R29 R20 K295 ["SuggestSegmentation"]
      797 JUMP                             ; [+1]
      798 LOADNIL                          R29
      799 SETTABLEKS                       R29 R28 K322 ["suggestKey"]
      801 SETTABLEKS                       R28 R27 K354 ["suggestion"]
      803 SETTABLE                         R27 R25 R26
      804 GETTABLEKS                       R26 R20 K293 ["ImagePartNames"]
      806 DUPTABLE                         R27 K209 [{"label", "infoPopover"}]
      807 DUPTABLE                         R28 K357 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      808 SETTABLEKS                       R28 R27 K112 ["label"]
      810 JUMPIFNOT                        R21 ; [+8]
      811 DUPTABLE                         R28 K359 [{"body", "learnMore"}]
      812 DUPTABLE                         R29 K362 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      813 SETTABLEKS                       R29 R28 K211 ["body"]
      815 DUPTABLE                         R29 K364 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      816 SETTABLEKS                       R29 R28 K358 ["learnMore"]
      818 JUMP                             ; [+1]
      819 LOADNIL                          R28
      820 SETTABLEKS                       R28 R27 K208 ["infoPopover"]
      822 SETTABLE                         R27 R25 R26
      823 GETTABLEKS                       R26 R20 K295 ["SuggestSegmentation"]
      825 DUPTABLE                         R27 K369 [{"renderer"}]
      826 GETTABLEKS                       R28 R12 K295 ["SuggestSegmentation"]
      828 SETTABLEKS                       R28 R27 K138 ["renderer"]
      830 SETTABLE                         R27 R25 R26
      831 GETTABLEKS                       R26 R20 K297 ["SelectedInstanceRef"]
      833 DUPTABLE                         R27 K371 [{"label", "internal", "instanceClasses"}]
      834 DUPTABLE                         R28 K373 [{["namespace"] = "MeshGen", ["key"] = "InputBoundingBox"}]
      835 SETTABLEKS                       R28 R27 K112 ["label"]
      837 JUMPIFNOT                        R21 ; [+2]
      838 LOADB                            R28 1
      839 JUMP                             ; [+1]
      840 LOADNIL                          R28
      841 SETTABLEKS                       R28 R27 K129 ["internal"]
      843 NEWTABLE                         R28 0 1
      845 GETTABLEKS                       R30 R5 K374 ["getFFlagGen3dSharedMeshGenOps"]
      847 CALL                             R30 0 1
      848 JUMPIFNOT                        R30 ; [+5]
      849 GETTABLEKS                       R29 R5 K15 ["MeshGenConstants"]
      851 GETTABLEKS                       R29 R29 K375 ["BOUNDING_BOX_INSTANCE_TYPE"]
      853 JUMP                             ; [+2]
      854 GETTABLEKS                       R29 R6 K375 ["BOUNDING_BOX_INSTANCE_TYPE"]
      856 SETLIST                          R28 R29 1 [1]
      858 SETTABLEKS                       R28 R27 K370 ["instanceClasses"]
      860 SETTABLE                         R27 R25 R26
      861 SETTABLEKS                       R25 R24 K105 ["rows"]
      863 SETTABLEKS                       R24 R19 K14 ["MeshGen"]
      865 DUPTABLE                         R20 K379 [{["Prompt"] = "prompt", ["HintImage"] = "hintImage", ["PartNames"] = "partNames", ["SuggestSegmentation"] = "suggestSegmentation"}]
      866 DUPTABLE                         R21 K382 [{["formId"] = "generate_procedural_model", ["heading"] = "/generate_procedural_model", ["row"], ["imageSelection"], ["rows"]}]
      867 SETTABLEKS                       R20 R21 K101 ["row"]
      869 GETTABLEKS                       R23 R4 K311 ["EngineFeatureAssistantGen3dImagePreview"]
      871 JUMPIFNOT                        R23 ; [+14]
      872 DUPTABLE                         R22 K383 [{"promptKey", "wizardMode", "model"}]
      873 GETTABLEKS                       R23 R20 K126 ["Prompt"]
      875 SETTABLEKS                       R23 R22 K312 ["promptKey"]
      877 GETTABLEKS                       R23 R4 K384 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      879 SETTABLEKS                       R23 R22 K313 ["wizardMode"]
      881 GETTABLEKS                       R23 R4 K318 ["FStringAssistantMeshGenImageGenModelOverride"]
      883 SETTABLEKS                       R23 R22 K314 ["model"]
      885 JUMP                             ; [+1]
      886 LOADNIL                          R22
      887 SETTABLEKS                       R22 R21 K304 ["imageSelection"]
      889 NEWTABLE                         R22 4 0
      891 GETTABLEKS                       R23 R20 K126 ["Prompt"]
      893 DUPTABLE                         R24 K346 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      894 DUPTABLE                         R25 K239 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      895 SETTABLEKS                       R25 R24 K112 ["label"]
      897 GETTABLEKS                       R26 R4 K347 ["FFlagAssistantAddPlaceholderProp"]
      899 JUMPIFNOT                        R26 ; [+2]
      900 DUPTABLE                         R25 K349 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      901 JUMP                             ; [+1]
      902 LOADNIL                          R25
      903 SETTABLEKS                       R25 R24 K236 ["placeholder"]
      905 SETTABLE                         R24 R22 R23
      906 GETTABLEKS                       R23 R20 K287 ["HintImage"]
      908 DUPTABLE                         R24 K135 [{"label"}]
      909 DUPTABLE                         R25 K351 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      910 SETTABLEKS                       R25 R24 K112 ["label"]
      912 SETTABLE                         R24 R22 R23
      913 GETTABLEKS                       R23 R20 K377 ["PartNames"]
      915 DUPTABLE                         R24 K355 [{"label", "infoPopover", "suggestion"}]
      916 DUPTABLE                         R25 K386 [{["namespace"] = "PrimitiveGen", ["key"] = "InputPartNamesTitle"}]
      917 SETTABLEKS                       R25 R24 K112 ["label"]
      919 DUPTABLE                         R25 K359 [{"body", "learnMore"}]
      920 DUPTABLE                         R26 K388 [{["namespace"] = "PrimGenSegmentation", ["key"] = "ExperimentalFeature"}]
      921 SETTABLEKS                       R26 R25 K211 ["body"]
      923 DUPTABLE                         R26 K364 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      924 SETTABLEKS                       R26 R25 K358 ["learnMore"]
      926 SETTABLEKS                       R25 R24 K208 ["infoPopover"]
      928 DUPTABLE                         R25 K390 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "procedural"}]
      929 GETTABLEKS                       R26 R20 K126 ["Prompt"]
      931 SETTABLEKS                       R26 R25 K312 ["promptKey"]
      933 GETTABLEKS                       R26 R20 K295 ["SuggestSegmentation"]
      935 SETTABLEKS                       R26 R25 K322 ["suggestKey"]
      937 SETTABLEKS                       R25 R24 K354 ["suggestion"]
      939 SETTABLE                         R24 R22 R23
      940 GETTABLEKS                       R23 R20 K295 ["SuggestSegmentation"]
      942 DUPTABLE                         R24 K369 [{"renderer"}]
      943 GETTABLEKS                       R25 R12 K295 ["SuggestSegmentation"]
      945 SETTABLEKS                       R25 R24 K138 ["renderer"]
      947 SETTABLE                         R24 R22 R23
      948 SETTABLEKS                       R22 R21 K105 ["rows"]
      950 SETTABLEKS                       R21 R19 K385 ["PrimitiveGen"]
      952 DUPTABLE                         R20 K395 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["Parts"] = "parts"}]
      953 DUPTABLE                         R21 K398 [{["formId"] = "segment_mesh", ["heading"] = "/segment_mesh", ["row"], ["confirmButton"], ["rows"]}]
      954 SETTABLEKS                       R20 R21 K101 ["row"]
      956 DUPTABLE                         R22 K400 [{["namespace"] = "SegmentMesh", ["key"] = "ConfirmButton"}]
      957 SETTABLEKS                       R22 R21 K102 ["confirmButton"]
      959 NEWTABLE                         R22 4 0
      961 GETTABLEKS                       R23 R20 K297 ["SelectedInstanceRef"]
      963 DUPTABLE                         R24 K402 [{"label", "validityBridge", "requirementMessage"}]
      964 DUPTABLE                         R25 K404 [{["namespace"] = "SegmentMesh", ["key"] = "MeshInstanceLabel"}]
      965 SETTABLEKS                       R25 R24 K112 ["label"]
      967 GETTABLEKS                       R25 R15 K28 ["SegmentMesh"]
      969 SETTABLEKS                       R25 R24 K401 ["validityBridge"]
      971 DUPTABLE                         R25 K406 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      972 SETTABLEKS                       R25 R24 K123 ["requirementMessage"]
      974 SETTABLE                         R24 R22 R23
      975 GETTABLEKS                       R24 R20 K297 ["SelectedInstanceRef"]
      977 LOADK                            R25 K407 [".isValid"]
      978 CONCAT                           R23 R24 R25
      979 DUPTABLE                         R24 K408 [{"requirementMessage"}]
      980 DUPTABLE                         R25 K406 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      981 SETTABLEKS                       R25 R24 K123 ["requirementMessage"]
      983 SETTABLE                         R24 R22 R23
      984 GETTABLEKS                       R23 R20 K391 ["SelectedInstanceRefIsValid"]
      986 DUPTABLE                         R24 K408 [{"requirementMessage"}]
      987 DUPTABLE                         R25 K406 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      988 SETTABLEKS                       R25 R24 K123 ["requirementMessage"]
      990 SETTABLE                         R24 R22 R23
      991 GETTABLEKS                       R23 R20 K393 ["Parts"]
      993 DUPTABLE                         R24 K409 [{["label"], ["multiLine"] = False}]
      994 DUPTABLE                         R25 K357 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      995 SETTABLEKS                       R25 R24 K112 ["label"]
      997 SETTABLE                         R24 R22 R23
      998 SETTABLEKS                       R22 R21 K105 ["rows"]
     1000 SETTABLEKS                       R21 R19 K28 ["SegmentMesh"]
     1002 DUPTABLE                         R20 K413 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["Mode"] = "mode", ["AutoSelectView"] = "autoSelectView"}]
     1003 GETTABLEKS                       R21 R5 K414 ["getFFlagGen3dTextureGenBatchedPreview"]
     1005 CALL                             R21 0 1
     1006 GETTABLEKS                       R22 R4 K415 ["FFlagAssistantTextureGenModelSelection"]
     1008 JUMPIFNOT                        R22 ; [+1]
     1009 NOT                              R22 R21
     1010 MOVE                             R23 R21
     1011 JUMPIFNOT                        R23 ; [+2]
     1012 GETTABLEKS                       R23 R4 K416 ["FFlagAssistantTextureGenAutoSelectView"]
     1014 DUPTABLE                         R24 K419 [{["formId"] = "generate_texture", ["heading"] = "/generate_texture", ["row"], ["description"], ["confirmButton"], ["imageSelection"], ["rows"]}]
     1015 SETTABLEKS                       R20 R24 K101 ["row"]
     1017 DUPTABLE                         R25 K420 [{["namespace"] = "TextureGen", ["key"] = "InputDisclaimer"}]
     1018 SETTABLEKS                       R25 R24 K303 ["description"]
     1020 DUPTABLE                         R25 K422 [{["namespace"] = "TextureGen", ["key"] = "InputGenerateTexture"}]
     1021 SETTABLEKS                       R25 R24 K102 ["confirmButton"]
     1023 GETTABLEKS                       R26 R4 K311 ["EngineFeatureAssistantGen3dImagePreview"]
     1025 JUMPIFNOT                        R26 ; [+43]
     1026 DUPTABLE                         R25 K428 [{["promptKey"], ["wizardMode"], ["model"], ["resolveSeedImageFromSelectedInstance"] = True, ["skipField"], ["skipValues"], ["useTexturePreview"], ["autoSelectViewField"]}]
     1027 GETTABLEKS                       R26 R20 K36 ["TextPrompt"]
     1029 SETTABLEKS                       R26 R25 K312 ["promptKey"]
     1031 GETTABLEKS                       R26 R4 K429 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
     1033 SETTABLEKS                       R26 R25 K313 ["wizardMode"]
     1035 GETTABLEKS                       R26 R4 K318 ["FStringAssistantMeshGenImageGenModelOverride"]
     1037 SETTABLEKS                       R26 R25 K314 ["model"]
     1039 JUMPIFNOT                        R22 ; [+3]
     1040 GETTABLEKS                       R26 R20 K113 ["Mode"]
     1042 JUMP                             ; [+1]
     1043 LOADNIL                          R26
     1044 SETTABLEKS                       R26 R25 K424 ["skipField"]
     1046 JUMPIFNOT                        R22 ; [+9]
     1047 NEWTABLE                         R26 0 1
     1049 GETTABLEKS                       R27 R9 K430 ["MODE"]
     1051 GETTABLEKS                       R27 R27 K283 ["Quality"]
     1053 SETLIST                          R26 R27 1 [1]
     1055 JUMP                             ; [+1]
     1056 LOADNIL                          R26
     1057 SETTABLEKS                       R26 R25 K425 ["skipValues"]
     1059 SETTABLEKS                       R21 R25 K426 ["useTexturePreview"]
     1061 JUMPIFNOT                        R23 ; [+3]
     1062 GETTABLEKS                       R26 R20 K411 ["AutoSelectView"]
     1064 JUMP                             ; [+1]
     1065 LOADNIL                          R26
     1066 SETTABLEKS                       R26 R25 K427 ["autoSelectViewField"]
     1068 JUMP                             ; [+1]
     1069 LOADNIL                          R25
     1070 SETTABLEKS                       R25 R24 K304 ["imageSelection"]
     1072 NEWTABLE                         R25 8 0
     1074 GETTABLEKS                       R26 R20 K297 ["SelectedInstanceRef"]
     1076 DUPTABLE                         R27 K431 [{"label", "instanceClasses", "validityBridge", "requirementMessage"}]
     1077 DUPTABLE                         R28 K433 [{["namespace"] = "TextureGen", ["key"] = "InputSelectedMesh"}]
     1078 SETTABLEKS                       R28 R27 K112 ["label"]
     1080 NEWTABLE                         R28 0 2
     1082 LOADK                            R29 K434 ["MeshPart"]
     1083 LOADK                            R30 K435 ["Model"]
     1084 SETLIST                          R28 R29 2 [1]
     1086 SETTABLEKS                       R28 R27 K370 ["instanceClasses"]
     1088 GETTABLEKS                       R28 R15 K21 ["TextureGen"]
     1090 SETTABLEKS                       R28 R27 K401 ["validityBridge"]
     1092 DUPTABLE                         R28 K406 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1093 SETTABLEKS                       R28 R27 K123 ["requirementMessage"]
     1095 SETTABLE                         R27 R25 R26
     1096 GETTABLEKS                       R27 R20 K297 ["SelectedInstanceRef"]
     1098 LOADK                            R28 K407 [".isValid"]
     1099 CONCAT                           R26 R27 R28
     1100 DUPTABLE                         R27 K408 [{"requirementMessage"}]
     1101 DUPTABLE                         R28 K406 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1102 SETTABLEKS                       R28 R27 K123 ["requirementMessage"]
     1104 SETTABLE                         R27 R25 R26
     1105 GETTABLEKS                       R26 R20 K391 ["SelectedInstanceRefIsValid"]
     1107 DUPTABLE                         R27 K408 [{"requirementMessage"}]
     1108 DUPTABLE                         R28 K406 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1109 SETTABLEKS                       R28 R27 K123 ["requirementMessage"]
     1111 SETTABLE                         R27 R25 R26
     1112 GETTABLEKS                       R26 R20 K36 ["TextPrompt"]
     1114 DUPTABLE                         R27 K346 [{["label"], ["multiLine"] = True, ["placeholder"]}]
     1115 DUPTABLE                         R28 K436 [{["namespace"] = "TextureGen", ["key"] = "InputPromptTitle"}]
     1116 SETTABLEKS                       R28 R27 K112 ["label"]
     1118 GETTABLEKS                       R29 R4 K347 ["FFlagAssistantAddPlaceholderProp"]
     1120 JUMPIFNOT                        R29 ; [+2]
     1121 DUPTABLE                         R28 K437 [{["namespace"] = "TextureGen", ["key"] = "InputPromptPlaceholder"}]
     1122 JUMP                             ; [+1]
     1123 LOADNIL                          R28
     1124 SETTABLEKS                       R28 R27 K236 ["placeholder"]
     1126 SETTABLE                         R27 R25 R26
     1127 GETTABLEKS                       R26 R20 K287 ["HintImage"]
     1129 DUPTABLE                         R27 K135 [{"label"}]
     1130 DUPTABLE                         R28 K438 [{["namespace"] = "TextureGen", ["key"] = "InputHintImageTitle"}]
     1131 SETTABLEKS                       R28 R27 K112 ["label"]
     1133 SETTABLE                         R27 R25 R26
     1134 GETTABLEKS                       R26 R20 K113 ["Mode"]
     1136 DUPTABLE                         R27 K439 [{"label", "optionLabels", "infoPopover"}]
     1137 DUPTABLE                         R28 K441 [{["namespace"] = "TextureGen", ["key"] = "ModelSelectorTitle"}]
     1138 SETTABLEKS                       R28 R27 K112 ["label"]
     1140 NEWTABLE                         R28 2 0
     1142 GETTABLEKS                       R29 R9 K430 ["MODE"]
     1144 GETTABLEKS                       R29 R29 K442 ["Fast"]
     1146 DUPTABLE                         R30 K444 [{["namespace"] = "TextureGen", ["key"] = "ModelFast"}]
     1147 SETTABLE                         R30 R28 R29
     1148 GETTABLEKS                       R29 R9 K430 ["MODE"]
     1150 GETTABLEKS                       R29 R29 K283 ["Quality"]
     1152 DUPTABLE                         R30 K446 [{["namespace"] = "TextureGen", ["key"] = "ModelQuality"}]
     1153 SETTABLE                         R30 R28 R29
     1154 SETTABLEKS                       R28 R27 K114 ["optionLabels"]
     1156 GETTABLEKS                       R29 R4 K415 ["FFlagAssistantTextureGenModelSelection"]
     1158 JUMPIFNOT                        R29 ; [+5]
     1159 DUPTABLE                         R28 K212 [{"body"}]
     1160 DUPTABLE                         R29 K448 [{["namespace"] = "TextureGen", ["key"] = "ModelQualityInfo"}]
     1161 SETTABLEKS                       R29 R28 K211 ["body"]
     1163 JUMP                             ; [+1]
     1164 LOADNIL                          R28
     1165 SETTABLEKS                       R28 R27 K208 ["infoPopover"]
     1167 SETTABLE                         R27 R25 R26
     1168 GETTABLEKS                       R26 R20 K411 ["AutoSelectView"]
     1170 DUPTABLE                         R27 K449 [{"label", "renderer"}]
     1171 DUPTABLE                         R28 K451 [{["namespace"] = "TextureGen", ["key"] = "AutoSelectViewLabel"}]
     1172 SETTABLEKS                       R28 R27 K112 ["label"]
     1174 GETTABLEKS                       R28 R12 K452 ["LabeledBoolean"]
     1176 SETTABLEKS                       R28 R27 K138 ["renderer"]
     1178 SETTABLE                         R27 R25 R26
     1179 SETTABLEKS                       R25 R24 K105 ["rows"]
     1181 SETTABLEKS                       R24 R19 K21 ["TextureGen"]
     1183 SETTABLEKS                       R19 R0 K453 ["Configs"]
     1185 SETTABLEKS                       R15 R0 K454 ["ValidityBridge"]
     1187 SETTABLEKS                       R16 R0 K455 ["ValueChangedAction"]
     1189 SETTABLEKS                       R17 R0 K456 ["LiveChannelBridge"]
     1191 NEWTABLE                         R20 0 0
     1193 GETIMPORT                        R21 K458 [pairs]
     1195 MOVE                             R22 R19
     1196 CALL                             R21 1 3
     1197 FORGPREP_NEXT                    R21
     1198 GETTABLEKS                       R26 R25 K96 ["formId"]
     1200 SETTABLE                         R25 R20 R26
     1201 FORGLOOP                         R21 2 ; [-4]
     1203 LOADNIL                          R21
     1204 NEWCLOSURE                       R22 P6
     1205 CAPTURE                          REF R21
     1206 CAPTURE                          VAL R20
     1207 SETTABLEKS                       R22 R0 K459 ["getForm"]
     1209 DUPCLOSURE                       R22 K460 [PROTO_7]
     1210 CAPTURE                          VAL R0
     1211 SETTABLEKS                       R22 R0 K461 ["getSubmittedFields"]
     1213 DUPCLOSURE                       R22 K462 [PROTO_8]
     1214 CAPTURE                          VAL R0
     1215 CAPTURE                          VAL R18
     1216 SETTABLEKS                       R22 R0 K463 ["getRowPresentation"]
     1218 NEWCLOSURE                       R22 P9
     1219 CAPTURE                          REF R21
     1220 SETTABLEKS                       R22 R0 K464 ["_registerTestConfig"]
     1222 NEWCLOSURE                       R22 P10
     1223 CAPTURE                          REF R21
     1224 SETTABLEKS                       R22 R0 K465 ["_clearTestConfigs"]
     1226 CLOSEUPVALS                      R21
     1227 RETURN                           R0 1
