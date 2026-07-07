PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantNotificationManager"]
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["NotificationManagerStore should only be set when FFlagAssistantNotificationManager is enabled."]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R3 1
       10 NOT                              R2 R3
       11 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       13 LOADK                            R3 K4 ["NotificationManagerStore has already been set"]
       14 GETIMPORT                        R1 K3 [assert]
       16 CALL                             R1 2 0
       17 SETUPVAL                         R0 1
       18 RETURN                           R0 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 LOADNIL                          R3
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          REF R3
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          REF R3
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          REF R3
       29 DUPTABLE                         R7 K13 [{"set", "get", "destroy"}]
       30 SETTABLEKS                       R4 R7 K10 ["set"]
       32 SETTABLEKS                       R5 R7 K11 ["get"]
       34 SETTABLEKS                       R6 R7 K12 ["destroy"]
       36 CLOSEUPVALS                      R3
       37 RETURN                           R7 1
