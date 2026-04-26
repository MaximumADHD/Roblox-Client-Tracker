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
        9 DUPTABLE                         R2 K6 [{"Hotkey", "LabelLocEntry"}]
       10 LOADK                            R3 K7 ["H"]
       11 SETTABLEKS                       R3 R2 K4 ["Hotkey"]
       13 LOADK                            R3 K8 ["ToggleHelp"]
       14 SETTABLEKS                       R3 R2 K5 ["LabelLocEntry"]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 SETTABLEKS                       R3 R0 K10 ["addHelp"]
       20 GETIMPORT                        R3 K13 [table.freeze]
       22 NEWTABLE                         R4 2 0
       24 LOADB                            R5 0
       25 DUPTABLE                         R6 K6 [{"Hotkey", "LabelLocEntry"}]
       26 LOADK                            R7 K14 ["⬇Shift"]
       27 SETTABLEKS                       R7 R6 K4 ["Hotkey"]
       29 LOADK                            R7 K15 ["DisableSnap"]
       30 SETTABLEKS                       R7 R6 K5 ["LabelLocEntry"]
       32 SETTABLE                         R6 R4 R5
       33 LOADB                            R5 1
       34 DUPTABLE                         R6 K6 [{"Hotkey", "LabelLocEntry"}]
       35 LOADK                            R7 K16 ["⬆Shift"]
       36 SETTABLEKS                       R7 R6 K4 ["Hotkey"]
       38 LOADK                            R7 K17 ["EnableSnap"]
       39 SETTABLEKS                       R7 R6 K5 ["LabelLocEntry"]
       41 SETTABLE                         R6 R4 R5
       42 CALL                             R3 1 1
       43 DUPTABLE                         R4 K6 [{"Hotkey", "LabelLocEntry"}]
       44 LOADK                            R5 K18 ["Shift+X/C"]
       45 SETTABLEKS                       R5 R4 K4 ["Hotkey"]
       47 LOADK                            R5 K19 ["ToggleSnap"]
       48 SETTABLEKS                       R5 R4 K5 ["LabelLocEntry"]
       50 DUPTABLE                         R5 K6 [{"Hotkey", "LabelLocEntry"}]
       51 LOADK                            R6 K20 ["⬇Tab"]
       52 SETTABLEKS                       R6 R5 K4 ["Hotkey"]
       54 LOADK                            R6 K21 ["SummonHandles"]
       55 SETTABLEKS                       R6 R5 K5 ["LabelLocEntry"]
       57 DUPCLOSURE                       R6 K22 [PROTO_1]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R6 R0 K23 ["addGridSnap"]
       62 DUPCLOSURE                       R6 K24 [PROTO_2]
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R6 R0 K25 ["addSummonHandles"]
       66 RETURN                           R0 1
