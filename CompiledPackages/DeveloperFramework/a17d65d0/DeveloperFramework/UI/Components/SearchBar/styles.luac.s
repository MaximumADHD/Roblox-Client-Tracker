MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
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
       45 DUPTABLE                         R12 K22 [{"Image", "Size"}]
       46 LOADK                            R13 K23 ["rbxasset://textures/DeveloperFramework/StudioTheme/clear.png"]
       47 SETTABLEKS                       R13 R12 K20 ["Image"]
       49 GETIMPORT                        R13 K25 [UDim2.fromOffset]
       51 LOADN                            R14 12
       52 LOADN                            R15 12
       53 CALL                             R13 2 1
       54 SETTABLEKS                       R13 R12 K21 ["Size"]
       56 CALL                             R10 2 1
       57 MOVE                             R11 R1
       58 LOADK                            R12 K26 ["> .SearchButton >> ImageLabel"]
       59 DUPTABLE                         R13 K22 [{"Image", "Size"}]
       60 LOADK                            R14 K27 ["$SearchIcon"]
       61 SETTABLEKS                       R14 R13 K20 ["Image"]
       63 GETIMPORT                        R14 K25 [UDim2.fromOffset]
       65 LOADN                            R15 13
       66 LOADN                            R16 13
       67 CALL                             R14 2 1
       68 SETTABLEKS                       R14 R13 K21 ["Size"]
       70 CALL                             R11 2 1
       71 MOVE                             R12 R1
       72 LOADK                            R13 K28 ["> .FilterButton >> ImageLabel"]
       73 NEWTABLE                         R14 0 0
       75 CALL                             R12 2 -1
       76 SETLIST                          R9 R10 -1 [1]
       78 CALL                             R6 3 1
       79 MOVE                             R7 R1
       80 LOADK                            R8 K29 ["> .Input > .SearchIcon"]
       81 DUPTABLE                         R9 K30 [{"Image"}]
       82 LOADK                            R10 K27 ["$SearchIcon"]
       83 SETTABLEKS                       R10 R9 K20 ["Image"]
       85 CALL                             R7 2 -1
       86 SETLIST                          R5 R6 -1 [1]
       88 NEWTABLE                         R6 0 0
       90 CALL                             R2 4 -1
       91 RETURN                           R2 -1
