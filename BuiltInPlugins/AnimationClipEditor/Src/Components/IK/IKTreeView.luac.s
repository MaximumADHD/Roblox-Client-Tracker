PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R8 R6 K2 ["Part0"]
        9 GETTABLEKS                       R7 R8 K3 ["Name"]
       11 JUMPIFNOTEQ                      R7 R0 ; [+11]
       13 GETTABLEKS                       R10 R6 K4 ["Part1"]
       15 GETTABLEKS                       R9 R10 K3 ["Name"]
       17 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       19 MOVE                             R8 R1
       20 GETIMPORT                        R7 K7 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 [inext] ; [-17]
       25 GETUPVAL                         R2 1
       26 LOADNIL                          R3
       27 LOADNIL                          R4
       28 FORGPREP                         R2
       29 GETTABLEKS                       R9 R6 K8 ["Attachment0"]
       31 GETTABLEKS                       R8 R9 K9 ["Parent"]
       33 GETTABLEKS                       R7 R8 K3 ["Name"]
       35 JUMPIFNOTEQ                      R7 R0 ; [+13]
       37 GETTABLEKS                       R11 R6 K10 ["Attachment1"]
       39 GETTABLEKS                       R10 R11 K9 ["Parent"]
       41 GETTABLEKS                       R9 R10 K3 ["Name"]
       43 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       45 MOVE                             R8 R1
       46 GETIMPORT                        R7 K7 [table.insert]
       48 CALL                             R7 2 0
       49 FORGLOOP                         R2 2 ; [-21]
       51 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+16]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["props"]
        9 GETTABLEKS                       R2 R3 K5 ["SetSelectedTracks"]
       11 NEWTABLE                         R3 0 1
       13 NEWTABLE                         R4 0 1
       15 MOVE                             R5 R1
       16 SETLIST                          R4 R5 1 [1]
       18 SETLIST                          R3 R4 1 [1]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["index"]
        2 GETTABLEKS                       R4 R1 K0 ["index"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 LOADN                            R2 1
        1 NEWTABLE                         R3 0 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["getChildren"]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 1
        8 GETIMPORT                        R5 K2 [ipairs]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R8 R9 K3 ["state"]
       13 GETTABLEKS                       R6 R8 K4 ["treeArray"]
       15 CALL                             R5 1 3
       16 FORGPREP_INEXT                   R5
       17 JUMPIFNOTEQ                      R9 R0 ; [+2]
       19 MOVE                             R2 R8
       20 GETIMPORT                        R10 K2 [ipairs]
       22 MOVE                             R11 R4
       23 CALL                             R10 1 3
       24 FORGPREP_INEXT                   R10
       25 JUMPIFNOTEQ                      R14 R9 ; [+20]
       27 JUMPIFNOT                        R1 ; [+7]
       28 GETUPVAL                         R18 0
       29 GETTABLEKS                       R17 R18 K5 ["props"]
       31 GETTABLEKS                       R16 R17 K6 ["Chain"]
       33 GETTABLE                         R15 R16 R14
       34 JUMPIFNOT                        R15 ; [+11]
       35 DUPTABLE                         R17 K9 [{"index", "element"}]
       36 SETTABLEKS                       R8 R17 K7 ["index"]
       38 SETTABLEKS                       R14 R17 K8 ["element"]
       40 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
       42 MOVE                             R16 R3
       43 GETIMPORT                        R15 K12 [table.insert]
       45 CALL                             R15 2 0
       46 FORGLOOP                         R10 2 [inext] ; [-22]
       48 FORGLOOP                         R5 2 [inext] ; [-32]
       50 GETIMPORT                        R5 K14 [table.sort]
       52 MOVE                             R6 R3
       53 DUPCLOSURE                       R7 K15 [PROTO_2]
       54 CALL                             R5 2 0
       55 MOVE                             R5 R2
       56 LENGTH                           R6 R3
       57 LOADN                            R7 0
       58 JUMPIFNOTLT                      R7 R6 ; [+5]
       60 LENGTH                           R7 R3
       61 GETTABLE                         R6 R3 R7
       62 GETTABLEKS                       R5 R6 K7 ["index"]
       64 SUB                              R7 R5 R2
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R8 R9 K16 ["TRACK_HEIGHT"]
       68 MUL                              R6 R7 R8
       69 RETURN                           R6 1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"expandedItems"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K2 ["Dictionary"]
        4 GETTABLEKS                       R2 R3 K3 ["join"]
        6 GETTABLEKS                       R3 R0 K0 ["expandedItems"]
        8 NEWTABLE                         R4 1 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R8 R0 K0 ["expandedItems"]
       13 GETUPVAL                         R9 1
       14 GETTABLE                         R7 R8 R9
       15 NOT                              R6 R7
       16 SETTABLE                         R6 R4 R5
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K0 ["expandedItems"]
       20 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
        2 MOVE                             R4 R2
        3 MOVE                             R5 R0
        4 GETIMPORT                        R3 K2 [table.insert]
        6 CALL                             R3 2 0
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K3 ["state"]
       10 GETTABLEKS                       R4 R5 K4 ["expandedItems"]
       12 GETTABLE                         R3 R4 R0
       13 JUMPIFNOT                        R3 ; [+19]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K5 ["getChildren"]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K7 [ipairs]
       21 MOVE                             R5 R3
       22 CALL                             R4 1 3
       23 FORGPREP_INEXT                   R4
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R9 R10 K8 ["contributeItem"]
       27 MOVE                             R10 R8
       28 ADDK                             R11 R1 K9 [1]
       29 MOVE                             R12 R2
       30 CALL                             R9 3 0
       31 FORGLOOP                         R4 2 [inext] ; [-8]
       33 RETURN                           R2 1

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["state"]
        4 GETTABLEKS                       R1 R2 K1 ["expandedItems"]
        6 GETTABLEKS                       R2 R0 K1 ["expandedItems"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+2]
       10 RETURN                           R0 0
       11 NEWTABLE                         R1 0 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K2 ["contributeItem"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K3 ["findRootPart"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K4 ["props"]
       22 GETTABLEKS                       R5 R6 K5 ["RootInstance"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R3 R4 K6 ["Name"]
       27 LOADN                            R4 0
       28 MOVE                             R5 R1
       29 CALL                             R2 3 0
       30 GETUPVAL                         R2 0
       31 DUPTABLE                         R4 K8 [{"treeArray"}]
       32 SETTABLEKS                       R1 R4 K7 ["treeArray"]
       34 NAMECALL                         R2 R2 K9 ["setState"]
       36 CALL                             R2 2 0
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R3 R4 K4 ["props"]
       40 GETTABLEKS                       R2 R3 K10 ["OnTreeUpdated"]
       42 MOVE                             R3 R1
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R5 R4 K1 ["SelectedTrack"]
        5 GETTABLEKS                       R6 R0 K2 ["item"]
        7 DUPTABLE                         R7 K19 [{"Chain", "Depth", "GetVerticalLineHeight", "IsExpanded", "IsLeafNode", "Item", "Key", "OnInputBegan", "OnToggleExpanded", "PinnedParts", "Position", "RootInstance", "IKMode", "IsSelected", "Size", "TogglePinnedPart"}]
        8 GETTABLEKS                       R8 R4 K3 ["Chain"]
       10 SETTABLEKS                       R8 R7 K3 ["Chain"]
       12 GETTABLEKS                       R8 R0 K20 ["depth"]
       14 SETTABLEKS                       R8 R7 K4 ["Depth"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K21 ["getVerticalLineHeight"]
       19 SETTABLEKS                       R8 R7 K5 ["GetVerticalLineHeight"]
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R10 R11 K22 ["state"]
       24 GETTABLEKS                       R9 R10 K23 ["expandedItems"]
       26 GETTABLE                         R8 R9 R6
       27 SETTABLEKS                       R8 R7 K6 ["IsExpanded"]
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R10 R11 K24 ["getChildren"]
       32 MOVE                             R11 R6
       33 CALL                             R10 1 1
       34 LENGTH                           R9 R10
       35 JUMPIFEQKN                       R9 K25 [0] ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 SETTABLEKS                       R8 R7 K7 ["IsLeafNode"]
       41 SETTABLEKS                       R6 R7 K8 ["Item"]
       43 SETTABLEKS                       R1 R7 K9 ["Key"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K26 ["onInputBegan"]
       48 SETTABLEKS                       R8 R7 K10 ["OnInputBegan"]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K27 ["toggleExpanded"]
       53 SETTABLEKS                       R8 R7 K11 ["OnToggleExpanded"]
       55 GETTABLEKS                       R8 R4 K12 ["PinnedParts"]
       57 SETTABLEKS                       R8 R7 K12 ["PinnedParts"]
       59 SETTABLEKS                       R2 R7 K13 ["Position"]
       61 GETTABLEKS                       R8 R4 K14 ["RootInstance"]
       63 SETTABLEKS                       R8 R7 K14 ["RootInstance"]
       65 GETTABLEKS                       R8 R4 K15 ["IKMode"]
       67 SETTABLEKS                       R8 R7 K15 ["IKMode"]
       69 MOVE                             R8 R5
       70 JUMPIFNOT                        R8 ; [+5]
       71 GETTABLEN                        R9 R5 1
       72 JUMPIFEQ                         R9 R6 ; [+2]
       74 LOADB                            R8 0 +1
       75 LOADB                            R8 1
       76 SETTABLEKS                       R8 R7 K16 ["IsSelected"]
       78 SETTABLEKS                       R3 R7 K17 ["Size"]
       80 GETTABLEKS                       R8 R4 K18 ["TogglePinnedPart"]
       82 SETTABLEKS                       R8 R7 K18 ["TogglePinnedPart"]
       84 RETURN                           R7 1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["getMotors"]
        5 GETTABLEKS                       R4 R0 K1 ["props"]
        7 GETTABLEKS                       R3 R4 K2 ["RootInstance"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["getAnimationConstraints"]
       13 GETTABLEKS                       R5 R0 K1 ["props"]
       15 GETTABLEKS                       R4 R5 K2 ["RootInstance"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K5 [ipairs]
       20 MOVE                             R5 R2
       21 CALL                             R4 1 3
       22 FORGPREP_INEXT                   R4
       23 GETTABLEKS                       R10 R8 K6 ["Part1"]
       25 GETTABLEKS                       R9 R10 K7 ["Name"]
       27 LOADB                            R10 1
       28 SETTABLE                         R10 R1 R9
       29 FORGLOOP                         R4 2 [inext] ; [-7]
       31 MOVE                             R4 R3
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 GETTABLEKS                       R11 R8 K8 ["Attachment1"]
       37 GETTABLEKS                       R10 R11 K9 ["Parent"]
       39 GETTABLEKS                       R9 R10 K7 ["Name"]
       41 LOADB                            R10 1
       42 SETTABLE                         R10 R1 R9
       43 FORGLOOP                         R4 2 ; [-9]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R4 R5 K10 ["findRootPart"]
       48 GETTABLEKS                       R6 R0 K1 ["props"]
       50 GETTABLEKS                       R5 R6 K2 ["RootInstance"]
       52 CALL                             R4 1 1
       53 GETTABLEKS                       R5 R4 K7 ["Name"]
       55 LOADB                            R6 1
       56 SETTABLE                         R6 R1 R5
       57 DUPTABLE                         R5 K13 [{"expandedItems", "treeArray"}]
       58 SETTABLEKS                       R1 R5 K11 ["expandedItems"]
       60 NEWTABLE                         R6 0 0
       62 SETTABLEKS                       R6 R5 K12 ["treeArray"]
       64 SETTABLEKS                       R5 R0 K14 ["state"]
       66 NEWCLOSURE                       R5 P0
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R5 R0 K15 ["getChildren"]
       71 NEWCLOSURE                       R5 P1
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R5 R0 K16 ["onInputBegan"]
       75 NEWCLOSURE                       R5 P2
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U1
       78 SETTABLEKS                       R5 R0 K17 ["getVerticalLineHeight"]
       80 NEWCLOSURE                       R5 P3
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U2
       83 SETTABLEKS                       R5 R0 K18 ["toggleExpanded"]
       85 NEWCLOSURE                       R5 P4
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R5 R0 K19 ["contributeItem"]
       89 NEWCLOSURE                       R5 P5
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U0
       92 SETTABLEKS                       R5 R0 K20 ["calculateRows"]
       94 NEWCLOSURE                       R5 P6
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R5 R0 K21 ["getRowProps"]
       98 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["calculateRows"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["calculateRows"]
        2 MOVE                             R4 R2
        3 CALL                             R3 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Position"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["RootInstance"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["findRootPart"]
       11 MOVE                             R6 R4
       12 CALL                             R5 1 1
       13 NEWTABLE                         R6 0 0
       15 GETTABLEKS                       R9 R5 K5 ["Name"]
       17 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       19 MOVE                             R8 R6
       20 GETIMPORT                        R7 K8 [table.insert]
       22 CALL                             R7 2 0
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R7 R8 K9 ["createElement"]
       26 LOADK                            R8 K10 ["Frame"]
       27 DUPTABLE                         R9 K12 [{"Position", "Size", "BackgroundTransparency"}]
       28 SETTABLEKS                       R2 R9 K1 ["Position"]
       30 SETTABLEKS                       R3 R9 K2 ["Size"]
       32 LOADN                            R10 1
       33 SETTABLEKS                       R10 R9 K11 ["BackgroundTransparency"]
       35 DUPTABLE                         R10 K14 [{"TreeView"}]
       36 GETUPVAL                         R12 1
       37 GETTABLEKS                       R11 R12 K9 ["createElement"]
       39 GETUPVAL                         R12 2
       40 DUPTABLE                         R13 K22 [{"RootItems", "GetChildren", "Expansion", "RowComponent", "RowHeight", "GetRowProps", "Style"}]
       41 SETTABLEKS                       R6 R13 K15 ["RootItems"]
       43 GETTABLEKS                       R14 R0 K23 ["getChildren"]
       45 SETTABLEKS                       R14 R13 K16 ["GetChildren"]
       47 GETTABLEKS                       R15 R0 K24 ["state"]
       49 GETTABLEKS                       R14 R15 K25 ["expandedItems"]
       51 SETTABLEKS                       R14 R13 K17 ["Expansion"]
       53 GETUPVAL                         R14 3
       54 SETTABLEKS                       R14 R13 K18 ["RowComponent"]
       56 GETUPVAL                         R15 4
       57 GETTABLEKS                       R14 R15 K26 ["TRACK_HEIGHT"]
       59 SETTABLEKS                       R14 R13 K19 ["RowHeight"]
       61 GETTABLEKS                       R14 R0 K27 ["getRowProps"]
       63 SETTABLEKS                       R14 R13 K20 ["GetRowProps"]
       65 LOADK                            R14 K28 ["BorderBox"]
       66 SETTABLEKS                       R14 R13 K21 ["Style"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K13 ["TreeView"]
       71 CALL                             R7 3 -1
       72 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["RigInfo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R6 K12 ["Roact"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R7 K13 ["Framework"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R5 K14 ["UI"]
       48 GETTABLEKS                       R7 R6 K15 ["TreeView"]
       50 GETTABLEKS                       R8 R5 K16 ["ContextServices"]
       52 GETTABLEKS                       R9 R8 K17 ["withContext"]
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R14 R0 K8 ["Src"]
       58 GETTABLEKS                       R13 R14 K18 ["Components"]
       60 GETTABLEKS                       R12 R13 K19 ["IK"]
       62 GETTABLEKS                       R11 R12 K20 ["IKTreeRow"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R4 K21 ["PureComponent"]
       67 LOADK                            R13 K22 ["IKTreeView"]
       68 NAMECALL                         R11 R11 K23 ["extend"]
       70 CALL                             R11 2 1
       71 DUPCLOSURE                       R12 K24 [PROTO_9]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R12 R11 K25 ["init"]
       77 DUPCLOSURE                       R12 K26 [PROTO_10]
       78 SETTABLEKS                       R12 R11 K27 ["didMount"]
       80 DUPCLOSURE                       R12 K28 [PROTO_11]
       81 SETTABLEKS                       R12 R11 K29 ["didUpdate"]
       83 DUPCLOSURE                       R12 K30 [PROTO_12]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R2
       89 SETTABLEKS                       R12 R11 K31 ["render"]
       91 MOVE                             R12 R9
       92 DUPTABLE                         R13 K33 [{"Stylizer"}]
       93 GETTABLEKS                       R14 R8 K32 ["Stylizer"]
       95 SETTABLEKS                       R14 R13 K32 ["Stylizer"]
       97 CALL                             R12 1 1
       98 MOVE                             R13 R11
       99 CALL                             R12 1 1
      100 MOVE                             R11 R12
      101 RETURN                           R11 1
