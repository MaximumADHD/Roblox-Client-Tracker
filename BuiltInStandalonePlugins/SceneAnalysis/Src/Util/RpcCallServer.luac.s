PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagSceneAnalysisCollisionGeometryMemoryEnabled"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+18]
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R3 R0
        7 GETIMPORT                        R2 K2 [typeof]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K3 ["Instance"] ; [+12]
       12 DUPTABLE                         R2 K6 [{"Name", "ClassName"}]
       13 NAMECALL                         R3 R0 K7 ["GetFullName"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K4 ["Name"]
       18 GETTABLEKS                       R3 R0 K5 ["ClassName"]
       20 SETTABLEKS                       R3 R2 K5 ["ClassName"]
       22 RETURN                           R2 1
       23 FASTCALL1                        TYPE R0 ; [+3]
       24 MOVE                             R3 R0
       25 GETIMPORT                        R2 K9 [type]
       27 CALL                             R2 1 1
       28 JUMPIFEQKS                       R2 K10 ["table"] ; [+2]
       30 RETURN                           R0 1
       31 GETTABLE                         R2 R1 R0
       32 JUMPIFNOT                        R2 ; [+1]
       33 RETURN                           R2 1
       34 NEWTABLE                         R3 0 0
       36 SETTABLE                         R3 R1 R0
       37 MOVE                             R4 R0
       38 LOADNIL                          R5
       39 LOADNIL                          R6
       40 FORGPREP                         R4
       41 GETUPVAL                         R9 1
       42 MOVE                             R10 R8
       43 MOVE                             R11 R1
       44 CALL                             R9 2 1
       45 SETTABLE                         R9 R3 R7
       46 FORGLOOP                         R4 2 ; [-6]
       48 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handlers"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 LOADNIL                          R1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["getFFlagSceneAnalysisBugfixesMay2026"]
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R0 ; [+32]
       11 GETIMPORT                        R3 K3 [pcall]
       13 MOVE                             R4 R0
       14 GETUPVAL                         R5 3
       15 CALL                             R3 2 2
       16 JUMPIFNOT                        R2 ; [+13]
       17 JUMPIFNOT                        R3 ; [+2]
       18 MOVE                             R1 R4
       19 JUMP                             ; [+34]
       20 DUPTABLE                         R5 K5 [{"error"}]
       21 FASTCALL1                        TOSTRING R4 ; [+3]
       22 MOVE                             R7 R4
       23 GETIMPORT                        R6 K7 [tostring]
       25 CALL                             R6 1 1
       26 SETTABLEKS                       R6 R5 K4 ["error"]
       28 MOVE                             R1 R5
       29 JUMP                             ; [+24]
       30 JUMPIFNOT                        R3 ; [+2]
       31 MOVE                             R5 R4
       32 JUMPIF                           R5 ; [+8]
       33 DUPTABLE                         R5 K5 [{"error"}]
       34 FASTCALL1                        TOSTRING R4 ; [+3]
       35 MOVE                             R7 R4
       36 GETIMPORT                        R6 K7 [tostring]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K4 ["error"]
       41 MOVE                             R1 R5
       42 JUMP                             ; [+11]
       43 DUPTABLE                         R3 K5 [{"error"}]
       44 LOADK                            R5 K8 ["Unknown method: "]
       45 GETUPVAL                         R7 1
       46 FASTCALL1                        TOSTRING R7 ; [+2]
       47 GETIMPORT                        R6 K7 [tostring]
       49 CALL                             R6 1 1
       50 CONCAT                           R4 R5 R6
       51 SETTABLEKS                       R4 R3 K4 ["error"]
       53 MOVE                             R1 R3
       54 GETUPVAL                         R3 4
       55 LOADK                            R5 K9 ["DeliverResponse"]
       56 GETUPVAL                         R6 5
       57 GETUPVAL                         R7 6
       58 MOVE                             R8 R1
       59 NEWTABLE                         R9 0 0
       61 CALL                             R7 2 1
       62 NAMECALL                         R3 R3 K10 ["Invoke"]
       64 CALL                             R3 4 0
       65 JUMPIFNOT                        R2 ; [+16]
       66 FASTCALL1                        TYPE R1 ; [+3]
       67 MOVE                             R4 R1
       68 GETIMPORT                        R3 K12 [type]
       70 CALL                             R3 1 1
       71 JUMPIFNOTEQKS                    R3 K13 ["table"] ; [+18]
       73 GETTABLEKS                       R3 R1 K4 ["error"]
       75 JUMPIFNOT                        R3 ; [+14]
       76 GETIMPORT                        R3 K15 [warn]
       78 GETTABLEKS                       R4 R1 K4 ["error"]
       80 CALL                             R3 1 0
       81 RETURN                           R0 0
       82 GETTABLEKS                       R3 R1 K4 ["error"]
       84 JUMPIFNOT                        R3 ; [+5]
       85 GETIMPORT                        R3 K15 [warn]
       87 GETTABLEKS                       R4 R1 K4 ["error"]
       89 CALL                             R3 1 0
       90 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getFFlagSceneAnalysisMdiDataModelPicker"]
        3 CALL                             R4 0 1
        4 JUMPIFNOT                        R4 ; [+18]
        5 FASTCALL1                        TYPE R3 ; [+3]
        6 MOVE                             R5 R3
        7 GETIMPORT                        R4 K2 [type]
        9 CALL                             R4 1 1
       10 JUMPIFEQKS                       R4 K3 ["string"] ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["toName"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K5 ["HostDataModelType"]
       19 CALL                             R4 1 1
       20 JUMPIFEQ                         R3 R4 ; [+2]
       22 RETURN                           R0 0
       23 GETIMPORT                        R4 K8 [task.spawn]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U4
       33 CALL                             R4 1 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["DataModelPresence"]
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 NAMECALL                         R1 R1 K1 ["Invoke"]
        6 CALL                             R1 4 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DataModelPresence"]
        2 GETUPVAL                         R3 1
        3 LOADB                            R4 1
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DataModelPresence"]
        2 GETUPVAL                         R3 1
        3 LOADB                            R4 0
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["plugin"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["handlers"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K4 ["discoverConnection"]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K5 ["announceDeparture"]
       20 LOADK                            R4 K6 ["PluginBridgeRequest"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U3
       27 NAMECALL                         R2 R0 K7 ["OnInvoke"]
       29 CALL                             R2 3 1
       30 SETTABLEKS                       R2 R1 K8 ["connection"]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K9 ["getFFlagSceneAnalysisMdiDataModelPicker"]
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+7]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K10 ["toName"]
       40 GETTABLEKS                       R3 R0 K11 ["HostDataModelType"]
       42 CALL                             R2 1 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R2
       45 JUMPIFNOT                        R2 ; [+23]
       46 NEWCLOSURE                       R3 P1
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R2
       49 LOADK                            R6 K12 ["DiscoverDataModels"]
       50 NEWCLOSURE                       R7 P2
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R2
       53 NAMECALL                         R4 R0 K7 ["OnInvoke"]
       55 CALL                             R4 3 1
       56 SETTABLEKS                       R4 R1 K4 ["discoverConnection"]
       58 NEWCLOSURE                       R4 P3
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R4 R1 K5 ["announceDeparture"]
       63 LOADK                            R6 K13 ["DataModelPresence"]
       64 MOVE                             R7 R2
       65 LOADB                            R8 1
       66 NAMECALL                         R4 R0 K14 ["Invoke"]
       68 CALL                             R4 4 0
       69 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["discoverConnection"]
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETTABLEKS                       R1 R0 K2 ["discoverConnection"]
       10 NAMECALL                         R1 R1 K1 ["Disconnect"]
       12 CALL                             R1 1 0
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K2 ["discoverConnection"]
       16 GETTABLEKS                       R1 R0 K3 ["announceDeparture"]
       18 JUMPIFNOT                        R1 ; [+6]
       19 GETTABLEKS                       R1 R0 K3 ["announceDeparture"]
       21 CALL                             R1 0 0
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K3 ["announceDeparture"]
       25 RETURN                           R0 0

PROTO_8:
        0 FASTCALL1                        TYPE R2 ; [+3]
        1 MOVE                             R6 R2
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["function"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Expected a function"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R3 R0 K6 ["handlers"]
       17 SETTABLE                         R2 R3 R1
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Src"]
       20 GETTABLEKS                       R3 R3 K10 ["Util"]
       22 GETTABLEKS                       R3 R3 K11 ["dataModelTypeLabel"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 4 0
       27 SETTABLEKS                       R3 R3 K12 ["__index"]
       29 DUPCLOSURE                       R4 K13 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R4
       32 DUPCLOSURE                       R5 K14 [PROTO_6]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R5 R3 K15 ["new"]
       39 DUPCLOSURE                       R5 K16 [PROTO_7]
       40 SETTABLEKS                       R5 R3 K17 ["Disconnect"]
       42 DUPCLOSURE                       R5 K18 [PROTO_8]
       43 SETTABLEKS                       R5 R3 K19 ["Bind"]
       45 RETURN                           R3 1
