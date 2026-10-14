PROTO_0:
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
       14 DUPTABLE                         R1 K6 [{"selection", "generator", "animator"}]
       15 SETTABLEKS                       R0 R1 K3 ["selection"]
       17 GETUPVAL                         R2 3
       18 CALL                             R2 0 1
       19 SETTABLEKS                       R2 R1 K4 ["generator"]
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R3 R0 K7 ["selectionChangedSignal"]
       24 GETUPVAL                         R4 5
       25 CALL                             R2 2 1
       26 SETTABLEKS                       R2 R1 K5 ["animator"]
       28 SETUPVAL                         R1 0
       29 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animatorRemoved"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["restartPlayback"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["instances"]
        3 GETTABLEKS                       R2 R2 K1 ["getUniqueId"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 -1
        7 FASTCALL                         TOSTRING ; [+2]
        8 GETIMPORT                        R1 K3 [tostring]
       10 CALL                             R1 -1 1
       11 RETURN                           R1 1

PROTO_4:
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

PROTO_8:
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

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 1
        4 GETTABLEKS                       R4 R4 K1 ["generator"]
        6 GETTABLEKS                       R4 R4 K2 ["generateAnimationAsync"]
        8 DUPTABLE                         R5 K10 [{"prompt", "generationMode", "duration", "loop", "inputAssetId", "priorJobId", "id"}]
        9 GETTABLEKS                       R6 R0 K3 ["prompt"]
       11 SETTABLEKS                       R6 R5 K3 ["prompt"]
       13 GETTABLEKS                       R6 R0 K4 ["generationMode"]
       15 SETTABLEKS                       R6 R5 K4 ["generationMode"]
       17 GETTABLEKS                       R6 R0 K5 ["duration"]
       19 SETTABLEKS                       R6 R5 K5 ["duration"]
       21 GETTABLEKS                       R6 R0 K6 ["loop"]
       23 SETTABLEKS                       R6 R5 K6 ["loop"]
       25 GETTABLEKS                       R6 R0 K7 ["inputAssetId"]
       27 SETTABLEKS                       R6 R5 K7 ["inputAssetId"]
       29 GETTABLEKS                       R6 R0 K8 ["priorJobId"]
       31 SETTABLEKS                       R6 R5 K8 ["priorJobId"]
       33 SETTABLEKS                       R3 R5 K9 ["id"]
       35 MOVE                             R6 R1
       36 CALL                             R4 2 1
       37 GETTABLEKS                       R5 R4 K11 ["keyframeSequence"]
       39 GETTABLEKS                       R6 R4 K12 ["success"]
       41 JUMPIFNOT                        R6 ; [+2]
       42 JUMPIFNOTEQKNIL                  R5 ; [+13]
       44 DUPTABLE                         R6 K17 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
       45 GETTABLEKS                       R7 R4 K16 ["failureReason"]
       47 JUMPIF                           R7 ; [+5]
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R7 R7 K18 ["FailureReasons"]
       51 GETTABLEKS                       R7 R7 K19 ["GenerationFailed"]
       53 SETTABLEKS                       R7 R6 K16 ["failureReason"]
       55 RETURN                           R6 1
       56 LOADB                            R6 1
       57 GETTABLEKS                       R7 R0 K4 ["generationMode"]
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K20 ["GenerationModes"]
       62 GETTABLEKS                       R8 R8 K21 ["EditNew"]
       64 JUMPIFEQ                         R7 R8 ; [+12]
       66 GETTABLEKS                       R7 R0 K4 ["generationMode"]
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R8 R8 K20 ["GenerationModes"]
       71 GETTABLEKS                       R8 R8 K22 ["EditUpscale"]
       73 JUMPIFEQ                         R7 R8 ; [+2]
       75 LOADB                            R6 0 +1
       76 LOADB                            R6 1
       77 LOADNIL                          R7
       78 JUMPIFNOT                        R6 ; [+43]
       79 GETTABLEKS                       R9 R0 K23 ["editSourceToolUseId"]
       81 JUMPIFEQKNIL                     R9 ; [+6]
       83 GETUPVAL                         R9 2
       84 GETTABLEKS                       R10 R0 K23 ["editSourceToolUseId"]
       86 GETTABLE                         R8 R9 R10
       87 JUMP                             ; [+1]
       88 LOADNIL                          R8
       89 JUMPIFEQKNIL                     R8 ; [+13]
       91 GETTABLEKS                       R9 R8 K24 ["rig"]
       93 JUMPIFEQKNIL                     R9 ; [+46]
       95 GETUPVAL                         R9 3
       96 GETTABLEKS                       R10 R8 K24 ["rig"]
       98 CALL                             R9 1 1
       99 JUMPIFNOT                        R9 ; [+40]
      100 GETTABLEKS                       R7 R8 K24 ["rig"]
      102 JUMP                             ; [+37]
      103 GETTABLEKS                       R9 R1 K25 ["selection"]
      105 GETTABLEKS                       R9 R9 K26 ["get"]
      107 CALL                             R9 0 1
      108 LENGTH                           R10 R9
      109 JUMPIFEQKN                       R10 K27 [1] ; [+3]
      111 LOADNIL                          R7
      112 JUMP                             ; [+27]
      113 GETTABLEN                        R10 R9 1
      114 GETUPVAL                         R11 3
      115 MOVE                             R12 R10
      116 CALL                             R11 1 1
      117 JUMPIF                           R11 ; [+2]
      118 LOADNIL                          R7
      119 JUMP                             ; [+20]
      120 MOVE                             R7 R10
      121 JUMP                             ; [+18]
      122 GETTABLEKS                       R8 R0 K28 ["rigUniqueId"]
      124 JUMPIFEQKNIL                     R8 ; [+15]
      126 GETTABLEKS                       R8 R1 K29 ["instances"]
      128 GETTABLEKS                       R8 R8 K30 ["getInstanceFromUniqueId"]
      130 GETTABLEKS                       R9 R0 K28 ["rigUniqueId"]
      132 CALL                             R8 1 1
      133 JUMPIFEQKNIL                     R8 ; [+6]
      135 GETUPVAL                         R9 3
      136 MOVE                             R10 R8
      137 CALL                             R9 1 1
      138 JUMPIFNOT                        R9 ; [+1]
      139 MOVE                             R7 R8
      140 LOADB                            R8 0
      141 GETTABLEKS                       R9 R1 K31 ["startRecording"]
      143 MOVE                             R10 R3
      144 CALL                             R9 1 0
      145 JUMPIFNOTEQKNIL                  R7 ; [+10]
      147 GETUPVAL                         R9 4
      148 GETIMPORT                        R10 K35 [Enum.HumanoidRigType.R15]
      150 CALL                             R9 1 1
      151 MOVE                             R7 R9
      152 JUMPIFNOTEQKNIL                  R7 ; [+2]
      154 LOADB                            R8 0 +1
      155 LOADB                            R8 1
      156 JUMPIFEQKNIL                     R7 ; [+10]
      158 GETUPVAL                         R9 0
      159 CALL                             R9 0 1
      160 GETTABLEKS                       R9 R9 K1 ["generator"]
      162 GETTABLEKS                       R9 R9 K36 ["saveKeyframeSequence"]
      164 MOVE                             R10 R5
      165 MOVE                             R11 R7
      166 CALL                             R9 2 0
      167 GETTABLEKS                       R9 R1 K37 ["endRecording"]
      169 MOVE                             R10 R3
      170 CALL                             R9 1 0
      171 JUMPIFNOTEQKNIL                  R7 ; [+10]
      173 DUPTABLE                         R9 K17 [{["duration"] = 0, ["name"] = "", ["failureReason"]}]
      174 GETUPVAL                         R10 1
      175 GETTABLEKS                       R10 R10 K18 ["FailureReasons"]
      177 GETTABLEKS                       R10 R10 K38 ["RigInsertFailed"]
      179 SETTABLEKS                       R10 R9 K16 ["failureReason"]
      181 RETURN                           R9 1
      182 GETTABLEKS                       R9 R4 K39 ["reachTakes"]
      184 GETUPVAL                         R10 2
      185 DUPTABLE                         R11 K43 [{["rig"], ["keyframeSequence"], ["needsReload"] = True, ["reachSource"]}]
      186 SETTABLEKS                       R7 R11 K24 ["rig"]
      188 SETTABLEKS                       R5 R11 K11 ["keyframeSequence"]
      190 JUMPIFEQKNIL                     R9 ; [+7]
      192 DUPTABLE                         R12 K45 [{"neutralSequence", "reachTakes"}]
      193 SETTABLEKS                       R5 R12 K44 ["neutralSequence"]
      195 SETTABLEKS                       R9 R12 K39 ["reachTakes"]
      197 JUMP                             ; [+1]
      198 LOADNIL                          R12
      199 SETTABLEKS                       R12 R11 K42 ["reachSource"]
      201 SETTABLE                         R11 R10 R3
      202 GETUPVAL                         R10 0
      203 CALL                             R10 0 1
      204 GETTABLEKS                       R10 R10 K46 ["animator"]
      206 GETTABLEKS                       R10 R10 K47 ["setAnimation"]
      208 GETUPVAL                         R11 5
      209 MOVE                             R12 R3
      210 MOVE                             R13 R1
      211 MOVE                             R14 R2
      212 CALL                             R11 3 1
      213 CALL                             R10 1 0
      214 JUMPIFNOT                        R8 ; [+10]
      215 GETTABLEKS                       R10 R1 K25 ["selection"]
      217 GETTABLEKS                       R10 R10 K48 ["set"]
      219 NEWTABLE                         R11 0 1
      221 MOVE                             R12 R7
      222 SETLIST                          R11 R12 1 [1]
      224 CALL                             R10 1 0
      225 DUPTABLE                         R10 K51 [{"duration", "name", "generationId", "contextId"}]
      226 GETTABLEKS                       R11 R5 K52 ["Length"]
      228 SETTABLEKS                       R11 R10 K5 ["duration"]
      230 GETTABLEKS                       R11 R5 K53 ["Name"]
      232 SETTABLEKS                       R11 R10 K14 ["name"]
      234 GETTABLEKS                       R11 R4 K49 ["generationId"]
      236 SETTABLEKS                       R11 R10 K49 ["generationId"]
      238 GETTABLEKS                       R11 R4 K50 ["contextId"]
      240 SETTABLEKS                       R11 R10 K50 ["contextId"]
      242 RETURN                           R10 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["toolUseId"]
        3 GETTABLE                         R3 R4 R5
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R3 R3 K1 ["animator"]
       11 GETTABLEKS                       R3 R3 K2 ["setPlaybackSpeed"]
       13 GETTABLEKS                       R4 R0 K3 ["playbackSpeed"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R6 R0 K0 ["toolUseId"]
       18 MOVE                             R7 R1
       19 MOVE                             R8 R2
       20 CALL                             R5 3 1
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_13:
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
       24 DUPTABLE                         R6 K11 [{["rig"], ["keyframeSequence"], ["needsReload"] = True, ["reachSource"], ["armsReach"], ["legsReach"]}]
       25 GETTABLEKS                       R7 R3 K5 ["rig"]
       27 SETTABLEKS                       R7 R6 K5 ["rig"]
       29 JUMPIFEQKNIL                     R5 ; [+4]
       31 GETTABLEKS                       R7 R5 K12 ["neutralSequence"]
       33 JUMP                             ; [+2]
       34 GETTABLEKS                       R7 R3 K6 ["keyframeSequence"]
       36 SETTABLEKS                       R7 R6 K6 ["keyframeSequence"]
       38 SETTABLEKS                       R5 R6 K4 ["reachSource"]
       40 GETTABLEKS                       R7 R3 K9 ["armsReach"]
       42 SETTABLEKS                       R7 R6 K9 ["armsReach"]
       44 GETTABLEKS                       R7 R3 K10 ["legsReach"]
       46 SETTABLEKS                       R7 R6 K10 ["legsReach"]
       48 GETTABLEKS                       R7 R6 K2 ["composedReachSequence"]
       50 JUMPIFEQKNIL                     R7 ; [+9]
       52 GETTABLEKS                       R7 R6 K2 ["composedReachSequence"]
       54 NAMECALL                         R7 R7 K3 ["Destroy"]
       56 CALL                             R7 1 0
       57 LOADNIL                          R7
       58 SETTABLEKS                       R7 R6 K2 ["composedReachSequence"]
       60 GETTABLEKS                       R7 R6 K4 ["reachSource"]
       62 JUMPIFEQKNIL                     R7 ; [+42]
       64 GETTABLEKS                       R9 R6 K9 ["armsReach"]
       66 JUMPIF                           R9 ; [+3]
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R9 R9 K13 ["NEUTRAL"]
       70 GETTABLEKS                       R10 R6 K10 ["legsReach"]
       72 JUMPIF                           R10 ; [+3]
       73 GETUPVAL                         R10 1
       74 GETTABLEKS                       R10 R10 K13 ["NEUTRAL"]
       76 GETUPVAL                         R11 1
       77 GETTABLEKS                       R11 R11 K13 ["NEUTRAL"]
       79 JUMPIFNOTEQ                      R9 R11 ; [+8]
       81 GETUPVAL                         R11 1
       82 GETTABLEKS                       R11 R11 K13 ["NEUTRAL"]
       84 JUMPIFNOTEQ                      R10 R11 ; [+3]
       86 LOADNIL                          R8
       87 JUMP                             ; [+15]
       88 GETUPVAL                         R11 2
       89 GETTABLEKS                       R12 R7 K12 ["neutralSequence"]
       91 GETTABLEKS                       R13 R7 K14 ["reachTakes"]
       93 MOVE                             R14 R9
       94 MOVE                             R15 R10
       95 CALL                             R11 4 1
       96 JUMPIFNOTEQKNIL                  R11 ; [+5]
       98 GETIMPORT                        R12 K16 [warn]
      100 LOADK                            R13 K17 ["[AnimationGen] Reach takes could not be composed; falling back to the neutral clip"]
      101 CALL                             R12 1 0
      102 MOVE                             R8 R11
      103 SETTABLEKS                       R8 R6 K2 ["composedReachSequence"]
      105 GETUPVAL                         R7 0
      106 GETTABLEKS                       R8 R0 K1 ["editToolUseId"]
      108 SETTABLE                         R6 R7 R8
      109 GETUPVAL                         R7 3
      110 CALL                             R7 0 1
      111 GETTABLEKS                       R7 R7 K18 ["animator"]
      113 GETTABLEKS                       R7 R7 K19 ["setAnimation"]
      115 GETUPVAL                         R8 4
      116 GETTABLEKS                       R9 R0 K1 ["editToolUseId"]
      118 MOVE                             R10 R1
      119 MOVE                             R11 R2
      120 CALL                             R8 3 1
      121 CALL                             R7 1 0
      122 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AnimationClipEditorReady"]
        2 NAMECALL                         R1 R1 K1 ["GetItem"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKS                       R1 K2 ["true"] ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 RETURN                           R0 1

PROTO_20:
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

PROTO_21:
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
       79 DUPCLOSURE                       R9 K20 [PROTO_19]
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Disconnect"]
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R0 1
       10 JUMPIFEQKNIL                     R0 ; [+19]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K1 ["animator"]
       15 GETTABLEKS                       R0 R0 K2 ["destroy"]
       17 CALL                             R0 0 0
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K3 ["selection"]
       21 GETTABLEKS                       R0 R0 K2 ["destroy"]
       23 CALL                             R0 0 0
       24 GETUPVAL                         R0 2
       25 GETTABLEKS                       R0 R0 K4 ["FFlagAssistantUseNewDMNetworking"]
       27 JUMPIFNOT                        R0 ; [+2]
       28 LOADNIL                          R0
       29 SETUPVAL                         R0 1
       30 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 CALL                             R2 3 1
        9 RETURN                           R2 1

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["animatorRemoved"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["restartPlayback"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 MOVE                             R6 R0
        5 CALL                             R5 1 1
        6 CALL                             R2 3 1
        7 RETURN                           R2 1

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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
       15 GETTABLEKS                       R4 R4 K2 ["setPlaybackSpeed"]
       17 GETTABLEKS                       R5 R1 K3 ["playbackSpeed"]
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R7 R1 K0 ["toolUseId"]
       22 MOVE                             R8 R2
       23 MOVE                             R9 R3
       24 CALL                             R6 3 1
       25 CALL                             R4 2 0
       26 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 MOVE                             R6 R0
        5 CALL                             R5 1 1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 MOVE                             R6 R0
        5 CALL                             R5 1 1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_42:
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
       14 JUMPIFEQKNIL                     R0 ; [+19]
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K2 ["animator"]
       19 GETTABLEKS                       R0 R0 K3 ["destroy"]
       21 CALL                             R0 0 0
       22 GETUPVAL                         R0 2
       23 GETTABLEKS                       R0 R0 K4 ["selection"]
       25 GETTABLEKS                       R0 R0 K3 ["destroy"]
       27 CALL                             R0 0 0
       28 GETUPVAL                         R0 3
       29 GETTABLEKS                       R0 R0 K5 ["FFlagAssistantUseNewDMNetworking"]
       31 JUMPIFNOT                        R0 ; [+2]
       32 LOADNIL                          R0
       33 SETUPVAL                         R0 2
       34 LOADB                            R0 1
       35 SETUPVAL                         R0 4
       36 RETURN                           R0 0

PROTO_43:
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
       64 GETTABLEKS                       R7 R2 K7 ["setPlaybackSpeed"]
       66 NEWCLOSURE                       R9 P5
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          UPVAL U7
       72 NAMECALL                         R7 R7 K2 ["Connect"]
       74 CALL                             R7 2 -1
       75 NAMECALL                         R5 R4 K3 ["Add"]
       77 CALL                             R5 -1 0
       78 GETTABLEKS                       R7 R2 K8 ["openInAnimationClipEditor"]
       80 NEWCLOSURE                       R9 P6
       81 CAPTURE                          UPVAL U8
       82 CAPTURE                          VAL R1
       83 NAMECALL                         R7 R7 K2 ["Connect"]
       85 CALL                             R7 2 -1
       86 NAMECALL                         R5 R4 K3 ["Add"]
       88 CALL                             R5 -1 0
       89 GETTABLEKS                       R7 R2 K9 ["beginEditPreview"]
       91 NEWCLOSURE                       R9 P7
       92 CAPTURE                          UPVAL U9
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R3
       95 NAMECALL                         R7 R7 K2 ["Connect"]
       97 CALL                             R7 2 -1
       98 NAMECALL                         R5 R4 K3 ["Add"]
      100 CALL                             R5 -1 0
      101 GETTABLEKS                       R7 R2 K10 ["setEditPreviewReach"]
      103 NEWCLOSURE                       R9 P8
      104 CAPTURE                          UPVAL U10
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R3
      107 NAMECALL                         R7 R7 K2 ["Connect"]
      109 CALL                             R7 2 -1
      110 NAMECALL                         R5 R4 K3 ["Add"]
      112 CALL                             R5 -1 0
      113 GETTABLEKS                       R5 R1 K11 ["Destroying"]
      115 NEWCLOSURE                       R7 P9
      116 CAPTURE                          VAL R4
      117 CAPTURE                          UPVAL U11
      118 CAPTURE                          UPVAL U12
      119 CAPTURE                          UPVAL U13
      120 CAPTURE                          UPVAL U1
      121 NAMECALL                         R5 R5 K12 ["Once"]
      123 CALL                             R5 2 0
      124 RETURN                           R0 0

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
       15 LOADK                            R4 K5 ["MemStorageService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["ServerStorage"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["AssistantUI"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETTABLEKS                       R5 R4 K11 ["Parent"]
       33 GETIMPORT                        R6 K13 [require]
       35 GETTABLEKS                       R7 R5 K14 ["DMNetworking"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K13 [require]
       40 GETTABLEKS                       R8 R4 K15 ["Bridges"]
       42 GETTABLEKS                       R8 R8 K16 ["createAnimationGenBridge"]
       44 GETTABLEKS                       R8 R8 K17 ["AnimationGenBridgeTypes"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K13 [require]
       49 GETTABLEKS                       R9 R4 K18 ["Util"]
       51 GETTABLEKS                       R9 R9 K19 ["AnimationGen"]
       53 GETTABLEKS                       R9 R9 K20 ["AnimationGenConstants"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K13 [require]
       58 GETTABLEKS                       R10 R4 K21 ["Remotes"]
       60 GETTABLEKS                       R10 R10 K22 ["AnimationGenRemotes"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K13 [require]
       65 GETTABLEKS                       R11 R4 K18 ["Util"]
       67 GETTABLEKS                       R11 R11 K19 ["AnimationGen"]
       69 GETTABLEKS                       R11 R11 K23 ["AnimationGenTypes"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K13 [require]
       74 GETTABLEKS                       R12 R4 K18 ["Util"]
       76 GETTABLEKS                       R12 R12 K24 ["Bin"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K13 [require]
       81 GETTABLEKS                       R13 R4 K25 ["Guest"]
       83 GETTABLEKS                       R13 R13 K26 ["Environment"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K13 [require]
       88 GETTABLEKS                       R14 R4 K27 ["Flags"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K13 [require]
       93 GETTABLEKS                       R15 R4 K18 ["Util"]
       95 GETTABLEKS                       R15 R15 K19 ["AnimationGen"]
       97 GETTABLEKS                       R15 R15 K28 ["HostTypes"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K13 [require]
      102 GETTABLEKS                       R16 R4 K18 ["Util"]
      104 GETTABLEKS                       R16 R16 K19 ["AnimationGen"]
      106 GETTABLEKS                       R16 R16 K29 ["ReachSteps"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K13 [require]
      111 GETTABLEKS                       R17 R4 K18 ["Util"]
      113 GETTABLEKS                       R17 R17 K19 ["AnimationGen"]
      115 GETTABLEKS                       R17 R17 K30 ["composeReachClipFromTakes"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K13 [require]
      120 GETTABLEKS                       R18 R4 K18 ["Util"]
      122 GETTABLEKS                       R18 R18 K19 ["AnimationGen"]
      124 GETTABLEKS                       R18 R18 K31 ["createHostAnimator"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K13 [require]
      129 GETTABLEKS                       R19 R4 K18 ["Util"]
      131 GETTABLEKS                       R19 R19 K19 ["AnimationGen"]
      133 GETTABLEKS                       R19 R19 K32 ["createHostGenerator"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K13 [require]
      138 GETTABLEKS                       R20 R4 K18 ["Util"]
      140 GETTABLEKS                       R20 R20 K19 ["AnimationGen"]
      142 GETTABLEKS                       R20 R20 K33 ["createHostSelection"]
      144 CALL                             R19 1 1
      145 GETIMPORT                        R20 K13 [require]
      147 GETTABLEKS                       R21 R4 K18 ["Util"]
      149 GETTABLEKS                       R21 R21 K19 ["AnimationGen"]
      151 GETTABLEKS                       R21 R21 K34 ["insertBlockyRigIntoWorkspace"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K13 [require]
      156 GETTABLEKS                       R22 R4 K18 ["Util"]
      158 GETTABLEKS                       R22 R22 K19 ["AnimationGen"]
      160 GETTABLEKS                       R22 R22 K35 ["isRigInWorkspace"]
      162 CALL                             R21 1 1
      163 GETTABLEKS                       R22 R8 K36 ["RBX_ANIMSAVES_FOLDER_NAME"]
      165 GETTABLEKS                       R23 R8 K37 ["ANIM_SAVES_INSTANCE_NAME"]
      167 NEWTABLE                         R24 0 0
      169 LOADNIL                          R25
      170 LOADNIL                          R26
      171 LOADB                            R27 0
      172 NEWCLOSURE                       R28 P0
      173 CAPTURE                          REF R26
      174 CAPTURE                          REF R27
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R24
      179 DUPCLOSURE                       R29 K38 [PROTO_4]
      180 DUPCLOSURE                       R30 K39 [PROTO_5]
      181 CAPTURE                          VAL R21
      182 DUPCLOSURE                       R31 K40 [PROTO_6]
      183 CAPTURE                          VAL R21
      184 DUPCLOSURE                       R32 K41 [PROTO_7]
      185 CAPTURE                          VAL R15
      186 CAPTURE                          VAL R16
      187 DUPCLOSURE                       R33 K42 [PROTO_8]
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R16
      190 DUPCLOSURE                       R34 K43 [PROTO_9]
      191 CAPTURE                          VAL R28
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R20
      196 CAPTURE                          VAL R29
      197 DUPCLOSURE                       R35 K44 [PROTO_10]
      198 CAPTURE                          VAL R24
      199 CAPTURE                          VAL R28
      200 CAPTURE                          VAL R29
      201 DUPCLOSURE                       R36 K45 [PROTO_11]
      202 CAPTURE                          VAL R24
      203 CAPTURE                          VAL R28
      204 CAPTURE                          VAL R29
      205 DUPCLOSURE                       R37 K46 [PROTO_12]
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R28
      208 CAPTURE                          VAL R29
      209 DUPCLOSURE                       R38 K47 [PROTO_13]
      210 CAPTURE                          VAL R24
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R16
      213 CAPTURE                          VAL R28
      214 CAPTURE                          VAL R29
      215 DUPCLOSURE                       R39 K48 [PROTO_14]
      216 CAPTURE                          VAL R24
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R28
      220 CAPTURE                          VAL R29
      221 DUPCLOSURE                       R40 K49 [PROTO_15]
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R13
      224 DUPCLOSURE                       R41 K50 [PROTO_16]
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R23
      228 DUPCLOSURE                       R42 K51 [PROTO_17]
      229 CAPTURE                          VAL R41
      230 CAPTURE                          VAL R0
      231 NEWCLOSURE                       R43 P15
      232 CAPTURE                          VAL R13
      233 CAPTURE                          VAL R24
      234 CAPTURE                          VAL R40
      235 CAPTURE                          VAL R42
      236 CAPTURE                          VAL R1
      237 CAPTURE                          VAL R2
      238 CAPTURE                          REF R25
      239 NEWCLOSURE                       R44 P16
      240 CAPTURE                          REF R25
      241 CAPTURE                          REF R26
      242 CAPTURE                          VAL R13
      243 DUPTABLE                         R45 K60 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "openInAnimationClipEditor", "beginEditPreview", "setEditPreviewReach"}]
      244 DUPCLOSURE                       R46 K61 [PROTO_23]
      245 CAPTURE                          VAL R34
      246 SETTABLEKS                       R46 R45 K52 ["generateAndSaveAnimationAsync"]
      248 DUPCLOSURE                       R46 K62 [PROTO_24]
      249 CAPTURE                          VAL R21
      250 SETTABLEKS                       R46 R45 K53 ["getSelectedRigRef"]
      252 DUPCLOSURE                       R46 K63 [PROTO_25]
      253 CAPTURE                          VAL R35
      254 SETTABLEKS                       R46 R45 K54 ["setIsPlaying"]
      256 DUPCLOSURE                       R46 K64 [PROTO_26]
      257 CAPTURE                          VAL R36
      258 SETTABLEKS                       R46 R45 K55 ["setCurrentTime"]
      260 DUPCLOSURE                       R46 K65 [PROTO_27]
      261 CAPTURE                          VAL R37
      262 SETTABLEKS                       R46 R45 K56 ["setPlaybackSpeed"]
      264 DUPCLOSURE                       R46 K66 [PROTO_28]
      265 CAPTURE                          VAL R43
      266 SETTABLEKS                       R46 R45 K57 ["openInAnimationClipEditor"]
      268 DUPCLOSURE                       R46 K67 [PROTO_29]
      269 CAPTURE                          VAL R38
      270 SETTABLEKS                       R46 R45 K58 ["beginEditPreview"]
      272 DUPCLOSURE                       R46 K68 [PROTO_30]
      273 CAPTURE                          VAL R39
      274 SETTABLEKS                       R46 R45 K59 ["setEditPreviewReach"]
      276 NEWCLOSURE                       R46 P25
      277 CAPTURE                          VAL R9
      278 CAPTURE                          REF R27
      279 CAPTURE                          VAL R11
      280 CAPTURE                          VAL R34
      281 CAPTURE                          VAL R21
      282 CAPTURE                          VAL R24
      283 CAPTURE                          VAL R28
      284 CAPTURE                          VAL R29
      285 CAPTURE                          VAL R43
      286 CAPTURE                          VAL R38
      287 CAPTURE                          VAL R39
      288 CAPTURE                          REF R25
      289 CAPTURE                          REF R26
      290 CAPTURE                          VAL R13
      291 DUPTABLE                         R47 K72 [{"bridge", "destroy", "connectRemotes"}]
      292 SETTABLEKS                       R45 R47 K69 ["bridge"]
      294 SETTABLEKS                       R44 R47 K70 ["destroy"]
      296 SETTABLEKS                       R46 R47 K71 ["connectRemotes"]
      298 CLOSEUPVALS                      R25
      299 RETURN                           R47 1
