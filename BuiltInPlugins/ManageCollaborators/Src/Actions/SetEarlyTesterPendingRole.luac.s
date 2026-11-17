PROTO_0:
        0 DUPTABLE                         R6 K6 [{"mode", "roleId", "roleName", "members", "isPrivate", "color"}]
        1 SETTABLEKS                       R0 R6 K0 ["mode"]
        3 SETTABLEKS                       R1 R6 K1 ["roleId"]
        5 SETTABLEKS                       R2 R6 K2 ["roleName"]
        7 SETTABLEKS                       R3 R6 K3 ["members"]
        9 SETTABLEKS                       R4 R6 K4 ["isPrivate"]
       11 SETTABLEKS                       R5 R6 K5 ["color"]
       13 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R2 K8 ["Action"]
       20 MOVE                             R3 R2
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K9 ["Name"]
       25 DUPCLOSURE                       R5 K10 [PROTO_0]
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1
