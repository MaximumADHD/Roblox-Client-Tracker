PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R0 2 0
        2 DUPTABLE                         R3 K1 [{"__index"}]
        3 DUPCLOSURE                       R4 K2 [PROTO_1]
        4 SETTABLEKS                       R4 R3 K0 ["__index"]
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [setmetatable]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K5 ["new"]
       15 CALL                             R1 0 1
       16 SETTABLEKS                       R1 R0 K6 ["OnUndo"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K5 ["new"]
       21 CALL                             R1 0 1
       22 SETTABLEKS                       R1 R0 K7 ["OnRedo"]
       24 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["Signal"]
       18 NEWTABLE                         R3 2 0
       20 SETTABLEKS                       R3 R3 K10 ["__index"]
       22 DUPCLOSURE                       R4 K11 [PROTO_2]
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R4 R3 K12 ["new"]
       26 RETURN                           R3 1
