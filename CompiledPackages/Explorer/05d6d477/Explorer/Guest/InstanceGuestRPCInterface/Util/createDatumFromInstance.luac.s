PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["getInstanceId"]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R1 K1 ["Parent"]
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETTABLEKS                       R3 R0 K0 ["getInstanceId"]
        9 GETTABLEKS                       R4 R1 K1 ["Parent"]
       11 CALL                             R3 1 1
       12 DUPTABLE                         R4 K9 [{"id", "name", "className", "parentId", "hasChildren", "fieldValues", "isGhost"}]
       13 SETTABLEKS                       R2 R4 K2 ["id"]
       15 GETUPVAL                         R6 0
       16 CALL                             R6 0 1
       17 JUMPIFNOT                        R6 ; [+5]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R6 R1 K10 ["Name"]
       21 CALL                             R5 1 1
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R5 R1 K10 ["Name"]
       25 SETTABLEKS                       R5 R4 K3 ["name"]
       27 GETTABLEKS                       R5 R1 K11 ["ClassName"]
       29 SETTABLEKS                       R5 R4 K4 ["className"]
       31 SETTABLEKS                       R3 R4 K5 ["parentId"]
       33 GETUPVAL                         R6 2
       34 JUMPIFNOT                        R6 ; [+11]
       35 GETUPVAL                         R6 3
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K12 ["CountChildren"]
       39 CALL                             R6 2 1
       40 LOADN                            R7 0
       41 JUMPIFLT                         R7 R6 ; [+2]
       43 LOADB                            R5 0 +1
       44 LOADB                            R5 1
       45 JUMP                             ; [+9]
       46 NAMECALL                         R7 R1 K13 ["GetChildren"]
       48 CALL                             R7 1 1
       49 LENGTH                           R6 R7
       50 LOADN                            R7 0
       51 JUMPIFLT                         R7 R6 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 SETTABLEKS                       R5 R4 K6 ["hasChildren"]
       57 LOADNIL                          R5
       58 SETTABLEKS                       R5 R4 K7 ["fieldValues"]
       60 LOADNIL                          R5
       61 SETTABLEKS                       R5 R4 K8 ["isGhost"]
       63 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InstanceExtensionsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Guest"]
       17 GETTABLEKS                       R4 R5 K11 ["InstanceGuestRPCInterface"]
       19 GETTABLEKS                       R3 R4 K12 ["InstanceGuestRPCInterfaceTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["RpcTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K14 ["Util"]
       31 GETTABLEKS                       R5 R6 K15 ["formatInstanceName"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K16 ["Flags"]
       38 GETTABLEKS                       R6 R7 K17 ["getFFlagExplorerFormatInstanceName"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R1 K16 ["Flags"]
       45 GETTABLEKS                       R7 R8 K18 ["getFFlagExplorerOptimizedHasChildren"]
       47 CALL                             R6 1 1
       48 MOVE                             R7 R6
       49 CALL                             R7 0 1
       50 DUPCLOSURE                       R8 K19 [PROTO_0]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R0
       55 RETURN                           R8 1
