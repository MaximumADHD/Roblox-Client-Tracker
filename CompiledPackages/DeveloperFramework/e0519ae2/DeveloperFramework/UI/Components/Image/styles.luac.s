MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-Image"]
       18 DUPTABLE                         R4 K14 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 1}]
       19 GETIMPORT                        R5 K17 [UDim2.fromScale]
       21 LOADN                            R6 1
       22 LOADN                            R7 1
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K10 ["Size"]
       26 NEWTABLE                         R5 0 4
       28 MOVE                             R6 R1
       29 LOADK                            R7 K18 [".Icon16"]
       30 DUPTABLE                         R8 K19 [{"Size"}]
       31 GETIMPORT                        R9 K21 [UDim2.fromOffset]
       33 LOADN                            R10 16
       34 LOADN                            R11 16
       35 CALL                             R9 2 1
       36 SETTABLEKS                       R9 R8 K10 ["Size"]
       38 CALL                             R6 2 1
       39 MOVE                             R7 R1
       40 LOADK                            R8 K22 [".Primary"]
       41 DUPTABLE                         R9 K25 [{["ImageColor3"] = "$TextPrimary"}]
       42 CALL                             R7 2 1
       43 MOVE                             R8 R1
       44 LOADK                            R9 K26 [".ArrowIcon"]
       45 DUPTABLE                         R10 K29 [{["Image"] = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png", ["ImageColor3"] = "$TextPrimary", ["Size"]}]
       46 GETIMPORT                        R11 K21 [UDim2.fromOffset]
       48 LOADN                            R12 12
       49 LOADN                            R13 12
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K10 ["Size"]
       53 CALL                             R8 2 1
       54 MOVE                             R9 R1
       55 LOADK                            R10 K30 [".ErrorIcon"]
       56 DUPTABLE                         R11 K33 [{["Image"] = "rbxasset://textures/DeveloperFramework/StudioTheme/clear.png", ["ImageColor3"] = "$TextError", ["Size"]}]
       57 GETIMPORT                        R12 K21 [UDim2.fromOffset]
       59 LOADN                            R13 16
       60 LOADN                            R14 16
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K10 ["Size"]
       64 CALL                             R9 2 -1
       65 SETLIST                          R5 R6 -1 [1]
       67 CALL                             R2 3 -1
       68 RETURN                           R2 -1
