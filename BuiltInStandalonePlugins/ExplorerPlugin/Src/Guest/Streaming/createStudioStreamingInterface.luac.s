PROTO_0:
        0 LOADK                            R0 K0 ["Received update from RCC"]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 RETURN                           R0 3

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 JUMPIFNOTEQKS                    R0 K0 ["childAdded"] ; [+7]
        7 GETUPVAL                         R2 1
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K1 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKS                    R0 K2 ["childRemoved"] ; [+6]
       15 GETUPVAL                         R2 2
       16 MOVE                             R4 R1
       17 NAMECALL                         R2 R2 K1 ["Fire"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"id", "depth"}]
        2 SETTABLEKS                       R0 R4 K0 ["id"]
        4 SETTABLEKS                       R1 R4 K1 ["depth"]
        6 NAMECALL                         R2 R2 K3 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"id", "depth"}]
        2 SETTABLEKS                       R0 R4 K0 ["id"]
        4 SETTABLEKS                       R1 R4 K1 ["depth"]
        6 NAMECALL                         R2 R2 K3 ["Fire"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Stop"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K1 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["startTrackingInstance"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["SendUpdate"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 LOADN                            R4 255
        3 NAMECALL                         R1 R1 K0 ["PinStreamingForInstanceByUniqueId"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["IsStreamedOut"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["NetworkClient"]
        3 NAMECALL                         R0 R0 K3 ["FindService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K4 ["LocalPlayer"]
        9 JUMPIFEQKNIL                     R1 ; [+8]
       11 JUMPIFEQKNIL                     R0 ; [+6]
       13 GETUPVAL                         R2 1
       14 NAMECALL                         R2 R2 K5 ["IsEdit"]
       16 CALL                             R2 1 1
       17 JUMPIF                           R2 ; [+5]
       18 GETUPVAL                         R2 2
       19 LOADK                            R3 K6 ["Couldn't start streaming interface, not Team Create"]
       20 CALL                             R2 1 0
       21 LOADNIL                          R2
       22 RETURN                           R2 1
       23 LOADNIL                          R2
       24 NAMECALL                         R3 R0 K7 ["GetChildren"]
       26 CALL                             R3 1 3
       27 FORGPREP                         R3
       28 LOADK                            R10 K8 ["ClientReplicator"]
       29 NAMECALL                         R8 R7 K9 ["IsA"]
       31 CALL                             R8 2 1
       32 JUMPIFNOT                        R8 ; [+7]
       33 NAMECALL                         R8 R7 K10 ["GetPlayer"]
       35 CALL                             R8 1 1
       36 JUMPIFNOTEQ                      R8 R1 ; [+3]
       38 MOVE                             R2 R7
       39 JUMP                             ; [+2]
       40 FORGLOOP                         R3 2 ; [-13]
       42 JUMPIFNOTEQKNIL                  R2 ; [+7]
       44 GETUPVAL                         R3 2
       45 LOADK                            R4 K11 ["Couldn't start streaming interface, couldn't find our own replicator"]
       46 CALL                             R3 1 0
       47 LOADNIL                          R3
       48 CLOSEUPVALS                      R2
       49 RETURN                           R3 1
       50 GETUPVAL                         R3 2
       51 LOADK                            R4 K12 ["Starting Studio streaming interface"]
       52 CALL                             R3 1 0
       53 GETUPVAL                         R5 3
       54 GETTABLEKS                       R4 R5 K13 ["Signal"]
       56 GETTABLEKS                       R3 R4 K14 ["new"]
       58 CALL                             R3 0 1
       59 GETUPVAL                         R6 3
       60 GETTABLEKS                       R5 R6 K13 ["Signal"]
       62 GETTABLEKS                       R4 R5 K14 ["new"]
       64 CALL                             R4 0 1
       65 GETUPVAL                         R7 3
       66 GETTABLEKS                       R6 R7 K13 ["Signal"]
       68 GETTABLEKS                       R5 R6 K14 ["new"]
       70 CALL                             R5 0 1
       71 GETUPVAL                         R8 3
       72 GETTABLEKS                       R7 R8 K13 ["Signal"]
       74 GETTABLEKS                       R6 R7 K14 ["new"]
       76 CALL                             R6 0 1
       77 GETUPVAL                         R7 4
       78 GETUPVAL                         R11 5
       79 GETTABLEKS                       R10 R11 K15 ["ExplorerRemoteCommand"]
       81 GETTABLEKS                       R9 R10 K16 ["Value"]
       83 NAMECALL                         R7 R7 K17 ["ExecuteCommand"]
       85 CALL                             R7 2 1
       86 GETTABLEKS                       R8 R7 K18 ["ReceivedUpdate"]
       88 NEWCLOSURE                       R10 P0
       89 CAPTURE                          UPVAL U2
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R4
       92 NAMECALL                         R8 R8 K19 ["Connect"]
       94 CALL                             R8 2 0
       95 GETTABLEKS                       R8 R1 K20 ["InstancePinned"]
       97 NEWCLOSURE                       R10 P1
       98 CAPTURE                          VAL R5
       99 NAMECALL                         R8 R8 K19 ["Connect"]
      101 CALL                             R8 2 1
      102 GETTABLEKS                       R9 R1 K21 ["InstanceUnpinned"]
      104 NEWCLOSURE                       R11 P2
      105 CAPTURE                          VAL R6
      106 NAMECALL                         R9 R9 K19 ["Connect"]
      108 CALL                             R9 2 1
      109 DUPTABLE                         R10 K30 [{"destroy", "startTrackingInstanceForStreaming", "requestStreamIn", "isInstanceStreamedOut", "childAddedSignal", "childRemovedSignal", "pinRequestedSignal", "unpinRequestedSignal"}]
      110 NEWCLOSURE                       R11 P3
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R9
      114 SETTABLEKS                       R11 R10 K22 ["destroy"]
      116 NEWCLOSURE                       R11 P4
      117 CAPTURE                          VAL R7
      118 SETTABLEKS                       R11 R10 K23 ["startTrackingInstanceForStreaming"]
      120 NEWCLOSURE                       R11 P5
      121 CAPTURE                          VAL R1
      122 SETTABLEKS                       R11 R10 K24 ["requestStreamIn"]
      124 NEWCLOSURE                       R11 P6
      125 CAPTURE                          REF R2
      126 SETTABLEKS                       R11 R10 K25 ["isInstanceStreamedOut"]
      128 SETTABLEKS                       R3 R10 K26 ["childAddedSignal"]
      130 SETTABLEKS                       R4 R10 K27 ["childRemovedSignal"]
      132 SETTABLEKS                       R5 R10 K28 ["pinRequestedSignal"]
      134 SETTABLEKS                       R6 R10 K29 ["unpinRequestedSignal"]
      136 CLOSEUPVALS                      R2
      137 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RemoteCommandService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["RunService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["ExplorerPlugin"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R6 R3 K12 ["Packages"]
       29 GETTABLEKS                       R5 R6 K13 ["Explorer"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R6 R4 K14 ["Util"]
       34 GETTABLEKS                       R5 R6 K15 ["createDebugLogger"]
       36 LOADK                            R6 K16 ["createStudioStreamingInterface"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K17 [PROTO_8]
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 RETURN                           R6 1
