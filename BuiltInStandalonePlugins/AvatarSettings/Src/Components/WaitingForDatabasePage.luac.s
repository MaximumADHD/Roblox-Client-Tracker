PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 NEWTABLE                         R4 0 0
        8 DUPTABLE                         R5 K2 [{"PageContent"}]
        9 GETUPVAL                         R6 1
       10 GETUPVAL                         R7 2
       11 NEWTABLE                         R8 8 0
       13 GETUPVAL                         R9 3
       14 GETTABLEKS                       R9 R9 K3 ["Tag"]
       16 LOADK                            R10 K4 ["X-Column X-Middle X-Center"]
       17 SETTABLE                         R10 R8 R9
       18 GETIMPORT                        R9 K8 [Enum.AutomaticSize.X]
       20 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
       22 GETIMPORT                        R9 K11 [UDim2.fromOffset]
       24 LOADN                            R10 0
       25 LOADN                            R11 200
       26 CALL                             R9 2 1
       27 SETTABLEKS                       R9 R8 K12 ["Size"]
       29 GETIMPORT                        R9 K15 [Vector2.new]
       31 LOADK                            R10 K16 [0.5]
       32 LOADK                            R11 K16 [0.5]
       33 CALL                             R9 2 1
       34 SETTABLEKS                       R9 R8 K17 ["AnchorPoint"]
       36 GETIMPORT                        R9 K18 [UDim2.new]
       38 LOADK                            R10 K16 [0.5]
       39 LOADN                            R11 0
       40 LOADN                            R12 0
       41 LOADN                            R13 200
       42 CALL                             R9 4 1
       43 SETTABLEKS                       R9 R8 K19 ["Position"]
       45 DUPTABLE                         R9 K22 [{"UIListLayout", "WaitingForDatabaseText"}]
       46 GETUPVAL                         R10 1
       47 LOADK                            R11 K20 ["UIListLayout"]
       48 DUPTABLE                         R12 K24 [{"Padding"}]
       49 GETIMPORT                        R13 K26 [UDim.new]
       51 LOADN                            R14 0
       52 LOADN                            R15 20
       53 CALL                             R13 2 1
       54 SETTABLEKS                       R13 R12 K23 ["Padding"]
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K20 ["UIListLayout"]
       59 GETUPVAL                         R10 1
       60 LOADK                            R11 K27 ["TextLabel"]
       61 NEWTABLE                         R12 8 0
       63 GETUPVAL                         R13 3
       64 GETTABLEKS                       R13 R13 K3 ["Tag"]
       66 LOADK                            R14 K28 ["Component-TextLabel"]
       67 SETTABLE                         R14 R12 R13
       68 LOADK                            R15 K29 ["Unpublished"]
       69 LOADK                            R16 K30 ["WaitingForDatabase"]
       70 NAMECALL                         R13 R1 K31 ["getText"]
       72 CALL                             R13 3 1
       73 SETTABLEKS                       R13 R12 K32 ["Text"]
       75 LOADN                            R13 1
       76 SETTABLEKS                       R13 R12 K33 ["LayoutOrder"]
       78 GETIMPORT                        R13 K11 [UDim2.fromOffset]
       80 LOADN                            R14 0
       81 LOADN                            R15 28
       82 CALL                             R13 2 1
       83 SETTABLEKS                       R13 R12 K12 ["Size"]
       85 GETIMPORT                        R13 K8 [Enum.AutomaticSize.X]
       87 SETTABLEKS                       R13 R12 K6 ["AutomaticSize"]
       89 LOADN                            R13 20
       90 SETTABLEKS                       R13 R12 K34 ["TextSize"]
       92 CALL                             R10 2 1
       93 SETTABLEKS                       R10 R9 K21 ["WaitingForDatabaseText"]
       95 CALL                             R6 3 1
       96 SETTABLEKS                       R6 R5 K1 ["PageContent"]
       98 CALL                             R2 3 -1
       99 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R1 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Pane"]
       29 GETTABLEKS                       R7 R2 K13 ["createElement"]
       31 DUPCLOSURE                       R8 K14 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R2
       36 RETURN                           R8 1
