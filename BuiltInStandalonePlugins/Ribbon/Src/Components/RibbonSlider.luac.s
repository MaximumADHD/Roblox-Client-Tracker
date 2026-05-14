PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnValueChanged"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Uri"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Tag"]
        3 GETTABLE                         R1 R0 R2
        4 GETIMPORT                        R2 K2 [warn]
        6 LOADK                            R3 K3 ["RibbonSlider is not design approved and should not be used in production until it is Foundation styled"]
        7 CALL                             R2 1 0
        8 GETTABLEKS                       R2 R0 K4 ["Minimum"]
       10 JUMPIFNOT                        R2 ; [+25]
       11 GETTABLEKS                       R2 R0 K5 ["Maximum"]
       13 JUMPIFNOT                        R2 ; [+22]
       14 GETTABLEKS                       R3 R0 K4 ["Minimum"]
       16 FASTCALL1                        TYPE R3 ; [+2]
       17 GETIMPORT                        R2 K7 [type]
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQKS                    R2 K8 ["number"] ; [+15]
       22 GETTABLEKS                       R3 R0 K5 ["Maximum"]
       24 FASTCALL1                        TYPE R3 ; [+2]
       25 GETIMPORT                        R2 K7 [type]
       27 CALL                             R2 1 1
       28 JUMPIFNOTEQKS                    R2 K8 ["number"] ; [+7]
       30 GETTABLEKS                       R2 R0 K4 ["Minimum"]
       32 GETTABLEKS                       R3 R0 K5 ["Maximum"]
       34 JUMPIFNOTLE                      R3 R2 ; [+19]
       36 GETIMPORT                        R2 K2 [warn]
       38 LOADK                            R4 K9 ["Invalid range %* - %* for ribbon slider"]
       39 GETTABLEKS                       R6 R0 K4 ["Minimum"]
       41 GETTABLEKS                       R7 R0 K5 ["Maximum"]
       43 NAMECALL                         R4 R4 K10 ["format"]
       45 CALL                             R4 3 1
       46 MOVE                             R3 R4
       47 CALL                             R2 1 0
       48 LOADN                            R2 0
       49 SETTABLEKS                       R2 R0 K4 ["Minimum"]
       51 LOADN                            R2 1
       52 SETTABLEKS                       R2 R0 K5 ["Maximum"]
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R2 R2 K11 ["createElement"]
       57 LOADK                            R3 K12 ["Frame"]
       58 NEWTABLE                         R4 2 0
       60 GETTABLEKS                       R5 R0 K13 ["LayoutOrder"]
       62 SETTABLEKS                       R5 R4 K13 ["LayoutOrder"]
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R5 R5 K0 ["Tag"]
       67 GETUPVAL                         R6 1
       68 LOADK                            R7 K14 ["Component-RibbonButton X-Fit X-Column X-Center"]
       69 MOVE                             R8 R1
       70 CALL                             R6 2 1
       71 SETTABLE                         R6 R4 R5
       72 DUPTABLE                         R5 K17 [{"RibbonTool", "Text"}]
       73 GETUPVAL                         R6 0
       74 GETTABLEKS                       R6 R6 K11 ["createElement"]
       76 LOADK                            R7 K12 ["Frame"]
       77 NEWTABLE                         R8 1 0
       79 GETUPVAL                         R9 0
       80 GETTABLEKS                       R9 R9 K0 ["Tag"]
       82 LOADK                            R11 K18 ["Role-Surface X-Fit data-testid=%*"]
       83 GETUPVAL                         R13 2
       84 GETTABLEKS                       R14 R0 K19 ["Uri"]
       86 CALL                             R13 1 1
       87 NAMECALL                         R11 R11 K10 ["format"]
       89 CALL                             R11 2 1
       90 MOVE                             R10 R11
       91 SETTABLE                         R10 R8 R9
       92 DUPTABLE                         R9 K21 [{"SliderBody"}]
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R10 R10 K11 ["createElement"]
       96 GETUPVAL                         R11 3
       97 NEWTABLE                         R12 16 0
       99 GETTABLEKS                       R13 R0 K4 ["Minimum"]
      101 SETTABLEKS                       R13 R12 K22 ["Min"]
      103 GETTABLEKS                       R13 R0 K5 ["Maximum"]
      105 SETTABLEKS                       R13 R12 K23 ["Max"]
      107 GETTABLEKS                       R13 R0 K24 ["Value"]
      109 SETTABLEKS                       R13 R12 K24 ["Value"]
      111 GETTABLEKS                       R14 R0 K25 ["HideInput"]
      113 NOT                              R13 R14
      114 SETTABLEKS                       R13 R12 K26 ["ShowInput"]
      116 GETTABLEKS                       R13 R0 K27 ["Disabled"]
      118 SETTABLEKS                       R13 R12 K27 ["Disabled"]
      120 GETTABLEKS                       R13 R0 K13 ["LayoutOrder"]
      122 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      124 GETTABLEKS                       R13 R0 K28 ["Precision"]
      126 SETTABLEKS                       R13 R12 K29 ["InputPrecision"]
      128 GETTABLEKS                       R13 R0 K30 ["Increment"]
      130 SETTABLEKS                       R13 R12 K31 ["SnapIncrement"]
      132 LOADN                            R13 0
      133 SETTABLEKS                       R13 R12 K32 ["VerticalDragTolerance"]
      135 NEWCLOSURE                       R13 P0
      136 CAPTURE                          VAL R0
      137 SETTABLEKS                       R13 R12 K33 ["OnValueChanged"]
      139 GETUPVAL                         R13 4
      140 SETTABLEKS                       R13 R12 K34 ["Size"]
      142 GETUPVAL                         R13 0
      143 GETTABLEKS                       R13 R13 K0 ["Tag"]
      145 LOADK                            R14 K35 ["Icon-Large"]
      146 SETTABLE                         R14 R12 R13
      147 CALL                             R10 2 1
      148 SETTABLEKS                       R10 R9 K20 ["SliderBody"]
      150 CALL                             R6 3 1
      151 SETTABLEKS                       R6 R5 K15 ["RibbonTool"]
      153 GETTABLEKS                       R7 R0 K16 ["Text"]
      155 JUMPIFEQKS                       R7 K36 [""] ; [+18]
      157 GETUPVAL                         R6 0
      158 GETTABLEKS                       R6 R6 K11 ["createElement"]
      160 LOADK                            R7 K37 ["TextLabel"]
      161 NEWTABLE                         R8 2 0
      163 GETTABLEKS                       R9 R0 K16 ["Text"]
      165 SETTABLEKS                       R9 R8 K16 ["Text"]
      167 GETUPVAL                         R9 0
      168 GETTABLEKS                       R9 R9 K0 ["Tag"]
      170 LOADK                            R10 K38 ["X-Fit"]
      171 SETTABLE                         R10 R8 R9
      172 CALL                             R6 2 1
      173 JUMP                             ; [+1]
      174 LOADNIL                          R6
      175 SETTABLEKS                       R6 R5 K16 ["Text"]
      177 CALL                             R2 3 -1
      178 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["uriToTestId"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["Styling"]
       32 GETTABLEKS                       R5 R4 K13 ["joinTags"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K9 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Resources"]
       40 GETTABLEKS                       R7 R7 K15 ["PluginStyles"]
       42 CALL                             R6 1 1
       43 LOADK                            R9 K16 ["SliderSize"]
       44 NAMECALL                         R7 R6 K17 ["GetAttribute"]
       46 CALL                             R7 2 1
       47 GETTABLEKS                       R8 R2 K18 ["UI"]
       49 GETTABLEKS                       R9 R8 K19 ["Slider"]
       51 DUPCLOSURE                       R10 K20 [PROTO_1]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R7
       57 RETURN                           R10 1
