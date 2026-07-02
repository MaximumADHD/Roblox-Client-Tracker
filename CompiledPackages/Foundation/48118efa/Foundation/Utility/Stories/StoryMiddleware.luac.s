PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getTokenOverrides"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["subscribe"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 1
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          VAL R0
        8 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useState"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["useEffect"]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R5 0 1
       16 MOVE                             R6 R0
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 0
       20 RETURN                           R1 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 NAMECALL                         R0 R0 K1 ["Destroy"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R0 K0 ["theme"]
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K1 ["toDeveloperStorybookStoryProps"]
       12 MOVE                             R5 R0
       13 CALL                             R4 1 1
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 JUMPIFNOT                        R4 ; [+6]
       17 GETUPVAL                         R7 4
       18 GETTABLEKS                       R8 R4 K2 ["platform"]
       20 GETTABLE                         R5 R7 R8
       21 GETTABLEKS                       R6 R4 K3 ["settings"]
       23 GETUPVAL                         R7 5
       24 GETTABLEKS                       R7 R7 K4 ["FoundationPopoverPluginSupport"]
       26 GETUPVAL                         R8 5
       27 GETTABLEKS                       R8 R8 K5 ["FoundationPopoverPluginSecurityGate"]
       29 JUMPIFNOT                        R8 ; [+5]
       30 MOVE                             R8 R7
       31 JUMPIFNOT                        R8 ; [+2]
       32 GETUPVAL                         R8 6
       33 CALL                             R8 0 1
       34 MOVE                             R7 R8
       35 GETUPVAL                         R8 7
       36 GETTABLEKS                       R8 R8 K6 ["createElement"]
       38 LOADK                            R9 K7 ["Frame"]
       39 DUPTABLE                         R10 K12 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1}]
       40 GETIMPORT                        R11 K15 [Enum.AutomaticSize.Y]
       42 SETTABLEKS                       R11 R10 K8 ["AutomaticSize"]
       44 GETIMPORT                        R11 K18 [UDim2.fromScale]
       46 LOADN                            R12 1
       47 LOADN                            R13 0
       48 CALL                             R11 2 1
       49 SETTABLEKS                       R11 R10 K9 ["Size"]
       51 DUPTABLE                         R11 K21 [{"UIPadding", "FoundationContext"}]
       52 GETUPVAL                         R12 7
       53 GETTABLEKS                       R12 R12 K6 ["createElement"]
       55 LOADK                            R13 K19 ["UIPadding"]
       56 DUPTABLE                         R14 K26 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       57 GETIMPORT                        R15 K29 [UDim.new]
       59 LOADN                            R16 0
       60 LOADN                            R17 10
       61 CALL                             R15 2 1
       62 SETTABLEKS                       R15 R14 K22 ["PaddingTop"]
       64 GETIMPORT                        R15 K29 [UDim.new]
       66 LOADN                            R16 0
       67 LOADN                            R17 10
       68 CALL                             R15 2 1
       69 SETTABLEKS                       R15 R14 K23 ["PaddingBottom"]
       71 GETIMPORT                        R15 K29 [UDim.new]
       73 LOADN                            R16 0
       74 LOADN                            R17 10
       75 CALL                             R15 2 1
       76 SETTABLEKS                       R15 R14 K24 ["PaddingLeft"]
       78 GETIMPORT                        R15 K29 [UDim.new]
       80 LOADN                            R16 0
       81 LOADN                            R17 10
       82 CALL                             R15 2 1
       83 SETTABLEKS                       R15 R14 K25 ["PaddingRight"]
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K19 ["UIPadding"]
       88 GETUPVAL                         R12 7
       89 GETTABLEKS                       R12 R12 K6 ["createElement"]
       91 GETUPVAL                         R13 8
       92 DUPTABLE                         R14 K36 [{"theme", "device", "preferences", "scale", "overlayGui", "plugin", "tokenOverrides"}]
       93 SETTABLEKS                       R2 R14 K0 ["theme"]
       95 SETTABLEKS                       R5 R14 K30 ["device"]
       97 SETTABLEKS                       R6 R14 K31 ["preferences"]
       99 MOVE                             R15 R6
      100 JUMPIFNOT                        R15 ; [+2]
      101 GETTABLEKS                       R15 R6 K32 ["scale"]
      103 SETTABLEKS                       R15 R14 K32 ["scale"]
      105 SETTABLEKS                       R1 R14 K33 ["overlayGui"]
      107 JUMPIFNOT                        R7 ; [+3]
      108 GETTABLEKS                       R15 R0 K34 ["plugin"]
      110 JUMP                             ; [+1]
      111 LOADNIL                          R15
      112 SETTABLEKS                       R15 R14 K34 ["plugin"]
      114 SETTABLEKS                       R3 R14 K35 ["tokenOverrides"]
      116 DUPTABLE                         R15 K39 [{"Child", "StyleLink"}]
      117 GETUPVAL                         R16 7
      118 GETTABLEKS                       R16 R16 K6 ["createElement"]
      120 GETUPVAL                         R17 9
      121 MOVE                             R18 R0
      122 CALL                             R16 2 1
      123 SETTABLEKS                       R16 R15 K37 ["Child"]
      125 GETUPVAL                         R16 7
      126 GETTABLEKS                       R16 R16 K6 ["createElement"]
      128 GETUPVAL                         R17 10
      129 JUMPIFNOT                        R1 ; [+4]
      130 DUPTABLE                         R18 K41 [{"overlay"}]
      131 SETTABLEKS                       R1 R18 K40 ["overlay"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R18
      135 CALL                             R16 2 1
      136 SETTABLEKS                       R16 R15 K38 ["StyleLink"]
      138 CALL                             R12 3 1
      139 SETTABLEKS                       R12 R11 K20 ["FoundationContext"]
      141 CALL                             R8 3 -1
      142 RETURN                           R8 -1

PROTO_10:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U9
       12 RETURN                           R1 1

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
       58 GETIMPORT                        R10 K1 [script]
       60 GETTABLEKS                       R10 R10 K4 ["Parent"]
       62 GETTABLEKS                       R10 R10 K17 ["TokenOverridesStore"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K11 ["Utility"]
       69 GETTABLEKS                       R11 R11 K18 ["isPluginSecurity"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K13 ["Providers"]
       76 GETTABLEKS                       R12 R12 K19 ["Style"]
       78 GETTABLEKS                       R12 R12 K20 ["StyleSheetContext"]
       80 CALL                             R11 1 1
       81 GETTABLEKS                       R11 R11 K21 ["useStyleSheet"]
       83 DUPCLOSURE                       R12 K22 [PROTO_4]
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R2
       86 DUPCLOSURE                       R13 K23 [PROTO_5]
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R2
       90 DUPCLOSURE                       R14 K24 [PROTO_8]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R2
       93 DUPCLOSURE                       R15 K25 [PROTO_10]
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R13
      104 RETURN                           R15 1
