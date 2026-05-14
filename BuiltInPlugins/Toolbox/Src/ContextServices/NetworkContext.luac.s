PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["networkInterface"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       18 GETTABLEKS                       R3 R3 K8 ["ContextItem"]
       20 LOADK                            R6 K9 ["NetworkInterface"]
       21 NAMECALL                         R4 R3 K10 ["extend"]
       23 CALL                             R4 2 1
       24 DUPCLOSURE                       R5 K11 [PROTO_0]
       25 CAPTURE                          VAL R4
       26 SETTABLEKS                       R5 R4 K12 ["new"]
       28 RETURN                           R4 1
