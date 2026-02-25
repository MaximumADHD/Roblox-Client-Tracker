PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 DUPTABLE                         R8 K4 [{"Key", "Text"}]
        8 SETTABLEKS                       R5 R8 K2 ["Key"]
       10 SETTABLEKS                       R5 R8 K3 ["Text"]
       12 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       14 MOVE                             R7 R0
       15 GETIMPORT                        R6 K7 [table.insert]
       17 CALL                             R6 2 0
       18 FORGLOOP                         R1 2 ; [-12]
       20 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"SelectedRoute"}]
        2 SETTABLEKS                       R0 R3 K0 ["SelectedRoute"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["SetMemStoragePair"]
        5 NEWTABLE                         R3 1 0
        7 SETTABLE                         R1 R3 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["SetMemStoragePair"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["AddHistoryItem"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["CurrentEventName"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K3 ["KeyValuePair"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["KeyValuePair"]
        5 GETTABLEKS                       R0 R1 K2 ["Key"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["props"]
       10 GETTABLEKS                       R2 R3 K1 ["KeyValuePair"]
       12 GETTABLEKS                       R1 R2 K3 ["Value"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K5 ["state"]
       17 GETTABLEKS                       R3 R4 K6 ["SelectedRoute"]
       19 ORK                              R2 R3 K4 [""]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K7 ["GetValue"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+6]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R3 R4 K7 ["GetValue"]
       28 MOVE                             R4 R0
       29 CALL                             R3 1 0
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K8 ["SetValue"]
       33 JUMPIFNOTEQ                      R2 R3 ; [+12]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R3 R4 K8 ["SetValue"]
       38 MOVE                             R4 R0
       39 MOVE                             R5 R1
       40 CALL                             R3 2 1
       41 JUMPIFNOT                        R3 ; [+4]
       42 GETIMPORT                        R4 K10 [print]
       44 GETUPVAL                         R5 3
       45 CALL                             R4 1 0
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R3 R4 K11 ["NewEntry"]
       49 JUMPIFNOTEQ                      R2 R3 ; [+12]
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R3 R4 K8 ["SetValue"]
       54 MOVE                             R4 R0
       55 MOVE                             R5 R1
       56 CALL                             R3 2 1
       57 JUMPIFNOT                        R3 ; [+4]
       58 GETIMPORT                        R4 K10 [print]
       60 GETUPVAL                         R5 3
       61 CALL                             R4 1 0
       62 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"SelectedRoute"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K2 ["GetValue"]
        4 SETTABLEKS                       R2 R1 K0 ["SelectedRoute"]
        6 SETTABLEKS                       R1 R0 K3 ["state"]
        8 DUPCLOSURE                       R1 K4 [PROTO_0]
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R1 R0 K5 ["createRoutes"]
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K6 ["Router"]
       16 NEWCLOSURE                       R1 P2
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K7 ["OnChange"]
       20 DUPTABLE                         R1 K10 [{"Key", "Value"}]
       21 LOADK                            R2 K11 [""]
       22 SETTABLEKS                       R2 R1 K8 ["Key"]
       24 LOADK                            R2 K11 [""]
       25 SETTABLEKS                       R2 R1 K9 ["Value"]
       27 NEWCLOSURE                       R2 P3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R2 R0 K12 ["onClearClicked"]
       32 NEWCLOSURE                       R2 P4
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R2 R0 K13 ["onSaveClicked"]
       36 NEWCLOSURE                       R2 P5
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          UPVAL U2
       41 SETTABLEKS                       R2 R0 K14 ["onSendClicked"]
       43 RETURN                           R0 0

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["OnChange"]
        4 LOADK                            R1 K1 ["Key"]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["OnChange"]
        4 LOADK                            R1 K1 ["Value"]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["KeyValuePair"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R3 K3 ["Layout"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K7 [{"Size", "LayoutOrder"}]
       13 GETIMPORT                        R8 K10 [UDim2.new]
       15 LOADN                            R9 1
       16 LOADN                            R10 0
       17 LOADN                            R11 1
       18 LOADN                            R12 0
       19 CALL                             R8 4 1
       20 SETTABLEKS                       R8 R7 K5 ["Size"]
       22 GETUPVAL                         R9 2
       23 GETTABLEKS                       R8 R9 K11 ["View"]
       25 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       27 DUPTABLE                         R8 K16 [{"Layout", "Switch", "Key", "Value", "Activators"}]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R9 R10 K4 ["createElement"]
       31 LOADK                            R10 K17 ["UIListLayout"]
       32 GETTABLEKS                       R11 R4 K18 ["Vertical"]
       34 CALL                             R9 2 1
       35 SETTABLEKS                       R9 R8 K3 ["Layout"]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R9 R10 K4 ["createElement"]
       40 GETUPVAL                         R10 3
       41 DUPTABLE                         R11 K22 [{"Buttons", "OnClick", "SelectedKey", "LayoutOrder"}]
       42 GETTABLEKS                       R12 R0 K23 ["createRoutes"]
       44 CALL                             R12 0 1
       45 SETTABLEKS                       R12 R11 K19 ["Buttons"]
       47 GETTABLEKS                       R12 R0 K24 ["Router"]
       49 SETTABLEKS                       R12 R11 K20 ["OnClick"]
       51 GETUPVAL                         R13 4
       52 GETTABLEKS                       R12 R13 K25 ["GetValue"]
       54 SETTABLEKS                       R12 R11 K21 ["SelectedKey"]
       56 GETUPVAL                         R13 5
       57 GETTABLEKS                       R12 R13 K12 ["Switch"]
       59 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K12 ["Switch"]
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R9 R10 K4 ["createElement"]
       67 GETUPVAL                         R10 6
       68 DUPTABLE                         R11 K29 [{"LayoutOrder", "Label", "Text", "OnChange"}]
       69 GETUPVAL                         R13 5
       70 GETTABLEKS                       R12 R13 K13 ["Key"]
       72 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       74 LOADK                            R12 K13 ["Key"]
       75 SETTABLEKS                       R12 R11 K26 ["Label"]
       77 GETTABLEKS                       R12 R2 K13 ["Key"]
       79 SETTABLEKS                       R12 R11 K27 ["Text"]
       81 NEWCLOSURE                       R12 P0
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R12 R11 K28 ["OnChange"]
       85 CALL                             R9 2 1
       86 SETTABLEKS                       R9 R8 K13 ["Key"]
       88 GETUPVAL                         R10 0
       89 GETTABLEKS                       R9 R10 K4 ["createElement"]
       91 GETUPVAL                         R10 6
       92 DUPTABLE                         R11 K29 [{"LayoutOrder", "Label", "Text", "OnChange"}]
       93 GETUPVAL                         R13 5
       94 GETTABLEKS                       R12 R13 K14 ["Value"]
       96 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       98 LOADK                            R12 K14 ["Value"]
       99 SETTABLEKS                       R12 R11 K26 ["Label"]
      101 GETTABLEKS                       R12 R2 K14 ["Value"]
      103 SETTABLEKS                       R12 R11 K27 ["Text"]
      105 NEWCLOSURE                       R12 P1
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R12 R11 K28 ["OnChange"]
      109 CALL                             R9 2 1
      110 SETTABLEKS                       R9 R8 K14 ["Value"]
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R9 R10 K4 ["createElement"]
      115 GETUPVAL                         R10 7
      116 DUPTABLE                         R11 K33 [{"OnClearClicked", "OnSaveClicked", "OnSendClicked"}]
      117 GETTABLEKS                       R12 R0 K34 ["onClearClicked"]
      119 SETTABLEKS                       R12 R11 K30 ["OnClearClicked"]
      121 GETTABLEKS                       R12 R0 K35 ["onSaveClicked"]
      123 SETTABLEKS                       R12 R11 K31 ["OnSaveClicked"]
      125 GETTABLEKS                       R12 R0 K36 ["onSendClicked"]
      127 SETTABLEKS                       R12 R11 K32 ["OnSendClicked"]
      129 CALL                             R9 2 1
      130 SETTABLEKS                       R9 R8 K15 ["Activators"]
      132 CALL                             R5 3 -1
      133 RETURN                           R5 -1

PROTO_10:
        0 DUPTABLE                         R2 K2 [{"KeyValuePair", "CurrentEventName"}]
        1 GETTABLEKS                       R4 R0 K3 ["Status"]
        3 GETTABLEKS                       R3 R4 K4 ["MemStoragePair"]
        5 SETTABLEKS                       R3 R2 K0 ["KeyValuePair"]
        7 GETTABLEKS                       R4 R0 K3 ["Status"]
        9 GETTABLEKS                       R3 R4 K1 ["CurrentEventName"]
       11 SETTABLEKS                       R3 R2 K1 ["CurrentEventName"]
       13 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R3 3 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"SetMemStoragePair", "AddHistoryItem"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetMemStoragePair"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["AddHistoryItem"]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K10 ["withContext"]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R7 K12 ["Components"]
       40 GETIMPORT                        R7 K4 [require]
       42 GETTABLEKS                       R8 R6 K13 ["ButtonArray"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R9 R6 K14 ["TextInput"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R10 R0 K11 ["Src"]
       52 GETTABLEKS                       R9 R10 K15 ["Actions"]
       54 GETIMPORT                        R10 K4 [require]
       56 GETTABLEKS                       R11 R9 K16 ["SetMemStoragePair"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K4 [require]
       61 GETTABLEKS                       R12 R9 K17 ["AddHistoryItem"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K4 [require]
       66 GETTABLEKS                       R15 R0 K11 ["Src"]
       68 GETTABLEKS                       R14 R15 K18 ["Util"]
       70 GETTABLEKS                       R13 R14 K19 ["Constants"]
       72 CALL                             R12 1 1
       73 GETTABLEKS                       R13 R12 K20 ["MEM_STORAGE_ORDER"]
       75 GETTABLEKS                       R14 R12 K21 ["INPUT_PANE_LAYOUT"]
       77 GETTABLEKS                       R16 R12 K22 ["ROUTES"]
       79 GETTABLEKS                       R15 R16 K23 ["MemStorage"]
       81 GETTABLEKS                       R16 R12 K24 ["OPERATION_SUCCESSFUL"]
       83 GETTABLEKS                       R18 R12 K25 ["VIEW_ID"]
       85 GETTABLEKS                       R17 R18 K23 ["MemStorage"]
       87 GETTABLEKS                       R18 R3 K26 ["UI"]
       89 GETTABLEKS                       R19 R18 K27 ["RadioButtonList"]
       91 GETTABLEKS                       R20 R18 K28 ["Pane"]
       93 GETTABLEKS                       R22 R0 K11 ["Src"]
       95 GETTABLEKS                       R21 R22 K29 ["Operations"]
       97 GETIMPORT                        R22 K4 [require]
       99 GETTABLEKS                       R23 R21 K30 ["MemStorageEventRequest"]
      101 CALL                             R22 1 1
      102 GETTABLEKS                       R23 R1 K31 ["PureComponent"]
      104 LOADK                            R25 K32 ["MemStorageEventView"]
      105 NAMECALL                         R23 R23 K33 ["extend"]
      107 CALL                             R23 2 1
      108 DUPCLOSURE                       R24 K34 [PROTO_6]
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R22
      111 CAPTURE                          VAL R16
      112 SETTABLEKS                       R24 R23 K35 ["init"]
      114 DUPCLOSURE                       R24 K36 [PROTO_9]
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R20
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R19
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R7
      123 SETTABLEKS                       R24 R23 K37 ["render"]
      125 MOVE                             R24 R5
      126 DUPTABLE                         R25 K39 [{"Stylizer"}]
      127 GETTABLEKS                       R26 R4 K38 ["Stylizer"]
      129 SETTABLEKS                       R26 R25 K38 ["Stylizer"]
      131 CALL                             R24 1 1
      132 MOVE                             R25 R23
      133 CALL                             R24 1 1
      134 MOVE                             R23 R24
      135 GETTABLEKS                       R24 R2 K40 ["connect"]
      137 DUPCLOSURE                       R25 K41 [PROTO_10]
      138 DUPCLOSURE                       R26 K42 [PROTO_13]
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R17
      142 CALL                             R24 2 1
      143 MOVE                             R25 R23
      144 CALL                             R24 1 -1
      145 RETURN                           R24 -1
