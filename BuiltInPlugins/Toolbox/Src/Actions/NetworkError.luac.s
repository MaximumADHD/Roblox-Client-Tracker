PROTO_0:
        0 MOVE                             R2 R0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+5]
        8 DUPTABLE                         R3 K4 [{"responseBody"}]
        9 SETTABLEKS                       R0 R3 K3 ["responseBody"]
       11 MOVE                             R2 R3
       12 DUPTABLE                         R3 K7 [{"response", "networkErrorAction"}]
       13 SETTABLEKS                       R2 R3 K5 ["response"]
       15 SETTABLEKS                       R1 R3 K6 ["networkErrorAction"]
       17 RETURN                           R3 1

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
       16 GETTABLEKS                       R2 R2 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["Action"]
       20 MOVE                             R4 R3
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R5 R5 K9 ["Name"]
       25 DUPCLOSURE                       R6 K10 [PROTO_0]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1
