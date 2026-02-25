PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["rootState"]
        3 GETTABLEKS                       R2 R3 K1 ["instanceIdsToNodes"]
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       12 LOADK                            R4 K2 ["Streaming out instance that we don't know about"]
       13 GETIMPORT                        R2 K4 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R3 R1 K5 ["datum"]
       18 GETTABLEKS                       R2 R3 K6 ["isGhost"]
       20 JUMPIFNOT                        R2 ; [+1]
       21 RETURN                           R0 0
       22 GETIMPORT                        R2 K9 [table.clone]
       24 GETTABLEKS                       R3 R1 K5 ["datum"]
       26 CALL                             R2 1 1
       27 SETTABLEKS                       R2 R1 K5 ["datum"]
       29 GETTABLEKS                       R2 R1 K5 ["datum"]
       31 LOADB                            R3 1
       32 SETTABLEKS                       R3 R2 K6 ["isGhost"]
       34 GETIMPORT                        R2 K11 [table.freeze]
       36 GETTABLEKS                       R3 R1 K5 ["datum"]
       38 CALL                             R2 1 0
       39 GETUPVAL                         R2 1
       40 CALL                             R2 0 1
       41 JUMPIFNOT                        R2 ; [+30]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R2 R3 K12 ["searchRootState"]
       45 JUMPIFEQKNIL                     R2 ; [+26]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R4 R5 K12 ["searchRootState"]
       50 GETTABLEKS                       R3 R4 K1 ["instanceIdsToNodes"]
       52 GETTABLE                         R2 R3 R0
       53 JUMPIFEQKNIL                     R2 ; [+18]
       55 GETIMPORT                        R3 K9 [table.clone]
       57 GETTABLEKS                       R4 R2 K5 ["datum"]
       59 CALL                             R3 1 1
       60 SETTABLEKS                       R3 R2 K5 ["datum"]
       62 GETTABLEKS                       R3 R2 K5 ["datum"]
       64 LOADB                            R4 1
       65 SETTABLEKS                       R4 R3 K6 ["isGhost"]
       67 GETIMPORT                        R3 K11 [table.freeze]
       69 GETTABLEKS                       R4 R2 K5 ["datum"]
       71 CALL                             R3 1 0
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R3 R4 K0 ["rootState"]
       75 GETTABLEKS                       R2 R3 K13 ["queueRootChanged"]
       77 CALL                             R2 0 0
       78 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["rootState"]
        3 GETTABLEKS                       R2 R3 K1 ["instanceIdsToNodes"]
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R1 K2 ["datum"]
       11 GETTABLEKS                       R2 R3 K3 ["isGhost"]
       13 JUMPIF                           R2 ; [+1]
       14 RETURN                           R0 0
       15 GETIMPORT                        R2 K6 [table.clone]
       17 GETTABLEKS                       R3 R1 K2 ["datum"]
       19 CALL                             R2 1 1
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K7 ["parentId"]
       23 GETUPVAL                         R3 1
       24 MOVE                             R4 R2
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+9]
        4 GETUPVAL                         R3 0
        5 NEWTABLE                         R4 0 1
        7 MOVE                             R5 R1
        8 SETLIST                          R4 R5 1 [1]
       10 SETTABLE                         R4 R3 R0
       11 JUMP                             ; [+7]
       12 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
       14 MOVE                             R4 R2
       15 MOVE                             R5 R1
       16 GETIMPORT                        R3 K2 [table.insert]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 1
       20 NAMECALL                         R3 R3 K3 ["Fire"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+6]
        4 GETUPVAL                         R3 1
        5 LOADK                            R4 K0 ["Instance ID %s had no depths"]
        6 MOVE                             R5 R0
        7 CALL                             R3 2 0
        8 RETURN                           R0 0
        9 GETIMPORT                        R3 K3 [table.find]
       11 MOVE                             R4 R2
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 JUMPIFNOTEQKNIL                  R3 ; [+7]
       16 GETUPVAL                         R4 1
       17 LOADK                            R5 K4 ["Instance ID %s had no depth %d"]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 CALL                             R4 3 0
       21 RETURN                           R0 0
       22 LENGTH                           R4 R2
       23 JUMPIFNOTEQKN                    R4 K5 [1] ; [+5]
       25 GETUPVAL                         R4 0
       26 LOADNIL                          R5
       27 SETTABLE                         R5 R4 R0
       28 JUMP                             ; [+5]
       29 GETIMPORT                        R4 K7 [table.remove]
       31 MOVE                             R5 R2
       32 MOVE                             R6 R3
       33 CALL                             R4 2 0
       34 GETUPVAL                         R4 2
       35 NAMECALL                         R4 R4 K8 ["Fire"]
       37 CALL                             R4 1 0
       38 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["rootState"]
        3 GETTABLEKS                       R2 R3 K1 ["instanceIdsToNodes"]
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       12 LOADK                            R4 K2 ["Couldn't find node being asked for in isInstancePinned"]
       13 GETIMPORT                        R2 K4 [assert]
       15 CALL                             R2 2 0
       16 MOVE                             R2 R1
       17 LOADN                            R3 0
       18 JUMPIFEQKNIL                     R2 ; [+25]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R7 R2 K5 ["datum"]
       23 GETTABLEKS                       R6 R7 K6 ["id"]
       25 GETTABLE                         R4 R5 R6
       26 JUMPIFEQKNIL                     R4 ; [+13]
       28 MOVE                             R5 R4
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 JUMPIFEQKN                       R9 K7 [-1] ; [+3]
       34 JUMPIFNOTLE                      R3 R9 ; [+3]
       36 LOADB                            R10 1
       37 RETURN                           R10 1
       38 FORGLOOP                         R5 2 ; [-7]
       40 GETTABLEKS                       R2 R2 K8 ["parent"]
       42 ADDK                             R3 R3 K9 [1]
       43 JUMPBACK                         ; [-26]
       44 LOADB                            R4 0
       45 RETURN                           R4 1

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R3 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K0 ["new"]
        9 CALL                             R4 0 1
       10 NEWTABLE                         R5 0 0
       12 NEWCLOSURE                       R6 P2
       13 CAPTURE                          VAL R5
       14 CAPTURE                          VAL R4
       15 NEWCLOSURE                       R7 P3
       16 CAPTURE                          VAL R5
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R4
       19 NEWCLOSURE                       R8 P4
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R5
       22 DUPTABLE                         R9 K8 [{"instanceStreamedOut", "streamedOutInstanceRemoved", "instancePinned", "instanceUnpinned", "requestStreamIn", "isInstancePinned", "pinsUpdatedSignal"}]
       23 SETTABLEKS                       R2 R9 K1 ["instanceStreamedOut"]
       25 SETTABLEKS                       R3 R9 K2 ["streamedOutInstanceRemoved"]
       27 SETTABLEKS                       R6 R9 K3 ["instancePinned"]
       29 SETTABLEKS                       R7 R9 K4 ["instanceUnpinned"]
       31 GETTABLEKS                       R11 R0 K9 ["guestRpcInterface"]
       33 GETTABLEKS                       R10 R11 K5 ["requestStreamIn"]
       35 SETTABLEKS                       R10 R9 K5 ["requestStreamIn"]
       37 SETTABLEKS                       R8 R9 K6 ["isInstancePinned"]
       39 SETTABLEKS                       R4 R9 K7 ["pinsUpdatedSignal"]
       41 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R4 K8 ["Signal"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R5 K10 ["createDebugLogger"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Networking"]
       30 GETTABLEKS                       R6 R7 K12 ["createSession"]
       32 GETTABLEKS                       R5 R6 K13 ["createSessionTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Flags"]
       39 GETTABLEKS                       R6 R7 K15 ["getFFlagExplorerMakeGhostsWhenSearching"]
       41 CALL                             R5 1 1
       42 MOVE                             R6 R3
       43 LOADK                            R7 K16 ["createSessionStreaming"]
       44 CALL                             R6 1 1
       45 DUPCLOSURE                       R7 K17 [PROTO_5]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R6
       49 RETURN                           R7 1
