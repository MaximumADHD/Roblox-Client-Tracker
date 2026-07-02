PROTO_0:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 1
        3 JUMPIFLT                         R0 R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 LENGTH                           R0 R1
        7 LOADN                            R1 50
        8 JUMPIFNOTLT                      R1 R0 ; [+3]
       10 LOADB                            R0 1
       11 RETURN                           R0 1
       12 GETUPVAL                         R1 1
       13 LENGTH                           R0 R1
       14 LOADN                            R1 1000
       15 JUMPIFNOTLT                      R1 R0 ; [+3]
       17 LOADB                            R0 1
       18 RETURN                           R0 1
       19 LOADB                            R0 0
       20 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADK                            R1 K1 [""]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADK                            R3 K1 [""]
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R6 0 2
       18 MOVE                             R7 R0
       19 MOVE                             R8 R2
       20 SETLIST                          R6 R7 2 [1]
       22 CALL                             R4 2 1
       23 DUPTABLE                         R5 K8 [{"name", "setName", "description", "setDescription", "invalidMetadata"}]
       24 SETTABLEKS                       R0 R5 K3 ["name"]
       26 SETTABLEKS                       R1 R5 K4 ["setName"]
       28 SETTABLEKS                       R2 R5 K5 ["description"]
       30 SETTABLEKS                       R3 R5 K6 ["setDescription"]
       32 SETTABLEKS                       R4 R5 K7 ["invalidMetadata"]
       34 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
