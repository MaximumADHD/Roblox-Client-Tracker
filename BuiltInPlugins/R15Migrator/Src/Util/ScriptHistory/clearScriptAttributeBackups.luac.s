PROTO_0:
        0 LOADK                            R3 K0 ["LuaSourceContainer"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETUPVAL                         R7 1
        9 MOVE                             R9 R6
       10 NAMECALL                         R7 R7 K1 ["RemoveScriptBackupChunks"]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 2 ; [-6]
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["findAllInServices"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K7 ["Util"]
       22 GETTABLEKS                       R4 R5 K9 ["ScriptHistory"]
       24 GETTABLEKS                       R3 R4 K10 ["ChunkUtil"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K11 [PROTO_1]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
