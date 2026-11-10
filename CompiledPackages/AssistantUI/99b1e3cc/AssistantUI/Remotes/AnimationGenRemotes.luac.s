PROTO_0:
        0 NEWTABLE                         R1 64 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["invoke"]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K1 ["AnimationGen.getAnimationCardState"]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K2 ["getAnimationCardState"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["invoke"]
       13 MOVE                             R3 R0
       14 LOADK                            R4 K3 ["AnimationGen.selectAnimationVersion"]
       15 CALL                             R2 2 1
       16 SETTABLEKS                       R2 R1 K4 ["selectAnimationVersion"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["invoke"]
       21 MOVE                             R3 R0
       22 LOADK                            R4 K5 ["AnimationGen.prepareAnimationEdit"]
       23 CALL                             R2 2 1
       24 SETTABLEKS                       R2 R1 K6 ["prepareAnimationEdit"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K0 ["invoke"]
       29 MOVE                             R3 R0
       30 LOADK                            R4 K7 ["AnimationGen.resolveGenerationSource"]
       31 CALL                             R2 2 1
       32 SETTABLEKS                       R2 R1 K8 ["resolveGenerationSource"]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K0 ["invoke"]
       37 MOVE                             R3 R0
       38 LOADK                            R4 K9 ["AnimationGen.getPlaybackState"]
       39 CALL                             R2 2 1
       40 SETTABLEKS                       R2 R1 K10 ["getPlaybackState"]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K0 ["invoke"]
       45 MOVE                             R3 R0
       46 LOADK                            R4 K11 ["AnimationGen.generateAndSaveAnimation"]
       47 CALL                             R2 2 1
       48 SETTABLEKS                       R2 R1 K12 ["generateAndSaveAnimation"]
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K13 ["event"]
       53 MOVE                             R3 R0
       54 LOADK                            R4 K14 ["AnimationGen.discardEditAnimationPreview"]
       55 CALL                             R2 2 1
       56 SETTABLEKS                       R2 R1 K15 ["discardEditAnimationPreview"]
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R2 R2 K0 ["invoke"]
       61 MOVE                             R3 R0
       62 LOADK                            R4 K16 ["AnimationGen.getSelectedRigRef"]
       63 CALL                             R2 2 1
       64 SETTABLEKS                       R2 R1 K17 ["getSelectedRigRef"]
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R2 R2 K13 ["event"]
       69 MOVE                             R3 R0
       70 LOADK                            R4 K18 ["AnimationGen.setIsPlaying"]
       71 CALL                             R2 2 1
       72 SETTABLEKS                       R2 R1 K19 ["setIsPlaying"]
       74 GETUPVAL                         R2 0
       75 GETTABLEKS                       R2 R2 K13 ["event"]
       77 MOVE                             R3 R0
       78 LOADK                            R4 K20 ["AnimationGen.setCurrentTime"]
       79 CALL                             R2 2 1
       80 SETTABLEKS                       R2 R1 K21 ["setCurrentTime"]
       82 GETUPVAL                         R2 0
       83 GETTABLEKS                       R2 R2 K0 ["invoke"]
       85 MOVE                             R3 R0
       86 LOADK                            R4 K22 ["AnimationGen.previewClipToUpscale"]
       87 CALL                             R2 2 1
       88 SETTABLEKS                       R2 R1 K23 ["previewClipToUpscale"]
       90 GETUPVAL                         R2 0
       91 GETTABLEKS                       R2 R2 K13 ["event"]
       93 MOVE                             R3 R0
       94 LOADK                            R4 K24 ["AnimationGen.clearClipToUpscalePreview"]
       95 CALL                             R2 2 1
       96 SETTABLEKS                       R2 R1 K25 ["clearClipToUpscalePreview"]
       98 GETUPVAL                         R2 0
       99 GETTABLEKS                       R2 R2 K0 ["invoke"]
      101 MOVE                             R3 R0
      102 LOADK                            R4 K26 ["AnimationGen.insertClipToUpscalePreviewRig"]
      103 CALL                             R2 2 1
      104 SETTABLEKS                       R2 R1 K27 ["insertClipToUpscalePreviewRig"]
      106 GETUPVAL                         R2 0
      107 GETTABLEKS                       R2 R2 K13 ["event"]
      109 MOVE                             R3 R0
      110 LOADK                            R4 K28 ["AnimationGen.setClipToUpscalePreviewRig"]
      111 CALL                             R2 2 1
      112 SETTABLEKS                       R2 R1 K29 ["setClipToUpscalePreviewRig"]
      114 GETUPVAL                         R2 0
      115 GETTABLEKS                       R2 R2 K13 ["event"]
      117 MOVE                             R3 R0
      118 LOADK                            R4 K30 ["AnimationGen.endClipToUpscalePreviewSession"]
      119 CALL                             R2 2 1
      120 SETTABLEKS                       R2 R1 K31 ["endClipToUpscalePreviewSession"]
      122 GETUPVAL                         R2 0
      123 GETTABLEKS                       R2 R2 K0 ["invoke"]
      125 MOVE                             R3 R0
      126 LOADK                            R4 K32 ["AnimationGen.generateUpscalePreview"]
      127 CALL                             R2 2 1
      128 SETTABLEKS                       R2 R1 K33 ["generateUpscalePreview"]
      130 GETUPVAL                         R2 0
      131 GETTABLEKS                       R2 R2 K13 ["event"]
      133 MOVE                             R3 R0
      134 LOADK                            R4 K34 ["AnimationGen.updateUpscalePreview"]
      135 CALL                             R2 2 1
      136 SETTABLEKS                       R2 R1 K35 ["updateUpscalePreview"]
      138 GETUPVAL                         R2 0
      139 GETTABLEKS                       R2 R2 K13 ["event"]
      141 MOVE                             R3 R0
      142 LOADK                            R4 K36 ["AnimationGen.openInAnimationClipEditor"]
      143 CALL                             R2 2 1
      144 SETTABLEKS                       R2 R1 K37 ["openInAnimationClipEditor"]
      146 GETUPVAL                         R2 0
      147 GETTABLEKS                       R2 R2 K13 ["event"]
      149 MOVE                             R3 R0
      150 LOADK                            R4 K38 ["AnimationGen.publishAnimation"]
      151 CALL                             R2 2 1
      152 SETTABLEKS                       R2 R1 K39 ["publishAnimation"]
      154 GETUPVAL                         R2 0
      155 GETTABLEKS                       R2 R2 K0 ["invoke"]
      157 MOVE                             R3 R0
      158 LOADK                            R4 K40 ["AnimationGen.insertPose"]
      159 CALL                             R2 2 1
      160 SETTABLEKS                       R2 R1 K41 ["insertPose"]
      162 GETUPVAL                         R2 0
      163 GETTABLEKS                       R2 R2 K0 ["invoke"]
      165 MOVE                             R3 R0
      166 LOADK                            R4 K42 ["AnimationGen.deletePose"]
      167 CALL                             R2 2 1
      168 SETTABLEKS                       R2 R1 K43 ["deletePose"]
      170 GETUPVAL                         R2 0
      171 GETTABLEKS                       R2 R2 K0 ["invoke"]
      173 MOVE                             R3 R0
      174 LOADK                            R4 K44 ["AnimationGen.movePose"]
      175 CALL                             R2 2 1
      176 SETTABLEKS                       R2 R1 K45 ["movePose"]
      178 GETUPVAL                         R2 0
      179 GETTABLEKS                       R2 R2 K0 ["invoke"]
      181 MOVE                             R3 R0
      182 LOADK                            R4 K46 ["AnimationGen.resizePose"]
      183 CALL                             R2 2 1
      184 SETTABLEKS                       R2 R1 K47 ["resizePose"]
      186 GETUPVAL                         R2 0
      187 GETTABLEKS                       R2 R2 K0 ["invoke"]
      189 MOVE                             R3 R0
      190 LOADK                            R4 K48 ["AnimationGen.getEditScrubbarState"]
      191 CALL                             R2 2 1
      192 SETTABLEKS                       R2 R1 K49 ["getEditScrubbarState"]
      194 GETUPVAL                         R2 0
      195 GETTABLEKS                       R2 R2 K13 ["event"]
      197 MOVE                             R3 R0
      198 LOADK                            R4 K50 ["AnimationGen.resetPose"]
      199 CALL                             R2 2 1
      200 SETTABLEKS                       R2 R1 K51 ["resetPose"]
      202 GETUPVAL                         R2 0
      203 GETTABLEKS                       R2 R2 K13 ["event"]
      205 MOVE                             R3 R0
      206 LOADK                            R4 K52 ["AnimationGen.endEditSession"]
      207 CALL                             R2 2 1
      208 SETTABLEKS                       R2 R1 K53 ["endEditSession"]
      210 GETUPVAL                         R2 0
      211 GETTABLEKS                       R2 R2 K13 ["event"]
      213 MOVE                             R3 R0
      214 LOADK                            R4 K54 ["AnimationGen.beginEditPreview"]
      215 CALL                             R2 2 1
      216 SETTABLEKS                       R2 R1 K55 ["beginEditPreview"]
      218 GETUPVAL                         R2 0
      219 GETTABLEKS                       R2 R2 K13 ["event"]
      221 MOVE                             R3 R0
      222 LOADK                            R4 K56 ["AnimationGen.animationHistoryChanged"]
      223 CALL                             R2 2 1
      224 SETTABLEKS                       R2 R1 K57 ["animationHistoryChanged"]
      226 GETUPVAL                         R2 0
      227 GETTABLEKS                       R2 R2 K13 ["event"]
      229 MOVE                             R3 R0
      230 LOADK                            R4 K58 ["AnimationGen.playbackStateChanged"]
      231 CALL                             R2 2 1
      232 SETTABLEKS                       R2 R1 K59 ["playbackStateChanged"]
      234 GETUPVAL                         R2 0
      235 GETTABLEKS                       R2 R2 K13 ["event"]
      237 MOVE                             R3 R0
      238 LOADK                            R4 K60 ["AnimationGen.thoughtReceived"]
      239 CALL                             R2 2 1
      240 SETTABLEKS                       R2 R1 K61 ["thoughtReceived"]
      242 GETUPVAL                         R2 0
      243 GETTABLEKS                       R2 R2 K13 ["event"]
      245 MOVE                             R3 R0
      246 LOADK                            R4 K62 ["AnimationGen.poseDeselected"]
      247 CALL                             R2 2 1
      248 SETTABLEKS                       R2 R1 K63 ["poseDeselected"]
      250 GETUPVAL                         R2 0
      251 GETTABLEKS                       R2 R2 K13 ["event"]
      253 MOVE                             R3 R0
      254 LOADK                            R4 K64 ["AnimationGen.poseEdited"]
      255 CALL                             R2 2 1
      256 SETTABLEKS                       R2 R1 K65 ["poseEdited"]
      258 GETUPVAL                         R2 0
      259 GETTABLEKS                       R2 R2 K13 ["event"]
      261 MOVE                             R3 R0
      262 LOADK                            R4 K66 ["AnimationGen.clipToUpscalePreviewRigChanged"]
      263 CALL                             R2 2 1
      264 SETTABLEKS                       R2 R1 K67 ["clipToUpscalePreviewRigChanged"]
      266 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["AnimationGen"]
       20 GETTABLEKS                       R4 R4 K10 ["AnimationGenTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Util"]
       27 GETTABLEKS                       R5 R5 K9 ["AnimationGen"]
       29 GETTABLEKS                       R5 R5 K11 ["State"]
       31 GETTABLEKS                       R5 R5 K12 ["AnimationHistoryTypes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K8 ["Util"]
       38 GETTABLEKS                       R6 R6 K9 ["AnimationGen"]
       40 GETTABLEKS                       R6 R6 K13 ["BlendSettings"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K14 ["Guest"]
       47 GETTABLEKS                       R7 R7 K15 ["Environment"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K8 ["Util"]
       54 GETTABLEKS                       R8 R8 K9 ["AnimationGen"]
       56 GETTABLEKS                       R8 R8 K16 ["HostTypes"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETTABLEKS                       R9 R0 K8 ["Util"]
       63 GETTABLEKS                       R9 R9 K9 ["AnimationGen"]
       65 GETTABLEKS                       R9 R9 K17 ["Posing"]
       67 GETTABLEKS                       R9 R9 K18 ["PoseInterval"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K6 [require]
       72 GETTABLEKS                       R10 R0 K19 ["Types"]
       74 CALL                             R9 1 1
       75 GETTABLEKS                       R10 R2 K20 ["Remote"]
       77 NEWTABLE                         R11 1 0
       79 DUPCLOSURE                       R12 K21 [PROTO_0]
       80 CAPTURE                          VAL R10
       81 SETTABLEKS                       R12 R11 K22 ["new"]
       83 RETURN                           R11 1
