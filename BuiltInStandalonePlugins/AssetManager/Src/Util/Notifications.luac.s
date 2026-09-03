PROTO_0:
        0 DUPTABLE                         R1 K5 [{[1] = "AssetManager", ["Category"] = "Snackbar", ["ItemId"]}]
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+5]
        3 GETUPVAL                         R2 0
        4 LOADB                            R4 0
        5 NAMECALL                         R2 R2 K6 ["GenerateGUID"]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K4 ["ItemId"]
       10 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["LocalizableMessage"]
        2 DUPTABLE                         R2 K6 [{"Message", "Type", "ActionButtonText", "Progress", "Result"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R6 R1 K8 ["Key"]
        6 GETTABLEKS                       R7 R1 K9 ["SubKey"]
        8 GETTABLEKS                       R8 R1 K10 ["Args"]
       10 NAMECALL                         R4 R4 K11 ["getText"]
       12 CALL                             R4 4 1
       13 ORK                              R3 R4 K7 [""]
       14 SETTABLEKS                       R3 R2 K1 ["Message"]
       16 GETTABLEKS                       R4 R0 K2 ["Type"]
       18 ORK                              R3 R4 K12 ["Info"]
       19 SETTABLEKS                       R3 R2 K2 ["Type"]
       21 GETTABLEKS                       R3 R0 K3 ["ActionButtonText"]
       23 SETTABLEKS                       R3 R2 K3 ["ActionButtonText"]
       25 GETTABLEKS                       R3 R0 K4 ["Progress"]
       27 SETTABLEKS                       R3 R2 K4 ["Progress"]
       29 GETTABLEKS                       R3 R0 K5 ["Result"]
       31 SETTABLEKS                       R3 R2 K5 ["Result"]
       33 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R1 K5 [{[1] = "AssetManager", ["Category"] = "Queue", ["ItemId"]}]
        1 SETTABLEKS                       R0 R1 K4 ["ItemId"]
        3 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["LocalizableTitle"]
        2 DUPTABLE                         R2 K5 [{"Title", "Result", "Progress", "Message"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R6 R1 K7 ["Key"]
        6 GETTABLEKS                       R7 R1 K8 ["SubKey"]
        8 GETTABLEKS                       R8 R1 K9 ["Args"]
       10 NAMECALL                         R4 R4 K10 ["getText"]
       12 CALL                             R4 4 1
       13 ORK                              R3 R4 K6 [""]
       14 SETTABLEKS                       R3 R2 K1 ["Title"]
       16 GETTABLEKS                       R3 R0 K2 ["Result"]
       18 SETTABLEKS                       R3 R2 K2 ["Result"]
       20 GETTABLEKS                       R4 R0 K3 ["Progress"]
       22 ORK                              R3 R4 K11 [0]
       23 SETTABLEKS                       R3 R2 K3 ["Progress"]
       25 GETTABLEKS                       R4 R0 K12 ["LocalizableMessage"]
       27 JUMPIFNOT                        R4 ; [+17]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R5 R0 K12 ["LocalizableMessage"]
       31 GETTABLEKS                       R5 R5 K7 ["Key"]
       33 GETTABLEKS                       R6 R0 K12 ["LocalizableMessage"]
       35 GETTABLEKS                       R6 R6 K8 ["SubKey"]
       37 GETTABLEKS                       R7 R0 K12 ["LocalizableMessage"]
       39 GETTABLEKS                       R7 R7 K9 ["Args"]
       41 NAMECALL                         R3 R3 K10 ["getText"]
       43 CALL                             R3 4 1
       44 JUMPIF                           R3 ; [+1]
       45 LOADK                            R3 K6 [""]
       46 SETTABLEKS                       R3 R2 K4 ["Message"]
       48 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DialogManager"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R2 1 2
        5 JUMPIFNOT                        R2 ; [+1]
        6 SETUPVAL                         R3 0
        7 SETUPVAL                         R1 1
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["ShowSnackbarAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K5 [{[1] = "AssetManager", ["Category"] = "Snackbar", ["ItemId"]}]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K6 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K4 ["ItemId"]
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K9 [task.spawn]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CALL                             R3 1 0
       18 GETTABLEKS                       R3 R1 K4 ["ItemId"]
       20 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["UpdateSnackbarAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R2 K5 [{[1] = "AssetManager", ["Category"] = "Snackbar", ["ItemId"]}]
        1 MOVE                             R3 R0
        2 JUMPIF                           R3 ; [+5]
        3 GETUPVAL                         R3 0
        4 LOADB                            R5 0
        5 NAMECALL                         R3 R3 K6 ["GenerateGUID"]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R3 R2 K4 ["ItemId"]
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R1
       12 CALL                             R3 1 1
       13 GETIMPORT                        R4 K9 [task.spawn]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["HideSnackbarAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K5 [{[1] = "AssetManager", ["Category"] = "Snackbar", ["ItemId"]}]
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+5]
        3 GETUPVAL                         R2 0
        4 LOADB                            R4 0
        5 NAMECALL                         R2 R2 K6 ["GenerateGUID"]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K4 ["ItemId"]
       10 GETIMPORT                        R2 K9 [task.spawn]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["AddQueueItemAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R2 K5 [{[1] = "AssetManager", ["Category"] = "Queue", ["ItemId"]}]
        1 SETTABLEKS                       R0 R2 K4 ["ItemId"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 GETIMPORT                        R4 K8 [task.spawn]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R3
       12 CALL                             R4 1 0
       13 GETTABLEKS                       R4 R2 K4 ["ItemId"]
       15 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["UpdateQueueItemAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R2 K5 [{[1] = "AssetManager", ["Category"] = "Queue", ["ItemId"]}]
        1 SETTABLEKS                       R0 R2 K4 ["ItemId"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 GETIMPORT                        R4 K8 [task.spawn]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R3
       12 CALL                             R4 1 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RemoveQueueItemAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K5 [{[1] = "AssetManager", ["Category"] = "Queue", ["ItemId"]}]
        1 SETTABLEKS                       R0 R1 K4 ["ItemId"]
        3 GETIMPORT                        R2 K8 [task.spawn]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["Services"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K13 ["MakeUnavailableStub"]
       24 LOADK                            R4 K14 ["DialogManager"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K13 ["MakeUnavailableStub"]
       28 LOADK                            R5 K15 ["Localization"]
       29 CALL                             R4 1 1
       30 NEWTABLE                         R5 16 0
       32 NEWTABLE                         R5 0 0
       34 DUPTABLE                         R6 K18 [{["Snackbar"] = "Snackbar", ["Queue"] = "Queue"}]
       35 SETTABLEKS                       R6 R5 K19 ["NotificationCategory"]
       37 DUPTABLE                         R6 K23 [{["Loading"] = "Loading", ["Error"] = "Error", ["Info"] = "Info"}]
       38 SETTABLEKS                       R6 R5 K24 ["SnackbarType"]
       40 DUPTABLE                         R6 K26 [{["Success"] = "Success", ["Error"] = "Error"}]
       41 SETTABLEKS                       R6 R5 K27 ["SnackbarResult"]
       43 DUPTABLE                         R6 K29 [{["Loading"] = "Loading", ["Complete"] = "Complete", ["Error"] = "Error"}]
       44 SETTABLEKS                       R6 R5 K30 ["QueueItemResult"]
       46 DUPTABLE                         R6 K32 [{["InsertAssets"] = "InsertAssets"}]
       47 SETTABLEKS                       R6 R5 K33 ["QueueItemId"]
       49 DUPCLOSURE                       R6 K34 [PROTO_0]
       50 CAPTURE                          VAL R0
       51 NEWCLOSURE                       R7 P1
       52 CAPTURE                          REF R4
       53 DUPCLOSURE                       R8 K35 [PROTO_2]
       54 NEWCLOSURE                       R9 P3
       55 CAPTURE                          REF R4
       56 NEWCLOSURE                       R10 P4
       57 CAPTURE                          REF R3
       58 CAPTURE                          REF R4
       59 SETTABLEKS                       R10 R5 K36 ["init"]
       61 NEWCLOSURE                       R10 P5
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R7
       64 CAPTURE                          REF R3
       65 SETTABLEKS                       R10 R5 K37 ["showSnackbar"]
       67 NEWCLOSURE                       R10 P6
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R7
       70 CAPTURE                          REF R3
       71 SETTABLEKS                       R10 R5 K38 ["updateSnackbar"]
       73 NEWCLOSURE                       R10 P7
       74 CAPTURE                          VAL R0
       75 CAPTURE                          REF R3
       76 SETTABLEKS                       R10 R5 K39 ["hideSnackbar"]
       78 NEWCLOSURE                       R10 P8
       79 CAPTURE                          VAL R9
       80 CAPTURE                          REF R3
       81 SETTABLEKS                       R10 R5 K40 ["addQueueItem"]
       83 NEWCLOSURE                       R10 P9
       84 CAPTURE                          VAL R9
       85 CAPTURE                          REF R3
       86 SETTABLEKS                       R10 R5 K41 ["updateQueueItem"]
       88 NEWCLOSURE                       R10 P10
       89 CAPTURE                          REF R3
       90 SETTABLEKS                       R10 R5 K42 ["removeQueueItem"]
       92 CLOSEUPVALS                      R3
       93 RETURN                           R5 1
