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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Analytics"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["FirstAction"]
        8 JUMPIF                           R1 ; [+16]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["ACTIONS"]
       13 GETTABLEKS                       R2 R2 K4 ["AdjustAccessory"]
       15 SETTABLEKS                       R2 R1 K2 ["FirstAction"]
       17 LOADK                            R3 K2 ["FirstAction"]
       18 NAMECALL                         R1 R0 K5 ["getHandler"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K2 ["FirstAction"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K6 ["placeAndScaleItem"]
       28 CALL                             R1 0 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
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
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K0 ["props"]
       42 GETTABLEKS                       R7 R7 K11 ["SetAttachmentPoint"]
       44 DUPTABLE                         R8 K14 [{"ItemCFrame", "AttachmentCFrame"}]
       45 NAMECALL                         R10 R6 K9 ["inverse"]
       47 CALL                             R10 1 1
       48 GETTABLEKS                       R11 R2 K10 ["CFrame"]
       50 MUL                              R9 R10 R11
       51 SETTABLEKS                       R9 R8 K12 ["ItemCFrame"]
       53 GETTABLEKS                       R9 R5 K10 ["CFrame"]
       55 SETTABLEKS                       R9 R8 K13 ["AttachmentCFrame"]
       57 CALL                             R7 1 0
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K15 ["isLegacyAccessory"]
       61 MOVE                             R8 R2
       62 CALL                             R7 1 1
       63 JUMPIFNOT                        R7 ; [+11]
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K0 ["props"]
       67 GETTABLEKS                       R7 R7 K16 ["SetMeshScale"]
       69 GETUPVAL                         R8 2
       70 MOVE                             R10 R2
       71 NAMECALL                         R8 R8 K17 ["getSpecialMeshScale"]
       73 CALL                             R8 2 -1
       74 CALL                             R7 -1 0
       75 GETUPVAL                         R7 0
       76 GETTABLEKS                       R7 R7 K0 ["props"]
       78 GETTABLEKS                       R7 R7 K18 ["SetItemSize"]
       80 GETTABLEKS                       R8 R2 K19 ["Size"]
       82 CALL                             R7 1 0
       83 GETUPVAL                         R7 0
       84 GETTABLEKS                       R7 R7 K0 ["props"]
       86 GETTABLEKS                       R7 R7 K20 ["VerifyBounds"]
       88 MOVE                             R8 R2
       89 GETUPVAL                         R9 0
       90 NAMECALL                         R9 R9 K21 ["getHandleAttachment"]
       92 CALL                             R9 1 -1
       93 CALL                             R7 -1 0
       94 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["EditingItemContext"]
        5 NAMECALL                         R0 R0 K2 ["getItem"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["props"]
       11 GETTABLEKS                       R1 R1 K3 ["AccessoryTypeInfo"]
       13 JUMPIF                           R0 ; [+29]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["CFrameChanged"]
       17 JUMPIFNOT                        R2 ; [+10]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K4 ["CFrameChanged"]
       21 NAMECALL                         R2 R2 K5 ["Disconnect"]
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 0
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R2 K4 ["CFrameChanged"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K6 ["SizeChanged"]
       31 JUMPIFNOT                        R2 ; [+10]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K6 ["SizeChanged"]
       35 NAMECALL                         R2 R2 K5 ["Disconnect"]
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 0
       39 LOADNIL                          R3
       40 SETTABLEKS                       R3 R2 K6 ["SizeChanged"]
       42 RETURN                           R0 0
       43 GETTABLEKS                       R4 R1 K7 ["Name"]
       45 NAMECALL                         R2 R0 K8 ["FindFirstChild"]
       47 CALL                             R2 2 1
       48 LOADK                            R5 K9 ["Weld"]
       49 NAMECALL                         R3 R0 K10 ["FindFirstChildWhichIsA"]
       51 CALL                             R3 2 1
       52 JUMPIFNOT                        R2 ; [+1]
       53 JUMPIF                           R3 ; [+1]
       54 RETURN                           R0 0
       55 GETTABLEKS                       R4 R3 K11 ["Part1"]
       57 JUMPIF                           R4 ; [+1]
       58 RETURN                           R0 0
       59 GETTABLEKS                       R7 R2 K7 ["Name"]
       61 NAMECALL                         R5 R4 K8 ["FindFirstChild"]
       63 CALL                             R5 2 1
       64 JUMPIF                           R5 ; [+1]
       65 RETURN                           R0 0
       66 GETUPVAL                         R6 0
       67 DUPTABLE                         R8 K13 [{"matchingAttachment"}]
       68 SETTABLEKS                       R5 R8 K12 ["matchingAttachment"]
       70 NAMECALL                         R6 R6 K14 ["setState"]
       72 CALL                             R6 2 0
       73 GETUPVAL                         R6 0
       74 LOADK                            R9 K15 ["CFrame"]
       75 NAMECALL                         R7 R0 K16 ["GetPropertyChangedSignal"]
       77 CALL                             R7 2 1
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R9 R9 K17 ["adjustItem"]
       81 NAMECALL                         R7 R7 K18 ["Connect"]
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K4 ["CFrameChanged"]
       86 GETUPVAL                         R6 0
       87 LOADK                            R9 K19 ["Size"]
       88 NAMECALL                         R7 R0 K16 ["GetPropertyChangedSignal"]
       90 CALL                             R7 2 1
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K17 ["adjustItem"]
       94 NAMECALL                         R7 R7 K18 ["Connect"]
       96 CALL                             R7 2 1
       97 SETTABLEKS                       R7 R6 K6 ["SizeChanged"]
       99 GETUPVAL                         R6 1
      100 NEWTABLE                         R8 0 1
      102 MOVE                             R9 R0
      103 SETLIST                          R8 R9 1 [1]
      105 NAMECALL                         R6 R6 K20 ["Set"]
      107 CALL                             R6 2 0
      108 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"matchingAttachment"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["matchingAttachment"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R1 R0 K3 ["selectMeshPart"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 SETTABLEKS                       R1 R0 K4 ["adjustItem"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 SETTABLEKS                       R1 R0 K5 ["placeAndScaleItem"]
       23 NEWCLOSURE                       R1 P3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 SETTABLEKS                       R1 R0 K6 ["onEditingItemChanged"]
       28 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["active"]
        3 GETTABLEKS                       R1 R0 K1 ["onEditingItemChanged"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["OnRedo"]
        9 GETTABLEKS                       R3 R0 K3 ["onUndoRedo"]
       11 NAMECALL                         R1 R1 K4 ["Connect"]
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K2 ["OnRedo"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K5 ["OnUndo"]
       19 GETTABLEKS                       R3 R0 K3 ["onUndoRedo"]
       21 NAMECALL                         R1 R1 K4 ["Connect"]
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K5 ["OnUndo"]
       26 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onEditingItemChanged"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["EditingItemContext"]
        4 NAMECALL                         R2 R2 K2 ["getEditingItemChangedSignal"]
        6 CALL                             R2 1 1
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R2 R2 K3 ["Connect"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R0 K4 ["EditingItemChanged"]
       14 GETTABLEKS                       R2 R0 K5 ["onEditingItemChanged"]
       16 CALL                             R2 0 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K6 ["OnRedo"]
       20 GETTABLEKS                       R4 R0 K7 ["placeAndScaleItem"]
       22 NAMECALL                         R2 R2 K3 ["Connect"]
       24 CALL                             R2 2 1
       25 SETTABLEKS                       R2 R0 K6 ["OnRedo"]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K8 ["OnUndo"]
       30 GETTABLEKS                       R4 R0 K7 ["placeAndScaleItem"]
       32 NAMECALL                         R2 R2 K3 ["Connect"]
       34 CALL                             R2 2 1
       35 SETTABLEKS                       R2 R0 K8 ["OnUndo"]
       37 GETTABLEKS                       R2 R1 K9 ["Signals"]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K10 ["SIGNAL_KEYS"]
       42 GETTABLEKS                       R4 R4 K11 ["PluginWindowFocused"]
       44 NAMECALL                         R2 R2 K12 ["get"]
       46 CALL                             R2 2 1
       47 GETTABLEKS                       R4 R0 K13 ["selectMeshPart"]
       49 NAMECALL                         R2 R2 K3 ["Connect"]
       51 CALL                             R2 2 1
       52 SETTABLEKS                       R2 R0 K14 ["OnPluginWindowFocusedHandle"]
       54 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R3 K1 ["matchingAttachment"]
        4 GETTABLEKS                       R4 R2 K1 ["matchingAttachment"]
        6 JUMPIFEQ                         R3 R4 ; [+4]
        8 GETTABLEKS                       R3 R0 K2 ["placeAndScaleItem"]
       10 CALL                             R3 0 0
       11 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R6 0 0
        2 GETIMPORT                        R7 K1 [ipairs]
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R8 R8 K2 ["CUBE_EDGES"]
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
       17 SUB                              R14 R12 R13
       18 GETTABLEKS                       R14 R14 K3 ["Magnitude"]
       20 GETIMPORT                        R15 K6 [CFrame.new]
       22 LOADK                            R16 K7 [{0, 0, 0}]
       23 SUB                              R17 R13 R12
       24 GETTABLEKS                       R17 R17 K8 ["Unit"]
       26 CALL                             R15 2 1
       27 ADD                              R15 R15 R12
       28 MOVE                             R17 R6
       29 GETUPVAL                         R18 1
       30 GETTABLEKS                       R18 R18 K9 ["createElement"]
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

PROTO_11:
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
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K6 ["createElement"]
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

PROTO_12:
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
       24 GETTABLEKS                       R10 R7 K8 ["WorldCFrame"]
       26 GETTABLEKS                       R11 R8 K9 ["CFrame"]
       28 NAMECALL                         R11 R11 K10 ["inverse"]
       30 CALL                             R11 1 1
       31 MUL                              R9 R10 R11
       32 GETTABLEKS                       R9 R9 K11 ["Position"]
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R10 R10 K12 ["createElement"]
       37 GETUPVAL                         R11 0
       38 GETTABLEKS                       R11 R11 K13 ["Portal"]
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

PROTO_13:
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

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["EditingItemChanged"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["EditingItemChanged"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["EditingItemChanged"]
       11 GETTABLEKS                       R1 R0 K2 ["CFrameChanged"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["CFrameChanged"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["CFrameChanged"]
       22 GETTABLEKS                       R1 R0 K3 ["SizeChanged"]
       24 JUMPIFNOT                        R1 ; [+8]
       25 GETTABLEKS                       R1 R0 K3 ["SizeChanged"]
       27 NAMECALL                         R1 R1 K1 ["Disconnect"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K3 ["SizeChanged"]
       33 GETTABLEKS                       R1 R0 K4 ["OnRedo"]
       35 JUMPIFNOT                        R1 ; [+8]
       36 GETTABLEKS                       R1 R0 K4 ["OnRedo"]
       38 NAMECALL                         R1 R1 K1 ["Disconnect"]
       40 CALL                             R1 1 0
       41 LOADNIL                          R1
       42 SETTABLEKS                       R1 R0 K4 ["OnRedo"]
       44 GETTABLEKS                       R1 R0 K5 ["OnUndo"]
       46 JUMPIFNOT                        R1 ; [+8]
       47 GETTABLEKS                       R1 R0 K5 ["OnUndo"]
       49 NAMECALL                         R1 R1 K1 ["Disconnect"]
       51 CALL                             R1 1 0
       52 LOADNIL                          R1
       53 SETTABLEKS                       R1 R0 K5 ["OnUndo"]
       55 GETTABLEKS                       R1 R0 K6 ["OnPluginWindowFocusedHandle"]
       57 JUMPIFNOT                        R1 ; [+8]
       58 GETTABLEKS                       R1 R0 K6 ["OnPluginWindowFocusedHandle"]
       60 NAMECALL                         R1 R1 K1 ["Disconnect"]
       62 CALL                             R1 1 0
       63 LOADNIL                          R1
       64 SETTABLEKS                       R1 R0 K6 ["OnPluginWindowFocusedHandle"]
       66 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["selectItem"]
        2 GETTABLEKS                       R3 R0 K1 ["controlsPanelBlocker"]
        4 DUPTABLE                         R4 K4 [{"AccessoryTypeInfo", "InBounds"}]
        5 GETTABLEKS                       R5 R2 K5 ["accessoryTypeInfo"]
        7 SETTABLEKS                       R5 R4 K2 ["AccessoryTypeInfo"]
        9 GETTABLEKS                       R5 R2 K6 ["inBounds"]
       11 SETTABLEKS                       R5 R4 K3 ["InBounds"]
       13 RETURN                           R4 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K4 [{"SetAttachmentPoint", "SetItemSize", "SetMeshScale", "VerifyBounds"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetAttachmentPoint"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetItemSize"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetMeshScale"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["VerifyBounds"]
       21 RETURN                           R1 1

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
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Parent"]
       25 GETTABLEKS                       R3 R3 K8 ["Parent"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R5 R3 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["Roact"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K10 [require]
       36 GETTABLEKS                       R6 R3 K11 ["Packages"]
       38 GETTABLEKS                       R6 R6 K13 ["RoactRodux"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K10 [require]
       43 GETTABLEKS                       R7 R3 K11 ["Packages"]
       45 GETTABLEKS                       R7 R7 K14 ["AvatarToolsShared"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R6 K15 ["Util"]
       50 GETTABLEKS                       R7 R7 K16 ["AccessoryAndBodyToolShared"]
       52 GETTABLEKS                       R8 R7 K17 ["Constants"]
       54 GETTABLEKS                       R9 R7 K18 ["AccessoryUtil"]
       56 GETTABLEKS                       R10 R7 K19 ["ItemCharacteristics"]
       58 GETIMPORT                        R11 K10 [require]
       60 GETTABLEKS                       R12 R3 K20 ["Src"]
       62 GETTABLEKS                       R12 R12 K21 ["Actions"]
       64 GETTABLEKS                       R12 R12 K22 ["SetAttachmentPoint"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K10 [require]
       69 GETTABLEKS                       R13 R3 K20 ["Src"]
       71 GETTABLEKS                       R13 R13 K21 ["Actions"]
       73 GETTABLEKS                       R13 R13 K23 ["SetItemSize"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K10 [require]
       78 GETTABLEKS                       R14 R3 K20 ["Src"]
       80 GETTABLEKS                       R14 R14 K21 ["Actions"]
       82 GETTABLEKS                       R14 R14 K24 ["SetMeshScale"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K10 [require]
       87 GETTABLEKS                       R15 R3 K20 ["Src"]
       89 GETTABLEKS                       R15 R15 K25 ["Thunks"]
       91 GETTABLEKS                       R15 R15 K26 ["VerifyBounds"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K10 [require]
       96 GETTABLEKS                       R16 R3 K20 ["Src"]
       98 GETTABLEKS                       R16 R16 K21 ["Actions"]
      100 GETTABLEKS                       R16 R16 K27 ["SetControlsPanelBlockerActivity"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K10 [require]
      105 GETTABLEKS                       R17 R3 K20 ["Src"]
      107 GETTABLEKS                       R17 R17 K21 ["Actions"]
      109 GETTABLEKS                       R17 R17 K28 ["SetControlsPanelBlockerMessage"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K10 [require]
      114 GETTABLEKS                       R18 R3 K20 ["Src"]
      116 GETTABLEKS                       R18 R18 K21 ["Actions"]
      118 GETTABLEKS                       R18 R18 K29 ["SetWorkspacePreviewSelectionEnabled"]
      120 CALL                             R17 1 1
      121 GETTABLEKS                       R18 R6 K30 ["Contexts"]
      123 GETTABLEKS                       R18 R18 K31 ["EditingItemContext"]
      125 GETTABLEKS                       R19 R6 K30 ["Contexts"]
      127 GETTABLEKS                       R19 R19 K32 ["Signals"]
      129 GETIMPORT                        R20 K10 [require]
      131 GETTABLEKS                       R21 R3 K20 ["Src"]
      133 GETTABLEKS                       R21 R21 K15 ["Util"]
      135 GETTABLEKS                       R21 R21 K17 ["Constants"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K10 [require]
      140 GETTABLEKS                       R22 R3 K20 ["Src"]
      142 GETTABLEKS                       R22 R22 K15 ["Util"]
      144 GETTABLEKS                       R22 R22 K33 ["AnalyticsGlobals"]
      146 CALL                             R21 1 1
      147 GETIMPORT                        R22 K10 [require]
      149 GETTABLEKS                       R23 R3 K11 ["Packages"]
      151 GETTABLEKS                       R23 R23 K34 ["Framework"]
      153 CALL                             R22 1 1
      154 GETTABLEKS                       R23 R22 K35 ["ContextServices"]
      156 GETTABLEKS                       R24 R23 K36 ["withContext"]
      158 GETTABLEKS                       R25 R4 K37 ["PureComponent"]
      160 LOADK                            R27 K38 ["MeshPartTool"]
      161 NAMECALL                         R25 R25 K39 ["extend"]
      163 CALL                             R25 2 1
      164 DUPCLOSURE                       R26 K40 [PROTO_0]
      165 SETTABLEKS                       R26 R25 K41 ["getHandleAttachment"]
      167 DUPCLOSURE                       R26 K42 [PROTO_5]
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R9
      173 SETTABLEKS                       R26 R25 K43 ["init"]
      175 DUPCLOSURE                       R26 K44 [PROTO_6]
      176 CAPTURE                          VAL R2
      177 SETTABLEKS                       R26 R25 K45 ["activate"]
      179 DUPCLOSURE                       R26 K46 [PROTO_8]
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R20
      182 SETTABLEKS                       R26 R25 K47 ["didMount"]
      184 DUPCLOSURE                       R26 K48 [PROTO_9]
      185 SETTABLEKS                       R26 R25 K49 ["didUpdate"]
      187 DUPCLOSURE                       R26 K50 [PROTO_10]
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R4
      190 SETTABLEKS                       R26 R25 K51 ["renderLinks"]
      192 DUPCLOSURE                       R26 K52 [PROTO_11]
      193 CAPTURE                          VAL R4
      194 SETTABLEKS                       R26 R25 K53 ["renderBorderedBox"]
      196 DUPCLOSURE                       R26 K54 [PROTO_12]
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R0
      199 SETTABLEKS                       R26 R25 K55 ["render"]
      201 DUPCLOSURE                       R26 K56 [PROTO_13]
      202 SETTABLEKS                       R26 R25 K57 ["deactivate"]
      204 DUPCLOSURE                       R26 K58 [PROTO_14]
      205 SETTABLEKS                       R26 R25 K59 ["willUnmount"]
      207 MOVE                             R26 R24
      208 DUPTABLE                         R27 K62 [{"Analytics", "Stylizer", "EditingItemContext", "Signals"}]
      209 GETTABLEKS                       R28 R23 K60 ["Analytics"]
      211 SETTABLEKS                       R28 R27 K60 ["Analytics"]
      213 GETTABLEKS                       R28 R23 K61 ["Stylizer"]
      215 SETTABLEKS                       R28 R27 K61 ["Stylizer"]
      217 SETTABLEKS                       R18 R27 K31 ["EditingItemContext"]
      219 SETTABLEKS                       R19 R27 K32 ["Signals"]
      221 CALL                             R26 1 1
      222 MOVE                             R27 R25
      223 CALL                             R26 1 1
      224 MOVE                             R25 R26
      225 DUPCLOSURE                       R26 K63 [PROTO_15]
      226 DUPCLOSURE                       R27 K64 [PROTO_20]
      227 CAPTURE                          VAL R11
      228 CAPTURE                          VAL R12
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R14
      231 GETTABLEKS                       R28 R5 K65 ["connect"]
      233 MOVE                             R29 R26
      234 MOVE                             R30 R27
      235 CALL                             R28 2 1
      236 MOVE                             R29 R25
      237 CALL                             R28 1 -1
      238 RETURN                           R28 -1
