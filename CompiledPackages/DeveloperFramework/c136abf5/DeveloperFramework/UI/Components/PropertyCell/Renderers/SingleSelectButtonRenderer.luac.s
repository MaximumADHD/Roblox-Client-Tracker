PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["Id"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETTABLEKS                       R3 R0 K1 ["HasError"]
        4 JUMPIFNOT                        R3 ; [+4]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["Error"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["createElement"]
       13 GETUPVAL                         R4 2
       14 DUPTABLE                         R5 K12 [{"ButtonWidths", "Disabled", "IconSize", "Items", "OnItemActivated", "SelectedId", "Size", "StyleModifier"}]
       15 GETTABLEKS                       R6 R1 K4 ["ButtonWidths"]
       17 SETTABLEKS                       R6 R5 K4 ["ButtonWidths"]
       19 GETTABLEKS                       R6 R0 K5 ["Disabled"]
       21 SETTABLEKS                       R6 R5 K5 ["Disabled"]
       23 GETTABLEKS                       R7 R0 K13 ["Height"]
       25 JUMPIFNOT                        R7 ; [+8]
       26 GETIMPORT                        R6 K16 [UDim2.fromOffset]
       28 GETTABLEKS                       R7 R0 K13 ["Height"]
       30 GETTABLEKS                       R8 R0 K13 ["Height"]
       32 CALL                             R6 2 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R6
       35 SETTABLEKS                       R6 R5 K6 ["IconSize"]
       37 GETTABLEKS                       R6 R1 K7 ["Items"]
       39 SETTABLEKS                       R6 R5 K7 ["Items"]
       41 NEWCLOSURE                       R6 P0
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R6 R5 K8 ["OnItemActivated"]
       45 GETTABLEKS                       R6 R0 K17 ["Value"]
       47 SETTABLEKS                       R6 R5 K9 ["SelectedId"]
       49 GETTABLEKS                       R7 R0 K18 ["AutomaticSize"]
       51 JUMPIFNOT                        R7 ; [+10]
       52 GETIMPORT                        R6 K20 [UDim2.new]
       54 LOADN                            R7 1
       55 LOADN                            R8 0
       56 LOADN                            R9 0
       57 GETTABLEKS                       R11 R0 K22 ["MinimumHeight"]
       59 ORK                              R10 R11 K21 [24]
       60 CALL                             R6 4 1
       61 JUMP                             ; [+5]
       62 GETIMPORT                        R6 K24 [UDim2.fromScale]
       64 LOADN                            R7 1
       65 LOADN                            R8 1
       66 CALL                             R6 2 1
       67 SETTABLEKS                       R6 R5 K10 ["Size"]
       69 GETTABLEKS                       R7 R0 K5 ["Disabled"]
       71 JUMPIFNOT                        R7 ; [+4]
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R6 R6 K5 ["Disabled"]
       75 JUMP                             ; [+1]
       76 MOVE                             R6 R2
       77 SETTABLEKS                       R6 R5 K11 ["StyleModifier"]
       79 CALL                             R3 2 -1
       80 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["StyleModifier"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K10 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["SegmentedButton"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K4 ["Parent"]
       38 GETTABLEKS                       R5 R5 K4 ["Parent"]
       40 GETTABLEKS                       R5 R5 K12 ["Types"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K13 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 RETURN                           R5 1
