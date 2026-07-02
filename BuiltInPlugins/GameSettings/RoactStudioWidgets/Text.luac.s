PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 LOADK                            R2 K1 ["TextLabel"]
        7 DUPTABLE                         R3 K15 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["Text"], ["Font"], ["TextColor3"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextTransparency"]}]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K5 ["Size"]
       16 SETTABLEKS                       R4 R3 K5 ["Size"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K6 ["Position"]
       21 SETTABLEKS                       R4 R3 K6 ["Position"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K7 ["AnchorPoint"]
       26 SETTABLEKS                       R4 R3 K7 ["AnchorPoint"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K8 ["Text"]
       31 ORK                              R4 R5 K16 [""]
       32 SETTABLEKS                       R4 R3 K8 ["Text"]
       34 GETIMPORT                        R4 K19 [Enum.Font.SourceSans]
       36 SETTABLEKS                       R4 R3 K9 ["Font"]
       38 GETTABLEKS                       R4 R0 K20 ["TextColor"]
       40 SETTABLEKS                       R4 R3 K10 ["TextColor3"]
       42 GETIMPORT                        R4 K22 [Enum.TextXAlignment.Left]
       44 SETTABLEKS                       R4 R3 K11 ["TextXAlignment"]
       46 GETIMPORT                        R4 K24 [Enum.TextYAlignment.Center]
       48 SETTABLEKS                       R4 R3 K12 ["TextYAlignment"]
       50 GETUPVAL                         R4 3
       51 GETTABLEKS                       R4 R4 K25 ["TEXT_SIZE"]
       53 SETTABLEKS                       R4 R3 K13 ["TextSize"]
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R5 R5 K26 ["Enabled"]
       58 JUMPIFNOT                        R5 ; [+2]
       59 LOADN                            R4 0
       60 JUMP                             ; [+1]
       61 LOADK                            R4 K27 [0.5]
       62 SETTABLEKS                       R4 R3 K14 ["TextTransparency"]
       64 CALL                             R1 2 -1
       65 RETURN                           R1 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["createElement"]
        8 GETUPVAL                         R3 3
        9 DUPTABLE                         R4 K2 [{"render"}]
       10 SETTABLEKS                       R1 R4 K1 ["render"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"TextColor"}]
        1 GETTABLEKS                       R3 R0 K2 ["Style"]
        3 JUMPIFNOT                        R3 ; [+5]
        4 GETTABLEKS                       R2 R0 K2 ["Style"]
        6 GETTABLEKS                       R2 R2 K0 ["TextColor"]
        8 JUMPIF                           R2 ; [+4]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["getMainTextColor"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K0 ["TextColor"]
       15 RETURN                           R1 1

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
       34 GETIMPORT                        R3 K1 [require]
       36 GETIMPORT                        R4 K3 [script]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K5 ["Internal"]
       42 GETTABLEKS                       R4 R4 K9 ["Constants"]
       44 CALL                             R3 1 1
       45 LOADNIL                          R4
       46 NEWCLOSURE                       R5 P0
       47 CAPTURE                          REF R4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R1
       51 DUPCLOSURE                       R4 K10 [PROTO_2]
       52 CAPTURE                          VAL R2
       53 CLOSEUPVALS                      R4
       54 RETURN                           R5 1
