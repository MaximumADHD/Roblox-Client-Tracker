PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationDisableTokenScaling"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADN                            R2 1
        5 RETURN                           R2 1
        6 JUMPIFEQKNIL                     R1 ; [+2]
        8 JUMP                             ; [+1]
        9 LOADN                            R1 1
       10 LOADN                            R4 0
       11 LOADK                            R5 K1 [∞]
       12 FASTCALL3                        MATH_CLAMP R1 R4 R5
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K4 [math.clamp]
       17 CALL                             R2 3 1
       18 MOVE                             R1 R2
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K5 ["Console"]
       22 JUMPIFNOTEQ                      R0 R3 ; [+3]
       24 LOADK                            R2 K6 [1.5]
       25 JUMP                             ; [+1]
       26 LOADN                            R2 1
       27 MUL                              R3 R2 R1
       28 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Tokens"]
        3 MOVE                             R4 R1
        4 JUMPIF                           R4 ; [+3]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["Desktop"]
        8 MOVE                             R6 R2
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R7 R8 K2 ["FoundationDisableTokenScaling"]
       12 JUMPIFNOT                        R7 ; [+2]
       13 LOADN                            R5 1
       14 JUMP                             ; [+22]
       15 JUMPIFEQKNIL                     R6 ; [+2]
       17 JUMP                             ; [+1]
       18 LOADN                            R6 1
       19 LOADN                            R9 0
       20 LOADK                            R10 K3 [∞]
       21 FASTCALL3                        MATH_CLAMP R6 R9 R10
       23 MOVE                             R8 R6
       24 GETIMPORT                        R7 K6 [math.clamp]
       26 CALL                             R7 3 1
       27 MOVE                             R6 R7
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R8 R9 K7 ["Console"]
       31 JUMPIFNOTEQ                      R4 R8 ; [+3]
       33 LOADK                            R7 K8 [1.5]
       34 JUMP                             ; [+1]
       35 LOADN                            R7 1
       36 MUL                              R5 R7 R6
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R7 R8 K9 ["Dark"]
       40 JUMPIFNOTEQ                      R0 R7 ; [+4]
       42 GETTABLEKS                       R6 R3 K9 ["Dark"]
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R6 R3 K10 ["Light"]
       47 MOVE                             R7 R6
       48 MOVE                             R8 R5
       49 CALL                             R7 1 1
       50 DUPTABLE                         R8 K30 [{"Color", "Config", "DarkMode", "Ease", "LightMode", "Inverse", "Semantic", "Size", "Padding", "Margin", "Gap", "Gutter", "Radius", "Stroke", "LineHeight", "FontSize", "FontWeight", "Time", "Typography"}]
       51 GETTABLEKS                       R9 R7 K11 ["Color"]
       53 SETTABLEKS                       R9 R8 K11 ["Color"]
       55 GETTABLEKS                       R9 R7 K12 ["Config"]
       57 SETTABLEKS                       R9 R8 K12 ["Config"]
       59 GETTABLEKS                       R9 R7 K13 ["DarkMode"]
       61 SETTABLEKS                       R9 R8 K13 ["DarkMode"]
       63 GETTABLEKS                       R9 R7 K14 ["Ease"]
       65 SETTABLEKS                       R9 R8 K14 ["Ease"]
       67 GETTABLEKS                       R9 R7 K15 ["LightMode"]
       69 SETTABLEKS                       R9 R8 K15 ["LightMode"]
       71 GETTABLEKS                       R9 R7 K16 ["Inverse"]
       73 SETTABLEKS                       R9 R8 K16 ["Inverse"]
       75 GETTABLEKS                       R9 R7 K17 ["Semantic"]
       77 SETTABLEKS                       R9 R8 K17 ["Semantic"]
       79 GETTABLEKS                       R9 R7 K18 ["Size"]
       81 SETTABLEKS                       R9 R8 K18 ["Size"]
       83 GETTABLEKS                       R9 R7 K19 ["Padding"]
       85 SETTABLEKS                       R9 R8 K19 ["Padding"]
       87 GETTABLEKS                       R9 R7 K20 ["Margin"]
       89 SETTABLEKS                       R9 R8 K20 ["Margin"]
       91 GETTABLEKS                       R9 R7 K21 ["Gap"]
       93 SETTABLEKS                       R9 R8 K21 ["Gap"]
       95 GETTABLEKS                       R9 R7 K22 ["Gutter"]
       97 SETTABLEKS                       R9 R8 K22 ["Gutter"]
       99 GETTABLEKS                       R9 R7 K23 ["Radius"]
      101 SETTABLEKS                       R9 R8 K23 ["Radius"]
      103 GETTABLEKS                       R9 R7 K24 ["Stroke"]
      105 SETTABLEKS                       R9 R8 K24 ["Stroke"]
      107 GETTABLEKS                       R9 R7 K25 ["LineHeight"]
      109 SETTABLEKS                       R9 R8 K25 ["LineHeight"]
      111 GETTABLEKS                       R9 R7 K26 ["FontSize"]
      113 SETTABLEKS                       R9 R8 K26 ["FontSize"]
      115 GETTABLEKS                       R9 R7 K27 ["FontWeight"]
      117 SETTABLEKS                       R9 R8 K27 ["FontWeight"]
      119 GETTABLEKS                       R9 R7 K28 ["Time"]
      121 SETTABLEKS                       R9 R8 K28 ["Time"]
      123 GETTABLEKS                       R9 R7 K29 ["Typography"]
      125 SETTABLEKS                       R9 R8 K29 ["Typography"]
      127 GETTABLEKS                       R10 R8 K12 ["Config"]
      129 GETTABLEKS                       R9 R10 K31 ["UI"]
      131 SETTABLEKS                       R5 R9 K32 ["Scale"]
      133 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["RbxDesignFoundations"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["Device"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Utility"]
       25 GETTABLEKS                       R5 R6 K11 ["Flags"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Enums"]
       32 GETTABLEKS                       R6 R7 K12 ["Theme"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K13 [PROTO_0]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 DUPCLOSURE                       R7 K14 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 MOVE                             R8 R7
       44 GETTABLEKS                       R9 R5 K15 ["Dark"]
       46 GETTABLEKS                       R10 R3 K16 ["Desktop"]
       48 CALL                             R8 2 1
       49 DUPTABLE                         R9 K19 [{"getTokens", "defaultTokens"}]
       50 SETTABLEKS                       R7 R9 K17 ["getTokens"]
       52 SETTABLEKS                       R8 R9 K18 ["defaultTokens"]
       54 RETURN                           R9 1
