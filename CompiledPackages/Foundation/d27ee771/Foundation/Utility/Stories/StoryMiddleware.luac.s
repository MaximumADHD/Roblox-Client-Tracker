PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["overlay"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["createPortal"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["FoundationDisableStylingPolyfill"]
       14 JUMPIFNOT                        R4 ; [+9]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K3 ["createElement"]
       18 LOADK                            R4 K4 ["StyleLink"]
       19 DUPTABLE                         R5 K6 [{"StyleSheet"}]
       20 SETTABLEKS                       R1 R5 K5 ["StyleSheet"]
       22 CALL                             R3 2 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 GETTABLEKS                       R4 R0 K0 ["overlay"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 NAMECALL                         R0 R0 K1 ["Destroy"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETIMPORT                        R1 K3 [UDim2.fromScale]
        5 LOADN                            R2 1
        6 LOADN                            R3 1
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K4 ["Size"]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["current"]
       13 LOADN                            R1 1
       14 SETTABLEKS                       R1 R0 K5 ["BackgroundTransparency"]
       16 NEWCLOSURE                       R0 P0
       17 CAPTURE                          UPVAL U0
       18 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 GETIMPORT                        R2 K3 [Instance.new]
        5 LOADK                            R3 K4 ["Frame"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 1
        8 GETTABLEKS                       R2 R1 K5 ["current"]
       10 GETTABLEKS                       R2 R2 K6 ["Parent"]
       12 GETTABLEKS                       R3 R0 K7 ["focus"]
       14 JUMPIFEQ                         R2 R3 ; [+7]
       16 GETTABLEKS                       R2 R1 K5 ["current"]
       18 GETTABLEKS                       R3 R0 K7 ["focus"]
       20 SETTABLEKS                       R3 R2 K6 ["Parent"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K8 ["useEffect"]
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R4 0 0
       29 CALL                             R2 2 0
       30 GETTABLEKS                       R2 R1 K5 ["current"]
       32 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R0 K0 ["theme"]
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
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
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K1 ["createElement"]
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
       63 GETUPVAL                         R7 2
       64 GETTABLEKS                       R7 R7 K1 ["createElement"]
       66 GETUPVAL                         R8 3
       67 DUPTABLE                         R9 K28 [{"theme", "device", "preferences", "scale", "overlayGui"}]
       68 SETTABLEKS                       R2 R9 K0 ["theme"]
       70 GETUPVAL                         R11 4
       71 GETTABLEKS                       R12 R0 K29 ["platform"]
       73 GETTABLE                         R10 R11 R12
       74 SETTABLEKS                       R10 R9 K24 ["device"]
       76 GETTABLEKS                       R10 R0 K30 ["settings"]
       78 SETTABLEKS                       R10 R9 K25 ["preferences"]
       80 GETTABLEKS                       R10 R0 K30 ["settings"]
       82 JUMPIFNOT                        R10 ; [+4]
       83 GETTABLEKS                       R10 R0 K30 ["settings"]
       85 GETTABLEKS                       R10 R10 K26 ["scale"]
       87 SETTABLEKS                       R10 R9 K26 ["scale"]
       89 SETTABLEKS                       R1 R9 K27 ["overlayGui"]
       91 DUPTABLE                         R10 K33 [{"Child", "StyleLink"}]
       92 GETUPVAL                         R11 2
       93 GETTABLEKS                       R11 R11 K1 ["createElement"]
       95 GETUPVAL                         R12 5
       96 MOVE                             R13 R0
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K31 ["Child"]
      100 GETUPVAL                         R11 2
      101 GETTABLEKS                       R11 R11 K1 ["createElement"]
      103 GETUPVAL                         R12 6
      104 DUPTABLE                         R13 K35 [{"overlay"}]
      105 SETTABLEKS                       R1 R13 K34 ["overlay"]
      107 CALL                             R11 2 1
      108 SETTABLEKS                       R11 R10 K32 ["StyleLink"]
      110 CALL                             R7 3 1
      111 SETTABLEKS                       R7 R6 K14 ["FoundationContext"]
      113 CALL                             R3 3 -1
      114 RETURN                           R3 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

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
       21 GETTABLEKS                       R5 R0 K9 ["Providers"]
       23 GETTABLEKS                       R5 R5 K2 ["Foundation"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Providers"]
       30 GETTABLEKS                       R6 R6 K10 ["Preferences"]
       32 GETTABLEKS                       R6 R6 K11 ["PreferencesProvider"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["Theme"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Enums"]
       46 GETTABLEKS                       R8 R8 K14 ["Device"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Utility"]
       53 GETTABLEKS                       R9 R9 K16 ["Flags"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K9 ["Providers"]
       60 GETTABLEKS                       R10 R10 K17 ["Style"]
       62 GETTABLEKS                       R10 R10 K18 ["StyleSheetContext"]
       64 CALL                             R9 1 1
       65 GETTABLEKS                       R9 R9 K19 ["useStyleSheet"]
       67 DUPCLOSURE                       R10 K20 [PROTO_0]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R2
       72 DUPCLOSURE                       R11 K21 [PROTO_3]
       73 CAPTURE                          VAL R2
       74 DUPCLOSURE                       R12 K22 [PROTO_5]
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R10
       81 RETURN                           R12 1
