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
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["createElement"]
       14 LOADK                            R4 K3 ["StyleLink"]
       15 DUPTABLE                         R5 K5 [{"StyleSheet"}]
       16 SETTABLEKS                       R1 R5 K4 ["StyleSheet"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R4 R0 K0 ["overlay"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

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
        1 GETTABLEKS                       R1 R1 K0 ["toFlipbookStoryProps"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R2 R1 K1 ["widget"]
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R2 R0 K2 ["focus"]
       11 GETTABLEKS                       R4 R2 K3 ["Name"]
       13 JUMPIFEQKS                       R4 K4 ["StorybookEmbed"] ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["useRef"]
       20 GETIMPORT                        R5 K8 [Instance.new]
       22 LOADK                            R6 K9 ["Frame"]
       23 CALL                             R5 1 -1
       24 CALL                             R4 -1 1
       25 GETTABLEKS                       R5 R4 K10 ["current"]
       27 GETTABLEKS                       R5 R5 K11 ["Parent"]
       29 JUMPIFEQ                         R5 R2 ; [+5]
       31 GETTABLEKS                       R5 R4 K10 ["current"]
       33 SETTABLEKS                       R2 R5 K11 ["Parent"]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K12 ["useEffect"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          VAL R4
       40 NEWTABLE                         R7 0 0
       42 CALL                             R5 2 0
       43 JUMPIFNOT                        R3 ; [+2]
       44 LOADNIL                          R5
       45 RETURN                           R5 1
       46 GETTABLEKS                       R5 R4 K10 ["current"]
       48 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R0 K0 ["theme"]
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["toDeveloperStorybookStoryProps"]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R7 R3 K2 ["platform"]
       18 GETTABLE                         R4 R6 R7
       19 GETTABLEKS                       R5 R3 K3 ["settings"]
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R6 R6 K4 ["createElement"]
       24 LOADK                            R7 K5 ["Frame"]
       25 DUPTABLE                         R8 K9 [{"AutomaticSize", "Size", "BackgroundTransparency"}]
       26 GETIMPORT                        R9 K12 [Enum.AutomaticSize.Y]
       28 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
       30 GETIMPORT                        R9 K15 [UDim2.fromScale]
       32 LOADN                            R10 1
       33 LOADN                            R11 0
       34 CALL                             R9 2 1
       35 SETTABLEKS                       R9 R8 K7 ["Size"]
       37 LOADN                            R9 1
       38 SETTABLEKS                       R9 R8 K8 ["BackgroundTransparency"]
       40 DUPTABLE                         R9 K18 [{"UIPadding", "FoundationContext"}]
       41 GETUPVAL                         R10 4
       42 GETTABLEKS                       R10 R10 K4 ["createElement"]
       44 LOADK                            R11 K16 ["UIPadding"]
       45 DUPTABLE                         R12 K23 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       46 GETIMPORT                        R13 K26 [UDim.new]
       48 LOADN                            R14 0
       49 LOADN                            R15 10
       50 CALL                             R13 2 1
       51 SETTABLEKS                       R13 R12 K19 ["PaddingTop"]
       53 GETIMPORT                        R13 K26 [UDim.new]
       55 LOADN                            R14 0
       56 LOADN                            R15 10
       57 CALL                             R13 2 1
       58 SETTABLEKS                       R13 R12 K20 ["PaddingBottom"]
       60 GETIMPORT                        R13 K26 [UDim.new]
       62 LOADN                            R14 0
       63 LOADN                            R15 10
       64 CALL                             R13 2 1
       65 SETTABLEKS                       R13 R12 K21 ["PaddingLeft"]
       67 GETIMPORT                        R13 K26 [UDim.new]
       69 LOADN                            R14 0
       70 LOADN                            R15 10
       71 CALL                             R13 2 1
       72 SETTABLEKS                       R13 R12 K22 ["PaddingRight"]
       74 CALL                             R10 2 1
       75 SETTABLEKS                       R10 R9 K16 ["UIPadding"]
       77 GETUPVAL                         R10 4
       78 GETTABLEKS                       R10 R10 K4 ["createElement"]
       80 GETUPVAL                         R11 5
       81 DUPTABLE                         R12 K32 [{"theme", "device", "preferences", "scale", "overlayGui", "plugin"}]
       82 SETTABLEKS                       R2 R12 K0 ["theme"]
       84 SETTABLEKS                       R4 R12 K27 ["device"]
       86 SETTABLEKS                       R5 R12 K28 ["preferences"]
       88 MOVE                             R13 R5
       89 JUMPIFNOT                        R13 ; [+2]
       90 GETTABLEKS                       R13 R5 K29 ["scale"]
       92 SETTABLEKS                       R13 R12 K29 ["scale"]
       94 SETTABLEKS                       R1 R12 K30 ["overlayGui"]
       96 GETUPVAL                         R14 6
       97 GETTABLEKS                       R14 R14 K33 ["FoundationPopoverPluginSupport"]
       99 JUMPIFNOT                        R14 ; [+3]
      100 GETTABLEKS                       R13 R0 K31 ["plugin"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R13
      104 SETTABLEKS                       R13 R12 K31 ["plugin"]
      106 DUPTABLE                         R13 K36 [{"Child", "StyleLink"}]
      107 GETUPVAL                         R14 4
      108 GETTABLEKS                       R14 R14 K4 ["createElement"]
      110 GETUPVAL                         R15 7
      111 MOVE                             R16 R0
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K34 ["Child"]
      115 GETUPVAL                         R14 4
      116 GETTABLEKS                       R14 R14 K4 ["createElement"]
      118 GETUPVAL                         R15 8
      119 JUMPIFNOT                        R1 ; [+4]
      120 DUPTABLE                         R16 K38 [{"overlay"}]
      121 SETTABLEKS                       R1 R16 K37 ["overlay"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R16
      125 CALL                             R14 2 1
      126 SETTABLEKS                       R14 R13 K35 ["StyleLink"]
      128 CALL                             R10 3 1
      129 SETTABLEKS                       R10 R9 K17 ["FoundationContext"]
      131 CALL                             R6 3 -1
      132 RETURN                           R6 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U7
       10 RETURN                           R1 1

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
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["Device"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R6 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Providers"]
       37 GETTABLEKS                       R7 R7 K2 ["Foundation"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["Theme"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Utility"]
       51 GETTABLEKS                       R9 R9 K15 ["Stories"]
       53 GETTABLEKS                       R9 R9 K16 ["Types"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K13 ["Providers"]
       60 GETTABLEKS                       R10 R10 K17 ["Style"]
       62 GETTABLEKS                       R10 R10 K18 ["StyleSheetContext"]
       64 CALL                             R9 1 1
       65 GETTABLEKS                       R9 R9 K19 ["useStyleSheet"]
       67 DUPCLOSURE                       R10 K20 [PROTO_0]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R2
       71 DUPCLOSURE                       R11 K21 [PROTO_3]
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R2
       74 DUPCLOSURE                       R12 K22 [PROTO_5]
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R10
       83 RETURN                           R12 1
