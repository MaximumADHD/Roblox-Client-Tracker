PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Frame"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 LOADK                            R5 K1 ["Frame"]
       11 DUPTABLE                         R6 K6 [{"AutomaticSize", "BackgroundColor3", "Size"}]
       12 GETIMPORT                        R7 K9 [Enum.AutomaticSize.Y]
       14 SETTABLEKS                       R7 R6 K3 ["AutomaticSize"]
       16 GETIMPORT                        R7 K12 [Color3.new]
       18 LOADN                            R8 255
       19 LOADN                            R9 255
       20 LOADN                            R10 255
       21 CALL                             R7 3 1
       22 SETTABLEKS                       R7 R6 K4 ["BackgroundColor3"]
       24 GETIMPORT                        R7 K14 [UDim2.new]
       26 LOADN                            R8 1
       27 LOADN                            R9 0
       28 LOADN                            R10 1
       29 LOADN                            R11 0
       30 CALL                             R7 4 1
       31 SETTABLEKS                       R7 R6 K5 ["Size"]
       33 DUPTABLE                         R7 K17 [{"Autocorrect", "Padding"}]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K0 ["createElement"]
       37 GETUPVAL                         R9 2
       38 DUPTABLE                         R10 K25 [{["CorrectionState"], ["CurrentQuery"] = "foo", ["CorrectedQuery"] = "bar", ["UserQuery"] = }]
       39 GETUPVAL                         R11 3
       40 GETTABLEKS                       R11 R11 K26 ["AutocorrectResponseState"]
       42 GETTABLEKS                       R11 R11 K27 ["CorrectionAvailable"]
       44 SETTABLEKS                       R11 R10 K18 ["CorrectionState"]
       46 CALL                             R8 2 1
       47 SETTABLEKS                       R8 R7 K15 ["Autocorrect"]
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K0 ["createElement"]
       52 LOADK                            R9 K28 ["UIPadding"]
       53 DUPTABLE                         R10 K33 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       54 GETIMPORT                        R11 K35 [UDim.new]
       56 LOADN                            R12 0
       57 LOADN                            R13 10
       58 CALL                             R11 2 1
       59 SETTABLEKS                       R11 R10 K29 ["PaddingTop"]
       61 GETIMPORT                        R11 K35 [UDim.new]
       63 LOADN                            R12 0
       64 LOADN                            R13 10
       65 CALL                             R11 2 1
       66 SETTABLEKS                       R11 R10 K30 ["PaddingBottom"]
       68 GETIMPORT                        R11 K35 [UDim.new]
       70 LOADN                            R12 0
       71 LOADN                            R13 10
       72 CALL                             R11 2 1
       73 SETTABLEKS                       R11 R10 K31 ["PaddingLeft"]
       75 GETIMPORT                        R11 K35 [UDim.new]
       77 LOADN                            R12 0
       78 LOADN                            R13 10
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K32 ["PaddingRight"]
       82 CALL                             R8 2 1
       83 SETTABLEKS                       R8 R7 K16 ["Padding"]
       85 CALL                             R4 3 1
       86 SETTABLEKS                       R4 R3 K1 ["Frame"]
       88 CALL                             R0 3 -1
       89 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Autocorrect"]
       15 GETTABLEKS                       R2 R2 K8 ["Autocorrect"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K9 ["Packages"]
       22 GETTABLEKS                       R3 R3 K10 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Stories"]
       29 GETTABLEKS                       R4 R4 K12 ["ToolboxStoryWrapper"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Types"]
       38 GETTABLEKS                       R5 R5 K14 ["AutocorrectTypes"]
       40 CALL                             R4 1 1
       41 DUPTABLE                         R5 K19 [{["name"] = "Autocorrect", ["summary"] = "An Autocorrect component", ["story"]}]
       42 DUPCLOSURE                       R6 K20 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R6 R5 K18 ["story"]
       49 RETURN                           R5 1
