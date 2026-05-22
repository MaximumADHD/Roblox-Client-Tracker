PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["close"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Menu"]
       10 DUPTABLE                         R4 K10 [{"isOpen", "onPressedOutside", "items", "side", "size", "width", "anchorRef"}]
       11 GETTABLEKS                       R5 R0 K3 ["isOpen"]
       13 SETTABLEKS                       R5 R4 K3 ["isOpen"]
       15 GETTABLEKS                       R5 R0 K0 ["close"]
       17 SETTABLEKS                       R5 R4 K4 ["onPressedOutside"]
       19 SETTABLEKS                       R1 R4 K5 ["items"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K11 ["Enums"]
       24 GETTABLEKS                       R5 R5 K12 ["PopoverSide"]
       26 GETTABLEKS                       R5 R5 K13 ["Right"]
       28 SETTABLEKS                       R5 R4 K6 ["side"]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K11 ["Enums"]
       33 GETTABLEKS                       R5 R5 K14 ["InputSize"]
       35 GETTABLEKS                       R5 R5 K15 ["XSmall"]
       37 SETTABLEKS                       R5 R4 K7 ["size"]
       39 GETUPVAL                         R5 3
       40 SETTABLEKS                       R5 R4 K8 ["width"]
       42 GETTABLEKS                       R5 R0 K9 ["anchorRef"]
       44 SETTABLEKS                       R5 R4 K9 ["anchorRef"]
       46 CALL                             R2 2 -1
       47 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["ParameterPane"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K13 ["useParameterMenuItems"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K16 [UDim.new]
       39 LOADN                            R6 0
       40 GETTABLEKS                       R7 R2 K17 ["PARAMETER_INSERT_ITEM_MENU_WIDTH"]
       42 CALL                             R5 2 1
       43 DUPCLOSURE                       R6 K18 [PROTO_0]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 RETURN                           R6 1
