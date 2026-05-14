PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K2 [{"notificationClient"}]
       13 GETUPVAL                         R7 3
       14 SETTABLEKS                       R7 R6 K1 ["notificationClient"]
       16 DUPTABLE                         R7 K4 [{"NotificationTray"}]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K0 ["createElement"]
       20 GETUPVAL                         R9 4
       21 CALL                             R8 1 1
       22 SETTABLEKS                       R8 R7 K3 ["NotificationTray"]
       24 CALL                             R4 3 -1
       25 SETLIST                          R3 R4 -1 [1]
       27 CALL                             R0 3 -1
       28 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Clients"]
       22 GETTABLEKS                       R3 R3 K9 ["NotificationClient"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K11 ["NotificationsProvider"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Src"]
       38 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       40 GETTABLEKS                       R5 R5 K12 ["MenuVisibleProvider"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K13 ["Components"]
       49 GETTABLEKS                       R6 R6 K14 ["NotificationTray"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K15 [PROTO_0]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 RETURN                           R6 1
