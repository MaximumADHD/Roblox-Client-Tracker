PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["search-bar--input--textbox"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Search bar not found"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["click"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 2
       17 CALL                             R3 0 0
       18 SETTABLEKS                       R1 R2 K5 ["Text"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K6 ["change"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 GETUPVAL                         R3 2
       26 CALL                             R3 0 0
       27 GETUPVAL                         R3 3
       28 CALL                             R3 0 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 ["header-filter-button"]
        3 CALL                             R1 2 1
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K1 ["Filter button not found"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["click"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 2
       17 CALL                             R2 0 0
       18 GETUPVAL                         R2 3
       19 CALL                             R2 0 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["header-filter--content"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Filter menu not found"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R2
       13 MOVE                             R5 R1
       14 CALL                             R3 2 1
       15 LOADK                            R7 K4 ["Filter menu item '%*' not found"]
       16 MOVE                             R9 R1
       17 NAMECALL                         R7 R7 K5 ["format"]
       19 CALL                             R7 2 1
       20 MOVE                             R6 R7
       21 FASTCALL2                        ASSERT R3 R6 ; [+4]
       23 MOVE                             R5 R3
       24 GETIMPORT                        R4 K3 [assert]
       26 CALL                             R4 2 0
       27 LOADK                            R6 K6 ["GuiButton"]
       28 NAMECALL                         R4 R3 K7 ["FindFirstAncestorWhichIsA"]
       30 CALL                             R4 2 1
       31 LOADK                            R8 K8 ["Filter menu button for '%*' not found"]
       32 MOVE                             R10 R1
       33 NAMECALL                         R8 R8 K5 ["format"]
       35 CALL                             R8 2 1
       36 MOVE                             R7 R8
       37 FASTCALL2                        ASSERT R4 R7 ; [+4]
       39 MOVE                             R6 R4
       40 GETIMPORT                        R5 K3 [assert]
       42 CALL                             R5 2 0
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K9 ["click"]
       46 MOVE                             R6 R4
       47 CALL                             R5 1 0
       48 GETUPVAL                         R5 3
       49 CALL                             R5 0 0
       50 GETUPVAL                         R5 4
       51 CALL                             R5 0 0
       52 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dev"]
       20 GETTABLEKS                       R3 R3 K9 ["ReactTestingLibrary"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K11 ["TestHelper"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K12 ["awaitDeferAsync"]
       34 GETTABLEKS                       R5 R3 K13 ["updateStyling"]
       36 GETTABLEKS                       R6 R2 K14 ["queryByTestId"]
       38 GETTABLEKS                       R7 R2 K15 ["queryByText"]
       40 GETTABLEKS                       R8 R2 K16 ["fireEvent"]
       42 NEWTABLE                         R9 4 0
       44 DUPCLOSURE                       R10 K17 [PROTO_0]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 SETTABLEKS                       R10 R9 K18 ["Search"]
       51 DUPCLOSURE                       R10 K19 [PROTO_1]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R10 R9 K20 ["ToggleFilterMenu"]
       58 DUPCLOSURE                       R10 K21 [PROTO_2]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R10 R9 K22 ["ToggleFilterItem"]
       66 RETURN                           R9 1
