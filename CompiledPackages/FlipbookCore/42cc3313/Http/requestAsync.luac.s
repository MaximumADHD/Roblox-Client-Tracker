PROTO_0:
        0 GETUPVAL                         R0 1
        1 DUPTABLE                         R2 K4 [{"Url", "Method", "Headers", "Body"}]
        2 GETUPVAL                         R3 2
        3 SETTABLEKS                       R3 R2 K0 ["Url"]
        5 GETUPVAL                         R4 3
        6 GETTABLEKS                       R3 R4 K5 ["method"]
        8 SETTABLEKS                       R3 R2 K1 ["Method"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R3 R4 K6 ["headers"]
       13 SETTABLEKS                       R3 R2 K2 ["Headers"]
       15 GETUPVAL                         R3 4
       16 SETTABLEKS                       R3 R2 K3 ["Body"]
       18 NAMECALL                         R0 R0 K7 ["RequestAsync"]
       20 CALL                             R0 2 1
       21 SETUPVAL                         R0 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 DUPTABLE                         R3 K4 [{"method", "headers"}]
        6 LOADK                            R4 K5 ["GET"]
        7 SETTABLEKS                       R4 R3 K2 ["method"]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K3 ["headers"]
       13 MOVE                             R4 R1
       14 CALL                             R2 2 1
       15 LOADNIL                          R3
       16 JUMPIFNOT                        R2 ; [+31]
       17 GETTABLEKS                       R4 R2 K6 ["body"]
       19 JUMPIFNOT                        R4 ; [+28]
       20 GETTABLEKS                       R5 R2 K6 ["body"]
       22 FASTCALL1                        TYPEOF R5 ; [+2]
       23 GETIMPORT                        R4 K8 [typeof]
       25 CALL                             R4 1 1
       26 JUMPIFNOTEQKS                    R4 K9 ["table"] ; [+14]
       28 GETTABLEKS                       R4 R2 K3 ["headers"]
       30 LOADK                            R5 K10 ["application/json"]
       31 SETTABLEKS                       R5 R4 K11 ["Content-Type"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R6 R2 K6 ["body"]
       36 NAMECALL                         R4 R4 K12 ["JSONEncode"]
       38 CALL                             R4 2 1
       39 MOVE                             R3 R4
       40 JUMP                             ; [+7]
       41 GETTABLEKS                       R5 R2 K6 ["body"]
       43 FASTCALL1                        TOSTRING R5 ; [+2]
       44 GETIMPORT                        R4 K14 [tostring]
       46 CALL                             R4 1 1
       47 MOVE                             R3 R4
       48 LOADNIL                          R4
       49 GETIMPORT                        R5 K16 [pcall]
       51 NEWCLOSURE                       R6 P0
       52 CAPTURE                          REF R4
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          REF R3
       57 CALL                             R5 1 2
       58 CLOSEUPVALS                      R3
       59 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R6 K7 [script]
       11 GETTABLEKS                       R5 R6 K8 ["Parent"]
       13 GETTABLEKS                       R4 R5 K8 ["Parent"]
       15 GETTABLEKS                       R3 R4 K9 ["Packages"]
       17 GETTABLEKS                       R2 R3 K10 ["Sift"]
       19 CALL                             R1 1 1
       20 DUPCLOSURE                       R2 K11 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 RETURN                           R2 1
