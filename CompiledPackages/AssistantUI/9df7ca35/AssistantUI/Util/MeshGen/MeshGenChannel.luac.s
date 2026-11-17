PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["find"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Scope"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["InstanceChannel"]
       13 GETTABLEKS                       R2 R2 K7 ["InstanceChannel"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 LOADK                            R3 K8 ["MeshGen"]
       19 SETTABLEKS                       R3 R2 K9 ["Scope"]
       21 DUPTABLE                         R3 K12 [{["Images"] = "images"}]
       22 SETTABLEKS                       R3 R2 K13 ["Field"]
       24 DUPCLOSURE                       R3 K14 [PROTO_0]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R3 R2 K15 ["hasLiveGeneration"]
       29 RETURN                           R2 1
