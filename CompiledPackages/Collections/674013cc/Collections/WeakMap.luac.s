PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R2 K1 [{"__mode"}]
        3 LOADK                            R3 K2 ["k"]
        4 SETTABLEKS                       R3 R2 K0 ["__mode"]
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K4 [setmetatable]
       10 CALL                             R0 2 1
       11 DUPTABLE                         R2 K6 [{"_weakMap"}]
       12 SETTABLEKS                       R0 R2 K5 ["_weakMap"]
       14 GETUPVAL                         R3 0
       15 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       17 GETIMPORT                        R1 K4 [setmetatable]
       19 CALL                             R1 2 1
       20 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_weakMap"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_weakMap"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["_weakMap"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["ES7Types"]
       11 CALL                             R2 1 1
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R3 K6 ["__index"]
       16 DUPCLOSURE                       R4 K7 [PROTO_0]
       17 CAPTURE                          VAL R3
       18 SETTABLEKS                       R4 R3 K8 ["new"]
       20 DUPCLOSURE                       R4 K9 [PROTO_1]
       21 SETTABLEKS                       R4 R3 K10 ["get"]
       23 DUPCLOSURE                       R4 K11 [PROTO_2]
       24 SETTABLEKS                       R4 R3 K12 ["set"]
       26 DUPCLOSURE                       R4 K13 [PROTO_3]
       27 SETTABLEKS                       R4 R3 K14 ["has"]
       29 RETURN                           R3 1
