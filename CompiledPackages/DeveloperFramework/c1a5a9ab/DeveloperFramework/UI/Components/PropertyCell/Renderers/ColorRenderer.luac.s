PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"ColorValue", "isPickerOpen"}]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["props"]
        5 GETTABLEKS                       R3 R3 K4 ["Value"]
        7 SETTABLEKS                       R3 R2 K0 ["ColorValue"]
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K1 ["isPickerOpen"]
       12 NAMECALL                         R0 R0 K5 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isPickerOpen"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isPickerOpen"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnChanged"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["state"]
        8 GETTABLEKS                       R1 R1 K3 ["ColorValue"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K4 ["onClose"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"ColorValue"}]
        2 SETTABLEKS                       R0 R3 K0 ["ColorValue"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [Color3.fromHex]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["props"]
        9 GETTABLEKS                       R3 R3 K3 ["OnChanged"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cellRef"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["cellRef"]
        7 GETTABLEKS                       R1 R1 K1 ["current"]
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["cellRef"]
       15 GETTABLEKS                       R1 R1 K1 ["current"]
       17 GETTABLEKS                       R1 R1 K2 ["AbsolutePosition"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["cellRef"]
       22 GETTABLEKS                       R2 R2 K1 ["current"]
       24 GETTABLEKS                       R2 R2 K3 ["AbsoluteSize"]
       26 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
       28 GETTABLEKS                       R5 R1 K4 ["Y"]
       30 GETTABLEKS                       R6 R2 K4 ["Y"]
       32 ADD                              R4 R5 R6
       33 GETTABLEKS                       R6 R3 K4 ["Y"]
       35 GETTABLEKS                       R9 R1 K4 ["Y"]
       37 GETTABLEKS                       R10 R2 K4 ["Y"]
       39 ADD                              R8 R9 R10
       40 ADDK                             R7 R8 K5 [280]
       41 SUB                              R5 R6 R7
       42 GETTABLEKS                       R7 R1 K4 ["Y"]
       44 SUBK                             R6 R7 K5 [280]
       45 LOADN                            R7 0
       46 JUMPIFNOTLT                      R5 R7 ; [+8]
       48 LOADN                            R7 0
       49 JUMPIFNOTLT                      R7 R6 ; [+5]
       51 GETTABLEKS                       R7 R1 K4 ["Y"]
       53 SUBK                             R4 R7 K5 [280]
       54 JUMP                             ; [+12]
       55 LOADN                            R7 0
       56 JUMPIFNOTLT                      R5 R7 ; [+10]
       58 LOADN                            R7 0
       59 JUMPIFNOTLT                      R6 R7 ; [+7]
       61 GETTABLEKS                       R8 R1 K4 ["Y"]
       63 ADD                              R7 R8 R5
       64 GETTABLEKS                       R8 R2 K4 ["Y"]
       66 ADD                              R4 R7 R8
       67 GETTABLEKS                       R7 R1 K6 ["X"]
       69 GETTABLEKS                       R9 R3 K6 ["X"]
       71 ADDK                             R10 R7 K7 [250]
       72 SUB                              R8 R9 R10
       73 LOADN                            R9 0
       74 JUMPIFNOTLT                      R8 R9 ; [+2]
       76 ADD                              R7 R7 R8
       77 GETIMPORT                        R9 K10 [UDim2.fromOffset]
       79 MOVE                             R10 R7
       80 MOVE                             R11 R4
       81 CALL                             R9 2 -1
       82 RETURN                           R9 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["cellRef"]
        6 DUPTABLE                         R1 K4 [{"isPickerOpen", "ColorValue"}]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["isPickerOpen"]
       10 GETTABLEKS                       R2 R0 K5 ["props"]
       12 GETTABLEKS                       R2 R2 K6 ["Value"]
       14 SETTABLEKS                       R2 R1 K3 ["ColorValue"]
       16 SETTABLEKS                       R1 R0 K7 ["state"]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K8 ["onClick"]
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K9 ["onClose"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K10 ["onSave"]
       30 NEWCLOSURE                       R1 P3
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K11 ["updateColor"]
       34 NEWCLOSURE                       R1 P4
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K12 ["onTextEdited"]
       38 NEWCLOSURE                       R1 P5
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K13 ["calculatePosition"]
       42 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Focus"]
        6 NAMECALL                         R3 R3 K3 ["get"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R0 K4 ["calculatePosition"]
       11 MOVE                             R5 R3
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K5 ["createElement"]
       16 GETUPVAL                         R6 1
       17 NEWTABLE                         R7 2 0
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R8 R8 K6 ["Tag"]
       22 LOADK                            R9 K7 ["Paper X-Center X-Column X-Fit X-Stroke"]
       23 SETTABLE                         R9 R7 R8
       24 SETTABLEKS                       R4 R7 K8 ["Position"]
       26 DUPTABLE                         R8 K11 [{"ColorPicker", "ButtonContainer"}]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K5 ["createElement"]
       30 GETUPVAL                         R10 3
       31 DUPTABLE                         R11 K16 [{"Color", "LayoutOrder", "OnColorChanged", "Size"}]
       32 GETTABLEKS                       R12 R2 K17 ["ColorValue"]
       34 SETTABLEKS                       R12 R11 K12 ["Color"]
       36 LOADN                            R12 1
       37 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       39 GETTABLEKS                       R12 R0 K18 ["updateColor"]
       41 SETTABLEKS                       R12 R11 K14 ["OnColorChanged"]
       43 GETIMPORT                        R12 K21 [UDim2.new]
       45 LOADN                            R13 1
       46 LOADN                            R14 0
       47 LOADN                            R15 0
       48 LOADN                            R16 225
       49 CALL                             R12 4 1
       50 SETTABLEKS                       R12 R11 K15 ["Size"]
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K9 ["ColorPicker"]
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R9 R9 K5 ["createElement"]
       58 GETUPVAL                         R10 1
       59 NEWTABLE                         R11 2 0
       61 LOADN                            R12 2
       62 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       64 GETUPVAL                         R12 2
       65 GETTABLEKS                       R12 R12 K6 ["Tag"]
       67 LOADK                            R13 K22 ["X-Center X-FitY X-Pad X-RowM"]
       68 SETTABLE                         R13 R11 R12
       69 DUPTABLE                         R12 K25 [{"Close", "Save"}]
       70 GETUPVAL                         R13 0
       71 GETTABLEKS                       R13 R13 K5 ["createElement"]
       73 GETUPVAL                         R14 4
       74 DUPTABLE                         R15 K28 [{"LayoutOrder", "Text", "OnClick"}]
       75 LOADN                            R16 1
       76 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
       78 LOADK                            R16 K23 ["Close"]
       79 SETTABLEKS                       R16 R15 K26 ["Text"]
       81 GETTABLEKS                       R16 R0 K29 ["onClose"]
       83 SETTABLEKS                       R16 R15 K27 ["OnClick"]
       85 CALL                             R13 2 1
       86 SETTABLEKS                       R13 R12 K23 ["Close"]
       88 GETUPVAL                         R13 0
       89 GETTABLEKS                       R13 R13 K5 ["createElement"]
       91 GETUPVAL                         R14 4
       92 DUPTABLE                         R15 K28 [{"LayoutOrder", "Text", "OnClick"}]
       93 LOADN                            R16 2
       94 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
       96 LOADK                            R16 K24 ["Save"]
       97 SETTABLEKS                       R16 R15 K26 ["Text"]
       99 GETTABLEKS                       R16 R0 K30 ["onSave"]
      101 SETTABLEKS                       R16 R15 K27 ["OnClick"]
      103 CALL                             R13 2 1
      104 SETTABLEKS                       R13 R12 K24 ["Save"]
      106 CALL                             R9 3 1
      107 SETTABLEKS                       R9 R8 K10 ["ButtonContainer"]
      109 CALL                             R5 3 -1
      110 RETURN                           R5 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R1 K2 ["Value"]
        6 JUMPIFNOT                        R4 ; [+6]
        7 GETTABLEKS                       R3 R1 K2 ["Value"]
        9 NAMECALL                         R3 R3 K3 ["ToHex"]
       11 CALL                             R3 1 1
       12 JUMP                             ; [+1]
       13 LOADK                            R3 K4 ["#"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K5 ["createElement"]
       17 GETUPVAL                         R5 1
       18 NEWTABLE                         R6 1 0
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K6 ["Ref"]
       23 GETTABLEKS                       R8 R0 K7 ["cellRef"]
       25 SETTABLE                         R8 R6 R7
       26 DUPTABLE                         R7 K10 [{"Input", "PortalToRoot"}]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K5 ["createElement"]
       30 GETUPVAL                         R9 2
       31 DUPTABLE                         R10 K17 [{"Disabled", "LeadingComponent", "LeadingComponentProps", "OnFocusLost", "Size", "Text"}]
       32 GETTABLEKS                       R11 R1 K11 ["Disabled"]
       34 SETTABLEKS                       R11 R10 K11 ["Disabled"]
       36 GETUPVAL                         R11 3
       37 SETTABLEKS                       R11 R10 K12 ["LeadingComponent"]
       39 DUPTABLE                         R11 K20 [{"BackgroundColor", "Size", "OnClick"}]
       40 GETTABLEKS                       R12 R1 K2 ["Value"]
       42 SETTABLEKS                       R12 R11 K18 ["BackgroundColor"]
       44 GETIMPORT                        R12 K23 [UDim2.fromOffset]
       46 LOADN                            R13 16
       47 LOADN                            R14 16
       48 CALL                             R12 2 1
       49 SETTABLEKS                       R12 R11 K15 ["Size"]
       51 GETTABLEKS                       R12 R0 K24 ["onClick"]
       53 SETTABLEKS                       R12 R11 K19 ["OnClick"]
       55 SETTABLEKS                       R11 R10 K13 ["LeadingComponentProps"]
       57 GETTABLEKS                       R11 R0 K25 ["onTextEdited"]
       59 SETTABLEKS                       R11 R10 K14 ["OnFocusLost"]
       61 GETTABLEKS                       R12 R1 K26 ["AutomaticSize"]
       63 JUMPIFNOT                        R12 ; [+10]
       64 GETIMPORT                        R11 K28 [UDim2.new]
       66 LOADN                            R12 1
       67 LOADN                            R13 0
       68 LOADN                            R14 0
       69 GETTABLEKS                       R16 R1 K30 ["MinimumHeight"]
       71 ORK                              R15 R16 K29 [24]
       72 CALL                             R11 4 1
       73 JUMP                             ; [+5]
       74 GETIMPORT                        R11 K32 [UDim2.fromScale]
       76 LOADN                            R12 1
       77 LOADN                            R13 1
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K15 ["Size"]
       81 SETTABLEKS                       R3 R10 K16 ["Text"]
       83 CALL                             R8 2 1
       84 SETTABLEKS                       R8 R7 K8 ["Input"]
       86 GETTABLEKS                       R8 R2 K33 ["isPickerOpen"]
       88 JUMPIFNOT                        R8 ; [+19]
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R8 R8 K5 ["createElement"]
       92 GETUPVAL                         R9 4
       93 DUPTABLE                         R10 K34 [{"OnFocusLost"}]
       94 GETTABLEKS                       R11 R0 K35 ["onClose"]
       96 SETTABLEKS                       R11 R10 K14 ["OnFocusLost"]
       98 DUPTABLE                         R11 K37 [{"Menu"}]
       99 GETTABLEKS                       R12 R2 K33 ["isPickerOpen"]
      101 JUMPIFNOT                        R12 ; [+3]
      102 NAMECALL                         R12 R0 K38 ["renderColorPicker"]
      104 CALL                             R12 1 1
      105 SETTABLEKS                       R12 R11 K36 ["Menu"]
      107 CALL                             R8 3 1
      108 SETTABLEKS                       R8 R7 K9 ["PortalToRoot"]
      110 CALL                             R4 3 -1
      111 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R0 K4 ["Parent"]
       18 LOADK                            R5 K8 ["React"]
       19 NAMECALL                         R3 R3 K9 ["FindFirstChild"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+8]
       23 GETIMPORT                        R2 K6 [require]
       25 GETTABLEKS                       R3 R0 K4 ["Parent"]
       27 GETTABLEKS                       R3 R3 K8 ["React"]
       29 CALL                             R2 1 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R2
       32 GETIMPORT                        R3 K6 [require]
       34 GETTABLEKS                       R4 R0 K10 ["ContextServices"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R4 R3 K11 ["withContext"]
       39 GETTABLEKS                       R5 R0 K2 ["UI"]
       41 GETTABLEKS                       R5 R5 K12 ["Components"]
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R5 K13 ["CaptureFocus"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R5 K14 ["ColorPicker"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R5 K15 ["IconButton"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R5 K16 ["Pane"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R5 K17 ["TextInput"]
       67 CALL                             R10 1 1
       68 GETTABLEKS                       R11 R1 K18 ["PureComponent"]
       70 LOADK                            R13 K19 ["ColorRenderer"]
       71 NAMECALL                         R11 R11 K20 ["extend"]
       73 CALL                             R11 2 1
       74 DUPCLOSURE                       R12 K21 [PROTO_7]
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R12 R11 K22 ["init"]
       78 DUPCLOSURE                       R12 K23 [PROTO_8]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 SETTABLEKS                       R12 R11 K24 ["renderColorPicker"]
       86 DUPCLOSURE                       R12 K25 [PROTO_9]
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R6
       92 SETTABLEKS                       R12 R11 K26 ["render"]
       94 MOVE                             R12 R4
       95 DUPTABLE                         R13 K28 [{"Focus"}]
       96 GETTABLEKS                       R14 R3 K27 ["Focus"]
       98 SETTABLEKS                       R14 R13 K27 ["Focus"]
      100 CALL                             R12 1 1
      101 MOVE                             R13 R11
      102 CALL                             R12 1 1
      103 MOVE                             R11 R12
      104 RETURN                           R11 1
