PROTO_0:
        0 DUPTABLE                         R1 K11 [{"generateAndSaveAnimation", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "openInAnimationClipEditor", "beginEditPreview", "setEditPreviewReach", "animatorRemoved", "restartPlayback", "poseDeselected"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K12 ["invoke"]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K13 ["AnimationGen.generateAndSaveAnimation"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["generateAndSaveAnimation"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K12 ["invoke"]
       12 MOVE                             R3 R0
       13 LOADK                            R4 K14 ["AnimationGen.getSelectedRigRef"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K1 ["getSelectedRigRef"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K15 ["event"]
       20 MOVE                             R3 R0
       21 LOADK                            R4 K16 ["AnimationGen.setIsPlaying"]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K2 ["setIsPlaying"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K15 ["event"]
       28 MOVE                             R3 R0
       29 LOADK                            R4 K17 ["AnimationGen.setCurrentTime"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R1 K3 ["setCurrentTime"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K15 ["event"]
       36 MOVE                             R3 R0
       37 LOADK                            R4 K18 ["AnimationGen.setPlaybackSpeed"]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K4 ["setPlaybackSpeed"]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K15 ["event"]
       44 MOVE                             R3 R0
       45 LOADK                            R4 K19 ["AnimationGen.openInAnimationClipEditor"]
       46 CALL                             R2 2 1
       47 SETTABLEKS                       R2 R1 K5 ["openInAnimationClipEditor"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K15 ["event"]
       52 MOVE                             R3 R0
       53 LOADK                            R4 K20 ["AnimationGen.beginEditPreview"]
       54 CALL                             R2 2 1
       55 SETTABLEKS                       R2 R1 K6 ["beginEditPreview"]
       57 GETUPVAL                         R2 0
       58 GETTABLEKS                       R2 R2 K15 ["event"]
       60 MOVE                             R3 R0
       61 LOADK                            R4 K21 ["AnimationGen.setEditPreviewReach"]
       62 CALL                             R2 2 1
       63 SETTABLEKS                       R2 R1 K7 ["setEditPreviewReach"]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K15 ["event"]
       68 MOVE                             R3 R0
       69 LOADK                            R4 K22 ["AnimationGen.animatorRemoved"]
       70 CALL                             R2 2 1
       71 SETTABLEKS                       R2 R1 K8 ["animatorRemoved"]
       73 GETUPVAL                         R2 0
       74 GETTABLEKS                       R2 R2 K15 ["event"]
       76 MOVE                             R3 R0
       77 LOADK                            R4 K23 ["AnimationGen.restartPlayback"]
       78 CALL                             R2 2 1
       79 SETTABLEKS                       R2 R1 K9 ["restartPlayback"]
       81 GETUPVAL                         R2 0
       82 GETTABLEKS                       R2 R2 K15 ["event"]
       84 MOVE                             R3 R0
       85 LOADK                            R4 K24 ["AnimationGen.poseDeselected"]
       86 CALL                             R2 2 1
       87 SETTABLEKS                       R2 R1 K10 ["poseDeselected"]
       89 RETURN                           R1 1

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
       25 GETTABLEKS                       R5 R0 K11 ["Types"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R2 K12 ["Remote"]
       30 NEWTABLE                         R6 1 0
       32 DUPCLOSURE                       R7 K13 [PROTO_0]
       33 CAPTURE                          VAL R5
       34 SETTABLEKS                       R7 R6 K14 ["new"]
       36 RETURN                           R6 1
