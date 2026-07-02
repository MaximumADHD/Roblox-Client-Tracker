PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R5 R1 K2 ["Title"]
        8 GETTABLEKS                       R6 R2 K3 ["fontStyle"]
       10 GETTABLEKS                       R6 R6 K4 ["Header"]
       12 GETTABLEKS                       R6 R6 K5 ["TextSize"]
       14 GETTABLEKS                       R7 R2 K3 ["fontStyle"]
       16 GETTABLEKS                       R7 R7 K4 ["Header"]
       18 GETTABLEKS                       R7 R7 K6 ["Font"]
       20 CALL                             R4 3 1
       21 GETIMPORT                        R5 K9 [UDim2.new]
       23 LOADN                            R6 0
       24 GETTABLEKS                       R7 R4 K10 ["X"]
       26 LOADN                            R8 0
       27 GETTABLEKS                       R9 R4 K11 ["Y"]
       29 CALL                             R5 4 1
       30 MOVE                             R3 R5
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K12 ["createElement"]
       34 LOADK                            R6 K13 ["TextLabel"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K14 ["Dictionary"]
       38 GETTABLEKS                       R7 R7 K15 ["join"]
       40 GETTABLEKS                       R8 R2 K3 ["fontStyle"]
       42 GETTABLEKS                       R8 R8 K4 ["Header"]
       44 DUPTABLE                         R9 K25 [{["Size"], ["Text"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"]}]
       45 SETTABLEKS                       R3 R9 K16 ["Size"]
       47 GETTABLEKS                       R10 R1 K2 ["Title"]
       49 SETTABLEKS                       R10 R9 K17 ["Text"]
       51 GETIMPORT                        R10 K28 [Enum.TextXAlignment.Left]
       53 SETTABLEKS                       R10 R9 K22 ["TextXAlignment"]
       55 GETIMPORT                        R10 K30 [Enum.TextYAlignment.Bottom]
       57 SETTABLEKS                       R10 R9 K23 ["TextYAlignment"]
       59 GETTABLEKS                       R11 R1 K24 ["LayoutOrder"]
       61 ORK                              R10 R11 K19 [1]
       62 SETTABLEKS                       R10 R9 K24 ["LayoutOrder"]
       64 CALL                             R7 2 -1
       65 CALL                             R5 -1 -1
       66 RETURN                           R5 -1

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
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R2 K11 ["Util"]
       36 GETTABLEKS                       R7 R6 K12 ["GetTextSize"]
       38 GETTABLEKS                       R8 R1 K13 ["PureComponent"]
       40 LOADK                            R10 K14 ["Header"]
       41 NAMECALL                         R8 R8 K15 ["extend"]
       43 CALL                             R8 2 1
       44 DUPCLOSURE                       R9 K16 [PROTO_0]
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R9 R8 K17 ["render"]
       50 MOVE                             R9 R5
       51 DUPTABLE                         R10 K19 [{"Stylizer"}]
       52 GETTABLEKS                       R11 R4 K18 ["Stylizer"]
       54 SETTABLEKS                       R11 R10 K18 ["Stylizer"]
       56 CALL                             R9 1 1
       57 MOVE                             R10 R8
       58 CALL                             R9 1 1
       59 MOVE                             R8 R9
       60 RETURN                           R8 1
