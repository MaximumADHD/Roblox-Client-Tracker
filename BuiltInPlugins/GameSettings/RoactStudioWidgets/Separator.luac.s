PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 LOADK                            R2 K1 ["Frame"]
        7 DUPTABLE                         R3 K7 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["Size"]
       11 JUMPIF                           R4 ; [+7]
       12 GETIMPORT                        R4 K10 [UDim2.new]
       14 LOADN                            R5 1
       15 LOADN                            R6 0
       16 LOADN                            R7 0
       17 LOADN                            R8 2
       18 CALL                             R4 4 1
       19 SETTABLEKS                       R4 R3 K2 ["Size"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K3 ["Position"]
       24 SETTABLEKS                       R4 R3 K3 ["Position"]
       26 GETTABLEKS                       R4 R0 K11 ["SeparatorColor"]
       28 SETTABLEKS                       R4 R3 K4 ["BackgroundColor3"]
       30 LOADN                            R4 0
       31 SETTABLEKS                       R4 R3 K5 ["BorderSizePixel"]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K6 ["LayoutOrder"]
       36 ORK                              R4 R5 K12 [1]
       37 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       39 CALL                             R1 2 -1
       40 RETURN                           R1 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K2 [{"render"}]
        9 SETTABLEKS                       R1 R4 K1 ["render"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getSeparatorColor"]
        5 CALL                             R2 0 1
        6 SETTABLEKS                       R2 R1 K1 ["SeparatorColor"]
        8 NEWTABLE                         R2 0 0
       10 GETIMPORT                        R3 K3 [pairs]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 3
       14 FORGPREP_NEXT                    R3
       15 GETTABLEKS                       R9 R0 K4 ["Style"]
       17 JUMPIFNOT                        R9 ; [+4]
       18 GETTABLEKS                       R9 R0 K4 ["Style"]
       20 GETTABLE                         R8 R9 R6
       21 JUMPIF                           R8 ; [+1]
       22 MOVE                             R8 R7
       23 SETTABLE                         R8 R2 R6
       24 FORGLOOP                         R3 2 ; [-10]
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Internal"]
        9 GETTABLEKS                       R1 R1 K6 ["RequireRoact"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K5 ["Internal"]
       20 GETTABLEKS                       R2 R2 K7 ["ThemeChangeListener"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K5 ["Internal"]
       31 GETTABLEKS                       R3 R3 K8 ["Theme"]
       33 CALL                             R2 1 1
       34 LOADNIL                          R3
       35 NEWCLOSURE                       R4 P0
       36 CAPTURE                          REF R3
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 DUPCLOSURE                       R3 K9 [PROTO_2]
       40 CAPTURE                          VAL R2
       41 CLOSEUPVALS                      R3
       42 RETURN                           R4 1
