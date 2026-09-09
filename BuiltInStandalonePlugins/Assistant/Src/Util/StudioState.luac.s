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
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.StudioDataModelType.PlayClient]
        3 JUMPIFEQ                         R0 R2 ; [+7]
        5 GETIMPORT                        R2 K5 [Enum.StudioDataModelType.PlayServer]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

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
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantRestoreMostRecentThread"]
       11 JUMPIFNOT                        R2 ; [+9]
       12 SETUPVAL                         R1 2
       13 GETUPVAL                         R2 3
       14 JUMPIFNOT                        R2 ; [+7]
       15 GETUPVAL                         R2 3
       16 MOVE                             R4 R1
       17 NAMECALL                         R2 R2 K2 ["Fire"]
       19 CALL                             R2 2 0
       20 JUMP                             ; [+1]
       21 SETUPVAL                         R1 2
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K3 ["FFlagDebugLogAssistantUI"]
       25 JUMPIFNOT                        R2 ; [+17]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
       29 JUMPIFNOT                        R3 ; [+2]
       30 LOADK                            R2 K4 ["[Remote ACP]"]
       31 JUMP                             ; [+1]
       32 LOADK                            R2 K5 ["[Assistant]"]
       33 GETIMPORT                        R3 K7 [print]
       35 LOADK                            R5 K8 ["%* EditDataModelAvailabilityChanged: %*"]
       36 MOVE                             R7 R2
       37 MOVE                             R8 R1
       38 NAMECALL                         R5 R5 K9 ["format"]
       40 CALL                             R5 3 1
       41 MOVE                             R4 R5
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

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
       10 JUMPIFNOT                        R7 ; [+18]
       11 GETTABLEKS                       R8 R6 K3 ["CurrentDataModelType"]
       13 LOADB                            R7 1
       14 GETIMPORT                        R9 K7 [Enum.StudioDataModelType.PlayClient]
       16 JUMPIFEQ                         R8 R9 ; [+7]
       18 GETIMPORT                        R9 K9 [Enum.StudioDataModelType.PlayServer]
       20 JUMPIFEQ                         R8 R9 ; [+2]
       22 LOADB                            R7 0 +1
       23 LOADB                            R7 1
       24 JUMPIFNOT                        R7 ; [+4]
       25 JUMPIFNOT                        R0 ; [+2]
       26 JUMPIFEQ                         R6 R0 ; [+2]
       28 ADDK                             R1 R1 K10 [1]
       29 FORGLOOP                         R2 2 ; [-24]
       31 LOADN                            R3 0
       32 JUMPIFLT                         R3 R1 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 SETUPVAL                         R2 1
       37 RETURN                           R0 0

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
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 NAMECALL                         R3 R0 K0 ["GetChildren"]
       12 CALL                             R3 1 3
       13 FORGPREP                         R3
       14 LOADK                            R10 K1 ["DataModelSession"]
       15 NAMECALL                         R8 R7 K2 ["IsA"]
       17 CALL                             R8 2 1
       18 JUMPIFNOT                        R8 ; [+12]
       19 GETUPVAL                         R9 2
       20 GETTABLE                         R8 R9 R7
       21 JUMPIFNOT                        R8 ; [+1]
       22 JUMP                             ; [+8]
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R9 R7 K3 ["CurrentDataModelTypeChanged"]
       26 MOVE                             R11 R1
       27 NAMECALL                         R9 R9 K4 ["Connect"]
       29 CALL                             R9 2 1
       30 SETTABLE                         R9 R8 R7
       31 FORGLOOP                         R3 2 ; [-18]
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R4 R0 K5 ["DataModelSessionStarted"]
       36 NEWCLOSURE                       R6 P2
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R1
       39 NAMECALL                         R4 R4 K4 ["Connect"]
       41 CALL                             R4 2 1
       42 SETTABLEKS                       R4 R3 K6 ["started"]
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R4 R0 K7 ["DataModelSessionEnded"]
       47 NEWCLOSURE                       R6 P3
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R1
       50 NAMECALL                         R4 R4 K4 ["Connect"]
       52 CALL                             R4 2 1
       53 SETTABLEKS                       R4 R3 K8 ["ended"]
       55 MOVE                             R3 R1
       56 CALL                             R3 0 0
       57 RETURN                           R0 0

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
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Unloading"]
        4 DUPCLOSURE                       R4 K1 [PROTO_6]
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R2 R2 K2 ["Connect"]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["EditDataModelAvailabilityChangedEventKey"]
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 NAMECALL                         R2 R1 K4 ["OnGuestEvent"]
       19 CALL                             R2 3 0
       20 NEWTABLE                         R2 2 0
       22 NEWTABLE                         R3 0 0
       24 NEWCLOSURE                       R4 P2
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U7
       28 NEWCLOSURE                       R5 P3
       29 CAPTURE                          VAL R4
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 MOVE                             R6 R5
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K5 ["MultipleDocumentInterfaceInstance"]
       37 CALL                             R6 1 0
       38 GETUPVAL                         R6 0
       39 LOADK                            R8 K5 ["MultipleDocumentInterfaceInstance"]
       40 NAMECALL                         R6 R6 K6 ["GetPropertyChangedSignal"]
       42 CALL                             R6 2 1
       43 NEWCLOSURE                       R8 P4
       44 CAPTURE                          VAL R5
       45 CAPTURE                          UPVAL U0
       46 NAMECALL                         R6 R6 K2 ["Connect"]
       48 CALL                             R6 2 1
       49 GETUPVAL                         R7 1
       50 NEWCLOSURE                       R8 P5
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R8 R7 K7 ["mdiBinding"]
       55 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_18:
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

PROTO_19:
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
       46 GETTABLEKS                       R5 R0 K8 ["Packages"]
       48 GETTABLEKS                       R5 R5 K15 ["Signal"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K5 [require]
       53 GETIMPORT                        R6 K1 [script]
       55 GETTABLEKS                       R6 R6 K10 ["Parent"]
       57 GETTABLEKS                       R6 R6 K10 ["Parent"]
       59 GETTABLEKS                       R6 R6 K10 ["Parent"]
       61 GETTABLEKS                       R6 R6 K8 ["Packages"]
       63 GETTABLEKS                       R6 R6 K11 ["_Index"]
       65 GETTABLEKS                       R6 R6 K12 ["AssistantUI"]
       67 GETTABLEKS                       R6 R6 K12 ["AssistantUI"]
       69 GETTABLEKS                       R6 R6 K16 ["FlagUtils"]
       71 GETTABLEKS                       R6 R6 K17 ["getIsAssistantUseRemoteService"]
       73 CALL                             R5 1 1
       74 GETTABLEKS                       R5 R5 K18 ["get"]
       76 GETIMPORT                        R6 K5 [require]
       78 GETTABLEKS                       R7 R0 K6 ["Src"]
       80 GETTABLEKS                       R7 R7 K19 ["Flags"]
       82 CALL                             R6 1 1
       83 NEWTABLE                         R7 1 0
       85 LOADB                            R8 0
       86 LOADNIL                          R9
       87 LOADB                            R10 0
       88 LOADNIL                          R11
       89 NEWCLOSURE                       R12 P0
       90 CAPTURE                          REF R10
       91 NEWCLOSURE                       R13 P1
       92 CAPTURE                          REF R11
       93 CAPTURE                          VAL R4
       94 NEWCLOSURE                       R14 P2
       95 CAPTURE                          REF R10
       96 CAPTURE                          REF R11
       97 DUPCLOSURE                       R15 K20 [PROTO_4]
       98 DUPCLOSURE                       R16 K21 [PROTO_5]
       99 CAPTURE                          VAL R7
      100 NEWCLOSURE                       R17 P5
      101 CAPTURE                          REF R9
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R5
      106 CAPTURE                          REF R10
      107 CAPTURE                          REF R11
      108 CAPTURE                          REF R8
      109 NEWCLOSURE                       R18 P6
      110 CAPTURE                          REF R8
      111 NEWCLOSURE                       R19 P7
      112 CAPTURE                          REF R9
      113 NEWCLOSURE                       R20 P8
      114 CAPTURE                          REF R9
      115 CAPTURE                          VAL R3
      116 DUPTABLE                         R21 K28 [{"init", "getStudioPlayState", "getFocusedDataModelEnum", "getFocusedDataModelType", "isEditDataModelAvailable", "subscribeEditDataModelAvailabilityChanged"}]
      117 SETTABLEKS                       R17 R21 K22 ["init"]
      119 SETTABLEKS                       R18 R21 K23 ["getStudioPlayState"]
      121 SETTABLEKS                       R19 R21 K24 ["getFocusedDataModelEnum"]
      123 SETTABLEKS                       R20 R21 K25 ["getFocusedDataModelType"]
      125 SETTABLEKS                       R12 R21 K26 ["isEditDataModelAvailable"]
      127 SETTABLEKS                       R13 R21 K27 ["subscribeEditDataModelAvailabilityChanged"]
      129 CLOSEUPVALS                      R8
      130 RETURN                           R21 1
