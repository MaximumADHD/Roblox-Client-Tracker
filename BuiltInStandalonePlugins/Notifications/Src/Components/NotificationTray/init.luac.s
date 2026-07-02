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
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETUPVAL                         R3 1
       18 DUPTABLE                         R4 K6 [{["newNotificationAvailable"] = False, ["syncBroadcastedNotifications"] = False}]
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 2
       21 LOADB                            R4 1
       22 CALL                             R3 1 0
       23 LOADNIL                          R3
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K7 ["notificationClient"]
       27 GETTABLEKS                       R4 R4 K8 ["getNotifications"]
       29 MOVE                             R5 R0
       30 JUMPIFNOT                        R1 ; [+2]
       31 LOADNIL                          R6
       32 JUMP                             ; [+3]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K1 ["cursor"]
       36 CALL                             R4 2 1
       37 MOVE                             R3 R4
       38 GETTABLEKS                       R4 R3 K9 ["responseCode"]
       40 LOADN                            R5 200
       41 JUMPIFNOTLE                      R5 R4 ; [+120]
       43 GETTABLEKS                       R4 R3 K9 ["responseCode"]
       45 LOADN                            R5 300
       46 JUMPIFNOTLT                      R4 R5 ; [+115]
       48 GETUPVAL                         R4 3
       49 LOADB                            R5 0
       50 CALL                             R4 1 0
       51 GETTABLEKS                       R4 R3 K10 ["responseBody"]
       53 GETTABLEKS                       R4 R4 K11 ["nextCursor"]
       55 JUMPIFEQKS                       R4 K2 [""] ; [+7]
       57 GETTABLEKS                       R4 R3 K10 ["responseBody"]
       59 GETTABLEKS                       R4 R4 K11 ["nextCursor"]
       61 JUMPIFNOTEQKNIL                  R4 ; [+7]
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K12 ["setCursor"]
       66 LOADNIL                          R5
       67 CALL                             R4 1 0
       68 JUMP                             ; [+8]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K12 ["setCursor"]
       72 GETTABLEKS                       R5 R3 K10 ["responseBody"]
       74 GETTABLEKS                       R5 R5 K11 ["nextCursor"]
       76 CALL                             R4 1 0
       77 GETTABLEKS                       R5 R3 K10 ["responseBody"]
       79 GETTABLEKS                       R5 R5 K13 ["creatorStreamNotifications"]
       81 LENGTH                           R4 R5
       82 JUMPIFNOTEQKN                    R4 K14 [0] ; [+6]
       84 GETUPVAL                         R4 0
       85 GETTABLEKS                       R4 R4 K15 ["setAllLoaded"]
       87 LOADB                            R5 1
       88 CALL                             R4 1 0
       89 NEWTABLE                         R4 0 0
       91 JUMPIF                           R1 ; [+15]
       92 GETUPVAL                         R5 0
       93 GETTABLEKS                       R5 R5 K16 ["notifications"]
       95 LOADNIL                          R6
       96 LOADNIL                          R7
       97 FORGPREP                         R5
       98 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      100 MOVE                             R11 R4
      101 MOVE                             R12 R9
      102 GETIMPORT                        R10 K19 [table.insert]
      104 CALL                             R10 2 0
      105 FORGLOOP                         R5 2 ; [-8]
      107 GETIMPORT                        R5 K21 [pairs]
      109 GETTABLEKS                       R6 R3 K10 ["responseBody"]
      111 GETTABLEKS                       R6 R6 K13 ["creatorStreamNotifications"]
      113 CALL                             R5 1 3
      114 FORGPREP_NEXT                    R5
      115 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      117 MOVE                             R11 R4
      118 MOVE                             R12 R9
      119 GETIMPORT                        R10 K19 [table.insert]
      121 CALL                             R10 2 0
      122 FORGLOOP                         R5 2 ; [-8]
      124 JUMPIFNOT                        R2 ; [+22]
      125 LENGTH                           R5 R4
      126 LOADN                            R6 0
      127 JUMPIFNOTLT                      R6 R5 ; [+19]
      129 GETUPVAL                         R5 4
      130 JUMPIFNOT                        R5 ; [+16]
      131 GETTABLEN                        R5 R4 1
      132 GETTABLEKS                       R5 R5 K22 ["notificationId"]
      134 GETUPVAL                         R7 5
      135 GETTABLEKS                       R7 R7 K23 ["trayVisible"]
      137 JUMPIFNOT                        R7 ; [+2]
      138 MOVE                             R6 R5
      139 JUMP                             ; [+1]
      140 LOADK                            R6 K2 [""]
      141 GETUPVAL                         R7 4
      142 MOVE                             R9 R5
      143 MOVE                             R10 R6
      144 NAMECALL                         R7 R7 K24 ["OnNotificationUpdateFromPlugin"]
      146 CALL                             R7 3 0
      147 GETUPVAL                         R5 0
      148 GETTABLEKS                       R5 R5 K25 ["logNotificationImpressions"]
      150 GETTABLEKS                       R6 R3 K10 ["responseBody"]
      152 GETTABLEKS                       R6 R6 K13 ["creatorStreamNotifications"]
      154 MOVE                             R7 R2
      155 CALL                             R5 2 0
      156 GETUPVAL                         R5 0
      157 GETTABLEKS                       R5 R5 K26 ["setNotifications"]
      159 MOVE                             R6 R4
      160 CALL                             R5 1 0
      161 JUMP                             ; [+8]
      162 GETUPVAL                         R4 3
      163 LOADB                            R5 1
      164 CALL                             R4 1 0
      165 GETUPVAL                         R4 0
      166 GETTABLEKS                       R4 R4 K12 ["setCursor"]
      168 LOADNIL                          R5
      169 CALL                             R4 1 0
      170 GETUPVAL                         R4 2
      171 LOADB                            R5 0
      172 CALL                             R4 1 0
      173 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K3 [{[1] = True, ["syncBroadcastedNotifications"]}]
        1 GETTABLEKS                       R2 R0 K2 ["syncBroadcastedNotifications"]
        3 SETTABLEKS                       R2 R1 K2 ["syncBroadcastedNotifications"]
        5 RETURN                           R1 1

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
        0 DUPTABLE                         R1 K3 [{[1] = True, ["syncBroadcastedNotifications"]}]
        1 GETTABLEKS                       R2 R0 K2 ["syncBroadcastedNotifications"]
        3 SETTABLEKS                       R2 R1 K2 ["syncBroadcastedNotifications"]
        5 RETURN                           R1 1

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
        1 DUPTABLE                         R1 K3 [{[1] = True, ["syncBroadcastedNotifications"] = True}]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

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
       13 DUPTABLE                         R5 K4 [{["newNotificationAvailable"] = False, ["syncBroadcastedNotifications"] = False}]
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["useContext"]
       18 GETUPVAL                         R7 1
       19 CALL                             R6 1 1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K5 ["useContext"]
       23 GETUPVAL                         R8 2
       24 CALL                             R7 1 1
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K6 ["useRef"]
       28 LOADB                            R9 0
       29 CALL                             R8 1 1
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       33 NEWCLOSURE                       R10 P0
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R7
       40 NEWTABLE                         R11 0 4
       42 GETTABLEKS                       R12 R6 K8 ["notifications"]
       44 GETTABLEKS                       R13 R6 K9 ["cursor"]
       46 GETTABLEKS                       R14 R6 K10 ["allLoaded"]
       48 GETTABLEKS                       R15 R7 K11 ["trayVisible"]
       50 SETLIST                          R11 R12 4 [1]
       52 CALL                             R9 2 1
       53 LOADNIL                          R10
       54 NEWCLOSURE                       R10 P1
       55 CAPTURE                          VAL R9
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K12 ["useEffect"]
       59 NEWCLOSURE                       R12 P2
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R9
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          UPVAL U7
       69 NEWTABLE                         R13 0 0
       71 CALL                             R11 2 0
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R11 R11 K12 ["useEffect"]
       75 NEWCLOSURE                       R12 P3
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R8
       80 CAPTURE                          REF R10
       81 NEWTABLE                         R13 0 4
       83 MOVE                             R14 R4
       84 GETTABLEKS                       R15 R7 K11 ["trayVisible"]
       86 MOVE                             R16 R0
       87 MOVE                             R17 R10
       88 SETLIST                          R13 R14 4 [1]
       90 CALL                             R11 2 0
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R11 R11 K12 ["useEffect"]
       94 NEWCLOSURE                       R12 P4
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R6
       97 CAPTURE                          UPVAL U3
       98 NEWTABLE                         R13 0 2
      100 GETTABLEKS                       R14 R7 K11 ["trayVisible"]
      102 GETTABLEKS                       R15 R6 K8 ["notifications"]
      104 SETLIST                          R13 R14 2 [1]
      106 CALL                             R11 2 0
      107 GETUPVAL                         R11 0
      108 GETTABLEKS                       R11 R11 K7 ["useCallback"]
      110 NEWCLOSURE                       R12 P5
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R9
      114 NEWTABLE                         R13 0 4
      116 GETTABLEKS                       R15 R6 K8 ["notifications"]
      118 LENGTH                           R14 R15
      119 GETTABLEKS                       R15 R6 K10 ["allLoaded"]
      121 MOVE                             R16 R9
      122 MOVE                             R17 R0
      123 SETLIST                          R13 R14 4 [1]
      125 CALL                             R11 2 1
      126 GETUPVAL                         R12 0
      127 GETTABLEKS                       R12 R12 K13 ["useMemo"]
      129 NEWCLOSURE                       R13 P6
      130 CAPTURE                          VAL R6
      131 CAPTURE                          UPVAL U0
      132 CAPTURE                          UPVAL U8
      133 NEWTABLE                         R14 0 1
      135 GETTABLEKS                       R15 R6 K8 ["notifications"]
      137 SETLIST                          R14 R15 1 [1]
      139 CALL                             R12 2 1
      140 GETUPVAL                         R13 0
      141 GETTABLEKS                       R13 R13 K13 ["useMemo"]
      143 NEWCLOSURE                       R14 P7
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U0
      146 CAPTURE                          UPVAL U9
      147 NEWTABLE                         R15 0 1
      149 MOVE                             R16 R0
      150 SETLIST                          R15 R16 1 [1]
      152 CALL                             R13 2 1
      153 GETUPVAL                         R14 0
      154 GETTABLEKS                       R14 R14 K14 ["createElement"]
      156 LOADK                            R15 K15 ["Frame"]
      157 NEWTABLE                         R16 1 0
      159 GETUPVAL                         R17 0
      160 GETTABLEKS                       R17 R17 K16 ["Tag"]
      162 LOADK                            R18 K17 ["Component-NotificationTray"]
      163 SETTABLE                         R18 R16 R17
      164 DUPTABLE                         R17 K20 [{"Header", "ScrollingTray"}]
      165 GETUPVAL                         R18 0
      166 GETTABLEKS                       R18 R18 K14 ["createElement"]
      168 GETUPVAL                         R19 10
      169 DUPTABLE                         R20 K23 [{["LayoutOrder"] = 1}]
      170 CALL                             R18 2 1
      171 SETTABLEKS                       R18 R17 K18 ["Header"]
      173 LENGTH                           R19 R12
      174 LOADN                            R20 0
      175 JUMPIFNOTLT                      R20 R19 ; [+35]
      177 GETUPVAL                         R18 0
      178 GETTABLEKS                       R18 R18 K14 ["createElement"]
      180 LOADK                            R19 K24 ["ScrollingFrame"]
      181 NEWTABLE                         R20 4 0
      183 LOADN                            R21 2
      184 SETTABLEKS                       R21 R20 K21 ["LayoutOrder"]
      186 GETUPVAL                         R21 0
      187 GETTABLEKS                       R21 R21 K25 ["Change"]
      189 GETTABLEKS                       R21 R21 K26 ["CanvasPosition"]
      191 SETTABLE                         R11 R20 R21
      192 GETUPVAL                         R21 0
      193 GETTABLEKS                       R21 R21 K16 ["Tag"]
      195 LOADK                            R22 K27 ["Component-NotificationTrayScrollingFrame"]
      196 SETTABLE                         R22 R20 R21
      197 GETUPVAL                         R21 11
      198 GETTABLEKS                       R21 R21 K28 ["List"]
      200 GETTABLEKS                       R21 R21 K29 ["join"]
      202 MOVE                             R22 R12
      203 NEWTABLE                         R23 0 1
      205 MOVE                             R24 R13
      206 SETLIST                          R23 R24 1 [1]
      208 CALL                             R21 2 -1
      209 CALL                             R18 -1 1
      210 JUMP                             ; [+19]
      211 GETUPVAL                         R18 0
      212 GETTABLEKS                       R18 R18 K14 ["createElement"]
      214 GETUPVAL                         R19 12
      215 DUPTABLE                         R20 K34 [{["Loading"], ["OnLoadError"], ["LayoutOrder"] = 2, ["OnRetry"]}]
      216 MOVE                             R21 R0
      217 JUMPIFNOT                        R21 ; [+5]
      218 LENGTH                           R22 R12
      219 JUMPIFEQKN                       R22 K35 [0] ; [+2]
      221 LOADB                            R21 0 +1
      222 LOADB                            R21 1
      223 SETTABLEKS                       R21 R20 K30 ["Loading"]
      225 SETTABLEKS                       R2 R20 K31 ["OnLoadError"]
      227 SETTABLEKS                       R10 R20 K33 ["OnRetry"]
      229 CALL                             R18 2 1
      230 SETTABLEKS                       R18 R17 K19 ["ScrollingTray"]
      232 CALL                             R14 3 -1
      233 CLOSEUPVALS                      R10
      234 RETURN                           R14 -1

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
