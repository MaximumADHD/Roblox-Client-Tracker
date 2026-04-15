PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [ipairs]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R2 R4 K2 ["previewClothing"]
        7 CALL                             R1 1 3
        8 FORGPREP_INEXT                   R1
        9 GETTABLEKS                       R6 R5 K3 ["model"]
       11 LOADK                            R9 K4 ["WrapLayer"]
       12 LOADB                            R10 1
       13 NAMECALL                         R7 R6 K5 ["FindFirstChildWhichIsA"]
       15 CALL                             R7 3 1
       16 JUMPIFNOT                        R7 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       19 MOVE                             R9 R0
       20 MOVE                             R10 R7
       21 GETIMPORT                        R8 K8 [table.insert]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R1 2 [inext] ; [-16]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K9 ["flattenLayerOrders"]
       29 MOVE                             R2 R0
       30 CALL                             R1 1 0
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R1 R2 K10 ["updateIdMap"]
       34 CALL                             R1 0 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["wrapLayerChanged"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["wrapLayerChanged"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["wrapLayerOrderBeforeChange"]
       10 RETURN                           R0 2
       11 LOADNIL                          R0
       12 LOADN                            R1 0
       13 GETIMPORT                        R2 K3 [ipairs]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R3 R5 K4 ["orderedLayers"]
       18 CALL                             R2 1 3
       19 FORGPREP_INEXT                   R2
       20 GETTABLEKS                       R7 R6 K5 ["Order"]
       22 JUMPIFEQ                         R7 R5 ; [+15]
       24 MOVE                             R0 R6
       25 LOADN                            R9 1
       26 GETUPVAL                         R12 0
       27 GETTABLEKS                       R11 R12 K4 ["orderedLayers"]
       29 LENGTH                           R10 R11
       30 FASTCALL3                        MATH_CLAMP R5 R9 R10
       32 MOVE                             R8 R5
       33 GETIMPORT                        R7 K8 [math.clamp]
       35 CALL                             R7 3 1
       36 MOVE                             R1 R7
       37 RETURN                           R0 2
       38 FORGLOOP                         R2 2 [inext] ; [-19]
       40 RETURN                           R0 2

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 JUMPIFLT                         R2 R1 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 GETIMPORT                        R5 K1 [ipairs]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R6 R8 K2 ["orderedLayers"]
       11 CALL                             R5 1 3
       12 FORGPREP_INEXT                   R5
       13 JUMPIFEQ                         R9 R0 ; [+28]
       15 JUMPIFNOTEQ                      R8 R2 ; [+9]
       17 JUMPIFNOT                        R4 ; [+7]
       18 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
       20 MOVE                             R11 R3
       21 MOVE                             R12 R0
       22 GETIMPORT                        R10 K5 [table.insert]
       24 CALL                             R10 2 0
       25 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       27 MOVE                             R11 R3
       28 MOVE                             R12 R9
       29 GETIMPORT                        R10 K5 [table.insert]
       31 CALL                             R10 2 0
       32 JUMPIFNOTEQ                      R8 R2 ; [+9]
       34 JUMPIF                           R4 ; [+7]
       35 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
       37 MOVE                             R11 R3
       38 MOVE                             R12 R0
       39 GETIMPORT                        R10 K5 [table.insert]
       41 CALL                             R10 2 0
       42 FORGLOOP                         R5 2 [inext] ; [-30]
       44 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ignoreSignals"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 LOADNIL                          R0
        6 LOADNIL                          R1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["findWrapLayerChanged"]
       10 CALL                             R2 0 2
       11 MOVE                             R0 R2
       12 MOVE                             R1 R3
       13 JUMPIFNOT                        R0 ; [+41]
       14 GETTABLEKS                       R3 R0 K2 ["Order"]
       16 LOADN                            R4 1
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R6 R7 K3 ["orderedLayers"]
       20 LENGTH                           R5 R6
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R2 K6 [math.clamp]
       24 CALL                             R2 3 1
       25 JUMPIFNOTEQ                      R2 R1 ; [+4]
       27 SETTABLEKS                       R1 R0 K2 ["Order"]
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K7 ["getNewOrderList"]
       33 MOVE                             R4 R0
       34 MOVE                             R5 R1
       35 MOVE                             R6 R2
       36 CALL                             R3 3 1
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R4 R5 K8 ["flattenLayerOrders"]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 0
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R4 R5 K9 ["updateIdMap"]
       45 CALL                             R4 0 0
       46 GETUPVAL                         R4 0
       47 DUPTABLE                         R6 K11 [{"temp"}]
       48 NEWTABLE                         R7 0 0
       50 SETTABLEKS                       R7 R6 K10 ["temp"]
       52 NAMECALL                         R4 R4 K12 ["setState"]
       54 CALL                             R4 2 0
       55 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+36]
        1 GETUPVAL                         R1 0
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R1 K0 ["ignoreSignals"]
        5 GETUPVAL                         R1 0
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K1 ["orderedLayers"]
       10 GETIMPORT                        R1 K3 [pairs]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 3
       14 FORGPREP_NEXT                    R1
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R8 R9 K1 ["orderedLayers"]
       18 LENGTH                           R7 R8
       19 ADDK                             R6 R7 K4 [1]
       20 SETTABLEKS                       R6 R5 K5 ["Order"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K1 ["orderedLayers"]
       25 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       27 MOVE                             R8 R5
       28 GETIMPORT                        R6 K8 [table.insert]
       30 CALL                             R6 2 0
       31 FORGLOOP                         R1 2 ; [-17]
       33 GETUPVAL                         R1 0
       34 LOADB                            R2 0
       35 SETTABLEKS                       R2 R1 K0 ["ignoreSignals"]
       37 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["orderedLayers"]
        3 LENGTH                           R2 R3
        4 LOADN                            R3 1
        5 JUMPIFLT                         R0 R3 ; [+4]
        7 ADDK                             R3 R2 K1 [1]
        8 JUMPIFNOTLT                      R3 R0 ; [+2]
       10 RETURN                           R0 0
       11 LOADN                            R3 1
       12 JUMPIFLT                         R1 R3 ; [+4]
       14 ADDK                             R3 R2 K1 [1]
       15 JUMPIFNOTLT                      R3 R1 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K0 ["orderedLayers"]
       21 ADDK                             R7 R2 K1 [1]
       22 SUB                              R6 R7 R1
       23 GETTABLE                         R4 R5 R6
       24 GETTABLEKS                       R3 R4 K2 ["Order"]
       26 GETUPVAL                         R4 0
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K0 ["orderedLayers"]
       30 ADDK                             R8 R2 K1 [1]
       31 SUB                              R7 R8 R0
       32 GETTABLE                         R5 R6 R7
       33 SETTABLEKS                       R5 R4 K3 ["wrapLayerChanged"]
       35 GETUPVAL                         R4 0
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K3 ["wrapLayerChanged"]
       39 GETTABLEKS                       R5 R6 K2 ["Order"]
       41 SETTABLEKS                       R5 R4 K4 ["wrapLayerOrderBeforeChange"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K3 ["wrapLayerChanged"]
       46 SETTABLEKS                       R3 R4 K2 ["Order"]
       48 GETUPVAL                         R4 0
       49 LOADNIL                          R5
       50 SETTABLEKS                       R5 R4 K3 ["wrapLayerChanged"]
       52 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["EditingItemContext"]
        5 NAMECALL                         R1 R1 K2 ["getItem"]
        7 CALL                             R1 1 1
        8 NEWTABLE                         R2 0 0
       10 GETIMPORT                        R3 K4 [ipairs]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R4 R6 K5 ["previewClothing"]
       15 CALL                             R3 1 3
       16 FORGPREP_INEXT                   R3
       17 GETTABLEKS                       R8 R7 K6 ["model"]
       19 LOADK                            R11 K7 ["WrapLayer"]
       20 LOADB                            R12 1
       21 NAMECALL                         R9 R8 K8 ["FindFirstChildWhichIsA"]
       23 CALL                             R9 3 1
       24 LOADB                            R10 1
       25 SETTABLEKS                       R10 R8 K9 ["Archivable"]
       27 MOVE                             R10 R1
       28 JUMPIFNOT                        R10 ; [+8]
       29 GETTABLEKS                       R11 R7 K10 ["id"]
       31 GETTABLEKS                       R12 R1 K11 ["Name"]
       33 JUMPIFEQ                         R11 R12 ; [+2]
       35 LOADB                            R10 0 +1
       36 LOADB                            R10 1
       37 JUMPIFNOT                        R9 ; [+31]
       38 DUPTABLE                         R11 K16 [{"Model", "TileSize", "LayoutOrder", "IsOn"}]
       39 SETTABLEKS                       R8 R11 K12 ["Model"]
       41 GETIMPORT                        R12 K19 [UDim2.new]
       43 LOADN                            R13 1
       44 LOADN                            R14 0
       45 LOADN                            R15 1
       46 LOADN                            R16 0
       47 CALL                             R12 4 1
       48 SETTABLEKS                       R12 R11 K13 ["TileSize"]
       50 GETUPVAL                         R16 0
       51 GETTABLEKS                       R15 R16 K21 ["orderedLayers"]
       53 LENGTH                           R14 R15
       54 ADDK                             R13 R14 K20 [1]
       55 GETTABLEKS                       R14 R9 K22 ["Order"]
       57 SUB                              R12 R13 R14
       58 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       60 SETTABLEKS                       R10 R11 K15 ["IsOn"]
       62 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
       64 MOVE                             R13 R2
       65 MOVE                             R14 R11
       66 GETIMPORT                        R12 K25 [table.insert]
       68 CALL                             R12 2 0
       69 FORGLOOP                         R3 2 [inext] ; [-53]
       71 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["mapClothingIdToLayerOrder"]
        5 GETIMPORT                        R0 K2 [ipairs]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R1 R3 K3 ["previewClothing"]
       10 CALL                             R0 1 3
       11 FORGPREP_INEXT                   R0
       12 GETTABLEKS                       R5 R4 K4 ["model"]
       14 GETTABLEKS                       R6 R4 K5 ["id"]
       16 LOADK                            R9 K6 ["WrapLayer"]
       17 LOADB                            R10 1
       18 NAMECALL                         R7 R5 K7 ["FindFirstChildWhichIsA"]
       20 CALL                             R7 3 1
       21 JUMPIFNOT                        R7 ; [+6]
       22 GETTABLEKS                       R8 R7 K8 ["Order"]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R9 R10 K0 ["mapClothingIdToLayerOrder"]
       27 SETTABLE                         R8 R9 R6
       28 FORGLOOP                         R0 2 [inext] ; [-17]
       30 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R2 R4 K2 ["mapClothingIdToLayerOrder"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 FASTCALL3                        TABLE_INSERT R0 R5 R4
       11 MOVE                             R7 R0
       12 MOVE                             R8 R5
       13 MOVE                             R9 R4
       14 GETIMPORT                        R6 K5 [table.insert]
       16 CALL                             R6 3 0
       17 FORGLOOP                         R1 2 ; [-9]
       19 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["order"]
        2 GETTABLEKS                       R4 R1 K0 ["order"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 0
        3 GETIMPORT                        R2 K1 [pairs]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R3 R5 K2 ["mapClothingIdToLayerOrder"]
        8 CALL                             R2 1 3
        9 FORGPREP_NEXT                    R2
       10 FASTCALL2                        MATH_MAX R1 R6 ; [+5]
       12 MOVE                             R8 R1
       13 MOVE                             R9 R6
       14 GETIMPORT                        R7 K5 [math.max]
       16 CALL                             R7 2 1
       17 MOVE                             R1 R7
       18 FORGLOOP                         R2 2 ; [-9]
       20 GETIMPORT                        R2 K7 [ipairs]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R3 R5 K8 ["previewClothing"]
       25 CALL                             R2 1 3
       26 FORGPREP_INEXT                   R2
       27 GETTABLEKS                       R7 R6 K9 ["id"]
       29 GETTABLEKS                       R8 R6 K10 ["model"]
       31 LOADK                            R11 K11 ["WrapLayer"]
       32 LOADB                            R12 1
       33 NAMECALL                         R9 R8 K12 ["FindFirstChildWhichIsA"]
       35 CALL                             R9 3 1
       36 JUMPIFNOT                        R9 ; [+34]
       37 JUMPIFNOT                        R7 ; [+21]
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R11 R12 K2 ["mapClothingIdToLayerOrder"]
       41 GETTABLE                         R10 R11 R7
       42 JUMPIFNOT                        R10 ; [+16]
       43 DUPTABLE                         R12 K15 [{"wrap", "order"}]
       44 SETTABLEKS                       R9 R12 K13 ["wrap"]
       46 GETUPVAL                         R15 0
       47 GETTABLEKS                       R14 R15 K2 ["mapClothingIdToLayerOrder"]
       49 GETTABLE                         R13 R14 R7
       50 SETTABLEKS                       R13 R12 K14 ["order"]
       52 FASTCALL2                        TABLE_INSERT R0 R12 ; [+4]
       54 MOVE                             R11 R0
       55 GETIMPORT                        R10 K18 [table.insert]
       57 CALL                             R10 2 0
       58 JUMP                             ; [+12]
       59 ADDK                             R1 R1 K19 [1]
       60 DUPTABLE                         R12 K15 [{"wrap", "order"}]
       61 SETTABLEKS                       R9 R12 K13 ["wrap"]
       63 SETTABLEKS                       R1 R12 K14 ["order"]
       65 FASTCALL2                        TABLE_INSERT R0 R12 ; [+4]
       67 MOVE                             R11 R0
       68 GETIMPORT                        R10 K18 [table.insert]
       70 CALL                             R10 2 0
       71 FORGLOOP                         R2 2 [inext] ; [-45]
       73 GETIMPORT                        R2 K21 [table.sort]
       75 MOVE                             R3 R0
       76 DUPCLOSURE                       R4 K22 [PROTO_9]
       77 CALL                             R2 2 0
       78 NEWTABLE                         R2 0 0
       80 GETIMPORT                        R3 K7 [ipairs]
       82 MOVE                             R4 R0
       83 CALL                             R3 1 3
       84 FORGPREP_INEXT                   R3
       85 GETTABLEKS                       R10 R7 K13 ["wrap"]
       87 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       89 MOVE                             R9 R2
       90 GETIMPORT                        R8 K18 [table.insert]
       92 CALL                             R8 2 0
       93 FORGLOOP                         R3 2 [inext] ; [-9]
       95 GETUPVAL                         R4 0
       96 GETTABLEKS                       R3 R4 K23 ["flattenLayerOrders"]
       98 MOVE                             R4 R2
       99 CALL                             R3 1 0
      100 GETUPVAL                         R4 0
      101 GETTABLEKS                       R3 R4 K24 ["updateIdMap"]
      103 CALL                             R3 0 0
      104 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["previewClothing"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["onOrderChangedSignals"]
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["orderedLayers"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K3 ["mapClothingIdToLayerOrder"]
       16 LOADB                            R1 0
       17 SETTABLEKS                       R1 R0 K4 ["ignoreSignals"]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K5 ["wrapLayerChanged"]
       22 LOADN                            R1 0
       23 SETTABLEKS                       R1 R0 K6 ["wrapLayerOrderBeforeChange"]
       25 GETTABLEKS                       R2 R0 K7 ["props"]
       27 GETTABLEKS                       R1 R2 K8 ["PreviewClothing"]
       29 JUMPIFNOT                        R1 ; [+6]
       30 GETTABLEKS                       R2 R0 K7 ["props"]
       32 GETTABLEKS                       R1 R2 K8 ["PreviewClothing"]
       34 SETTABLEKS                       R1 R0 K0 ["previewClothing"]
       36 NEWCLOSURE                       R1 P0
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R1 R0 K9 ["sortNewLayers"]
       40 NEWCLOSURE                       R1 P1
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R1 R0 K10 ["findWrapLayerChanged"]
       44 NEWCLOSURE                       R1 P2
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R1 R0 K11 ["getNewOrderList"]
       48 NEWCLOSURE                       R1 P3
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R1 R0 K12 ["onOrderChangedFromProperty"]
       52 NEWCLOSURE                       R1 P4
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R1 R0 K13 ["flattenLayerOrders"]
       56 NEWCLOSURE                       R1 P5
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R1 R0 K14 ["onLayerDragged"]
       60 NEWCLOSURE                       R1 P6
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R1 R0 K15 ["getClothingTileProps"]
       64 NEWCLOSURE                       R1 P7
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R1 R0 K16 ["updateIdMap"]
       68 NEWCLOSURE                       R1 P8
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R1 R0 K17 ["getOrderedIdList"]
       72 NEWCLOSURE                       R1 P9
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R1 R0 K18 ["updateNewLayersWithOldOrder"]
       76 GETTABLEKS                       R1 R0 K9 ["sortNewLayers"]
       78 CALL                             R1 0 0
       79 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [ipairs]
        4 MOVE                             R5 R1
        5 CALL                             R4 1 3
        6 FORGPREP_INEXT                   R4
        7 GETTABLEKS                       R9 R8 K2 ["id"]
        9 SETTABLE                         R8 R3 R9
       10 FORGLOOP                         R4 2 [inext] ; [-4]
       12 GETIMPORT                        R4 K1 [ipairs]
       14 MOVE                             R5 R2
       15 CALL                             R4 1 3
       16 FORGPREP_INEXT                   R4
       17 GETTABLEKS                       R10 R8 K2 ["id"]
       19 GETTABLE                         R9 R3 R10
       20 JUMPIF                           R9 ; [+3]
       21 GETTABLEKS                       R9 R8 K2 ["id"]
       23 RETURN                           R9 1
       24 FORGLOOP                         R4 2 [inext] ; [-8]
       26 RETURN                           R0 0

PROTO_13:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["findNewlyAddedLayerId"]
        4 CALL                             R3 3 1
        5 JUMPIFNOT                        R3 ; [+9]
        6 GETTABLEKS                       R5 R0 K1 ["orderedLayers"]
        8 LENGTH                           R4 R5
        9 GETTABLEKS                       R6 R0 K2 ["props"]
       11 GETTABLEKS                       R5 R6 K3 ["Capacity"]
       13 JUMPIFNOTLE                      R4 R5 ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R4 R0 K4 ["getOrderedIdList"]
       18 CALL                             R4 0 1
       19 GETTABLEKS                       R6 R0 K2 ["props"]
       21 GETTABLEKS                       R5 R6 K5 ["EditingItemContext"]
       23 NAMECALL                         R5 R5 K6 ["getItem"]
       25 CALL                             R5 1 1
       26 LENGTH                           R6 R4
       27 GETTABLE                         R7 R4 R6
       28 GETTABLEKS                       R8 R5 K7 ["Name"]
       30 JUMPIFEQ                         R7 R8 ; [+4]
       32 GETTABLE                         R7 R4 R6
       33 JUMPIFNOTEQ                      R7 R3 ; [+3]
       35 SUBK                             R6 R6 K8 [1]
       36 JUMPBACK                         ; [-10]
       37 GETTABLEKS                       R8 R0 K2 ["props"]
       39 GETTABLEKS                       R7 R8 K9 ["OnCapacityReached"]
       41 GETTABLE                         R8 R4 R6
       42 CALL                             R7 1 0
       43 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R1 K0 ["PreviewClothing"]
        2 JUMPIFNOT                        R3 ; [+27]
        3 GETTABLEKS                       R3 R1 K0 ["PreviewClothing"]
        5 GETTABLEKS                       R4 R0 K1 ["previewClothing"]
        7 JUMPIFEQ                         R3 R4 ; [+22]
        9 NAMECALL                         R3 R0 K2 ["disconnectSignals"]
       11 CALL                             R3 1 0
       12 GETTABLEKS                       R3 R0 K1 ["previewClothing"]
       14 GETTABLEKS                       R4 R1 K0 ["PreviewClothing"]
       16 SETTABLEKS                       R4 R0 K1 ["previewClothing"]
       18 GETTABLEKS                       R4 R0 K3 ["updateNewLayersWithOldOrder"]
       20 CALL                             R4 0 0
       21 MOVE                             R6 R3
       22 GETTABLEKS                       R7 R1 K0 ["PreviewClothing"]
       24 NAMECALL                         R4 R0 K4 ["checkCapacity"]
       26 CALL                             R4 3 0
       27 NAMECALL                         R4 R0 K5 ["connectSignals"]
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["onOrderChangedSignals"]
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETIMPORT                        R1 K2 [ipairs]
        5 GETTABLEKS                       R2 R0 K0 ["onOrderChangedSignals"]
        7 CALL                             R1 1 3
        8 FORGPREP_INEXT                   R1
        9 NAMECALL                         R6 R5 K3 ["Disconnect"]
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 [inext] ; [-4]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K0 ["onOrderChangedSignals"]
       18 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["onOrderChangedSignals"]
        4 GETTABLEKS                       R1 R0 K1 ["previewClothing"]
        6 JUMPIFNOT                        R1 ; [+28]
        7 GETIMPORT                        R1 K3 [ipairs]
        9 GETTABLEKS                       R2 R0 K1 ["previewClothing"]
       11 CALL                             R1 1 3
       12 FORGPREP_INEXT                   R1
       13 GETTABLEKS                       R6 R5 K4 ["model"]
       15 LOADK                            R9 K5 ["WrapLayer"]
       16 LOADB                            R10 1
       17 NAMECALL                         R7 R6 K6 ["FindFirstChildWhichIsA"]
       19 CALL                             R7 3 1
       20 JUMPIFNOT                        R7 ; [+12]
       21 GETTABLEKS                       R8 R0 K0 ["onOrderChangedSignals"]
       23 LOADK                            R11 K7 ["Order"]
       24 NAMECALL                         R9 R7 K8 ["GetPropertyChangedSignal"]
       26 CALL                             R9 2 1
       27 GETTABLEKS                       R11 R0 K9 ["onOrderChangedFromProperty"]
       29 NAMECALL                         R9 R9 K10 ["Connect"]
       31 CALL                             R9 2 1
       32 SETTABLE                         R9 R8 R4
       33 FORGLOOP                         R1 2 [inext] ; [-21]
       35 RETURN                           R0 0

PROTO_17:
        0 RETURN                           R0 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R3 R1 K2 ["AnchorPoint"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["Capacity"]
       10 GETTABLEKS                       R6 R1 K5 ["ShowEmptyBoxes"]
       12 GETTABLEKS                       R7 R1 K6 ["TileComponent"]
       14 GETTABLEKS                       R8 R0 K7 ["getClothingTileProps"]
       16 CALL                             R8 0 1
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R9 R10 K8 ["createElement"]
       20 GETUPVAL                         R10 1
       21 DUPTABLE                         R11 K12 [{"AnchorPoint", "Size", "Position", "TileList", "Capacity", "OnOrderChanged", "ShowEmptyBoxes", "TileComponent", "GetTileProps"}]
       22 SETTABLEKS                       R3 R11 K2 ["AnchorPoint"]
       24 SETTABLEKS                       R2 R11 K1 ["Size"]
       26 SETTABLEKS                       R4 R11 K3 ["Position"]
       28 SETTABLEKS                       R8 R11 K9 ["TileList"]
       30 SETTABLEKS                       R5 R11 K4 ["Capacity"]
       32 GETTABLEKS                       R12 R0 K13 ["onLayerDragged"]
       34 SETTABLEKS                       R12 R11 K10 ["OnOrderChanged"]
       36 SETTABLEKS                       R6 R11 K5 ["ShowEmptyBoxes"]
       38 SETTABLEKS                       R7 R11 K6 ["TileComponent"]
       40 DUPCLOSURE                       R12 K14 [PROTO_17]
       41 SETTABLEKS                       R12 R11 K11 ["GetTileProps"]
       43 CALL                             R9 2 -1
       44 RETURN                           R9 -1

PROTO_19:
        0 NAMECALL                         R1 R0 K0 ["connectSignals"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 NAMECALL                         R1 R0 K0 ["disconnectSignals"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["RoactRodux"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R6 R0 K7 ["Contexts"]
       23 GETTABLEKS                       R5 R6 K8 ["EditingItemContext"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R8 R0 K9 ["Util"]
       30 GETTABLEKS                       R7 R8 K10 ["AccessoryAndBodyToolShared"]
       32 GETTABLEKS                       R6 R7 K11 ["Constants"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K4 [require]
       37 GETTABLEKS                       R7 R1 K12 ["Framework"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R6 K13 ["ContextServices"]
       42 GETTABLEKS                       R8 R7 K14 ["withContext"]
       44 GETTABLEKS                       R10 R6 K15 ["UI"]
       46 GETTABLEKS                       R9 R10 K16 ["DraggableTileList"]
       48 GETTABLEKS                       R10 R2 K17 ["PureComponent"]
       50 LOADK                            R12 K18 ["LayerOrderManager"]
       51 NAMECALL                         R10 R10 K19 ["extend"]
       53 CALL                             R10 2 1
       54 DUPCLOSURE                       R11 K20 [PROTO_11]
       55 SETTABLEKS                       R11 R10 K21 ["init"]
       57 DUPCLOSURE                       R11 K22 [PROTO_12]
       58 SETTABLEKS                       R11 R10 K23 ["findNewlyAddedLayerId"]
       60 DUPCLOSURE                       R11 K24 [PROTO_13]
       61 SETTABLEKS                       R11 R10 K25 ["checkCapacity"]
       63 DUPCLOSURE                       R11 K26 [PROTO_14]
       64 SETTABLEKS                       R11 R10 K27 ["willUpdate"]
       66 DUPCLOSURE                       R11 K28 [PROTO_15]
       67 SETTABLEKS                       R11 R10 K29 ["disconnectSignals"]
       69 DUPCLOSURE                       R11 K30 [PROTO_16]
       70 SETTABLEKS                       R11 R10 K31 ["connectSignals"]
       72 DUPCLOSURE                       R11 K32 [PROTO_18]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R9
       75 SETTABLEKS                       R11 R10 K33 ["render"]
       77 DUPCLOSURE                       R11 K34 [PROTO_19]
       78 SETTABLEKS                       R11 R10 K35 ["didMount"]
       80 DUPCLOSURE                       R11 K36 [PROTO_20]
       81 SETTABLEKS                       R11 R10 K37 ["willUnmount"]
       83 MOVE                             R11 R8
       84 DUPTABLE                         R12 K39 [{"Stylizer", "EditingItemContext"}]
       85 GETTABLEKS                       R13 R7 K38 ["Stylizer"]
       87 SETTABLEKS                       R13 R12 K38 ["Stylizer"]
       89 SETTABLEKS                       R4 R12 K8 ["EditingItemContext"]
       91 CALL                             R11 1 1
       92 MOVE                             R12 R10
       93 CALL                             R11 1 1
       94 MOVE                             R10 R11
       95 RETURN                           R10 1
