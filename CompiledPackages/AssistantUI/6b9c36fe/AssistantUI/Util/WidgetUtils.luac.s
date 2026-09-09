PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R1 1
        3 RETURN                           R0 1

PROTO_1:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["ToolStatus"]
        4 GETTABLEKS                       R2 R2 K1 ["Preparing"]
        6 RETURN                           R2 1
        7 JUMPIF                           R1 ; [+6]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["ToolStatus"]
       11 GETTABLEKS                       R2 R2 K2 ["Running"]
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R1 K3 ["structuredContent"]
       16 JUMPIFNOT                        R2 ; [+20]
       17 GETTABLEKS                       R3 R2 K4 ["rejected"]
       19 JUMPIFNOTEQKB                    R3 TRUE ; [+7]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["ToolStatus"]
       24 GETTABLEKS                       R3 R3 K5 ["Rejected"]
       26 RETURN                           R3 1
       27 GETTABLEKS                       R3 R2 K6 ["pending"]
       29 JUMPIFNOTEQKB                    R3 TRUE ; [+7]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K0 ["ToolStatus"]
       34 GETTABLEKS                       R3 R3 K2 ["Running"]
       36 RETURN                           R3 1
       37 GETTABLEKS                       R3 R1 K7 ["isError"]
       39 JUMPIFNOTEQKB                    R3 TRUE ; [+7]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K0 ["ToolStatus"]
       44 GETTABLEKS                       R3 R3 K8 ["Failed"]
       46 RETURN                           R3 1
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K0 ["ToolStatus"]
       50 GETTABLEKS                       R3 R3 K9 ["Completed"]
       52 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 4 0
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 SETTABLEKS                       R3 R2 K8 ["withDefault"]
       17 DUPTABLE                         R3 K19 [{["Preparing"] = "preparing", ["Running"] = "running", ["Completed"] = "completed", ["Failed"] = "failed", ["Rejected"] = "rejected"}]
       18 SETTABLEKS                       R3 R2 K20 ["ToolStatus"]
       20 DUPCLOSURE                       R3 K21 [PROTO_1]
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R3 R2 K22 ["deriveToolStatus"]
       24 RETURN                           R2 1
