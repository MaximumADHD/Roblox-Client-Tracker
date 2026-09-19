PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+19]
        2 LOADK                            R4 K0 ["PluginGui"]
        3 NAMECALL                         R2 R1 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+5]
        7 LOADK                            R4 K2 ["ScreenGui"]
        8 NAMECALL                         R2 R1 K1 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+1]
       12 RETURN                           R1 1
       13 GETTABLEKS                       R2 R1 K3 ["Parent"]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R1 K3 ["Parent"]
       20 JUMPBACK                         ; [-20]
       21 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Destroy"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["onDismiss"]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R1 R0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 NAMECALL                         R7 R6 K0 ["Destroy"]
        9 CALL                             R7 1 0
       10 FORGLOOP                         R2 2 ; [-4]
       12 GETIMPORT                        R2 K3 [table.clear]
       14 GETUPVAL                         R3 1
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 2
       17 LOADNIL                          R3
       18 CALL                             R2 1 0
       19 JUMPIF                           R1 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 3
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R3 R3 K4 ["anchor"]
       25 CALL                             R2 1 1
       26 JUMPIFNOT                        R2 ; [+4]
       27 GETUPVAL                         R3 5
       28 MOVE                             R4 R2
       29 CALL                             R3 1 1
       30 JUMP                             ; [+5]
       31 GETUPVAL                         R3 5
       32 GETUPVAL                         R4 6
       33 GETTABLEKS                       R4 R4 K5 ["host"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K8 [Vector2.zero]
       38 LOADK                            R7 K9 ["GuiBase2d"]
       39 NAMECALL                         R5 R3 K10 ["IsA"]
       41 CALL                             R5 2 1
       42 JUMPIFNOT                        R5 ; [+2]
       43 GETTABLEKS                       R4 R3 K11 ["AbsolutePosition"]
       45 GETUPVAL                         R5 3
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K12 ["dismissOnBackdropClick"]
       49 CALL                             R5 1 1
       50 JUMPIFEQKB                       R5 FALSE ; [+49]
       52 GETIMPORT                        R5 K15 [Instance.new]
       54 LOADK                            R6 K16 ["TextButton"]
       55 CALL                             R5 1 1
       56 LOADK                            R6 K17 ["OverlayBackdrop"]
       57 SETTABLEKS                       R6 R5 K18 ["Name"]
       59 GETIMPORT                        R6 K20 [UDim2.new]
       61 LOADN                            R7 1
       62 LOADN                            R8 0
       63 LOADN                            R9 1
       64 LOADN                            R10 0
       65 CALL                             R6 4 1
       66 SETTABLEKS                       R6 R5 K21 ["Size"]
       68 LOADN                            R6 1
       69 SETTABLEKS                       R6 R5 K22 ["BackgroundTransparency"]
       71 LOADK                            R6 K23 [""]
       72 SETTABLEKS                       R6 R5 K24 ["Text"]
       74 LOADN                            R6 50
       75 SETTABLEKS                       R6 R5 K25 ["ZIndex"]
       77 LOADB                            R6 0
       78 SETTABLEKS                       R6 R5 K26 ["AutoButtonColor"]
       80 LOADN                            R6 0
       81 SETTABLEKS                       R6 R5 K27 ["BorderSizePixel"]
       83 SETTABLEKS                       R3 R5 K28 ["Parent"]
       85 GETTABLEKS                       R6 R5 K29 ["Activated"]
       87 NEWCLOSURE                       R8 P0
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          UPVAL U4
       90 NAMECALL                         R6 R6 K30 ["Connect"]
       92 CALL                             R6 2 0
       93 GETUPVAL                         R7 1
       94 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       96 MOVE                             R8 R5
       97 GETIMPORT                        R6 K32 [table.insert]
       99 CALL                             R6 2 0
      100 GETIMPORT                        R5 K15 [Instance.new]
      102 LOADK                            R6 K33 ["Frame"]
      103 CALL                             R5 1 1
      104 LOADK                            R6 K34 ["OverlayContainer"]
      105 SETTABLEKS                       R6 R5 K18 ["Name"]
      107 LOADN                            R6 1
      108 SETTABLEKS                       R6 R5 K22 ["BackgroundTransparency"]
      110 LOADN                            R6 0
      111 SETTABLEKS                       R6 R5 K27 ["BorderSizePixel"]
      113 LOADN                            R6 51
      114 SETTABLEKS                       R6 R5 K25 ["ZIndex"]
      116 GETIMPORT                        R6 K38 [Enum.AutomaticSize.XY]
      118 SETTABLEKS                       R6 R5 K36 ["AutomaticSize"]
      120 GETIMPORT                        R6 K40 [UDim2.fromOffset]
      122 LOADN                            R7 0
      123 LOADN                            R8 0
      124 CALL                             R6 2 1
      125 SETTABLEKS                       R6 R5 K21 ["Size"]
      127 JUMPIFNOT                        R2 ; [+28]
      128 LOADK                            R8 K41 ["GuiObject"]
      129 NAMECALL                         R6 R2 K10 ["IsA"]
      131 CALL                             R6 2 1
      132 JUMPIFNOT                        R6 ; [+23]
      133 GETTABLEKS                       R6 R2 K11 ["AbsolutePosition"]
      135 GETTABLEKS                       R7 R2 K42 ["AbsoluteSize"]
      137 GETIMPORT                        R8 K40 [UDim2.fromOffset]
      139 GETTABLEKS                       R10 R6 K43 ["X"]
      141 GETTABLEKS                       R11 R4 K43 ["X"]
      143 SUB                              R9 R10 R11
      144 GETTABLEKS                       R13 R6 K45 ["Y"]
      146 GETTABLEKS                       R14 R4 K45 ["Y"]
      148 SUB                              R12 R13 R14
      149 GETTABLEKS                       R13 R7 K45 ["Y"]
      151 ADD                              R11 R12 R13
      152 ADDK                             R10 R11 K44 [2]
      153 CALL                             R8 2 1
      154 SETTABLEKS                       R8 R5 K46 ["Position"]
      156 SETTABLEKS                       R3 R5 K28 ["Parent"]
      158 GETUPVAL                         R7 1
      159 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
      161 MOVE                             R8 R5
      162 GETIMPORT                        R6 K32 [table.insert]
      164 CALL                             R6 2 0
      165 GETUPVAL                         R6 2
      166 MOVE                             R7 R5
      167 CALL                             R6 1 0
      168 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETTABLEKS                       R3 R0 K1 ["visible"]
        4 GETTABLEKS                       R4 R1 K2 ["createSignal"]
        6 LOADNIL                          R5
        7 CALL                             R4 1 2
        8 NEWTABLE                         R6 0 0
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R6
       12 GETTABLEKS                       R8 R1 K3 ["createEffect"]
       14 NEWCLOSURE                       R9 P1
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R6
       17 CAPTURE                          VAL R5
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R1
       22 CALL                             R8 1 0
       23 DUPTABLE                         R8 K6 [{"visible", "container", "children"}]
       24 SETTABLEKS                       R3 R8 K1 ["visible"]
       26 SETTABLEKS                       R4 R8 K4 ["container"]
       28 GETTABLEKS                       R9 R0 K5 ["children"]
       30 SETTABLEKS                       R9 R8 K5 ["children"]
       32 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETTABLEKS                       R4 R2 K9 ["template"]
       18 GETTABLEKS                       R5 R2 K10 ["Portal"]
       20 GETTABLEKS                       R6 R2 K11 ["If"]
       22 DUPCLOSURE                       R7 K12 [PROTO_0]
       23 MOVE                             R8 R4
       24 LOADK                            R9 K13 ["Overlay"]
       25 DUPTABLE                         R10 K22 [{["visible"] = False, ["anchor"] = , ["dismissOnBackdropClick"] = True, ["onDismiss"] = , ["children"]}]
       26 NEWTABLE                         R11 0 0
       28 SETTABLEKS                       R11 R10 K21 ["children"]
       30 NEWTABLE                         R11 0 1
       32 MOVE                             R12 R6
       33 DUPTABLE                         R13 K25 [{"when", "Then"}]
       34 MOVE                             R14 R3
       35 LOADK                            R15 K14 ["visible"]
       36 CALL                             R14 1 1
       37 SETTABLEKS                       R14 R13 K23 ["when"]
       39 MOVE                             R14 R4
       40 NEWTABLE                         R15 0 1
       42 MOVE                             R16 R5
       43 DUPTABLE                         R17 K27 [{"target", "children"}]
       44 MOVE                             R18 R3
       45 LOADK                            R19 K28 ["container"]
       46 CALL                             R18 1 1
       47 SETTABLEKS                       R18 R17 K26 ["target"]
       49 MOVE                             R18 R3
       50 LOADK                            R19 K21 ["children"]
       51 CALL                             R18 1 1
       52 SETTABLEKS                       R18 R17 K21 ["children"]
       54 CALL                             R16 1 -1
       55 SETLIST                          R15 R16 -1 [1]
       57 CALL                             R14 1 1
       58 SETTABLEKS                       R14 R13 K24 ["Then"]
       60 CALL                             R12 1 -1
       61 SETLIST                          R11 R12 -1 [1]
       63 DUPCLOSURE                       R12 K29 [PROTO_4]
       64 CAPTURE                          VAL R7
       65 CALL                             R8 4 1
       66 RETURN                           R8 1
