PROTO_0:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIFEQKNIL                     R2 ; [+10]
        4 GETTABLEKS                       R2 R0 K0 ["keyframeSequence"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["keyframeSequence"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_1:
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
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K1 ["disposeCache"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K2 ["keyframeSequence"]
       22 JUMPIFEQKNIL                     R1 ; [+20]
       24 LOADB                            R1 0
       25 GETUPVAL                         R2 4
       26 JUMPIFEQKNIL                     R2 ; [+10]
       28 GETTABLEKS                       R2 R0 K2 ["keyframeSequence"]
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R3 R3 K2 ["keyframeSequence"]
       33 JUMPIFEQ                         R2 R3 ; [+2]
       35 LOADB                            R1 0 +1
       36 LOADB                            R1 1
       37 JUMPIF                           R1 ; [+5]
       38 GETTABLEKS                       R1 R0 K2 ["keyframeSequence"]
       40 NAMECALL                         R1 R1 K3 ["Destroy"]
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+20]
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["keyframeSequence"]
        6 NAMECALL                         R0 R0 K1 ["Destroy"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K2 ["blendRigidSequence"]
       12 JUMPIFEQKNIL                     R0 ; [+7]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["blendRigidSequence"]
       17 NAMECALL                         R0 R0 K1 ["Destroy"]
       19 CALL                             R0 1 0
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETUPVAL                         R2 0
        3 LOADB                            R4 0
        4 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R3 R1 K2 ["startRecording"]
        9 MOVE                             R4 R2
       10 LOADK                            R5 K3 ["Insert Preview Rig"]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 1
       13 GETIMPORT                        R4 K7 [Enum.HumanoidRigType.R15]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R1 K8 ["endRecording"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 0
       20 JUMPIFNOTEQKNIL                  R3 ; [+3]
       22 LOADNIL                          R4
       23 RETURN                           R4 1
       24 DUPTABLE                         R4 K12 [{"uniqueId", "name", "className"}]
       25 GETTABLEKS                       R5 R1 K13 ["instances"]
       27 GETTABLEKS                       R5 R5 K14 ["getUniqueId"]
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R5 R4 K9 ["uniqueId"]
       33 GETTABLEKS                       R5 R3 K15 ["Name"]
       35 SETTABLEKS                       R5 R4 K10 ["name"]
       37 GETTABLEKS                       R5 R3 K16 ["ClassName"]
       39 SETTABLEKS                       R5 R4 K11 ["className"]
       41 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["previewId"]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 2
        6 JUMPIFEQKNIL                     R2 ; [+20]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["keyframeSequence"]
       11 NAMECALL                         R2 R2 K2 ["Destroy"]
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K3 ["blendRigidSequence"]
       17 JUMPIFEQKNIL                     R2 ; [+7]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K3 ["blendRigidSequence"]
       22 NAMECALL                         R2 R2 K2 ["Destroy"]
       24 CALL                             R2 1 0
       25 LOADNIL                          R2
       26 SETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R0 K4 ["assetId"]
       29 JUMPIFEQKNIL                     R2 ; [+3]
       31 JUMPIFNOTEQKS                    R2 K5 [""] ; [+3]
       33 DUPTABLE                         R3 K10 [{["ok"] = False, ["reason"] = "NoAsset"}]
       34 RETURN                           R3 1
       35 GETUPVAL                         R3 3
       36 MOVE                             R4 R2
       37 CALL                             R3 1 2
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R6 R0 K0 ["previewId"]
       41 JUMPIFEQ                         R5 R6 ; [+8]
       43 JUMPIFEQKNIL                     R3 ; [+4]
       45 NAMECALL                         R5 R3 K2 ["Destroy"]
       47 CALL                             R5 1 0
       48 DUPTABLE                         R5 K11 [{["ok"] = False}]
       49 RETURN                           R5 1
       50 JUMPIFNOTEQKNIL                  R3 ; [+5]
       52 DUPTABLE                         R5 K12 [{["ok"] = False, ["reason"]}]
       53 SETTABLEKS                       R4 R5 K8 ["reason"]
       55 RETURN                           R5 1
       56 LOADNIL                          R5
       57 GETTABLEKS                       R6 R0 K13 ["rigUniqueId"]
       59 JUMPIFEQKNIL                     R6 ; [+21]
       61 GETTABLEKS                       R6 R0 K13 ["rigUniqueId"]
       63 JUMPIFEQKS                       R6 K5 [""] ; [+17]
       65 GETTABLEKS                       R6 R1 K14 ["environment"]
       67 GETTABLEKS                       R6 R6 K15 ["instances"]
       69 GETTABLEKS                       R6 R6 K16 ["getInstanceFromUniqueId"]
       71 GETTABLEKS                       R7 R0 K13 ["rigUniqueId"]
       73 CALL                             R6 1 1
       74 JUMPIFEQKNIL                     R6 ; [+6]
       76 GETUPVAL                         R7 4
       77 MOVE                             R8 R6
       78 CALL                             R7 1 1
       79 JUMPIFNOT                        R7 ; [+1]
       80 MOVE                             R5 R6
       81 GETUPVAL                         R6 5
       82 GETUPVAL                         R7 6
       83 GETUPVAL                         R8 7
       84 GETTABLEKS                       R8 R8 K17 ["create"]
       86 DUPTABLE                         R9 K20 [{["keyframeSequence"], ["isUpscale"] = True}]
       87 SETTABLEKS                       R3 R9 K1 ["keyframeSequence"]
       89 MOVE                             R10 R5
       90 CALL                             R8 2 1
       91 SETTABLE                         R8 R6 R7
       92 GETUPVAL                         R6 8
       93 GETUPVAL                         R7 6
       94 MOVE                             R8 R1
       95 CALL                             R6 2 1
       96 GETUPVAL                         R7 9
       97 GETTABLEKS                       R7 R7 K21 ["setAnimation"]
       99 MOVE                             R8 R6
      100 CALL                             R7 1 0
      101 JUMPIFEQKNIL                     R5 ; [+7]
      103 GETUPVAL                         R7 9
      104 GETTABLEKS                       R7 R7 K22 ["setCurrentTime"]
      106 LOADN                            R8 0
      107 MOVE                             R9 R6
      108 CALL                             R7 2 0
      109 DUPTABLE                         R7 K24 [{["ok"] = True, ["duration"]}]
      110 GETTABLEKS                       R8 R3 K25 ["Length"]
      112 SETTABLEKS                       R8 R7 K23 ["duration"]
      114 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 LOADB                            R3 0
        4 JUMPIFEQKNIL                     R2 ; [+14]
        6 LOADB                            R3 0
        7 GETUPVAL                         R4 2
        8 JUMPIFEQKNIL                     R4 ; [+10]
       10 GETTABLEKS                       R4 R2 K0 ["keyframeSequence"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K0 ["keyframeSequence"]
       15 JUMPIFEQ                         R4 R5 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 JUMPIFNOT                        R3 ; [+7]
       20 GETUPVAL                         R5 2
       21 JUMPIFEQKNIL                     R5 ; [+5]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K1 ["blendRigidSequence"]
       26 JUMP                             ; [+6]
       27 JUMPIFEQKNIL                     R2 ; [+4]
       29 GETTABLEKS                       R4 R2 K0 ["keyframeSequence"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 JUMPIFEQKNIL                     R2 ; [+7]
       35 JUMPIFEQKNIL                     R4 ; [+5]
       37 GETTABLEKS                       R5 R0 K2 ["assetId"]
       39 JUMPIFNOTEQKS                    R5 K3 [""] ; [+10]
       41 DUPTABLE                         R5 K7 [{["ok"] = False, ["failureReason"]}]
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K8 ["FailureReasons"]
       45 GETTABLEKS                       R6 R6 K9 ["GenerationFailed"]
       47 SETTABLEKS                       R6 R5 K6 ["failureReason"]
       49 RETURN                           R5 1
       50 GETUPVAL                         R5 4
       51 GETTABLEKS                       R5 R5 K10 ["generateUpscale"]
       53 GETTABLEKS                       R6 R0 K2 ["assetId"]
       55 MOVE                             R7 R1
       56 CALL                             R5 2 1
       57 GETTABLEKS                       R6 R5 K0 ["keyframeSequence"]
       59 GETUPVAL                         R8 0
       60 GETUPVAL                         R9 1
       61 GETTABLE                         R7 R8 R9
       62 JUMPIFNOTEQ                      R7 R2 ; [+6]
       64 GETTABLEKS                       R7 R5 K11 ["success"]
       66 JUMPIFNOT                        R7 ; [+2]
       67 JUMPIFNOTEQKNIL                  R6 ; [+18]
       69 JUMPIFEQKNIL                     R6 ; [+4]
       71 NAMECALL                         R7 R6 K12 ["Destroy"]
       73 CALL                             R7 1 0
       74 DUPTABLE                         R7 K7 [{["ok"] = False, ["failureReason"]}]
       75 GETTABLEKS                       R8 R5 K6 ["failureReason"]
       77 JUMPIF                           R8 ; [+5]
       78 GETUPVAL                         R8 3
       79 GETTABLEKS                       R8 R8 K8 ["FailureReasons"]
       81 GETTABLEKS                       R8 R8 K9 ["GenerationFailed"]
       83 SETTABLEKS                       R8 R7 K6 ["failureReason"]
       85 RETURN                           R7 1
       86 GETTABLEKS                       R7 R2 K13 ["rig"]
       88 JUMPIFNOT                        R3 ; [+8]
       89 GETUPVAL                         R8 2
       90 JUMPIFEQKNIL                     R8 ; [+6]
       92 GETUPVAL                         R8 2
       93 LOADNIL                          R9
       94 SETTABLEKS                       R9 R8 K1 ["blendRigidSequence"]
       96 JUMP                             ; [+3]
       97 LOADNIL                          R8
       98 SETTABLEKS                       R8 R2 K0 ["keyframeSequence"]
      100 GETUPVAL                         R8 5
      101 CALL                             R8 0 0
      102 GETUPVAL                         R8 2
      103 JUMPIFEQKNIL                     R8 ; [+20]
      105 GETUPVAL                         R8 2
      106 GETTABLEKS                       R8 R8 K0 ["keyframeSequence"]
      108 NAMECALL                         R8 R8 K12 ["Destroy"]
      110 CALL                             R8 1 0
      111 GETUPVAL                         R8 2
      112 GETTABLEKS                       R8 R8 K1 ["blendRigidSequence"]
      114 JUMPIFEQKNIL                     R8 ; [+7]
      116 GETUPVAL                         R8 2
      117 GETTABLEKS                       R8 R8 K1 ["blendRigidSequence"]
      119 NAMECALL                         R8 R8 K12 ["Destroy"]
      121 CALL                             R8 1 0
      122 LOADNIL                          R8
      123 SETUPVAL                         R8 2
      124 DUPTABLE                         R8 K18 [{"assetId", "keyframeSequence", "blendRigidSequence", "name", "generationId", "contextId", "fbxFilePath"}]
      125 GETTABLEKS                       R9 R0 K2 ["assetId"]
      127 SETTABLEKS                       R9 R8 K2 ["assetId"]
      129 SETTABLEKS                       R6 R8 K0 ["keyframeSequence"]
      131 SETTABLEKS                       R4 R8 K1 ["blendRigidSequence"]
      133 GETTABLEKS                       R9 R5 K14 ["name"]
      135 JUMPIF                           R9 ; [+2]
      136 GETTABLEKS                       R9 R6 K19 ["Name"]
      138 SETTABLEKS                       R9 R8 K14 ["name"]
      140 GETTABLEKS                       R9 R5 K15 ["generationId"]
      142 SETTABLEKS                       R9 R8 K15 ["generationId"]
      144 GETTABLEKS                       R9 R5 K16 ["contextId"]
      146 SETTABLEKS                       R9 R8 K16 ["contextId"]
      148 GETTABLEKS                       R9 R5 K17 ["fbxFilePath"]
      150 SETTABLEKS                       R9 R8 K17 ["fbxFilePath"]
      152 SETUPVAL                         R8 2
      153 GETUPVAL                         R9 6
      154 GETTABLEKS                       R9 R9 K20 ["create"]
      156 DUPTABLE                         R10 K23 [{[1], ["isUpscale"] = True}]
      157 SETTABLEKS                       R6 R10 K0 ["keyframeSequence"]
      159 MOVE                             R11 R7
      160 CALL                             R9 2 1
      161 SETTABLEKS                       R4 R9 K1 ["blendRigidSequence"]
      163 GETUPVAL                         R10 7
      164 GETTABLEKS                       R10 R10 K24 ["resolve"]
      166 CALL                             R10 0 1
      167 SETTABLEKS                       R10 R9 K25 ["settings"]
      169 GETUPVAL                         R10 0
      170 GETUPVAL                         R11 1
      171 SETTABLE                         R9 R10 R11
      172 GETUPVAL                         R10 8
      173 GETUPVAL                         R11 1
      174 MOVE                             R12 R1
      175 CALL                             R10 2 1
      176 GETUPVAL                         R11 9
      177 GETTABLEKS                       R11 R11 K26 ["setAnimation"]
      179 MOVE                             R12 R10
      180 CALL                             R11 1 0
      181 JUMPIFEQKNIL                     R7 ; [+7]
      183 GETUPVAL                         R11 9
      184 GETTABLEKS                       R11 R11 K27 ["setCurrentTime"]
      186 LOADN                            R12 0
      187 MOVE                             R13 R10
      188 CALL                             R11 2 0
      189 DUPTABLE                         R11 K28 [{["ok"] = True}]
      190 RETURN                           R11 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 JUMPIFEQKNIL                     R2 ; [+15]
        5 LOADB                            R3 0
        6 GETUPVAL                         R4 2
        7 JUMPIFEQKNIL                     R4 ; [+10]
        9 GETTABLEKS                       R4 R2 K0 ["keyframeSequence"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K0 ["keyframeSequence"]
       14 JUMPIFEQ                         R4 R5 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 JUMPIF                           R3 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K1 ["fromForm"]
       23 GETTABLEKS                       R4 R0 K2 ["formValues"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R4 R4 K3 ["applyUpscaleSettings"]
       29 MOVE                             R5 R2
       30 MOVE                             R6 R3
       31 CALL                             R4 2 2
       32 GETUPVAL                         R6 5
       33 GETUPVAL                         R7 1
       34 MOVE                             R8 R1
       35 CALL                             R6 2 1
       36 JUMPIFNOT                        R5 ; [+6]
       37 GETUPVAL                         R7 6
       38 GETTABLEKS                       R7 R7 K4 ["swapPlayingSequence"]
       40 MOVE                             R8 R6
       41 CALL                             R7 1 0
       42 RETURN                           R0 0
       43 JUMPIFNOT                        R4 ; [+5]
       44 GETUPVAL                         R7 6
       45 GETTABLEKS                       R7 R7 K5 ["refreshR6BlendWeights"]
       47 MOVE                             R8 R6
       48 CALL                             R7 1 0
       49 RETURN                           R0 0

PROTO_7:
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
       14 GETUPVAL                         R1 3
       15 GETUPVAL                         R2 2
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 4
       18 CALL                             R1 0 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+5]
        3 GETTABLEKS                       R2 R1 K0 ["assetId"]
        5 JUMPIFEQ                         R2 R0 ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETUPVAL                         R3 1
       10 GETUPVAL                         R4 2
       11 GETTABLE                         R2 R3 R4
       12 JUMPIFEQKNIL                     R2 ; [+20]
       14 LOADB                            R3 0
       15 GETUPVAL                         R4 0
       16 JUMPIFEQKNIL                     R4 ; [+10]
       18 GETTABLEKS                       R4 R2 K1 ["keyframeSequence"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K1 ["keyframeSequence"]
       23 JUMPIFEQ                         R4 R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 JUMPIFNOT                        R3 ; [+5]
       28 GETUPVAL                         R3 3
       29 GETUPVAL                         R4 2
       30 CALL                             R3 1 0
       31 GETUPVAL                         R3 4
       32 CALL                             R3 0 0
       33 LOADNIL                          R3
       34 SETUPVAL                         R3 0
       35 RETURN                           R1 1

PROTO_9:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 JUMPIFEQKNIL                     R0 ; [+20]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["keyframeSequence"]
       10 NAMECALL                         R0 R0 K1 ["Destroy"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K2 ["blendRigidSequence"]
       16 JUMPIFEQKNIL                     R0 ; [+7]
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K2 ["blendRigidSequence"]
       21 NAMECALL                         R0 R0 K1 ["Destroy"]
       23 CALL                             R0 1 0
       24 LOADNIL                          R0
       25 SETUPVAL                         R0 2
       26 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["sharedStates"]
        2 GETTABLEKS                       R2 R0 K1 ["animator"]
        4 GETTABLEKS                       R3 R0 K2 ["toAnimatorContext"]
        6 GETTABLEKS                       R4 R0 K3 ["resetRigPose"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          REF R6
       12 NEWCLOSURE                       R8 P1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          REF R6
       18 NEWCLOSURE                       R9 P2
       19 CAPTURE                          REF R6
       20 DUPCLOSURE                       R10 K4 [PROTO_3]
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 NEWCLOSURE                       R11 P4
       24 CAPTURE                          REF R5
       25 CAPTURE                          VAL R8
       26 CAPTURE                          REF R6
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 NEWCLOSURE                       R12 P5
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          REF R6
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R8
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 NEWCLOSURE                       R13 P6
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          REF R6
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 NEWCLOSURE                       R14 P7
       54 CAPTURE                          REF R5
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R8
       59 DUPTABLE                         R15 K12 [{"previewClipToUpscaleAsync", "clearClipToUpscalePreview", "insertClipToUpscalePreviewRigAsync", "generateUpscalePreviewAsync", "updateUpscalePreview", "takeCandidate", "destroy"}]
       60 SETTABLEKS                       R11 R15 K5 ["previewClipToUpscaleAsync"]
       62 SETTABLEKS                       R14 R15 K6 ["clearClipToUpscalePreview"]
       64 SETTABLEKS                       R10 R15 K7 ["insertClipToUpscalePreviewRigAsync"]
       66 SETTABLEKS                       R12 R15 K8 ["generateUpscalePreviewAsync"]
       68 SETTABLEKS                       R13 R15 K9 ["updateUpscalePreview"]
       70 NEWCLOSURE                       R16 P8
       71 CAPTURE                          REF R6
       72 CAPTURE                          VAL R1
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R8
       76 SETTABLEKS                       R16 R15 K10 ["takeCandidate"]
       78 NEWCLOSURE                       R16 P9
       79 CAPTURE                          REF R5
       80 CAPTURE                          VAL R8
       81 CAPTURE                          REF R6
       82 SETTABLEKS                       R16 R15 K11 ["destroy"]
       84 CLOSEUPVALS                      R5
       85 RETURN                           R15 1

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
       31 GETTABLEKS                       R5 R1 K10 ["Util"]
       33 GETTABLEKS                       R5 R5 K11 ["AnimationGen"]
       35 GETTABLEKS                       R5 R5 K15 ["AnimationGenTypes"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R1 K10 ["Util"]
       42 GETTABLEKS                       R6 R6 K11 ["AnimationGen"]
       44 GETTABLEKS                       R6 R6 K16 ["State"]
       46 GETTABLEKS                       R6 R6 K17 ["AnimationPlayerParameters"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R1 K10 ["Util"]
       53 GETTABLEKS                       R7 R7 K11 ["AnimationGen"]
       55 GETTABLEKS                       R7 R7 K16 ["State"]
       57 GETTABLEKS                       R7 R7 K18 ["AnimationPlayerState"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R8 R1 K10 ["Util"]
       64 GETTABLEKS                       R8 R8 K11 ["AnimationGen"]
       66 GETTABLEKS                       R8 R8 K19 ["HostTypes"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K9 [require]
       71 GETTABLEKS                       R9 R1 K20 ["Types"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R10 R1 K10 ["Util"]
       78 GETTABLEKS                       R10 R10 K11 ["AnimationGen"]
       80 GETTABLEKS                       R10 R10 K21 ["UpscaleSettings"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K9 [require]
       85 GETTABLEKS                       R11 R1 K10 ["Util"]
       87 GETTABLEKS                       R11 R11 K11 ["AnimationGen"]
       89 GETTABLEKS                       R11 R11 K22 ["insertBlockyRigIntoWorkspace"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K9 [require]
       94 GETTABLEKS                       R12 R1 K10 ["Util"]
       96 GETTABLEKS                       R12 R12 K11 ["AnimationGen"]
       98 GETTABLEKS                       R12 R12 K23 ["isRigInWorkspace"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K9 [require]
      103 GETTABLEKS                       R13 R1 K10 ["Util"]
      105 GETTABLEKS                       R13 R13 K11 ["AnimationGen"]
      107 GETTABLEKS                       R13 R13 K24 ["loadRigidR15FromR6Asset"]
      109 CALL                             R12 1 1
      110 GETTABLEKS                       R13 R2 K25 ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"]
      112 DUPCLOSURE                       R14 K26 [PROTO_10]
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R5
      122 RETURN                           R14 1
