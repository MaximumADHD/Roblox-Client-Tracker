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
       19 LOADK                            R4 K10 [".Component-AvatarThumbnail"]
       20 DUPTABLE                         R5 K15 [{["AutoButtonColor"] = False, ["Text"] = ""}]
       21 NEWTABLE                         R6 0 1
       23 MOVE                             R7 R2
       24 LOADK                            R8 K16 ["> ImageLabel"]
       25 DUPTABLE                         R9 K21 [{["BorderSizePixel"] = "$BorderNone", ["BackgroundColor3"] = "$SemanticColorComponentMediaFill"}]
       26 NEWTABLE                         R10 0 2
       28 MOVE                             R11 R2
       29 LOADK                            R12 K22 ["::UICorner"]
       30 DUPTABLE                         R13 K25 [{["CornerRadius"] = "$GlobalRadiusCircle"}]
       31 CALL                             R11 2 1
       32 MOVE                             R12 R2
       33 LOADK                            R13 K26 [".XSmall"]
       34 DUPTABLE                         R14 K29 [{["Size"] = "$AvatarXS"}]
       35 CALL                             R12 2 -1
       36 SETLIST                          R10 R11 -1 [1]
       38 CALL                             R7 3 -1
       39 SETLIST                          R6 R7 -1 [1]
       41 CALL                             R3 3 -1
       42 RETURN                           R3 -1
