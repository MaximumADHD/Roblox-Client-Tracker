MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-TabRow"]
       20 DUPTABLE                         R5 K15 [{["AutoButtonColor"] = False, ["Text"] = ""}]
       21 NEWTABLE                         R6 0 3
       23 MOVE                             R7 R2
       24 LOADK                            R8 K16 [":hover"]
       25 DUPTABLE                         R9 K21 [{["BackgroundColor3"] = "$SemanticColorStatesHover", ["BackgroundTransparency"] = "$SemanticColorStatesHoverTransparency"}]
       26 CALL                             R7 2 1
       27 MOVE                             R8 R2
       28 LOADK                            R9 K22 [".Selected"]
       29 DUPTABLE                         R10 K25 [{["BackgroundTransparency"] = "$SemanticColorStatesSelectedTransparency", ["BackgroundColor3"] = "$SemanticColorStatesSelected"}]
       30 CALL                             R8 2 1
       31 MOVE                             R9 R2
       32 LOADK                            R10 K26 ["::UIPadding"]
       33 DUPTABLE                         R11 K33 [{["PaddingLeft"] = "$GlobalSpace100", ["PaddingTop"] = "$GlobalSpace50", ["PaddingRight"] = "$GlobalSpace100", ["PaddingBottom"] = "$GlobalSpace50"}]
       34 CALL                             R9 2 -1
       35 SETLIST                          R6 R7 -1 [1]
       37 CALL                             R3 3 -1
       38 RETURN                           R3 -1
