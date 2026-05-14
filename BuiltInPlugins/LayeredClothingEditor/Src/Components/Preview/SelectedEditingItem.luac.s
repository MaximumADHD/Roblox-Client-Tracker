PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Analytics"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R3 R2 K2 ["CageEdits"]
        7 ADDK                             R3 R3 K3 [1]
        8 SETTABLEKS                       R3 R2 K2 ["CageEdits"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["FirstAction"]
       13 JUMPIF                           R2 ; [+16]
       14 GETUPVAL                         R2 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["ACTIONS"]
       18 GETTABLEKS                       R3 R3 K6 ["EditCage"]
       20 SETTABLEKS                       R3 R2 K4 ["FirstAction"]
       22 LOADK                            R4 K4 ["FirstAction"]
       23 NAMECALL                         R2 R1 K7 ["getHandler"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K4 ["FirstAction"]
       29 CALL                             R2 1 0
       30 DUPTABLE                         R4 K9 [{"temp"}]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K8 ["temp"]
       35 NAMECALL                         R2 R0 K10 ["setState"]
       37 CALL                             R2 2 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LuaMeshEditingModuleContext"]
        4 NAMECALL                         R3 R2 K2 ["getOuterCageContext"]
        6 CALL                             R3 1 1
        7 NAMECALL                         R4 R2 K3 ["getInnerCageContext"]
        9 CALL                             R4 1 1
       10 JUMPIFNOT                        R3 ; [+19]
       11 GETTABLEKS                       R5 R0 K4 ["outerCageDataChanged"]
       13 JUMPIFNOT                        R5 ; [+5]
       14 GETTABLEKS                       R5 R0 K4 ["outerCageDataChanged"]
       16 NAMECALL                         R5 R5 K5 ["Disconnect"]
       18 CALL                             R5 1 0
       19 NAMECALL                         R5 R3 K6 ["getMeshDataChangedSignal"]
       21 CALL                             R5 1 1
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R5 R5 K7 ["Connect"]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R0 K4 ["outerCageDataChanged"]
       30 JUMPIFNOT                        R4 ; [+19]
       31 GETTABLEKS                       R5 R0 K8 ["innerCageDataChanged"]
       33 JUMPIFNOT                        R5 ; [+5]
       34 GETTABLEKS                       R5 R0 K8 ["innerCageDataChanged"]
       36 NAMECALL                         R5 R5 K5 ["Disconnect"]
       38 CALL                             R5 1 0
       39 NAMECALL                         R5 R4 K6 ["getMeshDataChangedSignal"]
       41 CALL                             R5 1 1
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R0
       45 NAMECALL                         R5 R5 K7 ["Connect"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R0 K8 ["innerCageDataChanged"]
       50 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMP                             ; [+3]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["Size"]
        7 LOADNIL                          R1
        8 GETUPVAL                         R2 0
        9 JUMPIFNOT                        R2 ; [+2]
       10 GETUPVAL                         R1 3
       11 JUMP                             ; [+6]
       12 GETUPVAL                         R2 4
       13 GETUPVAL                         R4 2
       14 NAMECALL                         R2 R2 K1 ["getSpecialMeshScale"]
       16 CALL                             R2 2 1
       17 MOVE                             R1 R2
       18 GETUPVAL                         R3 5
       19 JUMPIFNOT                        R3 ; [+4]
       20 GETUPVAL                         R2 5
       21 GETTABLEKS                       R2 R2 K2 ["Name"]
       23 JUMP                             ; [+1]
       24 LOADK                            R2 K3 [""]
       25 GETUPVAL                         R3 6
       26 GETTABLEKS                       R3 R3 K4 ["AttachmentCFrame"]
       28 GETUPVAL                         R4 6
       29 GETTABLEKS                       R4 R4 K5 ["ItemCFrame"]
       31 GETUPVAL                         R5 7
       32 GETTABLEKS                       R5 R5 K6 ["itemCFrameLocalToAttachmentPoint"]
       34 JUMPIFNOT                        R5 ; [+14]
       35 GETUPVAL                         R5 7
       36 GETTABLEKS                       R5 R5 K6 ["itemCFrameLocalToAttachmentPoint"]
       38 NAMECALL                         R5 R5 K7 ["inverse"]
       40 CALL                             R5 1 1
       41 MOVE                             R3 R5
       42 GETUPVAL                         R5 7
       43 GETTABLEKS                       R4 R5 K6 ["itemCFrameLocalToAttachmentPoint"]
       45 GETUPVAL                         R5 7
       46 LOADNIL                          R6
       47 SETTABLEKS                       R6 R5 K6 ["itemCFrameLocalToAttachmentPoint"]
       49 GETUPVAL                         R5 7
       50 GETTABLEKS                       R5 R5 K8 ["mannequin"]
       52 LOADN                            R7 1
       53 MOVE                             R8 R0
       54 MOVE                             R9 R3
       55 MOVE                             R10 R4
       56 MOVE                             R11 R2
       57 MOVE                             R12 R1
       58 NAMECALL                         R5 R5 K9 ["transformLayer"]
       60 CALL                             R5 7 0
       61 GETUPVAL                         R5 8
       62 JUMPIFNOT                        R5 ; [+13]
       63 GETUPVAL                         R5 7
       64 GETTABLEKS                       R5 R5 K8 ["mannequin"]
       66 LOADN                            R7 1
       67 GETUPVAL                         R8 8
       68 NAMECALL                         R8 R8 K10 ["getVertexData"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K14 [Enum.CageType.Outer]
       73 NAMECALL                         R5 R5 K15 ["deformLayer"]
       75 CALL                             R5 4 0
       76 GETUPVAL                         R5 9
       77 JUMPIFNOT                        R5 ; [+13]
       78 GETUPVAL                         R5 7
       79 GETTABLEKS                       R5 R5 K8 ["mannequin"]
       81 LOADN                            R7 1
       82 GETUPVAL                         R8 9
       83 NAMECALL                         R8 R8 K10 ["getVertexData"]
       85 CALL                             R8 1 1
       86 GETIMPORT                        R9 K17 [Enum.CageType.Inner]
       88 NAMECALL                         R5 R5 K15 ["deformLayer"]
       90 CALL                             R5 4 0
       91 GETUPVAL                         R5 7
       92 GETTABLEKS                       R5 R5 K18 ["props"]
       94 GETTABLEKS                       R5 R5 K19 ["EditingItemContext"]
       96 GETUPVAL                         R7 2
       97 NAMECALL                         R5 R5 K20 ["setEditingItem"]
       99 CALL                             R5 2 0
      100 GETUPVAL                         R5 10
      101 GETUPVAL                         R6 2
      102 CALL                             R5 1 0
      103 GETUPVAL                         R5 0
      104 JUMPIF                           R5 ; [+17]
      105 GETUPVAL                         R5 7
      106 GETTABLEKS                       R5 R5 K18 ["props"]
      108 GETTABLEKS                       R5 R5 K21 ["SelectEditingItem"]
      110 GETUPVAL                         R6 11
      111 GETUPVAL                         R7 2
      112 GETUPVAL                         R8 12
      113 CALL                             R5 3 0
      114 GETUPVAL                         R5 13
      115 GETUPVAL                         R7 14
      116 NAMECALL                         R5 R5 K22 ["focusCameraOnAvatar"]
      118 CALL                             R5 2 0
      119 GETUPVAL                         R5 15
      120 GETUPVAL                         R6 7
      121 CALL                             R5 1 0
      122 GETUPVAL                         R5 11
      123 GETUPVAL                         R7 2
      124 NAMECALL                         R5 R5 K23 ["updateCageLocationsFromInstance"]
      126 CALL                             R5 2 0
      127 GETUPVAL                         R5 16
      128 NAMECALL                         R5 R5 K24 ["ResetWaypoints"]
      130 CALL                             R5 1 0
      131 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["ItemSize"]
        4 GETTABLEKS                       R4 R2 K2 ["MeshScale"]
        6 GETTABLEKS                       R5 R2 K3 ["AttachmentPoint"]
        8 GETTABLEKS                       R6 R2 K4 ["AccessoryTypeInfo"]
       10 GETTABLEKS                       R7 R2 K5 ["VerifyBounds"]
       12 GETTABLEKS                       R8 R2 K6 ["EditingCage"]
       14 GETTABLEKS                       R9 R2 K7 ["EditingItemContext"]
       16 GETTABLEKS                       R10 R2 K8 ["LuaMeshEditingModuleContext"]
       18 NAMECALL                         R11 R10 K9 ["getOuterCageContext"]
       20 CALL                             R11 1 1
       21 NAMECALL                         R12 R10 K10 ["getInnerCageContext"]
       23 CALL                             R12 1 1
       24 GETTABLEKS                       R13 R2 K11 ["Analytics"]
       26 GETTABLEKS                       R14 R0 K12 ["mannequin"]
       28 GETTABLEKS                       R14 R14 K13 ["model"]
       30 GETTABLEKS                       R15 R0 K12 ["mannequin"]
       32 GETTABLEKS                       R15 R15 K14 ["sourceDisplayItem"]
       34 GETTABLEKS                       R16 R0 K12 ["mannequin"]
       36 GETTABLEKS                       R16 R16 K15 ["displayItem"]
       38 GETUPVAL                         R17 0
       39 GETTABLEKS                       R17 R17 K16 ["hasAnyCage"]
       41 MOVE                             R18 R16
       42 CALL                             R17 1 1
       43 JUMPIF                           R17 ; [+6]
       44 LOADB                            R17 1
       45 SETTABLEKS                       R17 R14 K17 ["Archivable"]
       47 LOADB                            R17 1
       48 SETTABLEKS                       R17 R16 K17 ["Archivable"]
       50 GETUPVAL                         R17 1
       51 MOVE                             R19 R14
       52 MOVE                             R20 R15
       53 LOADB                            R21 1
       54 NEWCLOSURE                       R22 P0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R16
       58 CAPTURE                          VAL R4
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R12
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R13
       68 CAPTURE                          UPVAL U1
       69 CAPTURE                          VAL R14
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          UPVAL U4
       72 NAMECALL                         R17 R17 K18 ["positionAvatarNextTo"]
       74 CALL                             R17 5 0
       75 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 1
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["sourceItem"]
        3 JUMPIFEQ                         R0 R1 ; [+88]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["mannequin"]
        8 JUMPIFNOT                        R1 ; [+10]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["mannequin"]
       12 NAMECALL                         R1 R1 K2 ["destroy"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 0
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K1 ["mannequin"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K3 ["props"]
       22 GETTABLEKS                       R1 R1 K4 ["EditingItemContext"]
       24 LOADNIL                          R3
       25 NAMECALL                         R1 R1 K5 ["setSourceItemWithUniqueDeformerNames"]
       27 CALL                             R1 2 0
       28 JUMPIFNOT                        R0 ; [+63]
       29 LOADNIL                          R1
       30 GETUPVAL                         R2 1
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+11]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K3 ["props"]
       36 GETTABLEKS                       R2 R2 K6 ["MannequinContext"]
       38 MOVE                             R4 R0
       39 NAMECALL                         R2 R2 K7 ["createMannequinForClothing"]
       41 CALL                             R2 2 1
       42 MOVE                             R1 R2
       43 JUMP                             ; [+9]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K3 ["props"]
       47 GETTABLEKS                       R2 R2 K6 ["MannequinContext"]
       49 NAMECALL                         R2 R2 K8 ["createMannequinModel"]
       51 CALL                             R2 1 1
       52 MOVE                             R1 R2
       53 GETUPVAL                         R2 0
       54 GETUPVAL                         R3 2
       55 GETTABLEKS                       R3 R3 K9 ["new"]
       57 MOVE                             R4 R0
       58 MOVE                             R5 R1
       59 GETUPVAL                         R6 3
       60 NEWCLOSURE                       R7 P0
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U0
       63 CALL                             R3 4 1
       64 SETTABLEKS                       R3 R2 K1 ["mannequin"]
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R2 R2 K3 ["props"]
       69 GETTABLEKS                       R2 R2 K4 ["EditingItemContext"]
       71 GETUPVAL                         R4 0
       72 GETTABLEKS                       R4 R4 K1 ["mannequin"]
       74 GETTABLEKS                       R4 R4 K10 ["sourceDisplayItem"]
       76 NAMECALL                         R2 R2 K5 ["setSourceItemWithUniqueDeformerNames"]
       78 CALL                             R2 2 0
       79 GETUPVAL                         R2 0
       80 GETTABLEKS                       R2 R2 K3 ["props"]
       82 GETTABLEKS                       R2 R2 K11 ["SetAccessoryTypeInfo"]
       84 GETUPVAL                         R3 5
       85 GETTABLEKS                       R3 R3 K12 ["None"]
       87 CALL                             R2 1 0
       88 GETUPVAL                         R2 4
       89 GETUPVAL                         R3 0
       90 LOADB                            R4 0
       91 CALL                             R2 2 0
       92 GETUPVAL                         R1 0
       93 SETTABLEKS                       R0 R1 K0 ["sourceItem"]
       95 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["mannequin"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["editingItem"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["sourceItemWithUniqueDeformerNames"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 SETTABLEKS                       R1 R0 K3 ["onSourceItemChanged"]
       18 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["EditingCage"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["EDIT_MODE"]
        7 GETTABLEKS                       R3 R3 K3 ["Mesh"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+3]
       11 LOADNIL                          R3
       12 RETURN                           R3 1
       13 GETTABLEKS                       R3 R1 K4 ["LuaMeshEditingModuleContext"]
       15 GETIMPORT                        R5 K8 [Enum.CageType.Outer]
       17 JUMPIFNOTEQ                      R2 R5 ; [+5]
       19 NAMECALL                         R4 R3 K9 ["getOuterCageContext"]
       21 CALL                             R4 1 1
       22 JUMP                             ; [+3]
       23 NAMECALL                         R4 R3 K10 ["getInnerCageContext"]
       25 CALL                             R4 1 1
       26 JUMPIFNOT                        R4 ; [+13]
       27 GETTABLEKS                       R5 R0 K11 ["mannequin"]
       29 JUMPIFNOT                        R5 ; [+10]
       30 GETTABLEKS                       R5 R0 K11 ["mannequin"]
       32 LOADN                            R7 1
       33 NAMECALL                         R8 R4 K12 ["getVertexData"]
       35 CALL                             R8 1 1
       36 MOVE                             R9 R2
       37 NAMECALL                         R5 R5 K13 ["deformLayer"]
       39 CALL                             R5 4 0
       40 LOADNIL                          R5
       41 RETURN                           R5 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["EditingItemContext"]
        4 NAMECALL                         R2 R2 K2 ["getSourceItemChangedSignal"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R0 K3 ["onSourceItemChanged"]
        9 NAMECALL                         R2 R2 K4 ["Connect"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R0 K5 ["SourceItemChangedHandle"]
       14 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["AccessoryTypeInfo"]
        4 JUMPIFNOT                        R2 ; [+38]
        5 GETTABLEKS                       R3 R1 K1 ["AccessoryTypeInfo"]
        7 JUMPIFEQ                         R3 R2 ; [+35]
        9 GETTABLEKS                       R3 R0 K2 ["mannequin"]
       11 JUMPIFNOT                        R3 ; [+31]
       12 JUMPIFNOT                        R2 ; [+25]
       13 GETTABLEKS                       R3 R0 K3 ["sourceItem"]
       15 JUMPIFNOT                        R3 ; [+4]
       16 GETTABLEKS                       R3 R0 K3 ["sourceItem"]
       18 GETTABLEKS                       R3 R3 K4 ["Parent"]
       20 JUMPIFNOT                        R3 ; [+17]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["isAvatar"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 1
       26 JUMPIFNOT                        R4 ; [+11]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R6 R2 K6 ["Name"]
       30 MOVE                             R7 R3
       31 GETTABLEKS                       R8 R0 K3 ["sourceItem"]
       33 NAMECALL                         R4 R4 K7 ["getItemCFrameRelativeToAttachmentPoint"]
       35 CALL                             R4 4 1
       36 SETTABLEKS                       R4 R0 K8 ["itemCFrameLocalToAttachmentPoint"]
       38 GETTABLEKS                       R3 R0 K2 ["mannequin"]
       40 NAMECALL                         R3 R3 K9 ["reset"]
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["mannequin"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["mannequin"]
        5 NAMECALL                         R1 R1 K1 ["destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["mannequin"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["sourceItem"]
       14 GETTABLEKS                       R1 R0 K3 ["SourceItemChangedHandle"]
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETTABLEKS                       R1 R0 K3 ["SourceItemChangedHandle"]
       19 NAMECALL                         R1 R1 K4 ["Disconnect"]
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K3 ["SourceItemChangedHandle"]
       25 GETTABLEKS                       R1 R0 K5 ["outerCageDataChanged"]
       27 JUMPIFNOT                        R1 ; [+8]
       28 GETTABLEKS                       R1 R0 K5 ["outerCageDataChanged"]
       30 NAMECALL                         R1 R1 K4 ["Disconnect"]
       32 CALL                             R1 1 0
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K5 ["outerCageDataChanged"]
       36 GETTABLEKS                       R1 R0 K6 ["innerCageDataChanged"]
       38 JUMPIFNOT                        R1 ; [+8]
       39 GETTABLEKS                       R1 R0 K6 ["innerCageDataChanged"]
       41 NAMECALL                         R1 R1 K4 ["Disconnect"]
       43 CALL                             R1 1 0
       44 LOADNIL                          R1
       45 SETTABLEKS                       R1 R0 K6 ["innerCageDataChanged"]
       47 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["selectItem"]
        2 DUPTABLE                         R3 K6 [{"AccessoryTypeInfo", "AttachmentPoint", "ItemSize", "MeshScale", "EditingCage"}]
        3 GETTABLEKS                       R4 R2 K7 ["accessoryTypeInfo"]
        5 SETTABLEKS                       R4 R3 K1 ["AccessoryTypeInfo"]
        7 GETTABLEKS                       R4 R2 K8 ["attachmentPoint"]
        9 SETTABLEKS                       R4 R3 K2 ["AttachmentPoint"]
       11 GETTABLEKS                       R4 R2 K9 ["size"]
       13 SETTABLEKS                       R4 R3 K3 ["ItemSize"]
       15 GETTABLEKS                       R4 R2 K10 ["meshScale"]
       17 SETTABLEKS                       R4 R3 K4 ["MeshScale"]
       19 GETTABLEKS                       R4 R2 K11 ["editingCage"]
       21 SETTABLEKS                       R4 R3 K5 ["EditingCage"]
       23 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K3 [{"SetAccessoryTypeInfo", "SelectEditingItem", "VerifyBounds"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetAccessoryTypeInfo"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SelectEditingItem"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["VerifyBounds"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InsertService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ChangeHistoryService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 GETTABLEKS                       R3 R3 K6 ["Workspace"]
       23 GETIMPORT                        R4 K8 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["Parent"]
       29 GETTABLEKS                       R4 R4 K9 ["Parent"]
       31 GETTABLEKS                       R4 R4 K9 ["Parent"]
       33 GETIMPORT                        R5 K11 [require]
       35 GETTABLEKS                       R6 R4 K12 ["Packages"]
       37 GETTABLEKS                       R6 R6 K13 ["Cryo"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K11 [require]
       42 GETTABLEKS                       R7 R4 K12 ["Packages"]
       44 GETTABLEKS                       R7 R7 K14 ["Roact"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K11 [require]
       49 GETTABLEKS                       R8 R4 K12 ["Packages"]
       51 GETTABLEKS                       R8 R8 K15 ["RoactRodux"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K11 [require]
       56 GETTABLEKS                       R9 R4 K12 ["Packages"]
       58 GETTABLEKS                       R9 R9 K16 ["AvatarToolsShared"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R8 K17 ["Util"]
       63 GETTABLEKS                       R9 R9 K18 ["AccessoryAndBodyToolShared"]
       65 GETTABLEKS                       R10 R9 K19 ["Mannequin"]
       67 GETTABLEKS                       R11 R9 K20 ["PreviewUtil"]
       69 GETTABLEKS                       R12 R9 K21 ["AvatarUtil"]
       71 GETTABLEKS                       R13 R9 K22 ["ItemCharacteristics"]
       73 GETTABLEKS                       R14 R9 K23 ["AccessoryUtil"]
       75 GETTABLEKS                       R15 R8 K24 ["Contexts"]
       77 GETTABLEKS                       R15 R15 K25 ["EditingItemContext"]
       79 GETTABLEKS                       R16 R8 K24 ["Contexts"]
       81 GETTABLEKS                       R16 R16 K26 ["LuaMeshEditingModuleContext"]
       83 GETTABLEKS                       R17 R8 K24 ["Contexts"]
       85 GETTABLEKS                       R17 R17 K27 ["MannequinContext"]
       87 GETIMPORT                        R18 K11 [require]
       89 GETTABLEKS                       R19 R4 K28 ["Src"]
       91 GETTABLEKS                       R19 R19 K29 ["Actions"]
       93 GETTABLEKS                       R19 R19 K30 ["SetAccessoryTypeInfo"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K11 [require]
       98 GETTABLEKS                       R20 R4 K28 ["Src"]
      100 GETTABLEKS                       R20 R20 K31 ["Thunks"]
      102 GETTABLEKS                       R20 R20 K32 ["VerifyBounds"]
      104 CALL                             R19 1 1
      105 GETIMPORT                        R20 K11 [require]
      107 GETTABLEKS                       R21 R4 K28 ["Src"]
      109 GETTABLEKS                       R21 R21 K31 ["Thunks"]
      111 GETTABLEKS                       R21 R21 K33 ["SelectEditingItem"]
      113 CALL                             R20 1 1
      114 GETIMPORT                        R21 K11 [require]
      116 GETTABLEKS                       R22 R4 K28 ["Src"]
      118 GETTABLEKS                       R22 R22 K17 ["Util"]
      120 GETTABLEKS                       R22 R22 K34 ["Constants"]
      122 CALL                             R21 1 1
      123 GETIMPORT                        R22 K11 [require]
      125 GETTABLEKS                       R23 R4 K28 ["Src"]
      127 GETTABLEKS                       R23 R23 K17 ["Util"]
      129 GETTABLEKS                       R23 R23 K35 ["AnalyticsGlobals"]
      131 CALL                             R22 1 1
      132 GETIMPORT                        R23 K11 [require]
      134 GETTABLEKS                       R24 R4 K12 ["Packages"]
      136 GETTABLEKS                       R24 R24 K36 ["Framework"]
      138 CALL                             R23 1 1
      139 GETTABLEKS                       R24 R23 K37 ["ContextServices"]
      141 GETTABLEKS                       R25 R24 K38 ["withContext"]
      143 GETTABLEKS                       R26 R23 K17 ["Util"]
      145 GETTABLEKS                       R27 R26 K39 ["Typecheck"]
      147 GETTABLEKS                       R28 R8 K40 ["Flags"]
      149 GETTABLEKS                       R28 R28 K41 ["GetFFlagUseModelCageForAccessoryFittingTool"]
      151 GETTABLEKS                       R29 R6 K42 ["PureComponent"]
      153 LOADK                            R31 K43 ["SelectedEditingItem"]
      154 NAMECALL                         R29 R29 K44 ["extend"]
      156 CALL                             R29 2 1
      157 GETTABLEKS                       R30 R27 K45 ["wrap"]
      159 MOVE                             R31 R29
      160 GETIMPORT                        R32 K8 [script]
      162 CALL                             R30 2 0
      163 DUPCLOSURE                       R30 K46 [PROTO_0]
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R21
      166 DUPCLOSURE                       R31 K47 [PROTO_3]
      167 CAPTURE                          VAL R30
      168 DUPCLOSURE                       R32 K48 [PROTO_5]
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R31
      173 CAPTURE                          VAL R2
      174 DUPCLOSURE                       R33 K49 [PROTO_8]
      175 CAPTURE                          VAL R28
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R32
      179 CAPTURE                          VAL R5
      180 SETTABLEKS                       R33 R29 K50 ["init"]
      182 DUPCLOSURE                       R33 K51 [PROTO_9]
      183 CAPTURE                          VAL R21
      184 SETTABLEKS                       R33 R29 K52 ["render"]
      186 DUPCLOSURE                       R33 K53 [PROTO_10]
      187 SETTABLEKS                       R33 R29 K54 ["didMount"]
      189 DUPCLOSURE                       R33 K55 [PROTO_11]
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R14
      192 SETTABLEKS                       R33 R29 K56 ["didUpdate"]
      194 DUPCLOSURE                       R33 K57 [PROTO_12]
      195 SETTABLEKS                       R33 R29 K58 ["willUnmount"]
      197 DUPCLOSURE                       R33 K59 [PROTO_13]
      198 DUPCLOSURE                       R34 K60 [PROTO_17]
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R20
      201 CAPTURE                          VAL R19
      202 MOVE                             R35 R25
      203 DUPTABLE                         R36 K62 [{"Analytics", "EditingItemContext", "LuaMeshEditingModuleContext", "MannequinContext"}]
      204 GETTABLEKS                       R37 R24 K61 ["Analytics"]
      206 SETTABLEKS                       R37 R36 K61 ["Analytics"]
      208 SETTABLEKS                       R15 R36 K25 ["EditingItemContext"]
      210 SETTABLEKS                       R16 R36 K26 ["LuaMeshEditingModuleContext"]
      212 SETTABLEKS                       R17 R36 K27 ["MannequinContext"]
      214 CALL                             R35 1 1
      215 MOVE                             R36 R29
      216 CALL                             R35 1 1
      217 MOVE                             R29 R35
      218 GETTABLEKS                       R35 R7 K63 ["connect"]
      220 MOVE                             R36 R33
      221 MOVE                             R37 R34
      222 CALL                             R35 2 1
      223 MOVE                             R36 R29
      224 CALL                             R35 1 -1
      225 RETURN                           R35 -1
