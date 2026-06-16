PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_4:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Unloading"]
        4 DUPCLOSURE                       R4 K1 [PROTO_1]
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R2 R2 K2 ["Connect"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["subscribeGameLoaded"]
       13 MOVE                             R4 R1
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          UPVAL U3
       16 CALL                             R3 2 1
       17 SETTABLEKS                       R3 R2 K4 ["gameLoaded"]
       19 GETUPVAL                         R2 1
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R3 R3 K5 ["subscribeGameStopped"]
       23 MOVE                             R4 R1
       24 NEWCLOSURE                       R5 P2
       25 CAPTURE                          UPVAL U3
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K6 ["gameStopped"]
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETIMPORT                        R0 K3 [Enum.StudioDataModelType.None]
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["MultipleDocumentInterfaceInstance"]
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETTABLEKS                       R1 R0 K5 ["FocusedDataModelSession"]
       11 JUMPIF                           R1 ; [+3]
       12 GETIMPORT                        R1 K3 [Enum.StudioDataModelType.None]
       14 RETURN                           R1 1
       15 GETTABLEKS                       R1 R0 K5 ["FocusedDataModelSession"]
       17 GETTABLEKS                       R1 R1 K6 ["CurrentDataModelType"]
       19 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 GETIMPORT                        R0 K3 [Enum.StudioDataModelType.None]
        4 JUMP                             ; [+15]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K4 ["MultipleDocumentInterfaceInstance"]
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETTABLEKS                       R2 R1 K5 ["FocusedDataModelSession"]
       11 JUMPIF                           R2 ; [+3]
       12 GETIMPORT                        R0 K3 [Enum.StudioDataModelType.None]
       14 JUMP                             ; [+5]
       15 GETTABLEKS                       R2 R1 K5 ["FocusedDataModelSession"]
       17 GETTABLEKS                       R2 R2 K6 ["CurrentDataModelType"]
       19 MOVE                             R0 R2
       20 GETIMPORT                        R1 K3 [Enum.StudioDataModelType.None]
       22 JUMPIFNOTEQ                      R0 R1 ; [+7]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K7 ["Types"]
       27 GETTABLEKS                       R1 R1 K8 ["Unknown"]
       29 RETURN                           R1 1
       30 GETIMPORT                        R1 K10 [Enum.StudioDataModelType.Edit]
       32 JUMPIFNOTEQ                      R0 R1 ; [+7]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K7 ["Types"]
       37 GETTABLEKS                       R1 R1 K9 ["Edit"]
       39 RETURN                           R1 1
       40 GETIMPORT                        R1 K12 [Enum.StudioDataModelType.PlayClient]
       42 JUMPIFNOTEQ                      R0 R1 ; [+7]
       44 GETUPVAL                         R1 1
       45 GETTABLEKS                       R1 R1 K7 ["Types"]
       47 GETTABLEKS                       R1 R1 K13 ["Client"]
       49 RETURN                           R1 1
       50 GETIMPORT                        R1 K15 [Enum.StudioDataModelType.PlayServer]
       52 JUMPIFNOTEQ                      R0 R1 ; [+7]
       54 GETUPVAL                         R1 1
       55 GETTABLEKS                       R1 R1 K7 ["Types"]
       57 GETTABLEKS                       R1 R1 K16 ["Server"]
       59 RETURN                           R1 1
       60 GETUPVAL                         R1 1
       61 GETTABLEKS                       R1 R1 K7 ["Types"]
       63 GETTABLEKS                       R1 R1 K8 ["Unknown"]
       65 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["Parent"]
       24 GETTABLEKS                       R3 R3 K6 ["Packages"]
       26 GETTABLEKS                       R3 R3 K9 ["_Index"]
       28 GETTABLEKS                       R3 R3 K10 ["AssistantUI"]
       30 GETTABLEKS                       R3 R3 K10 ["AssistantUI"]
       32 GETTABLEKS                       R3 R3 K11 ["Util"]
       34 GETTABLEKS                       R3 R3 K12 ["DataModelType"]
       36 CALL                             R2 1 1
       37 GETIMPORT                        R3 K5 [require]
       39 GETTABLEKS                       R4 R0 K13 ["Src"]
       41 GETTABLEKS                       R4 R4 K11 ["Util"]
       43 GETTABLEKS                       R4 R4 K14 ["GameLoadedNotifier"]
       45 CALL                             R3 1 1
       46 GETIMPORT                        R4 K5 [require]
       48 GETTABLEKS                       R5 R0 K13 ["Src"]
       50 GETTABLEKS                       R5 R5 K11 ["Util"]
       52 GETTABLEKS                       R5 R5 K15 ["GameStoppedNotifier"]
       54 CALL                             R4 1 1
       55 NEWTABLE                         R5 2 0
       57 LOADB                            R6 0
       58 LOADNIL                          R7
       59 DUPCLOSURE                       R8 K16 [PROTO_0]
       60 CAPTURE                          VAL R5
       61 NEWCLOSURE                       R9 P1
       62 CAPTURE                          REF R7
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          REF R6
       66 CAPTURE                          VAL R4
       67 NEWCLOSURE                       R10 P2
       68 CAPTURE                          REF R6
       69 NEWCLOSURE                       R11 P3
       70 CAPTURE                          REF R7
       71 NEWCLOSURE                       R12 P4
       72 CAPTURE                          REF R7
       73 CAPTURE                          VAL R2
       74 DUPTABLE                         R13 K21 [{"init", "getStudioPlayState", "getFocusedDataModelEnum", "getFocusedDataModelType"}]
       75 SETTABLEKS                       R9 R13 K17 ["init"]
       77 SETTABLEKS                       R10 R13 K18 ["getStudioPlayState"]
       79 SETTABLEKS                       R11 R13 K19 ["getFocusedDataModelEnum"]
       81 SETTABLEKS                       R12 R13 K20 ["getFocusedDataModelType"]
       83 CLOSEUPVALS                      R6
       84 RETURN                           R13 1
