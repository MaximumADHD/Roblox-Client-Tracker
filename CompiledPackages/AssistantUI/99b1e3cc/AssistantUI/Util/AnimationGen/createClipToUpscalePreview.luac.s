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
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLE                         R3 R4 R5
        3 JUMPIFNOTEQ                      R3 R0 ; [+9]
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 1
        7 CALL                             R3 1 0
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K0 ["removeAnimation"]
       11 GETUPVAL                         R4 1
       12 CALL                             R3 1 0
       13 SETTABLEKS                       R1 R0 K1 ["rig"]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R0 K2 ["needsReload"]
       18 GETUPVAL                         R3 0
       19 GETUPVAL                         R4 1
       20 SETTABLE                         R0 R3 R4
       21 GETUPVAL                         R3 4
       22 GETUPVAL                         R4 1
       23 MOVE                             R5 R2
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K3 ["setAnimation"]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 JUMPIFEQKNIL                     R1 ; [+7]
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R4 R4 K4 ["setCurrentTime"]
       35 LOADN                            R5 0
       36 MOVE                             R6 R3
       37 CALL                             R4 2 0
       38 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["rigRemovedConnection"]
        2 JUMPIFEQKNIL                     R2 ; [+9]
        4 GETTABLEKS                       R2 R0 K0 ["rigRemovedConnection"]
        6 NAMECALL                         R2 R2 K1 ["Disconnect"]
        8 CALL                             R2 1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R0 K0 ["rigRemovedConnection"]
       12 SETTABLEKS                       R1 R0 K2 ["rig"]
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R4 1
       16 GETTABLE                         R2 R3 R4
       17 JUMPIFEQKNIL                     R2 ; [+11]
       19 GETTABLEKS                       R3 R2 K2 ["rig"]
       21 JUMPIFEQ                         R3 R1 ; [+7]
       23 GETUPVAL                         R3 2
       24 MOVE                             R4 R2
       25 MOVE                             R5 R1
       26 GETTABLEKS                       R6 R0 K3 ["context"]
       28 CALL                             R3 3 0
       29 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R2 K3 [{"uniqueId", "name", "className"}]
        1 GETTABLEKS                       R3 R1 K4 ["environment"]
        3 GETTABLEKS                       R3 R3 K5 ["instances"]
        5 GETTABLEKS                       R3 R3 K6 ["getUniqueId"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K0 ["uniqueId"]
       11 GETTABLEKS                       R3 R0 K7 ["Name"]
       13 SETTABLEKS                       R3 R2 K1 ["name"]
       15 GETTABLEKS                       R3 R0 K8 ["ClassName"]
       17 SETTABLEKS                       R3 R2 K2 ["className"]
       19 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["rigRemovedConnection"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETTABLEKS                       R1 R0 K0 ["rigRemovedConnection"]
        6 NAMECALL                         R1 R1 K1 ["Disconnect"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["rigRemovedConnection"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K2 ["rig"]
       15 GETUPVAL                         R2 0
       16 GETUPVAL                         R3 1
       17 GETTABLE                         R1 R2 R3
       18 JUMPIFEQKNIL                     R1 ; [+38]
       20 GETTABLEKS                       R2 R1 K2 ["rig"]
       22 JUMPIFEQKNIL                     R2 ; [+34]
       24 GETTABLEKS                       R2 R0 K3 ["context"]
       26 GETUPVAL                         R4 0
       27 GETUPVAL                         R5 1
       28 GETTABLE                         R3 R4 R5
       29 JUMPIFNOTEQ                      R3 R1 ; [+9]
       31 GETUPVAL                         R3 2
       32 GETUPVAL                         R4 1
       33 CALL                             R3 1 0
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K4 ["removeAnimation"]
       37 GETUPVAL                         R4 1
       38 CALL                             R3 1 0
       39 LOADNIL                          R3
       40 SETTABLEKS                       R3 R1 K2 ["rig"]
       42 LOADB                            R3 1
       43 SETTABLEKS                       R3 R1 K5 ["needsReload"]
       45 GETUPVAL                         R3 0
       46 GETUPVAL                         R4 1
       47 SETTABLE                         R1 R3 R4
       48 GETUPVAL                         R3 4
       49 GETUPVAL                         R4 1
       50 MOVE                             R5 R2
       51 CALL                             R3 2 1
       52 GETUPVAL                         R4 3
       53 GETTABLEKS                       R4 R4 K6 ["setAnimation"]
       55 MOVE                             R5 R3
       56 CALL                             R4 1 0
       57 GETTABLEKS                       R1 R0 K3 ["context"]
       59 GETTABLEKS                       R1 R1 K7 ["callbacks"]
       61 GETTABLEKS                       R1 R1 K8 ["clipToUpscalePreviewRigChanged"]
       63 DUPTABLE                         R2 K11 [{["sessionId"], ["rig"] = }]
       64 GETTABLEKS                       R3 R0 K12 ["id"]
       66 SETTABLEKS                       R3 R2 K9 ["sessionId"]
       68 CALL                             R1 1 0
       69 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIF                           R0 ; [+70]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R1 R0 K0 ["rigRemovedConnection"]
        7 JUMPIFEQKNIL                     R1 ; [+9]
        9 GETTABLEKS                       R1 R0 K0 ["rigRemovedConnection"]
       11 NAMECALL                         R1 R1 K1 ["Disconnect"]
       13 CALL                             R1 1 0
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K0 ["rigRemovedConnection"]
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K2 ["rig"]
       20 GETUPVAL                         R2 3
       21 GETUPVAL                         R3 4
       22 GETTABLE                         R1 R2 R3
       23 JUMPIFEQKNIL                     R1 ; [+38]
       25 GETTABLEKS                       R2 R1 K2 ["rig"]
       27 JUMPIFEQKNIL                     R2 ; [+34]
       29 GETTABLEKS                       R2 R0 K3 ["context"]
       31 GETUPVAL                         R4 3
       32 GETUPVAL                         R5 4
       33 GETTABLE                         R3 R4 R5
       34 JUMPIFNOTEQ                      R3 R1 ; [+9]
       36 GETUPVAL                         R3 5
       37 GETUPVAL                         R4 4
       38 CALL                             R3 1 0
       39 GETUPVAL                         R3 6
       40 GETTABLEKS                       R3 R3 K4 ["removeAnimation"]
       42 GETUPVAL                         R4 4
       43 CALL                             R3 1 0
       44 LOADNIL                          R3
       45 SETTABLEKS                       R3 R1 K2 ["rig"]
       47 LOADB                            R3 1
       48 SETTABLEKS                       R3 R1 K5 ["needsReload"]
       50 GETUPVAL                         R3 3
       51 GETUPVAL                         R4 4
       52 SETTABLE                         R1 R3 R4
       53 GETUPVAL                         R3 7
       54 GETUPVAL                         R4 4
       55 MOVE                             R5 R2
       56 CALL                             R3 2 1
       57 GETUPVAL                         R4 6
       58 GETTABLEKS                       R4 R4 K6 ["setAnimation"]
       60 MOVE                             R5 R3
       61 CALL                             R4 1 0
       62 GETTABLEKS                       R1 R0 K3 ["context"]
       64 GETTABLEKS                       R1 R1 K7 ["callbacks"]
       66 GETTABLEKS                       R1 R1 K8 ["clipToUpscalePreviewRigChanged"]
       68 DUPTABLE                         R2 K11 [{["sessionId"], ["rig"] = }]
       69 GETTABLEKS                       R3 R0 K12 ["id"]
       71 SETTABLEKS                       R3 R2 K9 ["sessionId"]
       73 CALL                             R1 1 0
       74 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["rigRemovedConnection"]
        2 JUMPIFEQKNIL                     R2 ; [+9]
        4 GETTABLEKS                       R2 R0 K0 ["rigRemovedConnection"]
        6 NAMECALL                         R2 R2 K1 ["Disconnect"]
        8 CALL                             R2 1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R0 K0 ["rigRemovedConnection"]
       12 SETTABLEKS                       R1 R0 K2 ["rig"]
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R4 1
       16 GETTABLE                         R2 R3 R4
       17 JUMPIFEQKNIL                     R2 ; [+11]
       19 GETTABLEKS                       R3 R2 K2 ["rig"]
       21 JUMPIFEQ                         R3 R1 ; [+7]
       23 GETUPVAL                         R3 2
       24 MOVE                             R4 R2
       25 MOVE                             R5 R1
       26 GETTABLEKS                       R6 R0 K3 ["context"]
       28 CALL                             R3 3 0
       29 GETTABLEKS                       R2 R1 K4 ["AncestryChanged"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 NAMECALL                         R2 R2 K5 ["Connect"]
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R0 K0 ["rigRemovedConnection"]
       45 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 3
        8 CALL                             R1 0 0
        9 GETTABLEKS                       R1 R0 K0 ["rigRemovedConnection"]
       11 JUMPIFEQKNIL                     R1 ; [+9]
       13 GETTABLEKS                       R1 R0 K0 ["rigRemovedConnection"]
       15 NAMECALL                         R1 R1 K1 ["Disconnect"]
       17 CALL                             R1 1 0
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K0 ["rigRemovedConnection"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K2 ["rig"]
       24 GETUPVAL                         R2 4
       25 GETUPVAL                         R3 2
       26 GETTABLE                         R1 R2 R3
       27 JUMPIFEQKNIL                     R1 ; [+38]
       29 GETTABLEKS                       R2 R1 K2 ["rig"]
       31 JUMPIFEQKNIL                     R2 ; [+34]
       33 GETTABLEKS                       R2 R0 K3 ["context"]
       35 GETUPVAL                         R4 4
       36 GETUPVAL                         R5 2
       37 GETTABLE                         R3 R4 R5
       38 JUMPIFNOTEQ                      R3 R1 ; [+9]
       40 GETUPVAL                         R3 1
       41 GETUPVAL                         R4 2
       42 CALL                             R3 1 0
       43 GETUPVAL                         R3 5
       44 GETTABLEKS                       R3 R3 K4 ["removeAnimation"]
       46 GETUPVAL                         R4 2
       47 CALL                             R3 1 0
       48 LOADNIL                          R3
       49 SETTABLEKS                       R3 R1 K2 ["rig"]
       51 LOADB                            R3 1
       52 SETTABLEKS                       R3 R1 K5 ["needsReload"]
       54 GETUPVAL                         R3 4
       55 GETUPVAL                         R4 2
       56 SETTABLE                         R1 R3 R4
       57 GETUPVAL                         R3 6
       58 GETUPVAL                         R4 2
       59 MOVE                             R5 R2
       60 CALL                             R3 2 1
       61 GETUPVAL                         R4 5
       62 GETTABLEKS                       R4 R4 K6 ["setAnimation"]
       64 MOVE                             R5 R3
       65 CALL                             R4 1 0
       66 LOADNIL                          R1
       67 SETUPVAL                         R1 0
       68 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+8]
        3 GETTABLEKS                       R3 R2 K0 ["id"]
        5 JUMPIFNOTEQ                      R3 R0 ; [+4]
        7 SETTABLEKS                       R1 R2 K1 ["context"]
        9 RETURN                           R2 1
       10 GETUPVAL                         R3 0
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 JUMP                             ; [+64]
       14 GETUPVAL                         R4 1
       15 GETUPVAL                         R5 2
       16 CALL                             R4 1 0
       17 GETUPVAL                         R4 3
       18 CALL                             R4 0 0
       19 GETTABLEKS                       R4 R3 K2 ["rigRemovedConnection"]
       21 JUMPIFEQKNIL                     R4 ; [+9]
       23 GETTABLEKS                       R4 R3 K2 ["rigRemovedConnection"]
       25 NAMECALL                         R4 R4 K3 ["Disconnect"]
       27 CALL                             R4 1 0
       28 LOADNIL                          R4
       29 SETTABLEKS                       R4 R3 K2 ["rigRemovedConnection"]
       31 LOADNIL                          R4
       32 SETTABLEKS                       R4 R3 K4 ["rig"]
       34 GETUPVAL                         R5 4
       35 GETUPVAL                         R6 2
       36 GETTABLE                         R4 R5 R6
       37 JUMPIFEQKNIL                     R4 ; [+38]
       39 GETTABLEKS                       R5 R4 K4 ["rig"]
       41 JUMPIFEQKNIL                     R5 ; [+34]
       43 GETTABLEKS                       R5 R3 K1 ["context"]
       45 GETUPVAL                         R7 4
       46 GETUPVAL                         R8 2
       47 GETTABLE                         R6 R7 R8
       48 JUMPIFNOTEQ                      R6 R4 ; [+9]
       50 GETUPVAL                         R6 1
       51 GETUPVAL                         R7 2
       52 CALL                             R6 1 0
       53 GETUPVAL                         R6 5
       54 GETTABLEKS                       R6 R6 K5 ["removeAnimation"]
       56 GETUPVAL                         R7 2
       57 CALL                             R6 1 0
       58 LOADNIL                          R6
       59 SETTABLEKS                       R6 R4 K4 ["rig"]
       61 LOADB                            R6 1
       62 SETTABLEKS                       R6 R4 K6 ["needsReload"]
       64 GETUPVAL                         R6 4
       65 GETUPVAL                         R7 2
       66 SETTABLE                         R4 R6 R7
       67 GETUPVAL                         R6 6
       68 GETUPVAL                         R7 2
       69 MOVE                             R8 R5
       70 CALL                             R6 2 1
       71 GETUPVAL                         R7 5
       72 GETTABLEKS                       R7 R7 K7 ["setAnimation"]
       74 MOVE                             R8 R6
       75 CALL                             R7 1 0
       76 LOADNIL                          R4
       77 SETUPVAL                         R4 0
       78 DUPTABLE                         R3 K12 [{[1], ["context"], ["rig"] = , ["rigRemovedConnection"] = , ["clipLoadToken"] = 0, ["pendingPlayback"] = }]
       79 SETTABLEKS                       R0 R3 K0 ["id"]
       81 SETTABLEKS                       R1 R3 K1 ["context"]
       83 SETUPVAL                         R3 0
       84 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+8]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["id"]
        6 JUMPIFNOTEQ                      R2 R0 ; [+3]
        8 GETUPVAL                         R1 0
        9 RETURN                           R1 1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["sessionId"]
        2 GETUPVAL                         R4 0
        3 JUMPIFEQKNIL                     R4 ; [+9]
        5 GETTABLEKS                       R5 R4 K1 ["id"]
        7 JUMPIFNOTEQ                      R5 R3 ; [+5]
        9 SETTABLEKS                       R1 R4 K2 ["context"]
       11 MOVE                             R2 R4
       12 JUMP                             ; [+75]
       13 GETUPVAL                         R5 0
       14 JUMPIFNOTEQKNIL                  R5 ; [+2]
       16 JUMP                             ; [+64]
       17 GETUPVAL                         R6 1
       18 GETUPVAL                         R7 2
       19 CALL                             R6 1 0
       20 GETUPVAL                         R6 3
       21 CALL                             R6 0 0
       22 GETTABLEKS                       R6 R5 K3 ["rigRemovedConnection"]
       24 JUMPIFEQKNIL                     R6 ; [+9]
       26 GETTABLEKS                       R6 R5 K3 ["rigRemovedConnection"]
       28 NAMECALL                         R6 R6 K4 ["Disconnect"]
       30 CALL                             R6 1 0
       31 LOADNIL                          R6
       32 SETTABLEKS                       R6 R5 K3 ["rigRemovedConnection"]
       34 LOADNIL                          R6
       35 SETTABLEKS                       R6 R5 K5 ["rig"]
       37 GETUPVAL                         R7 4
       38 GETUPVAL                         R8 2
       39 GETTABLE                         R6 R7 R8
       40 JUMPIFEQKNIL                     R6 ; [+38]
       42 GETTABLEKS                       R7 R6 K5 ["rig"]
       44 JUMPIFEQKNIL                     R7 ; [+34]
       46 GETTABLEKS                       R7 R5 K2 ["context"]
       48 GETUPVAL                         R9 4
       49 GETUPVAL                         R10 2
       50 GETTABLE                         R8 R9 R10
       51 JUMPIFNOTEQ                      R8 R6 ; [+9]
       53 GETUPVAL                         R8 1
       54 GETUPVAL                         R9 2
       55 CALL                             R8 1 0
       56 GETUPVAL                         R8 5
       57 GETTABLEKS                       R8 R8 K6 ["removeAnimation"]
       59 GETUPVAL                         R9 2
       60 CALL                             R8 1 0
       61 LOADNIL                          R8
       62 SETTABLEKS                       R8 R6 K5 ["rig"]
       64 LOADB                            R8 1
       65 SETTABLEKS                       R8 R6 K7 ["needsReload"]
       67 GETUPVAL                         R8 4
       68 GETUPVAL                         R9 2
       69 SETTABLE                         R6 R8 R9
       70 GETUPVAL                         R8 6
       71 GETUPVAL                         R9 2
       72 MOVE                             R10 R7
       73 CALL                             R8 2 1
       74 GETUPVAL                         R9 5
       75 GETTABLEKS                       R9 R9 K8 ["setAnimation"]
       77 MOVE                             R10 R8
       78 CALL                             R9 1 0
       79 LOADNIL                          R6
       80 SETUPVAL                         R6 0
       81 DUPTABLE                         R5 K13 [{["id"], ["context"], ["rig"] = , ["rigRemovedConnection"] = , ["clipLoadToken"] = 0, ["pendingPlayback"] = }]
       82 SETTABLEKS                       R3 R5 K1 ["id"]
       84 SETTABLEKS                       R1 R5 K2 ["context"]
       86 SETUPVAL                         R5 0
       87 MOVE                             R2 R5
       88 GETTABLEKS                       R3 R0 K14 ["rigUniqueId"]
       90 JUMPIFEQKNIL                     R3 ; [+3]
       92 JUMPIFNOTEQKS                    R3 K15 [""] ; [+59]
       94 GETTABLEKS                       R4 R2 K3 ["rigRemovedConnection"]
       96 JUMPIFEQKNIL                     R4 ; [+9]
       98 GETTABLEKS                       R4 R2 K3 ["rigRemovedConnection"]
      100 NAMECALL                         R4 R4 K4 ["Disconnect"]
      102 CALL                             R4 1 0
      103 LOADNIL                          R4
      104 SETTABLEKS                       R4 R2 K3 ["rigRemovedConnection"]
      106 LOADNIL                          R4
      107 SETTABLEKS                       R4 R2 K5 ["rig"]
      109 GETUPVAL                         R5 4
      110 GETUPVAL                         R6 2
      111 GETTABLE                         R4 R5 R6
      112 JUMPIFEQKNIL                     R4 ; [+38]
      114 GETTABLEKS                       R5 R4 K5 ["rig"]
      116 JUMPIFEQKNIL                     R5 ; [+34]
      118 GETTABLEKS                       R5 R2 K2 ["context"]
      120 GETUPVAL                         R7 4
      121 GETUPVAL                         R8 2
      122 GETTABLE                         R6 R7 R8
      123 JUMPIFNOTEQ                      R6 R4 ; [+9]
      125 GETUPVAL                         R6 1
      126 GETUPVAL                         R7 2
      127 CALL                             R6 1 0
      128 GETUPVAL                         R6 5
      129 GETTABLEKS                       R6 R6 K6 ["removeAnimation"]
      131 GETUPVAL                         R7 2
      132 CALL                             R6 1 0
      133 LOADNIL                          R6
      134 SETTABLEKS                       R6 R4 K5 ["rig"]
      136 LOADB                            R6 1
      137 SETTABLEKS                       R6 R4 K7 ["needsReload"]
      139 GETUPVAL                         R6 4
      140 GETUPVAL                         R7 2
      141 SETTABLE                         R4 R6 R7
      142 GETUPVAL                         R6 6
      143 GETUPVAL                         R7 2
      144 MOVE                             R8 R5
      145 CALL                             R6 2 1
      146 GETUPVAL                         R7 5
      147 GETTABLEKS                       R7 R7 K8 ["setAnimation"]
      149 MOVE                             R8 R6
      150 CALL                             R7 1 0
      151 RETURN                           R0 0
      152 GETTABLEKS                       R4 R1 K16 ["environment"]
      154 GETTABLEKS                       R4 R4 K17 ["instances"]
      156 GETTABLEKS                       R4 R4 K18 ["getInstanceFromUniqueId"]
      158 MOVE                             R5 R3
      159 CALL                             R4 1 1
      160 JUMPIFEQKNIL                     R4 ; [+5]
      162 GETUPVAL                         R5 7
      163 MOVE                             R6 R4
      164 CALL                             R5 1 1
      165 JUMPIF                           R5 ; [+70]
      166 GETTABLEKS                       R5 R2 K3 ["rigRemovedConnection"]
      168 JUMPIFEQKNIL                     R5 ; [+9]
      170 GETTABLEKS                       R5 R2 K3 ["rigRemovedConnection"]
      172 NAMECALL                         R5 R5 K4 ["Disconnect"]
      174 CALL                             R5 1 0
      175 LOADNIL                          R5
      176 SETTABLEKS                       R5 R2 K3 ["rigRemovedConnection"]
      178 LOADNIL                          R5
      179 SETTABLEKS                       R5 R2 K5 ["rig"]
      181 GETUPVAL                         R6 4
      182 GETUPVAL                         R7 2
      183 GETTABLE                         R5 R6 R7
      184 JUMPIFEQKNIL                     R5 ; [+38]
      186 GETTABLEKS                       R6 R5 K5 ["rig"]
      188 JUMPIFEQKNIL                     R6 ; [+34]
      190 GETTABLEKS                       R6 R2 K2 ["context"]
      192 GETUPVAL                         R8 4
      193 GETUPVAL                         R9 2
      194 GETTABLE                         R7 R8 R9
      195 JUMPIFNOTEQ                      R7 R5 ; [+9]
      197 GETUPVAL                         R7 1
      198 GETUPVAL                         R8 2
      199 CALL                             R7 1 0
      200 GETUPVAL                         R7 5
      201 GETTABLEKS                       R7 R7 K6 ["removeAnimation"]
      203 GETUPVAL                         R8 2
      204 CALL                             R7 1 0
      205 LOADNIL                          R7
      206 SETTABLEKS                       R7 R5 K5 ["rig"]
      208 LOADB                            R7 1
      209 SETTABLEKS                       R7 R5 K7 ["needsReload"]
      211 GETUPVAL                         R7 4
      212 GETUPVAL                         R8 2
      213 SETTABLE                         R5 R7 R8
      214 GETUPVAL                         R7 6
      215 GETUPVAL                         R8 2
      216 MOVE                             R9 R6
      217 CALL                             R7 2 1
      218 GETUPVAL                         R8 5
      219 GETTABLEKS                       R8 R8 K8 ["setAnimation"]
      221 MOVE                             R9 R7
      222 CALL                             R8 1 0
      223 GETTABLEKS                       R5 R2 K2 ["context"]
      225 GETTABLEKS                       R5 R5 K19 ["callbacks"]
      227 GETTABLEKS                       R5 R5 K20 ["clipToUpscalePreviewRigChanged"]
      229 DUPTABLE                         R6 K21 [{[1], ["rig"] = }]
      230 GETTABLEKS                       R7 R2 K1 ["id"]
      232 SETTABLEKS                       R7 R6 K0 ["sessionId"]
      234 CALL                             R5 1 0
      235 RETURN                           R0 0
      236 GETTABLEKS                       R5 R2 K5 ["rig"]
      238 JUMPIFEQ                         R4 R5 ; [+46]
      240 GETTABLEKS                       R5 R2 K3 ["rigRemovedConnection"]
      242 JUMPIFEQKNIL                     R5 ; [+9]
      244 GETTABLEKS                       R5 R2 K3 ["rigRemovedConnection"]
      246 NAMECALL                         R5 R5 K4 ["Disconnect"]
      248 CALL                             R5 1 0
      249 LOADNIL                          R5
      250 SETTABLEKS                       R5 R2 K3 ["rigRemovedConnection"]
      252 SETTABLEKS                       R4 R2 K5 ["rig"]
      254 GETUPVAL                         R6 4
      255 GETUPVAL                         R7 2
      256 GETTABLE                         R5 R6 R7
      257 JUMPIFEQKNIL                     R5 ; [+11]
      259 GETTABLEKS                       R6 R5 K5 ["rig"]
      261 JUMPIFEQ                         R6 R4 ; [+7]
      263 GETUPVAL                         R6 8
      264 MOVE                             R7 R5
      265 MOVE                             R8 R4
      266 GETTABLEKS                       R9 R2 K2 ["context"]
      268 CALL                             R6 3 0
      269 GETTABLEKS                       R5 R4 K22 ["AncestryChanged"]
      271 NEWCLOSURE                       R7 P0
      272 CAPTURE                          UPVAL U7
      273 CAPTURE                          VAL R4
      274 CAPTURE                          VAL R2
      275 CAPTURE                          UPVAL U4
      276 CAPTURE                          UPVAL U2
      277 CAPTURE                          UPVAL U1
      278 CAPTURE                          UPVAL U5
      279 CAPTURE                          UPVAL U6
      280 NAMECALL                         R5 R5 K23 ["Connect"]
      282 CALL                             R5 2 1
      283 SETTABLEKS                       R5 R2 K3 ["rigRemovedConnection"]
      285 RETURN                           R0 0

PROTO_13:
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
       20 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["environment"]
        2 GETUPVAL                         R3 0
        3 LOADB                            R5 0
        4 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
        6 CALL                             R3 2 1
        7 GETTABLEKS                       R4 R2 K2 ["startRecording"]
        9 MOVE                             R5 R3
       10 LOADK                            R6 K3 ["Insert Preview Rig"]
       11 CALL                             R4 2 0
       12 GETUPVAL                         R4 1
       13 GETIMPORT                        R5 K7 [Enum.HumanoidRigType.R15]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R2 K8 ["endRecording"]
       18 MOVE                             R6 R3
       19 CALL                             R5 1 0
       20 MOVE                             R1 R4
       21 JUMPIFEQKNIL                     R1 ; [+21]
       23 DUPTABLE                         R2 K12 [{"uniqueId", "name", "className"}]
       24 GETTABLEKS                       R3 R0 K0 ["environment"]
       26 GETTABLEKS                       R3 R3 K13 ["instances"]
       28 GETTABLEKS                       R3 R3 K14 ["getUniqueId"]
       30 MOVE                             R4 R1
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K9 ["uniqueId"]
       34 GETTABLEKS                       R3 R1 K15 ["Name"]
       36 SETTABLEKS                       R3 R2 K10 ["name"]
       38 GETTABLEKS                       R3 R1 K16 ["ClassName"]
       40 SETTABLEKS                       R3 R2 K11 ["className"]
       42 RETURN                           R2 1
       43 LOADNIL                          R2
       44 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+5]
        3 GETTABLEKS                       R4 R3 K0 ["rig"]
        5 JUMPIFEQKNIL                     R4 ; [+5]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R0
        9 CALL                             R4 1 0
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R3 K1 ["pendingPlayback"]
       13 JUMPIFEQKNIL                     R4 ; [+24]
       15 GETTABLEKS                       R6 R0 K2 ["currentTime"]
       17 JUMPIFEQKNIL                     R6 ; [+4]
       19 GETTABLEKS                       R5 R0 K2 ["currentTime"]
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R5 R4 K2 ["currentTime"]
       24 SETTABLEKS                       R5 R4 K2 ["currentTime"]
       26 GETTABLEKS                       R6 R0 K3 ["isPlaying"]
       28 JUMPIFEQKNIL                     R6 ; [+4]
       30 GETTABLEKS                       R5 R0 K3 ["isPlaying"]
       32 JUMP                             ; [+2]
       33 GETTABLEKS                       R5 R4 K3 ["isPlaying"]
       35 SETTABLEKS                       R5 R4 K3 ["isPlaying"]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R5 R0 K3 ["isPlaying"]
       40 JUMPIFEQKB                       R5 TRUE ; [+9]
       42 GETTABLEKS                       R5 R0 K2 ["currentTime"]
       44 JUMPIFNOTEQKNIL                  R5 ; [+5]
       46 MOVE                             R5 R2
       47 MOVE                             R6 R0
       48 CALL                             R5 1 0
       49 RETURN                           R0 0
       50 GETIMPORT                        R5 K6 [table.clone]
       52 MOVE                             R6 R0
       53 CALL                             R5 1 1
       54 SETTABLEKS                       R5 R3 K1 ["pendingPlayback"]
       56 GETTABLEKS                       R7 R1 K7 ["environment"]
       58 GETUPVAL                         R8 1
       59 LOADB                            R10 0
       60 NAMECALL                         R8 R8 K8 ["GenerateGUID"]
       62 CALL                             R8 2 1
       63 GETTABLEKS                       R9 R7 K9 ["startRecording"]
       65 MOVE                             R10 R8
       66 LOADK                            R11 K10 ["Insert Preview Rig"]
       67 CALL                             R9 2 0
       68 GETUPVAL                         R9 2
       69 GETIMPORT                        R10 K14 [Enum.HumanoidRigType.R15]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R7 K15 ["endRecording"]
       74 MOVE                             R11 R8
       75 CALL                             R10 1 0
       76 MOVE                             R6 R9
       77 LOADNIL                          R7
       78 SETTABLEKS                       R7 R3 K1 ["pendingPlayback"]
       80 GETUPVAL                         R7 0
       81 JUMPIFEQ                         R7 R3 ; [+2]
       83 RETURN                           R0 0
       84 JUMPIFEQKNIL                     R6 ; [+83]
       86 GETTABLEKS                       R7 R3 K0 ["rig"]
       88 JUMPIFNOTEQKNIL                  R7 ; [+79]
       90 GETTABLEKS                       R7 R3 K16 ["rigRemovedConnection"]
       92 JUMPIFEQKNIL                     R7 ; [+9]
       94 GETTABLEKS                       R7 R3 K16 ["rigRemovedConnection"]
       96 NAMECALL                         R7 R7 K17 ["Disconnect"]
       98 CALL                             R7 1 0
       99 LOADNIL                          R7
      100 SETTABLEKS                       R7 R3 K16 ["rigRemovedConnection"]
      102 SETTABLEKS                       R6 R3 K0 ["rig"]
      104 GETUPVAL                         R8 3
      105 GETUPVAL                         R9 4
      106 GETTABLE                         R7 R8 R9
      107 JUMPIFEQKNIL                     R7 ; [+11]
      109 GETTABLEKS                       R8 R7 K0 ["rig"]
      111 JUMPIFEQ                         R8 R6 ; [+7]
      113 GETUPVAL                         R8 5
      114 MOVE                             R9 R7
      115 MOVE                             R10 R6
      116 GETTABLEKS                       R11 R3 K18 ["context"]
      118 CALL                             R8 3 0
      119 GETTABLEKS                       R7 R6 K19 ["AncestryChanged"]
      121 NEWCLOSURE                       R9 P0
      122 CAPTURE                          UPVAL U6
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R3
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          UPVAL U7
      128 CAPTURE                          UPVAL U8
      129 CAPTURE                          UPVAL U9
      130 NAMECALL                         R7 R7 K20 ["Connect"]
      132 CALL                             R7 2 1
      133 SETTABLEKS                       R7 R3 K16 ["rigRemovedConnection"]
      135 GETTABLEKS                       R7 R3 K18 ["context"]
      137 GETTABLEKS                       R7 R7 K21 ["callbacks"]
      139 GETTABLEKS                       R7 R7 K22 ["clipToUpscalePreviewRigChanged"]
      141 DUPTABLE                         R8 K24 [{"sessionId", "rig"}]
      142 GETTABLEKS                       R9 R3 K25 ["id"]
      144 SETTABLEKS                       R9 R8 K23 ["sessionId"]
      146 DUPTABLE                         R9 K29 [{"uniqueId", "name", "className"}]
      147 GETTABLEKS                       R10 R1 K7 ["environment"]
      149 GETTABLEKS                       R10 R10 K30 ["instances"]
      151 GETTABLEKS                       R10 R10 K31 ["getUniqueId"]
      153 MOVE                             R11 R6
      154 CALL                             R10 1 1
      155 SETTABLEKS                       R10 R9 K26 ["uniqueId"]
      157 GETTABLEKS                       R10 R6 K32 ["Name"]
      159 SETTABLEKS                       R10 R9 K27 ["name"]
      161 GETTABLEKS                       R10 R6 K33 ["ClassName"]
      163 SETTABLEKS                       R10 R9 K28 ["className"]
      165 SETTABLEKS                       R9 R8 K0 ["rig"]
      167 CALL                             R7 1 0
      168 MOVE                             R7 R2
      169 MOVE                             R8 R5
      170 CALL                             R7 1 0
      171 RETURN                           R0 0

PROTO_16:
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
       83 GETTABLEKS                       R7 R7 K17 ["create"]
       85 DUPTABLE                         R8 K20 [{["keyframeSequence"], ["isUpscale"] = True}]
       86 SETTABLEKS                       R3 R8 K1 ["keyframeSequence"]
       88 LOADNIL                          R9
       89 CALL                             R7 2 1
       90 MOVE                             R8 R5
       91 MOVE                             R9 R1
       92 CALL                             R6 3 0
       93 DUPTABLE                         R6 K22 [{["ok"] = True, ["duration"]}]
       94 GETTABLEKS                       R7 R3 K23 ["Length"]
       96 SETTABLEKS                       R7 R6 K21 ["duration"]
       98 RETURN                           R6 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
        3 JUMPIF                           R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 RETURN                           R2 1
        9 GETTABLEKS                       R3 R0 K1 ["sessionId"]
       11 GETUPVAL                         R4 2
       12 JUMPIFEQKNIL                     R4 ; [+9]
       14 GETTABLEKS                       R5 R4 K2 ["id"]
       16 JUMPIFNOTEQ                      R5 R3 ; [+5]
       18 SETTABLEKS                       R1 R4 K3 ["context"]
       20 MOVE                             R2 R4
       21 JUMP                             ; [+75]
       22 GETUPVAL                         R5 2
       23 JUMPIFNOTEQKNIL                  R5 ; [+2]
       25 JUMP                             ; [+64]
       26 GETUPVAL                         R6 3
       27 GETUPVAL                         R7 4
       28 CALL                             R6 1 0
       29 GETUPVAL                         R6 5
       30 CALL                             R6 0 0
       31 GETTABLEKS                       R6 R5 K4 ["rigRemovedConnection"]
       33 JUMPIFEQKNIL                     R6 ; [+9]
       35 GETTABLEKS                       R6 R5 K4 ["rigRemovedConnection"]
       37 NAMECALL                         R6 R6 K5 ["Disconnect"]
       39 CALL                             R6 1 0
       40 LOADNIL                          R6
       41 SETTABLEKS                       R6 R5 K4 ["rigRemovedConnection"]
       43 LOADNIL                          R6
       44 SETTABLEKS                       R6 R5 K6 ["rig"]
       46 GETUPVAL                         R7 6
       47 GETUPVAL                         R8 4
       48 GETTABLE                         R6 R7 R8
       49 JUMPIFEQKNIL                     R6 ; [+38]
       51 GETTABLEKS                       R7 R6 K6 ["rig"]
       53 JUMPIFEQKNIL                     R7 ; [+34]
       55 GETTABLEKS                       R7 R5 K3 ["context"]
       57 GETUPVAL                         R9 6
       58 GETUPVAL                         R10 4
       59 GETTABLE                         R8 R9 R10
       60 JUMPIFNOTEQ                      R8 R6 ; [+9]
       62 GETUPVAL                         R8 3
       63 GETUPVAL                         R9 4
       64 CALL                             R8 1 0
       65 GETUPVAL                         R8 7
       66 GETTABLEKS                       R8 R8 K7 ["removeAnimation"]
       68 GETUPVAL                         R9 4
       69 CALL                             R8 1 0
       70 LOADNIL                          R8
       71 SETTABLEKS                       R8 R6 K6 ["rig"]
       73 LOADB                            R8 1
       74 SETTABLEKS                       R8 R6 K8 ["needsReload"]
       76 GETUPVAL                         R8 6
       77 GETUPVAL                         R9 4
       78 SETTABLE                         R6 R8 R9
       79 GETUPVAL                         R8 8
       80 GETUPVAL                         R9 4
       81 MOVE                             R10 R7
       82 CALL                             R8 2 1
       83 GETUPVAL                         R9 7
       84 GETTABLEKS                       R9 R9 K9 ["setAnimation"]
       86 MOVE                             R10 R8
       87 CALL                             R9 1 0
       88 LOADNIL                          R6
       89 SETUPVAL                         R6 2
       90 DUPTABLE                         R5 K14 [{["id"], ["context"], ["rig"] = , ["rigRemovedConnection"] = , ["clipLoadToken"] = 0, ["pendingPlayback"] = }]
       91 SETTABLEKS                       R3 R5 K2 ["id"]
       93 SETTABLEKS                       R1 R5 K3 ["context"]
       95 SETUPVAL                         R5 2
       96 MOVE                             R2 R5
       97 GETTABLEKS                       R3 R2 K11 ["clipLoadToken"]
       99 ADDK                             R3 R3 K15 [1]
      100 SETTABLEKS                       R3 R2 K11 ["clipLoadToken"]
      102 GETTABLEKS                       R3 R2 K11 ["clipLoadToken"]
      104 GETUPVAL                         R4 5
      105 CALL                             R4 0 0
      106 GETUPVAL                         R4 9
      107 JUMPIFEQKNIL                     R4 ; [+20]
      109 GETUPVAL                         R4 9
      110 GETTABLEKS                       R4 R4 K16 ["keyframeSequence"]
      112 NAMECALL                         R4 R4 K17 ["Destroy"]
      114 CALL                             R4 1 0
      115 GETUPVAL                         R4 9
      116 GETTABLEKS                       R4 R4 K18 ["blendRigidSequence"]
      118 JUMPIFEQKNIL                     R4 ; [+7]
      120 GETUPVAL                         R4 9
      121 GETTABLEKS                       R4 R4 K18 ["blendRigidSequence"]
      123 NAMECALL                         R4 R4 K17 ["Destroy"]
      125 CALL                             R4 1 0
      126 LOADNIL                          R4
      127 SETUPVAL                         R4 9
      128 GETTABLEKS                       R4 R0 K19 ["assetId"]
      130 JUMPIFEQKNIL                     R4 ; [+3]
      132 JUMPIFNOTEQKS                    R4 K20 [""] ; [+3]
      134 DUPTABLE                         R5 K25 [{["ok"] = False, ["reason"] = "NoAsset"}]
      135 RETURN                           R5 1
      136 GETUPVAL                         R5 10
      137 MOVE                             R6 R4
      138 CALL                             R5 1 2
      139 GETUPVAL                         R7 2
      140 JUMPIFNOTEQ                      R7 R2 ; [+5]
      142 GETTABLEKS                       R7 R2 K11 ["clipLoadToken"]
      144 JUMPIFEQ                         R7 R3 ; [+8]
      146 JUMPIFEQKNIL                     R5 ; [+4]
      148 NAMECALL                         R7 R5 K17 ["Destroy"]
      150 CALL                             R7 1 0
      151 DUPTABLE                         R7 K26 [{["ok"] = False}]
      152 RETURN                           R7 1
      153 JUMPIFNOTEQKNIL                  R5 ; [+5]
      155 DUPTABLE                         R7 K27 [{["ok"] = False, ["reason"]}]
      156 SETTABLEKS                       R6 R7 K23 ["reason"]
      158 RETURN                           R7 1
      159 GETUPVAL                         R7 11
      160 GETUPVAL                         R8 12
      161 GETTABLEKS                       R8 R8 K28 ["create"]
      163 DUPTABLE                         R9 K31 [{["keyframeSequence"], ["isUpscale"] = True}]
      164 SETTABLEKS                       R5 R9 K16 ["keyframeSequence"]
      166 LOADNIL                          R10
      167 CALL                             R8 2 1
      168 GETTABLEKS                       R9 R2 K6 ["rig"]
      170 MOVE                             R10 R1
      171 CALL                             R7 3 0
      172 DUPTABLE                         R7 K33 [{["ok"] = True, ["duration"]}]
      173 GETTABLEKS                       R8 R5 K34 ["Length"]
      175 SETTABLEKS                       R8 R7 K32 ["duration"]
      177 RETURN                           R7 1

PROTO_18:
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
       50 GETIMPORT                        R5 K12 [os.clock]
       52 CALL                             R5 0 1
       53 GETUPVAL                         R6 4
       54 GETTABLEKS                       R6 R6 K13 ["generateUpscale"]
       56 GETTABLEKS                       R7 R0 K2 ["assetId"]
       58 MOVE                             R8 R1
       59 CALL                             R6 2 1
       60 GETUPVAL                         R9 0
       61 GETUPVAL                         R10 1
       62 GETTABLE                         R8 R9 R10
       63 JUMPIFNOTEQ                      R8 R2 ; [+2]
       65 LOADB                            R7 0 +1
       66 LOADB                            R7 1
       67 GETUPVAL                         R8 5
       68 GETTABLEKS                       R8 R8 K14 ["logUpscalePreviewGenerated"]
       70 GETTABLEKS                       R9 R1 K15 ["environment"]
       72 GETTABLEKS                       R9 R9 K16 ["EventLogger"]
       74 DUPTABLE                         R10 K22 [{"inputAssetId", "rig", "generation", "superseded", "durationMilliseconds"}]
       75 GETTABLEKS                       R11 R0 K2 ["assetId"]
       77 SETTABLEKS                       R11 R10 K17 ["inputAssetId"]
       79 GETTABLEKS                       R11 R2 K18 ["rig"]
       81 SETTABLEKS                       R11 R10 K18 ["rig"]
       83 SETTABLEKS                       R6 R10 K19 ["generation"]
       85 SETTABLEKS                       R7 R10 K20 ["superseded"]
       87 GETIMPORT                        R14 K12 [os.clock]
       89 CALL                             R14 0 1
       90 SUB                              R13 R14 R5
       91 MULK                             R12 R13 K23 [1000]
       92 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       93 GETIMPORT                        R11 K26 [math.floor]
       95 CALL                             R11 1 1
       96 SETTABLEKS                       R11 R10 K21 ["durationMilliseconds"]
       98 CALL                             R8 2 0
       99 GETTABLEKS                       R8 R6 K0 ["keyframeSequence"]
      101 JUMPIF                           R7 ; [+5]
      102 GETTABLEKS                       R9 R6 K27 ["success"]
      104 JUMPIFNOT                        R9 ; [+2]
      105 JUMPIFNOTEQKNIL                  R8 ; [+18]
      107 JUMPIFEQKNIL                     R8 ; [+4]
      109 NAMECALL                         R9 R8 K28 ["Destroy"]
      111 CALL                             R9 1 0
      112 DUPTABLE                         R9 K7 [{["ok"] = False, ["failureReason"]}]
      113 GETTABLEKS                       R10 R6 K6 ["failureReason"]
      115 JUMPIF                           R10 ; [+5]
      116 GETUPVAL                         R10 3
      117 GETTABLEKS                       R10 R10 K8 ["FailureReasons"]
      119 GETTABLEKS                       R10 R10 K9 ["GenerationFailed"]
      121 SETTABLEKS                       R10 R9 K6 ["failureReason"]
      123 RETURN                           R9 1
      124 GETTABLEKS                       R9 R2 K18 ["rig"]
      126 JUMPIFNOT                        R3 ; [+8]
      127 GETUPVAL                         R10 2
      128 JUMPIFEQKNIL                     R10 ; [+6]
      130 GETUPVAL                         R10 2
      131 LOADNIL                          R11
      132 SETTABLEKS                       R11 R10 K1 ["blendRigidSequence"]
      134 JUMP                             ; [+3]
      135 LOADNIL                          R10
      136 SETTABLEKS                       R10 R2 K0 ["keyframeSequence"]
      138 GETUPVAL                         R10 6
      139 CALL                             R10 0 0
      140 GETUPVAL                         R10 2
      141 JUMPIFEQKNIL                     R10 ; [+20]
      143 GETUPVAL                         R10 2
      144 GETTABLEKS                       R10 R10 K0 ["keyframeSequence"]
      146 NAMECALL                         R10 R10 K28 ["Destroy"]
      148 CALL                             R10 1 0
      149 GETUPVAL                         R10 2
      150 GETTABLEKS                       R10 R10 K1 ["blendRigidSequence"]
      152 JUMPIFEQKNIL                     R10 ; [+7]
      154 GETUPVAL                         R10 2
      155 GETTABLEKS                       R10 R10 K1 ["blendRigidSequence"]
      157 NAMECALL                         R10 R10 K28 ["Destroy"]
      159 CALL                             R10 1 0
      160 LOADNIL                          R10
      161 SETUPVAL                         R10 2
      162 DUPTABLE                         R10 K33 [{"assetId", "keyframeSequence", "blendRigidSequence", "name", "generationId", "contextId", "fbxFilePath"}]
      163 GETTABLEKS                       R11 R0 K2 ["assetId"]
      165 SETTABLEKS                       R11 R10 K2 ["assetId"]
      167 SETTABLEKS                       R8 R10 K0 ["keyframeSequence"]
      169 SETTABLEKS                       R4 R10 K1 ["blendRigidSequence"]
      171 GETTABLEKS                       R11 R6 K29 ["name"]
      173 JUMPIF                           R11 ; [+2]
      174 GETTABLEKS                       R11 R8 K34 ["Name"]
      176 SETTABLEKS                       R11 R10 K29 ["name"]
      178 GETTABLEKS                       R11 R6 K30 ["generationId"]
      180 SETTABLEKS                       R11 R10 K30 ["generationId"]
      182 GETTABLEKS                       R11 R6 K31 ["contextId"]
      184 SETTABLEKS                       R11 R10 K31 ["contextId"]
      186 GETTABLEKS                       R11 R6 K32 ["fbxFilePath"]
      188 SETTABLEKS                       R11 R10 K32 ["fbxFilePath"]
      190 SETUPVAL                         R10 2
      191 GETUPVAL                         R11 7
      192 GETTABLEKS                       R11 R11 K35 ["create"]
      194 DUPTABLE                         R12 K38 [{[1], ["isUpscale"] = True}]
      195 SETTABLEKS                       R8 R12 K0 ["keyframeSequence"]
      197 LOADNIL                          R13
      198 CALL                             R11 2 1
      199 SETTABLEKS                       R4 R11 K1 ["blendRigidSequence"]
      201 GETUPVAL                         R12 8
      202 GETTABLEKS                       R12 R12 K39 ["resolve"]
      204 CALL                             R12 0 1
      205 SETTABLEKS                       R12 R11 K40 ["settings"]
      207 GETUPVAL                         R12 9
      208 MOVE                             R13 R11
      209 MOVE                             R14 R9
      210 MOVE                             R15 R1
      211 CALL                             R12 3 0
      212 DUPTABLE                         R12 K41 [{["ok"] = True}]
      213 RETURN                           R12 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantAnimationGenDisablePreviewSelectionFollowing"]
        3 JUMPIF                           R1 ; [+20]
        4 GETTABLEKS                       R1 R0 K1 ["previewId"]
        6 GETUPVAL                         R2 1
        7 JUMPIFEQ                         R1 R2 ; [+2]
        9 RETURN                           R0 0
       10 LOADNIL                          R1
       11 SETUPVAL                         R1 1
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 3
       14 GETTABLE                         R1 R2 R3
       15 JUMPIFNOTEQKNIL                  R1 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 4
       19 GETUPVAL                         R2 3
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 5
       22 CALL                             R1 0 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R2 R0 K2 ["sessionId"]
       26 GETUPVAL                         R3 6
       27 JUMPIFEQKNIL                     R3 ; [+8]
       29 GETUPVAL                         R3 6
       30 GETTABLEKS                       R3 R3 K3 ["id"]
       32 JUMPIFNOTEQ                      R3 R2 ; [+3]
       34 GETUPVAL                         R1 6
       35 JUMP                             ; [+1]
       36 LOADNIL                          R1
       37 JUMPIFNOTEQKNIL                  R1 ; [+2]
       39 RETURN                           R0 0
       40 GETTABLEKS                       R2 R1 K4 ["clipLoadToken"]
       42 ADDK                             R2 R2 K5 [1]
       43 SETTABLEKS                       R2 R1 K4 ["clipLoadToken"]
       45 GETUPVAL                         R2 4
       46 GETUPVAL                         R3 3
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 5
       49 CALL                             R2 0 0
       50 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["sessionId"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQKNIL                     R3 ; [+8]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["id"]
        8 JUMPIFNOTEQ                      R3 R2 ; [+3]
       10 GETUPVAL                         R1 0
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 JUMPIFEQKNIL                     R1 ; [+69]
       15 GETUPVAL                         R1 0
       16 JUMPIFNOTEQKNIL                  R1 ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 1
       20 GETUPVAL                         R3 2
       21 CALL                             R2 1 0
       22 GETUPVAL                         R2 3
       23 CALL                             R2 0 0
       24 GETTABLEKS                       R2 R1 K2 ["rigRemovedConnection"]
       26 JUMPIFEQKNIL                     R2 ; [+9]
       28 GETTABLEKS                       R2 R1 K2 ["rigRemovedConnection"]
       30 NAMECALL                         R2 R2 K3 ["Disconnect"]
       32 CALL                             R2 1 0
       33 LOADNIL                          R2
       34 SETTABLEKS                       R2 R1 K2 ["rigRemovedConnection"]
       36 LOADNIL                          R2
       37 SETTABLEKS                       R2 R1 K4 ["rig"]
       39 GETUPVAL                         R3 4
       40 GETUPVAL                         R4 2
       41 GETTABLE                         R2 R3 R4
       42 JUMPIFEQKNIL                     R2 ; [+38]
       44 GETTABLEKS                       R3 R2 K4 ["rig"]
       46 JUMPIFEQKNIL                     R3 ; [+34]
       48 GETTABLEKS                       R3 R1 K5 ["context"]
       50 GETUPVAL                         R5 4
       51 GETUPVAL                         R6 2
       52 GETTABLE                         R4 R5 R6
       53 JUMPIFNOTEQ                      R4 R2 ; [+9]
       55 GETUPVAL                         R4 1
       56 GETUPVAL                         R5 2
       57 CALL                             R4 1 0
       58 GETUPVAL                         R4 5
       59 GETTABLEKS                       R4 R4 K6 ["removeAnimation"]
       61 GETUPVAL                         R5 2
       62 CALL                             R4 1 0
       63 LOADNIL                          R4
       64 SETTABLEKS                       R4 R2 K4 ["rig"]
       66 LOADB                            R4 1
       67 SETTABLEKS                       R4 R2 K7 ["needsReload"]
       69 GETUPVAL                         R4 4
       70 GETUPVAL                         R5 2
       71 SETTABLE                         R2 R4 R5
       72 GETUPVAL                         R4 6
       73 GETUPVAL                         R5 2
       74 MOVE                             R6 R3
       75 CALL                             R4 2 1
       76 GETUPVAL                         R5 5
       77 GETTABLEKS                       R5 R5 K8 ["setAnimation"]
       79 MOVE                             R6 R4
       80 CALL                             R5 1 0
       81 LOADNIL                          R2
       82 SETUPVAL                         R2 0
       83 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 JUMP                             ; [+64]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 3
        8 CALL                             R1 0 0
        9 GETTABLEKS                       R1 R0 K0 ["rigRemovedConnection"]
       11 JUMPIFEQKNIL                     R1 ; [+9]
       13 GETTABLEKS                       R1 R0 K0 ["rigRemovedConnection"]
       15 NAMECALL                         R1 R1 K1 ["Disconnect"]
       17 CALL                             R1 1 0
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K0 ["rigRemovedConnection"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K2 ["rig"]
       24 GETUPVAL                         R2 4
       25 GETUPVAL                         R3 2
       26 GETTABLE                         R1 R2 R3
       27 JUMPIFEQKNIL                     R1 ; [+38]
       29 GETTABLEKS                       R2 R1 K2 ["rig"]
       31 JUMPIFEQKNIL                     R2 ; [+34]
       33 GETTABLEKS                       R2 R0 K3 ["context"]
       35 GETUPVAL                         R4 4
       36 GETUPVAL                         R5 2
       37 GETTABLE                         R3 R4 R5
       38 JUMPIFNOTEQ                      R3 R1 ; [+9]
       40 GETUPVAL                         R3 1
       41 GETUPVAL                         R4 2
       42 CALL                             R3 1 0
       43 GETUPVAL                         R3 5
       44 GETTABLEKS                       R3 R3 K4 ["removeAnimation"]
       46 GETUPVAL                         R4 2
       47 CALL                             R3 1 0
       48 LOADNIL                          R3
       49 SETTABLEKS                       R3 R1 K2 ["rig"]
       51 LOADB                            R3 1
       52 SETTABLEKS                       R3 R1 K5 ["needsReload"]
       54 GETUPVAL                         R3 4
       55 GETUPVAL                         R4 2
       56 SETTABLE                         R1 R3 R4
       57 GETUPVAL                         R3 6
       58 GETUPVAL                         R4 2
       59 MOVE                             R5 R2
       60 CALL                             R3 2 1
       61 GETUPVAL                         R4 5
       62 GETTABLEKS                       R4 R4 K6 ["setAnimation"]
       64 MOVE                             R5 R3
       65 CALL                             R4 1 0
       66 LOADNIL                          R1
       67 SETUPVAL                         R1 0
       68 LOADNIL                          R0
       69 SETUPVAL                         R0 7
       70 GETUPVAL                         R0 3
       71 CALL                             R0 0 0
       72 GETUPVAL                         R0 8
       73 JUMPIFEQKNIL                     R0 ; [+20]
       75 GETUPVAL                         R0 8
       76 GETTABLEKS                       R0 R0 K7 ["keyframeSequence"]
       78 NAMECALL                         R0 R0 K8 ["Destroy"]
       80 CALL                             R0 1 0
       81 GETUPVAL                         R0 8
       82 GETTABLEKS                       R0 R0 K9 ["blendRigidSequence"]
       84 JUMPIFEQKNIL                     R0 ; [+7]
       86 GETUPVAL                         R0 8
       87 GETTABLEKS                       R0 R0 K9 ["blendRigidSequence"]
       89 NAMECALL                         R0 R0 K8 ["Destroy"]
       91 CALL                             R0 1 0
       92 LOADNIL                          R0
       93 SETUPVAL                         R0 8
       94 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["sharedStates"]
        2 GETTABLEKS                       R2 R0 K1 ["animator"]
        4 GETTABLEKS                       R3 R0 K2 ["toAnimatorContext"]
        6 GETTABLEKS                       R4 R0 K3 ["resetRigPose"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          REF R6
       13 NEWCLOSURE                       R9 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 NEWCLOSURE                       R10 P2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          REF R6
       25 NEWCLOSURE                       R11 P3
       26 CAPTURE                          REF R6
       27 NEWCLOSURE                       R12 P4
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R9
       31 DUPCLOSURE                       R13 K4 [PROTO_5]
       32 NEWCLOSURE                       R14 P6
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 NEWCLOSURE                       R15 P7
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R9
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 NEWCLOSURE                       R16 P8
       47 CAPTURE                          REF R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 NEWCLOSURE                       R17 P9
       55 CAPTURE                          REF R5
       56 CAPTURE                          VAL R4
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 NEWCLOSURE                       R18 P10
       63 CAPTURE                          REF R5
       64 NEWCLOSURE                       R19 P11
       65 CAPTURE                          REF R5
       66 CAPTURE                          VAL R4
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          VAL R9
       74 DUPCLOSURE                       R20 K5 [PROTO_13]
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          UPVAL U4
       77 DUPCLOSURE                       R21 K6 [PROTO_14]
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          UPVAL U4
       80 NEWCLOSURE                       R22 P14
       81 CAPTURE                          REF R5
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R1
       85 CAPTURE                          UPVAL U0
       86 CAPTURE                          VAL R9
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R3
       91 NEWCLOSURE                       R23 P15
       92 CAPTURE                          REF R7
       93 CAPTURE                          VAL R10
       94 CAPTURE                          REF R6
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          VAL R9
       98 CAPTURE                          UPVAL U1
       99 NEWCLOSURE                       R24 P16
      100 CAPTURE                          UPVAL U6
      101 CAPTURE                          VAL R23
      102 CAPTURE                          REF R5
      103 CAPTURE                          VAL R4
      104 CAPTURE                          UPVAL U0
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R3
      109 CAPTURE                          REF R6
      110 CAPTURE                          UPVAL U5
      111 CAPTURE                          VAL R9
      112 CAPTURE                          UPVAL U1
      113 NEWCLOSURE                       R25 P17
      114 CAPTURE                          VAL R1
      115 CAPTURE                          UPVAL U0
      116 CAPTURE                          REF R6
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U8
      120 CAPTURE                          VAL R10
      121 CAPTURE                          UPVAL U1
      122 CAPTURE                          UPVAL U9
      123 CAPTURE                          VAL R9
      124 NEWCLOSURE                       R26 P18
      125 CAPTURE                          VAL R1
      126 CAPTURE                          UPVAL U0
      127 CAPTURE                          REF R6
      128 CAPTURE                          UPVAL U9
      129 CAPTURE                          UPVAL U10
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R2
      132 NEWCLOSURE                       R27 P19
      133 CAPTURE                          REF R7
      134 CAPTURE                          VAL R1
      135 CAPTURE                          UPVAL U0
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R10
      138 NEWCLOSURE                       R28 P20
      139 CAPTURE                          UPVAL U6
      140 CAPTURE                          REF R7
      141 CAPTURE                          VAL R1
      142 CAPTURE                          UPVAL U0
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R10
      145 CAPTURE                          REF R5
      146 NEWCLOSURE                       R29 P21
      147 CAPTURE                          REF R5
      148 CAPTURE                          VAL R4
      149 CAPTURE                          UPVAL U0
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R3
      154 DUPTABLE                         R30 K17 [{"setClipToUpscalePreviewRig", "insertClipToUpscalePreviewRigAsync", "requestPlaybackAsync", "previewClipToUpscaleAsync", "clearClipToUpscalePreview", "endClipToUpscalePreviewSession", "generateUpscalePreviewAsync", "updateUpscalePreview", "takeCandidate", "destroy"}]
      155 SETTABLEKS                       R19 R30 K7 ["setClipToUpscalePreviewRig"]
      157 SETTABLEKS                       R21 R30 K8 ["insertClipToUpscalePreviewRigAsync"]
      159 SETTABLEKS                       R22 R30 K9 ["requestPlaybackAsync"]
      161 SETTABLEKS                       R24 R30 K10 ["previewClipToUpscaleAsync"]
      163 SETTABLEKS                       R28 R30 K11 ["clearClipToUpscalePreview"]
      165 SETTABLEKS                       R29 R30 K12 ["endClipToUpscalePreviewSession"]
      167 SETTABLEKS                       R25 R30 K13 ["generateUpscalePreviewAsync"]
      169 SETTABLEKS                       R26 R30 K14 ["updateUpscalePreview"]
      171 NEWCLOSURE                       R31 P22
      172 CAPTURE                          REF R6
      173 CAPTURE                          VAL R1
      174 CAPTURE                          UPVAL U0
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R10
      177 SETTABLEKS                       R31 R30 K15 ["takeCandidate"]
      179 NEWCLOSURE                       R31 P23
      180 CAPTURE                          REF R5
      181 CAPTURE                          VAL R4
      182 CAPTURE                          UPVAL U0
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R3
      187 CAPTURE                          REF R7
      188 CAPTURE                          REF R6
      189 SETTABLEKS                       R31 R30 K16 ["destroy"]
      191 CLOSEUPVALS                      R5
      192 RETURN                           R30 1

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
       15 GETTABLEKS                       R3 R1 K10 ["Flags"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R4 R1 K11 ["Util"]
       22 GETTABLEKS                       R4 R4 K12 ["AnimationGen"]
       24 GETTABLEKS                       R4 R4 K13 ["AnimationGenConstants"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K14 ["Remotes"]
       31 GETTABLEKS                       R5 R5 K15 ["AnimationGenRemotes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K11 ["Util"]
       38 GETTABLEKS                       R6 R6 K12 ["AnimationGen"]
       40 GETTABLEKS                       R6 R6 K16 ["AnimationGenTelemetry"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K11 ["Util"]
       47 GETTABLEKS                       R7 R7 K12 ["AnimationGen"]
       49 GETTABLEKS                       R7 R7 K17 ["AnimationGenTypes"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K11 ["Util"]
       56 GETTABLEKS                       R8 R8 K12 ["AnimationGen"]
       58 GETTABLEKS                       R8 R8 K18 ["State"]
       60 GETTABLEKS                       R8 R8 K19 ["AnimationPlayerParameters"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R1 K11 ["Util"]
       67 GETTABLEKS                       R9 R9 K12 ["AnimationGen"]
       69 GETTABLEKS                       R9 R9 K18 ["State"]
       71 GETTABLEKS                       R9 R9 K20 ["AnimationPlayerState"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R10 R1 K11 ["Util"]
       78 GETTABLEKS                       R10 R10 K12 ["AnimationGen"]
       80 GETTABLEKS                       R10 R10 K21 ["HostTypes"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K9 [require]
       85 GETTABLEKS                       R11 R1 K22 ["Types"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K9 [require]
       90 GETTABLEKS                       R12 R1 K11 ["Util"]
       92 GETTABLEKS                       R12 R12 K12 ["AnimationGen"]
       94 GETTABLEKS                       R12 R12 K23 ["UpscaleSettings"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K9 [require]
       99 GETTABLEKS                       R13 R1 K11 ["Util"]
      101 GETTABLEKS                       R13 R13 K12 ["AnimationGen"]
      103 GETTABLEKS                       R13 R13 K24 ["insertBlockyRigIntoWorkspace"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K9 [require]
      108 GETTABLEKS                       R14 R1 K11 ["Util"]
      110 GETTABLEKS                       R14 R14 K12 ["AnimationGen"]
      112 GETTABLEKS                       R14 R14 K25 ["isRigInWorkspace"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K9 [require]
      117 GETTABLEKS                       R15 R1 K11 ["Util"]
      119 GETTABLEKS                       R15 R15 K12 ["AnimationGen"]
      121 GETTABLEKS                       R15 R15 K26 ["loadRigidR15FromR6Asset"]
      123 CALL                             R14 1 1
      124 GETTABLEKS                       R15 R3 K27 ["CLIP_TO_UPSCALE_PREVIEW_CONTENT_ID"]
      126 DUPCLOSURE                       R16 K28 [PROTO_25]
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R7
      138 RETURN                           R16 1
