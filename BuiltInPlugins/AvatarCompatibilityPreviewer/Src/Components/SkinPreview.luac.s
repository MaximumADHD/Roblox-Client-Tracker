PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["SkinPreview"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["useContext"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K3 ["Context"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 4
       17 LOADB                            R5 0
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R0 K4 ["Item"]
       21 GETTABLEKS                       R6 R3 K5 ["isColorable"]
       23 JUMPIF                           R6 ; [+25]
       24 GETIMPORT                        R6 K8 [Color3.new]
       26 GETTABLEKS                       R8 R5 K9 ["R"]
       28 GETTABLEKS                       R10 R2 K10 ["DisabledColorToBlend"]
       30 GETTABLEKS                       R9 R10 K9 ["R"]
       32 MUL                              R7 R8 R9
       33 GETTABLEKS                       R9 R5 K11 ["G"]
       35 GETTABLEKS                       R11 R2 K10 ["DisabledColorToBlend"]
       37 GETTABLEKS                       R10 R11 K11 ["G"]
       39 MUL                              R8 R9 R10
       40 GETTABLEKS                       R10 R5 K12 ["B"]
       42 GETTABLEKS                       R12 R2 K10 ["DisabledColorToBlend"]
       44 GETTABLEKS                       R11 R12 K12 ["B"]
       46 MUL                              R9 R10 R11
       47 CALL                             R6 3 1
       48 MOVE                             R5 R6
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R6 R7 K13 ["createElement"]
       52 GETUPVAL                         R7 5
       53 NEWTABLE                         R8 8 0
       55 SETTABLEKS                       R5 R8 K14 ["BackgroundColor"]
       57 GETTABLEKS                       R10 R3 K5 ["isColorable"]
       59 JUMPIF                           R10 ; [+2]
       60 DUPCLOSURE                       R9 K15 [PROTO_0]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R9
       63 SETTABLEKS                       R9 R8 K16 ["OnClick"]
       65 LOADK                            R9 K1 ["SkinPreview"]
       66 SETTABLEKS                       R9 R8 K17 ["Style"]
       68 GETUPVAL                         R11 2
       69 GETTABLEKS                       R10 R11 K18 ["Event"]
       71 GETTABLEKS                       R9 R10 K19 ["MouseEnter"]
       73 GETTABLEKS                       R10 R4 K20 ["enable"]
       75 SETTABLE                         R10 R8 R9
       76 GETUPVAL                         R11 2
       77 GETTABLEKS                       R10 R11 K18 ["Event"]
       79 GETTABLEKS                       R9 R10 K21 ["MouseLeave"]
       81 GETTABLEKS                       R10 R4 K22 ["disable"]
       83 SETTABLE                         R10 R8 R9
       84 GETUPVAL                         R10 2
       85 GETTABLEKS                       R9 R10 K23 ["Tag"]
       87 LOADK                            R10 K24 ["data-testid=SkinPreview"]
       88 SETTABLE                         R10 R8 R9
       89 DUPTABLE                         R9 K27 [{"Border", "Tooltip"}]
       90 GETTABLEKS                       R11 R0 K28 ["Selected"]
       92 JUMPIFNOT                        R11 ; [+15]
       93 GETUPVAL                         R11 2
       94 GETTABLEKS                       R10 R11 K13 ["createElement"]
       96 LOADK                            R11 K29 ["UIStroke"]
       97 DUPTABLE                         R12 K32 [{"Color", "Thickness"}]
       98 GETTABLEKS                       R13 R2 K33 ["SelectedBorderColor"]
      100 SETTABLEKS                       R13 R12 K30 ["Color"]
      102 GETTABLEKS                       R13 R2 K34 ["SelectedBorderThickness"]
      104 SETTABLEKS                       R13 R12 K31 ["Thickness"]
      106 CALL                             R10 2 1
      107 JUMP                             ; [+19]
      108 GETTABLEKS                       R11 R4 K35 ["enabled"]
      110 JUMPIFNOT                        R11 ; [+15]
      111 GETUPVAL                         R11 2
      112 GETTABLEKS                       R10 R11 K13 ["createElement"]
      114 LOADK                            R11 K29 ["UIStroke"]
      115 DUPTABLE                         R12 K32 [{"Color", "Thickness"}]
      116 GETTABLEKS                       R13 R2 K36 ["HoveredBorderColor"]
      118 SETTABLEKS                       R13 R12 K30 ["Color"]
      120 GETTABLEKS                       R13 R2 K37 ["HoveredBorderThickness"]
      122 SETTABLEKS                       R13 R12 K31 ["Thickness"]
      124 CALL                             R10 2 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R10
      127 SETTABLEKS                       R10 R9 K25 ["Border"]
      129 GETTABLEKS                       R11 R3 K5 ["isColorable"]
      131 NOT                              R10 R11
      132 JUMPIFNOT                        R10 ; [+13]
      133 GETUPVAL                         R11 2
      134 GETTABLEKS                       R10 R11 K13 ["createElement"]
      136 GETUPVAL                         R11 6
      137 DUPTABLE                         R12 K39 [{"Text"}]
      138 LOADK                            R15 K1 ["SkinPreview"]
      139 LOADK                            R16 K40 ["NoAlphaWarning"]
      140 NAMECALL                         R13 R1 K41 ["getText"]
      142 CALL                             R13 3 1
      143 SETTABLEKS                       R13 R12 K38 ["Text"]
      145 CALL                             R10 2 1
      146 SETTABLEKS                       R10 R9 K26 ["Tooltip"]
      148 CALL                             R6 3 -1
      149 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Components"]
       27 GETTABLEKS                       R4 R5 K11 ["AvatarScreenContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Resources"]
       36 GETTABLEKS                       R5 R6 K13 ["Theme"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R8 K14 ["Hooks"]
       45 GETTABLEKS                       R6 R7 K15 ["useToggleState"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R1 K16 ["UI"]
       50 GETTABLEKS                       R7 R6 K17 ["Pane"]
       52 GETTABLEKS                       R8 R6 K18 ["Tooltip"]
       54 GETTABLEKS                       R10 R1 K19 ["ContextServices"]
       56 GETTABLEKS                       R9 R10 K20 ["Localization"]
       58 GETTABLEKS                       R11 R1 K19 ["ContextServices"]
       60 GETTABLEKS                       R10 R11 K21 ["Stylizer"]
       62 DUPCLOSURE                       R11 K22 [PROTO_1]
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R8
       70 RETURN                           R11 1
