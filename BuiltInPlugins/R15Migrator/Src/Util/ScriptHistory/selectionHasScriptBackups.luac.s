PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R9 R6 K0 ["scriptId"]
        6 NAMECALL                         R7 R1 K1 ["getScriptInstanceFromGUID"]
        8 CALL                             R7 2 1
        9 GETUPVAL                         R8 0
       10 MOVE                             R10 R7
       11 NAMECALL                         R8 R8 K2 ["HasScriptBackup"]
       13 CALL                             R8 2 1
       14 JUMPIF                           R8 ; [+2]
       15 LOADB                            R8 0
       16 RETURN                           R8 1
       17 FORGLOOP                         R2 2 ; [-14]
       19 LOADB                            R2 1
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["ScriptHistory"]
       15 GETTABLEKS                       R2 R2 K9 ["ChunkUtil"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K10 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
