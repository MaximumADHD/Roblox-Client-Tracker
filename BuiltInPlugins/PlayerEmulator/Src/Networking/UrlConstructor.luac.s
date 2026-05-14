PROTO_0:
        0 PREPVARARGS                      2
        1 GETIMPORT                        R3 K3 [string.format]
        3 MOVE                             R4 R1
        4 GETVARARGS                       R5 -1
        5 CALL                             R3 -1 1
        6 ORK                              R2 R3 K0 [""]
        7 GETIMPORT                        R3 K3 [string.format]
        9 LOADK                            R4 K4 ["https://%s.%s%s"]
       10 MOVE                             R5 R0
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R2
       13 CALL                             R3 4 -1
       14 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContentProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["BaseUrl"]
        9 NAMECALL                         R0 R0 K5 ["lower"]
       11 CALL                             R0 1 1
       12 LOADK                            R3 K6 ["https://www."]
       13 NAMECALL                         R1 R0 K7 ["find"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+6]
       17 LOADN                            R3 13
       18 NAMECALL                         R1 R0 K8 ["sub"]
       20 CALL                             R1 2 1
       21 MOVE                             R0 R1
       22 JUMP                             ; [+10]
       23 LOADK                            R3 K9 ["http://www."]
       24 NAMECALL                         R1 R0 K7 ["find"]
       26 CALL                             R1 2 1
       27 JUMPIFNOT                        R1 ; [+5]
       28 LOADN                            R3 12
       29 NAMECALL                         R1 R0 K8 ["sub"]
       31 CALL                             R1 2 1
       32 MOVE                             R0 R1
       33 NEWTABLE                         R1 1 0
       35 NEWCLOSURE                       R2 P0
       36 CAPTURE                          REF R0
       37 SETTABLEKS                       R2 R1 K10 ["BuildUrl"]
       39 CLOSEUPVALS                      R0
       40 RETURN                           R1 1
