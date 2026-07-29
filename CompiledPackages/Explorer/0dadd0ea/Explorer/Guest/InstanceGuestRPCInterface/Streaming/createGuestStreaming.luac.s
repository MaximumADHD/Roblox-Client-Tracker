PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["className"]
        2 JUMPIFNOTEQKS                    R3 K1 ["Camera"] ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        8 LOADK                            R3 K2 ["Shouldn't send cameras over childAdded, because they are local only"]
        9 GETIMPORT                        R1 K4 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 LOADK                            R2 K5 ["childAdded(%s, '%s' inside %s)"]
       14 GETTABLEKS                       R3 R0 K6 ["id"]
       16 GETTABLEKS                       R4 R0 K7 ["name"]
       18 GETTABLEKS                       R5 R0 K8 ["parentId"]
       20 CALL                             R1 4 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K9 ["instanceIdsToInstance"]
       24 GETTABLEKS                       R3 R0 K6 ["id"]
       26 GETTABLE                         R1 R2 R3
       27 JUMPIFEQKNIL                     R1 ; [+9]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K10 ["root"]
       32 NAMECALL                         R2 R1 K11 ["IsDescendantOf"]
       34 CALL                             R2 2 1
       35 JUMPIFNOT                        R2 ; [+1]
       36 RETURN                           R0 0
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K12 ["hostRpcInterface"]
       40 GETTABLEKS                       R2 R2 K13 ["instanceAdded"]
       42 DUPTABLE                         R3 K18 [{["id"], ["name"], [3], ["parentId"], ["hasChildren"] = False, ["isGhost"] = True}]
       43 GETTABLEKS                       R4 R0 K6 ["id"]
       45 SETTABLEKS                       R4 R3 K6 ["id"]
       47 GETTABLEKS                       R4 R0 K7 ["name"]
       49 SETTABLEKS                       R4 R3 K7 ["name"]
       51 GETTABLEKS                       R4 R0 K0 ["className"]
       53 SETTABLEKS                       R4 R3 K0 ["className"]
       55 GETTABLEKS                       R4 R0 K8 ["parentId"]
       57 SETTABLEKS                       R4 R3 K8 ["parentId"]
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R1 K0 ["childRemoved is referring to %*, which we know about"]
        1 GETUPVAL                         R3 0
        2 NAMECALL                         R3 R3 K1 ["GetFullName"]
        4 CALL                             R3 1 1
        5 NAMECALL                         R1 R1 K2 ["format"]
        7 CALL                             R1 2 1
        8 MOVE                             R0 R1
        9 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["childMoved(%s)"]
        2 GETTABLEKS                       R3 R0 K1 ["id"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["instanceIdsToInstance"]
        8 GETTABLEKS                       R3 R0 K1 ["id"]
       10 GETTABLE                         R1 R2 R3
       11 JUMPIFEQKNIL                     R1 ; [+24]
       13 GETTABLEKS                       R2 R1 K3 ["Parent"]
       15 JUMPIFEQKNIL                     R2 ; [+20]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K4 ["root"]
       20 NAMECALL                         R2 R1 K5 ["IsDescendantOf"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+12]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K6 ["expandedInstances"]
       27 GETTABLEKS                       R4 R1 K3 ["Parent"]
       29 GETTABLE                         R2 R3 R4
       30 JUMPIFNOT                        R2 ; [+5]
       31 GETUPVAL                         R2 0
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          VAL R1
       34 CALL                             R2 1 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K7 ["hostRpcInterface"]
       39 GETTABLEKS                       R2 R2 K8 ["streamedOutInstanceRemoved"]
       41 GETTABLEKS                       R3 R0 K1 ["id"]
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hostRpcInterface"]
        3 GETTABLEKS                       R1 R1 K1 ["instancePinned"]
        5 GETTABLEKS                       R2 R0 K2 ["id"]
        7 GETTABLEKS                       R3 R0 K3 ["depth"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hostRpcInterface"]
        3 GETTABLEKS                       R1 R1 K1 ["instanceUnpinned"]
        5 GETTABLEKS                       R2 R0 K2 ["id"]
        7 GETTABLEKS                       R3 R0 K3 ["depth"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K1 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K1 ["Disconnect"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 NAMECALL                         R0 R0 K1 ["Disconnect"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["childAddedSignal"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R2 R2 K1 ["Connect"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R1 K2 ["childRemovedSignal"]
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R3 R3 K1 ["Connect"]
       15 CALL                             R3 2 1
       16 GETTABLEKS                       R4 R1 K3 ["pinRequestedSignal"]
       18 NEWCLOSURE                       R6 P2
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R4 R4 K1 ["Connect"]
       22 CALL                             R4 2 1
       23 GETTABLEKS                       R5 R1 K4 ["unpinRequestedSignal"]
       25 NEWCLOSURE                       R7 P3
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R5 R5 K1 ["Connect"]
       29 CALL                             R5 2 1
       30 NEWCLOSURE                       R6 P4
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 DUPTABLE                         R7 K6 [{"destroy"}]
       37 SETTABLEKS                       R6 R7 K5 ["destroy"]
       39 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["InstanceGuestRPCInterface"]
       13 GETTABLEKS                       R2 R2 K8 ["InstanceGuestRPCInterfaceTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Guest"]
       20 GETTABLEKS                       R3 R3 K7 ["InstanceGuestRPCInterface"]
       22 GETTABLEKS                       R3 R3 K9 ["Streaming"]
       24 GETTABLEKS                       R3 R3 K10 ["StreamingInterface"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K11 ["Util"]
       31 GETTABLEKS                       R4 R4 K12 ["createDebugLogger"]
       33 CALL                             R3 1 1
       34 MOVE                             R4 R3
       35 LOADK                            R5 K13 ["createGuestStreaming"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K14 [PROTO_6]
       38 CAPTURE                          VAL R4
       39 RETURN                           R5 1
