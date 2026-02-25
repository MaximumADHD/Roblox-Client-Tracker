PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Value", "BrickColor", "NameLower"}]
        1 GETTABLEKS                       R2 R0 K4 ["Name"]
        3 SETTABLEKS                       R2 R1 K0 ["Value"]
        5 SETTABLEKS                       R0 R1 K1 ["BrickColor"]
        7 GETTABLEKS                       R2 R0 K4 ["Name"]
        9 NAMECALL                         R2 R2 K5 ["lower"]
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["NameLower"]
       14 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["NameLower"]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R1 R1 K1 ["match"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["lower"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R3 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETIMPORT                        R0 K2 [Color3.fromHex]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["BrickColor"] ; [+2]
        7 RETURN                           R0 1
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K3 ["Color3"] ; [+6]
       15 GETIMPORT                        R1 K5 [BrickColor.new]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1
       20 FASTCALL1                        TYPEOF R0 ; [+3]
       21 MOVE                             R2 R0
       22 GETIMPORT                        R1 K1 [typeof]
       24 CALL                             R1 1 1
       25 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+17]
       27 GETIMPORT                        R1 K8 [pcall]
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          VAL R0
       31 CALL                             R1 1 2
       32 JUMPIFNOT                        R1 ; [+5]
       33 GETIMPORT                        R3 K5 [BrickColor.new]
       35 MOVE                             R4 R2
       36 CALL                             R3 1 -1
       37 RETURN                           R3 -1
       38 GETIMPORT                        R3 K5 [BrickColor.new]
       40 MOVE                             R4 R0
       41 CALL                             R3 1 -1
       42 RETURN                           R3 -1
       43 LOADNIL                          R1
       44 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+15]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+10]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K0 ["Value"]
       10 JUMPIFEQ                         R2 R3 ; [+6]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K1 ["OnChanged"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 0
       17 GETUPVAL                         R2 3
       18 LOADNIL                          R3
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 NEWTABLE                         R6 4 0
        6 GETTABLEKS                       R7 R0 K1 ["NameLower"]
        8 SETTABLEKS                       R7 R6 K2 ["key"]
       10 SETTABLEKS                       R1 R6 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R2 R6 K4 ["OnPress"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K5 ["Tag"]
       17 LOADK                            R8 K6 ["X-Pad X-RowM X-Middle DropdownItem"]
       18 SETTABLE                         R8 R6 R7
       19 DUPTABLE                         R7 K9 [{"Preview", "Text"}]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K0 ["createElement"]
       23 GETUPVAL                         R9 1
       24 NEWTABLE                         R10 4 0
       26 GETTABLEKS                       R12 R0 K10 ["BrickColor"]
       28 GETTABLEKS                       R11 R12 K11 ["Color"]
       30 SETTABLEKS                       R11 R10 K12 ["BackgroundColor3"]
       32 LOADN                            R11 1
       33 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R11 R12 K5 ["Tag"]
       38 LOADK                            R12 K13 ["X-Corner Icon16"]
       39 SETTABLE                         R12 R10 R11
       40 NEWTABLE                         R11 0 0
       42 CALL                             R8 3 1
       43 SETTABLEKS                       R8 R7 K7 ["Preview"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K0 ["createElement"]
       48 GETUPVAL                         R9 2
       49 NEWTABLE                         R10 4 0
       51 LOADN                            R11 2
       52 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       54 GETTABLEKS                       R12 R0 K10 ["BrickColor"]
       56 GETTABLEKS                       R11 R12 K14 ["Name"]
       58 SETTABLEKS                       R11 R10 K8 ["Text"]
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R11 R12 K5 ["Tag"]
       63 LOADK                            R12 K15 ["TextXAlignLeft"]
       64 SETTABLE                         R12 R10 R11
       65 NEWTABLE                         R11 0 0
       67 CALL                             R8 3 1
       68 SETTABLEKS                       R8 R7 K8 ["Text"]
       70 CALL                             R4 3 -1
       71 RETURN                           R4 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 CALL                             R2 1 2
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          VAL R3
       10 NEWCLOSURE                       R6 P2
       11 CAPTURE                          VAL R3
       12 NEWCLOSURE                       R7 P3
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R3
       17 GETUPVAL                         R8 3
       18 NEWCLOSURE                       R9 P4
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R10 0 2
       22 GETTABLEKS                       R11 R0 K0 ["Schema"]
       24 GETTABLEKS                       R12 R0 K1 ["Value"]
       26 SETLIST                          R10 R11 2 [1]
       28 CALL                             R8 2 0
       29 DUPCLOSURE                       R8 K2 [PROTO_10]
       30 CAPTURE                          UPVAL U4
       31 LOADNIL                          R9
       32 LOADNIL                          R10
       33 JUMPIFNOT                        R2 ; [+11]
       34 GETUPVAL                         R11 2
       35 MOVE                             R12 R2
       36 CALL                             R11 1 1
       37 JUMPIFNOT                        R11 ; [+3]
       38 GETTABLEKS                       R12 R11 K3 ["Color"]
       40 JUMPIF                           R12 ; [+1]
       41 LOADNIL                          R12
       42 MOVE                             R9 R12
       43 MOVE                             R10 R2
       44 JUMP                             ; [+14]
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R12 R0 K1 ["Value"]
       48 CALL                             R11 1 1
       49 JUMPIF                           R11 ; [+5]
       50 GETTABLEKS                       R12 R0 K0 ["Schema"]
       52 GETTABLEKS                       R11 R12 K4 ["GetDefaultValue"]
       54 CALL                             R11 0 1
       55 GETTABLEKS                       R9 R11 K3 ["Color"]
       57 GETTABLEKS                       R10 R11 K5 ["Name"]
       59 GETUPVAL                         R12 5
       60 GETTABLEKS                       R11 R12 K6 ["createElement"]
       62 GETUPVAL                         R12 6
       63 NEWTABLE                         R13 0 0
       65 DUPTABLE                         R14 K8 [{"Input"}]
       66 GETUPVAL                         R16 5
       67 GETTABLEKS                       R15 R16 K6 ["createElement"]
       69 GETUPVAL                         R16 7
       70 DUPTABLE                         R17 K20 [{"Disabled", "LeadingComponent", "LeadingComponentProps", "ForwardRef", "OnTextChanged", "OnFocused", "OnFocusLost", "Size", "Text", "GetAutocompleteItems", "OnRenderAutocompleteItem"}]
       71 GETTABLEKS                       R18 R0 K9 ["Disabled"]
       73 SETTABLEKS                       R18 R17 K9 ["Disabled"]
       75 GETUPVAL                         R18 8
       76 SETTABLEKS                       R18 R17 K10 ["LeadingComponent"]
       78 NEWTABLE                         R18 8 0
       80 SETTABLEKS                       R9 R18 K21 ["BackgroundColor"]
       82 LOADK                            R19 K22 ["PointingHand"]
       83 SETTABLEKS                       R19 R18 K23 ["Cursor"]
       85 SETTABLEKS                       R4 R18 K24 ["OnClick"]
       87 GETUPVAL                         R20 5
       88 GETTABLEKS                       R19 R20 K25 ["Tag"]
       90 LOADK                            R20 K26 ["Icon16"]
       91 SETTABLE                         R20 R18 R19
       92 GETUPVAL                         R19 9
       93 SETTABLEKS                       R19 R18 K16 ["Size"]
       95 SETTABLEKS                       R18 R17 K11 ["LeadingComponentProps"]
       97 SETTABLEKS                       R1 R17 K12 ["ForwardRef"]
       99 SETTABLEKS                       R5 R17 K13 ["OnTextChanged"]
      101 SETTABLEKS                       R6 R17 K14 ["OnFocused"]
      103 SETTABLEKS                       R7 R17 K15 ["OnFocusLost"]
      105 GETTABLEKS                       R19 R0 K27 ["AutomaticSize"]
      107 JUMPIFNOT                        R19 ; [+10]
      108 GETIMPORT                        R18 K30 [UDim2.new]
      110 LOADN                            R19 1
      111 LOADN                            R20 0
      112 LOADN                            R21 0
      113 GETTABLEKS                       R23 R0 K32 ["MinimumHeight"]
      115 ORK                              R22 R23 K31 [24]
      116 CALL                             R18 4 1
      117 JUMP                             ; [+5]
      118 GETIMPORT                        R18 K34 [UDim2.fromScale]
      120 LOADN                            R19 1
      121 LOADN                            R20 1
      122 CALL                             R18 2 1
      123 SETTABLEKS                       R18 R17 K16 ["Size"]
      125 SETTABLEKS                       R10 R17 K17 ["Text"]
      127 SETTABLEKS                       R8 R17 K18 ["GetAutocompleteItems"]
      129 DUPCLOSURE                       R18 K35 [PROTO_11]
      130 CAPTURE                          UPVAL U5
      131 CAPTURE                          UPVAL U6
      132 CAPTURE                          UPVAL U10
      133 SETTABLEKS                       R18 R17 K19 ["OnRenderAutocompleteItem"]
      135 CALL                             R15 2 1
      136 SETTABLEKS                       R15 R14 K7 ["Input"]
      138 CALL                             R11 3 -1
      139 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["useState"]
       18 GETTABLEKS                       R3 R1 K8 ["useEffect"]
       20 GETTABLEKS                       R4 R1 K9 ["useRef"]
       22 GETIMPORT                        R5 K4 [require]
       24 GETTABLEKS                       R7 R0 K5 ["Packages"]
       26 GETTABLEKS                       R6 R7 K10 ["Framework"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R7 R5 K11 ["UI"]
       31 GETTABLEKS                       R6 R7 K12 ["IconButton"]
       33 GETTABLEKS                       R8 R5 K11 ["UI"]
       35 GETTABLEKS                       R7 R8 K13 ["Pane"]
       37 GETTABLEKS                       R9 R5 K11 ["UI"]
       39 GETTABLEKS                       R8 R9 K14 ["TextInput"]
       41 GETTABLEKS                       R10 R5 K11 ["UI"]
       43 GETTABLEKS                       R9 R10 K15 ["TextLabel"]
       45 GETIMPORT                        R10 K4 [require]
       47 GETTABLEKS                       R13 R0 K16 ["Src"]
       49 GETTABLEKS                       R12 R13 K17 ["Resources"]
       51 GETTABLEKS                       R11 R12 K18 ["PluginStyles"]
       53 CALL                             R10 1 1
       54 LOADK                            R13 K19 ["Icon16"]
       55 NAMECALL                         R11 R10 K20 ["GetAttribute"]
       57 CALL                             R11 2 1
       58 GETIMPORT                        R12 K4 [require]
       60 GETTABLEKS                       R14 R0 K5 ["Packages"]
       62 GETTABLEKS                       R13 R14 K21 ["Dash"]
       64 CALL                             R12 1 1
       65 GETTABLEKS                       R13 R12 K22 ["map"]
       67 GETTABLEKS                       R14 R12 K23 ["filter"]
       69 GETIMPORT                        R15 K4 [require]
       71 GETIMPORT                        R17 K1 [script]
       73 GETTABLEKS                       R16 R17 K24 ["getAllBrickColors"]
       75 CALL                             R15 1 1
       76 GETIMPORT                        R16 K4 [require]
       78 GETTABLEKS                       R19 R0 K16 ["Src"]
       80 GETTABLEKS                       R18 R19 K25 ["Renderers"]
       82 GETTABLEKS                       R17 R18 K26 ["RendererTypes"]
       84 CALL                             R16 1 1
       85 GETIMPORT                        R17 K4 [require]
       87 GETTABLEKS                       R19 R0 K16 ["Src"]
       89 GETTABLEKS                       R18 R19 K27 ["Types"]
       91 CALL                             R17 1 1
       92 MOVE                             R18 R13
       93 MOVE                             R19 R15
       94 CALL                             R19 0 1
       95 DUPCLOSURE                       R20 K28 [PROTO_0]
       96 CALL                             R18 2 1
       97 DUPCLOSURE                       R19 K29 [PROTO_2]
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R18
      100 DUPCLOSURE                       R20 K30 [PROTO_4]
      101 DUPCLOSURE                       R21 K31 [PROTO_12]
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R20
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R19
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R9
      113 RETURN                           R21 1
