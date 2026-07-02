PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETIMPORT                        R1 K2 [UDim2.fromScale]
        4 LOADN                            R2 0
        5 LOADN                            R3 0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1
        8 GETIMPORT                        R1 K4 [UDim2.fromOffset]
       10 LOADN                            R5 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K6 ["X"]
       14 GETTABLEKS                       R6 R6 K7 ["Offset"]
       16 ADD                              R4 R5 R6
       17 MUL                              R3 R4 R0
       18 ADDK                             R2 R3 K5 [1]
       19 LOADN                            R6 1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K8 ["Y"]
       23 GETTABLEKS                       R7 R7 K7 ["Offset"]
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
        6 DUPTABLE                         R1 K21 [{["CursorGroupName"] = "StudioSelectable", ["GroupCountMax"] = 32, ["GroupRowHeight"] = 35, ["GroupRowWidth"] = 120, ["ControlsHeaderButtonWidth"] = 106, ["GroupLabelFixedSize"], ["GroupListRowHeight"] = 24, ["GridCellWidth"] = 85, ["GridHeaderLabelSize"], ["GridCellSize"], ["CalculateTableSize"]}]
        7 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        9 LOADN                            R3 120
       10 LOADN                            R4 35
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R1 K13 ["GroupLabelFixedSize"]
       14 GETIMPORT                        R2 K2 [UDim2.fromOffset]
       16 LOADN                            R3 86
       17 LOADN                            R4 35
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R1 K18 ["GridHeaderLabelSize"]
       21 SETTABLEKS                       R0 R1 K19 ["GridCellSize"]
       23 DUPCLOSURE                       R2 K22 [PROTO_0]
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R1 K20 ["CalculateTableSize"]
       27 RETURN                           R1 1
