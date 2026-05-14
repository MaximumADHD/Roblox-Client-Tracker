PROTO_0:
        0 DUPTABLE                         R0 K4 [{"OnExportCompleteSuccess", "OnExportCompleteFailed", "OnExportStarted", "OnFileSelectCanceled"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K5 ["new"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["OnExportCompleteSuccess"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K5 ["new"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K1 ["OnExportCompleteFailed"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K5 ["new"]
       16 CALL                             R1 0 1
       17 SETTABLEKS                       R1 R0 K2 ["OnExportStarted"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K5 ["new"]
       22 CALL                             R1 0 1
       23 SETTABLEKS                       R1 R0 K3 ["OnFileSelectCanceled"]
       25 GETUPVAL                         R3 1
       26 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       28 MOVE                             R2 R0
       29 GETIMPORT                        R1 K7 [setmetatable]
       31 CALL                             R1 2 1
       32 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["Signal"]
       18 NEWTABLE                         R3 4 0
       20 SETTABLEKS                       R3 R3 K10 ["__index"]
       22 DUPCLOSURE                       R4 K11 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R4 R3 K12 ["new"]
       27 DUPCLOSURE                       R4 K13 [PROTO_1]
       28 SETTABLEKS                       R4 R3 K14 ["StartExportAsync"]
       30 RETURN                           R3 1
