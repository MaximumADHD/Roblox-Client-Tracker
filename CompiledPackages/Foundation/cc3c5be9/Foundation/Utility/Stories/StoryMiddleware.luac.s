PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["overlay"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["createPortal"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K2 ["createElement"]
       14 LOADK                            R4 K3 ["StyleLink"]
       15 DUPTABLE                         R5 K5 [{"StyleSheet"}]
       16 SETTABLEKS                       R1 R5 K4 ["StyleSheet"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R4 R0 K0 ["overlay"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 NAMECALL                         R0 R0 K1 ["Destroy"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETIMPORT                        R1 K3 [UDim2.fromScale]
        5 LOADN                            R2 1
        6 LOADN                            R3 1
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K4 ["Size"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["current"]
       13 LOADN                            R1 1
       14 SETTABLEKS                       R1 R0 K5 ["BackgroundTransparency"]
       16 NEWCLOSURE                       R0 P0
       17 CAPTURE                          UPVAL U0
       18 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["focus"]
        2 GETTABLEKS                       R2 R3 K1 ["Name"]
        4 JUMPIFEQKS                       R2 K2 ["StorybookEmbed"] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["useRef"]
       11 GETIMPORT                        R3 K6 [Instance.new]
       13 LOADK                            R4 K7 ["Frame"]
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 1
       16 GETTABLEKS                       R4 R2 K8 ["current"]
       18 GETTABLEKS                       R3 R4 K9 ["Parent"]
       20 GETTABLEKS                       R4 R0 K0 ["focus"]
       22 JUMPIFEQ                         R3 R4 ; [+7]
       24 GETTABLEKS                       R3 R2 K8 ["current"]
       26 GETTABLEKS                       R4 R0 K0 ["focus"]
       28 SETTABLEKS                       R4 R3 K9 ["Parent"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K10 ["useEffect"]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          VAL R2
       35 NEWTABLE                         R5 0 0
       37 CALL                             R3 2 0
       38 JUMPIFNOT                        R1 ; [+2]
       39 LOADNIL                          R3
       40 RETURN                           R3 1
       41 GETTABLEKS                       R3 R2 K8 ["current"]
       43 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R0 K0 ["theme"]
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["createElement"]
       10 LOADK                            R4 K2 ["Frame"]
       11 DUPTABLE                         R5 K6 [{"AutomaticSize", "Size", "BackgroundTransparency"}]
       12 GETIMPORT                        R6 K9 [Enum.AutomaticSize.Y]
       14 SETTABLEKS                       R6 R5 K3 ["AutomaticSize"]
       16 GETIMPORT                        R6 K12 [UDim2.fromScale]
       18 LOADN                            R7 1
       19 LOADN                            R8 0
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R5 K4 ["Size"]
       23 LOADN                            R6 1
       24 SETTABLEKS                       R6 R5 K5 ["BackgroundTransparency"]
       26 DUPTABLE                         R6 K15 [{"UIPadding", "FoundationContext"}]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K1 ["createElement"]
       30 LOADK                            R8 K13 ["UIPadding"]
       31 DUPTABLE                         R9 K20 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       32 GETIMPORT                        R10 K23 [UDim.new]
       34 LOADN                            R11 0
       35 LOADN                            R12 10
       36 CALL                             R10 2 1
       37 SETTABLEKS                       R10 R9 K16 ["PaddingTop"]
       39 GETIMPORT                        R10 K23 [UDim.new]
       41 LOADN                            R11 0
       42 LOADN                            R12 10
       43 CALL                             R10 2 1
       44 SETTABLEKS                       R10 R9 K17 ["PaddingBottom"]
       46 GETIMPORT                        R10 K23 [UDim.new]
       48 LOADN                            R11 0
       49 LOADN                            R12 10
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K18 ["PaddingLeft"]
       53 GETIMPORT                        R10 K23 [UDim.new]
       55 LOADN                            R11 0
       56 LOADN                            R12 10
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K19 ["PaddingRight"]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K13 ["UIPadding"]
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R7 R8 K1 ["createElement"]
       66 GETUPVAL                         R8 3
       67 DUPTABLE                         R9 K29 [{"theme", "device", "preferences", "scale", "overlayGui", "plugin"}]
       68 SETTABLEKS                       R2 R9 K0 ["theme"]
       70 GETUPVAL                         R11 4
       71 GETTABLEKS                       R12 R0 K30 ["platform"]
       73 GETTABLE                         R10 R11 R12
       74 SETTABLEKS                       R10 R9 K24 ["device"]
       76 GETTABLEKS                       R10 R0 K31 ["settings"]
       78 SETTABLEKS                       R10 R9 K25 ["preferences"]
       80 GETTABLEKS                       R10 R0 K31 ["settings"]
       82 JUMPIFNOT                        R10 ; [+4]
       83 GETTABLEKS                       R11 R0 K31 ["settings"]
       85 GETTABLEKS                       R10 R11 K26 ["scale"]
       87 SETTABLEKS                       R10 R9 K26 ["scale"]
       89 SETTABLEKS                       R1 R9 K27 ["overlayGui"]
       91 GETUPVAL                         R12 5
       92 GETTABLEKS                       R11 R12 K32 ["FoundationPopoverPluginSupport"]
       94 JUMPIFNOT                        R11 ; [+3]
       95 GETTABLEKS                       R10 R0 K28 ["plugin"]
       97 JUMP                             ; [+1]
       98 LOADNIL                          R10
       99 SETTABLEKS                       R10 R9 K28 ["plugin"]
      101 DUPTABLE                         R10 K35 [{"Child", "StyleLink"}]
      102 GETUPVAL                         R12 2
      103 GETTABLEKS                       R11 R12 K1 ["createElement"]
      105 GETUPVAL                         R12 6
      106 MOVE                             R13 R0
      107 CALL                             R11 2 1
      108 SETTABLEKS                       R11 R10 K33 ["Child"]
      110 GETUPVAL                         R12 2
      111 GETTABLEKS                       R11 R12 K1 ["createElement"]
      113 GETUPVAL                         R12 7
      114 JUMPIFNOT                        R1 ; [+4]
      115 DUPTABLE                         R13 K37 [{"overlay"}]
      116 SETTABLEKS                       R1 R13 K36 ["overlay"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R13
      120 CALL                             R11 2 1
      121 SETTABLEKS                       R11 R10 K34 ["StyleLink"]
      123 CALL                             R7 3 1
      124 SETTABLEKS                       R7 R6 K14 ["FoundationContext"]
      126 CALL                             R3 3 -1
      127 RETURN                           R3 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U6
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Providers"]
       30 GETTABLEKS                       R6 R7 K2 ["Foundation"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R0 K11 ["Providers"]
       37 GETTABLEKS                       R8 R9 K12 ["Preferences"]
       39 GETTABLEKS                       R7 R8 K13 ["PreferencesProvider"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Enums"]
       46 GETTABLEKS                       R8 R9 K15 ["Theme"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K14 ["Enums"]
       53 GETTABLEKS                       R9 R10 K16 ["Device"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R13 R0 K11 ["Providers"]
       60 GETTABLEKS                       R12 R13 K17 ["Style"]
       62 GETTABLEKS                       R11 R12 K18 ["StyleSheetContext"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R9 R10 K19 ["useStyleSheet"]
       67 DUPCLOSURE                       R10 K20 [PROTO_0]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R2
       71 DUPCLOSURE                       R11 K21 [PROTO_3]
       72 CAPTURE                          VAL R2
       73 DUPCLOSURE                       R12 K22 [PROTO_5]
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R10
       81 RETURN                           R12 1
