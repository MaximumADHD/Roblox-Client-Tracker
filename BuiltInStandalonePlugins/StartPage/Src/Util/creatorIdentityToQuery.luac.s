PROTO_0:
        0 DUPTABLE                         R1 K2 [{"creatorType", "creatorTargetId"}]
        1 GETTABLEKS                       R2 R0 K0 ["creatorType"]
        3 GETTABLEKS                       R2 R2 K3 ["Name"]
        5 SETTABLEKS                       R2 R1 K0 ["creatorType"]
        7 GETTABLEKS                       R3 R0 K4 ["id"]
        9 FASTCALL1                        TOSTRING R3 ; [+2]
       10 GETIMPORT                        R2 K6 [tostring]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K1 ["creatorTargetId"]
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
