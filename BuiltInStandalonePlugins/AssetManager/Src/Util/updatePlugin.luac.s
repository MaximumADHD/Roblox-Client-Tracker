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
       14 GETIMPORT                        R3 K6 [pcall]
       16 GETUPVAL                         R4 0
       17 GETUPVAL                         R6 1
       18 MOVE                             R7 R1
       19 NAMECALL                         R4 R4 K7 ["TryInstallPlugin"]
       21 CALL                             R4 3 -1
       22 CALL                             R3 -1 2
       23 JUMPIF                           R3 ; [+9]
       24 GETIMPORT                        R5 K3 [warn]
       26 LOADK                            R7 K8 ["Failed to update plugin: %*"]
       27 MOVE                             R9 R4
       28 NAMECALL                         R7 R7 K9 ["format"]
       30 CALL                             R7 2 1
       31 MOVE                             R6 R7
       32 CALL                             R5 1 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Error fetching plugin info for update: %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R4 R0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 DUPCLOSURE                       R6 K0 [PROTO_1]
        5 NAMECALL                         R2 R1 K1 ["fetchPluginInfoAsync"]
        7 CALL                             R2 4 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["StudioService"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K11 [PROTO_2]
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
