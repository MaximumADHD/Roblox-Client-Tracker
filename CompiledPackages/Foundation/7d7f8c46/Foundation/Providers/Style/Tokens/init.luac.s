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
        3 MOVE                             R5 R2
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R6 R7 K1 ["FoundationDisableTokenScaling"]
        7 JUMPIFNOT                        R6 ; [+2]
        8 LOADN                            R4 1
        9 JUMP                             ; [+22]
       10 JUMPIFEQKNIL                     R5 ; [+2]
       12 JUMP                             ; [+1]
       13 LOADN                            R5 1
       14 LOADN                            R8 0
       15 LOADK                            R9 K2 [∞]
       16 FASTCALL3                        MATH_CLAMP R5 R8 R9
       18 MOVE                             R7 R5
       19 GETIMPORT                        R6 K5 [math.clamp]
       21 CALL                             R6 3 1
       22 MOVE                             R5 R6
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R7 R8 K6 ["Console"]
       26 JUMPIFNOTEQ                      R0 R7 ; [+3]
       28 LOADK                            R6 K7 [1.5]
       29 JUMP                             ; [+1]
       30 LOADN                            R6 1
       31 MUL                              R4 R6 R5
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R6 R7 K8 ["Dark"]
       35 JUMPIFNOTEQ                      R1 R6 ; [+4]
       37 GETTABLEKS                       R5 R3 K8 ["Dark"]
       39 JUMP                             ; [+2]
       40 GETTABLEKS                       R5 R3 K9 ["Light"]
       42 MOVE                             R6 R5
       43 MOVE                             R7 R4
       44 CALL                             R6 1 1
       45 DUPTABLE                         R7 K29 [{"Color", "Config", "DarkMode", "Ease", "LightMode", "Inverse", "Semantic", "Size", "Padding", "Margin", "Gap", "Gutter", "Radius", "Stroke", "LineHeight", "FontSize", "FontWeight", "Time", "Typography"}]
       46 GETTABLEKS                       R8 R6 K10 ["Color"]
       48 SETTABLEKS                       R8 R7 K10 ["Color"]
       50 GETTABLEKS                       R8 R6 K11 ["Config"]
       52 SETTABLEKS                       R8 R7 K11 ["Config"]
       54 GETTABLEKS                       R8 R6 K12 ["DarkMode"]
       56 SETTABLEKS                       R8 R7 K12 ["DarkMode"]
       58 GETTABLEKS                       R8 R6 K13 ["Ease"]
       60 SETTABLEKS                       R8 R7 K13 ["Ease"]
       62 GETTABLEKS                       R8 R6 K14 ["LightMode"]
       64 SETTABLEKS                       R8 R7 K14 ["LightMode"]
       66 GETTABLEKS                       R8 R6 K15 ["Inverse"]
       68 SETTABLEKS                       R8 R7 K15 ["Inverse"]
       70 GETTABLEKS                       R8 R6 K16 ["Semantic"]
       72 SETTABLEKS                       R8 R7 K16 ["Semantic"]
       74 GETTABLEKS                       R8 R6 K17 ["Size"]
       76 SETTABLEKS                       R8 R7 K17 ["Size"]
       78 GETTABLEKS                       R8 R6 K18 ["Padding"]
       80 SETTABLEKS                       R8 R7 K18 ["Padding"]
       82 GETTABLEKS                       R8 R6 K19 ["Margin"]
       84 SETTABLEKS                       R8 R7 K19 ["Margin"]
       86 GETTABLEKS                       R8 R6 K20 ["Gap"]
       88 SETTABLEKS                       R8 R7 K20 ["Gap"]
       90 GETTABLEKS                       R8 R6 K21 ["Gutter"]
       92 SETTABLEKS                       R8 R7 K21 ["Gutter"]
       94 GETTABLEKS                       R8 R6 K22 ["Radius"]
       96 SETTABLEKS                       R8 R7 K22 ["Radius"]
       98 GETTABLEKS                       R8 R6 K23 ["Stroke"]
      100 SETTABLEKS                       R8 R7 K23 ["Stroke"]
      102 GETTABLEKS                       R8 R6 K24 ["LineHeight"]
      104 SETTABLEKS                       R8 R7 K24 ["LineHeight"]
      106 GETTABLEKS                       R8 R6 K25 ["FontSize"]
      108 SETTABLEKS                       R8 R7 K25 ["FontSize"]
      110 GETTABLEKS                       R8 R6 K26 ["FontWeight"]
      112 SETTABLEKS                       R8 R7 K26 ["FontWeight"]
      114 GETTABLEKS                       R8 R6 K27 ["Time"]
      116 SETTABLEKS                       R8 R7 K27 ["Time"]
      118 GETTABLEKS                       R8 R6 K28 ["Typography"]
      120 SETTABLEKS                       R8 R7 K28 ["Typography"]
      122 GETTABLEKS                       R9 R7 K11 ["Config"]
      124 GETTABLEKS                       R8 R9 K30 ["UI"]
      126 SETTABLEKS                       R4 R8 K31 ["Scale"]
      128 RETURN                           R7 1

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
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 MOVE                             R8 R7
       44 GETTABLEKS                       R9 R3 K15 ["Desktop"]
       46 GETTABLEKS                       R10 R5 K16 ["Dark"]
       48 CALL                             R8 2 1
       49 DUPTABLE                         R9 K19 [{"getTokens", "defaultTokens"}]
       50 SETTABLEKS                       R7 R9 K17 ["getTokens"]
       52 SETTABLEKS                       R8 R9 K18 ["defaultTokens"]
       54 RETURN                           R9 1
