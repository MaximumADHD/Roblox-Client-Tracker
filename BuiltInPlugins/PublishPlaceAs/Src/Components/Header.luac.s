PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
        8 ORK                              R4 R5 K3 [1]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K5 ["createElement"]
       12 LOADK                            R6 K6 ["TextLabel"]
       13 DUPTABLE                         R7 K18 [{["Size"], ["Text"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextSize"] = 28, ["TextXAlignment"], ["TextYAlignment"], ["Font"], ["TextColor3"], ["LayoutOrder"]}]
       14 GETIMPORT                        R8 K21 [UDim2.new]
       16 LOADN                            R9 1
       17 LOADN                            R10 0
       18 LOADN                            R11 0
       19 LOADN                            R12 45
       20 CALL                             R8 4 1
       21 SETTABLEKS                       R8 R7 K7 ["Size"]
       23 SETTABLEKS                       R3 R7 K8 ["Text"]
       25 GETIMPORT                        R8 K24 [Enum.TextXAlignment.Left]
       27 SETTABLEKS                       R8 R7 K14 ["TextXAlignment"]
       29 GETIMPORT                        R8 K26 [Enum.TextYAlignment.Bottom]
       31 SETTABLEKS                       R8 R7 K15 ["TextYAlignment"]
       33 GETTABLEKS                       R8 R2 K27 ["header"]
       35 GETTABLEKS                       R8 R8 K28 ["font"]
       37 SETTABLEKS                       R8 R7 K16 ["Font"]
       39 GETTABLEKS                       R8 R2 K27 ["header"]
       41 GETTABLEKS                       R8 R8 K29 ["text"]
       43 SETTABLEKS                       R8 R7 K17 ["TextColor3"]
       45 SETTABLEKS                       R4 R7 K4 ["LayoutOrder"]
       47 CALL                             R5 2 -1
       48 RETURN                           R5 -1

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
       27 GETTABLEKS                       R5 R1 K10 ["PureComponent"]
       29 LOADK                            R7 K11 ["Header"]
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
