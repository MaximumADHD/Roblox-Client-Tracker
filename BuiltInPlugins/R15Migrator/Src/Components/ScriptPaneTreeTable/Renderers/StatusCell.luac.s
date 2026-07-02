PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Text", "OnItemClicked"}]
        1 GETUPVAL                         R2 0
        2 LOADK                            R4 K3 ["ScriptPane"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K4 ["getText"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K0 ["Text"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K5 ["OnMenuAction"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K1 ["OnItemClicked"]
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETTABLEKS                       R2 R0 K2 ["Plugin"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 3
       17 MOVE                             R5 R2
       18 MOVE                             R6 R3
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 SETTABLEKS                       R1 R0 K0 ["showMenu"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["Localization"]
        6 GETTABLEKS                       R4 R2 K3 ["Value"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K8 [{"AnchorPoint", "Size", "Position"}]
       13 GETIMPORT                        R8 K11 [Vector2.new]
       15 LOADK                            R9 K12 [0.5]
       16 LOADK                            R10 K12 [0.5]
       17 CALL                             R8 2 1
       18 SETTABLEKS                       R8 R7 K5 ["AnchorPoint"]
       20 GETIMPORT                        R8 K15 [UDim2.fromOffset]
       22 LOADN                            R9 48
       23 LOADN                            R10 24
       24 CALL                             R8 2 1
       25 SETTABLEKS                       R8 R7 K6 ["Size"]
       27 GETIMPORT                        R8 K17 [UDim2.fromScale]
       29 LOADK                            R9 K12 [0.5]
       30 LOADK                            R10 K12 [0.5]
       31 CALL                             R8 2 1
       32 SETTABLEKS                       R8 R7 K7 ["Position"]
       34 DUPTABLE                         R8 K20 [{"MenuButton", "Completed"}]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K4 ["createElement"]
       38 GETUPVAL                         R10 2
       39 DUPTABLE                         R11 K25 [{["AnchorPoint"], ["Position"], ["Size"], ["LeftIcon"] = "rbxasset://textures/StudioSharedUI/MeatballMenu.png", ["OnClick"], ["Disabled"]}]
       40 GETIMPORT                        R12 K11 [Vector2.new]
       42 LOADK                            R13 K12 [0.5]
       43 LOADK                            R14 K12 [0.5]
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R11 K5 ["AnchorPoint"]
       47 GETIMPORT                        R12 K17 [UDim2.fromScale]
       49 LOADK                            R13 K26 [0.25]
       50 LOADK                            R14 K12 [0.5]
       51 CALL                             R12 2 1
       52 SETTABLEKS                       R12 R11 K7 ["Position"]
       54 GETIMPORT                        R12 K15 [UDim2.fromOffset]
       56 LOADN                            R13 16
       57 LOADN                            R14 16
       58 CALL                             R12 2 1
       59 SETTABLEKS                       R12 R11 K6 ["Size"]
       61 GETTABLEKS                       R12 R0 K27 ["showMenu"]
       63 SETTABLEKS                       R12 R11 K23 ["OnClick"]
       65 GETTABLEKS                       R12 R2 K24 ["Disabled"]
       67 SETTABLEKS                       R12 R11 K24 ["Disabled"]
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K18 ["MenuButton"]
       72 JUMPIFNOT                        R4 ; [+31]
       73 GETTABLEKS                       R10 R4 K28 ["Checked"]
       75 JUMPIFNOT                        R10 ; [+28]
       76 GETUPVAL                         R9 0
       77 GETTABLEKS                       R9 R9 K4 ["createElement"]
       79 GETUPVAL                         R10 3
       80 DUPTABLE                         R11 K31 [{["AnchorPoint"], ["Size"], ["Position"], ["Image"] = "rbxasset://textures/R15Migrator/Icon_Checkmark.png"}]
       81 GETIMPORT                        R12 K11 [Vector2.new]
       83 LOADK                            R13 K12 [0.5]
       84 LOADK                            R14 K12 [0.5]
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K5 ["AnchorPoint"]
       88 GETIMPORT                        R12 K15 [UDim2.fromOffset]
       90 LOADN                            R13 16
       91 LOADN                            R14 16
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K6 ["Size"]
       95 GETIMPORT                        R12 K17 [UDim2.fromScale]
       97 LOADK                            R13 K32 [0.75]
       98 LOADK                            R14 K12 [0.5]
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K7 ["Position"]
      102 CALL                             R9 2 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R9
      105 SETTABLEKS                       R9 R8 K19 ["Completed"]
      107 CALL                             R5 3 -1
      108 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R3 K12 ["Dash"]
       34 GETTABLEKS                       R7 R6 K13 ["map"]
       36 GETTABLEKS                       R8 R3 K14 ["UI"]
       38 GETTABLEKS                       R9 R8 K15 ["IconButton"]
       40 GETTABLEKS                       R10 R8 K16 ["Image"]
       42 GETTABLEKS                       R11 R8 K17 ["Pane"]
       44 GETTABLEKS                       R12 R8 K18 ["showContextMenu"]
       46 GETIMPORT                        R13 K5 [require]
       48 GETTABLEKS                       R14 R0 K19 ["Src"]
       50 GETTABLEKS                       R14 R14 K20 ["Resources"]
       52 GETTABLEKS                       R14 R14 K21 ["Constants"]
       54 CALL                             R13 1 1
       55 GETTABLEKS                       R14 R0 K19 ["Src"]
       57 GETTABLEKS                       R14 R14 K22 ["Actions"]
       59 GETTABLEKS                       R15 R0 K19 ["Src"]
       61 GETTABLEKS                       R15 R15 K23 ["Components"]
       63 GETIMPORT                        R16 K5 [require]
       65 GETTABLEKS                       R17 R0 K19 ["Src"]
       67 GETTABLEKS                       R17 R17 K24 ["Types"]
       69 CALL                             R16 1 1
       70 GETTABLEKS                       R17 R0 K19 ["Src"]
       72 GETTABLEKS                       R17 R17 K25 ["Util"]
       74 GETTABLEKS                       R18 R1 K26 ["PureComponent"]
       76 LOADK                            R20 K27 ["StatusCell"]
       77 NAMECALL                         R18 R18 K28 ["extend"]
       79 CALL                             R18 2 1
       80 NEWTABLE                         R19 0 4
       82 GETTABLEKS                       R20 R13 K29 ["ScriptMenuActions"]
       84 GETTABLEKS                       R20 R20 K30 ["GoToScript"]
       86 GETTABLEKS                       R21 R13 K29 ["ScriptMenuActions"]
       88 GETTABLEKS                       R21 R21 K31 ["ShowInExplorer"]
       90 GETTABLEKS                       R22 R13 K29 ["ScriptMenuActions"]
       92 GETTABLEKS                       R22 R22 K32 ["RevertScript"]
       94 GETTABLEKS                       R23 R13 K29 ["ScriptMenuActions"]
       96 GETTABLEKS                       R23 R23 K33 ["SelectAllSimilar"]
       98 SETLIST                          R19 R20 4 [1]
      100 DUPCLOSURE                       R20 K34 [PROTO_2]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R19
      103 CAPTURE                          VAL R12
      104 SETTABLEKS                       R20 R18 K35 ["init"]
      106 DUPCLOSURE                       R20 K36 [PROTO_3]
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R10
      111 SETTABLEKS                       R20 R18 K37 ["render"]
      113 MOVE                             R20 R5
      114 DUPTABLE                         R21 K41 [{"Localization", "Stylizer", "Plugin"}]
      115 GETTABLEKS                       R22 R4 K38 ["Localization"]
      117 SETTABLEKS                       R22 R21 K38 ["Localization"]
      119 GETTABLEKS                       R22 R3 K42 ["Style"]
      121 GETTABLEKS                       R22 R22 K39 ["Stylizer"]
      123 SETTABLEKS                       R22 R21 K39 ["Stylizer"]
      125 GETTABLEKS                       R22 R4 K40 ["Plugin"]
      127 SETTABLEKS                       R22 R21 K40 ["Plugin"]
      129 CALL                             R20 1 1
      130 MOVE                             R21 R18
      131 CALL                             R20 1 1
      132 MOVE                             R18 R20
      133 RETURN                           R18 1
