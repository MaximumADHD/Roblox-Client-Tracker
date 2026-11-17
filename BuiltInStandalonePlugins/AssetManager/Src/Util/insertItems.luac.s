PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getInsertData"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Ids"]
        5 LENGTH                           R3 R4
        6 LOADN                            R4 0
        7 JUMPIFNOTLT                      R4 R3 ; [+10]
        9 NAMECALL                         R3 R0 K2 ["getPlugin"]
       11 CALL                             R3 1 1
       12 LOADK                            R5 K3 ["RequestInsert"]
       13 MOVE                             R6 R2
       14 MOVE                             R7 R1
       15 NAMECALL                         R3 R3 K4 ["Invoke"]
       17 CALL                             R3 4 0
       18 NAMECALL                         R3 R0 K5 ["sendInsertToAnalytics"]
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
