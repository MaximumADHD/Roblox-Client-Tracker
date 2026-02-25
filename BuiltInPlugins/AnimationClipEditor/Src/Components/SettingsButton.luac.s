PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMenu"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMenu"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Mouse"]
       11 LOADK                            R2 K2 ["PointingHand"]
       12 NAMECALL                         R0 R0 K3 ["__pushCursor"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Mouse"]
       11 NAMECALL                         R0 R0 K2 ["__popCursor"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"showMenu"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["showMenu"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K0 ["showMenu"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K3 ["hideMenu"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K4 ["mouseEnter"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K5 ["mouseLeave"]
       22 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Mouse"]
        4 NAMECALL                         R1 R1 K2 ["__resetCursor"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["OnChangeFPS"]
        8 GETTABLEKS                       R5 R1 K4 ["OnChangeGridSpeed"]
       10 GETTABLEKS                       R6 R1 K5 ["OnChangePlaybackSpeed"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K6 ["createElement"]
       15 LOADK                            R8 K7 ["ImageButton"]
       16 NEWTABLE                         R9 16 0
       18 GETTABLEKS                       R10 R3 K8 ["backgroundColor"]
       20 SETTABLEKS                       R10 R9 K9 ["BackgroundColor3"]
       22 GETTABLEKS                       R10 R3 K10 ["borderColor"]
       24 SETTABLEKS                       R10 R9 K11 ["BorderColor3"]
       26 GETIMPORT                        R10 K14 [UDim2.new]
       28 LOADN                            R11 0
       29 GETUPVAL                         R13 1
       30 GETTABLEKS                       R12 R13 K15 ["SCROLL_BAR_SIZE"]
       32 LOADN                            R13 0
       33 GETUPVAL                         R15 1
       34 GETTABLEKS                       R14 R15 K16 ["TIMELINE_HEIGHT"]
       36 CALL                             R10 4 1
       37 SETTABLEKS                       R10 R9 K17 ["Size"]
       39 GETTABLEKS                       R11 R3 K18 ["settingsButtonTheme"]
       41 GETTABLEKS                       R10 R11 K19 ["image"]
       43 SETTABLEKS                       R10 R9 K20 ["Image"]
       45 GETIMPORT                        R10 K24 [Enum.ScaleType.Fit]
       47 SETTABLEKS                       R10 R9 K22 ["ScaleType"]
       49 GETTABLEKS                       R11 R3 K18 ["settingsButtonTheme"]
       51 GETTABLEKS                       R10 R11 K25 ["imageColor"]
       53 SETTABLEKS                       R10 R9 K26 ["ImageColor3"]
       55 LOADB                            R10 0
       56 SETTABLEKS                       R10 R9 K27 ["AutoButtonColor"]
       58 GETUPVAL                         R12 0
       59 GETTABLEKS                       R11 R12 K28 ["Event"]
       61 GETTABLEKS                       R10 R11 K29 ["Activated"]
       63 GETTABLEKS                       R11 R0 K30 ["showMenu"]
       65 SETTABLE                         R11 R9 R10
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R11 R12 K28 ["Event"]
       69 GETTABLEKS                       R10 R11 K31 ["MouseEnter"]
       71 GETTABLEKS                       R11 R0 K32 ["mouseEnter"]
       73 SETTABLE                         R11 R9 R10
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R11 R12 K28 ["Event"]
       77 GETTABLEKS                       R10 R11 K33 ["MouseLeave"]
       79 GETTABLEKS                       R11 R0 K34 ["mouseLeave"]
       81 SETTABLE                         R11 R9 R10
       82 DUPTABLE                         R10 K36 [{"SettingsMenu"}]
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R11 R12 K6 ["createElement"]
       86 GETUPVAL                         R12 2
       87 DUPTABLE                         R13 K39 [{"ShowMenu", "OnMenuOpened", "OnChangeFPS", "OnChangeGridSpeed", "OnChangePlaybackSpeed"}]
       88 GETTABLEKS                       R14 R2 K30 ["showMenu"]
       90 SETTABLEKS                       R14 R13 K37 ["ShowMenu"]
       92 GETTABLEKS                       R14 R0 K40 ["hideMenu"]
       94 SETTABLEKS                       R14 R13 K38 ["OnMenuOpened"]
       96 SETTABLEKS                       R4 R13 K3 ["OnChangeFPS"]
       98 SETTABLEKS                       R5 R13 K4 ["OnChangeGridSpeed"]
      100 SETTABLEKS                       R6 R13 K5 ["OnChangePlaybackSpeed"]
      102 CALL                             R11 2 1
      103 SETTABLEKS                       R11 R10 K35 ["SettingsMenu"]
      105 CALL                             R7 3 -1
      106 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K8 ["Src"]
       38 GETTABLEKS                       R8 R9 K14 ["Components"]
       40 GETTABLEKS                       R7 R8 K15 ["SettingsMenu"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R1 K16 ["PureComponent"]
       45 LOADK                            R9 K17 ["SettingsButton"]
       46 NAMECALL                         R7 R7 K18 ["extend"]
       48 CALL                             R7 2 1
       49 DUPCLOSURE                       R8 K19 [PROTO_4]
       50 SETTABLEKS                       R8 R7 K20 ["init"]
       52 DUPCLOSURE                       R8 K21 [PROTO_5]
       53 SETTABLEKS                       R8 R7 K22 ["willUnmount"]
       55 DUPCLOSURE                       R8 K23 [PROTO_6]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R6
       59 SETTABLEKS                       R8 R7 K24 ["render"]
       61 MOVE                             R8 R5
       62 DUPTABLE                         R9 K27 [{"Mouse", "Stylizer"}]
       63 GETTABLEKS                       R10 R4 K25 ["Mouse"]
       65 SETTABLEKS                       R10 R9 K25 ["Mouse"]
       67 GETTABLEKS                       R10 R4 K26 ["Stylizer"]
       69 SETTABLEKS                       R10 R9 K26 ["Stylizer"]
       71 CALL                             R8 1 1
       72 MOVE                             R9 R7
       73 CALL                             R8 1 1
       74 MOVE                             R7 R8
       75 RETURN                           R7 1
