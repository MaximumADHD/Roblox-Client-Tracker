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
       18 DUPTABLE                         R4 K13 [{"Size", "BackgroundTransparency", "BorderSizePixel"}]
       19 GETIMPORT                        R5 K16 [UDim2.fromScale]
       21 LOADN                            R6 1
       22 LOADN                            R7 1
       23 CALL                             R5 2 1
       24 SETTABLEKS                       R5 R4 K10 ["Size"]
       26 LOADN                            R5 1
       27 SETTABLEKS                       R5 R4 K11 ["BackgroundTransparency"]
       29 LOADN                            R5 1
       30 SETTABLEKS                       R5 R4 K12 ["BorderSizePixel"]
       32 NEWTABLE                         R5 0 4
       34 MOVE                             R6 R1
       35 LOADK                            R7 K17 [".Icon16"]
       36 DUPTABLE                         R8 K18 [{"Size"}]
       37 GETIMPORT                        R9 K20 [UDim2.fromOffset]
       39 LOADN                            R10 16
       40 LOADN                            R11 16
       41 CALL                             R9 2 1
       42 SETTABLEKS                       R9 R8 K10 ["Size"]
       44 CALL                             R6 2 1
       45 MOVE                             R7 R1
       46 LOADK                            R8 K21 [".Primary"]
       47 DUPTABLE                         R9 K23 [{"ImageColor3"}]
       48 LOADK                            R10 K24 ["$TextPrimary"]
       49 SETTABLEKS                       R10 R9 K22 ["ImageColor3"]
       51 CALL                             R7 2 1
       52 MOVE                             R8 R1
       53 LOADK                            R9 K25 [".ArrowIcon"]
       54 DUPTABLE                         R10 K27 [{"Image", "ImageColor3", "Size"}]
       55 LOADK                            R11 K28 ["rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"]
       56 SETTABLEKS                       R11 R10 K26 ["Image"]
       58 LOADK                            R11 K24 ["$TextPrimary"]
       59 SETTABLEKS                       R11 R10 K22 ["ImageColor3"]
       61 GETIMPORT                        R11 K20 [UDim2.fromOffset]
       63 LOADN                            R12 12
       64 LOADN                            R13 12
       65 CALL                             R11 2 1
       66 SETTABLEKS                       R11 R10 K10 ["Size"]
       68 CALL                             R8 2 1
       69 MOVE                             R9 R1
       70 LOADK                            R10 K29 [".ErrorIcon"]
       71 DUPTABLE                         R11 K27 [{"Image", "ImageColor3", "Size"}]
       72 LOADK                            R12 K30 ["rbxasset://textures/DeveloperFramework/StudioTheme/clear.png"]
       73 SETTABLEKS                       R12 R11 K26 ["Image"]
       75 LOADK                            R12 K31 ["$TextError"]
       76 SETTABLEKS                       R12 R11 K22 ["ImageColor3"]
       78 GETIMPORT                        R12 K20 [UDim2.fromOffset]
       80 LOADN                            R13 16
       81 LOADN                            R14 16
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K10 ["Size"]
       85 CALL                             R9 2 -1
       86 SETLIST                          R5 R6 -1 [1]
       88 CALL                             R2 3 -1
       89 RETURN                           R2 -1
