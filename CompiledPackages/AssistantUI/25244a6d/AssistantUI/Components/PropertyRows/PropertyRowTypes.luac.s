MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AskInput"]
       13 GETTABLEKS                       R2 R2 K8 ["AskInputTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Types"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 4 0
       23 DUPTABLE                         R4 K30 [{["Boolean"] = "boolean", ["Content"] = "content", ["HintImage"] = "hintImage", ["Instance"] = "instance", ["Number"] = "number", ["PartNames"] = "partNames", ["Select"] = "select", ["String"] = "string", ["SuggestSegmentation"] = "suggestSegmentation", ["Warning"] = "warning"}]
       24 SETTABLEKS                       R4 R3 K31 ["ROW_TYPES"]
       26 DUPTABLE                         R4 K36 [{["Fill"] = "fill", ["Fixed"] = "fixed"}]
       27 SETTABLEKS                       R4 R3 K37 ["ROW_VALUE_SIZE"]
       29 DUPTABLE                         R4 K42 [{["Top"] = "top", ["Center"] = "center"}]
       30 SETTABLEKS                       R4 R3 K43 ["ROW_ALIGN"]
       32 RETURN                           R3 1
