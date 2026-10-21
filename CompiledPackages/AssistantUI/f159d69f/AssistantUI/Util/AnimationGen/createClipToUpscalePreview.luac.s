PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["removeAnimation"]
        9 GETUPVAL                         R2 1
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 0
       12 GETUPVAL                         R2 1
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R1 R2
       15 GETTABLEKS                       R1 R0 K1 ["keyframeSequence"]
       17 JUMPIFEQKNIL                     R1 ; [+6]
       19 GETTABLEKS                       R1 R0 K1 ["keyframeSequence"]
       21 NAMECALL                         R1 R1 K2 ["Destroy"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 0
        2 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K1 ["startRecording"]
        7 MOVE                             R3 R1
        8 LOADK                            R4 K2 ["Insert Preview Rig"]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 1
       11 GETIMPORT                        R3 K6 [Enum.HumanoidRigType.R15]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K7 ["endRecording"]
       16 MOVE                             R4 R1
       17 CALL                             R3 1 0
       18 JUMPIFNOTEQKNIL                  R2 ; [+3]
       20 LOADNIL                          R3
       21 RETURN                           R3 1
       22 DUPTABLE                         R3 K11 [{"uniqueId", "name", "className"}]
       23 GETTABLEKS                       R4 R0 K12 ["instances"]
       25 GETTABLEKS                       R4 R4 K13 ["getUniqueId"]
       27 MOVE                             R5 R2
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K8 ["uniqueId"]
       31 GETTABLEKS                       R4 R2 K14 ["Name"]
       33 SETTABLEKS                       R4 R3 K9 ["name"]
       35 GETTABLEKS                       R4 R2 K15 ["ClassName"]
       37 SETTABLEKS                       R4 R3 K10 ["className"]
       39 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["previewId"]
        2 SETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 2
        5 GETTABLE                         R3 R4 R5
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 JUMP                             ; [+18]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K1 ["removeAnimation"]
       12 GETUPVAL                         R5 2
       13 CALL                             R4 1 0
       14 GETUPVAL                         R4 1
       15 GETUPVAL                         R5 2
       16 LOADNIL                          R6
       17 SETTABLE                         R6 R4 R5
       18 GETTABLEKS                       R4 R3 K2 ["keyframeSequence"]
       20 JUMPIFEQKNIL                     R4 ; [+6]
       22 GETTABLEKS                       R4 R3 K2 ["keyframeSequence"]
       24 NAMECALL                         R4 R4 K3 ["Destroy"]
       26 CALL                             R4 1 0
       27 GETTABLEKS                       R3 R0 K4 ["assetId"]
       29 JUMPIFEQKNIL                     R3 ; [+3]
       31 JUMPIFNOTEQKS                    R3 K5 [""] ; [+3]
       33 DUPTABLE                         R4 K10 [{["ok"] = False, ["reason"] = "NoAsset"}]
       34 RETURN                           R4 1
       35 GETUPVAL                         R4 4
       36 MOVE                             R5 R3
       37 CALL                             R4 1 2
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R7 R0 K0 ["previewId"]
       41 JUMPIFEQ                         R6 R7 ; [+8]
       43 JUMPIFEQKNIL                     R4 ; [+4]
       45 NAMECALL                         R6 R4 K3 ["Destroy"]
       47 CALL                             R6 1 0
       48 DUPTABLE                         R6 K11 [{["ok"] = False}]
       49 RETURN                           R6 1
       50 JUMPIFNOTEQKNIL                  R4 ; [+5]
       52 DUPTABLE                         R6 K12 [{["ok"] = False, ["reason"]}]
       53 SETTABLEKS                       R5 R6 K8 ["reason"]
       55 RETURN                           R6 1
       56 LOADNIL                          R6
       57 GETTABLEKS                       R7 R0 K13 ["rigUniqueId"]
       59 JUMPIFEQKNIL                     R7 ; [+19]
       61 GETTABLEKS                       R7 R0 K13 ["rigUniqueId"]
       63 JUMPIFEQKS                       R7 K5 [""] ; [+15]
       65 GETTABLEKS                       R7 R1 K14 ["instances"]
       67 GETTABLEKS                       R7 R7 K15 ["getInstanceFromUniqueId"]
       69 GETTABLEKS                       R8 R0 K13 ["rigUniqueId"]
       71 CALL                             R7 1 1
       72 JUMPIFEQKNIL                     R7 ; [+6]
       74 GETUPVAL                         R8 5
       75 MOVE                             R9 R7
       76 CALL                             R8 1 1
       77 JUMPIFNOT                        R8 ; [+1]
       78 MOVE                             R6 R7
       79 GETUPVAL                         R7 1
       80 GETUPVAL                         R8 2
       81 DUPTABLE                         R9 K19 [{["keyframeSequence"], ["rig"], ["needsReload"] = True}]
       82 SETTABLEKS                       R4 R9 K2 ["keyframeSequence"]
       84 SETTABLEKS                       R6 R9 K16 ["rig"]
       86 SETTABLE                         R9 R7 R8
       87 GETUPVAL                         R7 6
       88 GETUPVAL                         R8 2
       89 MOVE                             R9 R1
       90 MOVE                             R10 R2
       91 CALL                             R7 3 1
       92 GETUPVAL                         R8 3
       93 GETTABLEKS                       R8 R8 K20 ["setAnimation"]
       95 MOVE                             R9 R7
       96 CALL                             R8 1 0
       97 JUMPIFEQKNIL                     R6 ; [+7]
       99 GETUPVAL                         R8 3
      100 GETTABLEKS                       R8 R8 K21 ["setCurrentTime"]
      102 LOADN                            R9 0
      103 MOVE                             R10 R7
      104 CALL                             R8 2 0
      105 DUPTABLE                         R8 K23 [{["ok"] = True, ["duration"]}]
      106 GETTABLEKS                       R9 R4 K24 ["Length"]
      108 SETTABLEKS                       R9 R8 K22 ["duration"]
      110 RETURN                           R8 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["previewId"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 GETTABLE                         R1 R2 R3
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K1 ["removeAnimation"]
       17 GETUPVAL                         R3 2
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 1
       20 GETUPVAL                         R3 2
       21 LOADNIL                          R4
       22 SETTABLE                         R4 R2 R3
       23 GETTABLEKS                       R2 R1 K2 ["keyframeSequence"]
       25 JUMPIFEQKNIL                     R2 ; [+6]
       27 GETTABLEKS                       R2 R1 K2 ["keyframeSequence"]
       29 NAMECALL                         R2 R2 K3 ["Destroy"]
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K0 ["removeAnimation"]
       11 GETUPVAL                         R2 2
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R2 2
       15 LOADNIL                          R3
       16 SETTABLE                         R3 R1 R2
       17 GETTABLEKS                       R1 R0 K1 ["keyframeSequence"]
       19 JUMPIFEQKNIL                     R1 ; [+6]
       21 GETTABLEKS                       R1 R0 K1 ["keyframeSequence"]
       23 NAMECALL                         R1 R1 K2 ["Destroy"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["sharedStates"]
        2 GETTABLEKS                       R2 R0 K1 ["animator"]
        4 GETTABLEKS                       R3 R0 K2 ["toAnimatorContext"]
        6 LOADNIL                          R4
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R2
       11 DUPCLOSURE                       R6 K3 [PROTO_1]
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 NEWCLOSURE                       R7 P2
       15 CAPTURE                          REF R4
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R3
       22 NEWCLOSURE                       R8 P3
       23 CAPTURE                          REF R4
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R2
       27 DUPTABLE                         R9 K8 [{"previewClipToUpscaleAsync", "clearClipToUpscalePreview", "insertClipToUpscalePreviewRigAsync", "destroy"}]
       28 SETTABLEKS                       R7 R9 K4 ["previewClipToUpscaleAsync"]
       30 SETTABLEKS                       R8 R9 K5 ["clearClipToUpscalePreview"]
       32 SETTABLEKS                       R6 R9 K6 ["insertClipToUpscalePreviewRigAsync"]
       34 NEWCLOSURE                       R10 P4
       35 CAPTURE                          REF R4
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R10 R9 K7 ["destroy"]
       41 CLOSEUPVALS                      R4
       42 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["AnimationGen"]
       19 GETTABLEKS                       R3 R3 K12 ["AnimationGenConstants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["Remotes"]
       26 GETTABLEKS                       R4 R4 K14 ["AnimationGenRemotes"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K15 ["Guest"]
       33 GETTABLEKS                       R5 R5 K16 ["Environment"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K10 ["Util"]
       40 GETTABLEKS                       R6 R6 K11 ["AnimationGen"]
       42 GETTABLEKS                       R6 R6 K17 ["HostTypes"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K18 ["Types"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R1 K10 ["Util"]
       54 GETTABLEKS                       R8 R8 K11 ["AnimationGen"]
       56 GETTABLEKS                       R8 R8 K19 ["insertBlockyRigIntoWorkspace"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R1 K10 ["Util"]
       63 GETTABLEKS                       R9 R9 K11 ["AnimationGen"]
       65 GETTABLEKS                       R9 R9 K20 ["isRigInWorkspace"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R1 K10 ["Util"]
       72 GETTABLEKS                       R10 R10 K11 ["AnimationGen"]
       74 GETTABLEKS                       R10 R10 K21 ["loadRigidR15FromR6Asset"]
       76 CALL                             R9 1 1
       77 GETTABLEKS                       R10 R2 K22 ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"]
       79 DUPCLOSURE                       R11 K23 [PROTO_5]
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R8
       85 RETURN                           R11 1
