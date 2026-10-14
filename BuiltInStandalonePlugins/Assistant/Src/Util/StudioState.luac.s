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
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.StudioDataModelType.PlayClient]
        3 JUMPIFEQ                         R0 R2 ; [+7]
        5 GETIMPORT                        R2 K5 [Enum.StudioDataModelType.PlayServer]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantRestoreMostRecentThread"]
       11 JUMPIFNOT                        R1 ; [+9]
       12 SETUPVAL                         R0 2
       13 GETUPVAL                         R1 3
       14 JUMPIFNOT                        R1 ; [+7]
       15 GETUPVAL                         R1 3
       16 MOVE                             R3 R0
       17 NAMECALL                         R1 R1 K2 ["Fire"]
       19 CALL                             R1 2 0
       20 JUMP                             ; [+1]
       21 SETUPVAL                         R0 2
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K3 ["FFlagDebugLogAssistantUI"]
       25 JUMPIFNOT                        R1 ; [+16]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
       29 JUMPIFNOT                        R2 ; [+2]
       30 LOADK                            R1 K4 ["[Remote ACP]"]
       31 JUMP                             ; [+1]
       32 LOADK                            R1 K5 ["[Assistant]"]
       33 GETIMPORT                        R2 K7 [print]
       35 LOADK                            R3 K8 ["%* EditDataModelAvailabilityChanged: %*"]
       36 MOVE                             R5 R1
       37 MOVE                             R6 R0
       38 NAMECALL                         R3 R3 K9 ["format"]
       40 CALL                             R3 3 1
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_11:
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
       25 JUMPIFNOT                        R2 ; [+16]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
       29 JUMPIFNOT                        R3 ; [+2]
       30 LOADK                            R2 K4 ["[Remote ACP]"]
       31 JUMP                             ; [+1]
       32 LOADK                            R2 K5 ["[Assistant]"]
       33 GETIMPORT                        R3 K7 [print]
       35 LOADK                            R4 K8 ["%* EditDataModelAvailabilityChanged: %*"]
       36 MOVE                             R6 R2
       37 MOVE                             R7 R1
       38 NAMECALL                         R4 R4 K9 ["format"]
       40 CALL                             R4 3 1
       41 CALL                             R3 1 0
       42 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
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
       25 JUMPIFNOT                        R2 ; [+16]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantDisableApplyEditDataModelAvailability"]
       29 JUMPIFNOT                        R3 ; [+2]
       30 LOADK                            R2 K4 ["[Remote ACP]"]
       31 JUMP                             ; [+1]
       32 LOADK                            R2 K5 ["[Assistant]"]
       33 GETIMPORT                        R3 K7 [print]
       35 LOADK                            R4 K8 ["%* EditDataModelAvailabilityChanged: %*"]
       36 MOVE                             R6 R2
       37 MOVE                             R7 R1
       38 NAMECALL                         R4 R4 K9 ["format"]
       40 CALL                             R4 3 1
       41 CALL                             R3 1 0
       42 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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
       37 GETUPVAL                         R2 2
       38 JUMPIFNOT                        R2 ; [+4]
       39 GETUPVAL                         R2 2
       40 NAMECALL                         R2 R2 K11 ["Fire"]
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 JUMPIF                           R0 ; [+7]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["Fire"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U1
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 NAMECALL                         R3 R0 K1 ["GetChildren"]
       19 CALL                             R3 1 3
       20 FORGPREP                         R3
       21 LOADK                            R10 K2 ["DataModelSession"]
       22 NAMECALL                         R8 R7 K3 ["IsA"]
       24 CALL                             R8 2 1
       25 JUMPIFNOT                        R8 ; [+12]
       26 GETUPVAL                         R9 3
       27 GETTABLE                         R8 R9 R7
       28 JUMPIFNOT                        R8 ; [+1]
       29 JUMP                             ; [+8]
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R9 R7 K4 ["CurrentDataModelTypeChanged"]
       33 MOVE                             R11 R1
       34 NAMECALL                         R9 R9 K5 ["Connect"]
       36 CALL                             R9 2 1
       37 SETTABLE                         R9 R8 R7
       38 FORGLOOP                         R3 2 ; [-18]
       40 GETUPVAL                         R3 4
       41 GETTABLEKS                       R4 R0 K6 ["DataModelSessionStarted"]
       43 NEWCLOSURE                       R6 P2
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R1
       46 NAMECALL                         R4 R4 K5 ["Connect"]
       48 CALL                             R4 2 1
       49 SETTABLEKS                       R4 R3 K7 ["started"]
       51 GETUPVAL                         R3 4
       52 GETTABLEKS                       R4 R0 K8 ["DataModelSessionEnded"]
       54 NEWCLOSURE                       R6 P3
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          VAL R1
       57 NAMECALL                         R4 R4 K5 ["Connect"]
       59 CALL                             R4 2 1
       60 SETTABLEKS                       R4 R3 K9 ["ended"]
       62 MOVE                             R3 R1
       63 CALL                             R3 0 0
       64 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["MultipleDocumentInterfaceInstance"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_22:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["Unloading"]
        4 DUPCLOSURE                       R5 K1 [PROTO_10]
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R3 R3 K2 ["Connect"]
        8 CALL                             R3 2 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["FFlagAssistantUseNewDMNetworking"]
       12 JUMPIFNOT                        R3 ; [+29]
       13 FASTCALL2K                       ASSERT R2 K4 ; [+5]
       15 MOVE                             R4 R2
       16 LOADK                            R5 K4 ["StudioState requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       17 GETIMPORT                        R3 K6 [assert]
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K7 ["event"]
       23 MOVE                             R4 R2
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K8 ["EditDataModelAvailabilityChangedEventKey"]
       27 CALL                             R3 2 1
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 NAMECALL                         R4 R3 K2 ["Connect"]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 1
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R6 R5 K9 ["editDataModelAvailability"]
       41 JUMP                             ; [+18]
       42 FASTCALL2K                       ASSERT R1 K10 ; [+5]
       44 MOVE                             R4 R1
       45 LOADK                            R5 K10 ["StudioState requires networking"]
       46 GETIMPORT                        R3 K6 [assert]
       48 CALL                             R3 2 0
       49 GETUPVAL                         R5 4
       50 GETTABLEKS                       R5 R5 K8 ["EditDataModelAvailabilityChangedEventKey"]
       52 NEWCLOSURE                       R6 P3
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U7
       57 NAMECALL                         R3 R1 K11 ["OnGuestEvent"]
       59 CALL                             R3 3 0
       60 NEWTABLE                         R3 2 0
       62 NEWTABLE                         R4 0 0
       64 NEWCLOSURE                       R5 P4
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          UPVAL U8
       68 NEWCLOSURE                       R6 P5
       69 CAPTURE                          VAL R5
       70 CAPTURE                          UPVAL U9
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R3
       74 MOVE                             R7 R6
       75 GETUPVAL                         R8 0
       76 GETTABLEKS                       R8 R8 K12 ["MultipleDocumentInterfaceInstance"]
       78 CALL                             R7 1 0
       79 GETUPVAL                         R7 0
       80 LOADK                            R9 K12 ["MultipleDocumentInterfaceInstance"]
       81 NAMECALL                         R7 R7 K13 ["GetPropertyChangedSignal"]
       83 CALL                             R7 2 1
       84 NEWCLOSURE                       R9 P6
       85 CAPTURE                          VAL R6
       86 CAPTURE                          UPVAL U0
       87 NAMECALL                         R7 R7 K2 ["Connect"]
       89 CALL                             R7 2 1
       90 GETUPVAL                         R8 1
       91 NEWCLOSURE                       R9 P7
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R5
       94 SETTABLEKS                       R9 R8 K14 ["mdiBinding"]
       96 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_24:
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

PROTO_25:
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
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["DMNetworkingOLD"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["Parent"]
       38 GETTABLEKS                       R5 R5 K8 ["Packages"]
       40 GETTABLEKS                       R5 R5 K12 ["_Index"]
       42 GETTABLEKS                       R5 R5 K13 ["AssistantUI"]
       44 GETTABLEKS                       R5 R5 K13 ["AssistantUI"]
       46 GETTABLEKS                       R5 R5 K14 ["Util"]
       48 GETTABLEKS                       R5 R5 K15 ["DataModelType"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K5 [require]
       53 GETTABLEKS                       R6 R0 K8 ["Packages"]
       55 GETTABLEKS                       R6 R6 K16 ["Signal"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K5 [require]
       60 GETIMPORT                        R7 K1 [script]
       62 GETTABLEKS                       R7 R7 K11 ["Parent"]
       64 GETTABLEKS                       R7 R7 K11 ["Parent"]
       66 GETTABLEKS                       R7 R7 K11 ["Parent"]
       68 GETTABLEKS                       R7 R7 K8 ["Packages"]
       70 GETTABLEKS                       R7 R7 K12 ["_Index"]
       72 GETTABLEKS                       R7 R7 K13 ["AssistantUI"]
       74 GETTABLEKS                       R7 R7 K13 ["AssistantUI"]
       76 GETTABLEKS                       R7 R7 K17 ["FlagUtils"]
       78 GETTABLEKS                       R7 R7 K18 ["getIsAssistantUseRemoteService"]
       80 CALL                             R6 1 1
       81 GETTABLEKS                       R6 R6 K19 ["get"]
       83 GETIMPORT                        R7 K5 [require]
       85 GETTABLEKS                       R8 R0 K6 ["Src"]
       87 GETTABLEKS                       R8 R8 K20 ["Flags"]
       89 CALL                             R7 1 1
       90 GETTABLEKS                       R8 R2 K21 ["Remote"]
       92 NEWTABLE                         R9 2 0
       94 LOADB                            R10 0
       95 LOADNIL                          R11
       96 LOADB                            R12 0
       97 LOADNIL                          R13
       98 LOADNIL                          R14
       99 NEWCLOSURE                       R15 P0
      100 CAPTURE                          REF R12
      101 NEWCLOSURE                       R16 P1
      102 CAPTURE                          REF R13
      103 CAPTURE                          VAL R5
      104 NEWCLOSURE                       R17 P2
      105 CAPTURE                          REF R12
      106 CAPTURE                          REF R13
      107 NEWCLOSURE                       R18 P3
      108 CAPTURE                          REF R14
      109 CAPTURE                          VAL R5
      110 NEWCLOSURE                       R19 P4
      111 CAPTURE                          REF R14
      112 DUPCLOSURE                       R20 K22 [PROTO_7]
      113 DUPCLOSURE                       R21 K23 [PROTO_8]
      114 CAPTURE                          VAL R9
      115 NEWCLOSURE                       R22 P7
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R6
      118 CAPTURE                          REF R12
      119 CAPTURE                          REF R13
      120 NEWCLOSURE                       R23 P8
      121 CAPTURE                          REF R11
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R6
      127 CAPTURE                          REF R12
      128 CAPTURE                          REF R13
      129 CAPTURE                          REF R10
      130 CAPTURE                          REF R14
      131 NEWCLOSURE                       R24 P9
      132 CAPTURE                          REF R10
      133 NEWCLOSURE                       R25 P10
      134 CAPTURE                          REF R11
      135 NEWCLOSURE                       R26 P11
      136 CAPTURE                          REF R11
      137 CAPTURE                          VAL R4
      138 DUPTABLE                         R27 K31 [{"init", "getStudioPlayState", "getFocusedDataModelEnum", "getFocusedDataModelType", "isEditDataModelAvailable", "subscribeEditDataModelAvailabilityChanged", "subscribeFocusedDataModelTypeChanged"}]
      139 SETTABLEKS                       R23 R27 K24 ["init"]
      141 SETTABLEKS                       R24 R27 K25 ["getStudioPlayState"]
      143 SETTABLEKS                       R25 R27 K26 ["getFocusedDataModelEnum"]
      145 SETTABLEKS                       R26 R27 K27 ["getFocusedDataModelType"]
      147 SETTABLEKS                       R15 R27 K28 ["isEditDataModelAvailable"]
      149 SETTABLEKS                       R16 R27 K29 ["subscribeEditDataModelAvailabilityChanged"]
      151 SETTABLEKS                       R18 R27 K30 ["subscribeFocusedDataModelTypeChanged"]
      153 CLOSEUPVALS                      R10
      154 RETURN                           R27 1
