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
       17 LOADK                            R3 K9 [".Component-ViewTypeButton"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 2
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 ["> .ButtonContainer"]
       24 DUPTABLE                         R8 K12 [{"Size"}]
       25 GETIMPORT                        R9 K15 [UDim2.fromOffset]
       27 LOADN                            R10 100
       28 LOADN                            R11 32
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K11 ["Size"]
       32 NEWTABLE                         R9 0 2
       34 MOVE                             R10 R1
       35 LOADK                            R11 K16 [".Icon"]
       36 DUPTABLE                         R12 K12 [{"Size"}]
       37 GETIMPORT                        R13 K15 [UDim2.fromOffset]
       39 LOADN                            R14 32
       40 LOADN                            R15 32
       41 CALL                             R13 2 1
       42 SETTABLEKS                       R13 R12 K11 ["Size"]
       44 CALL                             R10 2 1
       45 MOVE                             R11 R1
       46 LOADK                            R12 K17 ["> .ImageContainer"]
       47 DUPTABLE                         R13 K12 [{"Size"}]
       48 GETIMPORT                        R14 K15 [UDim2.fromOffset]
       50 LOADN                            R15 32
       51 LOADN                            R16 32
       52 CALL                             R14 2 1
       53 SETTABLEKS                       R14 R13 K11 ["Size"]
       55 NEWTABLE                         R14 0 2
       57 MOVE                             R15 R1
       58 LOADK                            R16 K18 ["> ImageLabel .Grid"]
       59 DUPTABLE                         R17 K21 [{["Image"] = "$GridImage"}]
       60 CALL                             R15 2 1
       61 MOVE                             R16 R1
       62 LOADK                            R17 K22 ["> ImageLabel .List"]
       63 DUPTABLE                         R18 K24 [{["Image"] = "$ListImage"}]
       64 CALL                             R16 2 -1
       65 SETLIST                          R14 R15 -1 [1]
       67 CALL                             R11 3 -1
       68 SETLIST                          R9 R10 -1 [1]
       70 CALL                             R6 3 1
       71 MOVE                             R7 R1
       72 LOADK                            R8 K25 ["> .SliderContainer"]
       73 DUPTABLE                         R9 K12 [{"Size"}]
       74 GETIMPORT                        R10 K15 [UDim2.fromOffset]
       76 LOADN                            R11 100
       77 LOADN                            R12 32
       78 CALL                             R10 2 1
       79 SETTABLEKS                       R10 R9 K11 ["Size"]
       81 CALL                             R7 2 -1
       82 SETLIST                          R5 R6 -1 [1]
       84 DUPTABLE                         R6 K38 [{["ListIcon"] = "rbxasset://textures/MaterialFramework/List.png", ["GridIcon"] = "rbxasset://textures/MaterialFramework/Grid.png", ["SliderValueMin"] = 60, ["SliderValueMax"] = 200, ["SliderSnapIncrement"] = 10, ["SliderVerticalDragTolerance"] = 300}]
       85 CALL                             R2 4 -1
       86 RETURN                           R2 -1
