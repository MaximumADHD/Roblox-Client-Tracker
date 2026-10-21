PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animatorRemoved"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["restartPlayback"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["instances"]
        3 GETTABLEKS                       R2 R2 K1 ["getUniqueId"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 -1
        7 FASTCALL                         TOSTRING ; [+2]
        8 GETIMPORT                        R1 K3 [tostring]
       10 CALL                             R1 -1 1
       11 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R3 K4 [{"id", "animatorRemoved", "restartPlayback", "getUniqueId"}]
        1 SETTABLEKS                       R0 R3 K0 ["id"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R4 R3 K1 ["animatorRemoved"]
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R4 R3 K2 ["restartPlayback"]
       13 NEWCLOSURE                       R4 P2
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R4 R3 K3 ["getUniqueId"]
       17 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 GETUPVAL                         R2 1
        5 NOT                              R1 R2
        6 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        8 LOADK                            R2 K0 ["AnimationGen host state was destroyed"]
        9 GETIMPORT                        R0 K2 [assert]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 2
       13 CALL                             R0 0 1
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R2 R0 K3 ["selectionChangedSignal"]
       17 GETUPVAL                         R3 4
       18 CALL                             R1 2 1
       19 DUPTABLE                         R2 K8 [{"selection", "generator", "animator", "clipToUpscalePreview"}]
       20 SETTABLEKS                       R0 R2 K4 ["selection"]
       22 GETUPVAL                         R3 5
       23 CALL                             R3 0 1
       24 SETTABLEKS                       R3 R2 K5 ["generator"]
       26 SETTABLEKS                       R1 R2 K6 ["animator"]
       28 GETUPVAL                         R3 6
       29 DUPTABLE                         R4 K11 [{"sharedStates", "animator", "toAnimatorContext"}]
       30 GETUPVAL                         R5 4
       31 SETTABLEKS                       R5 R4 K9 ["sharedStates"]
       33 SETTABLEKS                       R1 R4 K6 ["animator"]
       35 GETUPVAL                         R5 7
       36 SETTABLEKS                       R5 R4 K10 ["toAnimatorContext"]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R2 K7 ["clipToUpscalePreview"]
       41 SETUPVAL                         R2 0
       42 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["selection"]
        2 GETTABLEKS                       R1 R1 K1 ["get"]
        4 CALL                             R1 0 1
        5 LENGTH                           R2 R1
        6 JUMPIFEQKN                       R2 K2 [1] ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETTABLEN                        R2 R1 1
       11 GETUPVAL                         R3 0
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 JUMPIF                           R3 ; [+2]
       15 LOADNIL                          R3
       16 RETURN                           R3 1
       17 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["selection"]
        2 GETTABLEKS                       R2 R2 K1 ["get"]
        4 CALL                             R2 0 1
        5 LENGTH                           R3 R2
        6 JUMPIFEQKN                       R3 K2 [1] ; [+3]
        8 LOADNIL                          R1
        9 JUMP                             ; [+8]
       10 GETTABLEN                        R3 R2 1
       11 GETUPVAL                         R4 0
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 JUMPIF                           R4 ; [+2]
       15 LOADNIL                          R1
       16 JUMP                             ; [+1]
       17 MOVE                             R1 R3
       18 JUMPIFNOTEQKNIL                  R1 ; [+3]
       20 LOADNIL                          R2
       21 RETURN                           R2 1
       22 GETTABLEKS                       R2 R0 K3 ["instances"]
       24 GETTABLEKS                       R2 R2 K4 ["getUniqueId"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 1
       28 DUPTABLE                         R3 K8 [{"uniqueId", "name", "className"}]
       29 SETTABLEKS                       R2 R3 K5 ["uniqueId"]
       31 GETTABLEKS                       R4 R1 K9 ["Name"]
       33 SETTABLEKS                       R4 R3 K6 ["name"]
       35 GETTABLEKS                       R4 R1 K10 ["ClassName"]
       37 SETTABLEKS                       R4 R3 K7 ["className"]
       39 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetTags"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantUseNewTags"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADK                            R2 K2 ["RBXAI%-Animation%-"]
       10 JUMP                             ; [+1]
       11 LOADK                            R2 K3 ["Assistant%-AnimationGenLink%-"]
       12 MOVE                             R3 R1
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETIMPORT                        R8 K6 [string.find]
       18 MOVE                             R9 R7
       19 MOVE                             R10 R2
       20 CALL                             R8 2 1
       21 JUMPIFNOT                        R8 ; [+1]
       22 RETURN                           R7 1
       23 FORGLOOP                         R3 2 ; [-8]
       25 LOADNIL                          R3
       26 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["NEUTRAL"]
        3 JUMPIFNOTEQ                      R1 R3 ; [+8]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["NEUTRAL"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+3]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R4 R0 K1 ["neutralSequence"]
       15 GETTABLEKS                       R5 R0 K2 ["reachTakes"]
       17 MOVE                             R6 R1
       18 MOVE                             R7 R2
       19 CALL                             R3 4 1
       20 JUMPIFNOTEQKNIL                  R3 ; [+5]
       22 GETIMPORT                        R4 K4 [warn]
       24 LOADK                            R5 K5 ["[AnimationGen] Reach takes could not be composed; falling back to the neutral clip"]
       25 CALL                             R4 1 0
       26 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["composedReachSequence"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETTABLEKS                       R1 R0 K0 ["composedReachSequence"]
        6 NAMECALL                         R1 R1 K1 ["Destroy"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["composedReachSequence"]
       12 GETTABLEKS                       R1 R0 K2 ["reachSource"]
       14 JUMPIFEQKNIL                     R1 ; [+42]
       16 GETTABLEKS                       R3 R0 K3 ["armsReach"]
       18 JUMPIF                           R3 ; [+3]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["NEUTRAL"]
       22 GETTABLEKS                       R4 R0 K5 ["legsReach"]
       24 JUMPIF                           R4 ; [+3]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K4 ["NEUTRAL"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K4 ["NEUTRAL"]
       31 JUMPIFNOTEQ                      R3 R5 ; [+8]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K4 ["NEUTRAL"]
       36 JUMPIFNOTEQ                      R4 R5 ; [+3]
       38 LOADNIL                          R2
       39 JUMP                             ; [+15]
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R6 R1 K6 ["neutralSequence"]
       43 GETTABLEKS                       R7 R1 K7 ["reachTakes"]
       45 MOVE                             R8 R3
       46 MOVE                             R9 R4
       47 CALL                             R5 4 1
       48 JUMPIFNOTEQKNIL                  R5 ; [+5]
       50 GETIMPORT                        R6 K9 [warn]
       52 LOADK                            R7 K10 ["[AnimationGen] Reach takes could not be composed; falling back to the neutral clip"]
       53 CALL                             R6 1 0
       54 MOVE                             R2 R5
       55 SETTABLEKS                       R2 R0 K0 ["composedReachSequence"]
       57 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["generationMode"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["GenerationModes"]
        6 GETTABLEKS                       R4 R4 K2 ["EditNew"]
        8 JUMPIFEQ                         R3 R4 ; [+12]
       10 GETTABLEKS                       R3 R0 K0 ["generationMode"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K1 ["GenerationModes"]
       15 GETTABLEKS                       R4 R4 K3 ["EditUpscale"]
       17 JUMPIFEQ                         R3 R4 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 JUMPIFNOT                        R2 ; [+45]
       22 GETTABLEKS                       R4 R0 K4 ["editSourceToolUseId"]
       24 JUMPIFEQKNIL                     R4 ; [+6]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R5 R0 K4 ["editSourceToolUseId"]
       29 GETTABLE                         R3 R4 R5
       30 JUMP                             ; [+1]
       31 LOADNIL                          R3
       32 JUMPIFNOTEQKNIL                  R3 ; [+20]
       34 GETTABLEKS                       R5 R1 K5 ["selection"]
       36 GETTABLEKS                       R5 R5 K6 ["get"]
       38 CALL                             R5 0 1
       39 LENGTH                           R6 R5
       40 JUMPIFEQKN                       R6 K7 [1] ; [+3]
       42 LOADNIL                          R4
       43 RETURN                           R4 1
       44 GETTABLEN                        R6 R5 1
       45 GETUPVAL                         R7 2
       46 MOVE                             R8 R6
       47 CALL                             R7 1 1
       48 JUMPIF                           R7 ; [+2]
       49 LOADNIL                          R4
       50 RETURN                           R4 1
       51 MOVE                             R4 R6
       52 RETURN                           R4 1
       53 GETTABLEKS                       R4 R3 K8 ["rig"]
       55 JUMPIFEQKNIL                     R4 ; [+9]
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R5 R3 K8 ["rig"]
       60 CALL                             R4 1 1
       61 JUMPIFNOT                        R4 ; [+3]
       62 GETTABLEKS                       R4 R3 K8 ["rig"]
       64 RETURN                           R4 1
       65 LOADNIL                          R4
       66 RETURN                           R4 1
       67 GETTABLEKS                       R3 R0 K9 ["rigUniqueId"]
       69 JUMPIFEQKNIL                     R3 ; [+15]
       71 GETTABLEKS                       R3 R1 K10 ["instances"]
       73 GETTABLEKS                       R3 R3 K11 ["getInstanceFromUniqueId"]
       75 GETTABLEKS                       R4 R0 K9 ["rigUniqueId"]
       77 CALL                             R3 1 1
       78 JUMPIFEQKNIL                     R3 ; [+6]
       80 GETUPVAL                         R4 2
       81 MOVE                             R5 R3
       82 CALL                             R4 1 1
       83 JUMPIFNOT                        R4 ; [+1]
       84 RETURN                           R3 1
       85 LOADNIL                          R3
       86 RETURN                           R3 1

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 JUMPIFEQKNIL                     R1 ; [+20]
        9 NAMECALL                         R2 R1 K1 ["GetDescendants"]
       11 CALL                             R2 1 3
       12 FORGPREP                         R2
       13 LOADK                            R9 K2 ["KeyframeSequence"]
       14 NAMECALL                         R7 R6 K3 ["IsA"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+8]
       18 GETTABLEKS                       R9 R6 K4 ["Name"]
       20 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       22 MOVE                             R8 R0
       23 GETIMPORT                        R7 K7 [table.insert]
       25 CALL                             R7 2 0
       26 FORGLOOP                         R2 2 ; [-14]
       28 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.InfoType.Asset]
        4 NAMECALL                         R0 R0 K4 ["GetProductInfoAsync"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R2 K2 ["Name"]
       11 JUMPIFNOTEQKS                    R3 K3 [""] ; [+3]
       13 LOADNIL                          R4
       14 RETURN                           R4 1
       15 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["editSourceToolUseId"]
        2 JUMPIFEQKNIL                     R2 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R3 R0 K0 ["editSourceToolUseId"]
        7 GETTABLE                         R1 R2 R3
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 JUMPIFEQKNIL                     R1 ; [+10]
       13 GETTABLEKS                       R3 R1 K1 ["keyframeSequence"]
       15 JUMPIFEQKNIL                     R3 ; [+6]
       17 GETTABLEKS                       R3 R1 K1 ["keyframeSequence"]
       19 GETTABLEKS                       R2 R3 K2 ["Name"]
       21 JUMP                             ; [+34]
       22 GETTABLEKS                       R3 R0 K3 ["inputAssetId"]
       24 JUMPIFEQKNIL                     R3 ; [+31]
       26 GETTABLEKS                       R3 R0 K3 ["inputAssetId"]
       28 LOADK                            R5 K4 ["%d+"]
       29 NAMECALL                         R3 R3 K5 ["match"]
       31 CALL                             R3 2 1
       32 JUMPIFEQKNIL                     R3 ; [+23]
       34 FASTCALL1                        TONUMBER R3 ; [+3]
       35 MOVE                             R6 R3
       36 GETIMPORT                        R5 K7 [tonumber]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [pcall]
       41 NEWCLOSURE                       R7 P0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R5
       44 CALL                             R6 1 2
       45 JUMPIF                           R6 ; [+2]
       46 LOADNIL                          R4
       47 JUMP                             ; [+7]
       48 GETTABLEKS                       R8 R7 K2 ["Name"]
       50 JUMPIFNOTEQKS                    R8 K10 [""] ; [+3]
       52 LOADNIL                          R4
       53 JUMP                             ; [+1]
       54 MOVE                             R4 R8
       55 OR                               R2 R4 R3
       56 JUMPIFNOTEQKNIL                  R2 ; [+8]
       58 GETUPVAL                         R3 2
       59 GETTABLEKS                       R3 R3 K11 ["computeBaseNameFromPrompt"]
       61 GETTABLEKS                       R4 R0 K12 ["prompt"]
       63 CALL                             R3 1 -1
       64 RETURN                           R3 -1
       65 GETUPVAL                         R3 2
       66 GETTABLEKS                       R3 R3 K13 ["computeNextVersionedName"]
       68 MOVE                             R4 R2
       69 GETUPVAL                         R5 3
       70 CALL                             R5 0 1
       71 CALL                             R3 2 -1
       72 RETURN                           R3 -1

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["toolUseId"]
        2 GETTABLEKS                       R6 R3 K1 ["keyframeSequence"]
        4 FASTCALL2K                       ASSERT R6 K2 ; [+4]
        6 LOADK                            R7 K2 ["Generated animation requires a clip"]
        7 GETIMPORT                        R5 K4 [assert]
        9 CALL                             R5 2 1
       10 GETUPVAL                         R6 0
       11 MOVE                             R7 R0
       12 MOVE                             R8 R1
       13 CALL                             R6 2 1
       14 LOADB                            R7 0
       15 GETTABLEKS                       R8 R1 K5 ["startRecording"]
       17 MOVE                             R9 R4
       18 CALL                             R8 1 0
       19 JUMPIFNOTEQKNIL                  R6 ; [+10]
       21 GETUPVAL                         R8 1
       22 GETIMPORT                        R9 K9 [Enum.HumanoidRigType.R15]
       24 CALL                             R8 1 1
       25 MOVE                             R6 R8
       26 JUMPIFNOTEQKNIL                  R6 ; [+2]
       28 LOADB                            R7 0 +1
       29 LOADB                            R7 1
       30 JUMPIFEQKNIL                     R6 ; [+10]
       32 GETUPVAL                         R8 2
       33 CALL                             R8 0 1
       34 GETTABLEKS                       R8 R8 K10 ["generator"]
       36 GETTABLEKS                       R8 R8 K11 ["saveKeyframeSequence"]
       38 MOVE                             R9 R5
       39 MOVE                             R10 R6
       40 CALL                             R8 2 0
       41 GETTABLEKS                       R8 R1 K12 ["endRecording"]
       43 MOVE                             R9 R4
       44 CALL                             R8 1 0
       45 JUMPIFNOTEQKNIL                  R6 ; [+3]
       47 LOADB                            R8 0
       48 RETURN                           R8 1
       49 SETTABLEKS                       R6 R3 K13 ["rig"]
       51 GETUPVAL                         R8 3
       52 SETTABLE                         R3 R8 R4
       53 GETUPVAL                         R8 2
       54 CALL                             R8 0 1
       55 GETTABLEKS                       R8 R8 K14 ["animator"]
       57 GETTABLEKS                       R8 R8 K15 ["setAnimation"]
       59 GETUPVAL                         R9 4
       60 MOVE                             R10 R4
       61 MOVE                             R11 R1
       62 MOVE                             R12 R2
       63 CALL                             R9 3 1
       64 CALL                             R8 1 0
       65 JUMPIFNOT                        R7 ; [+10]
       66 GETTABLEKS                       R8 R1 K16 ["selection"]
       68 GETTABLEKS                       R8 R8 K17 ["set"]
       70 NEWTABLE                         R9 0 1
       72 MOVE                             R10 R6
       73 SETLIST                          R9 R10 1 [1]
       75 CALL                             R8 1 0
       76 LOADB                            R8 1
       77 RETURN                           R8 1

PROTO_16:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["snap"]
        3 GETTABLEKS                       R6 R4 K1 ["reachTakes"]
        5 GETTABLEKS                       R7 R0 K2 ["armsReach"]
        7 JUMPIF                           R7 ; [+6]
        8 GETTABLEKS                       R7 R3 K2 ["armsReach"]
       10 JUMPIF                           R7 ; [+3]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K3 ["NEUTRAL"]
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["snap"]
       18 GETTABLEKS                       R7 R4 K1 ["reachTakes"]
       20 GETTABLEKS                       R8 R0 K4 ["legsReach"]
       22 JUMPIF                           R8 ; [+6]
       23 GETTABLEKS                       R8 R3 K4 ["legsReach"]
       25 JUMPIF                           R8 ; [+3]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K3 ["NEUTRAL"]
       29 CALL                             R6 2 1
       30 GETTABLEKS                       R7 R3 K5 ["r6Blend"]
       32 JUMPIFEQKNIL                     R7 ; [+15]
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K6 ["withSettings"]
       37 MOVE                             R9 R7
       38 GETUPVAL                         R10 2
       39 GETTABLEKS                       R10 R10 K7 ["resolve"]
       41 GETTABLEKS                       R11 R0 K8 ["blend"]
       43 GETTABLEKS                       R12 R7 K9 ["settings"]
       45 CALL                             R10 2 -1
       46 CALL                             R8 -1 1
       47 MOVE                             R7 R8
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K3 ["NEUTRAL"]
       51 JUMPIFNOTEQ                      R5 R9 ; [+8]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K3 ["NEUTRAL"]
       56 JUMPIFNOTEQ                      R6 R9 ; [+3]
       58 LOADNIL                          R8
       59 JUMP                             ; [+15]
       60 GETUPVAL                         R9 3
       61 GETTABLEKS                       R10 R4 K10 ["neutralSequence"]
       63 GETTABLEKS                       R11 R4 K1 ["reachTakes"]
       65 MOVE                             R12 R5
       66 MOVE                             R13 R6
       67 CALL                             R9 4 1
       68 JUMPIFNOTEQKNIL                  R9 ; [+5]
       70 GETIMPORT                        R10 K12 [warn]
       72 LOADK                            R11 K13 ["[AnimationGen] Reach takes could not be composed; falling back to the neutral clip"]
       73 CALL                             R10 1 0
       74 MOVE                             R8 R9
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R9 R9 K14 ["bake"]
       78 MOVE                             R10 R8
       79 JUMPIF                           R10 ; [+2]
       80 GETTABLEKS                       R10 R4 K10 ["neutralSequence"]
       82 MOVE                             R11 R7
       83 CALL                             R9 2 1
       84 JUMPIFEQKNIL                     R8 ; [+4]
       86 NAMECALL                         R10 R8 K15 ["Destroy"]
       88 CALL                             R10 1 0
       89 GETUPVAL                         R10 4
       90 MOVE                             R11 R0
       91 CALL                             R10 1 1
       92 SETTABLEKS                       R10 R9 K16 ["Name"]
       94 GETUPVAL                         R10 5
       95 LOADB                            R12 0
       96 NAMECALL                         R10 R10 K17 ["GenerateGUID"]
       98 CALL                             R10 2 1
       99 GETUPVAL                         R11 6
      100 MOVE                             R12 R9
      101 CALL                             R11 1 1
      102 JUMPIFEQKNIL                     R11 ; [+5]
      104 MOVE                             R14 R11
      105 NAMECALL                         R12 R9 K18 ["RemoveTag"]
      107 CALL                             R12 2 0
      108 GETUPVAL                         R14 7
      109 GETTABLEKS                       R14 R14 K19 ["getLinkTag"]
      111 MOVE                             R15 R10
      112 CALL                             R14 1 -1
      113 NAMECALL                         R12 R9 K20 ["AddTag"]
      115 CALL                             R12 -1 0
      116 GETUPVAL                         R12 8
      117 MOVE                             R13 R0
      118 MOVE                             R14 R1
      119 MOVE                             R15 R2
      120 DUPTABLE                         R16 K25 [{["keyframeSequence"], ["needsReload"] = True, ["reachSource"], ["armsReach"], ["legsReach"], ["r6Blend"]}]
      121 SETTABLEKS                       R9 R16 K21 ["keyframeSequence"]
      123 SETTABLEKS                       R4 R16 K24 ["reachSource"]
      125 SETTABLEKS                       R5 R16 K2 ["armsReach"]
      127 SETTABLEKS                       R6 R16 K4 ["legsReach"]
      129 SETTABLEKS                       R7 R16 K5 ["r6Blend"]
      131 CALL                             R12 4 1
      132 JUMPIF                           R12 ; [+12]
      133 NAMECALL                         R13 R9 K15 ["Destroy"]
      135 CALL                             R13 1 0
      136 DUPTABLE                         R13 K31 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      137 GETUPVAL                         R14 7
      138 GETTABLEKS                       R14 R14 K32 ["FailureReasons"]
      140 GETTABLEKS                       R14 R14 K33 ["RigInsertFailed"]
      142 SETTABLEKS                       R14 R13 K30 ["failureReason"]
      144 RETURN                           R13 1
      145 DUPTABLE                         R13 K36 [{"duration", "name", "generationId", "contextId", "armsReach", "legsReach", "blend"}]
      146 GETTABLEKS                       R14 R9 K37 ["Length"]
      148 SETTABLEKS                       R14 R13 K26 ["duration"]
      150 GETTABLEKS                       R14 R9 K16 ["Name"]
      152 SETTABLEKS                       R14 R13 K28 ["name"]
      154 SETTABLEKS                       R10 R13 K34 ["generationId"]
      156 GETTABLEKS                       R14 R0 K38 ["priorJobId"]
      158 SETTABLEKS                       R14 R13 K35 ["contextId"]
      160 SETTABLEKS                       R5 R13 K2 ["armsReach"]
      162 SETTABLEKS                       R6 R13 K4 ["legsReach"]
      164 JUMPIFEQKNIL                     R7 ; [+4]
      166 GETTABLEKS                       R14 R7 K9 ["settings"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R14
      170 SETTABLEKS                       R14 R13 K8 ["blend"]
      172 RETURN                           R13 1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
        2 GETTABLEKS                       R4 R0 K1 ["generationMode"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["GenerationModes"]
        7 GETTABLEKS                       R5 R5 K3 ["EditUpscale"]
        9 JUMPIFNOTEQ                      R4 R5 ; [+29]
       11 GETTABLEKS                       R5 R0 K4 ["editSourceToolUseId"]
       13 JUMPIFEQKNIL                     R5 ; [+6]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R6 R0 K4 ["editSourceToolUseId"]
       18 GETTABLE                         R4 R5 R6
       19 JUMP                             ; [+1]
       20 LOADNIL                          R4
       21 JUMPIFEQKNIL                     R4 ; [+4]
       23 GETTABLEKS                       R5 R4 K5 ["reachSource"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R5
       27 JUMPIFEQKNIL                     R4 ; [+11]
       29 JUMPIFEQKNIL                     R5 ; [+9]
       31 GETUPVAL                         R6 2
       32 MOVE                             R7 R0
       33 MOVE                             R8 R1
       34 MOVE                             R9 R2
       35 MOVE                             R10 R4
       36 MOVE                             R11 R5
       37 CALL                             R6 5 1
       38 RETURN                           R6 1
       39 GETUPVAL                         R4 3
       40 CALL                             R4 0 1
       41 GETTABLEKS                       R4 R4 K6 ["generator"]
       43 GETTABLEKS                       R4 R4 K7 ["generateAnimationAsync"]
       45 DUPTABLE                         R5 K14 [{"prompt", "generationMode", "duration", "inputAssetId", "outputFileName", "priorJobId", "id"}]
       46 GETTABLEKS                       R6 R0 K8 ["prompt"]
       48 SETTABLEKS                       R6 R5 K8 ["prompt"]
       50 GETTABLEKS                       R6 R0 K1 ["generationMode"]
       52 SETTABLEKS                       R6 R5 K1 ["generationMode"]
       54 GETTABLEKS                       R6 R0 K9 ["duration"]
       56 SETTABLEKS                       R6 R5 K9 ["duration"]
       58 GETTABLEKS                       R6 R0 K10 ["inputAssetId"]
       60 SETTABLEKS                       R6 R5 K10 ["inputAssetId"]
       62 GETUPVAL                         R6 4
       63 MOVE                             R7 R0
       64 CALL                             R6 1 1
       65 SETTABLEKS                       R6 R5 K11 ["outputFileName"]
       67 GETTABLEKS                       R6 R0 K12 ["priorJobId"]
       69 SETTABLEKS                       R6 R5 K12 ["priorJobId"]
       71 SETTABLEKS                       R3 R5 K13 ["id"]
       73 MOVE                             R6 R1
       74 CALL                             R4 2 1
       75 GETTABLEKS                       R5 R4 K15 ["keyframeSequence"]
       77 GETTABLEKS                       R6 R4 K16 ["success"]
       79 JUMPIFNOT                        R6 ; [+2]
       80 JUMPIFNOTEQKNIL                  R5 ; [+13]
       82 DUPTABLE                         R6 K21 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
       83 GETTABLEKS                       R7 R4 K20 ["failureReason"]
       85 JUMPIF                           R7 ; [+5]
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R7 R7 K22 ["FailureReasons"]
       89 GETTABLEKS                       R7 R7 K23 ["GenerationFailed"]
       91 SETTABLEKS                       R7 R6 K20 ["failureReason"]
       93 RETURN                           R6 1
       94 GETTABLEKS                       R6 R4 K24 ["reachTakes"]
       96 GETTABLEKS                       R8 R0 K1 ["generationMode"]
       98 GETUPVAL                         R9 0
       99 GETTABLEKS                       R9 R9 K2 ["GenerationModes"]
      101 GETTABLEKS                       R9 R9 K3 ["EditUpscale"]
      103 JUMPIFEQ                         R8 R9 ; [+2]
      105 LOADB                            R7 0 +1
      106 LOADB                            R7 1
      107 JUMPIFNOT                        R7 ; [+9]
      108 GETTABLEKS                       R9 R0 K4 ["editSourceToolUseId"]
      110 JUMPIFEQKNIL                     R9 ; [+6]
      112 GETUPVAL                         R9 1
      113 GETTABLEKS                       R10 R0 K4 ["editSourceToolUseId"]
      115 GETTABLE                         R8 R9 R10
      116 JUMP                             ; [+1]
      117 LOADNIL                          R8
      118 GETTABLEKS                       R9 R4 K25 ["r6Sequence"]
      120 JUMPIFEQKNIL                     R9 ; [+8]
      122 GETUPVAL                         R10 5
      123 GETTABLEKS                       R10 R10 K26 ["new"]
      125 MOVE                             R11 R9
      126 MOVE                             R12 R5
      127 CALL                             R10 2 1
      128 JUMP                             ; [+9]
      129 GETUPVAL                         R10 5
      130 GETTABLEKS                       R10 R10 K27 ["withAiGeneratedClip"]
      132 MOVE                             R11 R8
      133 JUMPIFNOT                        R11 ; [+2]
      134 GETTABLEKS                       R11 R8 K28 ["r6Blend"]
      136 MOVE                             R12 R5
      137 CALL                             R10 2 1
      138 JUMPIFNOT                        R7 ; [+16]
      139 JUMPIFEQKNIL                     R10 ; [+15]
      141 GETUPVAL                         R11 5
      142 GETTABLEKS                       R11 R11 K29 ["withSettings"]
      144 MOVE                             R12 R10
      145 GETUPVAL                         R13 6
      146 GETTABLEKS                       R13 R13 K30 ["resolve"]
      148 GETTABLEKS                       R14 R0 K31 ["blend"]
      150 GETTABLEKS                       R15 R10 K32 ["settings"]
      152 CALL                             R13 2 -1
      153 CALL                             R11 -1 1
      154 MOVE                             R10 R11
      155 JUMPIFNOT                        R7 ; [+9]
      156 JUMPIFEQKNIL                     R10 ; [+8]
      158 GETUPVAL                         R11 5
      159 GETTABLEKS                       R11 R11 K33 ["bake"]
      161 MOVE                             R12 R5
      162 MOVE                             R13 R10
      163 CALL                             R11 2 1
      164 JUMP                             ; [+1]
      165 MOVE                             R11 R5
      166 GETUPVAL                         R12 7
      167 MOVE                             R13 R0
      168 MOVE                             R14 R1
      169 MOVE                             R15 R2
      170 DUPTABLE                         R16 K36 [{["keyframeSequence"], ["needsReload"] = True, ["reachSource"], ["r6Blend"]}]
      171 SETTABLEKS                       R11 R16 K15 ["keyframeSequence"]
      173 JUMPIFEQKNIL                     R6 ; [+7]
      175 DUPTABLE                         R17 K38 [{"neutralSequence", "reachTakes"}]
      176 SETTABLEKS                       R5 R17 K37 ["neutralSequence"]
      178 SETTABLEKS                       R6 R17 K24 ["reachTakes"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R17
      182 SETTABLEKS                       R17 R16 K5 ["reachSource"]
      184 SETTABLEKS                       R10 R16 K28 ["r6Blend"]
      186 CALL                             R12 4 1
      187 JUMPIF                           R12 ; [+9]
      188 DUPTABLE                         R13 K21 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      189 GETUPVAL                         R14 0
      190 GETTABLEKS                       R14 R14 K22 ["FailureReasons"]
      192 GETTABLEKS                       R14 R14 K39 ["RigInsertFailed"]
      194 SETTABLEKS                       R14 R13 K20 ["failureReason"]
      196 RETURN                           R13 1
      197 DUPTABLE                         R13 K42 [{"duration", "name", "generationId", "contextId", "blend"}]
      198 GETTABLEKS                       R14 R11 K43 ["Length"]
      200 SETTABLEKS                       R14 R13 K9 ["duration"]
      202 GETTABLEKS                       R14 R11 K44 ["Name"]
      204 SETTABLEKS                       R14 R13 K18 ["name"]
      206 GETTABLEKS                       R14 R4 K40 ["generationId"]
      208 SETTABLEKS                       R14 R13 K40 ["generationId"]
      210 GETTABLEKS                       R14 R4 K41 ["contextId"]
      212 SETTABLEKS                       R14 R13 K41 ["contextId"]
      214 JUMPIFNOT                        R7 ; [+5]
      215 JUMPIFEQKNIL                     R10 ; [+4]
      217 GETTABLEKS                       R14 R10 K32 ["settings"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R14
      221 SETTABLEKS                       R14 R13 K31 ["blend"]
      223 RETURN                           R13 1

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["toolUseId"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R3 R3 K1 ["animator"]
       11 GETTABLEKS                       R3 R3 K2 ["setIsPlaying"]
       13 GETTABLEKS                       R4 R0 K3 ["isPlaying"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R6 R0 K0 ["toolUseId"]
       18 MOVE                             R7 R1
       19 MOVE                             R8 R2
       20 CALL                             R5 3 1
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["toolUseId"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R3 R3 K1 ["animator"]
       11 GETTABLEKS                       R3 R3 K2 ["setCurrentTime"]
       13 GETTABLEKS                       R4 R0 K3 ["currentTime"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R6 R0 K0 ["toolUseId"]
       18 MOVE                             R7 R1
       19 MOVE                             R8 R2
       20 CALL                             R5 3 1
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["sourceToolUseId"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R6 R0 K1 ["editToolUseId"]
       10 GETTABLE                         R4 R5 R6
       11 JUMPIFEQKNIL                     R4 ; [+10]
       13 GETTABLEKS                       R5 R4 K2 ["composedReachSequence"]
       15 JUMPIFEQKNIL                     R5 ; [+6]
       17 GETTABLEKS                       R5 R4 K2 ["composedReachSequence"]
       19 NAMECALL                         R5 R5 K3 ["Destroy"]
       21 CALL                             R5 1 0
       22 GETTABLEKS                       R5 R3 K4 ["reachSource"]
       24 GETTABLEKS                       R6 R3 K5 ["r6Blend"]
       26 DUPTABLE                         R7 K13 [{["rig"], ["keyframeSequence"], ["needsReload"] = True, ["reachSource"], ["armsReach"], ["legsReach"], ["r6Blend"], ["playsLiveR6Blend"] = True}]
       27 GETTABLEKS                       R8 R3 K6 ["rig"]
       29 SETTABLEKS                       R8 R7 K6 ["rig"]
       31 JUMPIFEQKNIL                     R5 ; [+4]
       33 GETTABLEKS                       R8 R5 K14 ["neutralSequence"]
       35 JUMP                             ; [+9]
       36 JUMPIFEQKNIL                     R6 ; [+6]
       38 GETTABLEKS                       R8 R6 K15 ["clips"]
       40 GETTABLEKS                       R8 R8 K16 ["aiGeneratedClip"]
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R8 R3 K7 ["keyframeSequence"]
       45 SETTABLEKS                       R8 R7 K7 ["keyframeSequence"]
       47 SETTABLEKS                       R5 R7 K4 ["reachSource"]
       49 GETTABLEKS                       R8 R3 K10 ["armsReach"]
       51 SETTABLEKS                       R8 R7 K10 ["armsReach"]
       53 GETTABLEKS                       R8 R3 K11 ["legsReach"]
       55 SETTABLEKS                       R8 R7 K11 ["legsReach"]
       57 SETTABLEKS                       R6 R7 K5 ["r6Blend"]
       59 GETTABLEKS                       R8 R7 K2 ["composedReachSequence"]
       61 JUMPIFEQKNIL                     R8 ; [+9]
       63 GETTABLEKS                       R8 R7 K2 ["composedReachSequence"]
       65 NAMECALL                         R8 R8 K3 ["Destroy"]
       67 CALL                             R8 1 0
       68 LOADNIL                          R8
       69 SETTABLEKS                       R8 R7 K2 ["composedReachSequence"]
       71 GETTABLEKS                       R8 R7 K4 ["reachSource"]
       73 JUMPIFEQKNIL                     R8 ; [+42]
       75 GETTABLEKS                       R10 R7 K10 ["armsReach"]
       77 JUMPIF                           R10 ; [+3]
       78 GETUPVAL                         R10 1
       79 GETTABLEKS                       R10 R10 K17 ["NEUTRAL"]
       81 GETTABLEKS                       R11 R7 K11 ["legsReach"]
       83 JUMPIF                           R11 ; [+3]
       84 GETUPVAL                         R11 1
       85 GETTABLEKS                       R11 R11 K17 ["NEUTRAL"]
       87 GETUPVAL                         R12 1
       88 GETTABLEKS                       R12 R12 K17 ["NEUTRAL"]
       90 JUMPIFNOTEQ                      R10 R12 ; [+8]
       92 GETUPVAL                         R12 1
       93 GETTABLEKS                       R12 R12 K17 ["NEUTRAL"]
       95 JUMPIFNOTEQ                      R11 R12 ; [+3]
       97 LOADNIL                          R9
       98 JUMP                             ; [+15]
       99 GETUPVAL                         R12 2
      100 GETTABLEKS                       R13 R8 K14 ["neutralSequence"]
      102 GETTABLEKS                       R14 R8 K18 ["reachTakes"]
      104 MOVE                             R15 R10
      105 MOVE                             R16 R11
      106 CALL                             R12 4 1
      107 JUMPIFNOTEQKNIL                  R12 ; [+5]
      109 GETIMPORT                        R13 K20 [warn]
      111 LOADK                            R14 K21 ["[AnimationGen] Reach takes could not be composed; falling back to the neutral clip"]
      112 CALL                             R13 1 0
      113 MOVE                             R9 R12
      114 SETTABLEKS                       R9 R7 K2 ["composedReachSequence"]
      116 GETUPVAL                         R8 0
      117 GETTABLEKS                       R9 R0 K1 ["editToolUseId"]
      119 SETTABLE                         R7 R8 R9
      120 GETUPVAL                         R8 3
      121 CALL                             R8 0 1
      122 GETTABLEKS                       R8 R8 K22 ["animator"]
      124 GETTABLEKS                       R8 R8 K23 ["setAnimation"]
      126 GETUPVAL                         R9 4
      127 GETTABLEKS                       R10 R0 K1 ["editToolUseId"]
      129 MOVE                             R11 R1
      130 MOVE                             R12 R2
      131 CALL                             R9 3 1
      132 CALL                             R8 1 0
      133 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["toolUseId"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEKS                       R4 R3 K1 ["reachSource"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R4
       10 JUMPIFEQKNIL                     R3 ; [+3]
       12 JUMPIFNOTEQKNIL                  R4 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K2 ["snap"]
       18 GETTABLEKS                       R6 R4 K3 ["reachTakes"]
       20 GETTABLEKS                       R7 R0 K4 ["armsReach"]
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K2 ["snap"]
       26 GETTABLEKS                       R7 R4 K3 ["reachTakes"]
       28 GETTABLEKS                       R8 R0 K5 ["legsReach"]
       30 CALL                             R6 2 1
       31 GETTABLEKS                       R7 R3 K4 ["armsReach"]
       33 JUMPIF                           R7 ; [+3]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K6 ["NEUTRAL"]
       37 JUMPIFNOTEQ                      R5 R7 ; [+10]
       39 GETTABLEKS                       R7 R3 K5 ["legsReach"]
       41 JUMPIF                           R7 ; [+3]
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K6 ["NEUTRAL"]
       45 JUMPIFNOTEQ                      R6 R7 ; [+2]
       47 RETURN                           R0 0
       48 SETTABLEKS                       R5 R3 K4 ["armsReach"]
       50 SETTABLEKS                       R6 R3 K5 ["legsReach"]
       52 GETTABLEKS                       R7 R3 K7 ["composedReachSequence"]
       54 JUMPIFEQKNIL                     R7 ; [+9]
       56 GETTABLEKS                       R7 R3 K7 ["composedReachSequence"]
       58 NAMECALL                         R7 R7 K8 ["Destroy"]
       60 CALL                             R7 1 0
       61 LOADNIL                          R7
       62 SETTABLEKS                       R7 R3 K7 ["composedReachSequence"]
       64 GETTABLEKS                       R7 R3 K1 ["reachSource"]
       66 JUMPIFEQKNIL                     R7 ; [+42]
       68 GETTABLEKS                       R9 R3 K4 ["armsReach"]
       70 JUMPIF                           R9 ; [+3]
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K6 ["NEUTRAL"]
       74 GETTABLEKS                       R10 R3 K5 ["legsReach"]
       76 JUMPIF                           R10 ; [+3]
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R10 R10 K6 ["NEUTRAL"]
       80 GETUPVAL                         R11 1
       81 GETTABLEKS                       R11 R11 K6 ["NEUTRAL"]
       83 JUMPIFNOTEQ                      R9 R11 ; [+8]
       85 GETUPVAL                         R11 1
       86 GETTABLEKS                       R11 R11 K6 ["NEUTRAL"]
       88 JUMPIFNOTEQ                      R10 R11 ; [+3]
       90 LOADNIL                          R8
       91 JUMP                             ; [+15]
       92 GETUPVAL                         R11 2
       93 GETTABLEKS                       R12 R7 K9 ["neutralSequence"]
       95 GETTABLEKS                       R13 R7 K3 ["reachTakes"]
       97 MOVE                             R14 R9
       98 MOVE                             R15 R10
       99 CALL                             R11 4 1
      100 JUMPIFNOTEQKNIL                  R11 ; [+5]
      102 GETIMPORT                        R12 K11 [warn]
      104 LOADK                            R13 K12 ["[AnimationGen] Reach takes could not be composed; falling back to the neutral clip"]
      105 CALL                             R12 1 0
      106 MOVE                             R8 R11
      107 SETTABLEKS                       R8 R3 K7 ["composedReachSequence"]
      109 GETUPVAL                         R7 3
      110 CALL                             R7 0 1
      111 GETTABLEKS                       R7 R7 K13 ["animator"]
      113 GETTABLEKS                       R7 R7 K14 ["swapPlayingSequence"]
      115 GETUPVAL                         R8 4
      116 GETTABLEKS                       R9 R0 K0 ["toolUseId"]
      118 MOVE                             R10 R1
      119 MOVE                             R11 R2
      120 CALL                             R8 3 1
      121 CALL                             R7 1 0
      122 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["toolUseId"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEKS                       R4 R3 K1 ["r6Blend"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R4
       10 JUMPIFEQKNIL                     R3 ; [+3]
       12 JUMPIFNOTEQKNIL                  R4 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K2 ["resolve"]
       18 GETTABLEKS                       R6 R0 K3 ["blend"]
       20 GETTABLEKS                       R7 R4 K4 ["settings"]
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K5 ["equals"]
       26 MOVE                             R7 R5
       27 GETTABLEKS                       R8 R4 K4 ["settings"]
       29 CALL                             R6 2 1
       30 JUMPIFNOT                        R6 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K6 ["withSettings"]
       35 MOVE                             R7 R4
       36 MOVE                             R8 R5
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R3 K1 ["r6Blend"]
       40 GETUPVAL                         R6 3
       41 CALL                             R6 0 1
       42 GETTABLEKS                       R6 R6 K7 ["animator"]
       44 GETTABLEKS                       R6 R6 K8 ["refreshR6BlendWeights"]
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R8 R0 K0 ["toolUseId"]
       49 MOVE                             R9 R1
       50 MOVE                             R10 R2
       51 CALL                             R7 3 1
       52 CALL                             R6 1 0
       53 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+12]
        7 GETIMPORT                        R2 K3 [Instance.new]
        9 LOADK                            R3 K4 ["Model"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K5 ["Name"]
       14 GETUPVAL                         R3 0
       15 SETTABLEKS                       R3 R2 K6 ["Parent"]
       17 MOVE                             R1 R2
       18 LOADNIL                          R2
       19 GETUPVAL                         R5 2
       20 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+7]
       24 LOADK                            R6 K7 ["ObjectValue"]
       25 NAMECALL                         R4 R3 K8 ["IsA"]
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+2]
       29 MOVE                             R2 R3
       30 JUMP                             ; [+23]
       31 GETIMPORT                        R4 K3 [Instance.new]
       33 LOADK                            R5 K7 ["ObjectValue"]
       34 CALL                             R4 1 1
       35 GETUPVAL                         R5 2
       36 SETTABLEKS                       R5 R4 K5 ["Name"]
       38 SETTABLEKS                       R0 R4 K6 ["Parent"]
       40 JUMPIFEQKNIL                     R3 ; [+12]
       42 NAMECALL                         R5 R3 K9 ["GetChildren"]
       44 CALL                             R5 1 3
       45 FORGPREP                         R5
       46 SETTABLEKS                       R4 R9 K6 ["Parent"]
       48 FORGLOOP                         R5 2 ; [-3]
       50 NAMECALL                         R5 R3 K10 ["Destroy"]
       52 CALL                             R5 1 0
       53 MOVE                             R2 R4
       54 GETTABLEKS                       R4 R2 K11 ["Value"]
       56 JUMPIFNOT                        R4 ; [+9]
       57 LOADK                            R7 K7 ["ObjectValue"]
       58 NAMECALL                         R5 R4 K8 ["IsA"]
       60 CALL                             R5 2 1
       61 JUMPIFNOT                        R5 ; [+4]
       62 GETTABLEKS                       R5 R4 K11 ["Value"]
       64 JUMPIFEQ                         R5 R0 ; [+16]
       66 GETIMPORT                        R5 K3 [Instance.new]
       68 LOADK                            R6 K7 ["ObjectValue"]
       69 CALL                             R5 1 1
       70 GETTABLEKS                       R6 R0 K5 ["Name"]
       72 SETTABLEKS                       R6 R5 K5 ["Name"]
       74 SETTABLEKS                       R1 R5 K6 ["Parent"]
       76 SETTABLEKS                       R0 R5 K11 ["Value"]
       78 MOVE                             R4 R5
       79 SETTABLEKS                       R4 R2 K11 ["Value"]
       81 RETURN                           R4 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 LOADB                            R4 0
        4 NAMECALL                         R5 R3 K0 ["GetChildren"]
        6 CALL                             R5 1 3
        7 FORGPREP                         R5
        8 LOADK                            R12 K1 ["KeyframeSequence"]
        9 NAMECALL                         R10 R9 K2 ["IsA"]
       11 CALL                             R10 2 1
       12 JUMPIFNOT                        R10 ; [+9]
       13 GETUPVAL                         R10 1
       14 MOVE                             R12 R9
       15 MOVE                             R13 R2
       16 NAMECALL                         R10 R10 K3 ["HasTag"]
       18 CALL                             R10 3 1
       19 JUMPIFNOT                        R10 ; [+2]
       20 LOADB                            R4 1
       21 JUMP                             ; [+2]
       22 FORGLOOP                         R5 2 ; [-15]
       24 JUMPIF                           R4 ; [+5]
       25 NAMECALL                         R5 R0 K4 ["Clone"]
       27 CALL                             R5 1 1
       28 SETTABLEKS                       R3 R5 K5 ["Parent"]
       30 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["OpenAnimationInClipEditor"]
        7 GETUPVAL                         R3 2
        8 NAMECALL                         R0 R0 K1 ["Fire"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AnimationClipEditorReady"]
        2 NAMECALL                         R1 R1 K1 ["GetItem"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_27:
        0 JUMPIFEQKS                       R0 K0 ["true"] ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 JUMPIFEQKNIL                     R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 SETUPVAL                         R1 0
       12 GETUPVAL                         R1 1
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R0 0
       15 LOADB                            R1 1
       16 SETUPVAL                         R1 1
       17 GETUPVAL                         R1 2
       18 LOADK                            R3 K2 ["OpenAnimationInClipEditor"]
       19 GETUPVAL                         R4 3
       20 NAMECALL                         R1 R1 K3 ["Fire"]
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAnimationGenOpenACE"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFEQKNIL                     R2 ; [+5]
       11 GETTABLEKS                       R3 R2 K2 ["keyframeSequence"]
       13 JUMPIFNOTEQKNIL                  R3 ; [+6]
       15 GETIMPORT                        R3 K4 [warn]
       17 LOADK                            R4 K5 ["[AnimationGen] Open in Clip Editor: no generated animation for this content."]
       18 CALL                             R3 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R3 R2 K6 ["rig"]
       22 JUMPIFEQKNIL                     R3 ; [+10]
       24 LOADK                            R6 K7 ["Model"]
       25 NAMECALL                         R4 R3 K8 ["IsA"]
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+4]
       29 GETTABLEKS                       R4 R3 K9 ["Parent"]
       31 JUMPIFNOTEQKNIL                  R4 ; [+6]
       33 GETIMPORT                        R4 K4 [warn]
       35 LOADK                            R5 K10 ["[AnimationGen] Open in Clip Editor: rig is missing or no longer in the scene."]
       36 CALL                             R4 1 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R4 R2 K2 ["keyframeSequence"]
       40 GETUPVAL                         R5 2
       41 MOVE                             R6 R4
       42 CALL                             R5 1 1
       43 JUMPIFNOTEQKNIL                  R5 ; [+6]
       45 GETIMPORT                        R6 K4 [warn]
       47 LOADK                            R7 K11 ["[AnimationGen] Open in Clip Editor: generated animation has no link tag."]
       48 CALL                             R6 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R6 3
       51 MOVE                             R7 R4
       52 MOVE                             R8 R3
       53 MOVE                             R9 R5
       54 CALL                             R6 3 0
       55 GETUPVAL                         R6 4
       56 DUPTABLE                         R8 K14 [{"animationTag", "rigUniqueId"}]
       57 SETTABLEKS                       R5 R8 K12 ["animationTag"]
       59 GETTABLEKS                       R10 R1 K15 ["instances"]
       61 GETTABLEKS                       R10 R10 K16 ["getUniqueId"]
       63 MOVE                             R11 R3
       64 CALL                             R10 1 -1
       65 FASTCALL                         TOSTRING ; [+2]
       66 GETIMPORT                        R9 K18 [tostring]
       68 CALL                             R9 -1 1
       69 SETTABLEKS                       R9 R8 K13 ["rigUniqueId"]
       71 NAMECALL                         R6 R6 K19 ["JSONEncode"]
       73 CALL                             R6 2 1
       74 LOADB                            R7 0
       75 NEWCLOSURE                       R8 P0
       76 CAPTURE                          REF R7
       77 CAPTURE                          UPVAL U5
       78 CAPTURE                          VAL R6
       79 DUPCLOSURE                       R9 K20 [PROTO_26]
       80 CAPTURE                          UPVAL U5
       81 GETUPVAL                         R11 5
       82 LOADK                            R13 K21 ["AnimationClipEditorReady"]
       83 NAMECALL                         R11 R11 K22 ["GetItem"]
       85 CALL                             R11 2 1
       86 JUMPIFEQKS                       R11 K23 ["true"] ; [+2]
       88 LOADB                            R10 0 +1
       89 LOADB                            R10 1
       90 JUMPIFNOT                        R10 ; [+10]
       91 JUMPIFNOT                        R7 ; [+1]
       92 JUMP                             ; [+56]
       93 LOADB                            R7 1
       94 GETUPVAL                         R10 5
       95 LOADK                            R12 K24 ["OpenAnimationInClipEditor"]
       96 MOVE                             R13 R6
       97 NAMECALL                         R10 R10 K25 ["Fire"]
       99 CALL                             R10 3 0
      100 JUMP                             ; [+48]
      101 GETUPVAL                         R10 6
      102 JUMPIFEQKNIL                     R10 ; [+7]
      104 GETUPVAL                         R10 6
      105 NAMECALL                         R10 R10 K26 ["Disconnect"]
      107 CALL                             R10 1 0
      108 LOADNIL                          R10
      109 SETUPVAL                         R10 6
      110 GETUPVAL                         R10 5
      111 LOADK                            R12 K21 ["AnimationClipEditorReady"]
      112 NEWCLOSURE                       R13 P2
      113 CAPTURE                          UPVAL U6
      114 CAPTURE                          REF R7
      115 CAPTURE                          UPVAL U5
      116 CAPTURE                          VAL R6
      117 NAMECALL                         R10 R10 K27 ["Bind"]
      119 CALL                             R10 3 1
      120 SETUPVAL                         R10 6
      121 GETUPVAL                         R11 5
      122 LOADK                            R13 K21 ["AnimationClipEditorReady"]
      123 NAMECALL                         R11 R11 K22 ["GetItem"]
      125 CALL                             R11 2 1
      126 JUMPIFEQKS                       R11 K23 ["true"] ; [+2]
      128 LOADB                            R10 0 +1
      129 LOADB                            R10 1
      130 JUMPIFNOT                        R10 ; [+18]
      131 GETUPVAL                         R10 6
      132 JUMPIFEQKNIL                     R10 ; [+16]
      134 GETUPVAL                         R10 6
      135 NAMECALL                         R10 R10 K26 ["Disconnect"]
      137 CALL                             R10 1 0
      138 LOADNIL                          R10
      139 SETUPVAL                         R10 6
      140 JUMPIFNOT                        R7 ; [+1]
      141 JUMP                             ; [+7]
      142 LOADB                            R7 1
      143 GETUPVAL                         R10 5
      144 LOADK                            R12 K24 ["OpenAnimationInClipEditor"]
      145 MOVE                             R13 R6
      146 NAMECALL                         R10 R10 K25 ["Fire"]
      148 CALL                             R10 3 0
      149 GETTABLEKS                       R10 R1 K28 ["tools"]
      151 GETTABLEKS                       R10 R10 K29 ["animationGen"]
      153 GETTABLEKS                       R10 R10 K30 ["openAnimationClipEditorAsync"]
      155 JUMPIFEQKNIL                     R10 ; [+3]
      157 MOVE                             R11 R10
      158 CALL                             R11 0 0
      159 CLOSEUPVALS                      R7
      160 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Disconnect"]
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R0 1
       10 JUMPIFEQKNIL                     R0 ; [+25]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K1 ["clipToUpscalePreview"]
       15 GETTABLEKS                       R0 R0 K2 ["destroy"]
       17 CALL                             R0 0 0
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K3 ["animator"]
       21 GETTABLEKS                       R0 R0 K2 ["destroy"]
       23 CALL                             R0 0 0
       24 GETUPVAL                         R0 1
       25 GETTABLEKS                       R0 R0 K4 ["selection"]
       27 GETTABLEKS                       R0 R0 K2 ["destroy"]
       29 CALL                             R0 0 0
       30 GETUPVAL                         R0 2
       31 GETTABLEKS                       R0 R0 K5 ["FFlagAssistantUseNewDMNetworking"]
       33 JUMPIFNOT                        R0 ; [+2]
       34 LOADNIL                          R0
       35 SETUPVAL                         R0 1
       36 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 CALL                             R2 3 1
        9 RETURN                           R2 1

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
        4 GETTABLEKS                       R4 R2 K2 ["selection"]
        6 GETTABLEKS                       R4 R4 K3 ["get"]
        8 CALL                             R4 0 1
        9 LENGTH                           R5 R4
       10 JUMPIFEQKN                       R5 K4 [1] ; [+3]
       12 LOADNIL                          R3
       13 JUMP                             ; [+8]
       14 GETTABLEN                        R5 R4 1
       15 GETUPVAL                         R6 0
       16 MOVE                             R7 R5
       17 CALL                             R6 1 1
       18 JUMPIF                           R6 ; [+2]
       19 LOADNIL                          R3
       20 JUMP                             ; [+1]
       21 MOVE                             R3 R5
       22 JUMPIFNOTEQKNIL                  R3 ; [+3]
       24 LOADNIL                          R1
       25 RETURN                           R1 1
       26 GETTABLEKS                       R4 R2 K5 ["instances"]
       28 GETTABLEKS                       R4 R4 K6 ["getUniqueId"]
       30 MOVE                             R5 R3
       31 CALL                             R4 1 1
       32 DUPTABLE                         R1 K10 [{"uniqueId", "name", "className"}]
       33 SETTABLEKS                       R4 R1 K7 ["uniqueId"]
       35 GETTABLEKS                       R5 R3 K11 ["Name"]
       37 SETTABLEKS                       R5 R1 K8 ["name"]
       39 GETTABLEKS                       R5 R3 K12 ["ClassName"]
       41 SETTABLEKS                       R5 R1 K9 ["className"]
       43 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R2 R2 K0 ["clipToUpscalePreview"]
        4 GETTABLEKS                       R2 R2 K1 ["previewClipToUpscaleAsync"]
        6 MOVE                             R3 R0
        7 GETTABLEKS                       R4 R1 K2 ["initArgs"]
        9 GETTABLEKS                       R4 R4 K3 ["environment"]
       11 GETTABLEKS                       R5 R1 K4 ["bridge"]
       13 CALL                             R2 3 -1
       14 RETURN                           R2 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+8]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["clipToUpscalePreview"]
        6 GETTABLEKS                       R1 R1 K1 ["clearClipToUpscalePreview"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R1 R1 K0 ["clipToUpscalePreview"]
        4 GETTABLEKS                       R1 R1 K1 ["insertClipToUpscalePreviewRigAsync"]
        6 GETTABLEKS                       R2 R0 K2 ["initArgs"]
        8 GETTABLEKS                       R2 R2 K3 ["environment"]
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["animatorRemoved"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["restartPlayback"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_43:
        0 DUPTABLE                         R1 K2 [{"animatorRemoved", "restartPlayback"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R2 R1 K0 ["animatorRemoved"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R1 K1 ["restartPlayback"]
       11 RETURN                           R1 1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 MOVE                             R6 R0
        5 CALL                             R5 1 1
        6 CALL                             R2 3 1
        7 RETURN                           R2 1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R1 K0 ["selection"]
        3 GETTABLEKS                       R3 R3 K1 ["get"]
        5 CALL                             R3 0 1
        6 LENGTH                           R4 R3
        7 JUMPIFEQKN                       R4 K2 [1] ; [+3]
        9 LOADNIL                          R2
       10 JUMP                             ; [+8]
       11 GETTABLEN                        R4 R3 1
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R4
       14 CALL                             R5 1 1
       15 JUMPIF                           R5 ; [+2]
       16 LOADNIL                          R2
       17 JUMP                             ; [+1]
       18 MOVE                             R2 R4
       19 JUMPIFNOTEQKNIL                  R2 ; [+3]
       21 LOADNIL                          R0
       22 RETURN                           R0 1
       23 GETTABLEKS                       R3 R1 K3 ["instances"]
       25 GETTABLEKS                       R3 R3 K4 ["getUniqueId"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 DUPTABLE                         R0 K8 [{"uniqueId", "name", "className"}]
       30 SETTABLEKS                       R3 R0 K5 ["uniqueId"]
       32 GETTABLEKS                       R4 R2 K9 ["Name"]
       34 SETTABLEKS                       R4 R0 K6 ["name"]
       36 GETTABLEKS                       R4 R2 K10 ["ClassName"]
       38 SETTABLEKS                       R4 R0 K7 ["className"]
       40 RETURN                           R0 1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R6 R1 K0 ["toolUseId"]
        7 GETTABLE                         R4 R5 R6
        8 JUMPIFNOTEQKNIL                  R4 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 3
       12 CALL                             R4 0 1
       13 GETTABLEKS                       R4 R4 K1 ["animator"]
       15 GETTABLEKS                       R4 R4 K2 ["setIsPlaying"]
       17 GETTABLEKS                       R5 R1 K3 ["isPlaying"]
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R7 R1 K0 ["toolUseId"]
       22 MOVE                             R8 R2
       23 MOVE                             R9 R3
       24 CALL                             R6 3 1
       25 CALL                             R4 2 0
       26 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R6 R1 K0 ["toolUseId"]
        7 GETTABLE                         R4 R5 R6
        8 JUMPIFNOTEQKNIL                  R4 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 3
       12 CALL                             R4 0 1
       13 GETTABLEKS                       R4 R4 K1 ["animator"]
       15 GETTABLEKS                       R4 R4 K2 ["setCurrentTime"]
       17 GETTABLEKS                       R5 R1 K3 ["currentTime"]
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R7 R1 K0 ["toolUseId"]
       22 MOVE                             R8 R2
       23 MOVE                             R9 R3
       24 CALL                             R6 3 1
       25 CALL                             R4 2 0
       26 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 MOVE                             R6 R0
        5 CALL                             R5 1 1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 MOVE                             R6 R0
        5 CALL                             R5 1 1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 MOVE                             R6 R0
        5 CALL                             R5 1 1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R2 R2 K0 ["clipToUpscalePreview"]
        4 GETTABLEKS                       R2 R2 K1 ["previewClipToUpscaleAsync"]
        6 MOVE                             R3 R1
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R0
       10 CALL                             R5 1 1
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1

PROTO_53:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+8]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["clipToUpscalePreview"]
        6 GETTABLEKS                       R2 R2 K1 ["clearClipToUpscalePreview"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R0 R0 K0 ["clipToUpscalePreview"]
        4 GETTABLEKS                       R0 R0 K1 ["insertClipToUpscalePreviewRigAsync"]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_55:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+7]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K1 ["Disconnect"]
       10 CALL                             R0 1 0
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 1
       13 GETUPVAL                         R0 2
       14 JUMPIFEQKNIL                     R0 ; [+25]
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K2 ["clipToUpscalePreview"]
       19 GETTABLEKS                       R0 R0 K3 ["destroy"]
       21 CALL                             R0 0 0
       22 GETUPVAL                         R0 2
       23 GETTABLEKS                       R0 R0 K4 ["animator"]
       25 GETTABLEKS                       R0 R0 K3 ["destroy"]
       27 CALL                             R0 0 0
       28 GETUPVAL                         R0 2
       29 GETTABLEKS                       R0 R0 K5 ["selection"]
       31 GETTABLEKS                       R0 R0 K3 ["destroy"]
       33 CALL                             R0 0 0
       34 GETUPVAL                         R0 3
       35 GETTABLEKS                       R0 R0 K6 ["FFlagAssistantUseNewDMNetworking"]
       37 JUMPIFNOT                        R0 ; [+2]
       38 LOADNIL                          R0
       39 SETUPVAL                         R0 2
       40 LOADB                            R0 1
       41 SETUPVAL                         R0 4
       42 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 LOADB                            R3 0
        6 SETUPVAL                         R3 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R2
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["new"]
       12 CALL                             R4 0 1
       13 GETTABLEKS                       R7 R2 K1 ["generateAndSaveAnimation"]
       15 NEWCLOSURE                       R9 P1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R3
       19 NAMECALL                         R7 R7 K2 ["Connect"]
       21 CALL                             R7 2 -1
       22 NAMECALL                         R5 R4 K3 ["Add"]
       24 CALL                             R5 -1 0
       25 GETTABLEKS                       R7 R2 K4 ["getSelectedRigRef"]
       27 NEWCLOSURE                       R9 P2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U4
       30 NAMECALL                         R7 R7 K2 ["Connect"]
       32 CALL                             R7 2 -1
       33 NAMECALL                         R5 R4 K3 ["Add"]
       35 CALL                             R5 -1 0
       36 GETTABLEKS                       R7 R2 K5 ["setIsPlaying"]
       38 NEWCLOSURE                       R9 P3
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 NAMECALL                         R7 R7 K2 ["Connect"]
       46 CALL                             R7 2 -1
       47 NAMECALL                         R5 R4 K3 ["Add"]
       49 CALL                             R5 -1 0
       50 GETTABLEKS                       R7 R2 K6 ["setCurrentTime"]
       52 NEWCLOSURE                       R9 P4
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U7
       58 NAMECALL                         R7 R7 K2 ["Connect"]
       60 CALL                             R7 2 -1
       61 NAMECALL                         R5 R4 K3 ["Add"]
       63 CALL                             R5 -1 0
       64 GETTABLEKS                       R7 R2 K7 ["openInAnimationClipEditor"]
       66 NEWCLOSURE                       R9 P5
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          VAL R1
       69 NAMECALL                         R7 R7 K2 ["Connect"]
       71 CALL                             R7 2 -1
       72 NAMECALL                         R5 R4 K3 ["Add"]
       74 CALL                             R5 -1 0
       75 GETTABLEKS                       R7 R2 K8 ["beginEditPreview"]
       77 NEWCLOSURE                       R9 P6
       78 CAPTURE                          UPVAL U9
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R3
       81 NAMECALL                         R7 R7 K2 ["Connect"]
       83 CALL                             R7 2 -1
       84 NAMECALL                         R5 R4 K3 ["Add"]
       86 CALL                             R5 -1 0
       87 GETTABLEKS                       R7 R2 K9 ["setEditPreviewReach"]
       89 NEWCLOSURE                       R9 P7
       90 CAPTURE                          UPVAL U10
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R3
       93 NAMECALL                         R7 R7 K2 ["Connect"]
       95 CALL                             R7 2 -1
       96 NAMECALL                         R5 R4 K3 ["Add"]
       98 CALL                             R5 -1 0
       99 GETTABLEKS                       R7 R2 K10 ["setEditPreviewBlend"]
      101 NEWCLOSURE                       R9 P8
      102 CAPTURE                          UPVAL U11
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R3
      105 NAMECALL                         R7 R7 K2 ["Connect"]
      107 CALL                             R7 2 -1
      108 NAMECALL                         R5 R4 K3 ["Add"]
      110 CALL                             R5 -1 0
      111 GETTABLEKS                       R7 R2 K11 ["previewClipToUpscale"]
      113 NEWCLOSURE                       R9 P9
      114 CAPTURE                          UPVAL U6
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R3
      117 NAMECALL                         R7 R7 K2 ["Connect"]
      119 CALL                             R7 2 -1
      120 NAMECALL                         R5 R4 K3 ["Add"]
      122 CALL                             R5 -1 0
      123 GETTABLEKS                       R7 R2 K12 ["clearClipToUpscalePreview"]
      125 NEWCLOSURE                       R9 P10
      126 CAPTURE                          UPVAL U12
      127 NAMECALL                         R7 R7 K2 ["Connect"]
      129 CALL                             R7 2 -1
      130 NAMECALL                         R5 R4 K3 ["Add"]
      132 CALL                             R5 -1 0
      133 GETTABLEKS                       R7 R2 K13 ["insertClipToUpscalePreviewRig"]
      135 NEWCLOSURE                       R9 P11
      136 CAPTURE                          UPVAL U6
      137 CAPTURE                          VAL R1
      138 NAMECALL                         R7 R7 K2 ["Connect"]
      140 CALL                             R7 2 -1
      141 NAMECALL                         R5 R4 K3 ["Add"]
      143 CALL                             R5 -1 0
      144 GETTABLEKS                       R5 R1 K14 ["Destroying"]
      146 NEWCLOSURE                       R7 P12
      147 CAPTURE                          VAL R4
      148 CAPTURE                          UPVAL U13
      149 CAPTURE                          UPVAL U12
      150 CAPTURE                          UPVAL U14
      151 CAPTURE                          UPVAL U1
      152 NAMECALL                         R5 R5 K15 ["Once"]
      154 CALL                             R5 2 0
      155 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["MarketplaceService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["MemStorageService"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K7 ["ServerStorage"]
       28 NAMECALL                         R4 R4 K3 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K9 [script]
       33 LOADK                            R7 K10 ["AssistantUI"]
       34 NAMECALL                         R5 R5 K11 ["FindFirstAncestor"]
       36 CALL                             R5 2 1
       37 GETTABLEKS                       R6 R5 K12 ["Parent"]
       39 GETIMPORT                        R7 K14 [require]
       41 GETTABLEKS                       R8 R5 K15 ["Bridges"]
       43 GETTABLEKS                       R8 R8 K16 ["createAnimationGenBridge"]
       45 GETTABLEKS                       R8 R8 K17 ["AnimationGenBridgeTypes"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K14 [require]
       50 GETTABLEKS                       R9 R5 K18 ["Util"]
       52 GETTABLEKS                       R9 R9 K19 ["AnimationGen"]
       54 GETTABLEKS                       R9 R9 K20 ["AnimationGenConstants"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K14 [require]
       59 GETTABLEKS                       R10 R5 K21 ["Remotes"]
       61 GETTABLEKS                       R10 R10 K22 ["AnimationGenRemotes"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K14 [require]
       66 GETTABLEKS                       R11 R5 K18 ["Util"]
       68 GETTABLEKS                       R11 R11 K19 ["AnimationGen"]
       70 GETTABLEKS                       R11 R11 K23 ["AnimationGenTypes"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K14 [require]
       75 GETTABLEKS                       R12 R5 K18 ["Util"]
       77 GETTABLEKS                       R12 R12 K19 ["AnimationGen"]
       79 GETTABLEKS                       R12 R12 K24 ["AnimationNameUtils"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K14 [require]
       84 GETTABLEKS                       R13 R6 K25 ["Bin"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K14 [require]
       89 GETTABLEKS                       R14 R5 K18 ["Util"]
       91 GETTABLEKS                       R14 R14 K19 ["AnimationGen"]
       93 GETTABLEKS                       R14 R14 K26 ["BlendSettings"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K14 [require]
       98 GETTABLEKS                       R15 R6 K27 ["DMNetworking"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K14 [require]
      103 GETTABLEKS                       R16 R5 K28 ["Guest"]
      105 GETTABLEKS                       R16 R16 K29 ["Environment"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K14 [require]
      110 GETTABLEKS                       R17 R5 K30 ["Flags"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K14 [require]
      115 GETTABLEKS                       R18 R5 K18 ["Util"]
      117 GETTABLEKS                       R18 R18 K19 ["AnimationGen"]
      119 GETTABLEKS                       R18 R18 K31 ["HostTypes"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K14 [require]
      124 GETTABLEKS                       R19 R5 K18 ["Util"]
      126 GETTABLEKS                       R19 R19 K19 ["AnimationGen"]
      128 GETTABLEKS                       R19 R19 K32 ["R6Blend"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K14 [require]
      133 GETTABLEKS                       R20 R5 K18 ["Util"]
      135 GETTABLEKS                       R20 R20 K19 ["AnimationGen"]
      137 GETTABLEKS                       R20 R20 K33 ["ReachSteps"]
      139 CALL                             R19 1 1
      140 GETIMPORT                        R20 K14 [require]
      142 GETTABLEKS                       R21 R5 K18 ["Util"]
      144 GETTABLEKS                       R21 R21 K19 ["AnimationGen"]
      146 GETTABLEKS                       R21 R21 K34 ["composeReachClipFromTakes"]
      148 CALL                             R20 1 1
      149 GETIMPORT                        R21 K14 [require]
      151 GETTABLEKS                       R22 R5 K18 ["Util"]
      153 GETTABLEKS                       R22 R22 K19 ["AnimationGen"]
      155 GETTABLEKS                       R22 R22 K35 ["createClipToUpscalePreview"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K14 [require]
      160 GETTABLEKS                       R23 R5 K18 ["Util"]
      162 GETTABLEKS                       R23 R23 K19 ["AnimationGen"]
      164 GETTABLEKS                       R23 R23 K36 ["createHostAnimator"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K14 [require]
      169 GETTABLEKS                       R24 R5 K18 ["Util"]
      171 GETTABLEKS                       R24 R24 K19 ["AnimationGen"]
      173 GETTABLEKS                       R24 R24 K37 ["createHostGenerator"]
      175 CALL                             R23 1 1
      176 GETIMPORT                        R24 K14 [require]
      178 GETTABLEKS                       R25 R5 K18 ["Util"]
      180 GETTABLEKS                       R25 R25 K19 ["AnimationGen"]
      182 GETTABLEKS                       R25 R25 K38 ["createHostSelection"]
      184 CALL                             R24 1 1
      185 GETIMPORT                        R25 K14 [require]
      187 GETTABLEKS                       R26 R5 K18 ["Util"]
      189 GETTABLEKS                       R26 R26 K19 ["AnimationGen"]
      191 GETTABLEKS                       R26 R26 K39 ["insertBlockyRigIntoWorkspace"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K14 [require]
      196 GETTABLEKS                       R27 R5 K18 ["Util"]
      198 GETTABLEKS                       R27 R27 K19 ["AnimationGen"]
      200 GETTABLEKS                       R27 R27 K40 ["isRigInWorkspace"]
      202 CALL                             R26 1 1
      203 GETTABLEKS                       R27 R8 K41 ["RBX_ANIMSAVES_FOLDER_NAME"]
      205 GETTABLEKS                       R28 R8 K42 ["ANIM_SAVES_INSTANCE_NAME"]
      207 NEWTABLE                         R29 0 0
      209 LOADNIL                          R30
      210 LOADNIL                          R31
      211 LOADB                            R32 0
      212 DUPCLOSURE                       R33 K43 [PROTO_3]
      213 NEWCLOSURE                       R34 P1
      214 CAPTURE                          REF R31
      215 CAPTURE                          REF R32
      216 CAPTURE                          VAL R24
      217 CAPTURE                          VAL R22
      218 CAPTURE                          VAL R29
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R21
      221 CAPTURE                          VAL R33
      222 DUPCLOSURE                       R35 K44 [PROTO_5]
      223 CAPTURE                          VAL R26
      224 DUPCLOSURE                       R36 K45 [PROTO_6]
      225 CAPTURE                          VAL R26
      226 DUPCLOSURE                       R37 K46 [PROTO_7]
      227 CAPTURE                          VAL R0
      228 CAPTURE                          VAL R16
      229 DUPCLOSURE                       R38 K47 [PROTO_8]
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R20
      232 DUPCLOSURE                       R39 K48 [PROTO_9]
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R20
      235 DUPCLOSURE                       R40 K49 [PROTO_10]
      236 CAPTURE                          VAL R10
      237 CAPTURE                          VAL R29
      238 CAPTURE                          VAL R26
      239 DUPCLOSURE                       R41 K50 [PROTO_11]
      240 CAPTURE                          VAL R4
      241 CAPTURE                          VAL R27
      242 DUPCLOSURE                       R42 K51 [PROTO_13]
      243 CAPTURE                          VAL R2
      244 DUPCLOSURE                       R43 K52 [PROTO_14]
      245 CAPTURE                          VAL R29
      246 CAPTURE                          VAL R2
      247 CAPTURE                          VAL R11
      248 CAPTURE                          VAL R41
      249 DUPCLOSURE                       R44 K53 [PROTO_15]
      250 CAPTURE                          VAL R40
      251 CAPTURE                          VAL R25
      252 CAPTURE                          VAL R34
      253 CAPTURE                          VAL R29
      254 CAPTURE                          VAL R33
      255 DUPCLOSURE                       R45 K54 [PROTO_16]
      256 CAPTURE                          VAL R19
      257 CAPTURE                          VAL R18
      258 CAPTURE                          VAL R13
      259 CAPTURE                          VAL R20
      260 CAPTURE                          VAL R43
      261 CAPTURE                          VAL R1
      262 CAPTURE                          VAL R37
      263 CAPTURE                          VAL R10
      264 CAPTURE                          VAL R44
      265 DUPCLOSURE                       R46 K55 [PROTO_17]
      266 CAPTURE                          VAL R10
      267 CAPTURE                          VAL R29
      268 CAPTURE                          VAL R45
      269 CAPTURE                          VAL R34
      270 CAPTURE                          VAL R43
      271 CAPTURE                          VAL R18
      272 CAPTURE                          VAL R13
      273 CAPTURE                          VAL R44
      274 DUPCLOSURE                       R47 K56 [PROTO_18]
      275 CAPTURE                          VAL R29
      276 CAPTURE                          VAL R34
      277 CAPTURE                          VAL R33
      278 DUPCLOSURE                       R48 K57 [PROTO_19]
      279 CAPTURE                          VAL R29
      280 CAPTURE                          VAL R34
      281 CAPTURE                          VAL R33
      282 DUPCLOSURE                       R49 K58 [PROTO_20]
      283 CAPTURE                          VAL R29
      284 CAPTURE                          VAL R19
      285 CAPTURE                          VAL R20
      286 CAPTURE                          VAL R34
      287 CAPTURE                          VAL R33
      288 DUPCLOSURE                       R50 K59 [PROTO_21]
      289 CAPTURE                          VAL R29
      290 CAPTURE                          VAL R19
      291 CAPTURE                          VAL R20
      292 CAPTURE                          VAL R34
      293 CAPTURE                          VAL R33
      294 DUPCLOSURE                       R51 K60 [PROTO_22]
      295 CAPTURE                          VAL R29
      296 CAPTURE                          VAL R13
      297 CAPTURE                          VAL R18
      298 CAPTURE                          VAL R34
      299 CAPTURE                          VAL R33
      300 DUPCLOSURE                       R52 K61 [PROTO_23]
      301 CAPTURE                          VAL R4
      302 CAPTURE                          VAL R27
      303 CAPTURE                          VAL R28
      304 DUPCLOSURE                       R53 K62 [PROTO_24]
      305 CAPTURE                          VAL R52
      306 CAPTURE                          VAL R0
      307 NEWCLOSURE                       R54 P21
      308 CAPTURE                          VAL R16
      309 CAPTURE                          VAL R29
      310 CAPTURE                          VAL R37
      311 CAPTURE                          VAL R53
      312 CAPTURE                          VAL R1
      313 CAPTURE                          VAL R3
      314 CAPTURE                          REF R30
      315 NEWCLOSURE                       R55 P22
      316 CAPTURE                          REF R30
      317 CAPTURE                          REF R31
      318 CAPTURE                          VAL R16
      319 DUPTABLE                         R56 K74 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "openInAnimationClipEditor", "beginEditPreview", "setEditPreviewReach", "setEditPreviewBlend", "previewClipToUpscaleAsync", "clearClipToUpscalePreview", "insertClipToUpscalePreviewRigAsync"}]
      320 DUPCLOSURE                       R57 K75 [PROTO_30]
      321 CAPTURE                          VAL R46
      322 SETTABLEKS                       R57 R56 K63 ["generateAndSaveAnimationAsync"]
      324 DUPCLOSURE                       R57 K76 [PROTO_31]
      325 CAPTURE                          VAL R26
      326 SETTABLEKS                       R57 R56 K64 ["getSelectedRigRef"]
      328 DUPCLOSURE                       R57 K77 [PROTO_32]
      329 CAPTURE                          VAL R47
      330 SETTABLEKS                       R57 R56 K65 ["setIsPlaying"]
      332 DUPCLOSURE                       R57 K78 [PROTO_33]
      333 CAPTURE                          VAL R48
      334 SETTABLEKS                       R57 R56 K66 ["setCurrentTime"]
      336 DUPCLOSURE                       R57 K79 [PROTO_34]
      337 CAPTURE                          VAL R54
      338 SETTABLEKS                       R57 R56 K67 ["openInAnimationClipEditor"]
      340 DUPCLOSURE                       R57 K80 [PROTO_35]
      341 CAPTURE                          VAL R49
      342 SETTABLEKS                       R57 R56 K68 ["beginEditPreview"]
      344 DUPCLOSURE                       R57 K81 [PROTO_36]
      345 CAPTURE                          VAL R50
      346 SETTABLEKS                       R57 R56 K69 ["setEditPreviewReach"]
      348 DUPCLOSURE                       R57 K82 [PROTO_37]
      349 CAPTURE                          VAL R51
      350 SETTABLEKS                       R57 R56 K70 ["setEditPreviewBlend"]
      352 DUPCLOSURE                       R57 K83 [PROTO_38]
      353 CAPTURE                          VAL R34
      354 SETTABLEKS                       R57 R56 K71 ["previewClipToUpscaleAsync"]
      356 NEWCLOSURE                       R57 P32
      357 CAPTURE                          REF R31
      358 SETTABLEKS                       R57 R56 K72 ["clearClipToUpscalePreview"]
      360 DUPCLOSURE                       R57 K84 [PROTO_40]
      361 CAPTURE                          VAL R34
      362 SETTABLEKS                       R57 R56 K73 ["insertClipToUpscalePreviewRigAsync"]
      364 NEWCLOSURE                       R57 P34
      365 CAPTURE                          VAL R9
      366 CAPTURE                          REF R32
      367 CAPTURE                          VAL R12
      368 CAPTURE                          VAL R46
      369 CAPTURE                          VAL R26
      370 CAPTURE                          VAL R29
      371 CAPTURE                          VAL R34
      372 CAPTURE                          VAL R33
      373 CAPTURE                          VAL R54
      374 CAPTURE                          VAL R49
      375 CAPTURE                          VAL R50
      376 CAPTURE                          VAL R51
      377 CAPTURE                          REF R31
      378 CAPTURE                          REF R30
      379 CAPTURE                          VAL R16
      380 DUPTABLE                         R58 K88 [{"bridge", "destroy", "connectRemotes"}]
      381 SETTABLEKS                       R56 R58 K85 ["bridge"]
      383 SETTABLEKS                       R55 R58 K86 ["destroy"]
      385 SETTABLEKS                       R57 R58 K87 ["connectRemotes"]
      387 CLOSEUPVALS                      R30
      388 RETURN                           R58 1
