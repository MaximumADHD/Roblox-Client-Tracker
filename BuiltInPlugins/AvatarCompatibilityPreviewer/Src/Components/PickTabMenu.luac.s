PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["MenuTabs"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K2 ["PickTabMenu"]
        9 NAMECALL                         R2 R2 K0 ["use"]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 2
       13 LOADB                            R4 0
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K3 ["createElement"]
       18 GETUPVAL                         R5 4
       19 DUPTABLE                         R6 K8 [{"Position", "Size", "BackgroundColor3", "Padding"}]
       20 GETTABLEKS                       R7 R2 K4 ["Position"]
       22 SETTABLEKS                       R7 R6 K4 ["Position"]
       24 GETTABLEKS                       R7 R2 K5 ["Size"]
       26 SETTABLEKS                       R7 R6 K5 ["Size"]
       28 GETTABLEKS                       R7 R0 K9 ["BackgroundColor"]
       30 SETTABLEKS                       R7 R6 K6 ["BackgroundColor3"]
       32 GETTABLEKS                       R7 R2 K7 ["Padding"]
       34 SETTABLEKS                       R7 R6 K7 ["Padding"]
       36 DUPTABLE                         R7 K11 [{"Button"}]
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R8 R8 K3 ["createElement"]
       40 GETUPVAL                         R9 4
       41 NEWTABLE                         R10 4 0
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R11 R10 K12 ["OnClick"]
       49 GETTABLEKS                       R12 R3 K13 ["enabled"]
       51 JUMPIFNOT                        R12 ; [+3]
       52 GETTABLEKS                       R11 R0 K14 ["BackgroundColorHover"]
       54 JUMP                             ; [+2]
       55 GETTABLEKS                       R11 R0 K9 ["BackgroundColor"]
       57 SETTABLEKS                       R11 R10 K6 ["BackgroundColor3"]
       59 GETUPVAL                         R11 3
       60 GETTABLEKS                       R11 R11 K15 ["Event"]
       62 GETTABLEKS                       R11 R11 K16 ["MouseEnter"]
       64 GETTABLEKS                       R12 R3 K17 ["enable"]
       66 SETTABLE                         R12 R10 R11
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R11 R11 K15 ["Event"]
       70 GETTABLEKS                       R11 R11 K18 ["MouseLeave"]
       72 GETTABLEKS                       R12 R3 K19 ["disable"]
       74 SETTABLE                         R12 R10 R11
       75 DUPTABLE                         R11 K22 [{"UICorner", "DotsIcon"}]
       76 GETUPVAL                         R12 3
       77 GETTABLEKS                       R12 R12 K3 ["createElement"]
       79 LOADK                            R13 K20 ["UICorner"]
       80 DUPTABLE                         R14 K24 [{"CornerRadius"}]
       81 GETTABLEKS                       R15 R2 K23 ["CornerRadius"]
       83 SETTABLEKS                       R15 R14 K23 ["CornerRadius"]
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K20 ["UICorner"]
       88 GETUPVAL                         R12 3
       89 GETTABLEKS                       R12 R12 K3 ["createElement"]
       91 GETUPVAL                         R13 6
       92 DUPTABLE                         R14 K27 [{["Style"] = "PickTabMenu", ["ImageColor3"]}]
       93 GETTABLEKS                       R15 R2 K28 ["ImageColor"]
       95 SETTABLEKS                       R15 R14 K26 ["ImageColor3"]
       97 CALL                             R12 2 1
       98 SETTABLEKS                       R12 R11 K21 ["DotsIcon"]
      100 CALL                             R8 3 1
      101 SETTABLEKS                       R8 R7 K10 ["Button"]
      103 CALL                             R4 3 -1
      104 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["useToggleState"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Resources"]
       36 GETTABLEKS                       R5 R5 K13 ["Theme"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K14 ["UI"]
       41 GETTABLEKS                       R6 R5 K15 ["Image"]
       43 GETTABLEKS                       R7 R5 K16 ["Pane"]
       45 GETTABLEKS                       R8 R5 K17 ["showContextMenu"]
       47 GETTABLEKS                       R9 R1 K18 ["ContextServices"]
       49 GETTABLEKS                       R9 R9 K19 ["Plugin"]
       51 GETTABLEKS                       R10 R1 K18 ["ContextServices"]
       53 GETTABLEKS                       R10 R10 K20 ["Stylizer"]
       55 DUPCLOSURE                       R11 K21 [PROTO_1]
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R6
       63 RETURN                           R11 1
