PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["allSheets"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K1 ["insertDerive"]
       11 GETUPVAL                         R3 4
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 GETIMPORT                        R2 K5 [Enum.FinishRecordingOperation.Commit]
       16 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["state"]
        6 GETTABLEKS                       R5 R3 K2 ["StyleSheet"]
        8 GETTABLEKS                       R6 R3 K3 ["dispatch"]
       10 GETUPVAL                         R7 1
       11 GETUPVAL                         R8 2
       12 DUPTABLE                         R9 K6 [{"eventType", "path"}]
       13 GETUPVAL                         R10 3
       14 GETTABLEKS                       R10 R10 K7 ["ButtonPressed"]
       16 GETTABLEKS                       R10 R10 K8 ["rawValue"]
       18 CALL                             R10 0 1
       19 SETTABLEKS                       R10 R9 K4 ["eventType"]
       21 LOADK                            R10 K9 ["DerivesView/SetDerives"]
       22 SETTABLEKS                       R10 R9 K5 ["path"]
       24 CALL                             R8 1 -1
       25 CALL                             R7 -1 -1
       26 CALL                             R6 -1 0
       27 GETUPVAL                         R6 4
       28 DUPTABLE                         R7 K13 [{"Name", "DisplayName", "DoChange"}]
       29 LOADK                            R8 K14 ["StyleEditor.SetDerives"]
       30 SETTABLEKS                       R8 R7 K10 ["Name"]
       32 LOADK                            R8 K15 ["Style Editor - Set Derives"]
       33 SETTABLEKS                       R8 R7 K11 ["DisplayName"]
       35 NEWCLOSURE                       R8 P0
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          VAL R5
       41 SETTABLEKS                       R8 R7 K12 ["DoChange"]
       43 CALL                             R6 1 0
       44 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isValidDerive"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+3]
        7 GETTABLEKS                       R2 R1 K1 ["Name"]
        9 RETURN                           R2 1
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["StyleSheet"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["state"]
        8 GETTABLEKS                       R2 R2 K3 ["allSheets"]
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R2
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 GETUPVAL                         R3 3
       18 MOVE                             R4 R2
       19 MOVE                             R5 R0
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["rebuildTableState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R2 R2 K2 ["styleSheet"]
        8 MOVE                             R3 R0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["props"]
       12 CALL                             R1 3 -1
       13 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U0
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 JUMPIFEQKS                       R0 K0 ["StyleSheet"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["Priority"] ; [+8]
        4 GETUPVAL                         R1 0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R1 R1 K2 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R3 K0 ["StyleDerive"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+23]
        5 GETUPVAL                         R1 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R1 R1 K2 ["setState"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["connections"]
       15 GETTABLEKS                       R2 R2 K4 ["instanceMap"]
       17 GETTABLE                         R1 R2 R0
       18 NAMECALL                         R1 R1 K5 ["Disconnect"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K3 ["connections"]
       24 GETTABLEKS                       R1 R1 K4 ["instanceMap"]
       26 LOADNIL                          R2
       27 SETTABLE                         R2 R1 R0
       28 RETURN                           R0 0

PROTO_12:
        0 JUMPIFEQKS                       R0 K0 ["StyleSheet"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["Priority"] ; [+8]
        4 GETUPVAL                         R1 0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R1 R1 K2 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R3 K0 ["StyleDerive"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+38]
        5 GETUPVAL                         R1 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R1 R1 K2 ["setState"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 2
       13 JUMPIFNOT                        R1 ; [+15]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K3 ["connections"]
       17 GETTABLEKS                       R1 R1 K4 ["instanceMap"]
       19 GETTABLEKS                       R2 R0 K5 ["Changed"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 NAMECALL                         R2 R2 K6 ["Connect"]
       26 CALL                             R2 2 1
       27 SETTABLE                         R2 R1 R0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K3 ["connections"]
       32 GETTABLEKS                       R1 R1 K4 ["instanceMap"]
       34 LOADK                            R4 K7 ["StyleSheet"]
       35 NAMECALL                         R2 R0 K8 ["GetPropertyChangedSignal"]
       37 CALL                             R2 2 1
       38 GETUPVAL                         R4 3
       39 NAMECALL                         R2 R2 K6 ["Connect"]
       41 CALL                             R2 2 1
       42 SETTABLE                         R2 R1 R0
       43 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K0 ["connections"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["connections"]
       11 NEWTABLE                         R2 0 0
       13 SETTABLEKS                       R2 R1 K1 ["instanceMap"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 NAMECALL                         R2 R0 K2 ["GetChildren"]
       20 CALL                             R2 1 3
       21 FORGPREP                         R2
       22 LOADK                            R9 K3 ["StyleDerive"]
       23 NAMECALL                         R7 R6 K4 ["IsA"]
       25 CALL                             R7 2 1
       26 JUMPIFNOT                        R7 ; [+31]
       27 GETUPVAL                         R7 2
       28 JUMPIFNOT                        R7 ; [+15]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K0 ["connections"]
       32 GETTABLEKS                       R7 R7 K1 ["instanceMap"]
       34 GETTABLEKS                       R8 R6 K5 ["Changed"]
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U1
       39 NAMECALL                         R8 R8 K6 ["Connect"]
       41 CALL                             R8 2 1
       42 SETTABLE                         R8 R7 R6
       43 JUMP                             ; [+14]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K0 ["connections"]
       47 GETTABLEKS                       R7 R7 K1 ["instanceMap"]
       49 LOADK                            R10 K7 ["StyleSheet"]
       50 NAMECALL                         R8 R6 K8 ["GetPropertyChangedSignal"]
       52 CALL                             R8 2 1
       53 MOVE                             R10 R1
       54 NAMECALL                         R8 R8 K6 ["Connect"]
       56 CALL                             R8 2 1
       57 SETTABLE                         R8 R7 R6
       58 FORGLOOP                         R2 2 ; [-37]
       60 GETUPVAL                         R2 0
       61 GETTABLEKS                       R2 R2 K0 ["connections"]
       63 GETTABLEKS                       R3 R0 K9 ["DescendantRemoving"]
       65 NEWCLOSURE                       R5 P2
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          UPVAL U1
       68 NAMECALL                         R3 R3 K6 ["Connect"]
       70 CALL                             R3 2 1
       71 SETTABLEKS                       R3 R2 K10 ["descendantRemovingConnection"]
       73 GETUPVAL                         R2 0
       74 GETTABLEKS                       R2 R2 K0 ["connections"]
       76 GETTABLEKS                       R3 R0 K11 ["DescendantAdded"]
       78 NEWCLOSURE                       R5 P3
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          VAL R1
       83 NAMECALL                         R3 R3 K6 ["Connect"]
       85 CALL                             R3 2 1
       86 SETTABLEKS                       R3 R2 K12 ["descendantAddedConnection"]
       88 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["connections"]
        3 JUMPIFNOT                        R0 ; [+41]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["connections"]
        7 GETTABLEKS                       R0 R0 K1 ["instanceMap"]
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 NAMECALL                         R5 R4 K2 ["Disconnect"]
       14 CALL                             R5 1 0
       15 FORGLOOP                         R0 2 ; [-4]
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K0 ["connections"]
       20 GETTABLEKS                       R0 R0 K3 ["descendantRemovingConnection"]
       22 JUMPIFNOT                        R0 ; [+8]
       23 GETUPVAL                         R0 0
       24 GETTABLEKS                       R0 R0 K0 ["connections"]
       26 GETTABLEKS                       R0 R0 K3 ["descendantRemovingConnection"]
       28 NAMECALL                         R0 R0 K2 ["Disconnect"]
       30 CALL                             R0 1 0
       31 GETUPVAL                         R0 0
       32 GETTABLEKS                       R0 R0 K0 ["connections"]
       34 GETTABLEKS                       R0 R0 K4 ["descendantAddedConnection"]
       36 JUMPIFNOT                        R0 ; [+8]
       37 GETUPVAL                         R0 0
       38 GETTABLEKS                       R0 R0 K0 ["connections"]
       40 GETTABLEKS                       R0 R0 K4 ["descendantAddedConnection"]
       42 NAMECALL                         R0 R0 K2 ["Disconnect"]
       44 CALL                             R0 1 0
       45 GETUPVAL                         R0 0
       46 LOADNIL                          R1
       47 SETTABLEKS                       R1 R0 K0 ["connections"]
       49 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R1 K3 [{"allSheets", "styleSheet", "table"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["allSheets"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K1 ["styleSheet"]
        8 DUPTABLE                         R2 K8 [{"Columns", "Expansion", "Selection", "Items"}]
        9 GETUPVAL                         R3 0
       10 GETUPVAL                         R4 1
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K4 ["Columns"]
       14 NEWTABLE                         R3 0 0
       16 SETTABLEKS                       R3 R2 K5 ["Expansion"]
       18 NEWTABLE                         R3 0 0
       20 SETTABLEKS                       R3 R2 K6 ["Selection"]
       22 NEWTABLE                         R3 0 0
       24 SETTABLEKS                       R3 R2 K7 ["Items"]
       26 SETTABLEKS                       R2 R1 K2 ["table"]
       28 SETTABLEKS                       R1 R0 K9 ["state"]
       30 GETUPVAL                         R1 2
       31 MOVE                             R3 R0
       32 LOADK                            R4 K2 ["table"]
       33 NAMECALL                         R1 R1 K10 ["getStateAdaptor"]
       35 CALL                             R1 3 1
       36 GETUPVAL                         R2 2
       37 MOVE                             R4 R1
       38 NAMECALL                         R2 R2 K11 ["getCallbacks"]
       40 CALL                             R2 2 1
       41 SETTABLEKS                       R2 R0 K12 ["tableCallbacks"]
       43 NEWCLOSURE                       R2 P0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 SETTABLEKS                       R2 R0 K13 ["onEdited"]
       53 DUPCLOSURE                       R2 K14 [PROTO_5]
       54 SETTABLEKS                       R2 R0 K15 ["getChildren"]
       56 NEWCLOSURE                       R2 P2
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U9
       59 CAPTURE                          UPVAL U8
       60 CAPTURE                          UPVAL U10
       61 SETTABLEKS                       R2 R0 K16 ["getCellAutocomplete"]
       63 NEWCLOSURE                       R2 P3
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U11
       66 CAPTURE                          UPVAL U12
       67 SETTABLEKS                       R2 R0 K17 ["createDeriveConnections"]
       69 NEWCLOSURE                       R2 P4
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R2 R0 K18 ["removeDeriveConnections"]
       73 RETURN                           R0 0

PROTO_17:
        0 LOADK                            R3 K0 ["StyleSheet"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R2 0
        6 JUMPIFNOTEQ                      R0 R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R3 R1 K0 ["GetDescendants"]
        3 CALL                             R3 1 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_19:
        0 DUPTABLE                         R0 K2 [{"Name", "Value"}]
        1 DUPTABLE                         R1 K4 [{"Schema", "Value"}]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K5 ["TextSchema"]
        6 DUPTABLE                         R4 K7 [{"PlaceholderText"}]
        7 LOADK                            R5 K8 ["Add a Derive..."]
        8 SETTABLEKS                       R5 R4 K6 ["PlaceholderText"]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R1 K3 ["Schema"]
       13 LOADK                            R2 K9 [""]
       14 SETTABLEKS                       R2 R1 K1 ["Value"]
       16 SETTABLEKS                       R1 R0 K0 ["Name"]
       18 DUPTABLE                         R1 K4 [{"Schema", "Value"}]
       19 DUPTABLE                         R2 K11 [{"Type"}]
       20 LOADK                            R3 K12 ["Empty"]
       21 SETTABLEKS                       R3 R2 K10 ["Type"]
       23 SETTABLEKS                       R2 R1 K3 ["Schema"]
       25 LOADK                            R2 K9 [""]
       26 SETTABLEKS                       R2 R1 K1 ["Value"]
       28 SETTABLEKS                       R1 R0 K1 ["Value"]
       30 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["moveDerive"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 LOADN                            R3 255
        6 CALL                             R0 3 0
        7 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        9 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{"Name", "DisplayName", "DoChange"}]
        2 LOADK                            R2 K4 ["StyleEditor.MoveDeriveDown"]
        3 SETTABLEKS                       R2 R1 K0 ["Name"]
        5 LOADK                            R2 K5 ["Style Editor - Move Derive Down"]
        6 SETTABLEKS                       R2 R1 K1 ["DisplayName"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 SETTABLEKS                       R2 R1 K2 ["DoChange"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["moveDerive"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 LOADN                            R3 1
        6 CALL                             R0 3 0
        7 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        9 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{"Name", "DisplayName", "DoChange"}]
        2 LOADK                            R2 K4 ["StyleEditor.MoveDeriveUp"]
        3 SETTABLEKS                       R2 R1 K0 ["Name"]
        5 LOADK                            R2 K5 ["Style Editor - Move Derive Up"]
        6 SETTABLEKS                       R2 R1 K1 ["DisplayName"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 SETTABLEKS                       R2 R1 K2 ["DoChange"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeDeriveIndex"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        8 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeDerive"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        8 RETURN                           R0 1

PROTO_26:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K3 [{"Name", "DisplayName", "DoChange"}]
        7 LOADK                            R3 K4 ["StyleEditor.RemoveDerive"]
        8 SETTABLEKS                       R3 R2 K0 ["Name"]
       10 LOADK                            R3 K5 ["Style Editor - Remove Derive"]
       11 SETTABLEKS                       R3 R2 K1 ["DisplayName"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 SETTABLEKS                       R3 R2 K2 ["DoChange"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 1
       22 DUPTABLE                         R2 K3 [{"Name", "DisplayName", "DoChange"}]
       23 LOADK                            R3 K4 ["StyleEditor.RemoveDerive"]
       24 SETTABLEKS                       R3 R2 K0 ["Name"]
       26 LOADK                            R3 K6 ["Style Editor - Remove Derive from {derivedSheet.Name}"]
       27 SETTABLEKS                       R3 R2 K1 ["DisplayName"]
       29 NEWCLOSURE                       R3 P1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R3 R2 K2 ["DoChange"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+31]
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["DeriveSchema"]
        6 DUPTABLE                         R4 K3 [{"OnMoveDown", "OnMoveUp"}]
        7 LOADN                            R6 1
        8 JUMPIFNOTLT                      R6 R0 ; [+7]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          VAL R0
       15 JUMP                             ; [+1]
       16 LOADNIL                          R5
       17 SETTABLEKS                       R5 R4 K1 ["OnMoveDown"]
       19 GETUPVAL                         R6 6
       20 JUMPIFNOTLT                      R0 R6 ; [+7]
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R0
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 SETTABLEKS                       R5 R4 K2 ["OnMoveUp"]
       31 CALL                             R2 2 1
       32 JUMP                             ; [+3]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K0 ["DeriveSchema"]
       36 DUPTABLE                         R3 K6 [{"Name", "Instance"}]
       37 DUPTABLE                         R4 K11 [{"OnClick", "Schema", "Value", "LeftIcon"}]
       38 NEWCLOSURE                       R5 P2
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R5 R4 K7 ["OnClick"]
       46 SETTABLEKS                       R2 R4 K8 ["Schema"]
       48 SETTABLEKS                       R1 R4 K9 ["Value"]
       50 DUPTABLE                         R5 K14 [{"Image", "Size"}]
       51 GETUPVAL                         R6 7
       52 GETTABLEKS                       R6 R6 K15 ["getClassIcon"]
       54 LOADK                            R7 K16 ["StyleSheet"]
       55 CALL                             R6 1 1
       56 SETTABLEKS                       R6 R5 K12 ["Image"]
       58 GETUPVAL                         R6 8
       59 SETTABLEKS                       R6 R5 K13 ["Size"]
       61 SETTABLEKS                       R5 R4 K10 ["LeftIcon"]
       63 SETTABLEKS                       R4 R3 K4 ["Name"]
       65 SETTABLEKS                       R1 R3 K5 ["Instance"]
       67 RETURN                           R3 1

PROTO_28:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 JUMPIFNOTEQKNIL                  R0 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        8 LOADK                            R3 K0 ["expecting valid stylesheet"]
        9 GETIMPORT                        R1 K2 [assert]
       11 CALL                             R1 2 0
       12 NAMECALL                         R1 R0 K3 ["GetDerives"]
       14 CALL                             R1 1 1
       15 LENGTH                           R2 R1
       16 GETUPVAL                         R3 0
       17 MOVE                             R4 R1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 1
       30 JUMPIFNOT                        R4 ; [+4]
       31 GETUPVAL                         R4 8
       32 MOVE                             R5 R3
       33 CALL                             R4 1 1
       34 MOVE                             R3 R4
       35 DUPTABLE                         R4 K6 [{"Name", "Children"}]
       36 DUPTABLE                         R5 K11 [{"Schema", "FullSpan", "Value", "LeftIcon"}]
       37 GETUPVAL                         R6 2
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K12 ["SelectorSchema"]
       41 DUPTABLE                         R8 K14 [{"Editing"}]
       42 LOADB                            R9 0
       43 SETTABLEKS                       R9 R8 K13 ["Editing"]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K7 ["Schema"]
       48 LOADB                            R6 1
       49 SETTABLEKS                       R6 R5 K8 ["FullSpan"]
       51 LOADK                            R6 K15 ["Derives"]
       52 SETTABLEKS                       R6 R5 K9 ["Value"]
       54 DUPTABLE                         R6 K18 [{"Image", "Size"}]
       55 GETUPVAL                         R7 6
       56 GETTABLEKS                       R7 R7 K19 ["getClassIcon"]
       58 LOADK                            R8 K20 ["StyleDerive"]
       59 CALL                             R7 1 1
       60 SETTABLEKS                       R7 R6 K16 ["Image"]
       62 GETUPVAL                         R7 7
       63 SETTABLEKS                       R7 R6 K17 ["Size"]
       65 SETTABLEKS                       R6 R5 K10 ["LeftIcon"]
       67 SETTABLEKS                       R5 R4 K4 ["Name"]
       69 SETTABLEKS                       R3 R4 K5 ["Children"]
       71 GETTABLEKS                       R6 R4 K5 ["Children"]
       73 GETUPVAL                         R7 9
       74 GETTABLEKS                       R7 R7 K21 ["getEmptyRow"]
       76 CALL                             R7 0 -1
       77 FASTCALL                         TABLE_INSERT ; [+1]
       78 GETUPVAL                         R5 10
       79 CALL                             R5 -1 0
       80 GETUPVAL                         R5 11
       81 NEWTABLE                         R7 0 1
       83 MOVE                             R8 R4
       84 SETLIST                          R7 R8 1 [1]
       86 NAMECALL                         R5 R5 K22 ["updatePaths"]
       88 CALL                             R5 2 -1
       89 RETURN                           R5 -1

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getAllSheets"]
        3 MOVE                             R4 R0
        4 GETTABLEKS                       R5 R2 K1 ["Source"]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["getItems"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K3 ["updateItems"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R7 R1 K4 ["table"]
       18 DUPTABLE                         R8 K6 [{"Children"}]
       19 GETTABLEKS                       R9 R1 K4 ["table"]
       21 GETTABLEKS                       R9 R9 K7 ["Items"]
       23 SETTABLEKS                       R9 R8 K5 ["Children"]
       25 DUPTABLE                         R9 K6 [{"Children"}]
       26 SETTABLEKS                       R4 R9 K5 ["Children"]
       28 CALL                             R5 4 0
       29 GETTABLEKS                       R5 R1 K4 ["table"]
       31 GETTABLEKS                       R5 R5 K8 ["Expansion"]
       33 GETTABLEN                        R6 R4 1
       34 LOADB                            R7 1
       35 SETTABLE                         R7 R5 R6
       36 GETUPVAL                         R6 3
       37 MOVE                             R7 R1
       38 DUPTABLE                         R8 K11 [{"allSheets", "styleSheet", "table"}]
       39 SETTABLEKS                       R3 R8 K9 ["allSheets"]
       41 SETTABLEKS                       R0 R8 K10 ["styleSheet"]
       43 GETUPVAL                         R9 3
       44 GETTABLEKS                       R10 R1 K4 ["table"]
       46 DUPTABLE                         R11 K12 [{"Expansion", "Items"}]
       47 SETTABLEKS                       R5 R11 K8 ["Expansion"]
       49 SETTABLEKS                       R4 R11 K7 ["Items"]
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K4 ["table"]
       54 CALL                             R6 2 -1
       55 RETURN                           R6 -1

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["StyleSheet"]
        2 GETTABLEKS                       R3 R1 K1 ["styleSheet"]
        4 JUMPIFEQ                         R2 R3 ; [+9]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["rebuildTableState"]
        9 MOVE                             R4 R2
       10 MOVE                             R5 R1
       11 MOVE                             R6 R0
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1
       14 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["createDeriveConnections"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R2 K2 ["StyleSheet"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["StyleSheet"]
        4 GETTABLEKS                       R4 R1 K1 ["StyleSheet"]
        6 JUMPIFEQ                         R3 R4 ; [+8]
        8 GETTABLEKS                       R4 R0 K2 ["removeDeriveConnections"]
       10 CALL                             R4 0 0
       11 GETTABLEKS                       R4 R0 K3 ["createDeriveConnections"]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["removeDeriveConnections"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R3 0
        5 NEWTABLE                         R4 16 0
        7 GETIMPORT                        R5 K5 [Enum.AutomaticSize.Y]
        9 SETTABLEKS                       R5 R4 K3 ["AutomaticSize"]
       11 GETTABLEKS                       R5 R2 K6 ["table"]
       13 GETTABLEKS                       R5 R5 K7 ["Columns"]
       15 SETTABLEKS                       R5 R4 K7 ["Columns"]
       17 GETTABLEKS                       R5 R2 K6 ["table"]
       19 GETTABLEKS                       R5 R5 K8 ["Expansion"]
       21 SETTABLEKS                       R5 R4 K8 ["Expansion"]
       23 LOADB                            R5 1
       24 SETTABLEKS                       R5 R4 K9 ["FullSpanEmphasis"]
       26 GETTABLEKS                       R5 R0 K10 ["getCellAutocomplete"]
       28 SETTABLEKS                       R5 R4 K11 ["GetCellAutocomplete"]
       30 GETTABLEKS                       R5 R0 K12 ["getChildren"]
       32 SETTABLEKS                       R5 R4 K13 ["GetChildren"]
       34 GETTABLEKS                       R5 R1 K14 ["LayoutOrder"]
       36 SETTABLEKS                       R5 R4 K14 ["LayoutOrder"]
       38 GETTABLEKS                       R5 R0 K15 ["onEdited"]
       40 SETTABLEKS                       R5 R4 K16 ["OnCellEdited"]
       42 DUPTABLE                         R5 K18 [{"Derive"}]
       43 GETUPVAL                         R6 1
       44 SETTABLEKS                       R6 R5 K17 ["Derive"]
       46 SETTABLEKS                       R5 R4 K19 ["Renderers"]
       48 GETTABLEKS                       R5 R2 K6 ["table"]
       50 GETTABLEKS                       R5 R5 K20 ["Items"]
       52 SETTABLEKS                       R5 R4 K21 ["RootItems"]
       54 GETUPVAL                         R5 2
       55 SETTABLEKS                       R5 R4 K22 ["RowHeight"]
       57 GETTABLEKS                       R5 R2 K6 ["table"]
       59 GETTABLEKS                       R5 R5 K23 ["Selection"]
       61 SETTABLEKS                       R5 R4 K23 ["Selection"]
       63 LOADB                            R5 0
       64 SETTABLEKS                       R5 R4 K24 ["ShowHeader"]
       66 LOADB                            R5 1
       67 SETTABLEKS                       R5 R4 K25 ["UseScale"]
       69 LOADK                            R5 K26 ["compact"]
       70 SETTABLEKS                       R5 R4 K27 ["Variant"]
       72 GETUPVAL                         R5 3
       73 GETTABLEKS                       R5 R5 K28 ["Tag"]
       75 LOADK                            R6 K26 ["compact"]
       76 SETTABLE                         R6 R4 R5
       77 GETTABLEKS                       R5 R0 K29 ["tableCallbacks"]
       79 CALL                             R3 2 1
       80 GETUPVAL                         R4 3
       81 GETTABLEKS                       R4 R4 K30 ["createElement"]
       83 GETUPVAL                         R5 4
       84 MOVE                             R6 R3
       85 CALL                             R4 2 -1
       86 RETURN                           R4 -1

PROTO_35:
        0 DUPTABLE                         R1 K1 [{"Source"}]
        1 GETTABLEKS                       R2 R0 K2 ["Window"]
        3 GETTABLEKS                       R2 R2 K0 ["Source"]
        5 SETTABLEKS                       R2 R1 K0 ["Source"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K12 ["Src"]
       33 GETTABLEKS                       R5 R5 K13 ["Flags"]
       35 GETTABLEKS                       R5 R5 K14 ["getFFlagStyleEditorFixDerivesOrdering"]
       37 CALL                             R4 1 1
       38 CALL                             R4 0 1
       39 GETIMPORT                        R5 K8 [require]
       41 GETTABLEKS                       R6 R1 K9 ["Packages"]
       43 GETTABLEKS                       R6 R6 K15 ["Framework"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R5 K16 ["ContextServices"]
       48 GETTABLEKS                       R7 R6 K17 ["withContext"]
       50 GETTABLEKS                       R8 R5 K18 ["UI"]
       52 GETTABLEKS                       R9 R8 K19 ["TreeTable"]
       54 GETTABLEKS                       R10 R5 K20 ["Util"]
       56 GETTABLEKS                       R10 R10 K21 ["EditTree"]
       58 GETIMPORT                        R11 K8 [require]
       60 GETTABLEKS                       R12 R1 K12 ["Src"]
       62 GETTABLEKS                       R12 R12 K22 ["Renderers"]
       64 GETTABLEKS                       R12 R12 K23 ["DeriveRenderer"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K8 [require]
       69 GETTABLEKS                       R13 R1 K12 ["Src"]
       71 GETTABLEKS                       R13 R13 K20 ["Util"]
       73 GETTABLEKS                       R13 R13 K24 ["DesignHelpers"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K8 [require]
       78 GETTABLEKS                       R14 R1 K12 ["Src"]
       80 GETTABLEKS                       R14 R14 K25 ["Resources"]
       82 GETTABLEKS                       R14 R14 K26 ["PluginStyles"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K8 [require]
       87 GETTABLEKS                       R15 R1 K12 ["Src"]
       89 GETTABLEKS                       R15 R15 K20 ["Util"]
       91 GETTABLEKS                       R15 R15 K27 ["StyleSchema"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K8 [require]
       96 GETTABLEKS                       R16 R1 K12 ["Src"]
       98 GETTABLEKS                       R16 R16 K20 ["Util"]
      100 GETTABLEKS                       R16 R16 K28 ["getAutocompleteItems"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K8 [require]
      105 GETTABLEKS                       R17 R1 K12 ["Src"]
      107 GETTABLEKS                       R17 R17 K20 ["Util"]
      109 GETTABLEKS                       R17 R17 K29 ["mapDispatchToProps"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K8 [require]
      114 GETTABLEKS                       R18 R1 K12 ["Src"]
      116 GETTABLEKS                       R18 R18 K20 ["Util"]
      118 GETTABLEKS                       R18 R18 K30 ["recordChange"]
      120 CALL                             R17 1 1
      121 MOVE                             R18 R0
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K8 [require]
      125 GETTABLEKS                       R19 R1 K12 ["Src"]
      127 GETTABLEKS                       R19 R19 K20 ["Util"]
      129 GETTABLEKS                       R19 R19 K31 ["TreeTableHelpers"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K8 [require]
      134 GETTABLEKS                       R20 R1 K12 ["Src"]
      136 GETTABLEKS                       R20 R20 K20 ["Util"]
      138 GETTABLEKS                       R20 R20 K32 ["MenuHelpers"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K8 [require]
      143 GETTABLEKS                       R21 R1 K12 ["Src"]
      145 GETTABLEKS                       R21 R21 K25 ["Resources"]
      147 GETTABLEKS                       R21 R21 K33 ["Telemetry"]
      149 GETTABLEKS                       R21 R21 K34 ["ActionClickedEvent"]
      151 CALL                             R20 1 1
      152 GETIMPORT                        R21 K8 [require]
      154 GETTABLEKS                       R22 R1 K12 ["Src"]
      156 GETTABLEKS                       R22 R22 K35 ["Enums"]
      158 GETTABLEKS                       R22 R22 K36 ["ActionClickedEventType"]
      160 CALL                             R21 1 1
      161 GETIMPORT                        R22 K8 [require]
      163 GETTABLEKS                       R23 R1 K12 ["Src"]
      165 GETTABLEKS                       R23 R23 K37 ["Thunks"]
      167 GETTABLEKS                       R23 R23 K33 ["Telemetry"]
      169 GETTABLEKS                       R23 R23 K38 ["SendTelemetryEvent"]
      171 CALL                             R22 1 1
      172 GETIMPORT                        R23 K8 [require]
      174 GETTABLEKS                       R24 R1 K12 ["Src"]
      176 GETTABLEKS                       R24 R24 K39 ["Types"]
      178 CALL                             R23 1 1
      179 GETIMPORT                        R24 K8 [require]
      181 GETTABLEKS                       R25 R1 K12 ["Src"]
      183 GETTABLEKS                       R25 R25 K40 ["Reducers"]
      185 GETTABLEKS                       R25 R25 K41 ["RootReducer"]
      187 CALL                             R24 1 1
      188 GETIMPORT                        R25 K8 [require]
      190 GETTABLEKS                       R26 R1 K9 ["Packages"]
      192 GETTABLEKS                       R26 R26 K42 ["Dash"]
      194 CALL                             R25 1 1
      195 GETTABLEKS                       R26 R25 K43 ["collectArray"]
      197 GETTABLEKS                       R27 R25 K44 ["filter"]
      199 GETTABLEKS                       R28 R25 K45 ["join"]
      201 GETTABLEKS                       R29 R25 K46 ["mapOne"]
      203 GETTABLEKS                       R30 R25 K47 ["copy"]
      205 GETTABLEKS                       R31 R25 K48 ["reverse"]
      207 GETIMPORT                        R32 K51 [table.insert]
      209 GETTABLEKS                       R33 R10 K52 ["new"]
      211 DUPTABLE                         R34 K55 [{"getChildren", "getId"}]
      212 DUPCLOSURE                       R35 K56 [PROTO_0]
      213 SETTABLEKS                       R35 R34 K53 ["getChildren"]
      215 DUPCLOSURE                       R35 K57 [PROTO_1]
      216 SETTABLEKS                       R35 R34 K54 ["getId"]
      218 CALL                             R33 1 1
      219 LOADK                            R36 K58 ["RowHeight"]
      220 NAMECALL                         R34 R13 K59 ["GetAttribute"]
      222 CALL                             R34 2 1
      223 LOADK                            R37 K60 ["Icon16"]
      224 NAMECALL                         R35 R13 K59 ["GetAttribute"]
      226 CALL                             R35 2 1
      227 NEWTABLE                         R36 0 1
      229 DUPTABLE                         R37 K64 [{"Name", "Key", "Width"}]
      230 LOADK                            R38 K61 ["Name"]
      231 SETTABLEKS                       R38 R37 K61 ["Name"]
      233 LOADK                            R38 K61 ["Name"]
      234 SETTABLEKS                       R38 R37 K62 ["Key"]
      236 GETIMPORT                        R38 K66 [UDim.new]
      238 LOADN                            R39 1
      239 LOADN                            R40 0
      240 CALL                             R38 2 1
      241 SETTABLEKS                       R38 R37 K63 ["Width"]
      243 SETLIST                          R36 R37 1 [1]
      245 GETTABLEKS                       R37 R2 K67 ["PureComponent"]
      247 LOADK                            R39 K68 ["DerivesTable"]
      248 NAMECALL                         R37 R37 K69 ["extend"]
      250 CALL                             R37 2 1
      251 NEWCLOSURE                       R38 P2
      252 CAPTURE                          VAL R30
      253 CAPTURE                          VAL R36
      254 CAPTURE                          VAL R33
      255 CAPTURE                          VAL R22
      256 CAPTURE                          VAL R20
      257 CAPTURE                          VAL R21
      258 CAPTURE                          VAL R17
      259 CAPTURE                          VAL R29
      260 CAPTURE                          VAL R12
      261 CAPTURE                          VAL R26
      262 CAPTURE                          VAL R15
      263 CAPTURE                          REF R37
      264 CAPTURE                          VAL R4
      265 SETTABLEKS                       R38 R37 K70 ["init"]
      267 DUPCLOSURE                       R38 K71 [PROTO_18]
      268 CAPTURE                          VAL R27
      269 SETTABLEKS                       R38 R37 K72 ["getAllSheets"]
      271 DUPCLOSURE                       R38 K73 [PROTO_19]
      272 CAPTURE                          VAL R28
      273 CAPTURE                          VAL R14
      274 SETTABLEKS                       R38 R37 K74 ["getEmptyRow"]
      276 NEWCLOSURE                       R38 P5
      277 CAPTURE                          VAL R26
      278 CAPTURE                          VAL R4
      279 CAPTURE                          VAL R28
      280 CAPTURE                          VAL R14
      281 CAPTURE                          VAL R17
      282 CAPTURE                          VAL R12
      283 CAPTURE                          VAL R19
      284 CAPTURE                          VAL R35
      285 CAPTURE                          VAL R31
      286 CAPTURE                          REF R37
      287 CAPTURE                          VAL R32
      288 CAPTURE                          VAL R33
      289 SETTABLEKS                       R38 R37 K75 ["getItems"]
      291 NEWCLOSURE                       R38 P6
      292 CAPTURE                          REF R37
      293 CAPTURE                          VAL R18
      294 CAPTURE                          VAL R33
      295 CAPTURE                          VAL R28
      296 SETTABLEKS                       R38 R37 K76 ["rebuildTableState"]
      298 NEWCLOSURE                       R38 P7
      299 CAPTURE                          REF R37
      300 SETTABLEKS                       R38 R37 K77 ["getDerivedStateFromProps"]
      302 DUPCLOSURE                       R38 K78 [PROTO_31]
      303 SETTABLEKS                       R38 R37 K79 ["didMount"]
      305 DUPCLOSURE                       R38 K80 [PROTO_32]
      306 SETTABLEKS                       R38 R37 K81 ["didUpdate"]
      308 DUPCLOSURE                       R38 K82 [PROTO_33]
      309 SETTABLEKS                       R38 R37 K83 ["willUnmount"]
      311 DUPCLOSURE                       R38 K84 [PROTO_34]
      312 CAPTURE                          VAL R28
      313 CAPTURE                          VAL R11
      314 CAPTURE                          VAL R34
      315 CAPTURE                          VAL R2
      316 CAPTURE                          VAL R9
      317 SETTABLEKS                       R38 R37 K85 ["render"]
      319 MOVE                             R38 R7
      320 DUPTABLE                         R39 K87 [{"Localization"}]
      321 GETTABLEKS                       R40 R6 K86 ["Localization"]
      323 SETTABLEKS                       R40 R39 K86 ["Localization"]
      325 CALL                             R38 1 1
      326 MOVE                             R39 R37
      327 CALL                             R38 1 1
      328 MOVE                             R37 R38
      329 GETTABLEKS                       R38 R3 K88 ["connect"]
      331 DUPCLOSURE                       R39 K89 [PROTO_35]
      332 MOVE                             R40 R16
      333 CALL                             R38 2 1
      334 MOVE                             R39 R37
      335 CALL                             R38 1 -1
      336 CLOSEUPVALS                      R37
      337 RETURN                           R38 -1
