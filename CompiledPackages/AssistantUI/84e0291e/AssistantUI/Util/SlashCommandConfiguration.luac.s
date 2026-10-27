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
        5 JUMPIFNOTEQ                      R1 R2 ; [+3]
        7 LOADK                            R2 K1 ["/generate_animation (Edit New)"]
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 2
       10 JUMPIFNOTEQ                      R1 R2 ; [+3]
       12 LOADK                            R2 K2 ["/generate_animation (Edit Upscale)"]
       13 RETURN                           R2 1
       14 LOADNIL                          R2
       15 RETURN                           R2 1

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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETTABLEKS                       R2 R0 K0 ["formId"]
        6 SETTABLE                         R0 R1 R2
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
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
      123 CAPTURE                          VAL R23
      124 CAPTURE                          VAL R24
      125 SETTABLEKS                       R36 R35 K100 ["headingResolver"]
      127 SETTABLEKS                       R20 R35 K101 ["row"]
      129 DUPTABLE                         R36 K109 [{["namespace"] = "AnimationGen", ["key"] = "InputGenerate"}]
      130 SETTABLEKS                       R36 R35 K102 ["confirmButton"]
      132 DUPCLOSURE                       R36 K110 [PROTO_2]
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R33
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R32
      138 CAPTURE                          VAL R23
      139 CAPTURE                          VAL R24
      140 SETTABLEKS                       R36 R35 K103 ["footerResolver"]
      142 DUPCLOSURE                       R36 K111 [PROTO_3]
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R22
      145 CAPTURE                          VAL R29
      146 CAPTURE                          VAL R30
      147 CAPTURE                          VAL R25
      148 CAPTURE                          VAL R26
      149 CAPTURE                          VAL R28
      150 CAPTURE                          VAL R23
      151 CAPTURE                          VAL R27
      152 CAPTURE                          VAL R24
      153 SETTABLEKS                       R36 R35 K104 ["axisResolver"]
      155 NEWTABLE                         R36 16 0
      157 GETTABLEKS                       R37 R20 K34 ["GenerationMode"]
      159 DUPTABLE                         R38 K115 [{["label"] = "Mode", ["optionLabels"]}]
      160 NEWTABLE                         R39 4 0
      162 LOADK                            R40 K116 ["New animation"]
      163 SETTABLE                         R40 R39 R21
      164 LOADK                            R40 K117 ["Upscale animation"]
      165 SETTABLE                         R40 R39 R22
      166 LOADK                            R40 K118 ["Edit New"]
      167 SETTABLE                         R40 R39 R23
      168 LOADK                            R40 K119 ["Edit Upscale"]
      169 SETTABLE                         R40 R39 R24
      170 SETTABLEKS                       R39 R38 K114 ["optionLabels"]
      172 SETTABLE                         R38 R36 R37
      173 GETTABLEKS                       R37 R20 K36 ["TextPrompt"]
      175 DUPTABLE                         R38 K123 [{["label"], ["multiLine"] = True, ["requirementMessage"] = "A text prompt is required"}]
      176 DUPTABLE                         R39 K125 [{["namespace"] = "AnimationGen", ["key"] = "Prompt"}]
      177 SETTABLEKS                       R39 R38 K112 ["label"]
      179 SETTABLE                         R38 R36 R37
      180 GETTABLEKS                       R37 R20 K38 ["EditTextPrompt"]
      182 DUPTABLE                         R38 K126 [{["label"], ["multiLine"] = True}]
      183 DUPTABLE                         R39 K125 [{["namespace"] = "AnimationGen", ["key"] = "Prompt"}]
      184 SETTABLEKS                       R39 R38 K112 ["label"]
      186 SETTABLE                         R38 R36 R37
      187 GETTABLEKS                       R37 R20 K44 ["EditDuration"]
      189 DUPTABLE                         R38 K128 [{["internal"] = True}]
      190 SETTABLE                         R38 R36 R37
      191 GETTABLEKS                       R37 R20 K40 ["SelectedRigRef"]
      193 DUPTABLE                         R38 K130 [{["label"], ["shouldSelectModel"] = True}]
      194 DUPTABLE                         R39 K132 [{["namespace"] = "AnimationGen", ["key"] = "InputRig"}]
      195 SETTABLEKS                       R39 R38 K112 ["label"]
      197 SETTABLE                         R38 R36 R37
      198 GETTABLEKS                       R37 R20 K42 ["Duration"]
      200 DUPTABLE                         R38 K133 [{"label"}]
      201 DUPTABLE                         R39 K135 [{["namespace"] = "AnimationGen", ["key"] = "InputDuration"}]
      202 SETTABLEKS                       R39 R38 K112 ["label"]
      204 SETTABLE                         R38 R36 R37
      205 GETTABLEKS                       R37 R20 K46 ["InputAssetId"]
      207 DUPTABLE                         R38 K138 [{["label"], ["renderer"], ["requirementMessage"] = "An animation clip is required for upscaling"}]
      208 DUPTABLE                         R39 K140 [{["namespace"] = "AnimationGen", ["key"] = "AnimationClip"}]
      209 SETTABLEKS                       R39 R38 K112 ["label"]
      211 GETTABLEKS                       R39 R12 K141 ["Content"]
      213 SETTABLEKS                       R39 R38 K136 ["renderer"]
      215 SETTABLE                         R38 R36 R37
      216 GETTABLEKS                       R37 R20 K48 ["ClipPreview"]
      218 DUPTABLE                         R38 K145 [{["renderer"], ["clipRowName"], ["rigRowName"], ["generateButtonId"] = "generateUpscale"}]
      219 GETTABLEKS                       R39 R12 K48 ["ClipPreview"]
      221 SETTABLEKS                       R39 R38 K136 ["renderer"]
      223 GETTABLEKS                       R39 R20 K46 ["InputAssetId"]
      225 SETTABLEKS                       R39 R38 K142 ["clipRowName"]
      227 GETTABLEKS                       R39 R20 K40 ["SelectedRigRef"]
      229 SETTABLEKS                       R39 R38 K143 ["rigRowName"]
      231 SETTABLE                         R38 R36 R37
      232 GETTABLEKS                       R37 R20 K50 ["ArmsReach"]
      234 DUPTABLE                         R38 K155 [{["label"] = "Arms Bending", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      235 GETTABLEKS                       R39 R12 K156 ["NumberInput"]
      237 SETTABLEKS                       R39 R38 K136 ["renderer"]
      239 GETTABLEKS                       R39 R16 K30 ["AnimationGenUpscaleForm"]
      241 SETTABLEKS                       R39 R38 K154 ["valueChangedAction"]
      243 SETTABLE                         R38 R36 R37
      244 GETTABLEKS                       R37 R20 K52 ["LegsReach"]
      246 DUPTABLE                         R38 K158 [{["label"] = "Legs Bending", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      247 GETTABLEKS                       R39 R12 K156 ["NumberInput"]
      249 SETTABLEKS                       R39 R38 K136 ["renderer"]
      251 GETTABLEKS                       R39 R16 K30 ["AnimationGenUpscaleForm"]
      253 SETTABLEKS                       R39 R38 K154 ["valueChangedAction"]
      255 SETTABLE                         R38 R36 R37
      256 GETTABLEKS                       R37 R20 K54 ["EditSourceId"]
      258 DUPTABLE                         R38 K160 [{"renderer", "durationRowName"}]
      259 GETTABLEKS                       R39 R12 K161 ["EditScrubbar"]
      261 SETTABLEKS                       R39 R38 K136 ["renderer"]
      263 GETTABLEKS                       R39 R20 K56 ["EditSourceDuration"]
      265 SETTABLEKS                       R39 R38 K159 ["durationRowName"]
      267 SETTABLE                         R38 R36 R37
      268 GETTABLEKS                       R37 R20 K56 ["EditSourceDuration"]
      270 DUPTABLE                         R38 K128 [{["internal"] = True}]
      271 SETTABLE                         R38 R36 R37
      272 GETTABLEKS                       R37 R20 K58 ["R6Blend"]
      274 DUPTABLE                         R38 K163 [{["label"] = "Blend with R6", ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      275 GETTABLEKS                       R39 R12 K156 ["NumberInput"]
      277 SETTABLEKS                       R39 R38 K136 ["renderer"]
      279 GETTABLEKS                       R39 R16 K30 ["AnimationGenUpscaleForm"]
      281 SETTABLEKS                       R39 R38 K154 ["valueChangedAction"]
      283 SETTABLE                         R38 R36 R37
      284 GETTABLEKS                       R37 R20 K60 ["UpperBodyBlend"]
      286 DUPTABLE                         R38 K166 [{["label"] = "Upper Body Blend", ["parentRow"], ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      287 GETTABLEKS                       R39 R20 K58 ["R6Blend"]
      289 SETTABLEKS                       R39 R38 K165 ["parentRow"]
      291 GETTABLEKS                       R39 R12 K156 ["NumberInput"]
      293 SETTABLEKS                       R39 R38 K136 ["renderer"]
      295 GETTABLEKS                       R39 R16 K30 ["AnimationGenUpscaleForm"]
      297 SETTABLEKS                       R39 R38 K154 ["valueChangedAction"]
      299 SETTABLE                         R38 R36 R37
      300 GETTABLEKS                       R37 R20 K62 ["LowerBodyBlend"]
      302 DUPTABLE                         R38 K168 [{["label"] = "Lower Body Blend", ["parentRow"], ["renderer"], ["scrubbable"] = True, ["step"] = 0.25, ["precision"] = 0, ["suffix"] = "%", ["valueChangedAction"]}]
      303 GETTABLEKS                       R39 R20 K58 ["R6Blend"]
      305 SETTABLEKS                       R39 R38 K165 ["parentRow"]
      307 GETTABLEKS                       R39 R12 K156 ["NumberInput"]
      309 SETTABLEKS                       R39 R38 K136 ["renderer"]
      311 GETTABLEKS                       R39 R16 K30 ["AnimationGenUpscaleForm"]
      313 SETTABLEKS                       R39 R38 K154 ["valueChangedAction"]
      315 SETTABLE                         R38 R36 R37
      316 SETTABLEKS                       R36 R35 K105 ["rows"]
      318 SETTABLEKS                       R35 R19 K7 ["AnimationGen"]
      320 DUPTABLE                         R20 K183 [{["SelectedModelRef"] = "selectedModelRef", ["SetupType"] = "setup_type", ["R15Plus"] = "r15_plus", ["AlignFrontAngle"] = "align_front_angle", ["DecalToDynamicHead"] = "decal_to_dynamic_head", ["EnableAdditionalHeadProcessing"] = "enable_additional_head_processing", ["ReduceTriangles"] = "reduce_triangles"}]
      321 DUPTABLE                         R21 K186 [{["Platform"] = "Platform", ["Development"] = "Development"}]
      322 DUPTABLE                         R22 K73 [{["visible"] = True, ["enabled"] = True}]
      323 DUPTABLE                         R23 K75 [{["visible"] = False, ["enabled"] = False}]
      324 DUPTABLE                         R24 K189 [{["formId"] = "auto_setup_avatar", ["heading"] = "/auto_setup_avatar", ["row"], ["confirmButton"], ["axisResolver"], ["rows"]}]
      325 SETTABLEKS                       R20 R24 K101 ["row"]
      327 DUPTABLE                         R25 K192 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputSetUpAvatar"}]
      328 SETTABLEKS                       R25 R24 K102 ["confirmButton"]
      330 DUPCLOSURE                       R25 K193 [PROTO_4]
      331 CAPTURE                          VAL R20
      332 CAPTURE                          VAL R22
      333 CAPTURE                          VAL R23
      334 SETTABLEKS                       R25 R24 K104 ["axisResolver"]
      336 NEWTABLE                         R25 8 0
      338 GETTABLEKS                       R26 R20 K169 ["SelectedModelRef"]
      340 DUPTABLE                         R27 K194 [{["label"], ["shouldSelectModel"] = True, ["requirementMessage"]}]
      341 DUPTABLE                         R28 K196 [{["namespace"] = "AvatarAutoSetup", ["key"] = "InputModel"}]
      342 SETTABLEKS                       R28 R27 K112 ["label"]
      344 DUPTABLE                         R28 K198 [{["namespace"] = "AvatarAutoSetup", ["key"] = "ModelRequired"}]
      345 SETTABLEKS                       R28 R27 K121 ["requirementMessage"]
      347 SETTABLE                         R27 R25 R26
      348 GETTABLEKS                       R26 R20 K171 ["SetupType"]
      350 DUPTABLE                         R27 K199 [{"label", "optionLabels"}]
      351 DUPTABLE                         R28 K201 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "SetupType"}]
      352 SETTABLEKS                       R28 R27 K112 ["label"]
      354 NEWTABLE                         R28 2 0
      356 DUPTABLE                         R29 K203 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "PlatformAvatar"}]
      357 SETTABLEKS                       R29 R28 K184 ["Platform"]
      359 DUPTABLE                         R29 K205 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "DevelopmentAvatar"}]
      360 SETTABLEKS                       R29 R28 K185 ["Development"]
      362 SETTABLEKS                       R28 R27 K114 ["optionLabels"]
      364 SETTABLE                         R27 R25 R26
      365 GETTABLEKS                       R26 R20 K173 ["R15Plus"]
      367 DUPTABLE                         R27 K207 [{"label", "infoPopover"}]
      368 DUPTABLE                         R28 K208 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "R15Plus"}]
      369 SETTABLEKS                       R28 R27 K112 ["label"]
      371 DUPTABLE                         R28 K210 [{"body"}]
      372 DUPTABLE                         R29 K212 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "R15PlusDescription"}]
      373 SETTABLEKS                       R29 R28 K209 ["body"]
      375 SETTABLEKS                       R28 R27 K206 ["infoPopover"]
      377 SETTABLE                         R27 R25 R26
      378 GETTABLEKS                       R26 R20 K175 ["AlignFrontAngle"]
      380 DUPTABLE                         R27 K207 [{"label", "infoPopover"}]
      381 DUPTABLE                         R28 K214 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "AlignFront"}]
      382 SETTABLEKS                       R28 R27 K112 ["label"]
      384 DUPTABLE                         R28 K210 [{"body"}]
      385 DUPTABLE                         R29 K216 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "AlignFrontDescription"}]
      386 SETTABLEKS                       R29 R28 K209 ["body"]
      388 SETTABLEKS                       R28 R27 K206 ["infoPopover"]
      390 SETTABLE                         R27 R25 R26
      391 GETTABLEKS                       R26 R20 K177 ["DecalToDynamicHead"]
      393 DUPTABLE                         R27 K207 [{"label", "infoPopover"}]
      394 DUPTABLE                         R28 K217 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "DecalToDynamicHead"}]
      395 SETTABLEKS                       R28 R27 K112 ["label"]
      397 DUPTABLE                         R28 K210 [{"body"}]
      398 DUPTABLE                         R29 K219 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "DecalToDynamicHeadDescription"}]
      399 SETTABLEKS                       R29 R28 K209 ["body"]
      401 SETTABLEKS                       R28 R27 K206 ["infoPopover"]
      403 SETTABLE                         R27 R25 R26
      404 GETTABLEKS                       R26 R20 K179 ["EnableAdditionalHeadProcessing"]
      406 DUPTABLE                         R27 K207 [{"label", "infoPopover"}]
      407 DUPTABLE                         R28 K221 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "FacialCaging"}]
      408 SETTABLEKS                       R28 R27 K112 ["label"]
      410 DUPTABLE                         R28 K210 [{"body"}]
      411 DUPTABLE                         R29 K223 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "FacialCagingDescription"}]
      412 SETTABLEKS                       R29 R28 K209 ["body"]
      414 SETTABLEKS                       R28 R27 K206 ["infoPopover"]
      416 SETTABLE                         R27 R25 R26
      417 GETTABLEKS                       R26 R20 K181 ["ReduceTriangles"]
      419 DUPTABLE                         R27 K207 [{"label", "infoPopover"}]
      420 DUPTABLE                         R28 K224 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "ReduceTriangles"}]
      421 SETTABLEKS                       R28 R27 K112 ["label"]
      423 DUPTABLE                         R28 K210 [{"body"}]
      424 DUPTABLE                         R29 K226 [{["namespace"] = "AvatarAutoSetupOptions", ["key"] = "ReduceTrianglesDescription"}]
      425 SETTABLEKS                       R29 R28 K209 ["body"]
      427 SETTABLEKS                       R28 R27 K206 ["infoPopover"]
      429 SETTABLE                         R27 R25 R26
      430 SETTABLEKS                       R25 R24 K105 ["rows"]
      432 SETTABLEKS                       R24 R19 K190 ["AvatarAutoSetup"]
      434 DUPTABLE                         R20 K227 [{["TextPrompt"] = "textPrompt"}]
      435 DUPTABLE                         R21 K230 [{["formId"] = "generate_avatar", ["heading"] = "/generate_avatar", ["row"], ["confirmButton"], ["rows"]}]
      436 SETTABLEKS                       R20 R21 K101 ["row"]
      438 DUPTABLE                         R22 K233 [{["namespace"] = "AvatarGen", ["key"] = "InputGenerateAvatar"}]
      439 SETTABLEKS                       R22 R21 K102 ["confirmButton"]
      441 NEWTABLE                         R22 1 0
      443 GETTABLEKS                       R23 R20 K36 ["TextPrompt"]
      445 DUPTABLE                         R24 K235 [{["label"], ["multiLine"] = True, ["placeholder"], ["requirementMessage"]}]
      446 DUPTABLE                         R25 K237 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      447 SETTABLEKS                       R25 R24 K112 ["label"]
      449 DUPTABLE                         R25 K239 [{["namespace"] = "AvatarGen", ["key"] = "InputPromptPlaceholder"}]
      450 SETTABLEKS                       R25 R24 K234 ["placeholder"]
      452 DUPTABLE                         R25 K241 [{["namespace"] = "AvatarGen", ["key"] = "PromptRequired"}]
      453 SETTABLEKS                       R25 R24 K121 ["requirementMessage"]
      455 SETTABLE                         R24 R22 R23
      456 SETTABLEKS                       R22 R21 K105 ["rows"]
      458 SETTABLEKS                       R21 R19 K231 ["AvatarGen"]
      460 GETTABLEKS                       R20 R8 K242 ["Row"]
      462 GETTABLEKS                       R21 R8 K243 ["ModelSegment"]
      464 GETTABLEKS                       R22 R5 K244 ["Constants"]
      466 GETTABLEKS                       R22 R22 K245 ["Enums"]
      468 GETTABLEKS                       R22 R22 K246 ["SceneQuality"]
      470 NEWTABLE                         R23 2 0
      472 GETTABLEKS                       R24 R21 K247 ["ProcModels"]
      474 DUPTABLE                         R25 K249 [{["namespace"] = "GenerateLayout", ["key"] = "ProcModels"}]
      475 SETTABLE                         R25 R23 R24
      476 GETTABLEKS                       R24 R21 K250 ["ProcModelsAndMeshes"]
      478 DUPTABLE                         R25 K251 [{["namespace"] = "GenerateLayout", ["key"] = "ProcModelsAndMeshes"}]
      479 SETTABLE                         R25 R23 R24
      480 NEWTABLE                         R24 4 0
      482 GETTABLEKS                       R25 R22 K252 ["Minimal"]
      484 DUPTABLE                         R26 K254 [{["namespace"] = "GenerateLayout", ["key"] = "QualityMinimal"}]
      485 SETTABLE                         R26 R24 R25
      486 GETTABLEKS                       R25 R22 K255 ["Low"]
      488 DUPTABLE                         R26 K257 [{["namespace"] = "GenerateLayout", ["key"] = "QualityLow"}]
      489 SETTABLE                         R26 R24 R25
      490 GETTABLEKS                       R25 R22 K258 ["Medium"]
      492 DUPTABLE                         R26 K260 [{["namespace"] = "GenerateLayout", ["key"] = "QualityMedium"}]
      493 SETTABLE                         R26 R24 R25
      494 GETTABLEKS                       R25 R22 K261 ["High"]
      496 DUPTABLE                         R26 K263 [{["namespace"] = "GenerateLayout", ["key"] = "QualityHigh"}]
      497 SETTABLE                         R26 R24 R25
      498 DUPTABLE                         R25 K266 [{["formId"], ["cancelInFooter"] = True, ["heading"] = "/generate_scene", ["row"], ["confirmButton"], ["rows"]}]
      499 GETTABLEKS                       R26 R8 K267 ["FormId"]
      501 SETTABLEKS                       R26 R25 K96 ["formId"]
      503 SETTABLEKS                       R20 R25 K101 ["row"]
      505 DUPTABLE                         R26 K269 [{["namespace"] = "GenerateLayout", ["key"] = "Generate"}]
      506 SETTABLEKS                       R26 R25 K102 ["confirmButton"]
      508 NEWTABLE                         R26 4 0
      510 GETTABLEKS                       R27 R20 K270 ["Size"]
      512 DUPTABLE                         R28 K273 [{["label"], ["liveChannelBridge"], ["roundToWholeStud"] = True}]
      513 DUPTABLE                         R29 K275 [{["namespace"] = "GenerateLayout", ["key"] = "SceneSize"}]
      514 SETTABLEKS                       R29 R28 K112 ["label"]
      516 GETTABLEKS                       R29 R17 K32 ["LayoutGenSceneBox"]
      518 SETTABLEKS                       R29 R28 K271 ["liveChannelBridge"]
      520 SETTABLE                         R28 R26 R27
      521 GETTABLEKS                       R27 R20 K276 ["Position"]
      523 DUPTABLE                         R28 K273 [{["label"], ["liveChannelBridge"], ["roundToWholeStud"] = True}]
      524 DUPTABLE                         R29 K277 [{["namespace"] = "GenerateLayout", ["key"] = "Position"}]
      525 SETTABLEKS                       R29 R28 K112 ["label"]
      527 GETTABLEKS                       R29 R17 K32 ["LayoutGenSceneBox"]
      529 SETTABLEKS                       R29 R28 K271 ["liveChannelBridge"]
      531 SETTABLE                         R28 R26 R27
      532 GETTABLEKS                       R27 R20 K278 ["UseMeshGen"]
      534 DUPTABLE                         R28 K199 [{"label", "optionLabels"}]
      535 DUPTABLE                         R29 K280 [{["namespace"] = "GenerateLayout", ["key"] = "Models"}]
      536 SETTABLEKS                       R29 R28 K112 ["label"]
      538 SETTABLEKS                       R23 R28 K114 ["optionLabels"]
      540 SETTABLE                         R28 R26 R27
      541 GETTABLEKS                       R27 R20 K281 ["Quality"]
      543 DUPTABLE                         R28 K199 [{"label", "optionLabels"}]
      544 DUPTABLE                         R29 K282 [{["namespace"] = "GenerateLayout", ["key"] = "Quality"}]
      545 SETTABLEKS                       R29 R28 K112 ["label"]
      547 SETTABLEKS                       R24 R28 K114 ["optionLabels"]
      549 SETTABLE                         R28 R26 R27
      550 SETTABLEKS                       R26 R25 K105 ["rows"]
      552 SETTABLEKS                       R25 R19 K283 ["GenerateSceneBounds"]
      554 DUPTABLE                         R20 K297 [{["PromptMode"] = "promptMode", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["MaxTriangles"] = "maxTriangles", ["TextPartNames"] = "textPartNames", ["ImagePartNames"] = "imagePartNames", ["SuggestSegmentation"] = "suggestSegmentation", ["SelectedInstanceRef"] = "selectedInstanceRef"}]
      555 GETTABLEKS                       R21 R4 K298 ["FFlagAssistantSegmentationPromptModeSelector"]
      557 DUPTABLE                         R22 K73 [{["visible"] = True, ["enabled"] = True}]
      558 DUPTABLE                         R23 K75 [{["visible"] = False, ["enabled"] = False}]
      559 DUPTABLE                         R24 K303 [{["formId"] = "generate_mesh", ["heading"] = "/generate_mesh", ["row"], ["description"], ["confirmButton"], ["axisResolver"], ["imageSelection"], ["rows"]}]
      560 SETTABLEKS                       R20 R24 K101 ["row"]
      562 DUPTABLE                         R25 K305 [{["namespace"] = "MeshGen", ["key"] = "InputDisclaimer"}]
      563 SETTABLEKS                       R25 R24 K301 ["description"]
      565 DUPTABLE                         R25 K307 [{["namespace"] = "MeshGen", ["key"] = "InputGenerateMesh"}]
      566 SETTABLEKS                       R25 R24 K102 ["confirmButton"]
      568 JUMPIFNOT                        R21 ; [+6]
      569 DUPCLOSURE                       R25 K308 [PROTO_5]
      570 CAPTURE                          VAL R20
      571 CAPTURE                          VAL R13
      572 CAPTURE                          VAL R23
      573 CAPTURE                          VAL R22
      574 JUMP                             ; [+1]
      575 LOADNIL                          R25
      576 SETTABLEKS                       R25 R24 K104 ["axisResolver"]
      578 GETTABLEKS                       R26 R4 K309 ["EngineFeatureAssistantGen3dImagePreview"]
      580 JUMPIFNOT                        R26 ; [+36]
      581 DUPTABLE                         R25 K314 [{"promptKey", "wizardMode", "model", "segmentationFold"}]
      582 GETTABLEKS                       R26 R20 K36 ["TextPrompt"]
      584 SETTABLEKS                       R26 R25 K310 ["promptKey"]
      586 GETTABLEKS                       R26 R4 K315 ["FFlagAssistantImageSelectionWizardModeMeshGen"]
      588 SETTABLEKS                       R26 R25 K311 ["wizardMode"]
      590 GETTABLEKS                       R26 R4 K316 ["FStringAssistantMeshGenImageGenModelOverride"]
      592 SETTABLEKS                       R26 R25 K312 ["model"]
      594 GETTABLEKS                       R27 R4 K317 ["FFlagAssistantImageGenImprovements"]
      596 JUMPIFNOT                        R27 ; [+16]
      597 DUPTABLE                         R26 K321 [{"kind", "partNamesKey", "suggestKey"}]
      598 GETTABLEKS                       R27 R3 K322 ["SEGMENTATION_FOLD_KIND"]
      600 GETTABLEKS                       R27 R27 K323 ["Gen3D"]
      602 SETTABLEKS                       R27 R26 K318 ["kind"]
      604 GETTABLEKS                       R27 R20 K289 ["TextPartNames"]
      606 SETTABLEKS                       R27 R26 K319 ["partNamesKey"]
      608 GETTABLEKS                       R27 R20 K293 ["SuggestSegmentation"]
      610 SETTABLEKS                       R27 R26 K320 ["suggestKey"]
      612 JUMP                             ; [+1]
      613 LOADNIL                          R26
      614 SETTABLEKS                       R26 R25 K313 ["segmentationFold"]
      616 JUMP                             ; [+1]
      617 LOADNIL                          R25
      618 SETTABLEKS                       R25 R24 K302 ["imageSelection"]
      620 NEWTABLE                         R25 8 0
      622 GETTABLEKS                       R26 R20 K26 ["PromptMode"]
      624 DUPTABLE                         R27 K325 [{"label", "optionLabels", "optionBadges"}]
      625 DUPTABLE                         R28 K327 [{["namespace"] = "MeshGen", ["key"] = "InputPromptModeTitle"}]
      626 SETTABLEKS                       R28 R27 K112 ["label"]
      628 NEWTABLE                         R28 2 0
      630 GETTABLEKS                       R29 R13 K328 ["Text"]
      632 DUPTABLE                         R30 K331 [{["namespace"] = "Gen3d", ["key"] = "PromptModeText"}]
      633 SETTABLE                         R30 R28 R29
      634 GETTABLEKS                       R29 R13 K332 ["Image"]
      636 DUPTABLE                         R30 K334 [{["namespace"] = "Gen3d", ["key"] = "PromptModeImage"}]
      637 SETTABLE                         R30 R28 R29
      638 SETTABLEKS                       R28 R27 K114 ["optionLabels"]
      640 NEWTABLE                         R28 2 0
      642 GETTABLEKS                       R29 R13 K328 ["Text"]
      644 MOVE                             R30 R14
      645 DUPTABLE                         R31 K338 [{"kind", "field", "cases", "default"}]
      646 GETTABLEKS                       R32 R11 K339 ["Branch"]
      648 SETTABLEKS                       R32 R31 K318 ["kind"]
      650 GETTABLEKS                       R32 R20 K26 ["PromptMode"]
      652 SETTABLEKS                       R32 R31 K335 ["field"]
      654 NEWTABLE                         R32 1 0
      656 GETTABLEKS                       R33 R13 K332 ["Image"]
      658 MOVE                             R34 R14
      659 DUPTABLE                         R35 K340 [{"kind", "field"}]
      660 GETTABLEKS                       R36 R11 K341 ["NonEmpty"]
      662 SETTABLEKS                       R36 R35 K318 ["kind"]
      664 GETTABLEKS                       R36 R20 K36 ["TextPrompt"]
      666 SETTABLEKS                       R36 R35 K335 ["field"]
      668 CALL                             R34 1 1
      669 SETTABLE                         R34 R32 R33
      670 SETTABLEKS                       R32 R31 K336 ["cases"]
      672 MOVE                             R32 R14
      673 DUPTABLE                         R33 K342 [{"kind"}]
      674 GETTABLEKS                       R34 R11 K343 ["Never"]
      676 SETTABLEKS                       R34 R33 K318 ["kind"]
      678 CALL                             R32 1 1
      679 SETTABLEKS                       R32 R31 K337 ["default"]
      681 CALL                             R30 1 1
      682 SETTABLE                         R30 R28 R29
      683 GETTABLEKS                       R29 R13 K332 ["Image"]
      685 MOVE                             R30 R14
      686 DUPTABLE                         R31 K338 [{"kind", "field", "cases", "default"}]
      687 GETTABLEKS                       R32 R11 K339 ["Branch"]
      689 SETTABLEKS                       R32 R31 K318 ["kind"]
      691 GETTABLEKS                       R32 R20 K26 ["PromptMode"]
      693 SETTABLEKS                       R32 R31 K335 ["field"]
      695 NEWTABLE                         R32 1 0
      697 GETTABLEKS                       R33 R13 K328 ["Text"]
      699 MOVE                             R34 R14
      700 DUPTABLE                         R35 K340 [{"kind", "field"}]
      701 GETTABLEKS                       R36 R11 K341 ["NonEmpty"]
      703 SETTABLEKS                       R36 R35 K318 ["kind"]
      705 GETTABLEKS                       R36 R20 K285 ["HintImage"]
      707 SETTABLEKS                       R36 R35 K335 ["field"]
      709 CALL                             R34 1 1
      710 SETTABLE                         R34 R32 R33
      711 SETTABLEKS                       R32 R31 K336 ["cases"]
      713 MOVE                             R32 R14
      714 DUPTABLE                         R33 K342 [{"kind"}]
      715 GETTABLEKS                       R34 R11 K343 ["Never"]
      717 SETTABLEKS                       R34 R33 K318 ["kind"]
      719 CALL                             R32 1 1
      720 SETTABLEKS                       R32 R31 K337 ["default"]
      722 CALL                             R30 1 1
      723 SETTABLE                         R30 R28 R29
      724 SETTABLEKS                       R28 R27 K324 ["optionBadges"]
      726 SETTABLE                         R27 R25 R26
      727 GETTABLEKS                       R26 R20 K36 ["TextPrompt"]
      729 DUPTABLE                         R27 K344 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      730 DUPTABLE                         R28 K237 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      731 SETTABLEKS                       R28 R27 K112 ["label"]
      733 GETTABLEKS                       R29 R4 K345 ["FFlagAssistantAddPlaceholderProp"]
      735 JUMPIFNOT                        R29 ; [+2]
      736 DUPTABLE                         R28 K347 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      737 JUMP                             ; [+1]
      738 LOADNIL                          R28
      739 SETTABLEKS                       R28 R27 K234 ["placeholder"]
      741 SETTABLE                         R27 R25 R26
      742 GETTABLEKS                       R26 R20 K285 ["HintImage"]
      744 DUPTABLE                         R27 K133 [{"label"}]
      745 DUPTABLE                         R28 K349 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      746 SETTABLEKS                       R28 R27 K112 ["label"]
      748 SETTABLE                         R27 R25 R26
      749 GETTABLEKS                       R26 R20 K287 ["MaxTriangles"]
      751 DUPTABLE                         R27 K133 [{"label"}]
      752 DUPTABLE                         R28 K351 [{["namespace"] = "MeshGen", ["key"] = "InputTriangleCountTitle"}]
      753 SETTABLEKS                       R28 R27 K112 ["label"]
      755 SETTABLE                         R27 R25 R26
      756 GETTABLEKS                       R26 R20 K289 ["TextPartNames"]
      758 DUPTABLE                         R27 K353 [{"label", "infoPopover", "suggestion"}]
      759 DUPTABLE                         R28 K355 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      760 SETTABLEKS                       R28 R27 K112 ["label"]
      762 JUMPIFNOT                        R21 ; [+8]
      763 DUPTABLE                         R28 K357 [{"body", "learnMore"}]
      764 DUPTABLE                         R29 K360 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      765 SETTABLEKS                       R29 R28 K209 ["body"]
      767 DUPTABLE                         R29 K362 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      768 SETTABLEKS                       R29 R28 K356 ["learnMore"]
      770 JUMP                             ; [+1]
      771 LOADNIL                          R28
      772 SETTABLEKS                       R28 R27 K206 ["infoPopover"]
      774 DUPTABLE                         R28 K365 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "mesh"}]
      775 GETTABLEKS                       R29 R20 K36 ["TextPrompt"]
      777 SETTABLEKS                       R29 R28 K310 ["promptKey"]
      779 JUMPIFNOT                        R21 ; [+6]
      780 GETTABLEKS                       R30 R4 K366 ["FFlagGen3dSegmentationSelector"]
      782 JUMPIFNOT                        R30 ; [+3]
      783 GETTABLEKS                       R29 R20 K293 ["SuggestSegmentation"]
      785 JUMP                             ; [+1]
      786 LOADNIL                          R29
      787 SETTABLEKS                       R29 R28 K320 ["suggestKey"]
      789 SETTABLEKS                       R28 R27 K352 ["suggestion"]
      791 SETTABLE                         R27 R25 R26
      792 GETTABLEKS                       R26 R20 K291 ["ImagePartNames"]
      794 DUPTABLE                         R27 K207 [{"label", "infoPopover"}]
      795 DUPTABLE                         R28 K355 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      796 SETTABLEKS                       R28 R27 K112 ["label"]
      798 JUMPIFNOT                        R21 ; [+8]
      799 DUPTABLE                         R28 K357 [{"body", "learnMore"}]
      800 DUPTABLE                         R29 K360 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeature"}]
      801 SETTABLEKS                       R29 R28 K209 ["body"]
      803 DUPTABLE                         R29 K362 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      804 SETTABLEKS                       R29 R28 K356 ["learnMore"]
      806 JUMP                             ; [+1]
      807 LOADNIL                          R28
      808 SETTABLEKS                       R28 R27 K206 ["infoPopover"]
      810 SETTABLE                         R27 R25 R26
      811 GETTABLEKS                       R26 R20 K293 ["SuggestSegmentation"]
      813 DUPTABLE                         R27 K367 [{"renderer"}]
      814 GETTABLEKS                       R28 R12 K293 ["SuggestSegmentation"]
      816 SETTABLEKS                       R28 R27 K136 ["renderer"]
      818 SETTABLE                         R27 R25 R26
      819 GETTABLEKS                       R26 R20 K295 ["SelectedInstanceRef"]
      821 DUPTABLE                         R27 K369 [{"label", "internal", "instanceClasses"}]
      822 DUPTABLE                         R28 K371 [{["namespace"] = "MeshGen", ["key"] = "InputBoundingBox"}]
      823 SETTABLEKS                       R28 R27 K112 ["label"]
      825 JUMPIFNOT                        R21 ; [+2]
      826 LOADB                            R28 1
      827 JUMP                             ; [+1]
      828 LOADNIL                          R28
      829 SETTABLEKS                       R28 R27 K127 ["internal"]
      831 NEWTABLE                         R28 0 1
      833 GETTABLEKS                       R30 R5 K372 ["getFFlagGen3dSharedMeshGenOps"]
      835 CALL                             R30 0 1
      836 JUMPIFNOT                        R30 ; [+5]
      837 GETTABLEKS                       R29 R5 K15 ["MeshGenConstants"]
      839 GETTABLEKS                       R29 R29 K373 ["BOUNDING_BOX_INSTANCE_TYPE"]
      841 JUMP                             ; [+2]
      842 GETTABLEKS                       R29 R6 K373 ["BOUNDING_BOX_INSTANCE_TYPE"]
      844 SETLIST                          R28 R29 1 [1]
      846 SETTABLEKS                       R28 R27 K368 ["instanceClasses"]
      848 SETTABLE                         R27 R25 R26
      849 SETTABLEKS                       R25 R24 K105 ["rows"]
      851 SETTABLEKS                       R24 R19 K14 ["MeshGen"]
      853 DUPTABLE                         R20 K377 [{["Prompt"] = "prompt", ["HintImage"] = "hintImage", ["PartNames"] = "partNames", ["SuggestSegmentation"] = "suggestSegmentation"}]
      854 DUPTABLE                         R21 K380 [{["formId"] = "generate_procedural_model", ["heading"] = "/generate_procedural_model", ["row"], ["imageSelection"], ["rows"]}]
      855 SETTABLEKS                       R20 R21 K101 ["row"]
      857 GETTABLEKS                       R23 R4 K309 ["EngineFeatureAssistantGen3dImagePreview"]
      859 JUMPIFNOT                        R23 ; [+14]
      860 DUPTABLE                         R22 K381 [{"promptKey", "wizardMode", "model"}]
      861 GETTABLEKS                       R23 R20 K124 ["Prompt"]
      863 SETTABLEKS                       R23 R22 K310 ["promptKey"]
      865 GETTABLEKS                       R23 R4 K382 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      867 SETTABLEKS                       R23 R22 K311 ["wizardMode"]
      869 GETTABLEKS                       R23 R4 K316 ["FStringAssistantMeshGenImageGenModelOverride"]
      871 SETTABLEKS                       R23 R22 K312 ["model"]
      873 JUMP                             ; [+1]
      874 LOADNIL                          R22
      875 SETTABLEKS                       R22 R21 K302 ["imageSelection"]
      877 NEWTABLE                         R22 4 0
      879 GETTABLEKS                       R23 R20 K124 ["Prompt"]
      881 DUPTABLE                         R24 K344 [{["label"], ["multiLine"] = True, ["placeholder"]}]
      882 DUPTABLE                         R25 K237 [{["namespace"] = "MeshGen", ["key"] = "InputPromptTitle"}]
      883 SETTABLEKS                       R25 R24 K112 ["label"]
      885 GETTABLEKS                       R26 R4 K345 ["FFlagAssistantAddPlaceholderProp"]
      887 JUMPIFNOT                        R26 ; [+2]
      888 DUPTABLE                         R25 K347 [{["namespace"] = "Segmentation", ["key"] = "TextPrompt"}]
      889 JUMP                             ; [+1]
      890 LOADNIL                          R25
      891 SETTABLEKS                       R25 R24 K234 ["placeholder"]
      893 SETTABLE                         R24 R22 R23
      894 GETTABLEKS                       R23 R20 K285 ["HintImage"]
      896 DUPTABLE                         R24 K133 [{"label"}]
      897 DUPTABLE                         R25 K349 [{["namespace"] = "MeshGen", ["key"] = "InputHintImageTitle"}]
      898 SETTABLEKS                       R25 R24 K112 ["label"]
      900 SETTABLE                         R24 R22 R23
      901 GETTABLEKS                       R23 R20 K375 ["PartNames"]
      903 DUPTABLE                         R24 K353 [{"label", "infoPopover", "suggestion"}]
      904 DUPTABLE                         R25 K384 [{["namespace"] = "PrimitiveGen", ["key"] = "InputPartNamesTitle"}]
      905 SETTABLEKS                       R25 R24 K112 ["label"]
      907 DUPTABLE                         R25 K357 [{"body", "learnMore"}]
      908 DUPTABLE                         R26 K386 [{["namespace"] = "PrimGenSegmentation", ["key"] = "ExperimentalFeature"}]
      909 SETTABLEKS                       R26 R25 K209 ["body"]
      911 DUPTABLE                         R26 K362 [{["namespace"] = "MeshGenSegmentation", ["key"] = "ExperimentalFeatureLearnMore"}]
      912 SETTABLEKS                       R26 R25 K356 ["learnMore"]
      914 SETTABLEKS                       R25 R24 K206 ["infoPopover"]
      916 DUPTABLE                         R25 K388 [{["promptKey"], ["suggestKey"], ["modelFlow"] = "procedural"}]
      917 GETTABLEKS                       R26 R20 K124 ["Prompt"]
      919 SETTABLEKS                       R26 R25 K310 ["promptKey"]
      921 GETTABLEKS                       R26 R20 K293 ["SuggestSegmentation"]
      923 SETTABLEKS                       R26 R25 K320 ["suggestKey"]
      925 SETTABLEKS                       R25 R24 K352 ["suggestion"]
      927 SETTABLE                         R24 R22 R23
      928 GETTABLEKS                       R23 R20 K293 ["SuggestSegmentation"]
      930 DUPTABLE                         R24 K367 [{"renderer"}]
      931 GETTABLEKS                       R25 R12 K293 ["SuggestSegmentation"]
      933 SETTABLEKS                       R25 R24 K136 ["renderer"]
      935 SETTABLE                         R24 R22 R23
      936 SETTABLEKS                       R22 R21 K105 ["rows"]
      938 SETTABLEKS                       R21 R19 K383 ["PrimitiveGen"]
      940 DUPTABLE                         R20 K393 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["Parts"] = "parts"}]
      941 DUPTABLE                         R21 K396 [{["formId"] = "segment_mesh", ["heading"] = "/segment_mesh", ["row"], ["confirmButton"], ["rows"]}]
      942 SETTABLEKS                       R20 R21 K101 ["row"]
      944 DUPTABLE                         R22 K398 [{["namespace"] = "SegmentMesh", ["key"] = "ConfirmButton"}]
      945 SETTABLEKS                       R22 R21 K102 ["confirmButton"]
      947 NEWTABLE                         R22 4 0
      949 GETTABLEKS                       R23 R20 K295 ["SelectedInstanceRef"]
      951 DUPTABLE                         R24 K400 [{"label", "validityBridge", "requirementMessage"}]
      952 DUPTABLE                         R25 K402 [{["namespace"] = "SegmentMesh", ["key"] = "MeshInstanceLabel"}]
      953 SETTABLEKS                       R25 R24 K112 ["label"]
      955 GETTABLEKS                       R25 R15 K28 ["SegmentMesh"]
      957 SETTABLEKS                       R25 R24 K399 ["validityBridge"]
      959 DUPTABLE                         R25 K404 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      960 SETTABLEKS                       R25 R24 K121 ["requirementMessage"]
      962 SETTABLE                         R24 R22 R23
      963 GETTABLEKS                       R24 R20 K295 ["SelectedInstanceRef"]
      965 LOADK                            R25 K405 [".isValid"]
      966 CONCAT                           R23 R24 R25
      967 DUPTABLE                         R24 K406 [{"requirementMessage"}]
      968 DUPTABLE                         R25 K404 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      969 SETTABLEKS                       R25 R24 K121 ["requirementMessage"]
      971 SETTABLE                         R24 R22 R23
      972 GETTABLEKS                       R23 R20 K389 ["SelectedInstanceRefIsValid"]
      974 DUPTABLE                         R24 K406 [{"requirementMessage"}]
      975 DUPTABLE                         R25 K404 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
      976 SETTABLEKS                       R25 R24 K121 ["requirementMessage"]
      978 SETTABLE                         R24 R22 R23
      979 GETTABLEKS                       R23 R20 K391 ["Parts"]
      981 DUPTABLE                         R24 K407 [{["label"], ["multiLine"] = False}]
      982 DUPTABLE                         R25 K355 [{["namespace"] = "MeshGen", ["key"] = "InputPartNamesTitle"}]
      983 SETTABLEKS                       R25 R24 K112 ["label"]
      985 SETTABLE                         R24 R22 R23
      986 SETTABLEKS                       R22 R21 K105 ["rows"]
      988 SETTABLEKS                       R21 R19 K28 ["SegmentMesh"]
      990 DUPTABLE                         R20 K411 [{["SelectedInstanceRef"] = "selectedInstanceRef", ["SelectedInstanceRefIsValid"] = "selectedInstanceRef.isValid", ["TextPrompt"] = "textPrompt", ["HintImage"] = "hintImage", ["Mode"] = "mode", ["AutoSelectView"] = "autoSelectView"}]
      991 GETTABLEKS                       R21 R5 K412 ["getFFlagGen3dTextureGenBatchedPreview"]
      993 CALL                             R21 0 1
      994 GETTABLEKS                       R22 R4 K413 ["FFlagAssistantTextureGenModelSelection"]
      996 JUMPIFNOT                        R22 ; [+1]
      997 NOT                              R22 R21
      998 MOVE                             R23 R21
      999 JUMPIFNOT                        R23 ; [+2]
     1000 GETTABLEKS                       R23 R4 K414 ["FFlagAssistantTextureGenAutoSelectView"]
     1002 DUPTABLE                         R24 K417 [{["formId"] = "generate_texture", ["heading"] = "/generate_texture", ["row"], ["description"], ["confirmButton"], ["imageSelection"], ["rows"]}]
     1003 SETTABLEKS                       R20 R24 K101 ["row"]
     1005 DUPTABLE                         R25 K418 [{["namespace"] = "TextureGen", ["key"] = "InputDisclaimer"}]
     1006 SETTABLEKS                       R25 R24 K301 ["description"]
     1008 DUPTABLE                         R25 K420 [{["namespace"] = "TextureGen", ["key"] = "InputGenerateTexture"}]
     1009 SETTABLEKS                       R25 R24 K102 ["confirmButton"]
     1011 GETTABLEKS                       R26 R4 K309 ["EngineFeatureAssistantGen3dImagePreview"]
     1013 JUMPIFNOT                        R26 ; [+43]
     1014 DUPTABLE                         R25 K426 [{["promptKey"], ["wizardMode"], ["model"], ["resolveSeedImageFromSelectedInstance"] = True, ["skipField"], ["skipValues"], ["useTexturePreview"], ["autoSelectViewField"]}]
     1015 GETTABLEKS                       R26 R20 K36 ["TextPrompt"]
     1017 SETTABLEKS                       R26 R25 K310 ["promptKey"]
     1019 GETTABLEKS                       R26 R4 K427 ["FFlagAssistantImageSelectionWizardModeTextureGen"]
     1021 SETTABLEKS                       R26 R25 K311 ["wizardMode"]
     1023 GETTABLEKS                       R26 R4 K316 ["FStringAssistantMeshGenImageGenModelOverride"]
     1025 SETTABLEKS                       R26 R25 K312 ["model"]
     1027 JUMPIFNOT                        R22 ; [+3]
     1028 GETTABLEKS                       R26 R20 K113 ["Mode"]
     1030 JUMP                             ; [+1]
     1031 LOADNIL                          R26
     1032 SETTABLEKS                       R26 R25 K422 ["skipField"]
     1034 JUMPIFNOT                        R22 ; [+9]
     1035 NEWTABLE                         R26 0 1
     1037 GETTABLEKS                       R27 R9 K428 ["MODE"]
     1039 GETTABLEKS                       R27 R27 K281 ["Quality"]
     1041 SETLIST                          R26 R27 1 [1]
     1043 JUMP                             ; [+1]
     1044 LOADNIL                          R26
     1045 SETTABLEKS                       R26 R25 K423 ["skipValues"]
     1047 SETTABLEKS                       R21 R25 K424 ["useTexturePreview"]
     1049 JUMPIFNOT                        R23 ; [+3]
     1050 GETTABLEKS                       R26 R20 K409 ["AutoSelectView"]
     1052 JUMP                             ; [+1]
     1053 LOADNIL                          R26
     1054 SETTABLEKS                       R26 R25 K425 ["autoSelectViewField"]
     1056 JUMP                             ; [+1]
     1057 LOADNIL                          R25
     1058 SETTABLEKS                       R25 R24 K302 ["imageSelection"]
     1060 NEWTABLE                         R25 8 0
     1062 GETTABLEKS                       R26 R20 K295 ["SelectedInstanceRef"]
     1064 DUPTABLE                         R27 K429 [{"label", "instanceClasses", "validityBridge", "requirementMessage"}]
     1065 DUPTABLE                         R28 K431 [{["namespace"] = "TextureGen", ["key"] = "InputSelectedMesh"}]
     1066 SETTABLEKS                       R28 R27 K112 ["label"]
     1068 NEWTABLE                         R28 0 2
     1070 LOADK                            R29 K432 ["MeshPart"]
     1071 LOADK                            R30 K433 ["Model"]
     1072 SETLIST                          R28 R29 2 [1]
     1074 SETTABLEKS                       R28 R27 K368 ["instanceClasses"]
     1076 GETTABLEKS                       R28 R15 K21 ["TextureGen"]
     1078 SETTABLEKS                       R28 R27 K399 ["validityBridge"]
     1080 DUPTABLE                         R28 K404 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1081 SETTABLEKS                       R28 R27 K121 ["requirementMessage"]
     1083 SETTABLE                         R27 R25 R26
     1084 GETTABLEKS                       R27 R20 K295 ["SelectedInstanceRef"]
     1086 LOADK                            R28 K405 [".isValid"]
     1087 CONCAT                           R26 R27 R28
     1088 DUPTABLE                         R27 K406 [{"requirementMessage"}]
     1089 DUPTABLE                         R28 K404 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1090 SETTABLEKS                       R28 R27 K121 ["requirementMessage"]
     1092 SETTABLE                         R27 R25 R26
     1093 GETTABLEKS                       R26 R20 K389 ["SelectedInstanceRefIsValid"]
     1095 DUPTABLE                         R27 K406 [{"requirementMessage"}]
     1096 DUPTABLE                         R28 K404 [{["namespace"] = "SegmentMesh", ["key"] = "RequiresSingleMeshPart"}]
     1097 SETTABLEKS                       R28 R27 K121 ["requirementMessage"]
     1099 SETTABLE                         R27 R25 R26
     1100 GETTABLEKS                       R26 R20 K36 ["TextPrompt"]
     1102 DUPTABLE                         R27 K344 [{["label"], ["multiLine"] = True, ["placeholder"]}]
     1103 DUPTABLE                         R28 K434 [{["namespace"] = "TextureGen", ["key"] = "InputPromptTitle"}]
     1104 SETTABLEKS                       R28 R27 K112 ["label"]
     1106 GETTABLEKS                       R29 R4 K345 ["FFlagAssistantAddPlaceholderProp"]
     1108 JUMPIFNOT                        R29 ; [+2]
     1109 DUPTABLE                         R28 K435 [{["namespace"] = "TextureGen", ["key"] = "InputPromptPlaceholder"}]
     1110 JUMP                             ; [+1]
     1111 LOADNIL                          R28
     1112 SETTABLEKS                       R28 R27 K234 ["placeholder"]
     1114 SETTABLE                         R27 R25 R26
     1115 GETTABLEKS                       R26 R20 K285 ["HintImage"]
     1117 DUPTABLE                         R27 K133 [{"label"}]
     1118 DUPTABLE                         R28 K436 [{["namespace"] = "TextureGen", ["key"] = "InputHintImageTitle"}]
     1119 SETTABLEKS                       R28 R27 K112 ["label"]
     1121 SETTABLE                         R27 R25 R26
     1122 GETTABLEKS                       R26 R20 K113 ["Mode"]
     1124 DUPTABLE                         R27 K437 [{"label", "optionLabels", "infoPopover"}]
     1125 DUPTABLE                         R28 K439 [{["namespace"] = "TextureGen", ["key"] = "ModelSelectorTitle"}]
     1126 SETTABLEKS                       R28 R27 K112 ["label"]
     1128 NEWTABLE                         R28 2 0
     1130 GETTABLEKS                       R29 R9 K428 ["MODE"]
     1132 GETTABLEKS                       R29 R29 K440 ["Fast"]
     1134 DUPTABLE                         R30 K442 [{["namespace"] = "TextureGen", ["key"] = "ModelFast"}]
     1135 SETTABLE                         R30 R28 R29
     1136 GETTABLEKS                       R29 R9 K428 ["MODE"]
     1138 GETTABLEKS                       R29 R29 K281 ["Quality"]
     1140 DUPTABLE                         R30 K444 [{["namespace"] = "TextureGen", ["key"] = "ModelQuality"}]
     1141 SETTABLE                         R30 R28 R29
     1142 SETTABLEKS                       R28 R27 K114 ["optionLabels"]
     1144 GETTABLEKS                       R29 R4 K413 ["FFlagAssistantTextureGenModelSelection"]
     1146 JUMPIFNOT                        R29 ; [+5]
     1147 DUPTABLE                         R28 K210 [{"body"}]
     1148 DUPTABLE                         R29 K446 [{["namespace"] = "TextureGen", ["key"] = "ModelQualityInfo"}]
     1149 SETTABLEKS                       R29 R28 K209 ["body"]
     1151 JUMP                             ; [+1]
     1152 LOADNIL                          R28
     1153 SETTABLEKS                       R28 R27 K206 ["infoPopover"]
     1155 SETTABLE                         R27 R25 R26
     1156 GETTABLEKS                       R26 R20 K409 ["AutoSelectView"]
     1158 DUPTABLE                         R27 K447 [{"label", "renderer"}]
     1159 DUPTABLE                         R28 K449 [{["namespace"] = "TextureGen", ["key"] = "AutoSelectViewLabel"}]
     1160 SETTABLEKS                       R28 R27 K112 ["label"]
     1162 GETTABLEKS                       R28 R12 K450 ["LabeledBoolean"]
     1164 SETTABLEKS                       R28 R27 K136 ["renderer"]
     1166 SETTABLE                         R27 R25 R26
     1167 SETTABLEKS                       R25 R24 K105 ["rows"]
     1169 SETTABLEKS                       R24 R19 K21 ["TextureGen"]
     1171 SETTABLEKS                       R19 R0 K451 ["Configs"]
     1173 SETTABLEKS                       R15 R0 K452 ["ValidityBridge"]
     1175 SETTABLEKS                       R16 R0 K453 ["ValueChangedAction"]
     1177 SETTABLEKS                       R17 R0 K454 ["LiveChannelBridge"]
     1179 NEWTABLE                         R20 0 0
     1181 GETIMPORT                        R21 K456 [pairs]
     1183 MOVE                             R22 R19
     1184 CALL                             R21 1 3
     1185 FORGPREP_NEXT                    R21
     1186 GETTABLEKS                       R26 R25 K96 ["formId"]
     1188 SETTABLE                         R25 R20 R26
     1189 FORGLOOP                         R21 2 ; [-4]
     1191 LOADNIL                          R21
     1192 NEWCLOSURE                       R22 P6
     1193 CAPTURE                          REF R21
     1194 CAPTURE                          VAL R20
     1195 SETTABLEKS                       R22 R0 K457 ["getForm"]
     1197 DUPCLOSURE                       R22 K458 [PROTO_7]
     1198 CAPTURE                          VAL R0
     1199 CAPTURE                          VAL R18
     1200 SETTABLEKS                       R22 R0 K459 ["getRowPresentation"]
     1202 NEWCLOSURE                       R22 P8
     1203 CAPTURE                          REF R21
     1204 SETTABLEKS                       R22 R0 K460 ["_registerTestConfig"]
     1206 NEWCLOSURE                       R22 P9
     1207 CAPTURE                          REF R21
     1208 SETTABLEKS                       R22 R0 K461 ["_clearTestConfigs"]
     1210 CLOSEUPVALS                      R21
     1211 RETURN                           R0 1
