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
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R6 R1 K10 ["Name"]
       18 CALL                             R5 1 1
       19 SETTABLEKS                       R5 R4 K3 ["name"]
       21 GETTABLEKS                       R5 R1 K11 ["ClassName"]
       23 SETTABLEKS                       R5 R4 K4 ["className"]
       25 SETTABLEKS                       R3 R4 K5 ["parentId"]
       27 GETUPVAL                         R6 1
       28 MOVE                             R8 R1
       29 NAMECALL                         R6 R6 K12 ["CountChildren"]
       31 CALL                             R6 2 1
       32 LOADN                            R7 0
       33 JUMPIFLT                         R7 R6 ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 SETTABLEKS                       R5 R4 K6 ["hasChildren"]
       39 LOADNIL                          R5
       40 SETTABLEKS                       R5 R4 K7 ["fieldValues"]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K8 ["isGhost"]
       45 RETURN                           R4 1

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
       34 DUPCLOSURE                       R5 K16 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R0
       37 RETURN                           R5 1
