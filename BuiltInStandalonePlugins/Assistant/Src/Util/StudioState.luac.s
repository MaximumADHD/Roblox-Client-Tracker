PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantGetPlayStateFromMDI is not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 LOADB                            R1 1
        9 GETIMPORT                        R2 K6 [Enum.StudioDataModelType.PlayClient]
       11 JUMPIFEQ                         R0 R2 ; [+7]
       13 GETIMPORT                        R2 K8 [Enum.StudioDataModelType.PlayServer]
       15 JUMPIFEQ                         R0 R2 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

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
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 1
       14 LOADNIL                          R1
       15 LOADNIL                          R2
       16 FORGPREP                         R0
       17 NAMECALL                         R5 R4 K0 ["Disconnect"]
       19 CALL                             R5 1 0
       20 FORGLOOP                         R0 2 ; [-4]
       22 GETIMPORT                        R0 K3 [table.clear]
       24 GETUPVAL                         R1 1
       25 CALL                             R0 1 0
       26 LOADB                            R0 0
       27 SETUPVAL                         R0 2
       28 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R1 0
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K0 ["GetChildren"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["DataModelSession"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+26]
       11 GETTABLEKS                       R8 R6 K3 ["CurrentDataModelType"]
       13 GETUPVAL                         R10 1
       14 CALL                             R10 0 1
       15 FASTCALL2K                       ASSERT R10 K4 ; [+4]
       17 LOADK                            R11 K4 ["FFlagAssistantGetPlayStateFromMDI is not enabled"]
       18 GETIMPORT                        R9 K6 [assert]
       20 CALL                             R9 2 0
       21 LOADB                            R7 1
       22 GETIMPORT                        R9 K10 [Enum.StudioDataModelType.PlayClient]
       24 JUMPIFEQ                         R8 R9 ; [+7]
       26 GETIMPORT                        R9 K12 [Enum.StudioDataModelType.PlayServer]
       28 JUMPIFEQ                         R8 R9 ; [+2]
       30 LOADB                            R7 0 +1
       31 LOADB                            R7 1
       32 JUMPIFNOT                        R7 ; [+4]
       33 JUMPIFNOT                        R0 ; [+2]
       34 JUMPIFEQ                         R6 R0 ; [+2]
       36 ADDK                             R1 R1 K13 [1]
       37 FORGLOOP                         R2 2 ; [-32]
       39 LOADN                            R3 0
       40 JUMPIFLT                         R3 R1 ; [+2]
       42 LOADB                            R2 0 +1
       43 LOADB                            R2 1
       44 SETUPVAL                         R2 2
       45 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R2 R0 K0 ["CurrentDataModelTypeChanged"]
        7 GETUPVAL                         R4 1
        8 NAMECALL                         R2 R2 K1 ["Connect"]
       10 CALL                             R2 2 1
       11 SETTABLE                         R2 R1 R0
       12 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R4 K0 ["DataModelSession"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 -1
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 -1 0
        8 GETUPVAL                         R2 0
        9 GETTABLE                         R1 R2 R0
       10 JUMPIFNOT                        R1 ; [+1]
       11 JUMP                             ; [+8]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R2 R0 K4 ["CurrentDataModelTypeChanged"]
       15 GETUPVAL                         R4 1
       16 NAMECALL                         R2 R2 K5 ["Connect"]
       18 CALL                             R2 2 1
       19 SETTABLE                         R2 R1 R0
       20 GETUPVAL                         R1 1
       21 CALL                             R1 0 0
       22 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R4 K0 ["DataModelSession"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 -1
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 -1 0
        8 GETUPVAL                         R2 0
        9 GETTABLE                         R1 R2 R0
       10 JUMPIFNOT                        R1 ; [+6]
       11 NAMECALL                         R2 R1 K4 ["Disconnect"]
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 0
       15 LOADNIL                          R3
       16 SETTABLE                         R3 R2 R0
       17 GETUPVAL                         R2 1
       18 MOVE                             R3 R0
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R3 R0 K0 ["GetChildren"]
       13 CALL                             R3 1 3
       14 FORGPREP                         R3
       15 LOADK                            R10 K1 ["DataModelSession"]
       16 NAMECALL                         R8 R7 K2 ["IsA"]
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+12]
       20 GETUPVAL                         R9 3
       21 GETTABLE                         R8 R9 R7
       22 JUMPIFNOT                        R8 ; [+1]
       23 JUMP                             ; [+8]
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R9 R7 K3 ["CurrentDataModelTypeChanged"]
       27 MOVE                             R11 R1
       28 NAMECALL                         R9 R9 K4 ["Connect"]
       30 CALL                             R9 2 1
       31 SETTABLE                         R9 R8 R7
       32 FORGLOOP                         R3 2 ; [-18]
       34 GETUPVAL                         R3 4
       35 GETTABLEKS                       R4 R0 K5 ["DataModelSessionStarted"]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R1
       40 NAMECALL                         R4 R4 K4 ["Connect"]
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K6 ["started"]
       45 GETUPVAL                         R3 4
       46 GETTABLEKS                       R4 R0 K7 ["DataModelSessionEnded"]
       48 NEWCLOSURE                       R6 P3
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R1
       51 NAMECALL                         R4 R4 K4 ["Connect"]
       53 CALL                             R4 2 1
       54 SETTABLEKS                       R4 R3 K8 ["ended"]
       56 MOVE                             R3 R1
       57 CALL                             R3 0 0
       58 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["MultipleDocumentInterfaceInstance"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_13:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Unloading"]
        4 DUPCLOSURE                       R4 K1 [PROTO_2]
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R2 R2 K2 ["Connect"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+37]
       12 NEWTABLE                         R2 2 0
       14 NEWTABLE                         R3 0 0
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U3
       20 NEWCLOSURE                       R5 P2
       21 CAPTURE                          VAL R4
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 MOVE                             R6 R5
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K3 ["MultipleDocumentInterfaceInstance"]
       30 CALL                             R6 1 0
       31 GETUPVAL                         R6 0
       32 LOADK                            R8 K3 ["MultipleDocumentInterfaceInstance"]
       33 NAMECALL                         R6 R6 K4 ["GetPropertyChangedSignal"]
       35 CALL                             R6 2 1
       36 NEWCLOSURE                       R8 P3
       37 CAPTURE                          VAL R5
       38 CAPTURE                          UPVAL U0
       39 NAMECALL                         R6 R6 K2 ["Connect"]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R7 1
       43 NEWCLOSURE                       R8 P4
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R8 R7 K5 ["mdiBinding"]
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 1
       50 GETUPVAL                         R3 4
       51 GETTABLEKS                       R3 R3 K6 ["subscribeGameLoaded"]
       53 MOVE                             R4 R1
       54 NEWCLOSURE                       R5 P5
       55 CAPTURE                          UPVAL U3
       56 CALL                             R3 2 1
       57 SETTABLEKS                       R3 R2 K7 ["gameLoaded"]
       59 GETUPVAL                         R2 1
       60 GETUPVAL                         R3 5
       61 GETTABLEKS                       R3 R3 K8 ["subscribeGameStopped"]
       63 MOVE                             R4 R1
       64 NEWCLOSURE                       R5 P6
       65 CAPTURE                          UPVAL U3
       66 CALL                             R3 2 1
       67 SETTABLEKS                       R3 R2 K9 ["gameStopped"]
       69 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_15:
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

PROTO_16:
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
       55 GETIMPORT                        R5 K5 [require]
       57 GETTABLEKS                       R6 R0 K13 ["Src"]
       59 GETTABLEKS                       R6 R6 K16 ["Flags"]
       61 GETTABLEKS                       R6 R6 K17 ["FFlagAssistantGetPlayStateFromMDI"]
       63 CALL                             R5 1 1
       64 NEWTABLE                         R6 4 0
       66 LOADB                            R7 0
       67 LOADNIL                          R8
       68 DUPCLOSURE                       R9 K18 [PROTO_0]
       69 CAPTURE                          VAL R5
       70 DUPCLOSURE                       R10 K19 [PROTO_1]
       71 CAPTURE                          VAL R6
       72 NEWCLOSURE                       R11 P2
       73 CAPTURE                          REF R8
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R5
       76 CAPTURE                          REF R7
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R4
       79 NEWCLOSURE                       R12 P3
       80 CAPTURE                          REF R7
       81 NEWCLOSURE                       R13 P4
       82 CAPTURE                          REF R8
       83 NEWCLOSURE                       R14 P5
       84 CAPTURE                          REF R8
       85 CAPTURE                          VAL R2
       86 DUPTABLE                         R15 K24 [{"init", "getStudioPlayState", "getFocusedDataModelEnum", "getFocusedDataModelType"}]
       87 SETTABLEKS                       R11 R15 K20 ["init"]
       89 SETTABLEKS                       R12 R15 K21 ["getStudioPlayState"]
       91 SETTABLEKS                       R13 R15 K22 ["getFocusedDataModelEnum"]
       93 SETTABLEKS                       R14 R15 K23 ["getFocusedDataModelType"]
       95 CLOSEUPVALS                      R7
       96 RETURN                           R15 1
