PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationDisableTokenScaling"]
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
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K5 ["Console"]
       22 JUMPIFNOTEQ                      R0 R3 ; [+3]
       24 LOADK                            R2 K6 [1.5]
       25 JUMP                             ; [+1]
       26 LOADN                            R2 1
       27 MUL                              R3 R2 R1
       28 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationTokenOverrides"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 1
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K1 ["getTokenValue"]
       12 MOVE                             R8 R0
       13 MOVE                             R9 R6
       14 CALL                             R7 2 1
       15 JUMPIFEQKNIL                     R7 ; [+8]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K2 ["setTokenValue"]
       20 MOVE                             R9 R0
       21 MOVE                             R10 R5
       22 MOVE                             R11 R7
       23 CALL                             R8 3 0
       24 FORGLOOP                         R2 2 ; [-16]
       26 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Tokens"]
        3 MOVE                             R5 R1
        4 JUMPIF                           R5 ; [+3]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["Desktop"]
        8 MOVE                             R7 R2
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R8 R8 K2 ["FoundationDisableTokenScaling"]
       12 JUMPIFNOT                        R8 ; [+2]
       13 LOADN                            R6 1
       14 JUMP                             ; [+22]
       15 JUMPIFEQKNIL                     R7 ; [+2]
       17 JUMP                             ; [+1]
       18 LOADN                            R7 1
       19 LOADN                            R10 0
       20 LOADK                            R11 K3 [∞]
       21 FASTCALL3                        MATH_CLAMP R7 R10 R11
       23 MOVE                             R9 R7
       24 GETIMPORT                        R8 K6 [math.clamp]
       26 CALL                             R8 3 1
       27 MOVE                             R7 R8
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K7 ["Console"]
       31 JUMPIFNOTEQ                      R5 R9 ; [+3]
       33 LOADK                            R8 K8 [1.5]
       34 JUMP                             ; [+1]
       35 LOADN                            R8 1
       36 MUL                              R6 R8 R7
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R8 R8 K9 ["Dark"]
       40 JUMPIFNOTEQ                      R0 R8 ; [+4]
       42 GETTABLEKS                       R7 R4 K9 ["Dark"]
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R7 R4 K10 ["Light"]
       47 MOVE                             R8 R7
       48 MOVE                             R9 R6
       49 CALL                             R8 1 1
       50 DUPTABLE                         R9 K30 [{"Color", "Config", "DarkMode", "Ease", "LightMode", "Inverse", "Semantic", "Size", "Padding", "Margin", "Gap", "Gutter", "Radius", "Stroke", "LineHeight", "FontSize", "FontWeight", "Time", "Typography"}]
       51 GETTABLEKS                       R10 R8 K11 ["Color"]
       53 SETTABLEKS                       R10 R9 K11 ["Color"]
       55 GETTABLEKS                       R10 R8 K12 ["Config"]
       57 SETTABLEKS                       R10 R9 K12 ["Config"]
       59 GETTABLEKS                       R10 R8 K13 ["DarkMode"]
       61 SETTABLEKS                       R10 R9 K13 ["DarkMode"]
       63 GETTABLEKS                       R10 R8 K14 ["Ease"]
       65 SETTABLEKS                       R10 R9 K14 ["Ease"]
       67 GETTABLEKS                       R10 R8 K15 ["LightMode"]
       69 SETTABLEKS                       R10 R9 K15 ["LightMode"]
       71 GETTABLEKS                       R10 R8 K16 ["Inverse"]
       73 SETTABLEKS                       R10 R9 K16 ["Inverse"]
       75 GETTABLEKS                       R10 R8 K17 ["Semantic"]
       77 SETTABLEKS                       R10 R9 K17 ["Semantic"]
       79 GETTABLEKS                       R10 R8 K18 ["Size"]
       81 SETTABLEKS                       R10 R9 K18 ["Size"]
       83 GETTABLEKS                       R10 R8 K19 ["Padding"]
       85 SETTABLEKS                       R10 R9 K19 ["Padding"]
       87 GETTABLEKS                       R10 R8 K20 ["Margin"]
       89 SETTABLEKS                       R10 R9 K20 ["Margin"]
       91 GETTABLEKS                       R10 R8 K21 ["Gap"]
       93 SETTABLEKS                       R10 R9 K21 ["Gap"]
       95 GETTABLEKS                       R10 R8 K22 ["Gutter"]
       97 SETTABLEKS                       R10 R9 K22 ["Gutter"]
       99 GETTABLEKS                       R10 R8 K23 ["Radius"]
      101 SETTABLEKS                       R10 R9 K23 ["Radius"]
      103 GETTABLEKS                       R10 R8 K24 ["Stroke"]
      105 SETTABLEKS                       R10 R9 K24 ["Stroke"]
      107 GETTABLEKS                       R10 R8 K25 ["LineHeight"]
      109 SETTABLEKS                       R10 R9 K25 ["LineHeight"]
      111 GETTABLEKS                       R10 R8 K26 ["FontSize"]
      113 SETTABLEKS                       R10 R9 K26 ["FontSize"]
      115 GETTABLEKS                       R10 R8 K27 ["FontWeight"]
      117 SETTABLEKS                       R10 R9 K27 ["FontWeight"]
      119 GETTABLEKS                       R10 R8 K28 ["Time"]
      121 SETTABLEKS                       R10 R9 K28 ["Time"]
      123 GETTABLEKS                       R10 R8 K29 ["Typography"]
      125 SETTABLEKS                       R10 R9 K29 ["Typography"]
      127 JUMPIFNOT                        R3 ; [+4]
      128 GETUPVAL                         R10 4
      129 MOVE                             R11 R9
      130 MOVE                             R12 R3
      131 CALL                             R10 2 0
      132 RETURN                           R9 1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["Device"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Utility"]
       25 GETTABLEKS                       R5 R5 K11 ["Flags"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Enums"]
       32 GETTABLEKS                       R6 R6 K12 ["Theme"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K13 ["TokenProcessingUtilities"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K14 [PROTO_0]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R8 K15 [PROTO_1]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R6
       48 DUPCLOSURE                       R9 K16 [PROTO_2]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R8
       54 MOVE                             R10 R9
       55 GETTABLEKS                       R11 R5 K17 ["Dark"]
       57 GETTABLEKS                       R12 R3 K18 ["Desktop"]
       59 CALL                             R10 2 1
       60 DUPTABLE                         R11 K21 [{"getTokens", "defaultTokens"}]
       61 SETTABLEKS                       R9 R11 K19 ["getTokens"]
       63 SETTABLEKS                       R10 R11 K20 ["defaultTokens"]
       65 RETURN                           R11 1
