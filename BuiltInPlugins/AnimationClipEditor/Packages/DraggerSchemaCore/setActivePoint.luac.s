PROTO_0:
        0 NAMECALL                         R2 R1 K0 ["isEmpty"]
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+7]
        4 NAMECALL                         R2 R1 K1 ["getBoundingBox"]
        6 CALL                             R2 1 2
        7 MUL                              R6 R2 R3
        8 NAMECALL                         R4 R0 K2 ["setInsertPoint"]
       10 CALL                             R4 2 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
