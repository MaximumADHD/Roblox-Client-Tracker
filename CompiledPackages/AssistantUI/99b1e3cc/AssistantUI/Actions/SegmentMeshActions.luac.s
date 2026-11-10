PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildServices"]
        3 DUPTABLE                         R2 K2 [{"environment"}]
        4 SETTABLEKS                       R0 R2 K1 ["environment"]
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SegmentMeshOps"]
        3 GETTABLEKS                       R2 R2 K1 ["generateSegmentMeshAsync"]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["buildServices"]
        9 DUPTABLE                         R5 K4 [{"environment"}]
       10 SETTABLEKS                       R1 R5 K3 ["environment"]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 2
       14 CALL                             R2 3 -1
       15 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SegmentMeshOps"]
        3 GETTABLEKS                       R1 R1 K1 ["cancelSegmentationAsync"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SegmentMeshOps"]
        3 GETTABLEKS                       R2 R2 K1 ["insertSegmentedModelAsync"]
        5 DUPTABLE                         R3 K7 [{["requestId"], ["replaceInPlace"] = True, ["cleanupWorldWrapper"], ["useSourceMeshCFrameForPivot"]}]
        6 GETTABLEKS                       R4 R0 K2 ["requestId"]
        8 SETTABLEKS                       R4 R3 K2 ["requestId"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K8 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
       13 SETTABLEKS                       R4 R3 K5 ["cleanupWorldWrapper"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K9 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
       18 SETTABLEKS                       R4 R3 K6 ["useSourceMeshCFrameForPivot"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K10 ["buildServices"]
       23 DUPTABLE                         R5 K12 [{"environment"}]
       24 SETTABLEKS                       R1 R5 K11 ["environment"]
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 3
       28 CALL                             R2 3 0
       29 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Selection"]
        3 GETTABLEKS                       R1 R1 K1 ["getSelectedMeshRef"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildServices"]
        3 DUPTABLE                         R3 K2 [{"environment"}]
        4 SETTABLEKS                       R1 R3 K1 ["environment"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K3 ["instances"]
        9 GETTABLEKS                       R3 R3 K4 ["getInstanceFromUniqueId"]
       11 GETTABLEKS                       R4 R0 K5 ["uniqueId"]
       13 CALL                             R3 1 1
       14 LOADB                            R4 0
       15 JUMPIFEQKNIL                     R3 ; [+8]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K6 ["Selection"]
       20 GETTABLEKS                       R4 R4 K7 ["isSegmentableInstance"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["initArgs"]
        3 GETTABLEKS                       R2 R2 K1 ["environment"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 GETTABLEKS                       R3 R1 K0 ["initArgs"]
        2 GETTABLEKS                       R3 R3 K1 ["environment"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["buildServices"]
        7 DUPTABLE                         R5 K3 [{"environment"}]
        8 SETTABLEKS                       R3 R5 K1 ["environment"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R4 K4 ["instances"]
       13 GETTABLEKS                       R5 R5 K5 ["getInstanceFromUniqueId"]
       15 GETTABLEKS                       R6 R0 K6 ["uniqueId"]
       17 CALL                             R5 1 1
       18 LOADB                            R2 0
       19 JUMPIFEQKNIL                     R5 ; [+9]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K7 ["Selection"]
       24 GETTABLEKS                       R6 R6 K8 ["isSegmentableInstance"]
       26 MOVE                             R7 R5
       27 CALL                             R6 1 1
       28 MOVE                             R2 R6
       29 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["run"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["SegmentMeshOps"]
        4 GETTABLEKS                       R1 R1 K1 ["cancelSegmentationAsync"]
        6 MOVE                             R2 R0
        7 GETUPVAL                         R3 2
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["cancel"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["SegmentMeshOps"]
        4 GETTABLEKS                       R3 R3 K1 ["insertSegmentedModelAsync"]
        6 DUPTABLE                         R4 K7 [{["requestId"], ["replaceInPlace"] = True, ["cleanupWorldWrapper"], ["useSourceMeshCFrameForPivot"]}]
        7 GETTABLEKS                       R5 R1 K2 ["requestId"]
        9 SETTABLEKS                       R5 R4 K2 ["requestId"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K8 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
       14 SETTABLEKS                       R5 R4 K5 ["cleanupWorldWrapper"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K9 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
       19 SETTABLEKS                       R5 R4 K6 ["useSourceMeshCFrameForPivot"]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K10 ["buildServices"]
       24 DUPTABLE                         R6 K12 [{"environment"}]
       25 SETTABLEKS                       R2 R6 K11 ["environment"]
       27 CALL                             R5 1 1
       28 GETUPVAL                         R6 4
       29 CALL                             R3 3 0
       30 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["buildServices"]
        4 DUPTABLE                         R5 K2 [{"environment"}]
        5 SETTABLEKS                       R3 R5 K1 ["environment"]
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R5 R4 K3 ["instances"]
       10 GETTABLEKS                       R5 R5 K4 ["getInstanceFromUniqueId"]
       12 GETTABLEKS                       R6 R1 K5 ["uniqueId"]
       14 CALL                             R5 1 1
       15 LOADB                            R2 0
       16 JUMPIFEQKNIL                     R5 ; [+9]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K6 ["Selection"]
       21 GETTABLEKS                       R6 R6 K7 ["isSegmentableInstance"]
       23 MOVE                             R7 R5
       24 CALL                             R6 1 1
       25 MOVE                             R2 R6
       26 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K0 ["new"]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R7 R2 K1 ["generateSegmentMesh"]
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 NAMECALL                         R7 R7 K2 ["Connect"]
       19 CALL                             R7 2 -1
       20 NAMECALL                         R5 R4 K3 ["Add"]
       22 CALL                             R5 -1 0
       23 GETTABLEKS                       R7 R2 K4 ["cancelSegmentation"]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 NAMECALL                         R7 R7 K2 ["Connect"]
       31 CALL                             R7 2 -1
       32 NAMECALL                         R5 R4 K3 ["Add"]
       34 CALL                             R5 -1 0
       35 GETTABLEKS                       R7 R2 K5 ["insertSegmentedModel"]
       37 NEWCLOSURE                       R9 P2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          UPVAL U5
       43 NAMECALL                         R7 R7 K2 ["Connect"]
       45 CALL                             R7 2 -1
       46 NAMECALL                         R5 R4 K3 ["Add"]
       48 CALL                             R5 -1 0
       49 GETTABLEKS                       R7 R2 K6 ["getSelectedMeshRef"]
       51 NEWCLOSURE                       R9 P3
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          VAL R1
       54 NAMECALL                         R7 R7 K2 ["Connect"]
       56 CALL                             R7 2 -1
       57 NAMECALL                         R5 R4 K3 ["Add"]
       59 CALL                             R5 -1 0
       60 GETTABLEKS                       R7 R2 K7 ["isSegmentableInstance"]
       62 NEWCLOSURE                       R9 P4
       63 CAPTURE                          VAL R1
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U4
       66 NAMECALL                         R7 R7 K2 ["Connect"]
       68 CALL                             R7 2 -1
       69 NAMECALL                         R5 R4 K3 ["Add"]
       71 CALL                             R5 -1 0
       72 GETTABLEKS                       R5 R1 K8 ["Destroying"]
       74 NEWCLOSURE                       R7 P5
       75 CAPTURE                          VAL R4
       76 NAMECALL                         R5 R5 K9 ["Once"]
       78 CALL                             R5 2 0
       79 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Gen3dCore"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Guest"]
       28 GETTABLEKS                       R6 R6 K11 ["Environment"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Flags"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Util"]
       40 GETTABLEKS                       R8 R8 K14 ["Gen3dUtils"]
       42 GETTABLEKS                       R8 R8 K15 ["Gen3dServicesBuilder"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K16 ["Bridges"]
       49 GETTABLEKS                       R9 R9 K17 ["createSegmentMeshBridge"]
       51 GETTABLEKS                       R9 R9 K18 ["SegmentMeshBridgeTypes"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K19 ["Remotes"]
       58 GETTABLEKS                       R10 R10 K20 ["SegmentMeshRemotes"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K13 ["Util"]
       65 GETTABLEKS                       R11 R11 K21 ["SegmentMesh"]
       67 GETTABLEKS                       R11 R11 K22 ["SegmentMeshTypes"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K13 ["Util"]
       74 GETTABLEKS                       R12 R12 K23 ["createCancellableHandlers"]
       76 CALL                             R11 1 1
       77 GETTABLEKS                       R12 R4 K24 ["createGenerationSessions"]
       79 CALL                             R12 0 1
       80 DUPCLOSURE                       R13 K25 [PROTO_0]
       81 CAPTURE                          VAL R7
       82 DUPCLOSURE                       R14 K26 [PROTO_1]
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R12
       86 DUPCLOSURE                       R15 K27 [PROTO_2]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R12
       89 DUPCLOSURE                       R16 K28 [PROTO_3]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R12
       94 DUPCLOSURE                       R17 K29 [PROTO_4]
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R13
       97 DUPCLOSURE                       R18 K30 [PROTO_5]
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R4
      100 DUPTABLE                         R19 K36 [{"generateSegmentMeshAsync", "cancelSegmentationAsync", "insertSegmentedModelAsync", "getSelectedMeshRef", "isSegmentableInstance"}]
      101 DUPCLOSURE                       R20 K37 [PROTO_6]
      102 CAPTURE                          VAL R14
      103 SETTABLEKS                       R20 R19 K31 ["generateSegmentMeshAsync"]
      105 DUPCLOSURE                       R20 K38 [PROTO_7]
      106 CAPTURE                          VAL R15
      107 SETTABLEKS                       R20 R19 K32 ["cancelSegmentationAsync"]
      109 DUPCLOSURE                       R20 K39 [PROTO_8]
      110 CAPTURE                          VAL R16
      111 SETTABLEKS                       R20 R19 K33 ["insertSegmentedModelAsync"]
      113 DUPCLOSURE                       R20 K40 [PROTO_9]
      114 CAPTURE                          VAL R17
      115 SETTABLEKS                       R20 R19 K34 ["getSelectedMeshRef"]
      117 DUPCLOSURE                       R20 K41 [PROTO_10]
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R4
      120 SETTABLEKS                       R20 R19 K35 ["isSegmentableInstance"]
      122 DUPCLOSURE                       R20 K42 [PROTO_19]
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R17
      132 DUPTABLE                         R21 K45 [{"bridge", "connectRemotes"}]
      133 SETTABLEKS                       R19 R21 K43 ["bridge"]
      135 SETTABLEKS                       R20 R21 K44 ["connectRemotes"]
      137 RETURN                           R21 1
