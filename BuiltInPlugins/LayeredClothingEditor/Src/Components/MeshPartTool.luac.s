PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["EditingItemContext"]
        4 NAMECALL                         R2 R2 K2 ["getItem"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R1 K3 ["AccessoryTypeInfo"]
        9 GETTABLEKS                       R6 R3 K4 ["Name"]
       11 NAMECALL                         R4 R2 K5 ["FindFirstChild"]
       13 CALL                             R4 2 -1
       14 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["EditingItemContext"]
        5 NAMECALL                         R1 R1 K2 ["getItem"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 NAMECALL                         R2 R2 K3 ["Get"]
       11 CALL                             R2 1 1
       12 MOVE                             R3 R2
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 JUMPIFNOTEQ                      R7 R1 ; [+3]
       18 LOADB                            R8 1
       19 RETURN                           R8 1
       20 FORGLOOP                         R3 2 ; [-5]
       22 LOADB                            R3 0
       23 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["placeAndScaleItem"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["selectMeshPart"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["editingItemIsSelected"]
        6 CALL                             R1 0 1
        7 JUMPIF                           R1 ; [+31]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["active"]
       11 JUMPIFNOT                        R2 ; [+27]
       12 GETUPVAL                         R2 0
       13 NAMECALL                         R2 R2 K3 ["deactivate"]
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 1
       17 NAMECALL                         R2 R2 K4 ["ResetWaypoints"]
       19 CALL                             R2 1 0
       20 GETTABLEKS                       R2 R0 K5 ["SetControlsPanelBlockerMessage"]
       22 GETTABLEKS                       R3 R0 K6 ["Localization"]
       24 LOADK                            R5 K7 ["Editor"]
       25 LOADK                            R6 K8 ["ResumeEditingRigid"]
       26 NAMECALL                         R3 R3 K9 ["getText"]
       28 CALL                             R3 3 -1
       29 CALL                             R2 -1 0
       30 GETTABLEKS                       R2 R0 K10 ["SetControlsPanelBlockerActivity"]
       32 LOADB                            R3 1
       33 CALL                             R2 1 0
       34 GETTABLEKS                       R2 R0 K11 ["SetWorkspacePreviewSelectionEnabled"]
       36 LOADB                            R3 0
       37 CALL                             R2 1 0
       38 RETURN                           R0 0
       39 JUMPIFNOT                        R1 ; [+20]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R2 R3 K2 ["active"]
       43 JUMPIF                           R2 ; [+16]
       44 GETUPVAL                         R2 0
       45 NAMECALL                         R2 R2 K12 ["activate"]
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 1
       49 NAMECALL                         R2 R2 K4 ["ResetWaypoints"]
       51 CALL                             R2 1 0
       52 GETTABLEKS                       R2 R0 K10 ["SetControlsPanelBlockerActivity"]
       54 LOADB                            R3 0
       55 CALL                             R2 1 0
       56 GETTABLEKS                       R2 R0 K11 ["SetWorkspacePreviewSelectionEnabled"]
       58 LOADB                            R3 1
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["EditingItemContext"]
        5 NAMECALL                         R1 R1 K2 ["getItem"]
        7 CALL                             R1 1 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 NEWTABLE                         R4 0 1
       13 MOVE                             R5 R1
       14 SETLIST                          R4 R5 1 [1]
       16 NAMECALL                         R2 R2 K3 ["Set"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Analytics"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["FirstAction"]
        8 JUMPIF                           R1 ; [+16]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K3 ["ACTIONS"]
       13 GETTABLEKS                       R2 R3 K4 ["AdjustAccessory"]
       15 SETTABLEKS                       R2 R1 K2 ["FirstAction"]
       17 LOADK                            R3 K2 ["FirstAction"]
       18 NAMECALL                         R1 R0 K5 ["getHandler"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K2 ["FirstAction"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K6 ["placeAndScaleItem"]
       28 CALL                             R1 0 0
       29 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["state"]
        6 GETTABLEKS                       R2 R0 K2 ["EditingItemContext"]
        8 NAMECALL                         R2 R2 K3 ["getItem"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R0 K4 ["AccessoryTypeInfo"]
       13 JUMPIFNOT                        R2 ; [+1]
       14 JUMPIF                           R3 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R4 R1 K5 ["matchingAttachment"]
       18 GETTABLEKS                       R7 R3 K6 ["Name"]
       20 NAMECALL                         R5 R2 K7 ["FindFirstChild"]
       22 CALL                             R5 2 1
       23 JUMPIFNOT                        R5 ; [+1]
       24 JUMPIF                           R4 ; [+1]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R6 R4 K8 ["WorldCFrame"]
       28 NAMECALL                         R8 R6 K9 ["inverse"]
       30 CALL                             R8 1 1
       31 GETTABLEKS                       R9 R2 K10 ["CFrame"]
       33 MUL                              R7 R8 R9
       34 NAMECALL                         R7 R7 K9 ["inverse"]
       36 CALL                             R7 1 1
       37 SETTABLEKS                       R7 R5 K10 ["CFrame"]
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R8 R9 K0 ["props"]
       42 GETTABLEKS                       R7 R8 K11 ["SetAttachmentPoint"]
       44 DUPTABLE                         R8 K14 [{"ItemCFrame", "AttachmentCFrame"}]
       45 NAMECALL                         R10 R6 K9 ["inverse"]
       47 CALL                             R10 1 1
       48 GETTABLEKS                       R11 R2 K10 ["CFrame"]
       50 MUL                              R9 R10 R11
       51 SETTABLEKS                       R9 R8 K12 ["ItemCFrame"]
       53 GETTABLEKS                       R9 R5 K10 ["CFrame"]
       55 SETTABLEKS                       R9 R8 K13 ["AttachmentCFrame"]
       57 CALL                             R7 1 0
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R7 R8 K15 ["isLegacyAccessory"]
       61 MOVE                             R8 R2
       62 CALL                             R7 1 1
       63 JUMPIFNOT                        R7 ; [+11]
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R8 R9 K0 ["props"]
       67 GETTABLEKS                       R7 R8 K16 ["SetMeshScale"]
       69 GETUPVAL                         R8 2
       70 MOVE                             R10 R2
       71 NAMECALL                         R8 R8 K17 ["getSpecialMeshScale"]
       73 CALL                             R8 2 -1
       74 CALL                             R7 -1 0
       75 GETUPVAL                         R9 0
       76 GETTABLEKS                       R8 R9 K0 ["props"]
       78 GETTABLEKS                       R7 R8 K18 ["SetItemSize"]
       80 GETTABLEKS                       R8 R2 K19 ["Size"]
       82 CALL                             R7 1 0
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R8 R9 K0 ["props"]
       86 GETTABLEKS                       R7 R8 K20 ["VerifyBounds"]
       88 MOVE                             R8 R2
       89 GETUPVAL                         R9 0
       90 NAMECALL                         R9 R9 K21 ["getHandleAttachment"]
       92 CALL                             R9 1 -1
       93 CALL                             R7 -1 0
       94 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["EditingItemContext"]
        5 NAMECALL                         R0 R0 K2 ["getItem"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["props"]
       11 GETTABLEKS                       R1 R2 K3 ["AccessoryTypeInfo"]
       13 GETUPVAL                         R2 1
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+55]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K4 ["CFrameChanged"]
       19 JUMPIFNOT                        R2 ; [+10]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K4 ["CFrameChanged"]
       23 NAMECALL                         R2 R2 K5 ["Disconnect"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 0
       27 LOADNIL                          R3
       28 SETTABLEKS                       R3 R2 K4 ["CFrameChanged"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K6 ["SizeChanged"]
       33 JUMPIFNOT                        R2 ; [+10]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R2 R3 K6 ["SizeChanged"]
       37 NAMECALL                         R2 R2 K5 ["Disconnect"]
       39 CALL                             R2 1 0
       40 GETUPVAL                         R2 0
       41 LOADNIL                          R3
       42 SETTABLEKS                       R3 R2 K6 ["SizeChanged"]
       44 JUMPIF                           R0 ; [+1]
       45 RETURN                           R0 0
       46 GETTABLEKS                       R4 R1 K7 ["Name"]
       48 NAMECALL                         R2 R0 K8 ["FindFirstChild"]
       50 CALL                             R2 2 1
       51 JUMPIF                           R2 ; [+1]
       52 RETURN                           R0 0
       53 GETUPVAL                         R2 2
       54 GETTABLEKS                       R4 R0 K9 ["Parent"]
       56 GETTABLEKS                       R5 R1 K7 ["Name"]
       58 NAMECALL                         R2 R2 K10 ["findAvatarAttachmentByName"]
       60 CALL                             R2 3 1
       61 JUMPIF                           R2 ; [+1]
       62 RETURN                           R0 0
       63 GETUPVAL                         R3 0
       64 DUPTABLE                         R5 K12 [{"matchingAttachment"}]
       65 SETTABLEKS                       R2 R5 K11 ["matchingAttachment"]
       67 NAMECALL                         R3 R3 K13 ["setState"]
       69 CALL                             R3 2 0
       70 JUMP                             ; [+60]
       71 JUMPIF                           R0 ; [+29]
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R2 R3 K4 ["CFrameChanged"]
       75 JUMPIFNOT                        R2 ; [+10]
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R2 R3 K4 ["CFrameChanged"]
       79 NAMECALL                         R2 R2 K5 ["Disconnect"]
       81 CALL                             R2 1 0
       82 GETUPVAL                         R2 0
       83 LOADNIL                          R3
       84 SETTABLEKS                       R3 R2 K4 ["CFrameChanged"]
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R2 R3 K6 ["SizeChanged"]
       89 JUMPIFNOT                        R2 ; [+10]
       90 GETUPVAL                         R3 0
       91 GETTABLEKS                       R2 R3 K6 ["SizeChanged"]
       93 NAMECALL                         R2 R2 K5 ["Disconnect"]
       95 CALL                             R2 1 0
       96 GETUPVAL                         R2 0
       97 LOADNIL                          R3
       98 SETTABLEKS                       R3 R2 K6 ["SizeChanged"]
      100 RETURN                           R0 0
      101 GETTABLEKS                       R4 R1 K7 ["Name"]
      103 NAMECALL                         R2 R0 K8 ["FindFirstChild"]
      105 CALL                             R2 2 1
      106 LOADK                            R5 K14 ["Weld"]
      107 NAMECALL                         R3 R0 K15 ["FindFirstChildWhichIsA"]
      109 CALL                             R3 2 1
      110 JUMPIFNOT                        R2 ; [+1]
      111 JUMPIF                           R3 ; [+1]
      112 RETURN                           R0 0
      113 GETTABLEKS                       R4 R3 K16 ["Part1"]
      115 JUMPIF                           R4 ; [+1]
      116 RETURN                           R0 0
      117 GETTABLEKS                       R7 R2 K7 ["Name"]
      119 NAMECALL                         R5 R4 K8 ["FindFirstChild"]
      121 CALL                             R5 2 1
      122 JUMPIF                           R5 ; [+1]
      123 RETURN                           R0 0
      124 GETUPVAL                         R6 0
      125 DUPTABLE                         R8 K12 [{"matchingAttachment"}]
      126 SETTABLEKS                       R5 R8 K11 ["matchingAttachment"]
      128 NAMECALL                         R6 R6 K13 ["setState"]
      130 CALL                             R6 2 0
      131 GETUPVAL                         R2 0
      132 LOADK                            R5 K17 ["CFrame"]
      133 NAMECALL                         R3 R0 K18 ["GetPropertyChangedSignal"]
      135 CALL                             R3 2 1
      136 GETUPVAL                         R6 0
      137 GETTABLEKS                       R5 R6 K19 ["adjustItem"]
      139 NAMECALL                         R3 R3 K20 ["Connect"]
      141 CALL                             R3 2 1
      142 SETTABLEKS                       R3 R2 K4 ["CFrameChanged"]
      144 GETUPVAL                         R2 0
      145 LOADK                            R5 K21 ["Size"]
      146 NAMECALL                         R3 R0 K18 ["GetPropertyChangedSignal"]
      148 CALL                             R3 2 1
      149 GETUPVAL                         R6 0
      150 GETTABLEKS                       R5 R6 K19 ["adjustItem"]
      152 NAMECALL                         R3 R3 K20 ["Connect"]
      154 CALL                             R3 2 1
      155 SETTABLEKS                       R3 R2 K6 ["SizeChanged"]
      157 GETUPVAL                         R2 3
      158 NEWTABLE                         R4 0 1
      160 MOVE                             R5 R0
      161 SETLIST                          R4 R5 1 [1]
      163 NAMECALL                         R2 R2 K22 ["Set"]
      165 CALL                             R2 2 0
      166 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"matchingAttachment"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["matchingAttachment"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+14]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R1 R0 K3 ["editingItemIsSelected"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K4 ["onUndoRedo"]
       18 NEWCLOSURE                       R1 P2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 SETTABLEKS                       R1 R0 K5 ["onSelectionChanged"]
       23 NEWCLOSURE                       R1 P3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U1
       26 SETTABLEKS                       R1 R0 K6 ["selectMeshPart"]
       28 NEWCLOSURE                       R1 P4
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 SETTABLEKS                       R1 R0 K7 ["adjustItem"]
       34 NEWCLOSURE                       R1 P5
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U6
       38 SETTABLEKS                       R1 R0 K8 ["placeAndScaleItem"]
       40 NEWCLOSURE                       R1 P6
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U1
       45 SETTABLEKS                       R1 R0 K9 ["onEditingItemChanged"]
       47 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["active"]
        3 GETTABLEKS                       R1 R0 K1 ["onEditingItemChanged"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["OnRedo"]
        9 GETTABLEKS                       R3 R0 K3 ["onUndoRedo"]
       11 NAMECALL                         R1 R1 K4 ["Connect"]
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K2 ["OnRedo"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K5 ["OnUndo"]
       19 GETTABLEKS                       R3 R0 K3 ["onUndoRedo"]
       21 NAMECALL                         R1 R1 K4 ["Connect"]
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K5 ["OnUndo"]
       26 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onEditingItemChanged"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["EditingItemContext"]
        4 NAMECALL                         R2 R2 K2 ["getEditingItemChangedSignal"]
        6 CALL                             R2 1 1
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R2 R2 K3 ["Connect"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R0 K4 ["EditingItemChanged"]
       14 GETUPVAL                         R2 0
       15 CALL                             R2 0 1
       16 JUMPIFNOT                        R2 ; [+4]
       17 NAMECALL                         R2 R0 K5 ["activate"]
       19 CALL                             R2 1 0
       20 JUMP                             ; [+23]
       21 GETTABLEKS                       R2 R0 K6 ["onEditingItemChanged"]
       23 CALL                             R2 0 0
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K7 ["OnRedo"]
       27 GETTABLEKS                       R4 R0 K8 ["placeAndScaleItem"]
       29 NAMECALL                         R2 R2 K3 ["Connect"]
       31 CALL                             R2 2 1
       32 SETTABLEKS                       R2 R0 K7 ["OnRedo"]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R2 R3 K9 ["OnUndo"]
       37 GETTABLEKS                       R4 R0 K8 ["placeAndScaleItem"]
       39 NAMECALL                         R2 R2 K3 ["Connect"]
       41 CALL                             R2 2 1
       42 SETTABLEKS                       R2 R0 K9 ["OnUndo"]
       44 GETTABLEKS                       R2 R1 K10 ["Signals"]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R5 R6 K11 ["SIGNAL_KEYS"]
       49 GETTABLEKS                       R4 R5 K12 ["PluginWindowFocused"]
       51 NAMECALL                         R2 R2 K13 ["get"]
       53 CALL                             R2 2 1
       54 GETTABLEKS                       R4 R0 K14 ["selectMeshPart"]
       56 NAMECALL                         R2 R2 K3 ["Connect"]
       58 CALL                             R2 2 1
       59 SETTABLEKS                       R2 R0 K15 ["OnPluginWindowFocusedHandle"]
       61 GETUPVAL                         R2 0
       62 CALL                             R2 0 1
       63 JUMPIFNOT                        R2 ; [+10]
       64 GETUPVAL                         R3 3
       65 GETTABLEKS                       R2 R3 K16 ["SelectionChanged"]
       67 GETTABLEKS                       R4 R0 K17 ["onSelectionChanged"]
       69 NAMECALL                         R2 R2 K3 ["Connect"]
       71 CALL                             R2 2 1
       72 SETTABLEKS                       R2 R0 K18 ["SelectionChangedHandle"]
       74 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R4 K1 ["matchingAttachment"]
        4 GETTABLEKS                       R4 R2 K1 ["matchingAttachment"]
        6 JUMPIFEQ                         R3 R4 ; [+4]
        8 GETTABLEKS                       R3 R0 K2 ["placeAndScaleItem"]
       10 CALL                             R3 0 0
       11 GETUPVAL                         R3 0
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+16]
       14 GETTABLEKS                       R4 R0 K3 ["props"]
       16 GETTABLEKS                       R3 R4 K4 ["IsControlsPanelBlockerActive"]
       18 GETTABLEKS                       R4 R1 K4 ["IsControlsPanelBlockerActive"]
       20 JUMPIFEQ                         R3 R4 ; [+9]
       22 GETTABLEKS                       R4 R0 K3 ["props"]
       24 GETTABLEKS                       R3 R4 K4 ["IsControlsPanelBlockerActive"]
       26 JUMPIF                           R3 ; [+3]
       27 GETTABLEKS                       R3 R0 K5 ["selectMeshPart"]
       29 CALL                             R3 0 0
       30 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R6 0 0
        2 GETIMPORT                        R7 K1 [ipairs]
        4 GETUPVAL                         R10 0
        5 GETTABLEKS                       R8 R10 K2 ["CUBE_EDGES"]
        7 CALL                             R7 1 3
        8 FORGPREP_INEXT                   R7
        9 GETTABLEN                        R15 R11 1
       10 MUL                              R14 R15 R2
       11 ADD                              R13 R14 R4
       12 ADD                              R12 R13 R3
       13 GETTABLEN                        R16 R11 2
       14 MUL                              R15 R16 R2
       15 ADD                              R14 R15 R4
       16 ADD                              R13 R14 R3
       17 SUB                              R15 R12 R13
       18 GETTABLEKS                       R14 R15 K3 ["Magnitude"]
       20 GETIMPORT                        R15 K6 [CFrame.new]
       22 LOADK                            R16 K7 [{0, 0, 0}]
       23 SUB                              R18 R13 R12
       24 GETTABLEKS                       R17 R18 K8 ["Unit"]
       26 CALL                             R15 2 1
       27 ADD                              R15 R15 R12
       28 MOVE                             R17 R6
       29 GETUPVAL                         R19 1
       30 GETTABLEKS                       R18 R19 K9 ["createElement"]
       32 LOADK                            R19 K10 ["LineHandleAdornment"]
       33 DUPTABLE                         R20 K19 [{"Length", "CFrame", "Adornee", "Transparency", "Color3", "Thickness", "ZIndex", "Archivable", "AlwaysOnTop"}]
       34 SETTABLEKS                       R14 R20 K11 ["Length"]
       36 SETTABLEKS                       R15 R20 K4 ["CFrame"]
       38 SETTABLEKS                       R5 R20 K12 ["Adornee"]
       40 LOADN                            R21 0
       41 SETTABLEKS                       R21 R20 K13 ["Transparency"]
       43 GETTABLEKS                       R21 R1 K20 ["LineColor"]
       45 SETTABLEKS                       R21 R20 K14 ["Color3"]
       47 GETTABLEKS                       R21 R1 K21 ["LineThickness"]
       49 SETTABLEKS                       R21 R20 K15 ["Thickness"]
       51 LOADN                            R21 1
       52 SETTABLEKS                       R21 R20 K16 ["ZIndex"]
       54 LOADB                            R21 0
       55 SETTABLEKS                       R21 R20 K17 ["Archivable"]
       57 LOADB                            R21 0
       58 SETTABLEKS                       R21 R20 K18 ["AlwaysOnTop"]
       60 CALL                             R18 2 -1
       61 FASTCALL                         TABLE_INSERT ; [+2]
       62 GETIMPORT                        R16 K24 [table.insert]
       64 CALL                             R16 -1 0
       65 FORGLOOP                         R7 2 [inext] ; [-57]
       67 RETURN                           R6 1

PROTO_14:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R6 R5 K1 ["Stylizer"]
        4 GETTABLEKS                       R8 R5 K2 ["InBounds"]
        6 JUMPIFNOT                        R8 ; [+3]
        7 GETTABLEKS                       R7 R6 K3 ["InBoundsColor"]
        9 JUMPIF                           R7 ; [+2]
       10 GETTABLEKS                       R7 R6 K4 ["OutBoundsColor"]
       12 MOVE                             R10 R6
       13 MOVE                             R11 R1
       14 MOVE                             R12 R2
       15 MOVE                             R13 R3
       16 MOVE                             R14 R4
       17 NAMECALL                         R8 R0 K5 ["renderLinks"]
       19 CALL                             R8 6 1
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R9 R10 K6 ["createElement"]
       23 LOADK                            R10 K7 ["BoxHandleAdornment"]
       24 DUPTABLE                         R11 K14 [{"Adornee", "CFrame", "Size", "Transparency", "Color3", "Archivable"}]
       25 SETTABLEKS                       R4 R11 K8 ["Adornee"]
       27 GETIMPORT                        R12 K16 [CFrame.new]
       29 ADD                              R13 R3 R2
       30 CALL                             R12 1 1
       31 SETTABLEKS                       R12 R11 K9 ["CFrame"]
       33 SETTABLEKS                       R1 R11 K10 ["Size"]
       35 GETTABLEKS                       R12 R6 K11 ["Transparency"]
       37 SETTABLEKS                       R12 R11 K11 ["Transparency"]
       39 SETTABLEKS                       R7 R11 K12 ["Color3"]
       41 LOADB                            R12 0
       42 SETTABLEKS                       R12 R11 K13 ["Archivable"]
       44 MOVE                             R12 R8
       45 CALL                             R9 3 -1
       46 RETURN                           R9 -1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["AccessoryTypeInfo"]
        6 GETTABLEKS                       R4 R2 K3 ["matchingAttachment"]
        8 JUMPIFNOT                        R4 ; [+1]
        9 JUMPIF                           R3 ; [+2]
       10 LOADNIL                          R5
       11 RETURN                           R5 1
       12 GETTABLEKS                       R5 R3 K4 ["Bounds"]
       14 GETTABLEKS                       R6 R3 K5 ["Offset"]
       16 NAMECALL                         R7 R0 K6 ["getHandleAttachment"]
       18 CALL                             R7 1 1
       19 JUMPIF                           R7 ; [+2]
       20 LOADNIL                          R8
       21 RETURN                           R8 1
       22 GETTABLEKS                       R8 R4 K7 ["Parent"]
       24 GETTABLEKS                       R11 R7 K8 ["WorldCFrame"]
       26 GETTABLEKS                       R12 R8 K9 ["CFrame"]
       28 NAMECALL                         R12 R12 K10 ["inverse"]
       30 CALL                             R12 1 1
       31 MUL                              R10 R11 R12
       32 GETTABLEKS                       R9 R10 K11 ["Position"]
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R10 R11 K12 ["createElement"]
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R11 R12 K13 ["Portal"]
       40 DUPTABLE                         R12 K15 [{"target"}]
       41 GETUPVAL                         R13 1
       42 SETTABLEKS                       R13 R12 K14 ["target"]
       44 DUPTABLE                         R13 K17 [{"BoundingBox"}]
       45 MOVE                             R16 R5
       46 MOVE                             R17 R6
       47 MOVE                             R18 R9
       48 MOVE                             R19 R8
       49 NAMECALL                         R14 R0 K18 ["renderBorderedBox"]
       51 CALL                             R14 5 1
       52 SETTABLEKS                       R14 R13 K16 ["BoundingBox"]
       54 CALL                             R10 3 -1
       55 RETURN                           R10 -1

PROTO_16:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["active"]
        3 GETTABLEKS                       R1 R0 K1 ["CFrameChanged"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K1 ["CFrameChanged"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["CFrameChanged"]
       14 GETTABLEKS                       R1 R0 K3 ["SizeChanged"]
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETTABLEKS                       R1 R0 K3 ["SizeChanged"]
       19 NAMECALL                         R1 R1 K2 ["Disconnect"]
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K3 ["SizeChanged"]
       25 GETTABLEKS                       R1 R0 K4 ["OnRedo"]
       27 JUMPIFNOT                        R1 ; [+8]
       28 GETTABLEKS                       R1 R0 K4 ["OnRedo"]
       30 NAMECALL                         R1 R1 K2 ["Disconnect"]
       32 CALL                             R1 1 0
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K4 ["OnRedo"]
       36 GETTABLEKS                       R1 R0 K5 ["OnUndo"]
       38 JUMPIFNOT                        R1 ; [+8]
       39 GETTABLEKS                       R1 R0 K5 ["OnUndo"]
       41 NAMECALL                         R1 R1 K2 ["Disconnect"]
       43 CALL                             R1 1 0
       44 LOADNIL                          R1
       45 SETTABLEKS                       R1 R0 K5 ["OnUndo"]
       47 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["EditingItemChanged"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["EditingItemChanged"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["EditingItemChanged"]
       11 GETUPVAL                         R1 0
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+4]
       14 NAMECALL                         R1 R0 K2 ["deactivate"]
       16 CALL                             R1 1 0
       17 JUMP                             ; [+44]
       18 GETTABLEKS                       R1 R0 K3 ["CFrameChanged"]
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETTABLEKS                       R1 R0 K3 ["CFrameChanged"]
       23 NAMECALL                         R1 R1 K1 ["Disconnect"]
       25 CALL                             R1 1 0
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K3 ["CFrameChanged"]
       29 GETTABLEKS                       R1 R0 K4 ["SizeChanged"]
       31 JUMPIFNOT                        R1 ; [+8]
       32 GETTABLEKS                       R1 R0 K4 ["SizeChanged"]
       34 NAMECALL                         R1 R1 K1 ["Disconnect"]
       36 CALL                             R1 1 0
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K4 ["SizeChanged"]
       40 GETTABLEKS                       R1 R0 K5 ["OnRedo"]
       42 JUMPIFNOT                        R1 ; [+8]
       43 GETTABLEKS                       R1 R0 K5 ["OnRedo"]
       45 NAMECALL                         R1 R1 K1 ["Disconnect"]
       47 CALL                             R1 1 0
       48 LOADNIL                          R1
       49 SETTABLEKS                       R1 R0 K5 ["OnRedo"]
       51 GETTABLEKS                       R1 R0 K6 ["OnUndo"]
       53 JUMPIFNOT                        R1 ; [+8]
       54 GETTABLEKS                       R1 R0 K6 ["OnUndo"]
       56 NAMECALL                         R1 R1 K1 ["Disconnect"]
       58 CALL                             R1 1 0
       59 LOADNIL                          R1
       60 SETTABLEKS                       R1 R0 K6 ["OnUndo"]
       62 GETTABLEKS                       R1 R0 K7 ["OnPluginWindowFocusedHandle"]
       64 JUMPIFNOT                        R1 ; [+8]
       65 GETTABLEKS                       R1 R0 K7 ["OnPluginWindowFocusedHandle"]
       67 NAMECALL                         R1 R1 K1 ["Disconnect"]
       69 CALL                             R1 1 0
       70 LOADNIL                          R1
       71 SETTABLEKS                       R1 R0 K7 ["OnPluginWindowFocusedHandle"]
       73 GETUPVAL                         R1 0
       74 CALL                             R1 0 1
       75 JUMPIFNOT                        R1 ; [+11]
       76 GETTABLEKS                       R1 R0 K8 ["SelectionChangedHandle"]
       78 JUMPIFNOT                        R1 ; [+8]
       79 GETTABLEKS                       R1 R0 K8 ["SelectionChangedHandle"]
       81 NAMECALL                         R1 R1 K1 ["Disconnect"]
       83 CALL                             R1 1 0
       84 LOADNIL                          R1
       85 SETTABLEKS                       R1 R0 K8 ["SelectionChangedHandle"]
       87 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["selectItem"]
        2 GETTABLEKS                       R3 R0 K1 ["controlsPanelBlocker"]
        4 DUPTABLE                         R4 K5 [{"AccessoryTypeInfo", "InBounds", "IsControlsPanelBlockerActive"}]
        5 GETTABLEKS                       R5 R2 K6 ["accessoryTypeInfo"]
        7 SETTABLEKS                       R5 R4 K2 ["AccessoryTypeInfo"]
        9 GETTABLEKS                       R5 R2 K7 ["inBounds"]
       11 SETTABLEKS                       R5 R4 K3 ["InBounds"]
       13 GETUPVAL                         R6 0
       14 CALL                             R6 0 1
       15 JUMPIFNOT                        R6 ; [+3]
       16 GETTABLEKS                       R5 R3 K8 ["isActive"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R5
       20 SETTABLEKS                       R5 R4 K4 ["IsControlsPanelBlockerActive"]
       22 RETURN                           R4 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_26:
        0 DUPTABLE                         R1 K7 [{"SetControlsPanelBlockerActivity", "SetControlsPanelBlockerMessage", "SetWorkspacePreviewSelectionEnabled", "SetAttachmentPoint", "SetItemSize", "SetMeshScale", "VerifyBounds"}]
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+4]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R1 K0 ["SetControlsPanelBlockerActivity"]
       11 GETUPVAL                         R3 0
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+4]
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K1 ["SetControlsPanelBlockerMessage"]
       21 GETUPVAL                         R3 0
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+4]
       24 NEWCLOSURE                       R2 P2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U3
       27 JUMP                             ; [+1]
       28 LOADNIL                          R2
       29 SETTABLEKS                       R2 R1 K2 ["SetWorkspacePreviewSelectionEnabled"]
       31 NEWCLOSURE                       R2 P3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U4
       34 SETTABLEKS                       R2 R1 K3 ["SetAttachmentPoint"]
       36 NEWCLOSURE                       R2 P4
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U5
       39 SETTABLEKS                       R2 R1 K4 ["SetItemSize"]
       41 NEWCLOSURE                       R2 P5
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U6
       44 SETTABLEKS                       R2 R1 K5 ["SetMeshScale"]
       46 NEWCLOSURE                       R2 P6
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U7
       49 SETTABLEKS                       R2 R1 K6 ["VerifyBounds"]
       51 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ChangeHistoryService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R6 K7 [script]
       21 GETTABLEKS                       R5 R6 K8 ["Parent"]
       23 GETTABLEKS                       R4 R5 K8 ["Parent"]
       25 GETTABLEKS                       R3 R4 K8 ["Parent"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R6 R3 K11 ["Packages"]
       31 GETTABLEKS                       R5 R6 K12 ["Roact"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K10 [require]
       36 GETTABLEKS                       R7 R3 K11 ["Packages"]
       38 GETTABLEKS                       R6 R7 K13 ["RoactRodux"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K10 [require]
       43 GETTABLEKS                       R8 R3 K11 ["Packages"]
       45 GETTABLEKS                       R7 R8 K14 ["AvatarToolsShared"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R8 R6 K15 ["Util"]
       50 GETTABLEKS                       R7 R8 K16 ["AccessoryAndBodyToolShared"]
       52 GETTABLEKS                       R8 R7 K17 ["Constants"]
       54 GETTABLEKS                       R9 R7 K18 ["AccessoryUtil"]
       56 GETTABLEKS                       R10 R7 K19 ["ItemCharacteristics"]
       58 GETIMPORT                        R11 K10 [require]
       60 GETTABLEKS                       R14 R3 K20 ["Src"]
       62 GETTABLEKS                       R13 R14 K21 ["Actions"]
       64 GETTABLEKS                       R12 R13 K22 ["SetAttachmentPoint"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K10 [require]
       69 GETTABLEKS                       R15 R3 K20 ["Src"]
       71 GETTABLEKS                       R14 R15 K21 ["Actions"]
       73 GETTABLEKS                       R13 R14 K23 ["SetItemSize"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K10 [require]
       78 GETTABLEKS                       R16 R3 K20 ["Src"]
       80 GETTABLEKS                       R15 R16 K21 ["Actions"]
       82 GETTABLEKS                       R14 R15 K24 ["SetMeshScale"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K10 [require]
       87 GETTABLEKS                       R17 R3 K20 ["Src"]
       89 GETTABLEKS                       R16 R17 K25 ["Thunks"]
       91 GETTABLEKS                       R15 R16 K26 ["VerifyBounds"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K10 [require]
       96 GETTABLEKS                       R18 R3 K20 ["Src"]
       98 GETTABLEKS                       R17 R18 K21 ["Actions"]
      100 GETTABLEKS                       R16 R17 K27 ["SetControlsPanelBlockerActivity"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K10 [require]
      105 GETTABLEKS                       R19 R3 K20 ["Src"]
      107 GETTABLEKS                       R18 R19 K21 ["Actions"]
      109 GETTABLEKS                       R17 R18 K28 ["SetControlsPanelBlockerMessage"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K10 [require]
      114 GETTABLEKS                       R20 R3 K20 ["Src"]
      116 GETTABLEKS                       R19 R20 K21 ["Actions"]
      118 GETTABLEKS                       R18 R19 K29 ["SetWorkspacePreviewSelectionEnabled"]
      120 CALL                             R17 1 1
      121 GETTABLEKS                       R19 R6 K30 ["Contexts"]
      123 GETTABLEKS                       R18 R19 K31 ["EditingItemContext"]
      125 GETTABLEKS                       R20 R6 K30 ["Contexts"]
      127 GETTABLEKS                       R19 R20 K32 ["Signals"]
      129 GETIMPORT                        R20 K10 [require]
      131 GETTABLEKS                       R23 R3 K20 ["Src"]
      133 GETTABLEKS                       R22 R23 K15 ["Util"]
      135 GETTABLEKS                       R21 R22 K17 ["Constants"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K10 [require]
      140 GETTABLEKS                       R24 R3 K20 ["Src"]
      142 GETTABLEKS                       R23 R24 K15 ["Util"]
      144 GETTABLEKS                       R22 R23 K33 ["AnalyticsGlobals"]
      146 CALL                             R21 1 1
      147 GETIMPORT                        R22 K10 [require]
      149 GETTABLEKS                       R24 R3 K11 ["Packages"]
      151 GETTABLEKS                       R23 R24 K34 ["Framework"]
      153 CALL                             R22 1 1
      154 GETTABLEKS                       R23 R22 K35 ["ContextServices"]
      156 GETTABLEKS                       R24 R23 K36 ["withContext"]
      158 GETTABLEKS                       R26 R6 K37 ["Flags"]
      160 GETTABLEKS                       R25 R26 K38 ["GetFFlagAFTSelectHandleOnly"]
      162 GETTABLEKS                       R26 R4 K39 ["PureComponent"]
      164 LOADK                            R28 K40 ["MeshPartTool"]
      165 NAMECALL                         R26 R26 K41 ["extend"]
      167 CALL                             R26 2 1
      168 DUPCLOSURE                       R27 K42 [PROTO_0]
      169 SETTABLEKS                       R27 R26 K43 ["getHandleAttachment"]
      171 DUPCLOSURE                       R27 K44 [PROTO_8]
      172 CAPTURE                          VAL R25
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R9
      179 SETTABLEKS                       R27 R26 K45 ["init"]
      181 DUPCLOSURE                       R27 K46 [PROTO_9]
      182 CAPTURE                          VAL R2
      183 SETTABLEKS                       R27 R26 K47 ["activate"]
      185 DUPCLOSURE                       R27 K48 [PROTO_11]
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R20
      189 CAPTURE                          VAL R1
      190 SETTABLEKS                       R27 R26 K49 ["didMount"]
      192 DUPCLOSURE                       R27 K50 [PROTO_12]
      193 CAPTURE                          VAL R25
      194 SETTABLEKS                       R27 R26 K51 ["didUpdate"]
      196 DUPCLOSURE                       R27 K52 [PROTO_13]
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R4
      199 SETTABLEKS                       R27 R26 K53 ["renderLinks"]
      201 DUPCLOSURE                       R27 K54 [PROTO_14]
      202 CAPTURE                          VAL R4
      203 SETTABLEKS                       R27 R26 K55 ["renderBorderedBox"]
      205 DUPCLOSURE                       R27 K56 [PROTO_15]
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R0
      208 SETTABLEKS                       R27 R26 K57 ["render"]
      210 DUPCLOSURE                       R27 K58 [PROTO_16]
      211 SETTABLEKS                       R27 R26 K59 ["deactivate"]
      213 DUPCLOSURE                       R27 K60 [PROTO_17]
      214 CAPTURE                          VAL R25
      215 SETTABLEKS                       R27 R26 K61 ["willUnmount"]
      217 MOVE                             R27 R24
      218 DUPTABLE                         R28 K65 [{"Analytics", "Stylizer", "Localization", "EditingItemContext", "Signals"}]
      219 GETTABLEKS                       R29 R23 K62 ["Analytics"]
      221 SETTABLEKS                       R29 R28 K62 ["Analytics"]
      223 GETTABLEKS                       R29 R23 K63 ["Stylizer"]
      225 SETTABLEKS                       R29 R28 K63 ["Stylizer"]
      227 MOVE                             R30 R25
      228 CALL                             R30 0 1
      229 JUMPIFNOT                        R30 ; [+3]
      230 GETTABLEKS                       R29 R23 K64 ["Localization"]
      232 JUMP                             ; [+1]
      233 LOADNIL                          R29
      234 SETTABLEKS                       R29 R28 K64 ["Localization"]
      236 SETTABLEKS                       R18 R28 K31 ["EditingItemContext"]
      238 SETTABLEKS                       R19 R28 K32 ["Signals"]
      240 CALL                             R27 1 1
      241 MOVE                             R28 R26
      242 CALL                             R27 1 1
      243 MOVE                             R26 R27
      244 DUPCLOSURE                       R27 K66 [PROTO_18]
      245 CAPTURE                          VAL R25
      246 DUPCLOSURE                       R28 K67 [PROTO_26]
      247 CAPTURE                          VAL R25
      248 CAPTURE                          VAL R15
      249 CAPTURE                          VAL R16
      250 CAPTURE                          VAL R17
      251 CAPTURE                          VAL R11
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R13
      254 CAPTURE                          VAL R14
      255 GETTABLEKS                       R29 R5 K68 ["connect"]
      257 MOVE                             R30 R27
      258 MOVE                             R31 R28
      259 CALL                             R29 2 1
      260 MOVE                             R30 R26
      261 CALL                             R29 1 -1
      262 RETURN                           R29 -1
