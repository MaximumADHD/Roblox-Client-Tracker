PROTO_0:
        0 DUPTABLE                         R1 K14 [{"generateAndSaveAnimation", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "openInAnimationClipEditor", "beginEditPreview", "setEditPreviewReach", "setEditPreviewBlend", "previewClipToUpscale", "clearClipToUpscalePreview", "insertClipToUpscalePreviewRig", "animatorRemoved", "restartPlayback", "poseDeselected"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K15 ["invoke"]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K16 ["AnimationGen.generateAndSaveAnimation"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["generateAndSaveAnimation"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K15 ["invoke"]
       12 MOVE                             R3 R0
       13 LOADK                            R4 K17 ["AnimationGen.getSelectedRigRef"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K1 ["getSelectedRigRef"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K18 ["event"]
       20 MOVE                             R3 R0
       21 LOADK                            R4 K19 ["AnimationGen.setIsPlaying"]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K2 ["setIsPlaying"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K18 ["event"]
       28 MOVE                             R3 R0
       29 LOADK                            R4 K20 ["AnimationGen.setCurrentTime"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R1 K3 ["setCurrentTime"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K18 ["event"]
       36 MOVE                             R3 R0
       37 LOADK                            R4 K21 ["AnimationGen.openInAnimationClipEditor"]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K4 ["openInAnimationClipEditor"]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K18 ["event"]
       44 MOVE                             R3 R0
       45 LOADK                            R4 K22 ["AnimationGen.beginEditPreview"]
       46 CALL                             R2 2 1
       47 SETTABLEKS                       R2 R1 K5 ["beginEditPreview"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K18 ["event"]
       52 MOVE                             R3 R0
       53 LOADK                            R4 K23 ["AnimationGen.setEditPreviewReach"]
       54 CALL                             R2 2 1
       55 SETTABLEKS                       R2 R1 K6 ["setEditPreviewReach"]
       57 GETUPVAL                         R2 0
       58 GETTABLEKS                       R2 R2 K18 ["event"]
       60 MOVE                             R3 R0
       61 LOADK                            R4 K24 ["AnimationGen.setEditPreviewBlend"]
       62 CALL                             R2 2 1
       63 SETTABLEKS                       R2 R1 K7 ["setEditPreviewBlend"]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K15 ["invoke"]
       68 MOVE                             R3 R0
       69 LOADK                            R4 K25 ["AnimationGen.previewClipToUpscale"]
       70 CALL                             R2 2 1
       71 SETTABLEKS                       R2 R1 K8 ["previewClipToUpscale"]
       73 GETUPVAL                         R2 0
       74 GETTABLEKS                       R2 R2 K18 ["event"]
       76 MOVE                             R3 R0
       77 LOADK                            R4 K26 ["AnimationGen.clearClipToUpscalePreview"]
       78 CALL                             R2 2 1
       79 SETTABLEKS                       R2 R1 K9 ["clearClipToUpscalePreview"]
       81 GETUPVAL                         R2 0
       82 GETTABLEKS                       R2 R2 K15 ["invoke"]
       84 MOVE                             R3 R0
       85 LOADK                            R4 K27 ["AnimationGen.insertClipToUpscalePreviewRig"]
       86 CALL                             R2 2 1
       87 SETTABLEKS                       R2 R1 K10 ["insertClipToUpscalePreviewRig"]
       89 GETUPVAL                         R2 0
       90 GETTABLEKS                       R2 R2 K18 ["event"]
       92 MOVE                             R3 R0
       93 LOADK                            R4 K28 ["AnimationGen.animatorRemoved"]
       94 CALL                             R2 2 1
       95 SETTABLEKS                       R2 R1 K11 ["animatorRemoved"]
       97 GETUPVAL                         R2 0
       98 GETTABLEKS                       R2 R2 K18 ["event"]
      100 MOVE                             R3 R0
      101 LOADK                            R4 K29 ["AnimationGen.restartPlayback"]
      102 CALL                             R2 2 1
      103 SETTABLEKS                       R2 R1 K12 ["restartPlayback"]
      105 GETUPVAL                         R2 0
      106 GETTABLEKS                       R2 R2 K18 ["event"]
      108 MOVE                             R3 R0
      109 LOADK                            R4 K30 ["AnimationGen.poseDeselected"]
      110 CALL                             R2 2 1
      111 SETTABLEKS                       R2 R1 K13 ["poseDeselected"]
      113 RETURN                           R1 1

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
       29 GETTABLEKS                       R5 R5 K11 ["BlendSettings"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Types"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R2 K13 ["Remote"]
       39 NEWTABLE                         R7 1 0
       41 DUPCLOSURE                       R8 K14 [PROTO_0]
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R8 R7 K15 ["new"]
       45 RETURN                           R7 1
