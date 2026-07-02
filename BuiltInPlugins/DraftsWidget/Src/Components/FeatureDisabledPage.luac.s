PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Text"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["createElement"]
       11 LOADK                            R4 K4 ["Frame"]
       12 DUPTABLE                         R5 K8 [{["BackgroundTransparency"] = 1, ["Size"]}]
       13 GETIMPORT                        R6 K11 [UDim2.new]
       15 LOADN                            R7 1
       16 LOADN                            R8 0
       17 LOADN                            R9 1
       18 LOADN                            R10 0
       19 CALL                             R6 4 1
       20 SETTABLEKS                       R6 R5 K7 ["Size"]
       22 DUPTABLE                         R6 K14 [{"UIPadding", "Error"}]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K3 ["createElement"]
       26 LOADK                            R8 K12 ["UIPadding"]
       27 DUPTABLE                         R9 K19 [{"PaddingBottom", "PaddingTop", "PaddingLeft", "PaddingRight"}]
       28 GETIMPORT                        R10 K21 [UDim.new]
       30 LOADN                            R11 0
       31 LOADN                            R12 16
       32 CALL                             R10 2 1
       33 SETTABLEKS                       R10 R9 K15 ["PaddingBottom"]
       35 GETIMPORT                        R10 K21 [UDim.new]
       37 LOADN                            R11 0
       38 LOADN                            R12 16
       39 CALL                             R10 2 1
       40 SETTABLEKS                       R10 R9 K16 ["PaddingTop"]
       42 GETIMPORT                        R10 K21 [UDim.new]
       44 LOADN                            R11 0
       45 LOADN                            R12 16
       46 CALL                             R10 2 1
       47 SETTABLEKS                       R10 R9 K17 ["PaddingLeft"]
       49 GETIMPORT                        R10 K21 [UDim.new]
       51 LOADN                            R11 0
       52 LOADN                            R12 16
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K18 ["PaddingRight"]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K12 ["UIPadding"]
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K3 ["createElement"]
       62 LOADK                            R8 K22 ["TextLabel"]
       63 DUPTABLE                         R9 K31 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextColor3"], ["TextSize"] = 18, ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
       64 GETIMPORT                        R10 K11 [UDim2.new]
       66 LOADN                            R11 1
       67 LOADN                            R12 0
       68 LOADN                            R13 1
       69 LOADN                            R14 0
       70 CALL                             R10 4 1
       71 SETTABLEKS                       R10 R9 K7 ["Size"]
       73 SETTABLEKS                       R2 R9 K2 ["Text"]
       75 GETTABLEKS                       R10 R1 K32 ["labels"]
       77 GETTABLEKS                       R10 R10 K33 ["MainFont"]
       79 SETTABLEKS                       R10 R9 K23 ["Font"]
       81 GETTABLEKS                       R10 R1 K32 ["labels"]
       83 GETTABLEKS                       R10 R10 K34 ["MainText"]
       85 SETTABLEKS                       R10 R9 K24 ["TextColor3"]
       87 GETIMPORT                        R10 K37 [Enum.TextXAlignment.Center]
       89 SETTABLEKS                       R10 R9 K27 ["TextXAlignment"]
       91 GETIMPORT                        R10 K38 [Enum.TextYAlignment.Center]
       93 SETTABLEKS                       R10 R9 K28 ["TextYAlignment"]
       95 CALL                             R7 2 1
       96 SETTABLEKS                       R7 R6 K13 ["Error"]
       98 CALL                             R3 3 -1
       99 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R1 K10 ["Component"]
       29 LOADK                            R7 K11 ["FeatureDisabledPage"]
       30 NAMECALL                         R5 R5 K12 ["extend"]
       32 CALL                             R5 2 1
       33 DUPCLOSURE                       R6 K13 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R6 R5 K14 ["render"]
       37 MOVE                             R6 R4
       38 DUPTABLE                         R7 K16 [{"Stylizer"}]
       39 GETTABLEKS                       R8 R3 K15 ["Stylizer"]
       41 SETTABLEKS                       R8 R7 K15 ["Stylizer"]
       43 CALL                             R6 1 1
       44 MOVE                             R7 R5
       45 CALL                             R6 1 1
       46 MOVE                             R5 R6
       47 RETURN                           R5 1
