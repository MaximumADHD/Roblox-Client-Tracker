PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"ActiveView"}]
        7 GETTABLEKS                       R5 R1 K4 ["view"]
        9 SETTABLEKS                       R5 R4 K2 ["ActiveView"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Parameters"}]
        7 GETTABLEKS                       R5 R1 K4 ["parameters"]
        9 SETTABLEKS                       R5 R4 K2 ["Parameters"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"ThemeName"}]
        7 GETTABLEKS                       R5 R1 K4 ["themeName"]
        9 SETTABLEKS                       R5 R4 K2 ["ThemeName"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"Key", "Value"}]
        1 GETTABLEKS                       R3 R1 K3 ["pair"]
        3 GETTABLEKS                       R3 R3 K0 ["Key"]
        5 JUMPIF                           R3 ; [+4]
        6 GETTABLEKS                       R3 R0 K4 ["MemStoragePair"]
        8 GETTABLEKS                       R3 R3 K0 ["Key"]
       10 SETTABLEKS                       R3 R2 K0 ["Key"]
       12 GETTABLEKS                       R3 R1 K3 ["pair"]
       14 GETTABLEKS                       R3 R3 K1 ["Value"]
       16 JUMPIF                           R3 ; [+4]
       17 GETTABLEKS                       R3 R0 K4 ["MemStoragePair"]
       19 GETTABLEKS                       R3 R3 K1 ["Value"]
       21 SETTABLEKS                       R3 R2 K1 ["Value"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K5 ["Dictionary"]
       26 GETTABLEKS                       R3 R3 K6 ["join"]
       28 MOVE                             R4 R0
       29 DUPTABLE                         R5 K7 [{"MemStoragePair"}]
       30 SETTABLEKS                       R2 R5 K4 ["MemStoragePair"]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"MemStoragePair"}]
        7 DUPTABLE                         R5 K7 [{["Key"] = "", ["Value"] = ""}]
        8 SETTABLEKS                       R5 R4 K2 ["MemStoragePair"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"Parameters"}]
        7 DUPTABLE                         R5 K8 [{["Detail"] = "", ["Namespace"] = "", ["DetailType"] = ""}]
        8 SETTABLEKS                       R5 R4 K2 ["Parameters"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"CurrentEventName"}]
        7 GETTABLEKS                       R5 R1 K4 ["name"]
        9 SETTABLEKS                       R5 R4 K2 ["CurrentEventName"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["Constants"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["VIEW_ID"]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Actions"]
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R5 K13 ["SetView"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R5 K14 ["SetRBXParameters"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K4 [require]
       50 GETTABLEKS                       R9 R5 K15 ["SetTheme"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K4 [require]
       55 GETTABLEKS                       R10 R5 K16 ["SetMemStoragePair"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K4 [require]
       60 GETTABLEKS                       R11 R5 K17 ["ClearMemStoragePair"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K4 [require]
       65 GETTABLEKS                       R12 R5 K18 ["ClearRBXParameters"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K4 [require]
       70 GETTABLEKS                       R13 R5 K19 ["ChangeCurrentEventName"]
       72 CALL                             R12 1 1
       73 GETTABLEKS                       R13 R1 K20 ["createReducer"]
       75 DUPTABLE                         R14 K27 [{["ActiveView"], ["Parameters"], ["ThemeName"] = "dark", ["MemStoragePair"], ["CurrentEventName"]}]
       76 GETTABLEKS                       R15 R4 K28 ["RBXEvent"]
       78 SETTABLEKS                       R15 R14 K21 ["ActiveView"]
       80 DUPTABLE                         R15 K35 [{["Namespace"] = "UpdateNotificationBadge", ["Detail"] = "{\"badgeString\": \"1\"}", ["DetailType"] = "NotificationIcon"}]
       81 SETTABLEKS                       R15 R14 K22 ["Parameters"]
       83 DUPTABLE                         R15 K39 [{["Key"] = "ThemeUpdate", ["Value"] = "dark"}]
       84 SETTABLEKS                       R15 R14 K25 ["MemStoragePair"]
       86 GETTABLEKS                       R15 R4 K28 ["RBXEvent"]
       88 SETTABLEKS                       R15 R14 K26 ["CurrentEventName"]
       90 NEWTABLE                         R15 8 0
       92 GETTABLEKS                       R16 R6 K40 ["name"]
       94 DUPCLOSURE                       R17 K41 [PROTO_0]
       95 CAPTURE                          VAL R2
       96 SETTABLE                         R17 R15 R16
       97 GETTABLEKS                       R16 R7 K40 ["name"]
       99 DUPCLOSURE                       R17 K42 [PROTO_1]
      100 CAPTURE                          VAL R2
      101 SETTABLE                         R17 R15 R16
      102 GETTABLEKS                       R16 R8 K40 ["name"]
      104 DUPCLOSURE                       R17 K43 [PROTO_2]
      105 CAPTURE                          VAL R2
      106 SETTABLE                         R17 R15 R16
      107 GETTABLEKS                       R16 R9 K40 ["name"]
      109 DUPCLOSURE                       R17 K44 [PROTO_3]
      110 CAPTURE                          VAL R2
      111 SETTABLE                         R17 R15 R16
      112 GETTABLEKS                       R16 R10 K40 ["name"]
      114 DUPCLOSURE                       R17 K45 [PROTO_4]
      115 CAPTURE                          VAL R2
      116 SETTABLE                         R17 R15 R16
      117 GETTABLEKS                       R16 R11 K40 ["name"]
      119 DUPCLOSURE                       R17 K46 [PROTO_5]
      120 CAPTURE                          VAL R2
      121 SETTABLE                         R17 R15 R16
      122 GETTABLEKS                       R16 R12 K40 ["name"]
      124 DUPCLOSURE                       R17 K47 [PROTO_6]
      125 CAPTURE                          VAL R2
      126 SETTABLE                         R17 R15 R16
      127 CALL                             R13 2 -1
      128 RETURN                           R13 -1
