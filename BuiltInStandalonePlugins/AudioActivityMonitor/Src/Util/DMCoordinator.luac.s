PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["plugin was nil"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R2 R0 K3 ["HostDataModelType"]
        9 FASTCALL1                        TOSTRING R2 ; [+2]
       10 GETIMPORT                        R1 K5 [tostring]
       12 CALL                             R1 1 1
       13 RETURN                           R1 1

PROTO_1:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["plugin was nil"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R1 R0 K3 ["MultipleDocumentInterfaceInstance"]
        9 GETTABLEKS                       R2 R1 K4 ["FocusedDataModelSession"]
       11 JUMPIFNOT                        R2 ; [+3]
       12 GETTABLEKS                       R4 R2 K5 ["CurrentDataModelType"]
       14 JUMP                             ; [+2]
       15 GETIMPORT                        R4 K9 [Enum.StudioDataModelType.Edit]
       17 FASTCALL1                        TOSTRING R4 ; [+2]
       18 GETIMPORT                        R3 K11 [tostring]
       20 CALL                             R3 1 1
       21 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_plugin"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K1 ["plugin was nil"]
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 2 0
       10 GETTABLEKS                       R2 R0 K4 ["HostDataModelType"]
       12 FASTCALL1                        TOSTRING R2 ; [+2]
       13 GETIMPORT                        R1 K6 [tostring]
       15 CALL                             R1 1 1
       16 JUMPIFNOTEQKS                    R1 K7 ["Enum.StudioDataModelType.Standalone"] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 LOADK                            R4 K8 ["DMCoordinator.Asset used on the DM %*"]
       21 MOVE                             R6 R1
       22 NAMECALL                         R4 R4 K9 ["format"]
       24 CALL                             R4 2 1
       25 FASTCALL2                        ASSERT R3 R4 ; [+3]
       27 GETIMPORT                        R2 K3 [assert]
       29 CALL                             R2 2 0
       30 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_plugin"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Asset"]
        6 GETTABLEKS                       R2 R1 K2 ["_assertPlugin"]
        8 CALL                             R2 0 0
        9 FASTCALL2K                       ASSERT R0 K3 ; [+5]
       11 MOVE                             R4 R0
       12 LOADK                            R5 K3 ["plugin was nil"]
       13 GETIMPORT                        R3 K5 [assert]
       15 CALL                             R3 2 0
       16 GETTABLEKS                       R3 R0 K6 ["HostDataModelType"]
       18 FASTCALL1                        TOSTRING R3 ; [+2]
       19 GETIMPORT                        R2 K8 [tostring]
       21 CALL                             R2 1 1
       22 LOADK                            R6 K9 ["OnViewOpened"]
       23 MOVE                             R7 R2
       24 CONCAT                           R5 R6 R7
       25 GETTABLEKS                       R6 R1 K10 ["_onOpenView"]
       27 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       29 CALL                             R3 3 0
       30 LOADK                            R6 K12 ["OnViewClosed"]
       31 MOVE                             R7 R2
       32 CONCAT                           R5 R6 R7
       33 GETTABLEKS                       R6 R1 K13 ["_onCloseView"]
       35 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       37 CALL                             R3 3 0
       38 LOADK                            R6 K14 ["OnFocusChanged"]
       39 MOVE                             R7 R2
       40 CONCAT                           R5 R6 R7
       41 GETTABLEKS                       R6 R1 K15 ["_setIsFocused"]
       43 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       45 CALL                             R3 3 0
       46 LOADK                            R6 K16 ["OnIdSelected"]
       47 MOVE                             R7 R2
       48 CONCAT                           R5 R6 R7
       49 GETTABLEKS                       R6 R1 K17 ["_selectInstanceWithId"]
       51 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       53 CALL                             R3 3 0
       54 LOADK                            R6 K18 ["OnMeteringToggled"]
       55 MOVE                             R7 R2
       56 CONCAT                           R5 R6 R7
       57 GETTABLEKS                       R6 R1 K19 ["_setMeteringEnabled"]
       59 NAMECALL                         R3 R0 K11 ["OnInvoke"]
       61 CALL                             R3 3 0
       62 LOADK                            R6 K20 ["OnDMJoined"]
       63 MOVE                             R7 R2
       64 CONCAT                           R5 R6 R7
       65 NAMECALL                         R3 R0 K21 ["Invoke"]
       67 CALL                             R3 2 0
       68 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["EnableDetachedPlaybackMetadata"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateInstances"]
        3 CALL                             R0 0 2
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["OnInstancesUpdated"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 NAMECALL                         R2 R2 K2 ["Invoke"]
       10 CALL                             R2 4 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Asset"]
        3 GETTABLEKS                       R1 R0 K1 ["_assertPlugin"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["_onCloseView"]
        8 CALL                             R2 0 0
        9 GETIMPORT                        R2 K4 [pcall]
       11 DUPCLOSURE                       R3 K5 [PROTO_4]
       12 CAPTURE                          UPVAL U1
       13 CALL                             R2 1 0
       14 GETIMPORT                        R2 K7 [game]
       16 NAMECALL                         R2 R2 K8 ["GetDescendants"]
       18 CALL                             R2 1 3
       19 FORGPREP                         R2
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K9 ["addInstance"]
       23 MOVE                             R8 R6
       24 CALL                             R7 1 0
       25 FORGLOOP                         R2 2 ; [-6]
       27 NEWTABLE                         R2 0 4
       29 GETIMPORT                        R3 K7 [game]
       31 GETTABLEKS                       R3 R3 K10 ["DescendantAdded"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K9 ["addInstance"]
       36 NAMECALL                         R3 R3 K11 ["Connect"]
       38 CALL                             R3 2 1
       39 GETIMPORT                        R4 K7 [game]
       41 GETTABLEKS                       R4 R4 K12 ["DescendantRemoving"]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K13 ["removeInstance"]
       46 NAMECALL                         R4 R4 K11 ["Connect"]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R5 3
       50 GETTABLEKS                       R5 R5 K14 ["Heartbeat"]
       52 NEWCLOSURE                       R7 P1
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R1
       55 NAMECALL                         R5 R5 K11 ["Connect"]
       57 CALL                             R5 2 1
       58 GETUPVAL                         R6 4
       59 GETTABLEKS                       R6 R6 K15 ["SelectionChanged"]
       61 GETTABLEKS                       R8 R0 K16 ["_onSelectionChanged"]
       63 NAMECALL                         R6 R6 K11 ["Connect"]
       65 CALL                             R6 2 -1
       66 SETLIST                          R2 R3 -1 [1]
       68 SETTABLEKS                       R2 R0 K17 ["_connections"]
       70 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Asset"]
        3 GETTABLEKS                       R1 R0 K1 ["_assertPlugin"]
        5 CALL                             R1 0 0
        6 GETTABLEKS                       R1 R0 K2 ["_connections"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 NAMECALL                         R6 R5 K3 ["Disconnect"]
       13 CALL                             R6 1 0
       14 FORGLOOP                         R1 2 ; [-4]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K4 ["clear"]
       19 CALL                             R1 0 0
       20 GETTABLEKS                       R1 R0 K5 ["_setIsFocused"]
       22 LOADB                            R2 0
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K6 ["_setMeteringEnabled"]
       26 LOADB                            R2 0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Asset"]
        3 GETTABLEKS                       R2 R1 K1 ["_assertPlugin"]
        5 CALL                             R2 0 0
        6 SETTABLEKS                       R0 R1 K2 ["_isPluginFocused"]
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Asset"]
        3 GETTABLEKS                       R2 R1 K1 ["_assertPlugin"]
        5 CALL                             R2 0 0
        6 GETTABLEKS                       R2 R1 K2 ["_setIsFocused"]
        8 LOADB                            R3 1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["getInstancesToSelectForId"]
       14 MOVE                             R5 R0
       15 CALL                             R4 1 -1
       16 NAMECALL                         R2 R2 K4 ["Set"]
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Asset"]
        3 GETTABLEKS                       R1 R0 K1 ["_assertPlugin"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["_isPluginFocused"]
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R2 R2 K3 ["Get"]
       13 CALL                             R2 1 1
       14 LOADK                            R5 K4 ["OnSelectionChanged"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K5 ["getIdsToSelectForInstances"]
       18 MOVE                             R7 R2
       19 CALL                             R6 1 -1
       20 NAMECALL                         R3 R1 K6 ["Invoke"]
       22 CALL                             R3 -1 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Asset"]
        3 GETTABLEKS                       R2 R1 K1 ["_assertPlugin"]
        5 CALL                             R2 0 0
        6 SETTABLEKS                       R0 R1 K2 ["_isMeteringEnabled"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["setMeteringEnabled"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_plugin"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K1 ["plugin was nil"]
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 2 0
       10 GETTABLEKS                       R2 R0 K4 ["HostDataModelType"]
       12 FASTCALL1                        TOSTRING R2 ; [+2]
       13 GETIMPORT                        R1 K6 [tostring]
       15 CALL                             R1 1 1
       16 JUMPIFEQKS                       R1 K7 ["Enum.StudioDataModelType.Standalone"] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 LOADK                            R4 K8 ["DMCoordinator.Standalone used on the DM %*"]
       21 MOVE                             R6 R1
       22 NAMECALL                         R4 R4 K9 ["format"]
       24 CALL                             R4 2 1
       25 FASTCALL2                        ASSERT R3 R4 ; [+3]
       27 GETIMPORT                        R2 K3 [assert]
       29 CALL                             R2 2 0
       30 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_plugin"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Standalone"]
        6 GETTABLEKS                       R2 R1 K2 ["_assertPlugin"]
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_isPluginFocused"]
        4 GETUPVAL                         R0 1
        5 LOADK                            R3 K1 ["OnFocusChanged"]
        6 GETUPVAL                         R5 1
        7 FASTCALL2K                       ASSERT R5 K2 ; [+5]
        9 MOVE                             R7 R5
       10 LOADK                            R8 K2 ["plugin was nil"]
       11 GETIMPORT                        R6 K4 [assert]
       13 CALL                             R6 2 0
       14 GETTABLEKS                       R6 R5 K5 ["MultipleDocumentInterfaceInstance"]
       16 GETTABLEKS                       R7 R6 K6 ["FocusedDataModelSession"]
       18 JUMPIFNOT                        R7 ; [+3]
       19 GETTABLEKS                       R9 R7 K7 ["CurrentDataModelType"]
       21 JUMP                             ; [+2]
       22 GETIMPORT                        R9 K11 [Enum.StudioDataModelType.Edit]
       24 FASTCALL1                        TOSTRING R9 ; [+2]
       25 GETIMPORT                        R8 K13 [tostring]
       27 CALL                             R8 1 1
       28 MOVE                             R4 R8
       29 CONCAT                           R2 R3 R4
       30 LOADB                            R3 1
       31 NAMECALL                         R0 R0 K14 ["Invoke"]
       33 CALL                             R0 3 0
       34 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_isPluginFocused"]
        4 GETUPVAL                         R0 1
        5 LOADK                            R3 K1 ["OnFocusChanged"]
        6 GETUPVAL                         R5 1
        7 FASTCALL2K                       ASSERT R5 K2 ; [+5]
        9 MOVE                             R7 R5
       10 LOADK                            R8 K2 ["plugin was nil"]
       11 GETIMPORT                        R6 K4 [assert]
       13 CALL                             R6 2 0
       14 GETTABLEKS                       R6 R5 K5 ["MultipleDocumentInterfaceInstance"]
       16 GETTABLEKS                       R7 R6 K6 ["FocusedDataModelSession"]
       18 JUMPIFNOT                        R7 ; [+3]
       19 GETTABLEKS                       R9 R7 K7 ["CurrentDataModelType"]
       21 JUMP                             ; [+2]
       22 GETIMPORT                        R9 K11 [Enum.StudioDataModelType.Edit]
       24 FASTCALL1                        TOSTRING R9 ; [+2]
       25 GETIMPORT                        R8 K13 [tostring]
       27 CALL                             R8 1 1
       28 MOVE                             R4 R8
       29 CONCAT                           R2 R3 R4
       30 LOADB                            R3 0
       31 NAMECALL                         R0 R0 K14 ["Invoke"]
       33 CALL                             R0 3 0
       34 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_lastRegisteredDMType"]
        3 JUMPIFEQKS                       R1 K1 [""] ; [+5]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["_lastRegisteredDMType"]
        8 JUMP                             ; [+23]
        9 GETUPVAL                         R1 1
       10 FASTCALL2K                       ASSERT R1 K2 ; [+5]
       12 MOVE                             R3 R1
       13 LOADK                            R4 K2 ["plugin was nil"]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 GETTABLEKS                       R2 R1 K5 ["MultipleDocumentInterfaceInstance"]
       19 GETTABLEKS                       R3 R2 K6 ["FocusedDataModelSession"]
       21 JUMPIFNOT                        R3 ; [+3]
       22 GETTABLEKS                       R5 R3 K7 ["CurrentDataModelType"]
       24 JUMP                             ; [+2]
       25 GETIMPORT                        R5 K11 [Enum.StudioDataModelType.Edit]
       27 FASTCALL1                        TOSTRING R5 ; [+2]
       28 GETIMPORT                        R4 K13 [tostring]
       30 CALL                             R4 1 1
       31 MOVE                             R0 R4
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K14 ["_onDMClosingCallback"]
       35 JUMPIFNOT                        R1 ; [+5]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K14 ["_onDMClosingCallback"]
       39 MOVE                             R2 R0
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K0 ["plugin was nil"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K3 ["MultipleDocumentInterfaceInstance"]
       11 GETTABLEKS                       R4 R3 K4 ["FocusedDataModelSession"]
       13 JUMPIFNOT                        R4 ; [+3]
       14 GETTABLEKS                       R6 R4 K5 ["CurrentDataModelType"]
       16 JUMP                             ; [+2]
       17 GETIMPORT                        R6 K9 [Enum.StudioDataModelType.Edit]
       19 FASTCALL1                        TOSTRING R6 ; [+2]
       20 GETIMPORT                        R5 K11 [tostring]
       22 CALL                             R5 1 1
       23 MOVE                             R1 R5
       24 SETTABLEKS                       R1 R0 K12 ["_lastRegisteredDMType"]
       26 GETUPVAL                         R0 2
       27 GETTABLEKS                       R0 R0 K13 ["onDMChanged"]
       29 CALL                             R0 0 0
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K14 ["_onDMChangedCallback"]
       33 JUMPIFNOT                        R0 ; [+4]
       34 GETUPVAL                         R0 0
       35 GETTABLEKS                       R0 R0 K14 ["_onDMChangedCallback"]
       37 CALL                             R0 0 0
       38 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 LOADK                            R4 K0 ["OnViewClosed"]
        2 MOVE                             R5 R0
        3 CONCAT                           R3 R4 R5
        4 NAMECALL                         R1 R1 K1 ["Invoke"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["onDMClosing"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Standalone"]
        3 GETTABLEKS                       R3 R2 K1 ["_assertPlugin"]
        5 CALL                             R3 0 1
        6 NEWTABLE                         R4 0 2
        8 LOADK                            R7 K2 ["OnInstancesUpdated"]
        9 GETTABLEKS                       R8 R1 K3 ["onInstancesUpdated"]
       11 NAMECALL                         R5 R3 K4 ["OnInvoke"]
       13 CALL                             R5 3 1
       14 LOADK                            R8 K5 ["OnSelectionChanged"]
       15 GETTABLEKS                       R9 R1 K6 ["onSelectedIdsChanged"]
       17 NAMECALL                         R6 R3 K4 ["OnInvoke"]
       19 CALL                             R6 3 1
       20 SETLIST                          R4 R5 2 [1]
       22 SETTABLEKS                       R4 R2 K7 ["_invokeConnections"]
       24 NEWTABLE                         R4 0 0
       26 SETTABLEKS                       R4 R2 K8 ["_scriptConnections"]
       28 JUMPIFNOT                        R0 ; [+28]
       29 GETTABLEKS                       R5 R2 K8 ["_scriptConnections"]
       31 GETTABLEKS                       R6 R0 K9 ["WindowFocused"]
       33 NEWCLOSURE                       R8 P0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 NAMECALL                         R6 R6 K10 ["Connect"]
       38 CALL                             R6 2 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R4 K13 [table.insert]
       42 CALL                             R4 -1 0
       43 GETTABLEKS                       R5 R2 K8 ["_scriptConnections"]
       45 GETTABLEKS                       R6 R0 K14 ["WindowFocusReleased"]
       47 NEWCLOSURE                       R8 P1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 NAMECALL                         R6 R6 K10 ["Connect"]
       52 CALL                             R6 2 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R4 K13 [table.insert]
       56 CALL                             R4 -1 0
       57 GETTABLEKS                       R4 R3 K15 ["MultipleDocumentInterfaceInstance"]
       59 GETTABLEKS                       R5 R4 K16 ["FocusedDataModelSession"]
       61 JUMPIF                           R5 ; [+1]
       62 RETURN                           R0 0
       63 GETTABLEKS                       R7 R2 K8 ["_scriptConnections"]
       65 GETTABLEKS                       R8 R5 K17 ["CurrentDataModelTypeAboutToChange"]
       67 NEWCLOSURE                       R10 P2
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 NAMECALL                         R8 R8 K10 ["Connect"]
       72 CALL                             R8 2 -1
       73 FASTCALL                         TABLE_INSERT ; [+2]
       74 GETIMPORT                        R6 K13 [table.insert]
       76 CALL                             R6 -1 0
       77 GETTABLEKS                       R7 R2 K8 ["_scriptConnections"]
       79 GETTABLEKS                       R8 R5 K18 ["CurrentDataModelTypeChanged"]
       81 NEWCLOSURE                       R10 P3
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R1
       85 NAMECALL                         R8 R8 K10 ["Connect"]
       87 CALL                             R8 2 -1
       88 FASTCALL                         TABLE_INSERT ; [+2]
       89 GETIMPORT                        R6 K13 [table.insert]
       91 CALL                             R6 -1 0
       92 FASTCALL2K                       ASSERT R3 K19 ; [+5]
       94 MOVE                             R8 R3
       95 LOADK                            R9 K19 ["plugin was nil"]
       96 GETIMPORT                        R7 K21 [assert]
       98 CALL                             R7 2 0
       99 GETTABLEKS                       R7 R3 K15 ["MultipleDocumentInterfaceInstance"]
      101 GETTABLEKS                       R8 R7 K16 ["FocusedDataModelSession"]
      103 JUMPIFNOT                        R8 ; [+3]
      104 GETTABLEKS                       R10 R8 K22 ["CurrentDataModelType"]
      106 JUMP                             ; [+2]
      107 GETIMPORT                        R10 K26 [Enum.StudioDataModelType.Edit]
      109 FASTCALL1                        TOSTRING R10 ; [+2]
      110 GETIMPORT                        R9 K28 [tostring]
      112 CALL                             R9 1 1
      113 MOVE                             R6 R9
      114 SETTABLEKS                       R6 R2 K29 ["_lastRegisteredDMType"]
      116 NEWCLOSURE                       R6 P4
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R6 R2 K30 ["_onDMClosingCallback"]
      121 GETTABLEKS                       R6 R2 K31 ["_sendOnViewOpenedWhenAssetDMJoined"]
      123 SETTABLEKS                       R6 R2 K32 ["_onDMChangedCallback"]
      125 GETTABLEKS                       R6 R2 K31 ["_sendOnViewOpenedWhenAssetDMJoined"]
      127 CALL                             R6 0 0
      128 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Standalone"]
        3 GETTABLEKS                       R1 R0 K1 ["_assertPlugin"]
        5 CALL                             R1 0 1
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R0 K2 ["_onDMClosingCallback"]
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R0 K3 ["_onDMChangedCallback"]
       12 GETTABLEKS                       R2 R0 K4 ["_invokeConnections"]
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 NAMECALL                         R7 R6 K5 ["Disconnect"]
       19 CALL                             R7 1 0
       20 FORGLOOP                         R2 2 ; [-4]
       22 GETTABLEKS                       R2 R0 K6 ["_scriptConnections"]
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 FORGPREP                         R2
       27 NAMECALL                         R7 R6 K5 ["Disconnect"]
       29 CALL                             R7 1 0
       30 FORGLOOP                         R2 2 ; [-4]
       32 GETTABLEKS                       R2 R0 K7 ["_dmJoinedConnection"]
       34 JUMPIFNOT                        R2 ; [+8]
       35 GETTABLEKS                       R2 R0 K7 ["_dmJoinedConnection"]
       37 NAMECALL                         R2 R2 K5 ["Disconnect"]
       39 CALL                             R2 1 0
       40 LOADNIL                          R2
       41 SETTABLEKS                       R2 R0 K7 ["_dmJoinedConnection"]
       43 LOADK                            R2 K8 [""]
       44 SETTABLEKS                       R2 R0 K9 ["_lastRegisteredDMType"]
       46 LOADK                            R5 K10 ["OnViewClosed"]
       47 FASTCALL2K                       ASSERT R1 K11 ; [+5]
       49 MOVE                             R8 R1
       50 LOADK                            R9 K11 ["plugin was nil"]
       51 GETIMPORT                        R7 K13 [assert]
       53 CALL                             R7 2 0
       54 GETTABLEKS                       R7 R1 K14 ["MultipleDocumentInterfaceInstance"]
       56 GETTABLEKS                       R8 R7 K15 ["FocusedDataModelSession"]
       58 JUMPIFNOT                        R8 ; [+3]
       59 GETTABLEKS                       R10 R8 K16 ["CurrentDataModelType"]
       61 JUMP                             ; [+2]
       62 GETIMPORT                        R10 K20 [Enum.StudioDataModelType.Edit]
       64 FASTCALL1                        TOSTRING R10 ; [+2]
       65 GETIMPORT                        R9 K22 [tostring]
       67 CALL                             R9 1 1
       68 MOVE                             R6 R9
       69 CONCAT                           R4 R5 R6
       70 NAMECALL                         R2 R1 K23 ["Invoke"]
       72 CALL                             R2 2 0
       73 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_sendOnViewOpened"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Standalone"]
        3 GETTABLEKS                       R1 R0 K1 ["_assertPlugin"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["_dmJoinedConnection"]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETTABLEKS                       R2 R0 K2 ["_dmJoinedConnection"]
       11 NAMECALL                         R2 R2 K3 ["Disconnect"]
       13 CALL                             R2 1 0
       14 LOADK                            R5 K4 ["OnDMJoined"]
       15 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       17 MOVE                             R8 R1
       18 LOADK                            R9 K5 ["plugin was nil"]
       19 GETIMPORT                        R7 K7 [assert]
       21 CALL                             R7 2 0
       22 GETTABLEKS                       R7 R1 K8 ["MultipleDocumentInterfaceInstance"]
       24 GETTABLEKS                       R8 R7 K9 ["FocusedDataModelSession"]
       26 JUMPIFNOT                        R8 ; [+3]
       27 GETTABLEKS                       R10 R8 K10 ["CurrentDataModelType"]
       29 JUMP                             ; [+2]
       30 GETIMPORT                        R10 K14 [Enum.StudioDataModelType.Edit]
       32 FASTCALL1                        TOSTRING R10 ; [+2]
       33 GETIMPORT                        R9 K16 [tostring]
       35 CALL                             R9 1 1
       36 MOVE                             R6 R9
       37 CONCAT                           R4 R5 R6
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          VAL R0
       40 NAMECALL                         R2 R1 K17 ["OnInvoke"]
       42 CALL                             R2 3 1
       43 SETTABLEKS                       R2 R0 K2 ["_dmJoinedConnection"]
       45 GETTABLEKS                       R2 R0 K18 ["_sendOnViewOpened"]
       47 CALL                             R2 0 0
       48 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Standalone"]
        3 GETTABLEKS                       R1 R0 K1 ["_assertPlugin"]
        5 CALL                             R1 0 1
        6 LOADK                            R5 K2 ["OnViewOpened"]
        7 FASTCALL2K                       ASSERT R1 K3 ; [+5]
        9 MOVE                             R8 R1
       10 LOADK                            R9 K3 ["plugin was nil"]
       11 GETIMPORT                        R7 K5 [assert]
       13 CALL                             R7 2 0
       14 GETTABLEKS                       R7 R1 K6 ["MultipleDocumentInterfaceInstance"]
       16 GETTABLEKS                       R8 R7 K7 ["FocusedDataModelSession"]
       18 JUMPIFNOT                        R8 ; [+3]
       19 GETTABLEKS                       R10 R8 K8 ["CurrentDataModelType"]
       21 JUMP                             ; [+2]
       22 GETIMPORT                        R10 K12 [Enum.StudioDataModelType.Edit]
       24 FASTCALL1                        TOSTRING R10 ; [+2]
       25 GETIMPORT                        R9 K14 [tostring]
       27 CALL                             R9 1 1
       28 MOVE                             R6 R9
       29 CONCAT                           R4 R5 R6
       30 NAMECALL                         R2 R1 K15 ["Invoke"]
       32 CALL                             R2 2 0
       33 LOADK                            R5 K16 ["OnFocusChanged"]
       34 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       36 MOVE                             R8 R1
       37 LOADK                            R9 K3 ["plugin was nil"]
       38 GETIMPORT                        R7 K5 [assert]
       40 CALL                             R7 2 0
       41 GETTABLEKS                       R7 R1 K6 ["MultipleDocumentInterfaceInstance"]
       43 GETTABLEKS                       R8 R7 K7 ["FocusedDataModelSession"]
       45 JUMPIFNOT                        R8 ; [+3]
       46 GETTABLEKS                       R10 R8 K8 ["CurrentDataModelType"]
       48 JUMP                             ; [+2]
       49 GETIMPORT                        R10 K12 [Enum.StudioDataModelType.Edit]
       51 FASTCALL1                        TOSTRING R10 ; [+2]
       52 GETIMPORT                        R9 K14 [tostring]
       54 CALL                             R9 1 1
       55 MOVE                             R6 R9
       56 CONCAT                           R4 R5 R6
       57 GETTABLEKS                       R5 R0 K17 ["_isPluginFocused"]
       59 NAMECALL                         R2 R1 K15 ["Invoke"]
       61 CALL                             R2 3 0
       62 LOADK                            R5 K18 ["OnMeteringToggled"]
       63 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       65 MOVE                             R8 R1
       66 LOADK                            R9 K3 ["plugin was nil"]
       67 GETIMPORT                        R7 K5 [assert]
       69 CALL                             R7 2 0
       70 GETTABLEKS                       R7 R1 K6 ["MultipleDocumentInterfaceInstance"]
       72 GETTABLEKS                       R8 R7 K7 ["FocusedDataModelSession"]
       74 JUMPIFNOT                        R8 ; [+3]
       75 GETTABLEKS                       R10 R8 K8 ["CurrentDataModelType"]
       77 JUMP                             ; [+2]
       78 GETIMPORT                        R10 K12 [Enum.StudioDataModelType.Edit]
       80 FASTCALL1                        TOSTRING R10 ; [+2]
       81 GETIMPORT                        R9 K14 [tostring]
       83 CALL                             R9 1 1
       84 MOVE                             R6 R9
       85 CONCAT                           R4 R5 R6
       86 GETTABLEKS                       R5 R0 K19 ["_isMeteringEnabled"]
       88 NAMECALL                         R2 R1 K15 ["Invoke"]
       90 CALL                             R2 3 0
       91 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Standalone"]
        3 GETTABLEKS                       R2 R1 K1 ["_assertPlugin"]
        5 CALL                             R2 0 1
        6 LOADK                            R6 K2 ["OnIdSelected"]
        7 FASTCALL2K                       ASSERT R2 K3 ; [+5]
        9 MOVE                             R9 R2
       10 LOADK                            R10 K3 ["plugin was nil"]
       11 GETIMPORT                        R8 K5 [assert]
       13 CALL                             R8 2 0
       14 GETTABLEKS                       R8 R2 K6 ["MultipleDocumentInterfaceInstance"]
       16 GETTABLEKS                       R9 R8 K7 ["FocusedDataModelSession"]
       18 JUMPIFNOT                        R9 ; [+3]
       19 GETTABLEKS                       R11 R9 K8 ["CurrentDataModelType"]
       21 JUMP                             ; [+2]
       22 GETIMPORT                        R11 K12 [Enum.StudioDataModelType.Edit]
       24 FASTCALL1                        TOSTRING R11 ; [+2]
       25 GETIMPORT                        R10 K14 [tostring]
       27 CALL                             R10 1 1
       28 MOVE                             R7 R10
       29 CONCAT                           R5 R6 R7
       30 MOVE                             R6 R0
       31 NAMECALL                         R3 R2 K15 ["Invoke"]
       33 CALL                             R3 3 0
       34 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Standalone"]
        3 GETTABLEKS                       R2 R1 K1 ["_assertPlugin"]
        5 CALL                             R2 0 1
        6 SETTABLEKS                       R0 R1 K2 ["_isMeteringEnabled"]
        8 LOADK                            R6 K3 ["OnMeteringToggled"]
        9 FASTCALL2K                       ASSERT R2 K4 ; [+5]
       11 MOVE                             R9 R2
       12 LOADK                            R10 K4 ["plugin was nil"]
       13 GETIMPORT                        R8 K6 [assert]
       15 CALL                             R8 2 0
       16 GETTABLEKS                       R8 R2 K7 ["MultipleDocumentInterfaceInstance"]
       18 GETTABLEKS                       R9 R8 K8 ["FocusedDataModelSession"]
       20 JUMPIFNOT                        R9 ; [+3]
       21 GETTABLEKS                       R11 R9 K9 ["CurrentDataModelType"]
       23 JUMP                             ; [+2]
       24 GETIMPORT                        R11 K13 [Enum.StudioDataModelType.Edit]
       26 FASTCALL1                        TOSTRING R11 ; [+2]
       27 GETIMPORT                        R10 K15 [tostring]
       29 CALL                             R10 1 1
       30 MOVE                             R7 R10
       31 CONCAT                           R5 R6 R7
       32 MOVE                             R6 R0
       33 NAMECALL                         R3 R2 K16 ["Invoke"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Standalone"]
        3 GETTABLEKS                       R1 R0 K1 ["_assertPlugin"]
        5 CALL                             R1 0 0
        6 GETTABLEKS                       R1 R0 K2 ["_isMeteringEnabled"]
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["AudioInstanceTracker"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K11 [game]
       25 LOADK                            R5 K12 ["RunService"]
       26 NAMECALL                         R3 R3 K13 ["GetService"]
       28 CALL                             R3 2 1
       29 GETIMPORT                        R4 K11 [game]
       31 LOADK                            R6 K14 ["Selection"]
       32 NAMECALL                         R4 R4 K13 ["GetService"]
       34 CALL                             R4 2 1
       35 GETIMPORT                        R5 K11 [game]
       37 LOADK                            R7 K15 ["SoundService"]
       38 NAMECALL                         R5 R5 K13 ["GetService"]
       40 CALL                             R5 2 1
       41 DUPCLOSURE                       R6 K16 [PROTO_0]
       42 DUPCLOSURE                       R7 K17 [PROTO_1]
       43 DUPTABLE                         R8 K22 [{["_plugin"] = , ["Asset"], ["Standalone"]}]
       44 DUPTABLE                         R9 K28 [{["_isPluginFocused"] = False, ["_isMeteringEnabled"] = True, ["_connections"]}]
       45 NEWTABLE                         R10 0 0
       47 SETTABLEKS                       R10 R9 K27 ["_connections"]
       49 SETTABLEKS                       R9 R8 K20 ["Asset"]
       51 DUPTABLE                         R9 K36 [{["_isPluginFocused"] = False, ["_isMeteringEnabled"] = True, ["_invokeConnections"], ["_scriptConnections"], ["_dmJoinedConnection"] = , ["_onDMClosingCallback"] = , ["_onDMChangedCallback"] = , ["_lastRegisteredDMType"] = ""}]
       52 NEWTABLE                         R10 0 0
       54 SETTABLEKS                       R10 R9 K29 ["_invokeConnections"]
       56 NEWTABLE                         R10 0 0
       58 SETTABLEKS                       R10 R9 K30 ["_scriptConnections"]
       60 SETTABLEKS                       R9 R8 K21 ["Standalone"]
       62 DUPCLOSURE                       R9 K37 [PROTO_2]
       63 CAPTURE                          VAL R8
       64 GETTABLEKS                       R10 R8 K20 ["Asset"]
       66 SETTABLEKS                       R9 R10 K38 ["_assertPlugin"]
       68 DUPCLOSURE                       R9 K39 [PROTO_3]
       69 CAPTURE                          VAL R8
       70 GETTABLEKS                       R10 R8 K20 ["Asset"]
       72 SETTABLEKS                       R9 R10 K40 ["init"]
       74 DUPCLOSURE                       R9 K41 [PROTO_6]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R4
       80 GETTABLEKS                       R10 R8 K20 ["Asset"]
       82 SETTABLEKS                       R9 R10 K42 ["_onOpenView"]
       84 DUPCLOSURE                       R9 K43 [PROTO_7]
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R2
       87 GETTABLEKS                       R10 R8 K20 ["Asset"]
       89 SETTABLEKS                       R9 R10 K44 ["_onCloseView"]
       91 DUPCLOSURE                       R9 K45 [PROTO_8]
       92 CAPTURE                          VAL R8
       93 GETTABLEKS                       R10 R8 K20 ["Asset"]
       95 SETTABLEKS                       R9 R10 K46 ["_setIsFocused"]
       97 DUPCLOSURE                       R9 K47 [PROTO_9]
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R2
      101 GETTABLEKS                       R10 R8 K20 ["Asset"]
      103 SETTABLEKS                       R9 R10 K48 ["_selectInstanceWithId"]
      105 DUPCLOSURE                       R9 K49 [PROTO_10]
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R2
      109 GETTABLEKS                       R10 R8 K20 ["Asset"]
      111 SETTABLEKS                       R9 R10 K50 ["_onSelectionChanged"]
      113 DUPCLOSURE                       R9 K51 [PROTO_11]
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R2
      116 GETTABLEKS                       R10 R8 K20 ["Asset"]
      118 SETTABLEKS                       R9 R10 K52 ["_setMeteringEnabled"]
      120 DUPCLOSURE                       R9 K53 [PROTO_12]
      121 CAPTURE                          VAL R8
      122 GETTABLEKS                       R10 R8 K21 ["Standalone"]
      124 SETTABLEKS                       R9 R10 K38 ["_assertPlugin"]
      126 DUPCLOSURE                       R9 K54 [PROTO_13]
      127 CAPTURE                          VAL R8
      128 GETTABLEKS                       R10 R8 K21 ["Standalone"]
      130 SETTABLEKS                       R9 R10 K40 ["init"]
      132 DUPCLOSURE                       R9 K55 [PROTO_19]
      133 CAPTURE                          VAL R8
      134 GETTABLEKS                       R10 R8 K21 ["Standalone"]
      136 SETTABLEKS                       R9 R10 K56 ["onViewMount"]
      138 DUPCLOSURE                       R9 K57 [PROTO_20]
      139 CAPTURE                          VAL R8
      140 GETTABLEKS                       R10 R8 K21 ["Standalone"]
      142 SETTABLEKS                       R9 R10 K58 ["onViewUnmount"]
      144 DUPCLOSURE                       R9 K59 [PROTO_22]
      145 CAPTURE                          VAL R8
      146 GETTABLEKS                       R10 R8 K21 ["Standalone"]
      148 SETTABLEKS                       R9 R10 K60 ["_sendOnViewOpenedWhenAssetDMJoined"]
      150 DUPCLOSURE                       R9 K61 [PROTO_23]
      151 CAPTURE                          VAL R8
      152 GETTABLEKS                       R10 R8 K21 ["Standalone"]
      154 SETTABLEKS                       R9 R10 K62 ["_sendOnViewOpened"]
      156 DUPCLOSURE                       R9 K63 [PROTO_24]
      157 CAPTURE                          VAL R8
      158 GETTABLEKS                       R10 R8 K21 ["Standalone"]
      160 SETTABLEKS                       R9 R10 K64 ["selectInstanceWithId"]
      162 DUPCLOSURE                       R9 K65 [PROTO_25]
      163 CAPTURE                          VAL R8
      164 GETTABLEKS                       R10 R8 K21 ["Standalone"]
      166 SETTABLEKS                       R9 R10 K66 ["setMeteringEnabled"]
      168 DUPCLOSURE                       R9 K67 [PROTO_26]
      169 CAPTURE                          VAL R8
      170 GETTABLEKS                       R10 R8 K21 ["Standalone"]
      172 SETTABLEKS                       R9 R10 K68 ["getMeteringEnabled"]
      174 RETURN                           R8 1
