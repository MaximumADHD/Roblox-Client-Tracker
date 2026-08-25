PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["new"]
        5 CALL                             R1 0 1
        6 SETUPVAL                         R1 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K1 ["Connect"]
       11 CALL                             R1 2 1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1

PROTO_3:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["Fire"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantGetPlayStateFromMDI"]
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["FFlagAssistantGetPlayStateFromMDI is not enabled"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 LOADB                            R1 1
       10 GETIMPORT                        R2 K7 [Enum.StudioDataModelType.PlayClient]
       12 JUMPIFEQ                         R0 R2 ; [+7]
       14 GETIMPORT                        R2 K9 [Enum.StudioDataModelType.PlayServer]
       16 JUMPIFEQ                         R0 R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantRestoreMostRecentThread"]
        3 JUMPIFNOT                        R2 ; [+9]
        4 SETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 JUMPIFNOT                        R2 ; [+7]
        7 GETUPVAL                         R2 2
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K1 ["Fire"]
       11 CALL                             R2 2 0
       12 JUMP                             ; [+1]
       13 SETUPVAL                         R1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["FFlagDebugLogAssistantUI"]
       17 JUMPIFNOT                        R2 ; [+9]
       18 GETIMPORT                        R2 K4 [print]
       20 LOADK                            R4 K5 ["[Remote ACP] EditDataModelAvailabilityChanged: %*"]
       21 MOVE                             R6 R1
       22 NAMECALL                         R4 R4 K6 ["format"]
       24 CALL                             R4 2 1
       25 MOVE                             R3 R4
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 LOADN                            R1 0
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K0 ["GetChildren"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["DataModelSession"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+27]
       11 GETTABLEKS                       R8 R6 K3 ["CurrentDataModelType"]
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R10 R10 K4 ["FFlagAssistantGetPlayStateFromMDI"]
       16 FASTCALL2K                       ASSERT R10 K5 ; [+4]
       18 LOADK                            R11 K5 ["FFlagAssistantGetPlayStateFromMDI is not enabled"]
       19 GETIMPORT                        R9 K7 [assert]
       21 CALL                             R9 2 0
       22 LOADB                            R7 1
       23 GETIMPORT                        R9 K11 [Enum.StudioDataModelType.PlayClient]
       25 JUMPIFEQ                         R8 R9 ; [+7]
       27 GETIMPORT                        R9 K13 [Enum.StudioDataModelType.PlayServer]
       29 JUMPIFEQ                         R8 R9 ; [+2]
       31 LOADB                            R7 0 +1
       32 LOADB                            R7 1
       33 JUMPIFNOT                        R7 ; [+4]
       34 JUMPIFNOT                        R0 ; [+2]
       35 JUMPIFEQ                         R6 R0 ; [+2]
       37 ADDK                             R1 R1 K14 [1]
       38 FORGLOOP                         R2 2 ; [-33]
       40 LOADN                            R3 0
       41 JUMPIFLT                         R3 R1 ; [+2]
       43 LOADB                            R2 0 +1
       44 LOADB                            R2 1
       45 SETUPVAL                         R2 2
       46 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["MultipleDocumentInterfaceInstance"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_16:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_17:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_18:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Unloading"]
        4 DUPCLOSURE                       R4 K1 [PROTO_6]
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R2 R2 K2 ["Connect"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["FFlagAssistantUseRemoteService"]
       12 JUMPIFNOT                        R2 ; [+10]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K4 ["EditDataModelAvailabilityChangedEventKey"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 NAMECALL                         R2 R1 K5 ["OnGuestEvent"]
       22 CALL                             R2 3 0
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K6 ["FFlagAssistantGetPlayStateFromMDI"]
       26 JUMPIFNOT                        R2 ; [+37]
       27 NEWTABLE                         R2 2 0
       29 NEWTABLE                         R3 0 0
       31 NEWCLOSURE                       R4 P2
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          UPVAL U6
       35 NEWCLOSURE                       R5 P3
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 MOVE                             R6 R5
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K7 ["MultipleDocumentInterfaceInstance"]
       45 CALL                             R6 1 0
       46 GETUPVAL                         R6 0
       47 LOADK                            R8 K7 ["MultipleDocumentInterfaceInstance"]
       48 NAMECALL                         R6 R6 K8 ["GetPropertyChangedSignal"]
       50 CALL                             R6 2 1
       51 NEWCLOSURE                       R8 P4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          UPVAL U0
       54 NAMECALL                         R6 R6 K2 ["Connect"]
       56 CALL                             R6 2 1
       57 GETUPVAL                         R7 1
       58 NEWCLOSURE                       R8 P5
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R4
       61 SETTABLEKS                       R8 R7 K9 ["mdiBinding"]
       63 RETURN                           R0 0
       64 GETUPVAL                         R2 1
       65 GETUPVAL                         R3 7
       66 GETTABLEKS                       R3 R3 K10 ["subscribeGameLoaded"]
       68 MOVE                             R4 R1
       69 NEWCLOSURE                       R5 P6
       70 CAPTURE                          UPVAL U6
       71 CALL                             R3 2 1
       72 SETTABLEKS                       R3 R2 K11 ["gameLoaded"]
       74 GETUPVAL                         R2 1
       75 GETUPVAL                         R3 8
       76 GETTABLEKS                       R3 R3 K12 ["subscribeGameStopped"]
       78 MOVE                             R4 R1
       79 NEWCLOSURE                       R5 P7
       80 CAPTURE                          UPVAL U6
       81 CALL                             R3 2 1
       82 SETTABLEKS                       R3 R2 K13 ["gameStopped"]
       84 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_20:
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

PROTO_21:
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K10 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["Parent"]
       31 GETTABLEKS                       R4 R4 K8 ["Packages"]
       33 GETTABLEKS                       R4 R4 K11 ["_Index"]
       35 GETTABLEKS                       R4 R4 K12 ["AssistantUI"]
       37 GETTABLEKS                       R4 R4 K12 ["AssistantUI"]
       39 GETTABLEKS                       R4 R4 K13 ["Util"]
       41 GETTABLEKS                       R4 R4 K14 ["DataModelType"]
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K5 [require]
       46 GETTABLEKS                       R5 R0 K6 ["Src"]
       48 GETTABLEKS                       R5 R5 K13 ["Util"]
       50 GETTABLEKS                       R5 R5 K15 ["GameLoadedNotifier"]
       52 CALL                             R4 1 1
       53 GETIMPORT                        R5 K5 [require]
       55 GETTABLEKS                       R6 R0 K6 ["Src"]
       57 GETTABLEKS                       R6 R6 K13 ["Util"]
       59 GETTABLEKS                       R6 R6 K16 ["GameStoppedNotifier"]
       61 CALL                             R5 1 1
       62 GETIMPORT                        R6 K5 [require]
       64 GETTABLEKS                       R7 R0 K8 ["Packages"]
       66 GETTABLEKS                       R7 R7 K17 ["Signal"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K5 [require]
       71 GETTABLEKS                       R8 R0 K6 ["Src"]
       73 GETTABLEKS                       R8 R8 K18 ["Flags"]
       75 CALL                             R7 1 1
       76 NEWTABLE                         R8 4 0
       78 LOADB                            R9 0
       79 LOADNIL                          R10
       80 LOADB                            R11 0
       81 LOADNIL                          R12
       82 NEWCLOSURE                       R13 P0
       83 CAPTURE                          REF R11
       84 NEWCLOSURE                       R14 P1
       85 CAPTURE                          REF R12
       86 CAPTURE                          VAL R6
       87 NEWCLOSURE                       R15 P2
       88 CAPTURE                          REF R11
       89 CAPTURE                          REF R12
       90 DUPCLOSURE                       R16 K19 [PROTO_4]
       91 CAPTURE                          VAL R7
       92 DUPCLOSURE                       R17 K20 [PROTO_5]
       93 CAPTURE                          VAL R8
       94 NEWCLOSURE                       R18 P5
       95 CAPTURE                          REF R10
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R1
       99 CAPTURE                          REF R11
      100 CAPTURE                          REF R12
      101 CAPTURE                          REF R9
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R5
      104 NEWCLOSURE                       R19 P6
      105 CAPTURE                          REF R9
      106 NEWCLOSURE                       R20 P7
      107 CAPTURE                          REF R10
      108 NEWCLOSURE                       R21 P8
      109 CAPTURE                          REF R10
      110 CAPTURE                          VAL R3
      111 DUPTABLE                         R22 K27 [{"init", "getStudioPlayState", "getFocusedDataModelEnum", "getFocusedDataModelType", "isEditDataModelAvailable", "subscribeEditDataModelAvailabilityChanged"}]
      112 SETTABLEKS                       R18 R22 K21 ["init"]
      114 SETTABLEKS                       R19 R22 K22 ["getStudioPlayState"]
      116 SETTABLEKS                       R20 R22 K23 ["getFocusedDataModelEnum"]
      118 SETTABLEKS                       R21 R22 K24 ["getFocusedDataModelType"]
      120 SETTABLEKS                       R13 R22 K25 ["isEditDataModelAvailable"]
      122 SETTABLEKS                       R14 R22 K26 ["subscribeEditDataModelAvailabilityChanged"]
      124 CLOSEUPVALS                      R9
      125 RETURN                           R22 1
