PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["displayName"]
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K2 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+6]
        8 GETTABLEKS                       R1 R0 K0 ["displayName"]
       10 GETTABLEKS                       R1 R1 K4 ["name"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K5 ["toJSBoolean"]
       17 MOVE                             R4 R1
       18 CALL                             R3 1 1
       19 JUMPIFNOT                        R3 ; [+2]
       20 MOVE                             R2 R1
       21 JUMPIF                           R2 ; [+1]
       22 LOADNIL                          R2
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Boolean"]
       14 NEWTABLE                         R3 1 0
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["JestTypes"]
       20 CALL                             R4 1 1
       21 DUPCLOSURE                       R5 K8 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R5 R3 K9 ["default"]
       25 RETURN                           R3 1
