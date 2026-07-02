PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hovered"}]
        2 SETTABLEKS                       R0 R3 K0 ["hovered"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Disabled"]
        5 JUMPIF                           R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K2 ["OnTabSelected"]
        8 GETTABLEKS                       R2 R0 K3 ["Tab"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["hover"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["onPress"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hover"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hover"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Stylizer"]
        6 GETTABLEKS                       R3 R1 K2 ["Tab"]
        8 GETTABLEKS                       R3 R3 K3 ["Icon"]
       10 GETTABLEKS                       R4 R1 K2 ["Tab"]
       12 GETTABLEKS                       R4 R4 K4 ["Tooltip"]
       14 GETTABLEKS                       R5 R1 K5 ["Selected"]
       16 GETTABLEKS                       R6 R2 K6 ["Color"]
       18 GETTABLEKS                       R7 R2 K7 ["Size"]
       20 GETTABLEKS                       R8 R0 K8 ["state"]
       22 GETTABLEKS                       R9 R8 K9 ["hovered"]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K10 ["createElement"]
       27 GETUPVAL                         R11 1
       28 NEWTABLE                         R12 8 0
       30 GETIMPORT                        R13 K14 [Enum.AutomaticSize.XY]
       32 SETTABLEKS                       R13 R12 K12 ["AutomaticSize"]
       34 LOADK                            R13 K15 ["Box"]
       35 SETTABLEKS                       R13 R12 K16 ["Style"]
       37 GETTABLEKS                       R13 R1 K17 ["Index"]
       39 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
       41 GETTABLEKS                       R13 R0 K19 ["onPress"]
       43 SETTABLEKS                       R13 R12 K20 ["OnPress"]
       45 GETUPVAL                         R13 0
       46 GETTABLEKS                       R13 R13 K21 ["Event"]
       48 GETTABLEKS                       R13 R13 K22 ["MouseEnter"]
       50 NEWCLOSURE                       R14 P0
       51 CAPTURE                          VAL R0
       52 SETTABLE                         R14 R12 R13
       53 GETUPVAL                         R13 0
       54 GETTABLEKS                       R13 R13 K21 ["Event"]
       56 GETTABLEKS                       R13 R13 K23 ["MouseLeave"]
       58 NEWCLOSURE                       R14 P1
       59 CAPTURE                          VAL R0
       60 SETTABLE                         R14 R12 R13
       61 JUMPIFNOT                        R5 ; [+4]
       62 GETUPVAL                         R13 2
       63 GETTABLEKS                       R13 R13 K5 ["Selected"]
       65 JUMP                             ; [+6]
       66 JUMPIFNOT                        R9 ; [+4]
       67 GETUPVAL                         R13 2
       68 GETTABLEKS                       R13 R13 K24 ["Hover"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R13
       72 SETTABLEKS                       R13 R12 K25 ["StyleModifier"]
       74 JUMPIF                           R5 ; [+3]
       75 JUMPIF                           R9 ; [+2]
       76 LOADN                            R13 1
       77 JUMP                             ; [+1]
       78 LOADN                            R13 0
       79 SETTABLEKS                       R13 R12 K26 ["BackgroundTransparency"]
       81 DUPTABLE                         R13 K27 [{"Icon"}]
       82 MOVE                             R14 R3
       83 JUMPIFNOT                        R14 ; [+17]
       84 GETUPVAL                         R14 0
       85 GETTABLEKS                       R14 R14 K10 ["createElement"]
       87 GETUPVAL                         R15 3
       88 DUPTABLE                         R16 K31 [{["Image"], ["ImageColor3"], ["Size"], ["LayoutOrder"] = 1}]
       89 SETTABLEKS                       R3 R16 K28 ["Image"]
       91 SETTABLEKS                       R6 R16 K29 ["ImageColor3"]
       93 GETIMPORT                        R17 K34 [UDim2.fromOffset]
       95 MOVE                             R18 R7
       96 MOVE                             R19 R7
       97 CALL                             R17 2 1
       98 SETTABLEKS                       R17 R16 K7 ["Size"]
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K3 ["Icon"]
      103 CALL                             R10 3 1
      104 JUMPIFNOT                        R4 ; [+11]
      105 GETUPVAL                         R11 0
      106 GETTABLEKS                       R11 R11 K10 ["createElement"]
      108 GETUPVAL                         R12 4
      109 DUPTABLE                         R13 K37 [{"Text", "Child"}]
      110 SETTABLEKS                       R4 R13 K35 ["Text"]
      112 SETTABLEKS                       R10 R13 K36 ["Child"]
      114 CALL                             R11 2 -1
      115 RETURN                           R11 -1
      116 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R1 K10 ["UI"]
       25 GETTABLEKS                       R5 R4 K11 ["Pane"]
       27 GETTABLEKS                       R6 R4 K12 ["Image"]
       29 GETTABLEKS                       R7 R4 K13 ["Tooltip"]
       31 GETTABLEKS                       R8 R1 K14 ["Util"]
       33 GETTABLEKS                       R8 R8 K15 ["StyleModifier"]
       35 GETTABLEKS                       R9 R2 K16 ["PureComponent"]
       37 LOADK                            R11 K17 ["IconTab"]
       38 NAMECALL                         R9 R9 K18 ["extend"]
       40 CALL                             R9 2 1
       41 DUPCLOSURE                       R10 K19 [PROTO_2]
       42 SETTABLEKS                       R10 R9 K20 ["init"]
       44 DUPCLOSURE                       R10 K21 [PROTO_5]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 SETTABLEKS                       R10 R9 K22 ["render"]
       52 GETTABLEKS                       R10 R3 K23 ["withContext"]
       54 DUPTABLE                         R11 K25 [{"Stylizer"}]
       55 GETTABLEKS                       R12 R3 K24 ["Stylizer"]
       57 SETTABLEKS                       R12 R11 K24 ["Stylizer"]
       59 CALL                             R10 1 1
       60 MOVE                             R11 R9
       61 CALL                             R10 1 1
       62 MOVE                             R9 R10
       63 RETURN                           R9 1
