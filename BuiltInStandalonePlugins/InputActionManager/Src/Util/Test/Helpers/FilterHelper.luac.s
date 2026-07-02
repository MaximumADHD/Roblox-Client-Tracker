PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Text"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["search-bar--input--textbox"]
        3 LOADK                            R5 K1 ["Search bar not found"]
        4 CALL                             R2 3 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 GETUPVAL                         R3 2
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R1
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 3
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 4
       17 CALL                             R3 0 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["header-filter-button"]
        3 LOADK                            R4 K1 ["Filter button not found"]
        4 CALL                             R1 3 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["header-filter--content"]
        3 LOADK                            R5 K1 ["Filter menu not found"]
        4 CALL                             R2 3 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 MOVE                             R5 R1
        8 LOADK                            R7 K2 ["Filter menu item '%*' not found"]
        9 MOVE                             R9 R1
       10 NAMECALL                         R7 R7 K3 ["format"]
       12 CALL                             R7 2 1
       13 MOVE                             R6 R7
       14 CALL                             R3 3 1
       15 LOADK                            R6 K4 ["GuiButton"]
       16 NAMECALL                         R4 R3 K5 ["FindFirstAncestorWhichIsA"]
       18 CALL                             R4 2 1
       19 LOADK                            R8 K6 ["Filter menu button for '%*' not found"]
       20 MOVE                             R10 R1
       21 NAMECALL                         R8 R8 K3 ["format"]
       23 CALL                             R8 2 1
       24 MOVE                             R7 R8
       25 FASTCALL2                        ASSERT R4 R7 ; [+4]
       27 MOVE                             R6 R4
       28 GETIMPORT                        R5 K8 [assert]
       30 CALL                             R5 2 0
       31 GETUPVAL                         R5 2
       32 MOVE                             R6 R4
       33 CALL                             R5 1 0
       34 GETUPVAL                         R5 3
       35 CALL                             R5 0 0
       36 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["TestHelper"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["act"]
       25 GETTABLEKS                       R4 R2 K11 ["updateStyling"]
       27 GETTABLEKS                       R5 R2 K12 ["click"]
       29 GETTABLEKS                       R6 R2 K13 ["change"]
       31 GETTABLEKS                       R7 R2 K14 ["queryByTestId"]
       33 GETTABLEKS                       R8 R2 K15 ["queryByText"]
       35 NEWTABLE                         R9 4 0
       37 DUPCLOSURE                       R10 K16 [PROTO_1]
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R10 R9 K17 ["Search"]
       45 DUPCLOSURE                       R10 K18 [PROTO_2]
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R10 R9 K19 ["ToggleFilterMenu"]
       51 DUPCLOSURE                       R10 K20 [PROTO_3]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R10 R9 K21 ["ToggleFilterItem"]
       58 RETURN                           R9 1
