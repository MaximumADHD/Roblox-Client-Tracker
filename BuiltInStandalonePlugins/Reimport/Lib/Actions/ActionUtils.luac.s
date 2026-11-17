PROTO_0:
        0 DUPTABLE                         R1 K6 [{[1] = "Standalone", ["PluginId"], ["Category"] = "Actions", ["ItemId"]}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K7 ["REIMPORT"]
        4 GETTABLEKS                       R2 R2 K8 ["ACTION_ID"]
        6 SETTABLEKS                       R2 R1 K2 ["PluginId"]
        8 SETTABLEKS                       R0 R1 K5 ["ItemId"]
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["actionUri"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K3 [table.clone]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R2 R3 K4 ["Uri"]
       11 GETUPVAL                         R4 1
       12 MOVE                             R6 R3
       13 NAMECALL                         R4 R4 K5 ["UpdateAsync"]
       15 CALL                             R4 2 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedPluginConstants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Lib"]
       18 GETTABLEKS                       R3 R3 K9 ["External"]
       20 GETTABLEKS                       R3 R3 K10 ["Actions"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 2 0
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R4 R3 K12 ["actionUri"]
       29 DUPCLOSURE                       R4 K13 [PROTO_1]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R4 R3 K14 ["updateAction"]
       34 RETURN                           R3 1
