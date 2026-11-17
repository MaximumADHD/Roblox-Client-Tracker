PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["versionId"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R1
        5 NAMECALL                         R2 R2 K1 ["IsPluginUpToDate"]
        7 CALL                             R2 3 1
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETIMPORT                        R3 K3 [warn]
       11 LOADK                            R4 K4 ["Plugin is already up to date"]
       12 CALL                             R3 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R4 0
       15 GETUPVAL                         R6 1
       16 MOVE                             R7 R1
       17 NAMECALL                         R4 R4 K5 ["TryInstallPlugin"]
       19 CALL                             R4 3 -1
       20 FASTPCALL                        pcall 0 ; [+2]
       21 GETIMPORT                        R3 K7 [pcall]
       23 CALL                             R3 -1 2
       24 JUMPIF                           R3 ; [+8]
       25 GETIMPORT                        R5 K3 [warn]
       27 LOADK                            R6 K8 ["Failed to update plugin: %*"]
       28 MOVE                             R8 R4
       29 NAMECALL                         R6 R6 K9 ["format"]
       31 CALL                             R6 2 1
       32 CALL                             R5 1 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error fetching plugin info for update: %*"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["message"]
        2 GETIMPORT                        R2 K2 [warn]
        4 LOADK                            R3 K3 ["Error fetching plugin info for update: %*"]
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R3 K4 ["format"]
        8 CALL                             R3 2 1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 DUPCLOSURE                       R3 K0 [PROTO_1]
        4 GETUPVAL                         R4 1
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+13]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["Networking"]
       10 GETTABLEKS                       R4 R4 K2 ["fetchPluginInfoAsync"]
       12 MOVE                             R5 R0
       13 CALL                             R4 1 1
       14 MOVE                             R6 R2
       15 DUPCLOSURE                       R7 K3 [PROTO_2]
       16 NAMECALL                         R4 R4 K4 ["andThen"]
       18 CALL                             R4 3 0
       19 RETURN                           R0 0
       20 MOVE                             R6 R0
       21 MOVE                             R7 R2
       22 MOVE                             R8 R3
       23 NAMECALL                         R4 R1 K2 ["fetchPluginInfoAsync"]
       25 CALL                             R4 4 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["GetService"]
       25 LOADK                            R4 K12 ["StudioService"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K8 ["Src"]
       31 GETTABLEKS                       R5 R5 K13 ["Flags"]
       33 GETTABLEKS                       R5 R5 K14 ["getFFlagAmrUseAssetManagementNetworking"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K15 [PROTO_3]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
