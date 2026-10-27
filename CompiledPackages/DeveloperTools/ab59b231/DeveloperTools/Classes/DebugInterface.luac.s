PROTO_0:
        0 DUPTABLE                         R3 K9 [{"sourceId", "sourceKind", "sourceName", "bridges", "routers", "targets", "workers", "connectionsForListener", "outboundBridgeForBridgeId"}]
        1 GETUPVAL                         R4 0
        2 NAMECALL                         R4 R4 K10 ["GenerateGUID"]
        4 CALL                             R4 1 1
        5 SETTABLEKS                       R4 R3 K0 ["sourceId"]
        7 SETTABLEKS                       R0 R3 K1 ["sourceKind"]
        9 SETTABLEKS                       R1 R3 K2 ["sourceName"]
       11 SETTABLEKS                       R2 R3 K3 ["bridges"]
       13 NEWTABLE                         R4 0 0
       15 SETTABLEKS                       R4 R3 K4 ["routers"]
       17 NEWTABLE                         R4 0 0
       19 SETTABLEKS                       R4 R3 K5 ["targets"]
       21 NEWTABLE                         R4 0 0
       23 SETTABLEKS                       R4 R3 K6 ["workers"]
       25 NEWTABLE                         R4 0 0
       27 SETTABLEKS                       R4 R3 K7 ["connectionsForListener"]
       29 NEWTABLE                         R4 0 0
       31 SETTABLEKS                       R4 R3 K8 ["outboundBridgeForBridgeId"]
       33 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 GETUPVAL                         R6 2
        7 GETUPVAL                         R7 3
        8 CALL                             R2 5 -1
        9 RETURN                           R2 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R7 R1
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["string"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       11 LOADK                            R6 K3 ["targetName must be a string"]
       12 GETIMPORT                        R4 K5 [assert]
       14 CALL                             R4 2 0
       15 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       17 MOVE                             R5 R2
       18 LOADK                            R6 K6 ["roactTree must be defined"]
       19 GETIMPORT                        R4 K5 [assert]
       21 CALL                             R4 2 0
       22 MOVE                             R6 R1
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 NAMECALL                         R4 R0 K7 ["addTarget"]
       30 CALL                             R4 3 -1
       31 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["setup"]
        2 MOVE                             R4 R2
        3 CALL                             R3 1 1
        4 GETTABLEKS                       R4 R0 K1 ["workers"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["new"]
        9 MOVE                             R6 R0
       10 MOVE                             R7 R3
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K3 ["reactTargetWatcher"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["routers"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["new"]
        5 GETTABLEKS                       R5 R0 K2 ["sourceName"]
        7 MOVE                             R6 R1
        8 GETTABLEKS                       R7 R0 K3 ["bridges"]
       10 CALL                             R4 3 -1
       11 FASTCALL                         TABLE_INSERT ; [+1]
       12 GETUPVAL                         R2 1
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"id", "name"}]
        1 GETTABLEKS                       R2 R0 K0 ["id"]
        3 SETTABLEKS                       R2 R1 K0 ["id"]
        5 GETTABLEKS                       R2 R0 K1 ["name"]
        7 SETTABLEKS                       R2 R1 K1 ["name"]
        9 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K6 [{"eventName", "toBridgeId", "sourceId", "sourceName", "sourceKind", "targets"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K7 ["ShowTargets"]
        5 SETTABLEKS                       R4 R3 K0 ["eventName"]
        7 GETTABLEKS                       R4 R0 K8 ["fromBridgeId"]
        9 SETTABLEKS                       R4 R3 K1 ["toBridgeId"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["sourceId"]
       14 SETTABLEKS                       R4 R3 K2 ["sourceId"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["sourceName"]
       19 SETTABLEKS                       R4 R3 K3 ["sourceName"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K4 ["sourceKind"]
       24 SETTABLEKS                       R4 R3 K4 ["sourceKind"]
       26 GETUPVAL                         R4 2
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K5 ["targets"]
       30 DUPCLOSURE                       R6 K9 [PROTO_5]
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K5 ["targets"]
       34 NAMECALL                         R1 R1 K10 ["_send"]
       36 CALL                             R1 2 0
       37 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [next]
        2 GETTABLEKS                       R2 R0 K2 ["targets"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 DUPTABLE                         R3 K5 [{"eventName", "onEvent"}]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K6 ["GetTargets"]
       11 SETTABLEKS                       R4 R3 K3 ["eventName"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 SETTABLEKS                       R4 R3 K4 ["onEvent"]
       19 NAMECALL                         R1 R0 K7 ["_connect"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["send"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["toBridgeId"]
        2 JUMPIF                           R2 ; [+7]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R0 K1 ["bridges"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 0
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R0 K2 ["outboundBridgeForBridgeId"]
       12 GETTABLEKS                       R4 R1 K0 ["toBridgeId"]
       14 GETTABLE                         R2 R3 R4
       15 JUMPIF                           R2 ; [+9]
       16 GETIMPORT                        R3 K4 [error]
       18 LOADK                            R4 K5 ["[DeveloperTools] No bridge to other bridge %s"]
       19 GETTABLEKS                       R6 R1 K0 ["toBridgeId"]
       21 NAMECALL                         R4 R4 K6 ["format"]
       23 CALL                             R4 2 -1
       24 CALL                             R3 -1 0
       25 MOVE                             R5 R1
       26 NAMECALL                         R3 R2 K7 ["send"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["outboundBridgeForBridgeId"]
        3 GETTABLEKS                       R2 R0 K1 ["fromBridgeId"]
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 LOADB                            R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["eventName"]
       11 JUMPIFEQKNIL                     R2 ; [+10]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K2 ["eventName"]
       16 GETTABLEKS                       R3 R0 K2 ["eventName"]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 LOADB                            R2 1
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K3 ["bridgeId"]
       26 JUMPIFEQKNIL                     R3 ; [+10]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K3 ["bridgeId"]
       31 GETTABLEKS                       R4 R0 K4 ["toBridgeId"]
       33 JUMPIFEQ                         R3 R4 ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 LOADB                            R3 1
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K5 ["targetId"]
       41 JUMPIFEQKNIL                     R4 ; [+10]
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R4 R4 K5 ["targetId"]
       46 GETTABLEKS                       R5 R0 K6 ["toTargetId"]
       48 JUMPIFEQ                         R4 R5 ; [+2]
       50 LOADB                            R3 0 +1
       51 LOADB                            R3 1
       52 JUMPIFNOT                        R1 ; [+7]
       53 JUMPIFNOT                        R2 ; [+6]
       54 JUMPIFNOT                        R3 ; [+5]
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K7 ["onEvent"]
       58 MOVE                             R5 R0
       59 CALL                             R4 1 0
       60 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K0 ["connect"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R4 2
        9 FASTCALL2                        TABLE_INSERT R4 R2 ; [+3]
       11 MOVE                             R5 R2
       12 GETUPVAL                         R3 3
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["connectionsForListener"]
        4 SETTABLE                         R2 R3 R1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R4 R0 K1 ["bridges"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U1
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_13:
        0 NAMECALL                         R1 R0 K0 ["Disconnect"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["connectionsForListener"]
        2 GETTABLE                         R2 R3 R1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R2
        5 DUPCLOSURE                       R5 K1 [PROTO_13]
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["workers"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R0 K1 ["fromBridgeId"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["workers"]
       14 GETUPVAL                         R3 1
       15 SETTABLE                         R1 R2 R3
       16 RETURN                           R0 0

PROTO_16:
        0 NAMECALL                         R3 R0 K0 ["_connectTargets"]
        2 CALL                             R3 1 0
        3 GETUPVAL                         R3 0
        4 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
        6 CALL                             R3 1 1
        7 DUPTABLE                         R4 K5 [{"id", "name", "listener"}]
        8 SETTABLEKS                       R3 R4 K2 ["id"]
       10 SETTABLEKS                       R1 R4 K3 ["name"]
       12 DUPTABLE                         R5 K9 [{"targetId", "eventName", "onEvent"}]
       13 SETTABLEKS                       R3 R5 K6 ["targetId"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K10 ["AttachTarget"]
       18 SETTABLEKS                       R6 R5 K7 ["eventName"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R6 R5 K8 ["onEvent"]
       26 SETTABLEKS                       R5 R4 K4 ["listener"]
       28 GETTABLEKS                       R5 R0 K11 ["targets"]
       30 SETTABLE                         R4 R5 R3
       31 GETTABLEKS                       R7 R4 K4 ["listener"]
       33 NAMECALL                         R5 R0 K12 ["_connect"]
       35 CALL                             R5 2 0
       36 RETURN                           R3 1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["targets"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFEQKNIL                     R2 ; [+10]
        5 GETTABLEKS                       R5 R2 K1 ["listener"]
        7 NAMECALL                         R3 R0 K2 ["_disconnect"]
        9 CALL                             R3 2 0
       10 GETTABLEKS                       R3 R0 K0 ["targets"]
       12 LOADNIL                          R4
       13 SETTABLE                         R4 R3 R1
       14 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["workers"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+3]
        4 NAMECALL                         R3 R2 K1 ["destroy"]
        6 CALL                             R3 1 0
        7 GETTABLEKS                       R3 R0 K0 ["workers"]
        9 LOADNIL                          R4
       10 SETTABLE                         R4 R3 R1
       11 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 SETTABLEKS                       R2 R0 K0 ["rootInstance"]
        4 GETTABLEKS                       R2 R1 K1 ["pickerParent"]
        6 SETTABLEKS                       R2 R0 K1 ["pickerParent"]
        8 GETTABLEKS                       R2 R1 K2 ["rootPath"]
       10 SETTABLEKS                       R2 R0 K2 ["rootPath"]
       12 GETTABLEKS                       R2 R1 K3 ["rootPrefix"]
       14 SETTABLEKS                       R2 R0 K3 ["rootPrefix"]
       16 RETURN                           R0 0

PROTO_20:
        0 NAMECALL                         R1 R0 K0 ["destroy"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 NAMECALL                         R1 R0 K0 ["destroy"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 NAMECALL                         R1 R0 K0 ["destroy"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["bridges"]
        3 DUPCLOSURE                       R3 K1 [PROTO_20]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K2 ["routers"]
        8 DUPCLOSURE                       R3 K3 [PROTO_21]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R2 R0 K4 ["workers"]
       13 DUPCLOSURE                       R3 K5 [PROTO_22]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [require]
       17 GETTABLEKS                       R4 R2 K9 ["Dash"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K10 ["class"]
       22 GETTABLEKS                       R5 R3 K11 ["forEach"]
       24 GETTABLEKS                       R6 R3 K12 ["map"]
       26 GETIMPORT                        R7 K15 [table.insert]
       28 GETIMPORT                        R8 K8 [require]
       30 GETTABLEKS                       R9 R1 K16 ["Services"]
       32 CALL                             R8 1 1
       33 GETIMPORT                        R9 K8 [require]
       35 GETTABLEKS                       R10 R1 K17 ["EventName"]
       37 CALL                             R9 1 1
       38 GETIMPORT                        R10 K8 [require]
       40 GETTABLEKS                       R11 R1 K18 ["Classes"]
       42 GETTABLEKS                       R11 R11 K19 ["PluginEventRouter"]
       44 CALL                             R10 1 1
       45 GETIMPORT                        R11 K8 [require]
       47 GETTABLEKS                       R12 R1 K20 ["RoactInspector"]
       49 GETTABLEKS                       R12 R12 K18 ["Classes"]
       51 GETTABLEKS                       R12 R12 K21 ["RoactInspectorWorker"]
       53 CALL                             R11 1 1
       54 GETIMPORT                        R12 K8 [require]
       56 GETTABLEKS                       R13 R1 K22 ["Roact17"]
       58 GETTABLEKS                       R13 R13 K18 ["Classes"]
       60 GETTABLEKS                       R13 R13 K23 ["Roact17TargetWatcher"]
       62 CALL                             R12 1 1
       63 MOVE                             R13 R4
       64 LOADK                            R14 K24 ["DebugInterface"]
       65 DUPCLOSURE                       R15 K25 [PROTO_0]
       66 CAPTURE                          VAL R0
       67 CALL                             R13 2 1
       68 DUPCLOSURE                       R14 K26 [PROTO_2]
       69 CAPTURE                          VAL R11
       70 SETTABLEKS                       R14 R13 K27 ["addRoactTree"]
       72 DUPCLOSURE                       R14 K28 [PROTO_3]
       73 CAPTURE                          VAL R12
       74 SETTABLEKS                       R14 R13 K29 ["initRoact"]
       76 DUPCLOSURE                       R14 K30 [PROTO_4]
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R7
       79 SETTABLEKS                       R14 R13 K31 ["addPluginRouter"]
       81 DUPCLOSURE                       R14 K32 [PROTO_7]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R6
       84 SETTABLEKS                       R14 R13 K33 ["_connectTargets"]
       86 DUPCLOSURE                       R14 K34 [PROTO_9]
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R14 R13 K35 ["_send"]
       90 DUPCLOSURE                       R14 K36 [PROTO_12]
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R7
       93 SETTABLEKS                       R14 R13 K37 ["_connect"]
       95 DUPCLOSURE                       R14 K38 [PROTO_14]
       96 CAPTURE                          VAL R5
       97 SETTABLEKS                       R14 R13 K39 ["_disconnect"]
       99 DUPCLOSURE                       R14 K40 [PROTO_16]
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R9
      102 SETTABLEKS                       R14 R13 K41 ["addTarget"]
      104 DUPCLOSURE                       R14 K42 [PROTO_17]
      105 SETTABLEKS                       R14 R13 K43 ["removeTarget"]
      107 DUPCLOSURE                       R14 K44 [PROTO_18]
      108 SETTABLEKS                       R14 R13 K45 ["removeWorker"]
      110 DUPCLOSURE                       R14 K46 [PROTO_19]
      111 SETTABLEKS                       R14 R13 K47 ["setGuiOptions"]
      113 DUPCLOSURE                       R14 K48 [PROTO_23]
      114 CAPTURE                          VAL R5
      115 SETTABLEKS                       R14 R13 K49 ["destroy"]
      117 RETURN                           R13 1
