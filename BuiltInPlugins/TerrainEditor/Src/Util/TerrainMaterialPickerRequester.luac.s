PROTO_0:
        0 DUPTABLE                         R3 K2 [{"communication", "onSlotSelected"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K3 ["new"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K4 ["MATERIAL_PICKER_CPC_ID"]
        7 MOVE                             R6 R1
        8 CALL                             R4 2 1
        9 SETTABLEKS                       R4 R3 K0 ["communication"]
       11 SETTABLEKS                       R0 R3 K1 ["onSlotSelected"]
       13 GETUPVAL                         R4 2
       14 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       16 GETIMPORT                        R2 K6 [setmetatable]
       18 CALL                             R2 2 1
       19 RETURN                           R2 1

PROTO_1:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["requestId"]
        3 GETTABLEKS                       R1 R0 K1 ["responseConnection"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K1 ["responseConnection"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["responseConnection"]
       14 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["cancel"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["requestId"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+12]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["isValidResponse"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETTABLEKS                       R1 R0 K0 ["requestId"]
       14 GETUPVAL                         R2 1
       15 JUMPIFEQ                         R1 R2 ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R1 R0 K2 ["outcome"]
       20 JUMPIFNOTEQKS                    R1 K3 ["selected"] ; [+12]
       22 GETUPVAL                         R1 0
       23 NAMECALL                         R1 R1 K4 ["cancel"]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K5 ["onSlotSelected"]
       29 GETTABLEKS                       R2 R0 K6 ["slotIndex"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R1 R0 K2 ["outcome"]
       35 JUMPIFNOTEQKS                    R1 K7 ["slotCreated"] ; [+8]
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K5 ["onSlotSelected"]
       40 GETTABLEKS                       R2 R0 K6 ["slotIndex"]
       42 CALL                             R1 1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R1 0
       45 NAMECALL                         R1 R1 K4 ["cancel"]
       47 CALL                             R1 1 0
       48 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["communication"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CPC_CALLBACKS"]
        6 GETTABLEKS                       R2 R2 K2 ["OPEN_MATERIAL_PICKER"]
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R0 R0 K3 ["Invoke"]
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1

PROTO_5:
        0 LOADN                            R2 1
        1 LOADN                            R0 3
        2 LOADN                            R1 1
        3 FORNPREP                         R0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["requestId"]
        7 GETUPVAL                         R4 1
        8 JUMPIFEQ                         R3 R4 ; [+2]
       10 RETURN                           R0 0
       11 GETIMPORT                        R3 K2 [pcall]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CALL                             R3 1 2
       18 JUMPIFNOT                        R3 ; [+6]
       19 JUMPIF                           R4 ; [+4]
       20 GETUPVAL                         R5 0
       21 NAMECALL                         R5 R5 K3 ["cancel"]
       23 CALL                             R5 1 0
       24 RETURN                           R0 0
       25 LOADN                            R5 3
       26 JUMPIFNOTLT                      R2 R5 ; [+5]
       28 GETIMPORT                        R5 K6 [task.wait]
       30 LOADK                            R6 K7 [0.1]
       31 CALL                             R5 1 0
       32 FORNLOOP                         R0
       33 GETUPVAL                         R0 0
       34 NAMECALL                         R0 R0 K3 ["cancel"]
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R2 R0 K0 ["cancel"]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 0
        4 LOADB                            R4 0
        5 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        7 CALL                             R2 2 1
        8 DUPTABLE                         R3 K7 [{"requestId", "selectedSlotIndex", "allowAir", "allowWater", "anchorWidgetUri"}]
        9 SETTABLEKS                       R2 R3 K2 ["requestId"]
       11 GETTABLEKS                       R4 R1 K3 ["selectedSlotIndex"]
       13 SETTABLEKS                       R4 R3 K3 ["selectedSlotIndex"]
       15 GETTABLEKS                       R4 R1 K4 ["allowAir"]
       17 SETTABLEKS                       R4 R3 K4 ["allowAir"]
       19 GETTABLEKS                       R4 R1 K5 ["allowWater"]
       21 SETTABLEKS                       R4 R3 K5 ["allowWater"]
       23 GETTABLEKS                       R4 R1 K6 ["anchorWidgetUri"]
       25 SETTABLEKS                       R4 R3 K6 ["anchorWidgetUri"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K8 ["isValidRequest"]
       30 MOVE                             R6 R3
       31 CALL                             R5 1 1
       32 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       34 LOADK                            R6 K9 ["Invalid Terrain material picker request"]
       35 GETIMPORT                        R4 K11 [assert]
       37 CALL                             R4 2 0
       38 SETTABLEKS                       R2 R0 K2 ["requestId"]
       40 GETTABLEKS                       R4 R0 K12 ["communication"]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R6 R6 K13 ["CPC_EVENTS"]
       45 GETTABLEKS                       R6 R6 K14 ["MATERIAL_PICKER_RESPONSE"]
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U1
       51 NAMECALL                         R4 R4 K15 ["Connect"]
       53 CALL                             R4 3 1
       54 SETTABLEKS                       R4 R0 K16 ["responseConnection"]
       56 GETIMPORT                        R4 K19 [task.spawn]
       58 NEWCLOSURE                       R5 P1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          VAL R3
       63 CALL                             R4 1 0
       64 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["TerrainPalette"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["SharedPluginConstants"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R3 R3 K10 ["TERRAIN"]
       30 GETTABLEKS                       R4 R2 K11 ["TerrainMaterialPickerProtocol"]
       32 GETTABLEKS                       R5 R1 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["CrossPluginCommunication"]
       36 GETIMPORT                        R6 K15 [game]
       38 LOADK                            R8 K16 ["HttpService"]
       39 NAMECALL                         R6 R6 K17 ["GetService"]
       41 CALL                             R6 2 1
       42 NEWTABLE                         R7 8 0
       44 SETTABLEKS                       R7 R7 K18 ["__index"]
       46 DUPCLOSURE                       R8 K19 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R7
       50 SETTABLEKS                       R8 R7 K20 ["new"]
       52 DUPCLOSURE                       R8 K21 [PROTO_1]
       53 SETTABLEKS                       R8 R7 K22 ["cancel"]
       55 DUPCLOSURE                       R8 K23 [PROTO_2]
       56 SETTABLEKS                       R8 R7 K24 ["destroy"]
       58 DUPCLOSURE                       R8 K25 [PROTO_6]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R8 R7 K26 ["request"]
       64 RETURN                           R7 1
