PROTO_0:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Script"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R1 R2 K4 ["Source"]
        6 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADK                            R5 K0 ["rbxasset://avatar/unification/testScripts/"]
        2 MOVE                             R6 R1
        3 LOADK                            R7 K1 [".lua"]
        4 CONCAT                           R4 R5 R7
        5 NAMECALL                         R2 R2 K2 ["GetLocalFileContents"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_2:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["GetSourceFromLocalFileContents"]
        3 CALL                             R2 2 1
        4 MOVE                             R5 R2
        5 NAMECALL                         R3 R0 K1 ["CreateScriptWithSource"]
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InsertService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 4 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 SETTABLEKS                       R2 R1 K5 ["CreateScriptWithSource"]
       12 DUPCLOSURE                       R2 K6 [PROTO_1]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K7 ["GetSourceFromLocalFileContents"]
       16 DUPCLOSURE                       R2 K8 [PROTO_2]
       17 SETTABLEKS                       R2 R1 K9 ["InsertTestScript"]
       19 RETURN                           R1 1
