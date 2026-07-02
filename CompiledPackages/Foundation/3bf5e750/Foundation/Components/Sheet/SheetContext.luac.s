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
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["SheetType"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R2 K9 ["createContext"]
       25 DUPTABLE                         R5 K28 [{["sheetHeightAvailable"] = , ["setSheetHeightAvailable"], ["actionsHeight"] = , ["setActionsHeight"], ["hasActionsDivider"] = , ["setHasActionsDivider"], ["safeAreaPadding"] = , ["bottomPadding"] = , ["innerScrollingEnabled"] = , ["innerScrollY"] = , ["setInnerScrollY"], ["hasHeader"] = , ["setHasHeader"], ["closeSheet"] = , ["sheetType"] = , ["innerSurface"] = , ["testId"] = }]
       26 DUPCLOSURE                       R6 K29 [PROTO_0]
       27 SETTABLEKS                       R6 R5 K12 ["setSheetHeightAvailable"]
       29 DUPCLOSURE                       R6 K30 [PROTO_1]
       30 SETTABLEKS                       R6 R5 K14 ["setActionsHeight"]
       32 DUPCLOSURE                       R6 K31 [PROTO_2]
       33 SETTABLEKS                       R6 R5 K16 ["setHasActionsDivider"]
       35 DUPCLOSURE                       R6 K32 [PROTO_3]
       36 SETTABLEKS                       R6 R5 K21 ["setInnerScrollY"]
       38 DUPCLOSURE                       R6 K33 [PROTO_4]
       39 SETTABLEKS                       R6 R5 K23 ["setHasHeader"]
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1
