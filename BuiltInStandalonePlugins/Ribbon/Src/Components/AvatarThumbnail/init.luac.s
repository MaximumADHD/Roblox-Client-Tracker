PROTO_0:
        0 LOADK                            R3 K0 ["rbxthumb://type=AvatarHeadShot&id=%*&w=%*&h=%*&filters=circular"]
        1 MOVE                             R5 R0
        2 GETTABLEKS                       R6 R1 K1 ["X"]
        4 GETTABLEKS                       R7 R1 K2 ["Y"]
        6 NAMECALL                         R3 R3 K3 ["format"]
        8 CALL                             R3 4 1
        9 MOVE                             R2 R3
       10 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["cancelShowTooltip"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["OnSelect"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["Uri"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Uri"]
        3 GETTABLEKS                       R3 R0 K1 ["ForwardRef"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K6 [{"Uri", "Title", "Text", "Shortcuts", "WidgetRef"}]
        8 GETTABLEKS                       R4 R0 K0 ["Uri"]
       10 SETTABLEKS                       R4 R3 K0 ["Uri"]
       12 GETTABLEKS                       R4 R0 K7 ["TooltipTitle"]
       14 SETTABLEKS                       R4 R3 K2 ["Title"]
       16 GETTABLEKS                       R4 R0 K8 ["Tooltip"]
       18 SETTABLEKS                       R4 R3 K3 ["Text"]
       20 GETTABLEKS                       R4 R0 K4 ["Shortcuts"]
       22 SETTABLEKS                       R4 R3 K4 ["Shortcuts"]
       24 SETTABLEKS                       R1 R3 K5 ["WidgetRef"]
       26 CALL                             R2 1 2
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R4 R5 K9 ["createElement"]
       30 LOADK                            R5 K10 ["TextButton"]
       31 NEWTABLE                         R6 8 0
       33 SETTABLEKS                       R1 R6 K11 ["ref"]
       35 GETTABLEKS                       R7 R0 K12 ["LayoutOrder"]
       37 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R8 R9 K13 ["Event"]
       42 GETTABLEKS                       R7 R8 K14 ["Activated"]
       44 NEWCLOSURE                       R8 P0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R0
       47 SETTABLE                         R8 R6 R7
       48 GETTABLEKS                       R7 R0 K15 ["Visible"]
       50 SETTABLEKS                       R7 R6 K15 ["Visible"]
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R8 R9 K13 ["Event"]
       55 GETTABLEKS                       R7 R8 K16 ["MouseEnter"]
       57 SETTABLE                         R2 R6 R7
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R8 R9 K13 ["Event"]
       61 GETTABLEKS                       R7 R8 K17 ["MouseLeave"]
       63 SETTABLE                         R3 R6 R7
       64 GETUPVAL                         R8 2
       65 GETTABLEKS                       R7 R8 K18 ["Tag"]
       67 GETUPVAL                         R8 4
       68 LOADK                            R9 K19 ["Component-AvatarThumbnail Role-Surface X-Fit"]
       69 GETUPVAL                         R12 2
       70 GETTABLEKS                       R11 R12 K18 ["Tag"]
       72 GETTABLE                         R10 R0 R11
       73 CALL                             R8 2 1
       74 SETTABLE                         R8 R6 R7
       75 DUPTABLE                         R7 K21 [{"Avatar"}]
       76 GETUPVAL                         R9 2
       77 GETTABLEKS                       R8 R9 K9 ["createElement"]
       79 LOADK                            R9 K22 ["ImageLabel"]
       80 NEWTABLE                         R10 2 0
       82 GETTABLEKS                       R12 R0 K23 ["UserId"]
       84 GETIMPORT                        R13 K26 [Vector2.new]
       86 LOADN                            R14 60
       87 LOADN                            R15 60
       88 CALL                             R13 2 1
       89 LOADK                            R14 K27 ["rbxthumb://type=AvatarHeadShot&id=%*&w=%*&h=%*&filters=circular"]
       90 MOVE                             R16 R12
       91 GETTABLEKS                       R17 R13 K28 ["X"]
       93 GETTABLEKS                       R18 R13 K29 ["Y"]
       95 NAMECALL                         R14 R14 K30 ["format"]
       97 CALL                             R14 4 1
       98 MOVE                             R11 R14
       99 SETTABLEKS                       R11 R10 K31 ["Image"]
      101 GETUPVAL                         R12 2
      102 GETTABLEKS                       R11 R12 K18 ["Tag"]
      104 GETUPVAL                         R12 4
      105 GETTABLEKS                       R13 R0 K32 ["Size"]
      107 LOADK                            R15 K33 ["data-testid=%*"]
      108 GETUPVAL                         R17 5
      109 GETTABLEKS                       R18 R0 K0 ["Uri"]
      111 CALL                             R17 1 1
      112 NAMECALL                         R15 R15 K30 ["format"]
      114 CALL                             R15 2 1
      115 MOVE                             R14 R15
      116 CALL                             R12 2 1
      117 SETTABLE                         R12 R10 R11
      118 CALL                             R8 2 1
      119 SETTABLEKS                       R8 R7 K20 ["Avatar"]
      121 CALL                             R4 3 -1
      122 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R4 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["Styling"]
       30 GETTABLEKS                       R5 R4 K12 ["joinTags"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K8 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Hooks"]
       38 GETTABLEKS                       R7 R8 K14 ["TooltipSettings"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K8 ["Src"]
       45 GETTABLEKS                       R9 R10 K13 ["Hooks"]
       47 GETTABLEKS                       R8 R9 K15 ["useTooltip"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R10 R0 K6 ["Packages"]
       54 GETTABLEKS                       R9 R10 K16 ["StudioFoundation"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R10 R8 K13 ["Hooks"]
       59 GETTABLEKS                       R9 R10 K17 ["useWidgetRef"]
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R13 R0 K8 ["Src"]
       65 GETTABLEKS                       R12 R13 K18 ["Util"]
       67 GETTABLEKS                       R11 R12 K19 ["uriToTestId"]
       69 CALL                             R10 1 1
       70 DUPCLOSURE                       R11 K20 [PROTO_0]
       71 DUPCLOSURE                       R12 K21 [PROTO_2]
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R10
       78 RETURN                           R12 1
