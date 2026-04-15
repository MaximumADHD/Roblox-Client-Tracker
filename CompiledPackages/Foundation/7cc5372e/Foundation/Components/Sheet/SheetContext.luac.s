PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["No SheetContext available"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["No SheetContext available"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["No SheetContext available"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["No SheetContext available"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["No SheetContext available"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K8 ["SheetType"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R2 K9 ["createContext"]
       25 DUPTABLE                         R5 K27 [{"sheetHeightAvailable", "setSheetHeightAvailable", "actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "closeSheet", "sheetType", "innerSurface", "testId"}]
       26 LOADNIL                          R6
       27 SETTABLEKS                       R6 R5 K10 ["sheetHeightAvailable"]
       29 DUPCLOSURE                       R6 K28 [PROTO_0]
       30 SETTABLEKS                       R6 R5 K11 ["setSheetHeightAvailable"]
       32 LOADNIL                          R6
       33 SETTABLEKS                       R6 R5 K12 ["actionsHeight"]
       35 DUPCLOSURE                       R6 K29 [PROTO_1]
       36 SETTABLEKS                       R6 R5 K13 ["setActionsHeight"]
       38 LOADNIL                          R6
       39 SETTABLEKS                       R6 R5 K14 ["hasActionsDivider"]
       41 DUPCLOSURE                       R6 K30 [PROTO_2]
       42 SETTABLEKS                       R6 R5 K15 ["setHasActionsDivider"]
       44 LOADNIL                          R6
       45 SETTABLEKS                       R6 R5 K16 ["safeAreaPadding"]
       47 LOADNIL                          R6
       48 SETTABLEKS                       R6 R5 K17 ["bottomPadding"]
       50 LOADNIL                          R6
       51 SETTABLEKS                       R6 R5 K18 ["innerScrollingEnabled"]
       53 LOADNIL                          R6
       54 SETTABLEKS                       R6 R5 K19 ["innerScrollY"]
       56 DUPCLOSURE                       R6 K31 [PROTO_3]
       57 SETTABLEKS                       R6 R5 K20 ["setInnerScrollY"]
       59 LOADNIL                          R6
       60 SETTABLEKS                       R6 R5 K21 ["hasHeader"]
       62 DUPCLOSURE                       R6 K32 [PROTO_4]
       63 SETTABLEKS                       R6 R5 K22 ["setHasHeader"]
       65 LOADNIL                          R6
       66 SETTABLEKS                       R6 R5 K23 ["closeSheet"]
       68 LOADNIL                          R6
       69 SETTABLEKS                       R6 R5 K24 ["sheetType"]
       71 LOADNIL                          R6
       72 SETTABLEKS                       R6 R5 K25 ["innerSurface"]
       74 LOADNIL                          R6
       75 SETTABLEKS                       R6 R5 K26 ["testId"]
       77 CALL                             R4 1 -1
       78 RETURN                           R4 -1
