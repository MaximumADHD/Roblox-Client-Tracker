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
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["rebuildTableState"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["state"]
        8 GETTABLEKS                       R2 R2 K2 ["styleSheet"]
       10 MOVE                             R3 R0
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["props"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K0 ["rebuildTableState"]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K1 ["state"]
       22 GETTABLEKS                       R2 R2 K2 ["styleSheet"]
       24 MOVE                             R3 R0
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R0 R0 K0 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 JUMPIFEQKS                       R0 K0 ["StyleSheet"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["Priority"] ; [+9]
        4 GETUPVAL                         R1 0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R1 R1 K2 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R3 K0 ["StyleDerive"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+24]
        5 GETUPVAL                         R1 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R1 R1 K2 ["setState"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["connections"]
       16 GETTABLEKS                       R2 R2 K4 ["instanceMap"]
       18 GETTABLE                         R1 R2 R0
       19 NAMECALL                         R1 R1 K5 ["Disconnect"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K3 ["connections"]
       25 GETTABLEKS                       R1 R1 K4 ["instanceMap"]
       27 LOADNIL                          R2
       28 SETTABLE                         R2 R1 R0
       29 RETURN                           R0 0

PROTO_12:
        0 JUMPIFEQKS                       R0 K0 ["StyleSheet"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["Priority"] ; [+9]
        4 GETUPVAL                         R1 0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R1 R1 K2 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R3 K0 ["StyleDerive"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+40]
        5 GETUPVAL                         R1 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R1 R1 K2 ["setState"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 3
       14 JUMPIFNOT                        R1 ; [+16]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K3 ["connections"]
       18 GETTABLEKS                       R1 R1 K4 ["instanceMap"]
       20 GETTABLEKS                       R2 R0 K5 ["Changed"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 NAMECALL                         R2 R2 K6 ["Connect"]
       28 CALL                             R2 2 1
       29 SETTABLE                         R2 R1 R0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K3 ["connections"]
       34 GETTABLEKS                       R1 R1 K4 ["instanceMap"]
       36 LOADK                            R4 K7 ["StyleSheet"]
       37 NAMECALL                         R2 R0 K8 ["GetPropertyChangedSignal"]
       39 CALL                             R2 2 1
       40 GETUPVAL                         R4 4
       41 NAMECALL                         R2 R2 K6 ["Connect"]
       43 CALL                             R2 2 1
       44 SETTABLE                         R2 R1 R0
       45 RETURN                           R0 0

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
       18 CAPTURE                          UPVAL U2
       19 NAMECALL                         R2 R0 K2 ["GetChildren"]
       21 CALL                             R2 1 3
       22 FORGPREP                         R2
       23 LOADK                            R9 K3 ["StyleDerive"]
       24 NAMECALL                         R7 R6 K4 ["IsA"]
       26 CALL                             R7 2 1
       27 JUMPIFNOT                        R7 ; [+32]
       28 GETUPVAL                         R7 3
       29 JUMPIFNOT                        R7 ; [+16]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K0 ["connections"]
       33 GETTABLEKS                       R7 R7 K1 ["instanceMap"]
       35 GETTABLEKS                       R8 R6 K5 ["Changed"]
       37 NEWCLOSURE                       R10 P1
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U2
       41 NAMECALL                         R8 R8 K6 ["Connect"]
       43 CALL                             R8 2 1
       44 SETTABLE                         R8 R7 R6
       45 JUMP                             ; [+14]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K0 ["connections"]
       49 GETTABLEKS                       R7 R7 K1 ["instanceMap"]
       51 LOADK                            R10 K7 ["StyleSheet"]
       52 NAMECALL                         R8 R6 K8 ["GetPropertyChangedSignal"]
       54 CALL                             R8 2 1
       55 MOVE                             R10 R1
       56 NAMECALL                         R8 R8 K6 ["Connect"]
       58 CALL                             R8 2 1
       59 SETTABLE                         R8 R7 R6
       60 FORGLOOP                         R2 2 ; [-38]
       62 GETUPVAL                         R2 0
       63 GETTABLEKS                       R2 R2 K0 ["connections"]
       65 GETTABLEKS                       R3 R0 K9 ["DescendantRemoving"]
       67 NEWCLOSURE                       R5 P2
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          UPVAL U2
       71 NAMECALL                         R3 R3 K6 ["Connect"]
       73 CALL                             R3 2 1
       74 SETTABLEKS                       R3 R2 K10 ["descendantRemovingConnection"]
       76 GETUPVAL                         R2 0
       77 GETTABLEKS                       R2 R2 K0 ["connections"]
       79 GETTABLEKS                       R3 R0 K11 ["DescendantAdded"]
       81 NEWCLOSURE                       R5 P3
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          UPVAL U2
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          VAL R1
       87 NAMECALL                         R3 R3 K6 ["Connect"]
       89 CALL                             R3 2 1
       90 SETTABLEKS                       R3 R2 K12 ["descendantAddedConnection"]
       92 RETURN                           R0 0

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
       67 CAPTURE                          UPVAL U13
       68 SETTABLEKS                       R2 R0 K17 ["createDeriveConnections"]
       70 NEWCLOSURE                       R2 P4
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R2 R0 K18 ["removeDeriveConnections"]
       74 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+2]
        2 MOVE                             R2 R1
        3 JUMP                             ; [+1]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 NAMECALL                         R4 R2 K0 ["GetDescendants"]
        8 CALL                             R4 1 1
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

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
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+8]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["getAllSheets"]
        5 MOVE                             R4 R0
        6 GETTABLEKS                       R5 R2 K1 ["Source"]
        8 CALL                             R3 2 1
        9 JUMP                             ; [+5]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K0 ["getAllSheets"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K2 ["getItems"]
       18 MOVE                             R5 R0
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K3 ["updateItems"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R7 R1 K4 ["table"]
       26 DUPTABLE                         R8 K6 [{"Children"}]
       27 GETTABLEKS                       R9 R1 K4 ["table"]
       29 GETTABLEKS                       R9 R9 K7 ["Items"]
       31 SETTABLEKS                       R9 R8 K5 ["Children"]
       33 DUPTABLE                         R9 K6 [{"Children"}]
       34 SETTABLEKS                       R4 R9 K5 ["Children"]
       36 CALL                             R5 4 0
       37 GETTABLEKS                       R5 R1 K4 ["table"]
       39 GETTABLEKS                       R5 R5 K8 ["Expansion"]
       41 GETTABLEN                        R6 R4 1
       42 LOADB                            R7 1
       43 SETTABLE                         R7 R5 R6
       44 GETUPVAL                         R6 4
       45 MOVE                             R7 R1
       46 DUPTABLE                         R8 K11 [{"allSheets", "styleSheet", "table"}]
       47 SETTABLEKS                       R3 R8 K9 ["allSheets"]
       49 SETTABLEKS                       R0 R8 K10 ["styleSheet"]
       51 GETUPVAL                         R9 4
       52 GETTABLEKS                       R10 R1 K4 ["table"]
       54 DUPTABLE                         R11 K12 [{"Expansion", "Items"}]
       55 SETTABLEKS                       R5 R11 K8 ["Expansion"]
       57 SETTABLEKS                       R4 R11 K7 ["Items"]
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R8 K4 ["table"]
       62 CALL                             R6 2 -1
       63 RETURN                           R6 -1

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["StyleSheet"]
        2 GETTABLEKS                       R3 R1 K1 ["styleSheet"]
        4 JUMPIFEQ                         R2 R3 ; [+18]
        6 GETUPVAL                         R3 0
        7 JUMPIFNOT                        R3 ; [+8]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["rebuildTableState"]
       11 MOVE                             R4 R2
       12 MOVE                             R5 R1
       13 MOVE                             R6 R0
       14 CALL                             R3 3 -1
       15 RETURN                           R3 -1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K2 ["rebuildTableState"]
       19 MOVE                             R4 R2
       20 MOVE                             R5 R1
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1
       23 RETURN                           R1 1

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
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ReplicatedStorage"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R2 K13 ["Src"]
       39 GETTABLEKS                       R6 R6 K14 ["Flags"]
       41 GETTABLEKS                       R6 R6 K15 ["getFFlagStyleEditorPluginStyleSheets"]
       43 CALL                             R5 1 1
       44 CALL                             R5 0 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R2 K13 ["Src"]
       49 GETTABLEKS                       R7 R7 K14 ["Flags"]
       51 GETTABLEKS                       R7 R7 K16 ["getFFlagStyleEditorFixDerivesOrdering"]
       53 CALL                             R6 1 1
       54 CALL                             R6 0 1
       55 GETIMPORT                        R7 K9 [require]
       57 GETTABLEKS                       R8 R2 K10 ["Packages"]
       59 GETTABLEKS                       R8 R8 K17 ["Framework"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R7 K18 ["ContextServices"]
       64 GETTABLEKS                       R9 R8 K19 ["withContext"]
       66 GETTABLEKS                       R10 R7 K20 ["UI"]
       68 GETTABLEKS                       R11 R10 K21 ["TreeTable"]
       70 GETTABLEKS                       R12 R7 K22 ["Util"]
       72 GETTABLEKS                       R12 R12 K23 ["EditTree"]
       74 GETIMPORT                        R13 K9 [require]
       76 GETTABLEKS                       R14 R2 K13 ["Src"]
       78 GETTABLEKS                       R14 R14 K24 ["Renderers"]
       80 GETTABLEKS                       R14 R14 K25 ["DeriveRenderer"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K9 [require]
       85 GETTABLEKS                       R15 R2 K13 ["Src"]
       87 GETTABLEKS                       R15 R15 K22 ["Util"]
       89 GETTABLEKS                       R15 R15 K26 ["DesignHelpers"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K9 [require]
       94 GETTABLEKS                       R16 R2 K13 ["Src"]
       96 GETTABLEKS                       R16 R16 K27 ["Resources"]
       98 GETTABLEKS                       R16 R16 K28 ["PluginStyles"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K9 [require]
      103 GETTABLEKS                       R17 R2 K13 ["Src"]
      105 GETTABLEKS                       R17 R17 K22 ["Util"]
      107 GETTABLEKS                       R17 R17 K29 ["StyleSchema"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K9 [require]
      112 GETTABLEKS                       R18 R2 K13 ["Src"]
      114 GETTABLEKS                       R18 R18 K22 ["Util"]
      116 GETTABLEKS                       R18 R18 K30 ["getAutocompleteItems"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K9 [require]
      121 GETTABLEKS                       R19 R2 K13 ["Src"]
      123 GETTABLEKS                       R19 R19 K22 ["Util"]
      125 GETTABLEKS                       R19 R19 K31 ["mapDispatchToProps"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K9 [require]
      130 GETTABLEKS                       R20 R2 K13 ["Src"]
      132 GETTABLEKS                       R20 R20 K22 ["Util"]
      134 GETTABLEKS                       R20 R20 K32 ["recordChange"]
      136 CALL                             R19 1 1
      137 MOVE                             R20 R0
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K9 [require]
      141 GETTABLEKS                       R21 R2 K13 ["Src"]
      143 GETTABLEKS                       R21 R21 K22 ["Util"]
      145 GETTABLEKS                       R21 R21 K33 ["TreeTableHelpers"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K9 [require]
      150 GETTABLEKS                       R22 R2 K13 ["Src"]
      152 GETTABLEKS                       R22 R22 K22 ["Util"]
      154 GETTABLEKS                       R22 R22 K34 ["MenuHelpers"]
      156 CALL                             R21 1 1
      157 GETIMPORT                        R22 K9 [require]
      159 GETTABLEKS                       R23 R2 K13 ["Src"]
      161 GETTABLEKS                       R23 R23 K27 ["Resources"]
      163 GETTABLEKS                       R23 R23 K35 ["Telemetry"]
      165 GETTABLEKS                       R23 R23 K36 ["ActionClickedEvent"]
      167 CALL                             R22 1 1
      168 GETIMPORT                        R23 K9 [require]
      170 GETTABLEKS                       R24 R2 K13 ["Src"]
      172 GETTABLEKS                       R24 R24 K37 ["Enums"]
      174 GETTABLEKS                       R24 R24 K38 ["ActionClickedEventType"]
      176 CALL                             R23 1 1
      177 GETIMPORT                        R24 K9 [require]
      179 GETTABLEKS                       R25 R2 K13 ["Src"]
      181 GETTABLEKS                       R25 R25 K39 ["Thunks"]
      183 GETTABLEKS                       R25 R25 K35 ["Telemetry"]
      185 GETTABLEKS                       R25 R25 K40 ["SendTelemetryEvent"]
      187 CALL                             R24 1 1
      188 GETIMPORT                        R25 K9 [require]
      190 GETTABLEKS                       R26 R2 K13 ["Src"]
      192 GETTABLEKS                       R26 R26 K41 ["Types"]
      194 CALL                             R25 1 1
      195 GETIMPORT                        R26 K9 [require]
      197 GETTABLEKS                       R27 R2 K13 ["Src"]
      199 GETTABLEKS                       R27 R27 K42 ["Reducers"]
      201 GETTABLEKS                       R27 R27 K43 ["RootReducer"]
      203 CALL                             R26 1 1
      204 GETIMPORT                        R27 K9 [require]
      206 GETTABLEKS                       R28 R2 K10 ["Packages"]
      208 GETTABLEKS                       R28 R28 K44 ["Dash"]
      210 CALL                             R27 1 1
      211 GETTABLEKS                       R28 R27 K45 ["collectArray"]
      213 GETTABLEKS                       R29 R27 K46 ["filter"]
      215 GETTABLEKS                       R30 R27 K47 ["join"]
      217 GETTABLEKS                       R31 R27 K48 ["mapOne"]
      219 GETTABLEKS                       R32 R27 K49 ["copy"]
      221 GETTABLEKS                       R33 R27 K50 ["reverse"]
      223 GETIMPORT                        R34 K53 [table.insert]
      225 GETTABLEKS                       R35 R12 K54 ["new"]
      227 DUPTABLE                         R36 K57 [{"getChildren", "getId"}]
      228 DUPCLOSURE                       R37 K58 [PROTO_0]
      229 SETTABLEKS                       R37 R36 K55 ["getChildren"]
      231 DUPCLOSURE                       R37 K59 [PROTO_1]
      232 SETTABLEKS                       R37 R36 K56 ["getId"]
      234 CALL                             R35 1 1
      235 LOADK                            R38 K60 ["RowHeight"]
      236 NAMECALL                         R36 R15 K61 ["GetAttribute"]
      238 CALL                             R36 2 1
      239 LOADK                            R39 K62 ["Icon16"]
      240 NAMECALL                         R37 R15 K61 ["GetAttribute"]
      242 CALL                             R37 2 1
      243 NEWTABLE                         R38 0 1
      245 DUPTABLE                         R39 K66 [{"Name", "Key", "Width"}]
      246 LOADK                            R40 K63 ["Name"]
      247 SETTABLEKS                       R40 R39 K63 ["Name"]
      249 LOADK                            R40 K63 ["Name"]
      250 SETTABLEKS                       R40 R39 K64 ["Key"]
      252 GETIMPORT                        R40 K68 [UDim.new]
      254 LOADN                            R41 1
      255 LOADN                            R42 0
      256 CALL                             R40 2 1
      257 SETTABLEKS                       R40 R39 K65 ["Width"]
      259 SETLIST                          R38 R39 1 [1]
      261 GETTABLEKS                       R39 R3 K69 ["PureComponent"]
      263 LOADK                            R41 K70 ["DerivesTable"]
      264 NAMECALL                         R39 R39 K71 ["extend"]
      266 CALL                             R39 2 1
      267 NEWCLOSURE                       R40 P2
      268 CAPTURE                          VAL R32
      269 CAPTURE                          VAL R38
      270 CAPTURE                          VAL R35
      271 CAPTURE                          VAL R24
      272 CAPTURE                          VAL R22
      273 CAPTURE                          VAL R23
      274 CAPTURE                          VAL R19
      275 CAPTURE                          VAL R31
      276 CAPTURE                          VAL R14
      277 CAPTURE                          VAL R28
      278 CAPTURE                          VAL R17
      279 CAPTURE                          VAL R5
      280 CAPTURE                          REF R39
      281 CAPTURE                          VAL R6
      282 SETTABLEKS                       R40 R39 K72 ["init"]
      284 DUPCLOSURE                       R40 K73 [PROTO_18]
      285 CAPTURE                          VAL R5
      286 CAPTURE                          VAL R1
      287 CAPTURE                          VAL R29
      288 SETTABLEKS                       R40 R39 K74 ["getAllSheets"]
      290 DUPCLOSURE                       R40 K75 [PROTO_19]
      291 CAPTURE                          VAL R30
      292 CAPTURE                          VAL R16
      293 SETTABLEKS                       R40 R39 K76 ["getEmptyRow"]
      295 NEWCLOSURE                       R40 P5
      296 CAPTURE                          VAL R28
      297 CAPTURE                          VAL R6
      298 CAPTURE                          VAL R30
      299 CAPTURE                          VAL R16
      300 CAPTURE                          VAL R19
      301 CAPTURE                          VAL R14
      302 CAPTURE                          VAL R21
      303 CAPTURE                          VAL R37
      304 CAPTURE                          VAL R33
      305 CAPTURE                          REF R39
      306 CAPTURE                          VAL R34
      307 CAPTURE                          VAL R35
      308 SETTABLEKS                       R40 R39 K77 ["getItems"]
      310 NEWCLOSURE                       R40 P6
      311 CAPTURE                          VAL R5
      312 CAPTURE                          REF R39
      313 CAPTURE                          VAL R20
      314 CAPTURE                          VAL R35
      315 CAPTURE                          VAL R30
      316 SETTABLEKS                       R40 R39 K78 ["rebuildTableState"]
      318 NEWCLOSURE                       R40 P7
      319 CAPTURE                          VAL R5
      320 CAPTURE                          REF R39
      321 SETTABLEKS                       R40 R39 K79 ["getDerivedStateFromProps"]
      323 DUPCLOSURE                       R40 K80 [PROTO_31]
      324 SETTABLEKS                       R40 R39 K81 ["didMount"]
      326 DUPCLOSURE                       R40 K82 [PROTO_32]
      327 SETTABLEKS                       R40 R39 K83 ["didUpdate"]
      329 DUPCLOSURE                       R40 K84 [PROTO_33]
      330 SETTABLEKS                       R40 R39 K85 ["willUnmount"]
      332 DUPCLOSURE                       R40 K86 [PROTO_34]
      333 CAPTURE                          VAL R30
      334 CAPTURE                          VAL R13
      335 CAPTURE                          VAL R36
      336 CAPTURE                          VAL R3
      337 CAPTURE                          VAL R11
      338 SETTABLEKS                       R40 R39 K87 ["render"]
      340 MOVE                             R40 R9
      341 DUPTABLE                         R41 K89 [{"Localization"}]
      342 GETTABLEKS                       R42 R8 K88 ["Localization"]
      344 SETTABLEKS                       R42 R41 K88 ["Localization"]
      346 CALL                             R40 1 1
      347 MOVE                             R41 R39
      348 CALL                             R40 1 1
      349 MOVE                             R39 R40
      350 GETTABLEKS                       R40 R4 K90 ["connect"]
      352 JUMPIFNOT                        R5 ; [+2]
      353 DUPCLOSURE                       R41 K91 [PROTO_35]
      354 JUMP                             ; [+1]
      355 LOADNIL                          R41
      356 MOVE                             R42 R18
      357 CALL                             R40 2 1
      358 MOVE                             R41 R39
      359 CALL                             R40 1 -1
      360 CLOSEUPVALS                      R39
      361 RETURN                           R40 -1
