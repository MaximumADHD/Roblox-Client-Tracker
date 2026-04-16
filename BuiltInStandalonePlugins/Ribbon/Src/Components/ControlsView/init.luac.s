PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETIMPORT                        R0 K1 [warn]
        5 GETVARARGS                       R1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["OnResize"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["OnResize"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["OnResize"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["OnResize"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["ActivateAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R2 R3 ; [+6]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["ShowContextMenu"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["fromAction"]
        4 LOADK                            R3 K1 ["LiveCollaborators"]
        5 LOADK                            R4 K2 ["Toggle"]
        6 CALL                             R2 2 -1
        7 NAMECALL                         R0 R0 K3 ["ActivateAsync"]
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_8:
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
       64 GETUPVAL                         R10 6
       65 GETTABLEKS                       R9 R10 K11 ["WidgetUri"]
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
      108 JUMPIFNOT                        R3 ; [+111]
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
      152 GETUPVAL                         R6 13
      153 GETTABLEKS                       R5 R6 K17 ["createElement"]
      155 MOVE                             R6 R3
      156 DUPTABLE                         R7 K31 [{"Item", "WidgetUri", "Items", "Activate", "OpenMenu", "CloseMenus", "LayoutOrder", "Select", "HideLabels", "MenuData", "MenuView", "Renderers", "ShowContextMenu", "ControlIndices", "Warn", "MdiInstance"}]
      157 SETTABLEKS                       R1 R7 K10 ["Item"]
      159 GETUPVAL                         R9 6
      160 GETTABLEKS                       R8 R9 K11 ["WidgetUri"]
      162 SETTABLEKS                       R8 R7 K11 ["WidgetUri"]
      164 GETUPVAL                         R9 6
      165 GETTABLEKS                       R8 R9 K18 ["Items"]
      167 SETTABLEKS                       R8 R7 K18 ["Items"]
      169 GETUPVAL                         R8 14
      170 SETTABLEKS                       R8 R7 K19 ["Activate"]
      172 GETUPVAL                         R8 15
      173 SETTABLEKS                       R8 R7 K20 ["OpenMenu"]
      175 GETUPVAL                         R8 16
      176 SETTABLEKS                       R8 R7 K21 ["CloseMenus"]
      178 GETUPVAL                         R8 7
      179 CALL                             R8 0 1
      180 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
      182 GETUPVAL                         R8 17
      183 SETTABLEKS                       R8 R7 K22 ["Select"]
      185 GETUPVAL                         R9 6
      186 GETTABLEKS                       R8 R9 K23 ["HideLabels"]
      188 SETTABLEKS                       R8 R7 K23 ["HideLabels"]
      190 GETUPVAL                         R8 18
      191 SETTABLEKS                       R8 R7 K24 ["MenuData"]
      193 GETUPVAL                         R8 19
      194 SETTABLEKS                       R8 R7 K25 ["MenuView"]
      196 GETUPVAL                         R8 12
      197 SETTABLEKS                       R8 R7 K26 ["Renderers"]
      199 GETUPVAL                         R9 6
      200 GETTABLEKS                       R8 R9 K27 ["ShowContextMenu"]
      202 SETTABLEKS                       R8 R7 K27 ["ShowContextMenu"]
      204 GETUPVAL                         R9 2
      205 GETTABLE                         R8 R9 R0
      206 SETTABLEKS                       R8 R7 K28 ["ControlIndices"]
      208 GETUPVAL                         R8 11
      209 SETTABLEKS                       R8 R7 K29 ["Warn"]
      211 GETUPVAL                         R10 6
      212 GETTABLEKS                       R9 R10 K32 ["Plugin"]
      214 GETTABLEKS                       R8 R9 K33 ["MultipleDocumentInterfaceInstance"]
      216 SETTABLEKS                       R8 R7 K30 ["MdiInstance"]
      218 CALL                             R5 2 -1
      219 RETURN                           R4 -1
      220 GETUPVAL                         R4 11
      221 LOADK                            R6 K34 ["Missing Control for type %*"]
      222 GETTABLEKS                       R8 R1 K0 ["Type"]
      224 NAMECALL                         R6 R6 K9 ["format"]
      226 CALL                             R6 2 1
      227 MOVE                             R5 R6
      228 CALL                             R4 1 0
      229 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R4 R0 K0 ["CanvasPosition"]
        5 GETTABLEKS                       R3 R4 K1 ["X"]
        7 LOADN                            R4 0
        8 JUMPIFLT                         R4 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 LOADNIL                          R4
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R5 3
        9 CALL                             R4 1 3
       10 DUPCLOSURE                       R7 K1 [PROTO_0]
       11 CAPTURE                          UPVAL U4
       12 NEWCLOSURE                       R8 P1
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R0
       15 GETUPVAL                         R9 5
       16 NEWCLOSURE                       R10 P2
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R11 0 0
       21 CALL                             R9 2 0
       22 LOADK                            R11 K2 ["Actions"]
       23 NAMECALL                         R9 R1 K3 ["GetPluginComponent"]
       25 CALL                             R9 2 1
       26 LOADK                            R12 K4 ["Settings"]
       27 NAMECALL                         R10 R1 K3 ["GetPluginComponent"]
       29 CALL                             R10 2 1
       30 GETUPVAL                         R11 6
       31 NEWCLOSURE                       R12 P3
       32 CAPTURE                          VAL R9
       33 NEWTABLE                         R13 0 0
       35 CALL                             R11 2 1
       36 GETUPVAL                         R12 6
       37 NEWCLOSURE                       R13 P4
       38 CAPTURE                          VAL R10
       39 NEWTABLE                         R14 0 0
       41 CALL                             R12 2 1
       42 GETUPVAL                         R13 6
       43 NEWCLOSURE                       R14 P5
       44 CAPTURE                          VAL R0
       45 NEWTABLE                         R15 0 1
       47 GETTABLEKS                       R16 R0 K5 ["ShowContextMenu"]
       49 SETLIST                          R15 R16 1 [1]
       51 CALL                             R13 2 1
       52 NEWTABLE                         R14 0 0
       54 LOADNIL                          R15
       55 LOADNIL                          R16
       56 NEWCLOSURE                       R17 P6
       57 CAPTURE                          VAL R14
       58 CAPTURE                          REF R15
       59 CAPTURE                          REF R16
       60 GETUPVAL                         R18 7
       61 GETTABLEKS                       R20 R0 K6 ["Items"]
       63 GETTABLEKS                       R19 R20 K7 ["Controls"]
       65 NEWCLOSURE                       R20 P7
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          UPVAL U9
       68 CAPTURE                          VAL R14
       69 CAPTURE                          REF R15
       70 CAPTURE                          REF R16
       71 CAPTURE                          UPVAL U10
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R9
       75 CAPTURE                          UPVAL U11
       76 CAPTURE                          UPVAL U12
       77 CAPTURE                          VAL R7
       78 CAPTURE                          UPVAL U13
       79 CAPTURE                          UPVAL U14
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R6
       85 CAPTURE                          UPVAL U3
       86 CALL                             R18 2 1
       87 GETUPVAL                         R21 14
       88 GETTABLEKS                       R20 R21 K8 ["Tag"]
       90 GETTABLE                         R19 R0 R20
       91 GETUPVAL                         R20 10
       92 LOADK                            R21 K9 ["Frame"]
       93 NEWTABLE                         R22 4 0
       95 GETTABLEKS                       R23 R0 K10 ["LayoutOrder"]
       97 SETTABLEKS                       R23 R22 K10 ["LayoutOrder"]
       99 SETTABLEKS                       R3 R22 K11 ["ref"]
      101 GETUPVAL                         R25 14
      102 GETTABLEKS                       R24 R25 K12 ["Change"]
      104 GETTABLEKS                       R23 R24 K13 ["AbsoluteSize"]
      106 SETTABLE                         R8 R22 R23
      107 GETUPVAL                         R24 14
      108 GETTABLEKS                       R23 R24 K8 ["Tag"]
      110 GETUPVAL                         R24 15
      111 LOADK                            R25 K14 ["Role-Surface X-Center"]
      112 MOVE                             R26 R19
      113 CALL                             R24 2 1
      114 SETTABLE                         R24 R22 R23
      115 MOVE                             R23 R18
      116 CALL                             R20 3 1
      117 GETUPVAL                         R21 16
      118 LOADB                            R22 0
      119 CALL                             R21 1 2
      120 GETTABLEKS                       R23 R0 K15 ["Scroll"]
      122 JUMPIFNOT                        R23 ; [+75]
      123 GETUPVAL                         R23 10
      124 LOADK                            R24 K9 ["Frame"]
      125 NEWTABLE                         R25 2 0
      127 GETTABLEKS                       R26 R0 K10 ["LayoutOrder"]
      129 SETTABLEKS                       R26 R25 K10 ["LayoutOrder"]
      131 GETUPVAL                         R27 14
      132 GETTABLEKS                       R26 R27 K8 ["Tag"]
      134 LOADK                            R27 K16 ["Role-Surface Role-Scroller X-FitY"]
      135 SETTABLE                         R27 R25 R26
      136 DUPTABLE                         R26 K20 [{"Scroller", "LeftGradient", "RightGradient"}]
      137 GETUPVAL                         R27 10
      138 LOADK                            R28 K21 ["ScrollingFrame"]
      139 NEWTABLE                         R29 4 0
      141 GETUPVAL                         R32 14
      142 GETTABLEKS                       R31 R32 K12 ["Change"]
      144 GETTABLEKS                       R30 R31 K22 ["CanvasPosition"]
      146 NEWCLOSURE                       R31 P8
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R22
      149 SETTABLE                         R31 R29 R30
      150 GETUPVAL                         R32 14
      151 GETTABLEKS                       R31 R32 K23 ["Event"]
      153 GETTABLEKS                       R30 R31 K24 ["InputBegan"]
      155 SETTABLE                         R13 R29 R30
      156 GETUPVAL                         R31 14
      157 GETTABLEKS                       R30 R31 K8 ["Tag"]
      159 LOADK                            R31 K25 ["Role-Surface"]
      160 SETTABLE                         R31 R29 R30
      161 MOVE                             R30 R20
      162 CALL                             R27 3 1
      163 SETTABLEKS                       R27 R26 K17 ["Scroller"]
      165 GETUPVAL                         R28 14
      166 GETTABLEKS                       R27 R28 K26 ["createElement"]
      168 LOADK                            R28 K9 ["Frame"]
      169 NEWTABLE                         R29 2 0
      171 SETTABLEKS                       R21 R29 K27 ["Visible"]
      173 GETUPVAL                         R31 14
      174 GETTABLEKS                       R30 R31 K8 ["Tag"]
      176 LOADK                            R31 K28 ["Role-Surface100 X-FadeRight"]
      177 SETTABLE                         R31 R29 R30
      178 CALL                             R27 2 1
      179 SETTABLEKS                       R27 R26 K18 ["LeftGradient"]
      181 GETUPVAL                         R28 14
      182 GETTABLEKS                       R27 R28 K26 ["createElement"]
      184 LOADK                            R28 K9 ["Frame"]
      185 NEWTABLE                         R29 1 0
      187 GETUPVAL                         R31 14
      188 GETTABLEKS                       R30 R31 K8 ["Tag"]
      190 LOADK                            R31 K29 ["Role-Surface100 X-FadeLeft"]
      191 SETTABLE                         R31 R29 R30
      192 CALL                             R27 2 1
      193 SETTABLEKS                       R27 R26 K19 ["RightGradient"]
      195 CALL                             R23 3 -1
      196 CLOSEUPVALS                      R15
      197 RETURN                           R23 -1
      198 CLOSEUPVALS                      R15
      199 RETURN                           R20 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K1 [{"Items"}]
        3 GETUPVAL                         R3 2
        4 SETTABLEKS                       R3 R2 K0 ["Items"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 DUPTABLE                         R3 K1 [{"Items"}]
        4 GETUPVAL                         R4 3
        5 SETTABLEKS                       R4 R3 K0 ["Items"]
        7 CALL                             R1 2 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Plugin"]
        3 GETTABLEKS                       R3 R0 K1 ["Controls"]
        5 GETUPVAL                         R4 1
        6 CALL                             R1 3 1
        7 GETUPVAL                         R2 2
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CALL                             R2 1 2
       13 GETUPVAL                         R4 4
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R3
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R6 0 2
       21 MOVE                             R7 R1
       22 GETTABLEKS                       R8 R0 K2 ["HideLabels"]
       24 SETLIST                          R6 R7 2 [1]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R5 5
       28 GETTABLEKS                       R4 R5 K3 ["createElement"]
       30 GETUPVAL                         R5 6
       31 MOVE                             R6 R2
       32 CALL                             R4 2 1
       33 RETURN                           R4 1

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
       35 GETTABLEKS                       R11 R0 K6 ["Packages"]
       37 GETTABLEKS                       R10 R11 K18 ["Framework"]
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R10 R9 K19 ["Styling"]
       42 GETTABLEKS                       R11 R10 K20 ["joinTags"]
       44 GETIMPORT                        R12 K5 [require]
       46 GETTABLEKS                       R14 R0 K6 ["Packages"]
       48 GETTABLEKS                       R13 R14 K21 ["Dash"]
       50 CALL                             R12 1 1
       51 GETTABLEKS                       R13 R12 K22 ["collect"]
       53 GETTABLEKS                       R14 R12 K23 ["join"]
       55 GETIMPORT                        R15 K5 [require]
       57 GETTABLEKS                       R18 R0 K24 ["Src"]
       59 GETTABLEKS                       R17 R18 K25 ["Util"]
       61 GETTABLEKS                       R16 R17 K26 ["isControlEnabledFromFlags"]
       63 CALL                             R15 1 1
       64 GETTABLEKS                       R17 R9 K25 ["Util"]
       66 GETTABLEKS                       R16 R17 K27 ["counter"]
       68 GETIMPORT                        R17 K5 [require]
       70 GETTABLEKS                       R19 R0 K24 ["Src"]
       72 GETTABLEKS                       R18 R19 K28 ["Types"]
       74 CALL                             R17 1 1
       75 GETIMPORT                        R18 K5 [require]
       77 GETTABLEKS                       R22 R0 K24 ["Src"]
       79 GETTABLEKS                       R21 R22 K29 ["Components"]
       81 GETTABLEKS                       R20 R21 K30 ["ControlsView"]
       83 GETTABLEKS                       R19 R20 K31 ["ControlProps"]
       85 CALL                             R18 1 1
       86 GETIMPORT                        R19 K5 [require]
       88 GETTABLEKS                       R21 R0 K6 ["Packages"]
       90 GETTABLEKS                       R20 R21 K32 ["StudioFoundation"]
       92 CALL                             R19 1 1
       93 GETTABLEKS                       R21 R19 K25 ["Util"]
       95 GETTABLEKS                       R20 R21 K33 ["StudioUri"]
       97 GETIMPORT                        R21 K5 [require]
       99 GETTABLEKS                       R24 R0 K24 ["Src"]
      101 GETTABLEKS                       R23 R24 K34 ["Hooks"]
      103 GETTABLEKS                       R22 R23 K35 ["useControls"]
      105 CALL                             R21 1 1
      106 GETIMPORT                        R22 K5 [require]
      108 GETTABLEKS                       R25 R0 K24 ["Src"]
      110 GETTABLEKS                       R24 R25 K34 ["Hooks"]
      112 GETTABLEKS                       R23 R24 K36 ["useMenu"]
      114 CALL                             R22 1 1
      115 NEWTABLE                         R23 0 0
      117 GETIMPORT                        R24 K5 [require]
      119 GETTABLEKS                       R28 R0 K24 ["Src"]
      121 GETTABLEKS                       R27 R28 K29 ["Components"]
      123 GETTABLEKS                       R26 R27 K37 ["SocialPresence"]
      125 GETTABLEKS                       R25 R26 K38 ["CollaboratorRibbon"]
      127 CALL                             R24 1 1
      128 SETTABLEKS                       R24 R23 K38 ["CollaboratorRibbon"]
      130 GETIMPORT                        R25 K5 [require]
      132 GETTABLEKS                       R28 R0 K24 ["Src"]
      134 GETTABLEKS                       R27 R28 K29 ["Components"]
      136 GETTABLEKS                       R26 R27 K39 ["UpdateStatus"]
      138 CALL                             R25 1 1
      139 SETTABLEKS                       R25 R23 K39 ["UpdateStatus"]
      141 NEWTABLE                         R26 0 3
      143 LOADK                            R27 K40 ["Row"]
      144 LOADK                            R28 K41 ["Column"]
      145 LOADK                            R29 K42 ["Separator"]
      146 SETLIST                          R26 R27 3 [1]
      148 GETIMPORT                        R27 K5 [require]
      150 GETIMPORT                        R29 K1 [script]
      152 GETTABLEKS                       R28 R29 K43 ["Renderers"]
      154 CALL                             R27 1 1
      155 LOADNIL                          R28
      156 GETTABLEKS                       R29 R1 K44 ["memo"]
      158 NEWCLOSURE                       R30 P0
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R22
      162 CAPTURE                          REF R28
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R23
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R26
      172 CAPTURE                          VAL R27
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R4
      176 CALL                             R29 1 1
      177 DUPCLOSURE                       R28 K45 [PROTO_13]
      178 CAPTURE                          VAL R21
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R29
      185 CLOSEUPVALS                      R28
      186 RETURN                           R28 1
