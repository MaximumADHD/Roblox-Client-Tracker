PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Text", "OnItemClicked"}]
        1 GETUPVAL                         R2 0
        2 LOADK                            R4 K3 ["ScriptPane"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R2 R2 K4 ["getText"]
        6 CALL                             R2 3 1
        7 SETTABLEKS                       R2 R1 K0 ["Text"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K5 ["OnMenuAction"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K1 ["OnItemClicked"]
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
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
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["createElement"]
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
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R9 R10 K4 ["createElement"]
       38 GETUPVAL                         R10 2
       39 DUPTABLE                         R11 K24 [{"AnchorPoint", "Position", "Size", "LeftIcon", "OnClick", "Disabled"}]
       40 GETIMPORT                        R12 K11 [Vector2.new]
       42 LOADK                            R13 K12 [0.5]
       43 LOADK                            R14 K12 [0.5]
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R11 K5 ["AnchorPoint"]
       47 GETIMPORT                        R12 K17 [UDim2.fromScale]
       49 LOADK                            R13 K25 [0.25]
       50 LOADK                            R14 K12 [0.5]
       51 CALL                             R12 2 1
       52 SETTABLEKS                       R12 R11 K7 ["Position"]
       54 GETIMPORT                        R12 K15 [UDim2.fromOffset]
       56 LOADN                            R13 16
       57 LOADN                            R14 16
       58 CALL                             R12 2 1
       59 SETTABLEKS                       R12 R11 K6 ["Size"]
       61 LOADK                            R12 K26 ["rbxasset://textures/StudioSharedUI/MeatballMenu.png"]
       62 SETTABLEKS                       R12 R11 K21 ["LeftIcon"]
       64 GETTABLEKS                       R12 R0 K27 ["showMenu"]
       66 SETTABLEKS                       R12 R11 K22 ["OnClick"]
       68 GETTABLEKS                       R12 R2 K23 ["Disabled"]
       70 SETTABLEKS                       R12 R11 K23 ["Disabled"]
       72 CALL                             R9 2 1
       73 SETTABLEKS                       R9 R8 K18 ["MenuButton"]
       75 JUMPIFNOT                        R4 ; [+34]
       76 GETTABLEKS                       R10 R4 K28 ["Checked"]
       78 JUMPIFNOT                        R10 ; [+31]
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R9 R10 K4 ["createElement"]
       82 GETUPVAL                         R10 3
       83 DUPTABLE                         R11 K30 [{"AnchorPoint", "Size", "Position", "Image"}]
       84 GETIMPORT                        R12 K11 [Vector2.new]
       86 LOADK                            R13 K12 [0.5]
       87 LOADK                            R14 K12 [0.5]
       88 CALL                             R12 2 1
       89 SETTABLEKS                       R12 R11 K5 ["AnchorPoint"]
       91 GETIMPORT                        R12 K15 [UDim2.fromOffset]
       93 LOADN                            R13 16
       94 LOADN                            R14 16
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K6 ["Size"]
       98 GETIMPORT                        R12 K17 [UDim2.fromScale]
      100 LOADK                            R13 K31 [0.75]
      101 LOADK                            R14 K12 [0.5]
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K7 ["Position"]
      105 LOADK                            R12 K32 ["rbxasset://textures/R15Migrator/Icon_Checkmark.png"]
      106 SETTABLEKS                       R12 R11 K29 ["Image"]
      108 CALL                             R9 2 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R9
      111 SETTABLEKS                       R9 R8 K19 ["Completed"]
      113 CALL                             R5 3 -1
      114 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
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
       48 GETTABLEKS                       R16 R0 K19 ["Src"]
       50 GETTABLEKS                       R15 R16 K20 ["Resources"]
       52 GETTABLEKS                       R14 R15 K21 ["Constants"]
       54 CALL                             R13 1 1
       55 GETTABLEKS                       R15 R0 K19 ["Src"]
       57 GETTABLEKS                       R14 R15 K22 ["Actions"]
       59 GETTABLEKS                       R16 R0 K19 ["Src"]
       61 GETTABLEKS                       R15 R16 K23 ["Components"]
       63 GETIMPORT                        R16 K5 [require]
       65 GETTABLEKS                       R18 R0 K19 ["Src"]
       67 GETTABLEKS                       R17 R18 K24 ["Types"]
       69 CALL                             R16 1 1
       70 GETTABLEKS                       R18 R0 K19 ["Src"]
       72 GETTABLEKS                       R17 R18 K25 ["Util"]
       74 GETTABLEKS                       R18 R1 K26 ["PureComponent"]
       76 LOADK                            R20 K27 ["StatusCell"]
       77 NAMECALL                         R18 R18 K28 ["extend"]
       79 CALL                             R18 2 1
       80 NEWTABLE                         R19 0 4
       82 GETTABLEKS                       R21 R13 K29 ["ScriptMenuActions"]
       84 GETTABLEKS                       R20 R21 K30 ["GoToScript"]
       86 GETTABLEKS                       R22 R13 K29 ["ScriptMenuActions"]
       88 GETTABLEKS                       R21 R22 K31 ["ShowInExplorer"]
       90 GETTABLEKS                       R23 R13 K29 ["ScriptMenuActions"]
       92 GETTABLEKS                       R22 R23 K32 ["RevertScript"]
       94 GETTABLEKS                       R24 R13 K29 ["ScriptMenuActions"]
       96 GETTABLEKS                       R23 R24 K33 ["SelectAllSimilar"]
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
      119 GETTABLEKS                       R23 R3 K42 ["Style"]
      121 GETTABLEKS                       R22 R23 K39 ["Stylizer"]
      123 SETTABLEKS                       R22 R21 K39 ["Stylizer"]
      125 GETTABLEKS                       R22 R4 K40 ["Plugin"]
      127 SETTABLEKS                       R22 R21 K40 ["Plugin"]
      129 CALL                             R20 1 1
      130 MOVE                             R21 R18
      131 CALL                             R20 1 1
      132 MOVE                             R18 R20
      133 RETURN                           R18 1
