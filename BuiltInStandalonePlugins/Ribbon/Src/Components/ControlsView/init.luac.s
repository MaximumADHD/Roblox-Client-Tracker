PROTO_0:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 LOADNIL                          R8
        5 MOVE                             R9 R3
        6 CALL                             R4 5 0
        7 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETIMPORT                        R0 K1 [warn]
        5 GETVARARGS                       R1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["OnResize"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["OnResize"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["OnResize"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["OnResize"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["ActivateAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+9]
        7 GETUPVAL                         R3 0
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 NAMECALL                         R3 R3 K3 ["SetNumberAsync"]
       13 CALL                             R3 4 0
       14 RETURN                           R0 0
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R4 R1
       17 GETIMPORT                        R3 K1 [typeof]
       19 CALL                             R3 1 1
       20 JUMPIFNOTEQKS                    R3 K4 ["boolean"] ; [+9]
       22 GETUPVAL                         R3 0
       23 MOVE                             R5 R0
       24 MOVE                             R6 R1
       25 MOVE                             R7 R2
       26 NAMECALL                         R3 R3 K5 ["SetBoolAsync"]
       28 CALL                             R3 4 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R3 0
       31 MOVE                             R5 R0
       32 MOVE                             R6 R1
       33 MOVE                             R7 R2
       34 NAMECALL                         R3 R3 K6 ["SetStringAsync"]
       36 CALL                             R3 4 0
       37 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["ShowContextMenu"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"self"}]
        2 SETTABLEKS                       R0 R2 K0 ["self"]
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R1 1
        6 JUMPIFEQKNIL                     R1 ; [+11]
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R1 R2 R3
       11 SETTABLEKS                       R0 R1 K2 ["right"]
       13 GETUPVAL                         R2 0
       14 GETTABLE                         R1 R2 R0
       15 GETUPVAL                         R2 1
       16 SETTABLEKS                       R2 R1 K3 ["left"]
       18 SETUPVAL                         R0 1
       19 GETUPVAL                         R1 2
       20 JUMPIFNOTEQKNIL                  R1 ; [+3]
       22 SETUPVAL                         R0 2
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 0
       25 GETTABLE                         R1 R2 R0
       26 GETUPVAL                         R2 2
       27 SETTABLEKS                       R2 R1 K2 ["right"]
       29 GETUPVAL                         R2 0
       30 GETUPVAL                         R3 2
       31 GETTABLE                         R1 R2 R3
       32 GETUPVAL                         R2 1
       33 SETTABLEKS                       R2 R1 K3 ["left"]
       35 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["fromAction"]
        4 LOADK                            R3 K1 ["LiveCollaborators"]
        5 LOADK                            R4 K2 ["Toggle"]
        6 CALL                             R2 2 -1
        7 NAMECALL                         R0 R0 K3 ["ActivateAsync"]
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R1 K0 ["Type"]
        7 JUMPIFEQKS                       R3 K1 ["Component"] ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 JUMPIFNOT                        R2 ; [+68]
       12 GETTABLEKS                       R3 R1 K2 ["ComponentName"]
       14 GETUPVAL                         R5 1
       15 GETTABLE                         R4 R5 R3
       16 GETUPVAL                         R5 2
       17 DUPTABLE                         R6 K4 [{"self"}]
       18 SETTABLEKS                       R0 R6 K3 ["self"]
       20 SETTABLE                         R6 R5 R0
       21 GETUPVAL                         R5 3
       22 JUMPIFEQKNIL                     R5 ; [+11]
       24 GETUPVAL                         R6 2
       25 GETUPVAL                         R7 3
       26 GETTABLE                         R5 R6 R7
       27 SETTABLEKS                       R0 R5 K5 ["right"]
       29 GETUPVAL                         R6 2
       30 GETTABLE                         R5 R6 R0
       31 GETUPVAL                         R6 3
       32 SETTABLEKS                       R6 R5 K6 ["left"]
       34 SETUPVAL                         R0 3
       35 GETUPVAL                         R5 4
       36 JUMPIFNOTEQKNIL                  R5 ; [+3]
       38 SETUPVAL                         R0 4
       39 JUMP                             ; [+11]
       40 GETUPVAL                         R6 2
       41 GETTABLE                         R5 R6 R0
       42 GETUPVAL                         R6 4
       43 SETTABLEKS                       R6 R5 K5 ["right"]
       45 GETUPVAL                         R6 2
       46 GETUPVAL                         R7 4
       47 GETTABLE                         R5 R6 R7
       48 GETUPVAL                         R6 3
       49 SETTABLEKS                       R6 R5 K6 ["left"]
       51 LOADK                            R6 K7 ["Custom %* %*"]
       52 GETTABLEKS                       R8 R1 K8 ["Id"]
       54 MOVE                             R9 R0
       55 NAMECALL                         R6 R6 K9 ["format"]
       57 CALL                             R6 3 1
       58 MOVE                             R5 R6
       59 GETUPVAL                         R6 5
       60 MOVE                             R7 R4
       61 DUPTABLE                         R8 K14 [{"Item", "WidgetUri", "LayoutOrder", "OnClick"}]
       62 SETTABLEKS                       R1 R8 K10 ["Item"]
       64 GETUPVAL                         R9 6
       65 GETTABLEKS                       R9 R9 K11 ["WidgetUri"]
       67 SETTABLEKS                       R9 R8 K11 ["WidgetUri"]
       69 GETUPVAL                         R9 7
       70 CALL                             R9 0 1
       71 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       73 NEWCLOSURE                       R9 P0
       74 CAPTURE                          UPVAL U8
       75 CAPTURE                          UPVAL U9
       76 SETTABLEKS                       R9 R8 K13 ["OnClick"]
       78 CALL                             R6 2 -1
       79 RETURN                           R5 -1
       80 GETTABLEKS                       R3 R1 K8 ["Id"]
       82 JUMPIF                           R3 ; [+21]
       83 LOADB                            R3 1
       84 GETUPVAL                         R4 10
       85 LOADNIL                          R5
       86 LOADNIL                          R6
       87 FORGPREP                         R4
       88 GETTABLEKS                       R9 R1 K0 ["Type"]
       90 JUMPIFNOTEQ                      R9 R8 ; [+3]
       92 LOADB                            R3 0
       93 JUMP                             ; [+2]
       94 FORGLOOP                         R4 2 ; [-7]
       96 JUMPIFNOT                        R3 ; [+7]
       97 GETUPVAL                         R4 11
       98 LOADK                            R5 K15 ["Found Control without Id, not initializing:"]
       99 CALL                             R4 1 0
      100 GETUPVAL                         R4 11
      101 MOVE                             R5 R1
      102 CALL                             R4 1 0
      103 RETURN                           R0 0
      104 GETUPVAL                         R4 12
      105 GETTABLEKS                       R5 R1 K0 ["Type"]
      107 GETTABLE                         R3 R4 R5
      108 JUMPIFNOT                        R3 ; [+116]
      109 GETUPVAL                         R4 2
      110 DUPTABLE                         R5 K4 [{"self"}]
      111 SETTABLEKS                       R0 R5 K3 ["self"]
      113 SETTABLE                         R5 R4 R0
      114 GETUPVAL                         R4 3
      115 JUMPIFEQKNIL                     R4 ; [+11]
      117 GETUPVAL                         R5 2
      118 GETUPVAL                         R6 3
      119 GETTABLE                         R4 R5 R6
      120 SETTABLEKS                       R0 R4 K5 ["right"]
      122 GETUPVAL                         R5 2
      123 GETTABLE                         R4 R5 R0
      124 GETUPVAL                         R5 3
      125 SETTABLEKS                       R5 R4 K6 ["left"]
      127 SETUPVAL                         R0 3
      128 GETUPVAL                         R4 4
      129 JUMPIFNOTEQKNIL                  R4 ; [+3]
      131 SETUPVAL                         R0 4
      132 JUMP                             ; [+11]
      133 GETUPVAL                         R5 2
      134 GETTABLE                         R4 R5 R0
      135 GETUPVAL                         R5 4
      136 SETTABLEKS                       R5 R4 K5 ["right"]
      138 GETUPVAL                         R5 2
      139 GETUPVAL                         R6 4
      140 GETTABLE                         R4 R5 R6
      141 GETUPVAL                         R5 3
      142 SETTABLEKS                       R5 R4 K6 ["left"]
      144 LOADK                            R5 K16 ["%* %*"]
      145 GETTABLEKS                       R7 R1 K0 ["Type"]
      147 MOVE                             R8 R0
      148 NAMECALL                         R5 R5 K9 ["format"]
      150 CALL                             R5 3 1
      151 MOVE                             R4 R5
      152 GETUPVAL                         R5 13
      153 GETTABLEKS                       R5 R5 K17 ["createElement"]
      155 MOVE                             R6 R3
      156 DUPTABLE                         R7 K31 [{"Item", "WidgetUri", "Items", "Activate", "OpenMenu", "CloseMenus", "LayoutOrder", "Select", "HideLabels", "MenuData", "MenuView", "Renderers", "ShowContextMenu", "ControlIndices", "Warn", "MdiInstance"}]
      157 SETTABLEKS                       R1 R7 K10 ["Item"]
      159 GETUPVAL                         R8 6
      160 GETTABLEKS                       R8 R8 K11 ["WidgetUri"]
      162 SETTABLEKS                       R8 R7 K11 ["WidgetUri"]
      164 GETUPVAL                         R8 6
      165 GETTABLEKS                       R8 R8 K18 ["Items"]
      167 SETTABLEKS                       R8 R7 K18 ["Items"]
      169 GETUPVAL                         R8 14
      170 SETTABLEKS                       R8 R7 K19 ["Activate"]
      172 GETUPVAL                         R9 15
      173 CALL                             R9 0 1
      174 JUMPIFNOT                        R9 ; [+2]
      175 GETUPVAL                         R8 16
      176 JUMP                             ; [+1]
      177 GETUPVAL                         R8 17
      178 SETTABLEKS                       R8 R7 K20 ["OpenMenu"]
      180 GETUPVAL                         R8 18
      181 SETTABLEKS                       R8 R7 K21 ["CloseMenus"]
      183 GETUPVAL                         R8 7
      184 CALL                             R8 0 1
      185 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
      187 GETUPVAL                         R8 19
      188 SETTABLEKS                       R8 R7 K22 ["Select"]
      190 GETUPVAL                         R8 6
      191 GETTABLEKS                       R8 R8 K23 ["HideLabels"]
      193 SETTABLEKS                       R8 R7 K23 ["HideLabels"]
      195 GETUPVAL                         R8 20
      196 SETTABLEKS                       R8 R7 K24 ["MenuData"]
      198 GETUPVAL                         R8 21
      199 SETTABLEKS                       R8 R7 K25 ["MenuView"]
      201 GETUPVAL                         R8 12
      202 SETTABLEKS                       R8 R7 K26 ["Renderers"]
      204 GETUPVAL                         R8 6
      205 GETTABLEKS                       R8 R8 K27 ["ShowContextMenu"]
      207 SETTABLEKS                       R8 R7 K27 ["ShowContextMenu"]
      209 GETUPVAL                         R9 2
      210 GETTABLE                         R8 R9 R0
      211 SETTABLEKS                       R8 R7 K28 ["ControlIndices"]
      213 GETUPVAL                         R8 11
      214 SETTABLEKS                       R8 R7 K29 ["Warn"]
      216 GETUPVAL                         R8 6
      217 GETTABLEKS                       R8 R8 K32 ["Plugin"]
      219 GETTABLEKS                       R8 R8 K33 ["MultipleDocumentInterfaceInstance"]
      221 SETTABLEKS                       R8 R7 K30 ["MdiInstance"]
      223 CALL                             R5 2 -1
      224 RETURN                           R4 -1
      225 GETUPVAL                         R4 11
      226 LOADK                            R6 K34 ["Missing Control for type %*"]
      227 GETTABLEKS                       R8 R1 K0 ["Type"]
      229 NAMECALL                         R6 R6 K9 ["format"]
      231 CALL                             R6 2 1
      232 MOVE                             R5 R6
      233 CALL                             R4 1 0
      234 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R3 R0 K0 ["CanvasPosition"]
        5 GETTABLEKS                       R3 R3 K1 ["X"]
        7 LOADN                            R4 0
        8 JUMPIFLT                         R4 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 LOADNIL                          R4
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R5 3
        9 CALL                             R4 1 3
       10 GETUPVAL                         R7 4
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          VAL R4
       13 NEWTABLE                         R9 0 1
       15 MOVE                             R10 R4
       16 SETLIST                          R9 R10 1 [1]
       18 CALL                             R7 2 1
       19 DUPCLOSURE                       R8 K1 [PROTO_1]
       20 CAPTURE                          UPVAL U5
       21 NEWCLOSURE                       R9 P2
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R0
       24 GETUPVAL                         R10 6
       25 NEWCLOSURE                       R11 P3
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R12 0 0
       30 CALL                             R10 2 0
       31 LOADK                            R12 K2 ["Actions"]
       32 NAMECALL                         R10 R1 K3 ["GetPluginComponent"]
       34 CALL                             R10 2 1
       35 LOADK                            R13 K4 ["Settings"]
       36 NAMECALL                         R11 R1 K3 ["GetPluginComponent"]
       38 CALL                             R11 2 1
       39 GETUPVAL                         R12 4
       40 NEWCLOSURE                       R13 P4
       41 CAPTURE                          VAL R10
       42 NEWTABLE                         R14 0 0
       44 CALL                             R12 2 1
       45 GETUPVAL                         R13 4
       46 NEWCLOSURE                       R14 P5
       47 CAPTURE                          VAL R11
       48 NEWTABLE                         R15 0 0
       50 CALL                             R13 2 1
       51 GETUPVAL                         R14 4
       52 NEWCLOSURE                       R15 P6
       53 CAPTURE                          VAL R0
       54 NEWTABLE                         R16 0 1
       56 GETTABLEKS                       R17 R0 K5 ["ShowContextMenu"]
       58 SETLIST                          R16 R17 1 [1]
       60 CALL                             R14 2 1
       61 NEWTABLE                         R15 0 0
       63 LOADNIL                          R16
       64 LOADNIL                          R17
       65 NEWCLOSURE                       R18 P7
       66 CAPTURE                          VAL R15
       67 CAPTURE                          REF R16
       68 CAPTURE                          REF R17
       69 GETUPVAL                         R19 7
       70 GETTABLEKS                       R20 R0 K6 ["Items"]
       72 GETTABLEKS                       R20 R20 K7 ["Controls"]
       74 NEWCLOSURE                       R21 P8
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          UPVAL U9
       77 CAPTURE                          VAL R15
       78 CAPTURE                          REF R16
       79 CAPTURE                          REF R17
       80 CAPTURE                          UPVAL U10
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R10
       84 CAPTURE                          UPVAL U11
       85 CAPTURE                          UPVAL U12
       86 CAPTURE                          VAL R8
       87 CAPTURE                          UPVAL U13
       88 CAPTURE                          UPVAL U14
       89 CAPTURE                          VAL R12
       90 CAPTURE                          UPVAL U15
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R6
       96 CAPTURE                          UPVAL U3
       97 CALL                             R19 2 1
       98 GETUPVAL                         R21 14
       99 GETTABLEKS                       R21 R21 K8 ["Tag"]
      101 GETTABLE                         R20 R0 R21
      102 GETUPVAL                         R21 10
      103 LOADK                            R22 K9 ["Frame"]
      104 NEWTABLE                         R23 4 0
      106 GETTABLEKS                       R24 R0 K10 ["LayoutOrder"]
      108 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      110 SETTABLEKS                       R3 R23 K11 ["ref"]
      112 GETUPVAL                         R24 14
      113 GETTABLEKS                       R24 R24 K12 ["Change"]
      115 GETTABLEKS                       R24 R24 K13 ["AbsoluteSize"]
      117 SETTABLE                         R9 R23 R24
      118 GETUPVAL                         R24 14
      119 GETTABLEKS                       R24 R24 K8 ["Tag"]
      121 GETUPVAL                         R25 16
      122 LOADK                            R26 K14 ["Role-Surface X-Center"]
      123 MOVE                             R27 R20
      124 CALL                             R25 2 1
      125 SETTABLE                         R25 R23 R24
      126 MOVE                             R24 R19
      127 CALL                             R21 3 1
      128 GETUPVAL                         R22 17
      129 LOADB                            R23 0
      130 CALL                             R22 1 2
      131 GETTABLEKS                       R24 R0 K15 ["Scroll"]
      133 JUMPIFNOT                        R24 ; [+75]
      134 GETUPVAL                         R24 10
      135 LOADK                            R25 K9 ["Frame"]
      136 NEWTABLE                         R26 2 0
      138 GETTABLEKS                       R27 R0 K10 ["LayoutOrder"]
      140 SETTABLEKS                       R27 R26 K10 ["LayoutOrder"]
      142 GETUPVAL                         R27 14
      143 GETTABLEKS                       R27 R27 K8 ["Tag"]
      145 LOADK                            R28 K16 ["Role-Surface Role-Scroller X-FitY"]
      146 SETTABLE                         R28 R26 R27
      147 DUPTABLE                         R27 K20 [{"Scroller", "LeftGradient", "RightGradient"}]
      148 GETUPVAL                         R28 10
      149 LOADK                            R29 K21 ["ScrollingFrame"]
      150 NEWTABLE                         R30 4 0
      152 GETUPVAL                         R31 14
      153 GETTABLEKS                       R31 R31 K12 ["Change"]
      155 GETTABLEKS                       R31 R31 K22 ["CanvasPosition"]
      157 NEWCLOSURE                       R32 P9
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R23
      160 SETTABLE                         R32 R30 R31
      161 GETUPVAL                         R31 14
      162 GETTABLEKS                       R31 R31 K23 ["Event"]
      164 GETTABLEKS                       R31 R31 K24 ["InputBegan"]
      166 SETTABLE                         R14 R30 R31
      167 GETUPVAL                         R31 14
      168 GETTABLEKS                       R31 R31 K8 ["Tag"]
      170 LOADK                            R32 K25 ["Role-Surface"]
      171 SETTABLE                         R32 R30 R31
      172 MOVE                             R31 R21
      173 CALL                             R28 3 1
      174 SETTABLEKS                       R28 R27 K17 ["Scroller"]
      176 GETUPVAL                         R28 14
      177 GETTABLEKS                       R28 R28 K26 ["createElement"]
      179 LOADK                            R29 K9 ["Frame"]
      180 NEWTABLE                         R30 2 0
      182 SETTABLEKS                       R22 R30 K27 ["Visible"]
      184 GETUPVAL                         R31 14
      185 GETTABLEKS                       R31 R31 K8 ["Tag"]
      187 LOADK                            R32 K28 ["Role-Surface100 X-FadeRight"]
      188 SETTABLE                         R32 R30 R31
      189 CALL                             R28 2 1
      190 SETTABLEKS                       R28 R27 K18 ["LeftGradient"]
      192 GETUPVAL                         R28 14
      193 GETTABLEKS                       R28 R28 K26 ["createElement"]
      195 LOADK                            R29 K9 ["Frame"]
      196 NEWTABLE                         R30 1 0
      198 GETUPVAL                         R31 14
      199 GETTABLEKS                       R31 R31 K8 ["Tag"]
      201 LOADK                            R32 K29 ["Role-Surface100 X-FadeLeft"]
      202 SETTABLE                         R32 R30 R31
      203 CALL                             R28 2 1
      204 SETTABLEKS                       R28 R27 K19 ["RightGradient"]
      206 CALL                             R24 3 -1
      207 CLOSEUPVALS                      R16
      208 RETURN                           R24 -1
      209 CLOSEUPVALS                      R16
      210 RETURN                           R21 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K1 [{"Items"}]
        3 GETUPVAL                         R3 2
        4 SETTABLEKS                       R3 R2 K0 ["Items"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 DUPTABLE                         R3 K1 [{"Items"}]
        4 GETUPVAL                         R4 3
        5 SETTABLEKS                       R4 R3 K0 ["Items"]
        7 CALL                             R1 2 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Controls"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 3
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R6 0 2
       18 MOVE                             R7 R1
       19 GETTABLEKS                       R8 R0 K1 ["HideLabels"]
       21 SETLIST                          R6 R7 2 [1]
       23 CALL                             R4 2 0
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R4 R4 K2 ["createElement"]
       27 GETUPVAL                         R5 5
       28 MOVE                             R6 R2
       29 CALL                             R4 2 1
       30 RETURN                           R4 1

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
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["DebugRibbonControlWarnings"]
       17 LOADB                            R5 0
       18 NAMECALL                         R2 R2 K11 ["DefineFastFlag"]
       20 CALL                             R2 3 1
       21 GETTABLEKS                       R3 R1 K12 ["createElement"]
       23 GETTABLEKS                       R4 R1 K13 ["useBinding"]
       25 GETTABLEKS                       R5 R1 K14 ["useCallback"]
       27 GETTABLEKS                       R6 R1 K15 ["useEffect"]
       29 GETTABLEKS                       R7 R1 K16 ["useRef"]
       31 GETTABLEKS                       R8 R1 K17 ["useState"]
       33 GETIMPORT                        R9 K5 [require]
       35 GETTABLEKS                       R10 R0 K6 ["Packages"]
       37 GETTABLEKS                       R10 R10 K18 ["Framework"]
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R10 R9 K19 ["Styling"]
       42 GETTABLEKS                       R11 R10 K20 ["joinTags"]
       44 GETIMPORT                        R12 K5 [require]
       46 GETTABLEKS                       R13 R0 K6 ["Packages"]
       48 GETTABLEKS                       R13 R13 K21 ["Dash"]
       50 CALL                             R12 1 1
       51 GETTABLEKS                       R13 R12 K22 ["collect"]
       53 GETTABLEKS                       R14 R12 K23 ["join"]
       55 GETIMPORT                        R15 K5 [require]
       57 GETTABLEKS                       R16 R0 K24 ["Src"]
       59 GETTABLEKS                       R16 R16 K25 ["Util"]
       61 GETTABLEKS                       R16 R16 K26 ["isControlEnabledFromFlags"]
       63 CALL                             R15 1 1
       64 GETTABLEKS                       R16 R9 K25 ["Util"]
       66 GETTABLEKS                       R16 R16 K27 ["counter"]
       68 GETIMPORT                        R17 K5 [require]
       70 GETTABLEKS                       R18 R0 K24 ["Src"]
       72 GETTABLEKS                       R18 R18 K28 ["Types"]
       74 CALL                             R17 1 1
       75 GETIMPORT                        R18 K5 [require]
       77 GETTABLEKS                       R19 R0 K24 ["Src"]
       79 GETTABLEKS                       R19 R19 K29 ["Components"]
       81 GETTABLEKS                       R19 R19 K30 ["ControlsView"]
       83 GETTABLEKS                       R19 R19 K31 ["ControlProps"]
       85 CALL                             R18 1 1
       86 GETIMPORT                        R19 K5 [require]
       88 GETTABLEKS                       R20 R0 K6 ["Packages"]
       90 GETTABLEKS                       R20 R20 K32 ["StudioFoundation"]
       92 CALL                             R19 1 1
       93 GETTABLEKS                       R20 R19 K25 ["Util"]
       95 GETTABLEKS                       R20 R20 K33 ["StudioUri"]
       97 GETIMPORT                        R21 K5 [require]
       99 GETTABLEKS                       R22 R0 K24 ["Src"]
      101 GETTABLEKS                       R22 R22 K34 ["Hooks"]
      103 GETTABLEKS                       R22 R22 K35 ["useControls"]
      105 CALL                             R21 1 1
      106 GETIMPORT                        R22 K5 [require]
      108 GETTABLEKS                       R23 R0 K24 ["Src"]
      110 GETTABLEKS                       R23 R23 K34 ["Hooks"]
      112 GETTABLEKS                       R23 R23 K36 ["useMenu"]
      114 CALL                             R22 1 1
      115 GETIMPORT                        R23 K5 [require]
      117 GETTABLEKS                       R24 R0 K24 ["Src"]
      119 GETTABLEKS                       R24 R24 K37 ["SharedFlags"]
      121 GETTABLEKS                       R24 R24 K38 ["getFFlagRibbonDropdownMinWidth"]
      123 CALL                             R23 1 1
      124 NEWTABLE                         R24 0 0
      126 GETIMPORT                        R25 K5 [require]
      128 GETTABLEKS                       R26 R0 K24 ["Src"]
      130 GETTABLEKS                       R26 R26 K29 ["Components"]
      132 GETTABLEKS                       R26 R26 K39 ["SocialPresence"]
      134 GETTABLEKS                       R26 R26 K40 ["CollaboratorRibbon"]
      136 CALL                             R25 1 1
      137 SETTABLEKS                       R25 R24 K40 ["CollaboratorRibbon"]
      139 GETIMPORT                        R26 K5 [require]
      141 GETTABLEKS                       R27 R0 K24 ["Src"]
      143 GETTABLEKS                       R27 R27 K29 ["Components"]
      145 GETTABLEKS                       R27 R27 K41 ["UpdateStatus"]
      147 CALL                             R26 1 1
      148 SETTABLEKS                       R26 R24 K41 ["UpdateStatus"]
      150 NEWTABLE                         R27 0 3
      152 LOADK                            R28 K42 ["Row"]
      153 LOADK                            R29 K43 ["Column"]
      154 LOADK                            R30 K44 ["Separator"]
      155 SETLIST                          R27 R28 3 [1]
      157 GETIMPORT                        R28 K5 [require]
      159 GETIMPORT                        R29 K1 [script]
      161 GETTABLEKS                       R29 R29 K45 ["Renderers"]
      163 CALL                             R28 1 1
      164 LOADNIL                          R29
      165 GETTABLEKS                       R30 R1 K46 ["memo"]
      167 NEWCLOSURE                       R31 P0
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R22
      171 CAPTURE                          REF R29
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R24
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R27
      181 CAPTURE                          VAL R28
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R4
      186 CALL                             R30 1 1
      187 DUPCLOSURE                       R29 K47 [PROTO_14]
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R6
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R30
      194 CLOSEUPVALS                      R29
      195 RETURN                           R29 1
