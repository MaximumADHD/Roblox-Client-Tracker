PROTO_0:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 NAMECALL                         R6 R1 K0 ["isShiftKeyDown"]
        3 CALL                             R6 1 1
        4 GETTABLE                         R4 R5 R6
        5 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K3 [table.insert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R4 1
       12 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       14 MOVE                             R3 R0
       15 GETIMPORT                        R2 K3 [table.insert]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K2 [table.insert]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["DraggerFramework"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 DUPTABLE                         R2 K8 [{["Hotkey"] = "H", ["LabelLocEntry"] = "ToggleHelp"}]
       10 DUPCLOSURE                       R3 K9 [PROTO_0]
       11 CAPTURE                          VAL R2
       12 SETTABLEKS                       R3 R0 K10 ["addHelp"]
       14 GETIMPORT                        R3 K13 [table.freeze]
       16 NEWTABLE                         R4 2 0
       18 LOADB                            R5 0
       19 DUPTABLE                         R6 K16 [{["Hotkey"] = "⬇Shift", ["LabelLocEntry"] = "DisableSnap"}]
       20 SETTABLE                         R6 R4 R5
       21 LOADB                            R5 1
       22 DUPTABLE                         R6 K19 [{["Hotkey"] = "⬆Shift", ["LabelLocEntry"] = "EnableSnap"}]
       23 SETTABLE                         R6 R4 R5
       24 CALL                             R3 1 1
       25 DUPTABLE                         R4 K22 [{["Hotkey"] = "Shift+X/C", ["LabelLocEntry"] = "ToggleSnap"}]
       26 DUPTABLE                         R5 K25 [{["Hotkey"] = "⬇Tab", ["LabelLocEntry"] = "SummonHandles"}]
       27 DUPCLOSURE                       R6 K26 [PROTO_1]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 SETTABLEKS                       R6 R0 K27 ["addGridSnap"]
       32 DUPCLOSURE                       R6 K28 [PROTO_2]
       33 CAPTURE                          VAL R5
       34 SETTABLEKS                       R6 R0 K29 ["addSummonHandles"]
       36 RETURN                           R0 1
