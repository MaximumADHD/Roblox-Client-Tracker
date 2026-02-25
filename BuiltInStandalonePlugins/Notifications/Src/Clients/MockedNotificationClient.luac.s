PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TONUMBER R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [tonumber]
        4 CALL                             R2 1 1
        5 LOADN                            R3 1
        6 JUMPIFEQKNIL                     R2 ; [+2]
        8 MOVE                             R3 R2
        9 NEWTABLE                         R4 0 0
       11 LOADN                            R7 1
       12 LOADN                            R5 12
       13 LOADN                            R6 1
       14 FORNPREP                         R5
       15 ADD                              R8 R7 R3
       16 GETUPVAL                         R10 0
       17 GETUPVAL                         R14 0
       18 LENGTH                           R13 R14
       19 MOD                              R12 R8 R13
       20 ADDK                             R11 R12 K2 [1]
       21 GETTABLE                         R9 R10 R11
       22 MOVE                             R10 R8
       23 CALL                             R9 1 1
       24 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       26 MOVE                             R11 R4
       27 MOVE                             R12 R9
       28 GETIMPORT                        R10 K5 [table.insert]
       30 CALL                             R10 2 0
       31 FORNLOOP                         R5
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R5 R6 K6 ["new"]
       35 DUPCLOSURE                       R6 K7 [PROTO_1]
       36 CALL                             R5 1 1
       37 NAMECALL                         R6 R5 K8 ["await"]
       39 CALL                             R6 1 0
       40 DUPTABLE                         R6 K11 [{"responseBody", "responseCode"}]
       41 DUPTABLE                         R7 K14 [{"creatorStreamNotifications", "nextCursor"}]
       42 SETTABLEKS                       R4 R7 K12 ["creatorStreamNotifications"]
       44 ADDK                             R9 R3 K15 [12]
       45 FASTCALL1                        TOSTRING R9 ; [+2]
       46 GETIMPORT                        R8 K17 [tostring]
       48 CALL                             R8 1 1
       49 SETTABLEKS                       R8 R7 K13 ["nextCursor"]
       51 SETTABLEKS                       R7 R6 K9 ["responseBody"]
       53 LOADN                            R7 200
       54 SETTABLEKS                       R7 R6 K10 ["responseCode"]
       56 RETURN                           R6 1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"responseBody", "responseCode"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["responseBody"]
        4 LOADN                            R2 200
        5 SETTABLEKS                       R2 R1 K1 ["responseCode"]
        7 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"responseBody", "responseCode"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["responseBody"]
        4 LOADN                            R1 200
        5 SETTABLEKS                       R1 R0 K1 ["responseCode"]
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R3 K8 ["Promise"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R6 R0 K9 ["Src"]
       24 GETTABLEKS                       R5 R6 K10 ["Clients"]
       26 GETTABLEKS                       R4 R5 K11 ["MockedNotifications"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K12 [PROTO_2]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 DUPCLOSURE                       R5 K13 [PROTO_3]
       33 DUPCLOSURE                       R6 K14 [PROTO_4]
       34 DUPTABLE                         R7 K18 [{"getNotifications", "markNotificationRead", "markAllNotificationsRead"}]
       35 SETTABLEKS                       R4 R7 K15 ["getNotifications"]
       37 SETTABLEKS                       R5 R7 K16 ["markNotificationRead"]
       39 SETTABLEKS                       R6 R7 K17 ["markAllNotificationsRead"]
       41 RETURN                           R7 1
