PROTO_0:
        0 LOADK                            R5 K0 ["HumanoidDescription"]
        1 NAMECALL                         R3 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+3]
        5 NAMECALL                         R4 R3 K2 ["Destroy"]
        7 CALL                             R4 1 0
        8 SETTABLEKS                       R0 R1 K3 ["Parent"]
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
