PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["NotificationManagerStore should only be set when FFlagAssistantNotificationManager is enabled."]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R3 1
        9 NOT                              R2 R3
       10 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       12 LOADK                            R3 K3 ["NotificationManagerStore has already been set"]
       13 GETIMPORT                        R1 K2 [assert]
       15 CALL                             R1 2 0
       16 SETUPVAL                         R0 1
       17 RETURN                           R0 1

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
       20 GETTABLEKS                       R3 R3 K10 ["FFlagAssistantNotificationManager"]
       22 CALL                             R2 1 1
       23 LOADNIL                          R3
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          REF R3
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          REF R3
       29 NEWCLOSURE                       R6 P2
       30 CAPTURE                          REF R3
       31 DUPTABLE                         R7 K14 [{"set", "get", "destroy"}]
       32 SETTABLEKS                       R4 R7 K11 ["set"]
       34 SETTABLEKS                       R5 R7 K12 ["get"]
       36 SETTABLEKS                       R6 R7 K13 ["destroy"]
       38 CLOSEUPVALS                      R3
       39 RETURN                           R7 1
