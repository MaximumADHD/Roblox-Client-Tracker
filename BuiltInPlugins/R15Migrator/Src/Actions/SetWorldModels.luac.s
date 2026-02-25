PROTO_0:
        0 DUPTABLE                         R5 K1 [{"newWorldModelEntries"}]
        1 NEWTABLE                         R6 1 0
        3 DUPTABLE                         R7 K6 [{"previewModel", "convertedModel", "resetPreviewModel", "resetConvertedModel"}]
        4 SETTABLEKS                       R1 R7 K2 ["previewModel"]
        6 SETTABLEKS                       R2 R7 K3 ["convertedModel"]
        8 SETTABLEKS                       R3 R7 K4 ["resetPreviewModel"]
       10 SETTABLEKS                       R4 R7 K5 ["resetConvertedModel"]
       12 SETTABLE                         R7 R6 R0
       13 SETTABLEKS                       R6 R5 K0 ["newWorldModelEntries"]
       15 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R3 R2 K9 ["Action"]
       18 MOVE                             R4 R3
       19 GETIMPORT                        R6 K1 [script]
       21 GETTABLEKS                       R5 R6 K10 ["Name"]
       23 DUPCLOSURE                       R6 K11 [PROTO_0]
       24 CALL                             R4 2 -1
       25 RETURN                           R4 -1
