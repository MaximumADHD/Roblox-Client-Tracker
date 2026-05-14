PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RibbonNotificationService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["allLoaded"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 LOADB                            R2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["cursor"]
        9 JUMPIFEQKS                       R3 K2 [""] ; [+5]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K1 ["cursor"]
       14 NOT                              R2 R3
       15 OR                               R2 R2 R1
       16 JUMPIFNOT                        R2 ; [+9]
       17 GETUPVAL                         R3 1
       18 DUPTABLE                         R4 K5 [{"newNotificationAvailable", "syncBroadcastedNotifications"}]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R4 K3 ["newNotificationAvailable"]
       22 LOADB                            R5 0
       23 SETTABLEKS                       R5 R4 K4 ["syncBroadcastedNotifications"]
       25 CALL                             R3 1 0
       26 GETUPVAL                         R3 2
       27 LOADB                            R4 1
       28 CALL                             R3 1 0
       29 LOADNIL                          R3
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K6 ["notificationClient"]
       33 GETTABLEKS                       R4 R4 K7 ["getNotifications"]
       35 MOVE                             R5 R0
       36 JUMPIFNOT                        R1 ; [+2]
       37 LOADNIL                          R6
       38 JUMP                             ; [+3]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K1 ["cursor"]
       42 CALL                             R4 2 1
       43 MOVE                             R3 R4
       44 GETTABLEKS                       R4 R3 K8 ["responseCode"]
       46 LOADN                            R5 200
       47 JUMPIFNOTLE                      R5 R4 ; [+120]
       49 GETTABLEKS                       R4 R3 K8 ["responseCode"]
       51 LOADN                            R5 44
       52 JUMPIFNOTLT                      R4 R5 ; [+115]
       54 GETUPVAL                         R4 3
       55 LOADB                            R5 0
       56 CALL                             R4 1 0
       57 GETTABLEKS                       R4 R3 K9 ["responseBody"]
       59 GETTABLEKS                       R4 R4 K10 ["nextCursor"]
       61 JUMPIFEQKS                       R4 K2 [""] ; [+7]
       63 GETTABLEKS                       R4 R3 K9 ["responseBody"]
       65 GETTABLEKS                       R4 R4 K10 ["nextCursor"]
       67 JUMPIFNOTEQKNIL                  R4 ; [+7]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K11 ["setCursor"]
       72 LOADNIL                          R5
       73 CALL                             R4 1 0
       74 JUMP                             ; [+8]
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R4 R4 K11 ["setCursor"]
       78 GETTABLEKS                       R5 R3 K9 ["responseBody"]
       80 GETTABLEKS                       R5 R5 K10 ["nextCursor"]
       82 CALL                             R4 1 0
       83 GETTABLEKS                       R5 R3 K9 ["responseBody"]
       85 GETTABLEKS                       R5 R5 K12 ["creatorStreamNotifications"]
       87 LENGTH                           R4 R5
       88 JUMPIFNOTEQKN                    R4 K13 [0] ; [+6]
       90 GETUPVAL                         R4 0
       91 GETTABLEKS                       R4 R4 K14 ["setAllLoaded"]
       93 LOADB                            R5 1
       94 CALL                             R4 1 0
       95 NEWTABLE                         R4 0 0
       97 JUMPIF                           R1 ; [+15]
       98 GETUPVAL                         R5 0
       99 GETTABLEKS                       R5 R5 K15 ["notifications"]
      101 LOADNIL                          R6
      102 LOADNIL                          R7
      103 FORGPREP                         R5
      104 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      106 MOVE                             R11 R4
      107 MOVE                             R12 R9
      108 GETIMPORT                        R10 K18 [table.insert]
      110 CALL                             R10 2 0
      111 FORGLOOP                         R5 2 ; [-8]
      113 GETIMPORT                        R5 K20 [pairs]
      115 GETTABLEKS                       R6 R3 K9 ["responseBody"]
      117 GETTABLEKS                       R6 R6 K12 ["creatorStreamNotifications"]
      119 CALL                             R5 1 3
      120 FORGPREP_NEXT                    R5
      121 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      123 MOVE                             R11 R4
      124 MOVE                             R12 R9
      125 GETIMPORT                        R10 K18 [table.insert]
      127 CALL                             R10 2 0
      128 FORGLOOP                         R5 2 ; [-8]
      130 JUMPIFNOT                        R2 ; [+22]
      131 LENGTH                           R5 R4
      132 LOADN                            R6 0
      133 JUMPIFNOTLT                      R6 R5 ; [+19]
      135 GETUPVAL                         R5 4
      136 JUMPIFNOT                        R5 ; [+16]
      137 GETTABLEN                        R5 R4 1
      138 GETTABLEKS                       R5 R5 K21 ["notificationId"]
      140 GETUPVAL                         R7 5
      141 GETTABLEKS                       R7 R7 K22 ["trayVisible"]
      143 JUMPIFNOT                        R7 ; [+2]
      144 MOVE                             R6 R5
      145 JUMP                             ; [+1]
      146 LOADK                            R6 K2 [""]
      147 GETUPVAL                         R7 4
      148 MOVE                             R9 R5
      149 MOVE                             R10 R6
      150 NAMECALL                         R7 R7 K23 ["OnNotificationUpdateFromPlugin"]
      152 CALL                             R7 3 0
      153 GETUPVAL                         R5 0
      154 GETTABLEKS                       R5 R5 K24 ["logNotificationImpressions"]
      156 GETTABLEKS                       R6 R3 K9 ["responseBody"]
      158 GETTABLEKS                       R6 R6 K12 ["creatorStreamNotifications"]
      160 MOVE                             R7 R2
      161 CALL                             R5 2 0
      162 GETUPVAL                         R5 0
      163 GETTABLEKS                       R5 R5 K25 ["setNotifications"]
      165 MOVE                             R6 R4
      166 CALL                             R5 1 0
      167 JUMP                             ; [+8]
      168 GETUPVAL                         R4 3
      169 LOADB                            R5 1
      170 CALL                             R4 1 0
      171 GETUPVAL                         R4 0
      172 GETTABLEKS                       R4 R4 K11 ["setCursor"]
      174 LOADNIL                          R5
      175 CALL                             R4 1 0
      176 GETUPVAL                         R4 2
      177 LOADB                            R5 0
      178 CALL                             R4 1 0
      179 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"newNotificationAvailable", "syncBroadcastedNotifications"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["newNotificationAvailable"]
        4 GETTABLEKS                       R2 R0 K1 ["syncBroadcastedNotifications"]
        6 SETTABLEKS                       R2 R1 K1 ["syncBroadcastedNotifications"]
        8 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 DUPCLOSURE                       R2 K1 [PROTO_3]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["markNotificationReadFromId"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["markAllNotificationsRead"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"newNotificationAvailable", "syncBroadcastedNotifications"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["newNotificationAvailable"]
        4 GETTABLEKS                       R2 R0 K1 ["syncBroadcastedNotifications"]
        6 SETTABLEKS                       R2 R1 K1 ["syncBroadcastedNotifications"]
        8 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 DUPCLOSURE                       R2 K1 [PROTO_7]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"newNotificationAvailable", "syncBroadcastedNotifications"}]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R1 K0 ["newNotificationAvailable"]
        5 LOADB                            R2 1
        6 SETTABLEKS                       R2 R1 K1 ["syncBroadcastedNotifications"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+4]
       14 GETUPVAL                         R0 2
       15 NAMECALL                         R0 R0 K0 ["Disconnect"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 3
       19 GETUPVAL                         R1 4
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_11:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+31]
        6 GETUPVAL                         R3 1
        7 JUMPIFNOT                        R3 ; [+39]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["NewNotificationFromRibbon"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 NAMECALL                         R3 R3 K1 ["Connect"]
       16 CALL                             R3 2 1
       17 MOVE                             R0 R3
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K2 ["NotificationReadFromRibbon"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U4
       23 NAMECALL                         R3 R3 K1 ["Connect"]
       25 CALL                             R3 2 1
       26 MOVE                             R1 R3
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K3 ["AllNotificationsReadFromRibbon"]
       30 NEWCLOSURE                       R5 P2
       31 CAPTURE                          UPVAL U4
       32 NAMECALL                         R3 R3 K1 ["Connect"]
       34 CALL                             R3 2 1
       35 MOVE                             R2 R3
       36 JUMP                             ; [+10]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K0 ["NewNotificationFromRibbon"]
       40 NEWCLOSURE                       R5 P3
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U3
       43 NAMECALL                         R3 R3 K1 ["Connect"]
       45 CALL                             R3 2 1
       46 MOVE                             R0 R3
       47 GETUPVAL                         R3 5
       48 LOADB                            R4 1
       49 LOADB                            R5 1
       50 CALL                             R3 2 0
       51 GETUPVAL                         R3 6
       52 NEWCLOSURE                       R4 P4
       53 CAPTURE                          UPVAL U3
       54 GETUPVAL                         R6 7
       55 GETTABLEKS                       R6 R6 K4 ["HOUR_IN_SECONDS"]
       57 GETUPVAL                         R7 7
       58 GETTABLEKS                       R7 R7 K5 ["SECONDS_IN_MS"]
       60 MUL                              R5 R6 R7
       61 CALL                             R3 2 1
       62 NEWCLOSURE                       R4 P5
       63 CAPTURE                          REF R0
       64 CAPTURE                          REF R1
       65 CAPTURE                          REF R2
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          VAL R3
       68 CLOSEUPVALS                      R0
       69 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["newNotificationAvailable"]
        3 JUMPIFNOT                        R0 ; [+20]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["trayVisible"]
        7 JUMPIF                           R0 ; [+16]
        8 GETUPVAL                         R0 2
        9 JUMPIF                           R0 ; [+14]
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K2 ["current"]
       13 JUMPIF                           R0 ; [+10]
       14 GETUPVAL                         R0 4
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K3 ["syncBroadcastedNotifications"]
       18 LOADB                            R2 1
       19 CALL                             R0 2 0
       20 GETUPVAL                         R0 3
       21 LOADB                            R1 1
       22 SETTABLEKS                       R1 R0 K2 ["current"]
       24 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["trayVisible"]
        3 JUMPIFNOT                        R0 ; [+18]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["notifications"]
        7 GETTABLEN                        R0 R1 1
        8 JUMPIFNOT                        R0 ; [+13]
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+11]
       11 GETUPVAL                         R0 2
       12 LOADK                            R2 K2 [""]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K1 ["notifications"]
       16 GETTABLEN                        R3 R4 1
       17 GETTABLEKS                       R3 R3 K3 ["notificationId"]
       19 NAMECALL                         R0 R0 K4 ["OnNotificationUpdateFromPlugin"]
       21 CALL                             R0 3 0
       22 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+11]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["notifications"]
        5 LENGTH                           R1 R2
        6 LOADN                            R2 75
        7 JUMPIFLE                         R2 R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["allLoaded"]
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R0 K2 ["AbsoluteCanvasSize"]
       16 GETTABLEKS                       R3 R3 K3 ["y"]
       18 GETTABLEKS                       R5 R0 K4 ["CanvasPosition"]
       20 GETTABLEKS                       R5 R5 K3 ["y"]
       22 GETTABLEKS                       R6 R0 K5 ["AbsoluteSize"]
       24 GETTABLEKS                       R6 R6 K3 ["y"]
       26 ADD                              R4 R5 R6
       27 SUB                              R2 R3 R4
       28 LOADN                            R3 10
       29 JUMPIFLT                         R2 R3 ; [+2]
       31 LOADB                            R1 0 +1
       32 LOADB                            R1 1
       33 JUMPIFNOT                        R1 ; [+2]
       34 GETUPVAL                         R2 2
       35 CALL                             R2 0 0
       36 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [ipairs]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["notifications"]
        7 CALL                             R1 1 3
        8 FORGPREP_INEXT                   R1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K3 ["createElement"]
       12 GETUPVAL                         R7 2
       13 DUPTABLE                         R8 K8 [{"key", "Index", "Notification", "LayoutOrder"}]
       14 GETTABLEKS                       R9 R5 K9 ["notificationId"]
       16 SETTABLEKS                       R9 R8 K4 ["key"]
       18 SETTABLEKS                       R4 R8 K5 ["Index"]
       20 SETTABLEKS                       R5 R8 K6 ["Notification"]
       22 SETTABLEKS                       R4 R8 K7 ["LayoutOrder"]
       24 CALL                             R6 2 1
       25 SETTABLE                         R6 R0 R4
       26 FORGLOOP                         R1 2 [inext] ; [-18]
       28 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["createElement"]
        7 LOADK                            R1 K1 ["Frame"]
        8 NEWTABLE                         R2 2 0
       10 LOADN                            R3 150
       11 SETTABLEKS                       R3 R2 K2 ["LayoutOrder"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K3 ["Tag"]
       16 LOADK                            R4 K4 ["Component-NotificationTrayLoading"]
       17 SETTABLE                         R4 R2 R3
       18 NEWTABLE                         R3 0 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K0 ["createElement"]
       23 GETUPVAL                         R5 2
       24 DUPTABLE                         R6 K7 [{"Position", "AnchorPoint"}]
       25 GETIMPORT                        R7 K10 [UDim2.new]
       27 LOADK                            R8 K11 [0.5]
       28 LOADN                            R9 0
       29 LOADK                            R10 K11 [0.5]
       30 LOADN                            R11 0
       31 CALL                             R7 4 1
       32 SETTABLEKS                       R7 R6 K5 ["Position"]
       34 GETIMPORT                        R7 K13 [Vector2.new]
       36 LOADK                            R8 K11 [0.5]
       37 LOADK                            R9 K11 [0.5]
       38 CALL                             R7 2 1
       39 SETTABLEKS                       R7 R6 K6 ["AnchorPoint"]
       41 CALL                             R4 2 -1
       42 SETLIST                          R3 R4 -1 [1]
       44 CALL                             R0 3 -1
       45 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["useState"]
       13 DUPTABLE                         R5 K3 [{"newNotificationAvailable", "syncBroadcastedNotifications"}]
       14 LOADB                            R6 0
       15 SETTABLEKS                       R6 R5 K1 ["newNotificationAvailable"]
       17 LOADB                            R6 0
       18 SETTABLEKS                       R6 R5 K2 ["syncBroadcastedNotifications"]
       20 CALL                             R4 1 2
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K4 ["useContext"]
       24 GETUPVAL                         R7 1
       25 CALL                             R6 1 1
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K4 ["useContext"]
       29 GETUPVAL                         R8 2
       30 CALL                             R7 1 1
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K5 ["useRef"]
       34 LOADB                            R9 0
       35 CALL                             R8 1 1
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       39 NEWCLOSURE                       R10 P0
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R7
       46 NEWTABLE                         R11 0 4
       48 GETTABLEKS                       R12 R6 K7 ["notifications"]
       50 GETTABLEKS                       R13 R6 K8 ["cursor"]
       52 GETTABLEKS                       R14 R6 K9 ["allLoaded"]
       54 GETTABLEKS                       R15 R7 K10 ["trayVisible"]
       56 SETLIST                          R11 R12 4 [1]
       58 CALL                             R9 2 1
       59 LOADNIL                          R10
       60 NEWCLOSURE                       R10 P1
       61 CAPTURE                          VAL R9
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R11 R11 K11 ["useEffect"]
       65 NEWCLOSURE                       R12 P2
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R9
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          UPVAL U7
       75 NEWTABLE                         R13 0 0
       77 CALL                             R11 2 0
       78 GETUPVAL                         R11 0
       79 GETTABLEKS                       R11 R11 K11 ["useEffect"]
       81 NEWCLOSURE                       R12 P3
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R8
       86 CAPTURE                          REF R10
       87 NEWTABLE                         R13 0 4
       89 MOVE                             R14 R4
       90 GETTABLEKS                       R15 R7 K10 ["trayVisible"]
       92 MOVE                             R16 R0
       93 MOVE                             R17 R10
       94 SETLIST                          R13 R14 4 [1]
       96 CALL                             R11 2 0
       97 GETUPVAL                         R11 0
       98 GETTABLEKS                       R11 R11 K11 ["useEffect"]
      100 NEWCLOSURE                       R12 P4
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R6
      103 CAPTURE                          UPVAL U3
      104 NEWTABLE                         R13 0 2
      106 GETTABLEKS                       R14 R7 K10 ["trayVisible"]
      108 GETTABLEKS                       R15 R6 K7 ["notifications"]
      110 SETLIST                          R13 R14 2 [1]
      112 CALL                             R11 2 0
      113 GETUPVAL                         R11 0
      114 GETTABLEKS                       R11 R11 K6 ["useCallback"]
      116 NEWCLOSURE                       R12 P5
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R9
      120 NEWTABLE                         R13 0 4
      122 GETTABLEKS                       R15 R6 K7 ["notifications"]
      124 LENGTH                           R14 R15
      125 GETTABLEKS                       R15 R6 K9 ["allLoaded"]
      127 MOVE                             R16 R9
      128 MOVE                             R17 R0
      129 SETLIST                          R13 R14 4 [1]
      131 CALL                             R11 2 1
      132 GETUPVAL                         R12 0
      133 GETTABLEKS                       R12 R12 K12 ["useMemo"]
      135 NEWCLOSURE                       R13 P6
      136 CAPTURE                          VAL R6
      137 CAPTURE                          UPVAL U0
      138 CAPTURE                          UPVAL U8
      139 NEWTABLE                         R14 0 1
      141 GETTABLEKS                       R15 R6 K7 ["notifications"]
      143 SETLIST                          R14 R15 1 [1]
      145 CALL                             R12 2 1
      146 GETUPVAL                         R13 0
      147 GETTABLEKS                       R13 R13 K12 ["useMemo"]
      149 NEWCLOSURE                       R14 P7
      150 CAPTURE                          VAL R0
      151 CAPTURE                          UPVAL U0
      152 CAPTURE                          UPVAL U9
      153 NEWTABLE                         R15 0 1
      155 MOVE                             R16 R0
      156 SETLIST                          R15 R16 1 [1]
      158 CALL                             R13 2 1
      159 GETUPVAL                         R14 0
      160 GETTABLEKS                       R14 R14 K13 ["createElement"]
      162 LOADK                            R15 K14 ["Frame"]
      163 NEWTABLE                         R16 1 0
      165 GETUPVAL                         R17 0
      166 GETTABLEKS                       R17 R17 K15 ["Tag"]
      168 LOADK                            R18 K16 ["Component-NotificationTray"]
      169 SETTABLE                         R18 R16 R17
      170 DUPTABLE                         R17 K19 [{"Header", "ScrollingTray"}]
      171 GETUPVAL                         R18 0
      172 GETTABLEKS                       R18 R18 K13 ["createElement"]
      174 GETUPVAL                         R19 10
      175 DUPTABLE                         R20 K21 [{"LayoutOrder"}]
      176 LOADN                            R21 1
      177 SETTABLEKS                       R21 R20 K20 ["LayoutOrder"]
      179 CALL                             R18 2 1
      180 SETTABLEKS                       R18 R17 K17 ["Header"]
      182 LENGTH                           R19 R12
      183 LOADN                            R20 0
      184 JUMPIFNOTLT                      R20 R19 ; [+35]
      186 GETUPVAL                         R18 0
      187 GETTABLEKS                       R18 R18 K13 ["createElement"]
      189 LOADK                            R19 K22 ["ScrollingFrame"]
      190 NEWTABLE                         R20 4 0
      192 LOADN                            R21 2
      193 SETTABLEKS                       R21 R20 K20 ["LayoutOrder"]
      195 GETUPVAL                         R21 0
      196 GETTABLEKS                       R21 R21 K23 ["Change"]
      198 GETTABLEKS                       R21 R21 K24 ["CanvasPosition"]
      200 SETTABLE                         R11 R20 R21
      201 GETUPVAL                         R21 0
      202 GETTABLEKS                       R21 R21 K15 ["Tag"]
      204 LOADK                            R22 K25 ["Component-NotificationTrayScrollingFrame"]
      205 SETTABLE                         R22 R20 R21
      206 GETUPVAL                         R21 11
      207 GETTABLEKS                       R21 R21 K26 ["List"]
      209 GETTABLEKS                       R21 R21 K27 ["join"]
      211 MOVE                             R22 R12
      212 NEWTABLE                         R23 0 1
      214 MOVE                             R24 R13
      215 SETLIST                          R23 R24 1 [1]
      217 CALL                             R21 2 -1
      218 CALL                             R18 -1 1
      219 JUMP                             ; [+22]
      220 GETUPVAL                         R18 0
      221 GETTABLEKS                       R18 R18 K13 ["createElement"]
      223 GETUPVAL                         R19 12
      224 DUPTABLE                         R20 K31 [{"Loading", "OnLoadError", "LayoutOrder", "OnRetry"}]
      225 MOVE                             R21 R0
      226 JUMPIFNOT                        R21 ; [+5]
      227 LENGTH                           R22 R12
      228 JUMPIFEQKN                       R22 K32 [0] ; [+2]
      230 LOADB                            R21 0 +1
      231 LOADB                            R21 1
      232 SETTABLEKS                       R21 R20 K28 ["Loading"]
      234 SETTABLEKS                       R2 R20 K29 ["OnLoadError"]
      236 LOADN                            R21 2
      237 SETTABLEKS                       R21 R20 K20 ["LayoutOrder"]
      239 SETTABLEKS                       R10 R20 K30 ["OnRetry"]
      241 CALL                             R18 2 1
      242 SETTABLEKS                       R18 R17 K18 ["ScrollingTray"]
      244 CALL                             R14 3 -1
      245 CLOSEUPVALS                      R10
      246 RETURN                           R14 -1

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
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["LuauPolyfill"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Cryo"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K10 ["UI"]
       39 GETTABLEKS                       R6 R5 K11 ["LoadingIndicator"]
       41 GETTABLEKS                       R7 R3 K12 ["setInterval"]
       43 GETTABLEKS                       R8 R3 K13 ["clearInterval"]
       45 GETIMPORT                        R9 K15 [pcall]
       47 DUPCLOSURE                       R10 K16 [PROTO_0]
       48 CALL                             R9 1 2
       49 JUMPIFNOT                        R9 ; [+2]
       50 MOVE                             R11 R10
       51 JUMP                             ; [+1]
       52 LOADNIL                          R11
       53 GETIMPORT                        R12 K4 [require]
       55 GETIMPORT                        R13 K1 [script]
       57 GETTABLEKS                       R13 R13 K2 ["Parent"]
       59 GETTABLEKS                       R13 R13 K17 ["EmptyNotificationTray"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K4 [require]
       64 GETIMPORT                        R14 K1 [script]
       66 GETTABLEKS                       R14 R14 K2 ["Parent"]
       68 GETTABLEKS                       R14 R14 K18 ["NotificationCard"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K4 [require]
       73 GETTABLEKS                       R15 R0 K19 ["Src"]
       75 GETTABLEKS                       R15 R15 K20 ["Contexts"]
       77 GETTABLEKS                       R15 R15 K21 ["NotificationsContext"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K4 [require]
       82 GETTABLEKS                       R16 R0 K19 ["Src"]
       84 GETTABLEKS                       R16 R16 K20 ["Contexts"]
       86 GETTABLEKS                       R16 R16 K22 ["TrayVisibleContext"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K4 [require]
       91 GETTABLEKS                       R17 R0 K19 ["Src"]
       93 GETTABLEKS                       R17 R17 K23 ["Clients"]
       95 GETTABLEKS                       R17 R17 K24 ["NotificationClient"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K4 [require]
      100 GETIMPORT                        R18 K1 [script]
      102 GETTABLEKS                       R18 R18 K2 ["Parent"]
      104 GETTABLEKS                       R18 R18 K25 ["NotificationHeader"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K4 [require]
      109 GETTABLEKS                       R19 R0 K19 ["Src"]
      111 GETTABLEKS                       R19 R19 K26 ["Util"]
      113 GETTABLEKS                       R19 R19 K27 ["TimeConstants"]
      115 CALL                             R18 1 1
      116 GETIMPORT                        R19 K4 [require]
      118 GETTABLEKS                       R20 R0 K19 ["Src"]
      120 GETTABLEKS                       R20 R20 K26 ["Util"]
      122 GETTABLEKS                       R20 R20 K28 ["SharedFlags"]
      124 GETTABLEKS                       R20 R20 K29 ["getFFlagNotificationPluginSignalRReadEvents"]
      126 CALL                             R19 1 1
      127 DUPCLOSURE                       R20 K30 [PROTO_17]
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R12
      141 RETURN                           R20 1
