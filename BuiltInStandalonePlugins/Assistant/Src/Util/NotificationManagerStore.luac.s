PROTO_0:
        0 GETUPVAL                         R3 0
        1 NOT                              R2 R3
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["NotificationManagerStore has already been set"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["NotificationManagerStore has not been set"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["destroy"]
        6 CALL                             R0 0 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 LOADNIL                          R2
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          REF R2
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          REF R2
       19 NEWCLOSURE                       R5 P2
       20 CAPTURE                          REF R2
       21 DUPTABLE                         R6 K11 [{"set", "get", "destroy"}]
       22 SETTABLEKS                       R3 R6 K8 ["set"]
       24 SETTABLEKS                       R4 R6 K9 ["get"]
       26 SETTABLEKS                       R5 R6 K10 ["destroy"]
       28 CLOSEUPVALS                      R2
       29 RETURN                           R6 1
