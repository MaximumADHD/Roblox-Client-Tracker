PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"tag", "Text"}]
        5 LOADK                            R5 K4 ["text-body-medium text-wrap text-align-x-left size-full-0 auto-y content-system-alert"]
        6 SETTABLEKS                       R5 R4 K1 ["tag"]
        8 LOADK                            R6 K5 ["[%*] %*:%*"]
        9 GETUPVAL                         R9 2
       10 GETTABLEKS                       R8 R9 K6 ["Name"]
       12 GETTABLEKS                       R9 R0 K7 ["assetId"]
       14 GETTABLEKS                       R10 R0 K8 ["code"]
       16 NAMECALL                         R6 R6 K9 ["format"]
       18 CALL                             R6 4 1
       19 MOVE                             R5 R6
       20 SETTABLEKS                       R5 R4 K2 ["Text"]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K2 [{"tag"}]
        5 LOADK                            R5 K3 ["col auto-xy"]
        6 SETTABLEKS                       R5 R4 K1 ["tag"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K4 ["map"]
       11 MOVE                             R6 R0
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R1
       16 CALL                             R5 2 -1
       17 CALL                             R2 -1 -1
       18 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K3 [{"tag"}]
        9 LOADK                            R5 K4 ["col size-full padding-medium gap-medium"]
       10 SETTABLEKS                       R5 R4 K2 ["tag"]
       12 DUPTABLE                         R5 K9 [{"Title", "Divider", "ErrorsView", "Footer"}]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K1 ["createElement"]
       16 GETUPVAL                         R7 3
       17 DUPTABLE                         R8 K12 [{"tag", "Text", "LayoutOrder"}]
       18 LOADK                            R9 K13 ["text-title-medium text-wrap text-align-x-left text-align-y-top size-full-0 auto-y"]
       19 SETTABLEKS                       R9 R8 K2 ["tag"]
       21 LOADK                            R11 K14 ["QuickShare"]
       22 LOADK                            R12 K15 ["ErrorsTitle"]
       23 NAMECALL                         R9 R1 K16 ["getText"]
       25 CALL                             R9 3 1
       26 SETTABLEKS                       R9 R8 K10 ["Text"]
       28 LOADN                            R9 1
       29 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K5 ["Title"]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R6 R7 K1 ["createElement"]
       37 GETUPVAL                         R7 4
       38 DUPTABLE                         R8 K18 [{"LayoutOrder", "orientation"}]
       39 LOADN                            R9 2
       40 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       42 GETUPVAL                         R12 5
       43 GETTABLEKS                       R11 R12 K19 ["Enums"]
       45 GETTABLEKS                       R10 R11 K20 ["DividerOrientation"]
       47 GETTABLEKS                       R9 R10 K21 ["Horizontal"]
       49 SETTABLEKS                       R9 R8 K17 ["orientation"]
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R5 K6 ["Divider"]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R6 R7 K1 ["createElement"]
       57 GETUPVAL                         R7 6
       58 DUPTABLE                         R8 K24 [{"LayoutOrder", "tag", "layout", "scroll"}]
       59 LOADN                            R9 3
       60 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       62 LOADK                            R9 K25 ["col size-full-0 fill"]
       63 SETTABLEKS                       R9 R8 K2 ["tag"]
       65 DUPTABLE                         R9 K27 [{"FillDirection"}]
       66 GETIMPORT                        R10 K30 [Enum.FillDirection.Vertical]
       68 SETTABLEKS                       R10 R9 K26 ["FillDirection"]
       70 SETTABLEKS                       R9 R8 K22 ["layout"]
       72 DUPTABLE                         R9 K34 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       73 GETIMPORT                        R10 K37 [Enum.AutomaticSize.Y]
       75 SETTABLEKS                       R10 R9 K31 ["AutomaticCanvasSize"]
       77 GETIMPORT                        R10 K40 [UDim2.fromOffset]
       79 LOADN                            R11 0
       80 LOADN                            R12 0
       81 CALL                             R10 2 1
       82 SETTABLEKS                       R10 R9 K32 ["CanvasSize"]
       84 GETIMPORT                        R10 K41 [Enum.ScrollingDirection.Y]
       86 SETTABLEKS                       R10 R9 K33 ["ScrollingDirection"]
       88 SETTABLEKS                       R9 R8 K23 ["scroll"]
       90 GETUPVAL                         R10 7
       91 GETTABLEKS                       R9 R10 K42 ["map"]
       93 GETTABLEKS                       R10 R0 K43 ["Errors"]
       95 GETUPVAL                         R11 8
       96 CALL                             R9 2 -1
       97 CALL                             R6 -1 1
       98 SETTABLEKS                       R6 R5 K7 ["ErrorsView"]
      100 GETUPVAL                         R7 1
      101 GETTABLEKS                       R6 R7 K1 ["createElement"]
      103 GETUPVAL                         R7 2
      104 DUPTABLE                         R8 K44 [{"LayoutOrder", "tag"}]
      105 LOADN                            R9 4
      106 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
      108 LOADK                            R9 K45 ["row size-full-0 auto-y align-x-right"]
      109 SETTABLEKS                       R9 R8 K2 ["tag"]
      111 NEWTABLE                         R9 0 1
      113 GETUPVAL                         R11 1
      114 GETTABLEKS                       R10 R11 K1 ["createElement"]
      116 GETUPVAL                         R11 9
      117 DUPTABLE                         R12 K50 [{"text", "onActivated", "variant", "size"}]
      118 LOADK                            R15 K14 ["QuickShare"]
      119 LOADK                            R16 K51 ["CloseButton"]
      120 NAMECALL                         R13 R1 K16 ["getText"]
      122 CALL                             R13 3 1
      123 SETTABLEKS                       R13 R12 K46 ["text"]
      125 GETTABLEKS                       R13 R0 K52 ["OnDone"]
      127 SETTABLEKS                       R13 R12 K47 ["onActivated"]
      129 GETUPVAL                         R16 5
      130 GETTABLEKS                       R15 R16 K19 ["Enums"]
      132 GETTABLEKS                       R14 R15 K53 ["ButtonVariant"]
      134 GETTABLEKS                       R13 R14 K54 ["Emphasis"]
      136 SETTABLEKS                       R13 R12 K48 ["variant"]
      138 GETUPVAL                         R16 5
      139 GETTABLEKS                       R15 R16 K19 ["Enums"]
      141 GETTABLEKS                       R14 R15 K55 ["InputSize"]
      143 GETTABLEKS                       R13 R14 K56 ["Small"]
      145 SETTABLEKS                       R13 R12 K49 ["size"]
      147 CALL                             R10 2 -1
      148 SETLIST                          R9 R10 -1 [1]
      150 CALL                             R6 3 1
      151 SETTABLEKS                       R6 R5 K8 ["Footer"]
      153 CALL                             R2 3 -1
      154 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["View"]
       30 GETTABLEKS                       R5 R2 K11 ["Text"]
       32 GETTABLEKS                       R6 R2 K12 ["ScrollView"]
       34 GETTABLEKS                       R7 R2 K13 ["Button"]
       36 GETTABLEKS                       R8 R2 K14 ["Divider"]
       38 GETIMPORT                        R9 K5 [require]
       40 GETTABLEKS                       R11 R0 K6 ["Packages"]
       42 GETTABLEKS                       R10 R11 K15 ["Framework"]
       44 CALL                             R9 1 1
       45 GETTABLEKS                       R10 R9 K16 ["ContextServices"]
       47 GETTABLEKS                       R11 R10 K17 ["Localization"]
       49 DUPCLOSURE                       R12 K18 [PROTO_1]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R5
       54 DUPCLOSURE                       R13 K19 [PROTO_2]
       55 CAPTURE                          VAL R11
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R7
       65 RETURN                           R13 1
