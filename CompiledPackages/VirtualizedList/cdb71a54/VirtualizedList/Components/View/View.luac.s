PROTO_0:
        0 SETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["nativeRef"]
        6 JUMPIF                           R2 ; [+4]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["createRef"]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R0 K3 ["_nativeRef"]
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["assign"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isArray"]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETTABLEKS                       R3 R3 K2 ["style"]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+13]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["reduce"]
       12 GETTABLEKS                       R2 R0 K1 ["props"]
       14 GETTABLEKS                       R2 R2 K2 ["style"]
       16 DUPCLOSURE                       R3 K4 [PROTO_1]
       17 CAPTURE                          UPVAL U1
       18 NEWTABLE                         R4 0 0
       20 CALL                             R1 3 1
       21 JUMP                             ; [+4]
       22 GETTABLEKS                       R1 R0 K1 ["props"]
       24 GETTABLEKS                       R1 R1 K2 ["style"]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K5 ["assign"]
       29 GETIMPORT                        R3 K8 [table.clone]
       31 GETTABLEKS                       R4 R0 K1 ["props"]
       33 CALL                             R3 1 1
       34 MOVE                             R4 R1
       35 CALL                             R2 2 1
       36 NEWTABLE                         R3 16 0
       38 GETTABLEKS                       R4 R0 K9 ["_nativeRef"]
       40 SETTABLEKS                       R4 R3 K10 ["ref"]
       42 GETTABLEKS                       R4 R2 K11 ["BackgroundColor3"]
       44 SETTABLEKS                       R4 R3 K11 ["BackgroundColor3"]
       46 GETTABLEKS                       R5 R2 K13 ["Name"]
       48 ORK                              R4 R5 K12 ["View"]
       49 SETTABLEKS                       R4 R3 K13 ["Name"]
       51 GETTABLEKS                       R4 R2 K14 ["Size"]
       53 JUMPIF                           R4 ; [+7]
       54 GETIMPORT                        R4 K17 [UDim2.new]
       56 LOADN                            R5 1
       57 LOADN                            R6 0
       58 LOADN                            R7 0
       59 LOADN                            R8 0
       60 CALL                             R4 4 1
       61 SETTABLEKS                       R4 R3 K14 ["Size"]
       63 GETTABLEKS                       R4 R2 K18 ["AutomaticSize"]
       65 JUMPIF                           R4 ; [+2]
       66 GETIMPORT                        R4 K21 [Enum.AutomaticSize.Y]
       68 SETTABLEKS                       R4 R3 K18 ["AutomaticSize"]
       70 GETTABLEKS                       R5 R2 K23 ["ZIndex"]
       72 ORK                              R4 R5 K22 []
       73 SETTABLEKS                       R4 R3 K23 ["ZIndex"]
       75 GETTABLEKS                       R5 R2 K24 ["LayoutOrder"]
       77 ORK                              R4 R5 K22 []
       78 SETTABLEKS                       R4 R3 K24 ["LayoutOrder"]
       80 GETTABLEKS                       R5 R2 K26 ["BorderSizePixel"]
       82 ORK                              R4 R5 K25 [0]
       83 SETTABLEKS                       R4 R3 K26 ["BorderSizePixel"]
       85 GETTABLEKS                       R5 R2 K28 ["BackgroundTransparency"]
       87 ORK                              R4 R5 K27 [1]
       88 SETTABLEKS                       R4 R3 K28 ["BackgroundTransparency"]
       90 GETUPVAL                         R4 2
       91 GETTABLEKS                       R4 R4 K29 ["AbsoluteSize"]
       93 GETTABLEKS                       R5 R2 K30 ["onLayout"]
       95 SETTABLE                         R5 R3 R4
       96 SETTABLEKS                       R3 R0 K31 ["nativeProps"]
       98 GETUPVAL                         R3 3
       99 GETTABLEKS                       R3 R3 K32 ["createElement"]
      101 LOADK                            R4 K33 ["Frame"]
      102 GETTABLEKS                       R5 R0 K31 ["nativeProps"]
      104 GETTABLEKS                       R6 R0 K1 ["props"]
      106 GETTABLEKS                       R6 R6 K34 ["children"]
      108 CALL                             R3 3 -1
      109 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K6 ["Array"]
       18 GETTABLEKS                       R3 R1 K7 ["Object"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["React"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K9 ["Change"]
       27 GETTABLEKS                       R6 R4 K10 ["Component"]
       29 LOADK                            R8 K11 ["View"]
       30 NAMECALL                         R6 R6 K12 ["extend"]
       32 CALL                             R6 2 1
       33 DUPCLOSURE                       R7 K13 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R7 R6 K14 ["init"]
       37 DUPCLOSURE                       R7 K15 [PROTO_2]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 SETTABLEKS                       R7 R6 K16 ["render"]
       44 RETURN                           R6 1
