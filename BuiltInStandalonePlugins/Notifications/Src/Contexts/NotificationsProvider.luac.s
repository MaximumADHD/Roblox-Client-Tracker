PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETTABLEKS                       R9 R7 K2 ["notificationType"]
        9 GETTABLE                         R8 R2 R9
       10 JUMPIFNOT                        R8 ; [+11]
       11 GETTABLEKS                       R10 R7 K2 ["notificationType"]
       13 GETTABLE                         R9 R2 R10
       14 GETTABLEKS                       R10 R7 K3 ["notificationId"]
       16 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       18 GETIMPORT                        R8 K6 [table.insert]
       20 CALL                             R8 2 0
       21 JUMP                             ; [+9]
       22 GETTABLEKS                       R8 R7 K2 ["notificationType"]
       24 NEWTABLE                         R9 0 1
       26 GETTABLEKS                       R10 R7 K3 ["notificationId"]
       28 SETLIST                          R9 R10 1 [1]
       30 SETTABLE                         R9 R2 R8
       31 FORGLOOP                         R3 2 ; [-25]
       33 GETUPVAL                         R3 0
       34 MOVE                             R5 R2
       35 NAMECALL                         R3 R3 K7 ["JSONEncode"]
       37 CALL                             R3 2 1
       38 JUMPIFNOT                        R1 ; [+8]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R4 R5 K8 ["trayVisible"]
       42 JUMPIF                           R4 ; [+4]
       43 GETUPVAL                         R4 2
       44 SETTABLEKS                       R3 R4 K9 ["current"]
       46 RETURN                           R0 0
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R5 R6 K10 ["eventHandlers"]
       50 GETTABLEKS                       R4 R5 K11 ["logNotificationImpressions"]
       52 MOVE                             R5 R3
       53 CALL                             R4 1 0
       54 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["trayVisible"]
        3 JUMPIFNOT                        R0 ; [+18]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIFEQKS                       R0 K2 [""] ; [+14]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K3 ["eventHandlers"]
       12 GETTABLEKS                       R0 R1 K4 ["logNotificationImpressions"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K1 ["current"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 1
       19 LOADK                            R1 K2 [""]
       20 SETTABLEKS                       R1 R0 K1 ["current"]
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R2 R0 R3
        3 CALL                             R1 1 1
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K0 ["read"]
        7 NEWTABLE                         R2 0 0
        9 GETIMPORT                        R3 K2 [pairs]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 3
       13 FORGPREP_NEXT                    R3
       14 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       16 MOVE                             R9 R2
       17 MOVE                             R10 R7
       18 GETIMPORT                        R8 K5 [table.insert]
       20 CALL                             R8 2 0
       21 FORGLOOP                         R3 2 ; [-8]
       23 GETUPVAL                         R3 1
       24 SETTABLE                         R1 R2 R3
       25 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETUPVAL                         R7 0
        8 MOVE                             R8 R6
        9 CALL                             R7 1 1
       10 GETTABLEKS                       R8 R7 K2 ["notificationId"]
       12 GETUPVAL                         R9 1
       13 JUMPIFNOTEQ                      R8 R9 ; [+4]
       15 LOADB                            R8 1
       16 SETTABLEKS                       R8 R7 K3 ["read"]
       18 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       20 MOVE                             R9 R1
       21 MOVE                             R10 R7
       22 GETIMPORT                        R8 K6 [table.insert]
       24 CALL                             R8 2 0
       25 FORGLOOP                         R2 2 ; [-19]
       27 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETUPVAL                         R7 0
        8 MOVE                             R8 R6
        9 CALL                             R7 1 1
       10 LOADB                            R8 1
       11 SETTABLEKS                       R8 R7 K2 ["read"]
       13 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       15 MOVE                             R9 R1
       16 MOVE                             R10 R7
       17 GETIMPORT                        R8 K5 [table.insert]
       19 CALL                             R8 2 0
       20 FORGLOOP                         R2 2 ; [-14]
       22 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_6]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K11 [{"notifications", "cursor", "allLoaded", "setNotifications", "setCursor", "setAllLoaded", "markNotificationRead", "markNotificationReadFromId", "markAllNotificationsRead", "logNotificationImpressions", "notificationClient"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["notifications"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["cursor"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["allLoaded"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setNotifications"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["setCursor"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setAllLoaded"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["markNotificationRead"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["markNotificationReadFromId"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["markAllNotificationsRead"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["logNotificationImpressions"]
       31 GETUPVAL                         R2 10
       32 GETTABLEKS                       R1 R2 K10 ["notificationClient"]
       34 SETTABLEKS                       R1 R0 K10 ["notificationClient"]
       36 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["useState"]
       12 NEWTABLE                         R4 0 0
       14 CALL                             R3 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K2 ["useState"]
       18 LOADNIL                          R6
       19 CALL                             R5 1 2
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K2 ["useState"]
       23 LOADB                            R8 0
       24 CALL                             R7 1 2
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R9 R10 K3 ["useRef"]
       28 LOADK                            R10 K4 [""]
       29 CALL                             R9 1 1
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R10 R11 K5 ["useCallback"]
       33 NEWCLOSURE                       R11 P0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R9
       37 CAPTURE                          VAL R2
       38 NEWTABLE                         R12 0 2
       40 MOVE                             R13 R2
       41 GETTABLEKS                       R14 R1 K6 ["trayVisible"]
       43 SETLIST                          R12 R13 2 [1]
       45 CALL                             R10 2 1
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R11 R12 K7 ["useEffect"]
       49 NEWCLOSURE                       R12 P1
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R13 0 1
       55 GETTABLEKS                       R14 R1 K6 ["trayVisible"]
       57 SETLIST                          R13 R14 1 [1]
       59 CALL                             R11 2 0
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R11 R12 K5 ["useCallback"]
       63 NEWCLOSURE                       R12 P2
       64 CAPTURE                          VAL R4
       65 CAPTURE                          UPVAL U4
       66 NEWTABLE                         R13 0 2
       68 MOVE                             R14 R3
       69 MOVE                             R15 R4
       70 SETLIST                          R13 R14 2 [1]
       72 CALL                             R11 2 1
       73 GETUPVAL                         R13 0
       74 GETTABLEKS                       R12 R13 K5 ["useCallback"]
       76 NEWCLOSURE                       R13 P3
       77 CAPTURE                          VAL R4
       78 CAPTURE                          UPVAL U4
       79 NEWTABLE                         R14 0 2
       81 MOVE                             R15 R3
       82 MOVE                             R16 R4
       83 SETLIST                          R14 R15 2 [1]
       85 CALL                             R12 2 1
       86 GETUPVAL                         R14 0
       87 GETTABLEKS                       R13 R14 K5 ["useCallback"]
       89 NEWCLOSURE                       R14 P4
       90 CAPTURE                          VAL R4
       91 CAPTURE                          UPVAL U4
       92 NEWTABLE                         R15 0 2
       94 MOVE                             R16 R3
       95 MOVE                             R17 R4
       96 SETLIST                          R15 R16 2 [1]
       98 CALL                             R13 2 1
       99 GETUPVAL                         R15 0
      100 GETTABLEKS                       R14 R15 K8 ["useMemo"]
      102 NEWCLOSURE                       R15 P5
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R0
      114 NEWTABLE                         R16 0 11
      116 MOVE                             R17 R3
      117 MOVE                             R18 R5
      118 MOVE                             R19 R7
      119 MOVE                             R20 R4
      120 MOVE                             R21 R6
      121 MOVE                             R22 R8
      122 MOVE                             R23 R11
      123 MOVE                             R24 R12
      124 MOVE                             R25 R13
      125 MOVE                             R26 R10
      126 GETUPVAL                         R27 5
      127 SETLIST                          R16 R17 11 [1]
      129 CALL                             R14 2 1
      130 GETUPVAL                         R16 0
      131 GETTABLEKS                       R15 R16 K9 ["createElement"]
      133 GETUPVAL                         R17 6
      134 GETTABLEKS                       R16 R17 K10 ["Provider"]
      136 DUPTABLE                         R17 K12 [{"value"}]
      137 SETTABLEKS                       R14 R17 K11 ["value"]
      139 GETTABLEKS                       R18 R0 K13 ["children"]
      141 CALL                             R15 3 -1
      142 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K9 [game]
       25 LOADK                            R5 K10 ["HttpService"]
       26 NAMECALL                         R3 R3 K11 ["GetService"]
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R5 R2 K12 ["Util"]
       31 GETTABLEKS                       R4 R5 K13 ["deepCopy"]
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R8 R0 K14 ["Src"]
       37 GETTABLEKS                       R7 R8 K15 ["Contexts"]
       39 GETTABLEKS                       R6 R7 K16 ["TrayVisibleContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Src"]
       46 GETTABLEKS                       R8 R9 K15 ["Contexts"]
       48 GETTABLEKS                       R7 R8 K17 ["AnalyticsContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R10 R0 K14 ["Src"]
       55 GETTABLEKS                       R9 R10 K18 ["Clients"]
       57 GETTABLEKS                       R8 R9 K19 ["NotificationClient"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K4 [require]
       62 GETIMPORT                        R11 K1 [script]
       64 GETTABLEKS                       R10 R11 K2 ["Parent"]
       66 GETTABLEKS                       R9 R10 K20 ["NotificationsContext"]
       68 CALL                             R8 1 1
       69 DUPCLOSURE                       R9 K21 [PROTO_9]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R8
       77 RETURN                           R9 1
