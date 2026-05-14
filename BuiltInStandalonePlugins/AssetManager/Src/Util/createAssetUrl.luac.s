PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["BaseUrl"]
        3 GETUPVAL                         R2 1
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K2 [tostring]
        8 CALL                             R4 1 1
        9 NAMECALL                         R2 R2 K3 ["UrlEncode"]
       11 CALL                             R2 2 1
       12 LOADK                            R4 K4 ["%*library/%*/asset"]
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 NAMECALL                         R4 R4 K5 ["format"]
       17 CALL                             R4 3 1
       18 MOVE                             R3 R4
       19 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContentProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K5 [PROTO_0]
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
