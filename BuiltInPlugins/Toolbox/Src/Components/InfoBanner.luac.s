PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["FONT_SIZE_LARGE"]
        7 LOADN                            R6 2
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R7 R7 K3 ["INFO_BANNER_PADDING"]
       11 MUL                              R5 R6 R7
       12 ADD                              R4 R3 R5
       13 GETTABLEKS                       R5 R1 K4 ["Position"]
       15 JUMPIF                           R5 ; [+7]
       16 GETIMPORT                        R5 K7 [UDim2.new]
       18 LOADN                            R6 0
       19 LOADN                            R7 0
       20 LOADN                            R8 0
       21 LOADN                            R9 0
       22 CALL                             R5 4 1
       23 GETTABLEKS                       R6 R1 K8 ["Size"]
       25 JUMPIF                           R6 ; [+7]
       26 GETIMPORT                        R6 K7 [UDim2.new]
       28 LOADN                            R7 1
       29 LOADN                            R8 0
       30 LOADN                            R9 0
       31 MOVE                             R10 R4
       32 CALL                             R6 4 1
       33 GETTABLEKS                       R8 R1 K10 ["ZIndex"]
       35 ORK                              R7 R8 K9 [0]
       36 GETTABLEKS                       R9 R1 K11 ["Visible"]
       38 JUMPIFEQKNIL                     R9 ; [+4]
       40 GETTABLEKS                       R8 R1 K11 ["Visible"]
       42 JUMPIF                           R8 ; [+6]
       43 GETTABLEKS                       R9 R1 K11 ["Visible"]
       45 JUMPIFEQKNIL                     R9 ; [+2]
       47 LOADB                            R8 0 +1
       48 LOADB                            R8 1
       49 GETTABLEKS                       R10 R1 K13 ["Text"]
       51 ORK                              R9 R10 K12 [""]
       52 GETTABLEKS                       R10 R2 K14 ["infoBanner"]
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R11 R11 K15 ["createElement"]
       57 LOADK                            R12 K16 ["TextLabel"]
       58 DUPTABLE                         R13 K27 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"], ["Visible"], ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True, ["ClipsDescendants"] = True}]
       59 SETTABLEKS                       R5 R13 K4 ["Position"]
       61 SETTABLEKS                       R6 R13 K8 ["Size"]
       63 SETTABLEKS                       R7 R13 K10 ["ZIndex"]
       65 SETTABLEKS                       R8 R13 K11 ["Visible"]
       67 SETTABLEKS                       R9 R13 K13 ["Text"]
       69 GETTABLEKS                       R14 R10 K28 ["textColor"]
       71 SETTABLEKS                       R14 R13 K19 ["TextColor3"]
       73 GETUPVAL                         R14 0
       74 GETTABLEKS                       R14 R14 K29 ["FONT"]
       76 SETTABLEKS                       R14 R13 K20 ["Font"]
       78 SETTABLEKS                       R3 R13 K21 ["TextSize"]
       80 GETIMPORT                        R14 K32 [Enum.TextXAlignment.Center]
       82 SETTABLEKS                       R14 R13 K22 ["TextXAlignment"]
       84 GETIMPORT                        R14 K33 [Enum.TextYAlignment.Center]
       86 SETTABLEKS                       R14 R13 K23 ["TextYAlignment"]
       88 CALL                             R11 2 -1
       89 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R5 K9 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["Constants"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K12 ["withContext"]
       34 GETTABLEKS                       R7 R2 K13 ["PureComponent"]
       36 LOADK                            R9 K14 ["InfoBanner"]
       37 NAMECALL                         R7 R7 K15 ["extend"]
       39 CALL                             R7 2 1
       40 DUPCLOSURE                       R8 K16 [PROTO_0]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R8 R7 K17 ["render"]
       45 MOVE                             R8 R6
       46 DUPTABLE                         R9 K19 [{"Stylizer"}]
       47 GETTABLEKS                       R10 R5 K18 ["Stylizer"]
       49 SETTABLEKS                       R10 R9 K18 ["Stylizer"]
       51 CALL                             R8 1 1
       52 MOVE                             R9 R7
       53 CALL                             R8 1 1
       54 MOVE                             R7 R8
       55 RETURN                           R7 1
