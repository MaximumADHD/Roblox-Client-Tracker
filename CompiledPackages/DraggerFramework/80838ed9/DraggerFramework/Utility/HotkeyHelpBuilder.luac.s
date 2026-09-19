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
        3 DUPTABLE                         R1 K4 [{[1] = "H", ["LabelLocEntry"] = "ToggleHelp"}]
        4 DUPCLOSURE                       R2 K5 [PROTO_0]
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R2 R0 K6 ["addHelp"]
        8 GETIMPORT                        R2 K9 [table.freeze]
       10 NEWTABLE                         R3 2 0
       12 LOADB                            R4 0
       13 DUPTABLE                         R5 K12 [{[1] = "⬇Shift", ["LabelLocEntry"] = "DisableSnap"}]
       14 SETTABLE                         R5 R3 R4
       15 LOADB                            R4 1
       16 DUPTABLE                         R5 K15 [{[1] = "⬆Shift", ["LabelLocEntry"] = "EnableSnap"}]
       17 SETTABLE                         R5 R3 R4
       18 CALL                             R2 1 1
       19 DUPTABLE                         R3 K18 [{[1] = "Shift+X/C", ["LabelLocEntry"] = "ToggleSnap"}]
       20 DUPTABLE                         R4 K21 [{[1] = "⬇Tab", ["LabelLocEntry"] = "SummonHandles"}]
       21 DUPCLOSURE                       R5 K22 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 SETTABLEKS                       R5 R0 K23 ["addGridSnap"]
       26 DUPCLOSURE                       R5 K24 [PROTO_2]
       27 CAPTURE                          VAL R4
       28 SETTABLEKS                       R5 R0 K25 ["addSummonHandles"]
       30 RETURN                           R0 1
