PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["entries"]
        3 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R1 K3 [table.insert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["entries"]
       12 LENGTH                           R1 R2
       13 LOADN                            R2 5000
       14 JUMPIFNOTLT                      R2 R1 ; [+8]
       16 GETIMPORT                        R1 K5 [table.remove]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["entries"]
       21 LOADN                            R3 1
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["entries"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["DataModelType"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K9 [{"entries"}]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K8 ["entries"]
       19 DUPCLOSURE                       R3 K10 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 SETTABLEKS                       R3 R2 K11 ["append"]
       23 DUPCLOSURE                       R3 K12 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R3 R2 K13 ["clear"]
       27 RETURN                           R2 1
