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
       17 LOADK                            R3 K9 [".Component-SearchBar"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 2
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 ["> .Input > .Buttons"]
       24 DUPTABLE                         R8 K13 [{"AnchorPoint", "Position"}]
       25 GETIMPORT                        R9 K16 [Vector2.new]
       27 LOADN                            R10 1
       28 LOADN                            R11 0
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K11 ["AnchorPoint"]
       32 GETIMPORT                        R9 K18 [UDim2.new]
       34 LOADN                            R10 1
       35 LOADN                            R11 0
       36 LOADN                            R12 0
       37 LOADN                            R13 0
       38 CALL                             R9 4 1
       39 SETTABLEKS                       R9 R8 K12 ["Position"]
       41 NEWTABLE                         R9 0 3
       43 MOVE                             R10 R1
       44 LOADK                            R11 K19 ["> .ClearButton >> ImageLabel"]
       45 DUPTABLE                         R12 K23 [{["Image"] = "rbxasset://textures/DeveloperFramework/StudioTheme/clear.png", ["Size"]}]
       46 GETIMPORT                        R13 K25 [UDim2.fromOffset]
       48 LOADN                            R14 12
       49 LOADN                            R15 12
       50 CALL                             R13 2 1
       51 SETTABLEKS                       R13 R12 K22 ["Size"]
       53 CALL                             R10 2 1
       54 MOVE                             R11 R1
       55 LOADK                            R12 K26 ["> .SearchButton >> ImageLabel"]
       56 DUPTABLE                         R13 K28 [{["Image"] = "$SearchIcon", ["Size"]}]
       57 GETIMPORT                        R14 K25 [UDim2.fromOffset]
       59 LOADN                            R15 13
       60 LOADN                            R16 13
       61 CALL                             R14 2 1
       62 SETTABLEKS                       R14 R13 K22 ["Size"]
       64 CALL                             R11 2 1
       65 MOVE                             R12 R1
       66 LOADK                            R13 K29 ["> .FilterButton >> ImageLabel"]
       67 NEWTABLE                         R14 0 0
       69 CALL                             R12 2 -1
       70 SETLIST                          R9 R10 -1 [1]
       72 CALL                             R6 3 1
       73 MOVE                             R7 R1
       74 LOADK                            R8 K30 ["> .Input > .SearchIcon"]
       75 DUPTABLE                         R9 K31 [{["Image"] = "$SearchIcon"}]
       76 CALL                             R7 2 -1
       77 SETLIST                          R5 R6 -1 [1]
       79 NEWTABLE                         R6 0 0
       81 CALL                             R2 4 -1
       82 RETURN                           R2 -1
