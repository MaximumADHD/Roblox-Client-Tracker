PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["LocalizationTable"]
        3 CALL                             R0 1 1
        4 NEWTABLE                         R3 0 1
        6 DUPTABLE                         R4 K7 [{"Key", "Source", "Values"}]
        7 LOADK                            R5 K8 ["translatedNumber"]
        8 SETTABLEKS                       R5 R4 K4 ["Key"]
       10 LOADK                            R5 K9 ["{1:num}"]
       11 SETTABLEKS                       R5 R4 K5 ["Source"]
       13 NEWTABLE                         R5 1 0
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K10 ["RobloxLocaleId"]
       18 LOADK                            R7 K9 ["{1:num}"]
       19 SETTABLE                         R7 R5 R6
       20 SETTABLEKS                       R5 R4 K6 ["Values"]
       22 SETLIST                          R3 R4 1 [1]
       24 NAMECALL                         R1 R0 K11 ["SetEntries"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["RobloxLocaleId"]
        5 NAMECALL                         R1 R1 K1 ["GetTranslator"]
        7 CALL                             R1 2 1
        8 LOADK                            R3 K2 ["translatedNumber"]
        9 NEWTABLE                         R4 0 1
       11 MOVE                             R5 R0
       12 SETLIST                          R4 R5 1 [1]
       14 NAMECALL                         R1 R1 K3 ["FormatByKey"]
       16 CALL                             R1 3 1
       17 LOADN                            R3 1
       18 LOADN                            R4 252
       19 NAMECALL                         R1 R1 K4 ["sub"]
       21 CALL                             R1 3 -1
       22 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LocalizationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 DUPCLOSURE                       R2 K5 [PROTO_1]
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 RETURN                           R2 1
