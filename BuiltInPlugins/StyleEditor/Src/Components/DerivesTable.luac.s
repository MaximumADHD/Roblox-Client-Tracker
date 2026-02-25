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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["allSheets"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R2 R3 K1 ["insertDerive"]
       11 GETUPVAL                         R3 4
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 GETIMPORT                        R2 K5 [Enum.FinishRecordingOperation.Commit]
       16 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["state"]
        6 GETTABLEKS                       R5 R3 K2 ["StyleSheet"]
        8 GETTABLEKS                       R6 R3 K3 ["dispatch"]
       10 GETUPVAL                         R7 1
       11 GETUPVAL                         R8 2
       12 DUPTABLE                         R9 K6 [{"eventType", "path"}]
       13 GETUPVAL                         R12 3
       14 GETTABLEKS                       R11 R12 K7 ["ButtonPressed"]
       16 GETTABLEKS                       R10 R11 K8 ["rawValue"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isValidDerive"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+3]
        7 GETTABLEKS                       R2 R1 K1 ["Name"]
        9 RETURN                           R2 1
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["StyleSheet"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["state"]
        8 GETTABLEKS                       R2 R3 K3 ["allSheets"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["rebuildTableState"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["state"]
        8 GETTABLEKS                       R2 R3 K2 ["styleSheet"]
       10 MOVE                             R3 R0
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K3 ["props"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R1 R2 K0 ["rebuildTableState"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K1 ["state"]
       22 GETTABLEKS                       R2 R3 K2 ["styleSheet"]
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
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K3 ["connections"]
       16 GETTABLEKS                       R2 R3 K4 ["instanceMap"]
       18 GETTABLE                         R1 R2 R0
       19 NAMECALL                         R1 R1 K5 ["Disconnect"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K3 ["connections"]
       25 GETTABLEKS                       R1 R2 K4 ["instanceMap"]
       27 LOADNIL                          R2
       28 SETTABLE                         R2 R1 R0
       29 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R3 K0 ["StyleDerive"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+22]
        5 GETUPVAL                         R1 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R1 R1 K2 ["setState"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K3 ["connections"]
       16 GETTABLEKS                       R1 R2 K4 ["instanceMap"]
       18 LOADK                            R4 K5 ["StyleSheet"]
       19 NAMECALL                         R2 R0 K6 ["GetPropertyChangedSignal"]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R4 3
       23 NAMECALL                         R2 R2 K7 ["Connect"]
       25 CALL                             R2 2 1
       26 SETTABLE                         R2 R1 R0
       27 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K0 ["connections"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K0 ["connections"]
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
       27 JUMPIFNOT                        R7 ; [+14]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K0 ["connections"]
       31 GETTABLEKS                       R7 R8 K1 ["instanceMap"]
       33 LOADK                            R10 K5 ["StyleSheet"]
       34 NAMECALL                         R8 R6 K6 ["GetPropertyChangedSignal"]
       36 CALL                             R8 2 1
       37 MOVE                             R10 R1
       38 NAMECALL                         R8 R8 K7 ["Connect"]
       40 CALL                             R8 2 1
       41 SETTABLE                         R8 R7 R6
       42 FORGLOOP                         R2 2 ; [-20]
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R2 R3 K0 ["connections"]
       47 GETTABLEKS                       R3 R0 K8 ["DescendantRemoving"]
       49 NEWCLOSURE                       R5 P1
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          UPVAL U2
       53 NAMECALL                         R3 R3 K7 ["Connect"]
       55 CALL                             R3 2 1
       56 SETTABLEKS                       R3 R2 K9 ["descendantRemovingConnection"]
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R2 R3 K0 ["connections"]
       61 GETTABLEKS                       R3 R0 K10 ["DescendantAdded"]
       63 NEWCLOSURE                       R5 P2
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R1
       68 NAMECALL                         R3 R3 K7 ["Connect"]
       70 CALL                             R3 2 1
       71 SETTABLEKS                       R3 R2 K11 ["descendantAddedConnection"]
       73 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["connections"]
        3 JUMPIFNOT                        R0 ; [+41]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["connections"]
        7 GETTABLEKS                       R0 R3 K1 ["instanceMap"]
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 NAMECALL                         R5 R4 K2 ["Disconnect"]
       14 CALL                             R5 1 0
       15 FORGLOOP                         R0 2 ; [-4]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K0 ["connections"]
       20 GETTABLEKS                       R0 R1 K3 ["descendantRemovingConnection"]
       22 JUMPIFNOT                        R0 ; [+8]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K0 ["connections"]
       26 GETTABLEKS                       R0 R1 K3 ["descendantRemovingConnection"]
       28 NAMECALL                         R0 R0 K2 ["Disconnect"]
       30 CALL                             R0 1 0
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R1 R2 K0 ["connections"]
       34 GETTABLEKS                       R0 R1 K4 ["descendantAddedConnection"]
       36 JUMPIFNOT                        R0 ; [+8]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R1 R2 K0 ["connections"]
       40 GETTABLEKS                       R0 R1 K4 ["descendantAddedConnection"]
       42 NAMECALL                         R0 R0 K2 ["Disconnect"]
       44 CALL                             R0 1 0
       45 GETUPVAL                         R0 0
       46 LOADNIL                          R1
       47 SETTABLEKS                       R1 R0 K0 ["connections"]
       49 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 LOADK                            R3 K0 ["StyleSheet"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R2 0
        6 JUMPIFNOTEQ                      R0 R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_16:
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

PROTO_17:
        0 DUPTABLE                         R0 K2 [{"Name", "Value"}]
        1 DUPTABLE                         R1 K4 [{"Schema", "Value"}]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K5 ["TextSchema"]
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["removeDerive"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETIMPORT                        R0 K4 [Enum.FinishRecordingOperation.Commit]
        8 RETURN                           R0 1

PROTO_19:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 DUPTABLE                         R2 K3 [{"Name", "DisplayName", "DoChange"}]
        5 LOADK                            R3 K4 ["StyleEditor.RemoveDerive"]
        6 SETTABLEKS                       R3 R2 K0 ["Name"]
        8 LOADK                            R3 K5 ["Style Editor - Remove Derive from {derivedSheet.Name}"]
        9 SETTABLEKS                       R3 R2 K1 ["DisplayName"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R3 R2 K2 ["DoChange"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R2 K2 [{"Name", "Instance"}]
        1 DUPTABLE                         R3 K7 [{"OnClick", "Schema", "Value", "LeftIcon"}]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 SETTABLEKS                       R4 R3 K3 ["OnClick"]
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R4 R5 K8 ["DeriveSchema"]
       11 SETTABLEKS                       R4 R3 K4 ["Schema"]
       13 SETTABLEKS                       R1 R3 K5 ["Value"]
       15 DUPTABLE                         R4 K11 [{"Image", "Size"}]
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K12 ["getClassIcon"]
       19 LOADK                            R6 K13 ["StyleSheet"]
       20 CALL                             R5 1 1
       21 SETTABLEKS                       R5 R4 K9 ["Image"]
       23 GETUPVAL                         R5 5
       24 SETTABLEKS                       R5 R4 K10 ["Size"]
       26 SETTABLEKS                       R4 R3 K6 ["LeftIcon"]
       28 SETTABLEKS                       R3 R2 K0 ["Name"]
       30 SETTABLEKS                       R1 R2 K1 ["Instance"]
       32 RETURN                           R2 1

PROTO_21:
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
       15 DUPTABLE                         R2 K6 [{"Name", "Children"}]
       16 DUPTABLE                         R3 K11 [{"Schema", "FullSpan", "Value", "LeftIcon"}]
       17 GETUPVAL                         R4 0
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K12 ["SelectorSchema"]
       21 DUPTABLE                         R6 K14 [{"Editing"}]
       22 LOADB                            R7 0
       23 SETTABLEKS                       R7 R6 K13 ["Editing"]
       25 CALL                             R4 2 1
       26 SETTABLEKS                       R4 R3 K7 ["Schema"]
       28 LOADB                            R4 1
       29 SETTABLEKS                       R4 R3 K8 ["FullSpan"]
       31 LOADK                            R4 K15 ["Derives"]
       32 SETTABLEKS                       R4 R3 K9 ["Value"]
       34 DUPTABLE                         R4 K18 [{"Image", "Size"}]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R5 R6 K19 ["getClassIcon"]
       38 LOADK                            R6 K20 ["StyleDerive"]
       39 CALL                             R5 1 1
       40 SETTABLEKS                       R5 R4 K16 ["Image"]
       42 GETUPVAL                         R5 3
       43 SETTABLEKS                       R5 R4 K17 ["Size"]
       45 SETTABLEKS                       R4 R3 K10 ["LeftIcon"]
       47 SETTABLEKS                       R3 R2 K4 ["Name"]
       49 GETUPVAL                         R3 4
       50 MOVE                             R4 R1
       51 NEWCLOSURE                       R5 P0
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          UPVAL U3
       58 CALL                             R3 2 1
       59 SETTABLEKS                       R3 R2 K5 ["Children"]
       61 GETTABLEKS                       R4 R2 K5 ["Children"]
       63 GETUPVAL                         R6 7
       64 GETTABLEKS                       R5 R6 K21 ["getEmptyRow"]
       66 CALL                             R5 0 -1
       67 FASTCALL                         TABLE_INSERT ; [+1]
       68 GETUPVAL                         R3 8
       69 CALL                             R3 -1 0
       70 GETUPVAL                         R3 9
       71 NEWTABLE                         R5 0 1
       73 MOVE                             R6 R2
       74 SETLIST                          R5 R6 1 [1]
       76 NAMECALL                         R3 R3 K22 ["updatePaths"]
       78 CALL                             R3 2 -1
       79 RETURN                           R3 -1

PROTO_22:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+8]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["getAllSheets"]
        5 MOVE                             R4 R0
        6 GETTABLEKS                       R5 R2 K1 ["Source"]
        8 CALL                             R3 2 1
        9 JUMP                             ; [+5]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K0 ["getAllSheets"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K2 ["getItems"]
       18 MOVE                             R5 R0
       19 CALL                             R4 1 1
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R5 R6 K3 ["updateItems"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R7 R1 K4 ["table"]
       26 DUPTABLE                         R8 K6 [{"Children"}]
       27 GETTABLEKS                       R10 R1 K4 ["table"]
       29 GETTABLEKS                       R9 R10 K7 ["Items"]
       31 SETTABLEKS                       R9 R8 K5 ["Children"]
       33 DUPTABLE                         R9 K6 [{"Children"}]
       34 SETTABLEKS                       R4 R9 K5 ["Children"]
       36 CALL                             R5 4 0
       37 GETTABLEKS                       R6 R1 K4 ["table"]
       39 GETTABLEKS                       R5 R6 K8 ["Expansion"]
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

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["StyleSheet"]
        2 GETTABLEKS                       R3 R1 K1 ["styleSheet"]
        4 JUMPIFEQ                         R2 R3 ; [+18]
        6 GETUPVAL                         R3 0
        7 JUMPIFNOT                        R3 ; [+8]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["rebuildTableState"]
       11 MOVE                             R4 R2
       12 MOVE                             R5 R1
       13 MOVE                             R6 R0
       14 CALL                             R3 3 -1
       15 RETURN                           R3 -1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K2 ["rebuildTableState"]
       19 MOVE                             R4 R2
       20 MOVE                             R5 R1
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1
       23 RETURN                           R1 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["createDeriveConnections"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R3 K2 ["StyleSheet"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["StyleSheet"]
        4 GETTABLEKS                       R4 R1 K1 ["StyleSheet"]
        6 JUMPIFEQ                         R3 R4 ; [+8]
        8 GETTABLEKS                       R4 R0 K2 ["removeDeriveConnections"]
       10 CALL                             R4 0 0
       11 GETTABLEKS                       R4 R0 K3 ["createDeriveConnections"]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["removeDeriveConnections"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R3 0
        5 NEWTABLE                         R4 16 0
        7 GETIMPORT                        R5 K5 [Enum.AutomaticSize.Y]
        9 SETTABLEKS                       R5 R4 K3 ["AutomaticSize"]
       11 GETTABLEKS                       R6 R2 K6 ["table"]
       13 GETTABLEKS                       R5 R6 K7 ["Columns"]
       15 SETTABLEKS                       R5 R4 K7 ["Columns"]
       17 GETTABLEKS                       R6 R2 K6 ["table"]
       19 GETTABLEKS                       R5 R6 K8 ["Expansion"]
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
       48 GETTABLEKS                       R6 R2 K6 ["table"]
       50 GETTABLEKS                       R5 R6 K20 ["Items"]
       52 SETTABLEKS                       R5 R4 K21 ["RootItems"]
       54 GETUPVAL                         R5 2
       55 SETTABLEKS                       R5 R4 K22 ["RowHeight"]
       57 GETTABLEKS                       R6 R2 K6 ["table"]
       59 GETTABLEKS                       R5 R6 K23 ["Selection"]
       61 SETTABLEKS                       R5 R4 K23 ["Selection"]
       63 LOADB                            R5 0
       64 SETTABLEKS                       R5 R4 K24 ["ShowHeader"]
       66 LOADB                            R5 1
       67 SETTABLEKS                       R5 R4 K25 ["UseScale"]
       69 LOADK                            R5 K26 ["compact"]
       70 SETTABLEKS                       R5 R4 K27 ["Variant"]
       72 GETUPVAL                         R6 3
       73 GETTABLEKS                       R5 R6 K28 ["Tag"]
       75 LOADK                            R6 K26 ["compact"]
       76 SETTABLE                         R6 R4 R5
       77 GETTABLEKS                       R5 R0 K29 ["tableCallbacks"]
       79 CALL                             R3 2 1
       80 GETUPVAL                         R5 3
       81 GETTABLEKS                       R4 R5 K30 ["createElement"]
       83 GETUPVAL                         R5 4
       84 MOVE                             R6 R3
       85 CALL                             R4 2 -1
       86 RETURN                           R4 -1

PROTO_28:
        0 DUPTABLE                         R1 K1 [{"Source"}]
        1 GETTABLEKS                       R3 R0 K2 ["Window"]
        3 GETTABLEKS                       R2 R3 K0 ["Source"]
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
       13 GETIMPORT                        R5 K6 [script]
       15 GETTABLEKS                       R4 R5 K7 ["Parent"]
       17 GETTABLEKS                       R3 R4 K7 ["Parent"]
       19 GETTABLEKS                       R2 R3 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R5 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R5 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R6 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R6 K12 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R8 R2 K13 ["Src"]
       39 GETTABLEKS                       R7 R8 K14 ["Flags"]
       41 GETTABLEKS                       R6 R7 K15 ["getFFlagStyleEditorPluginStyleSheets"]
       43 CALL                             R5 1 1
       44 CALL                             R5 0 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R8 R2 K10 ["Packages"]
       49 GETTABLEKS                       R7 R8 K16 ["Framework"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R7 R6 K17 ["ContextServices"]
       54 GETTABLEKS                       R8 R7 K18 ["withContext"]
       56 GETTABLEKS                       R9 R6 K19 ["UI"]
       58 GETTABLEKS                       R10 R9 K20 ["TreeTable"]
       60 GETTABLEKS                       R12 R6 K21 ["Util"]
       62 GETTABLEKS                       R11 R12 K22 ["EditTree"]
       64 GETIMPORT                        R12 K9 [require]
       66 GETTABLEKS                       R15 R2 K13 ["Src"]
       68 GETTABLEKS                       R14 R15 K23 ["Renderers"]
       70 GETTABLEKS                       R13 R14 K24 ["DeriveRenderer"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K9 [require]
       75 GETTABLEKS                       R16 R2 K13 ["Src"]
       77 GETTABLEKS                       R15 R16 K21 ["Util"]
       79 GETTABLEKS                       R14 R15 K25 ["DesignHelpers"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K9 [require]
       84 GETTABLEKS                       R17 R2 K13 ["Src"]
       86 GETTABLEKS                       R16 R17 K26 ["Resources"]
       88 GETTABLEKS                       R15 R16 K27 ["PluginStyles"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K9 [require]
       93 GETTABLEKS                       R18 R2 K13 ["Src"]
       95 GETTABLEKS                       R17 R18 K21 ["Util"]
       97 GETTABLEKS                       R16 R17 K28 ["StyleSchema"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K9 [require]
      102 GETTABLEKS                       R19 R2 K13 ["Src"]
      104 GETTABLEKS                       R18 R19 K21 ["Util"]
      106 GETTABLEKS                       R17 R18 K29 ["getAutocompleteItems"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K9 [require]
      111 GETTABLEKS                       R20 R2 K13 ["Src"]
      113 GETTABLEKS                       R19 R20 K21 ["Util"]
      115 GETTABLEKS                       R18 R19 K30 ["mapDispatchToProps"]
      117 CALL                             R17 1 1
      118 GETIMPORT                        R18 K9 [require]
      120 GETTABLEKS                       R21 R2 K13 ["Src"]
      122 GETTABLEKS                       R20 R21 K21 ["Util"]
      124 GETTABLEKS                       R19 R20 K31 ["recordChange"]
      126 CALL                             R18 1 1
      127 MOVE                             R19 R0
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K9 [require]
      131 GETTABLEKS                       R22 R2 K13 ["Src"]
      133 GETTABLEKS                       R21 R22 K21 ["Util"]
      135 GETTABLEKS                       R20 R21 K32 ["TreeTableHelpers"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K9 [require]
      140 GETTABLEKS                       R23 R2 K13 ["Src"]
      142 GETTABLEKS                       R22 R23 K21 ["Util"]
      144 GETTABLEKS                       R21 R22 K33 ["MenuHelpers"]
      146 CALL                             R20 1 1
      147 GETIMPORT                        R21 K9 [require]
      149 GETTABLEKS                       R25 R2 K13 ["Src"]
      151 GETTABLEKS                       R24 R25 K26 ["Resources"]
      153 GETTABLEKS                       R23 R24 K34 ["Telemetry"]
      155 GETTABLEKS                       R22 R23 K35 ["ActionClickedEvent"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K9 [require]
      160 GETTABLEKS                       R25 R2 K13 ["Src"]
      162 GETTABLEKS                       R24 R25 K36 ["Enums"]
      164 GETTABLEKS                       R23 R24 K37 ["ActionClickedEventType"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K9 [require]
      169 GETTABLEKS                       R27 R2 K13 ["Src"]
      171 GETTABLEKS                       R26 R27 K38 ["Thunks"]
      173 GETTABLEKS                       R25 R26 K34 ["Telemetry"]
      175 GETTABLEKS                       R24 R25 K39 ["SendTelemetryEvent"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K9 [require]
      180 GETTABLEKS                       R26 R2 K13 ["Src"]
      182 GETTABLEKS                       R25 R26 K40 ["Types"]
      184 CALL                             R24 1 1
      185 GETIMPORT                        R25 K9 [require]
      187 GETTABLEKS                       R28 R2 K13 ["Src"]
      189 GETTABLEKS                       R27 R28 K41 ["Reducers"]
      191 GETTABLEKS                       R26 R27 K42 ["RootReducer"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K9 [require]
      196 GETTABLEKS                       R28 R2 K10 ["Packages"]
      198 GETTABLEKS                       R27 R28 K43 ["Dash"]
      200 CALL                             R26 1 1
      201 GETTABLEKS                       R27 R26 K44 ["collectArray"]
      203 GETTABLEKS                       R28 R26 K45 ["filter"]
      205 GETTABLEKS                       R29 R26 K46 ["join"]
      207 GETTABLEKS                       R30 R26 K47 ["mapOne"]
      209 GETTABLEKS                       R31 R26 K48 ["copy"]
      211 GETIMPORT                        R32 K51 [table.insert]
      213 GETTABLEKS                       R33 R11 K52 ["new"]
      215 DUPTABLE                         R34 K55 [{"getChildren", "getId"}]
      216 DUPCLOSURE                       R35 K56 [PROTO_0]
      217 SETTABLEKS                       R35 R34 K53 ["getChildren"]
      219 DUPCLOSURE                       R35 K57 [PROTO_1]
      220 SETTABLEKS                       R35 R34 K54 ["getId"]
      222 CALL                             R33 1 1
      223 LOADK                            R36 K58 ["RowHeight"]
      224 NAMECALL                         R34 R14 K59 ["GetAttribute"]
      226 CALL                             R34 2 1
      227 LOADK                            R37 K60 ["Icon16"]
      228 NAMECALL                         R35 R14 K59 ["GetAttribute"]
      230 CALL                             R35 2 1
      231 NEWTABLE                         R36 0 1
      233 DUPTABLE                         R37 K64 [{"Name", "Key", "Width"}]
      234 LOADK                            R38 K61 ["Name"]
      235 SETTABLEKS                       R38 R37 K61 ["Name"]
      237 LOADK                            R38 K61 ["Name"]
      238 SETTABLEKS                       R38 R37 K62 ["Key"]
      240 GETIMPORT                        R38 K66 [UDim.new]
      242 LOADN                            R39 1
      243 LOADN                            R40 0
      244 CALL                             R38 2 1
      245 SETTABLEKS                       R38 R37 K63 ["Width"]
      247 SETLIST                          R36 R37 1 [1]
      249 GETTABLEKS                       R37 R3 K67 ["PureComponent"]
      251 LOADK                            R39 K68 ["DerivesTable"]
      252 NAMECALL                         R37 R37 K69 ["extend"]
      254 CALL                             R37 2 1
      255 NEWCLOSURE                       R38 P2
      256 CAPTURE                          VAL R31
      257 CAPTURE                          VAL R36
      258 CAPTURE                          VAL R33
      259 CAPTURE                          VAL R23
      260 CAPTURE                          VAL R21
      261 CAPTURE                          VAL R22
      262 CAPTURE                          VAL R18
      263 CAPTURE                          VAL R30
      264 CAPTURE                          VAL R13
      265 CAPTURE                          VAL R27
      266 CAPTURE                          VAL R16
      267 CAPTURE                          VAL R5
      268 CAPTURE                          REF R37
      269 SETTABLEKS                       R38 R37 K70 ["init"]
      271 DUPCLOSURE                       R38 K71 [PROTO_16]
      272 CAPTURE                          VAL R5
      273 CAPTURE                          VAL R1
      274 CAPTURE                          VAL R28
      275 SETTABLEKS                       R38 R37 K72 ["getAllSheets"]
      277 DUPCLOSURE                       R38 K73 [PROTO_17]
      278 CAPTURE                          VAL R29
      279 CAPTURE                          VAL R15
      280 SETTABLEKS                       R38 R37 K74 ["getEmptyRow"]
      282 NEWCLOSURE                       R38 P5
      283 CAPTURE                          VAL R29
      284 CAPTURE                          VAL R15
      285 CAPTURE                          VAL R20
      286 CAPTURE                          VAL R35
      287 CAPTURE                          VAL R27
      288 CAPTURE                          VAL R18
      289 CAPTURE                          VAL R13
      290 CAPTURE                          REF R37
      291 CAPTURE                          VAL R32
      292 CAPTURE                          VAL R33
      293 SETTABLEKS                       R38 R37 K75 ["getItems"]
      295 NEWCLOSURE                       R38 P6
      296 CAPTURE                          VAL R5
      297 CAPTURE                          REF R37
      298 CAPTURE                          VAL R19
      299 CAPTURE                          VAL R33
      300 CAPTURE                          VAL R29
      301 SETTABLEKS                       R38 R37 K76 ["rebuildTableState"]
      303 NEWCLOSURE                       R38 P7
      304 CAPTURE                          VAL R5
      305 CAPTURE                          REF R37
      306 SETTABLEKS                       R38 R37 K77 ["getDerivedStateFromProps"]
      308 DUPCLOSURE                       R38 K78 [PROTO_24]
      309 SETTABLEKS                       R38 R37 K79 ["didMount"]
      311 DUPCLOSURE                       R38 K80 [PROTO_25]
      312 SETTABLEKS                       R38 R37 K81 ["didUpdate"]
      314 DUPCLOSURE                       R38 K82 [PROTO_26]
      315 SETTABLEKS                       R38 R37 K83 ["willUnmount"]
      317 DUPCLOSURE                       R38 K84 [PROTO_27]
      318 CAPTURE                          VAL R29
      319 CAPTURE                          VAL R12
      320 CAPTURE                          VAL R34
      321 CAPTURE                          VAL R3
      322 CAPTURE                          VAL R10
      323 SETTABLEKS                       R38 R37 K85 ["render"]
      325 MOVE                             R38 R8
      326 DUPTABLE                         R39 K87 [{"Localization"}]
      327 GETTABLEKS                       R40 R7 K86 ["Localization"]
      329 SETTABLEKS                       R40 R39 K86 ["Localization"]
      331 CALL                             R38 1 1
      332 MOVE                             R39 R37
      333 CALL                             R38 1 1
      334 MOVE                             R37 R38
      335 GETTABLEKS                       R38 R4 K88 ["connect"]
      337 JUMPIFNOT                        R5 ; [+2]
      338 DUPCLOSURE                       R39 K89 [PROTO_28]
      339 JUMP                             ; [+1]
      340 LOADNIL                          R39
      341 MOVE                             R40 R17
      342 CALL                             R38 2 1
      343 MOVE                             R39 R37
      344 CALL                             R38 1 -1
      345 CLOSEUPVALS                      R37
      346 RETURN                           R38 -1
