PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["environment"]
        4 GETTABLEKS                       R2 R1 K2 ["selection"]
        6 GETTABLEKS                       R2 R2 K3 ["get"]
        8 CALL                             R2 0 1
        9 LENGTH                           R3 R2
       10 JUMPIFEQKN                       R3 K4 [1] ; [+3]
       12 LOADNIL                          R3
       13 RETURN                           R3 1
       14 GETTABLEN                        R3 R2 1
       15 LOADK                            R6 K5 ["Model"]
       16 NAMECALL                         R4 R3 K6 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIF                           R4 ; [+2]
       20 LOADNIL                          R4
       21 RETURN                           R4 1
       22 LOADB                            R4 1
       23 LOADK                            R7 K7 ["Humanoid"]
       24 NAMECALL                         R5 R3 K8 ["FindFirstChildOfClass"]
       26 CALL                             R5 2 1
       27 JUMPIFNOTEQKNIL                  R5 ; [+9]
       29 LOADK                            R7 K9 ["AnimationController"]
       30 NAMECALL                         R5 R3 K8 ["FindFirstChildOfClass"]
       32 CALL                             R5 2 1
       33 JUMPIFNOTEQKNIL                  R5 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 JUMPIF                           R4 ; [+2]
       38 LOADNIL                          R5
       39 RETURN                           R5 1
       40 GETTABLEKS                       R5 R1 K10 ["instances"]
       42 GETTABLEKS                       R5 R5 K11 ["getUniqueId"]
       44 MOVE                             R6 R3
       45 CALL                             R5 1 1
       46 DUPTABLE                         R6 K15 [{"uniqueId", "name", "className"}]
       47 SETTABLEKS                       R5 R6 K12 ["uniqueId"]
       49 GETTABLEKS                       R7 R3 K16 ["Name"]
       51 SETTABLEKS                       R7 R6 K13 ["name"]
       53 GETTABLEKS                       R7 R3 K17 ["ClassName"]
       55 SETTABLEKS                       R7 R6 K14 ["className"]
       57 RETURN                           R6 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["toolArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
        4 GETTABLEKS                       R3 R2 K2 ["instances"]
        6 GETTABLEKS                       R3 R3 K3 ["getInstanceFromUniqueId"]
        8 GETTABLEKS                       R4 R0 K4 ["rigUniqueId"]
       10 CALL                             R3 1 1
       11 JUMPIFEQKNIL                     R3 ; [+6]
       13 LOADK                            R6 K5 ["Model"]
       14 NAMECALL                         R4 R3 K6 ["IsA"]
       16 CALL                             R4 2 1
       17 JUMPIF                           R4 ; [+2]
       18 LOADN                            R4 0
       19 RETURN                           R4 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K7 ["generateAnimationAsync"]
       23 DUPTABLE                         R5 K13 [{"rig", "prompt", "duration", "contentId", "messageId"}]
       24 SETTABLEKS                       R3 R5 K8 ["rig"]
       26 GETTABLEKS                       R6 R0 K9 ["prompt"]
       28 SETTABLEKS                       R6 R5 K9 ["prompt"]
       30 GETTABLEKS                       R6 R0 K10 ["duration"]
       32 SETTABLEKS                       R6 R5 K10 ["duration"]
       34 GETTABLEKS                       R6 R1 K14 ["handlerArgs"]
       36 GETTABLEKS                       R6 R6 K11 ["contentId"]
       38 SETTABLEKS                       R6 R5 K11 ["contentId"]
       40 GETTABLEKS                       R6 R1 K14 ["handlerArgs"]
       42 GETTABLEKS                       R6 R6 K12 ["messageId"]
       44 SETTABLEKS                       R6 R5 K12 ["messageId"]
       46 MOVE                             R6 R1
       47 CALL                             R4 2 1
       48 GETTABLEKS                       R5 R4 K15 ["success"]
       50 JUMPIFNOT                        R5 ; [+4]
       51 GETTABLEKS                       R5 R4 K16 ["keyframeSequence"]
       53 JUMPIFNOTEQKNIL                  R5 ; [+3]
       55 LOADN                            R5 0
       56 RETURN                           R5 1
       57 GETUPVAL                         R5 1
       58 GETTABLEKS                       R5 R5 K17 ["setupAnimator"]
       60 GETTABLEKS                       R6 R4 K16 ["keyframeSequence"]
       62 MOVE                             R7 R3
       63 MOVE                             R8 R1
       64 CALL                             R5 3 -1
       65 RETURN                           R5 -1

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
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["AnimationGenTool"]
       17 GETTABLEKS                       R3 R3 K8 ["AnimationGenBridgeTypes"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K9 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K7 ["AnimationGenTool"]
       29 GETTABLEKS                       R5 R5 K10 ["AnimationGenHost"]
       31 GETTABLEKS                       R5 R5 K11 ["createHostAnimator"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R1 K7 ["AnimationGenTool"]
       38 GETTABLEKS                       R6 R6 K10 ["AnimationGenHost"]
       40 GETTABLEKS                       R6 R6 K12 ["createHostGenerator"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K13 [PROTO_0]
       44 MOVE                             R7 R5
       45 CALL                             R7 0 1
       46 MOVE                             R8 R4
       47 CALL                             R8 0 1
       48 DUPCLOSURE                       R9 K14 [PROTO_1]
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R8
       51 DUPTABLE                         R10 K21 [{"generateAnimationAndSetupAnimatorAsync", "getSelectedRigRef", "generateAnimationAsync", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed"}]
       52 SETTABLEKS                       R9 R10 K15 ["generateAnimationAndSetupAnimatorAsync"]
       54 SETTABLEKS                       R6 R10 K16 ["getSelectedRigRef"]
       56 GETTABLEKS                       R11 R7 K17 ["generateAnimationAsync"]
       58 SETTABLEKS                       R11 R10 K17 ["generateAnimationAsync"]
       60 GETTABLEKS                       R11 R8 K18 ["setIsPlaying"]
       62 SETTABLEKS                       R11 R10 K18 ["setIsPlaying"]
       64 GETTABLEKS                       R11 R8 K19 ["setCurrentTime"]
       66 SETTABLEKS                       R11 R10 K19 ["setCurrentTime"]
       68 GETTABLEKS                       R11 R8 K20 ["setPlaybackSpeed"]
       70 SETTABLEKS                       R11 R10 K20 ["setPlaybackSpeed"]
       72 DUPTABLE                         R11 K24 [{"bridge", "destroy"}]
       73 SETTABLEKS                       R10 R11 K22 ["bridge"]
       75 GETTABLEKS                       R12 R8 K23 ["destroy"]
       77 SETTABLEKS                       R12 R11 K23 ["destroy"]
       79 RETURN                           R11 1
