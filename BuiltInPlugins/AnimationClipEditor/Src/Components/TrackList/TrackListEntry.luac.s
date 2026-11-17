PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R5 R1 K4 ["Indent"]
        8 ORK                              R4 R5 K3 [0]
        9 GETTABLEKS                       R5 R1 K5 ["Height"]
       11 GETTABLEKS                       R6 R1 K6 ["Primary"]
       13 GETTABLEKS                       R7 R1 K7 ["ShowBackground"]
       15 GETTABLEKS                       R8 R1 K8 ["Selected"]
       17 GETTABLEKS                       R9 R2 K9 ["trackTheme"]
       19 LOADNIL                          R10
       20 JUMPIFNOT                        R6 ; [+3]
       21 GETTABLEKS                       R10 R9 K10 ["primaryBackgroundColor"]
       23 JUMP                             ; [+7]
       24 JUMPIFNOT                        R7 ; [+3]
       25 GETTABLEKS                       R10 R9 K11 ["titleBackgroundColor"]
       27 JUMP                             ; [+3]
       28 JUMPIFNOT                        R8 ; [+2]
       29 GETTABLEKS                       R10 R9 K12 ["selectedBackgroundColor"]
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R12 R12 K13 ["Children"]
       34 GETTABLE                         R11 R1 R12
       35 JUMPIF                           R11 ; [+2]
       36 NEWTABLE                         R11 0 0
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R12 R12 K14 ["createElement"]
       41 LOADK                            R13 K15 ["UIPadding"]
       42 DUPTABLE                         R14 K17 [{"PaddingLeft"}]
       43 GETIMPORT                        R15 K20 [UDim.new]
       45 LOADN                            R16 0
       46 GETUPVAL                         R18 1
       47 GETTABLEKS                       R18 R18 K21 ["INDENT_PADDING"]
       49 MUL                              R17 R18 R4
       50 CALL                             R15 2 1
       51 SETTABLEKS                       R15 R14 K16 ["PaddingLeft"]
       53 CALL                             R12 2 1
       54 SETTABLEKS                       R12 R11 K22 ["Padding"]
       56 GETUPVAL                         R12 0
       57 GETTABLEKS                       R12 R12 K14 ["createElement"]
       59 LOADK                            R13 K23 ["Frame"]
       60 DUPTABLE                         R14 K28 [{["Size"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["BackgroundTransparency"], ["LayoutOrder"]}]
       61 GETIMPORT                        R15 K30 [UDim2.new]
       63 LOADN                            R16 1
       64 LOADN                            R17 0
       65 LOADN                            R18 0
       66 MOVE                             R19 R5
       67 CALL                             R15 4 1
       68 SETTABLEKS                       R15 R14 K24 ["Size"]
       70 SETTABLEKS                       R10 R14 K26 ["BackgroundColor3"]
       72 JUMPIFNOT                        R10 ; [+2]
       73 LOADN                            R15 0
       74 JUMP                             ; [+1]
       75 LOADN                            R15 1
       76 SETTABLEKS                       R15 R14 K27 ["BackgroundTransparency"]
       78 SETTABLEKS                       R3 R14 K2 ["LayoutOrder"]
       80 MOVE                             R15 R11
       81 CALL                             R12 3 -1
       82 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K13 ["Constants"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R1 K14 ["PureComponent"]
       36 LOADK                            R8 K15 ["TrackListEntry"]
       37 NAMECALL                         R6 R6 K16 ["extend"]
       39 CALL                             R6 2 1
       40 DUPCLOSURE                       R7 K17 [PROTO_0]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 SETTABLEKS                       R7 R6 K18 ["render"]
       45 MOVE                             R7 R4
       46 DUPTABLE                         R8 K20 [{"Stylizer"}]
       47 GETTABLEKS                       R9 R3 K19 ["Stylizer"]
       49 SETTABLEKS                       R9 R8 K19 ["Stylizer"]
       51 CALL                             R7 1 1
       52 MOVE                             R8 R6
       53 CALL                             R7 1 1
       54 MOVE                             R6 R7
       55 RETURN                           R6 1
