PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+2]
        2 JUMP                             ; [+1]
        3 LOADN                            R1 1
        4 LOADN                            R4 0
        5 LOADK                            R5 K0 [∞]
        6 FASTCALL3                        MATH_CLAMP R1 R4 R5
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K3 [math.clamp]
       11 CALL                             R2 3 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K4 ["Console"]
       16 JUMPIFNOTEQ                      R0 R3 ; [+3]
       18 LOADK                            R2 K5 [1.5]
       19 JUMP                             ; [+1]
       20 LOADN                            R2 1
       21 MUL                              R3 R2 R1
       22 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Tokens"]
        3 MOVE                             R5 R2
        4 JUMPIFEQKNIL                     R5 ; [+2]
        6 JUMP                             ; [+1]
        7 LOADN                            R5 1
        8 LOADN                            R8 0
        9 LOADK                            R9 K1 [∞]
       10 FASTCALL3                        MATH_CLAMP R5 R8 R9
       12 MOVE                             R7 R5
       13 GETIMPORT                        R6 K4 [math.clamp]
       15 CALL                             R6 3 1
       16 MOVE                             R5 R6
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K5 ["Console"]
       20 JUMPIFNOTEQ                      R0 R7 ; [+3]
       22 LOADK                            R6 K6 [1.5]
       23 JUMP                             ; [+1]
       24 LOADN                            R6 1
       25 MUL                              R4 R6 R5
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K7 ["Dark"]
       29 JUMPIFNOTEQ                      R1 R6 ; [+4]
       31 GETTABLEKS                       R5 R3 K7 ["Dark"]
       33 JUMP                             ; [+2]
       34 GETTABLEKS                       R5 R3 K8 ["Light"]
       36 MOVE                             R6 R5
       37 MOVE                             R7 R4
       38 CALL                             R6 1 1
       39 DUPTABLE                         R7 K28 [{"Color", "Config", "DarkMode", "Ease", "LightMode", "Inverse", "Semantic", "Size", "Padding", "Margin", "Gap", "Gutter", "Radius", "Stroke", "LineHeight", "FontSize", "FontWeight", "Time", "Typography"}]
       40 GETTABLEKS                       R8 R6 K9 ["Color"]
       42 SETTABLEKS                       R8 R7 K9 ["Color"]
       44 GETTABLEKS                       R8 R6 K10 ["Config"]
       46 SETTABLEKS                       R8 R7 K10 ["Config"]
       48 GETTABLEKS                       R8 R6 K11 ["DarkMode"]
       50 SETTABLEKS                       R8 R7 K11 ["DarkMode"]
       52 GETTABLEKS                       R8 R6 K12 ["Ease"]
       54 SETTABLEKS                       R8 R7 K12 ["Ease"]
       56 GETTABLEKS                       R8 R6 K13 ["LightMode"]
       58 SETTABLEKS                       R8 R7 K13 ["LightMode"]
       60 GETTABLEKS                       R8 R6 K14 ["Inverse"]
       62 SETTABLEKS                       R8 R7 K14 ["Inverse"]
       64 GETTABLEKS                       R8 R6 K15 ["Semantic"]
       66 SETTABLEKS                       R8 R7 K15 ["Semantic"]
       68 GETTABLEKS                       R8 R6 K16 ["Size"]
       70 SETTABLEKS                       R8 R7 K16 ["Size"]
       72 GETTABLEKS                       R8 R6 K17 ["Padding"]
       74 SETTABLEKS                       R8 R7 K17 ["Padding"]
       76 GETTABLEKS                       R8 R6 K18 ["Margin"]
       78 SETTABLEKS                       R8 R7 K18 ["Margin"]
       80 GETTABLEKS                       R8 R6 K19 ["Gap"]
       82 SETTABLEKS                       R8 R7 K19 ["Gap"]
       84 GETTABLEKS                       R8 R6 K20 ["Gutter"]
       86 SETTABLEKS                       R8 R7 K20 ["Gutter"]
       88 GETTABLEKS                       R8 R6 K21 ["Radius"]
       90 SETTABLEKS                       R8 R7 K21 ["Radius"]
       92 GETTABLEKS                       R8 R6 K22 ["Stroke"]
       94 SETTABLEKS                       R8 R7 K22 ["Stroke"]
       96 GETTABLEKS                       R8 R6 K23 ["LineHeight"]
       98 SETTABLEKS                       R8 R7 K23 ["LineHeight"]
      100 GETTABLEKS                       R8 R6 K24 ["FontSize"]
      102 SETTABLEKS                       R8 R7 K24 ["FontSize"]
      104 GETTABLEKS                       R8 R6 K25 ["FontWeight"]
      106 SETTABLEKS                       R8 R7 K25 ["FontWeight"]
      108 GETTABLEKS                       R8 R6 K26 ["Time"]
      110 SETTABLEKS                       R8 R7 K26 ["Time"]
      112 GETTABLEKS                       R8 R6 K27 ["Typography"]
      114 SETTABLEKS                       R8 R7 K27 ["Typography"]
      116 GETTABLEKS                       R9 R7 K10 ["Config"]
      118 GETTABLEKS                       R8 R9 K29 ["UI"]
      120 SETTABLEKS                       R4 R8 K30 ["Scale"]
      122 RETURN                           R7 1

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
       18 GETTABLEKS                       R4 R5 K9 ["Theme"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Enums"]
       25 GETTABLEKS                       R5 R6 K10 ["Device"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 CAPTURE                          VAL R4
       30 DUPCLOSURE                       R6 K12 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 MOVE                             R7 R6
       35 GETTABLEKS                       R8 R4 K13 ["Desktop"]
       37 GETTABLEKS                       R9 R3 K14 ["Dark"]
       39 CALL                             R7 2 1
       40 DUPTABLE                         R8 K17 [{"getTokens", "defaultTokens"}]
       41 SETTABLEKS                       R6 R8 K15 ["getTokens"]
       43 SETTABLEKS                       R7 R8 K16 ["defaultTokens"]
       45 RETURN                           R8 1
