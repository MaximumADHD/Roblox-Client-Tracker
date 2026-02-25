PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETIMPORT                        R1 K2 [UDim2.fromScale]
        4 LOADN                            R2 0
        5 LOADN                            R3 0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETIMPORT                        R1 K4 [UDim2.fromOffset]
       10 LOADN                            R5 1
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K6 ["X"]
       14 GETTABLEKS                       R6 R7 K7 ["Offset"]
       16 ADD                              R4 R5 R6
       17 MUL                              R3 R4 R0
       18 ADDK                             R2 R3 K5 [1]
       19 LOADN                            R6 1
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K8 ["Y"]
       23 GETTABLEKS                       R7 R8 K7 ["Offset"]
       25 ADD                              R5 R6 R7
       26 MUL                              R4 R5 R0
       27 ADDK                             R3 R4 K5 [1]
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [UDim2.fromOffset]
        3 LOADN                            R1 85
        4 LOADN                            R2 34
        5 CALL                             R0 2 1
        6 DUPTABLE                         R1 K14 [{"CursorGroupName", "GroupCountMax", "GroupRowHeight", "GroupRowWidth", "ControlsHeaderButtonWidth", "GroupLabelFixedSize", "GroupListRowHeight", "GridCellWidth", "GridHeaderLabelSize", "GridCellSize", "CalculateTableSize"}]
        7 LOADK                            R2 K15 ["StudioSelectable"]
        8 SETTABLEKS                       R2 R1 K3 ["CursorGroupName"]
       10 LOADN                            R2 32
       11 SETTABLEKS                       R2 R1 K4 ["GroupCountMax"]
       13 LOADN                            R2 35
       14 SETTABLEKS                       R2 R1 K5 ["GroupRowHeight"]
       16 LOADN                            R2 120
       17 SETTABLEKS                       R2 R1 K6 ["GroupRowWidth"]
       19 LOADN                            R2 106
       20 SETTABLEKS                       R2 R1 K7 ["ControlsHeaderButtonWidth"]
       22 GETIMPORT                        R2 K2 [UDim2.fromOffset]
       24 LOADN                            R3 120
       25 LOADN                            R4 35
       26 CALL                             R2 2 1
       27 SETTABLEKS                       R2 R1 K8 ["GroupLabelFixedSize"]
       29 LOADN                            R2 24
       30 SETTABLEKS                       R2 R1 K9 ["GroupListRowHeight"]
       32 LOADN                            R2 85
       33 SETTABLEKS                       R2 R1 K10 ["GridCellWidth"]
       35 GETIMPORT                        R2 K2 [UDim2.fromOffset]
       37 LOADN                            R3 86
       38 LOADN                            R4 35
       39 CALL                             R2 2 1
       40 SETTABLEKS                       R2 R1 K11 ["GridHeaderLabelSize"]
       42 SETTABLEKS                       R0 R1 K12 ["GridCellSize"]
       44 DUPCLOSURE                       R2 K16 [PROTO_0]
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R2 R1 K13 ["CalculateTableSize"]
       48 RETURN                           R1 1
