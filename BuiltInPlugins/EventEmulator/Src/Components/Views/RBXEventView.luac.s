PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 GETTABLEKS                       R2 R2 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Parameters"]
        6 GETTABLEKS                       R2 R2 K2 ["Detail"]
        8 NAMECALL                         R0 R0 K3 ["JSONDecode"]
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+1]
        9 JUMPIF                           R0 ; [+3]
       10 LOADB                            R2 0
       11 CLOSEUPVALS                      R0
       12 RETURN                           R2 1
       13 LOADB                            R2 1
       14 CLOSEUPVALS                      R0
       15 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ClearRBXParameters"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AddHistoryItem"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["CurrentEventName"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K3 ["Parameters"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"ValidJson"}]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K2 ["IsCurrentJSONValid"]
        5 CALL                             R3 0 1
        6 SETTABLEKS                       R3 R2 K0 ["ValidJson"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["props"]
       15 GETTABLEKS                       R1 R1 K5 ["Parameters"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["SetRBXParameters"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["Dictionary"]
        8 GETTABLEKS                       R3 R3 K3 ["join"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["props"]
       13 GETTABLEKS                       R4 R4 K4 ["Parameters"]
       15 NEWTABLE                         R5 1 0
       17 SETTABLE                         R1 R5 R0
       18 CALL                             R3 2 -1
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["focusLost"]
        4 GETUPVAL                         R1 1
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Parameters"]
        5 DUPTABLE                         R2 K4 [{"Warning", "Activators"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K5 ["state"]
        9 GETTABLEKS                       R4 R4 K6 ["ValidJson"]
       11 NOT                              R3 R4
       12 JUMPIFNOT                        R3 ; [+18]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K7 ["createElement"]
       16 GETUPVAL                         R4 2
       17 DUPTABLE                         R5 K11 [{"LayoutOrder", "AutomaticSize", "Style"}]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K2 ["Warning"]
       21 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       23 GETIMPORT                        R6 K14 [Enum.AutomaticSize.Y]
       25 SETTABLEKS                       R6 R5 K9 ["AutomaticSize"]
       27 LOADK                            R6 K2 ["Warning"]
       28 SETTABLEKS                       R6 R5 K10 ["Style"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K2 ["Warning"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K7 ["createElement"]
       36 GETUPVAL                         R4 4
       37 DUPTABLE                         R5 K18 [{"OnClearClicked", "OnSaveClicked", "OnSendClicked"}]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K19 ["onClearClicked"]
       41 SETTABLEKS                       R6 R5 K15 ["OnClearClicked"]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K20 ["onSaveClicked"]
       46 SETTABLEKS                       R6 R5 K16 ["OnSaveClicked"]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K21 ["onSendClicked"]
       51 SETTABLEKS                       R6 R5 K17 ["OnSendClicked"]
       53 CALL                             R3 2 1
       54 SETTABLEKS                       R3 R2 K3 ["Activators"]
       56 GETIMPORT                        R3 K23 [pairs]
       58 MOVE                             R4 R1
       59 CALL                             R3 1 3
       60 FORGPREP_NEXT                    R3
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K7 ["createElement"]
       64 GETUPVAL                         R9 5
       65 DUPTABLE                         R10 K27 [{"LayoutOrder", "Label", "Text", "OnChange"}]
       66 GETUPVAL                         R12 3
       67 GETTABLE                         R11 R12 R6
       68 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       70 SETTABLEKS                       R6 R10 K24 ["Label"]
       72 SETTABLEKS                       R7 R10 K25 ["Text"]
       74 NEWCLOSURE                       R11 P0
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R11 R10 K26 ["OnChange"]
       79 CALL                             R8 2 1
       80 SETTABLE                         R8 R2 R6
       81 FORGLOOP                         R3 2 ; [-21]
       83 RETURN                           R2 1

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"ValidJson"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["ValidJson"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["IsCurrentJSONValid"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K4 ["onClearClicked"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K5 ["onSaveClicked"]
       19 NEWCLOSURE                       R1 P3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 SETTABLEKS                       R1 R0 K6 ["onSendClicked"]
       24 NEWCLOSURE                       R1 P4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 SETTABLEKS                       R1 R0 K7 ["focusLost"]
       29 NEWCLOSURE                       R1 P5
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 SETTABLEKS                       R1 R0 K8 ["createChildren"]
       38 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Layout", "LayoutOrder"}]
        5 GETIMPORT                        R4 K7 [Enum.FillDirection.Vertical]
        7 SETTABLEKS                       R4 R3 K1 ["Layout"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K8 ["View"]
       12 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       14 GETTABLEKS                       R4 R0 K9 ["createChildren"]
       16 CALL                             R4 0 -1
       17 CALL                             R1 -1 -1
       18 RETURN                           R1 -1

PROTO_10:
        0 DUPTABLE                         R2 K2 [{"Parameters", "CurrentEventName"}]
        1 GETTABLEKS                       R3 R0 K3 ["Status"]
        3 GETTABLEKS                       R3 R3 K0 ["Parameters"]
        5 SETTABLEKS                       R3 R2 K0 ["Parameters"]
        7 GETTABLEKS                       R3 R0 K3 ["Status"]
        9 GETTABLEKS                       R3 R3 K1 ["CurrentEventName"]
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R3 3 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K3 [{"SetRBXParameters", "ClearRBXParameters", "AddHistoryItem"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetRBXParameters"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["ClearRBXParameters"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K2 ["AddHistoryItem"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R5 K9 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K11 ["withContext"]
       43 GETTABLEKS                       R7 R4 K12 ["UI"]
       45 GETTABLEKS                       R8 R7 K13 ["Pane"]
       47 GETTABLEKS                       R9 R7 K14 ["TextLabel"]
       49 GETTABLEKS                       R10 R0 K15 ["Src"]
       51 GETTABLEKS                       R10 R10 K16 ["Actions"]
       53 GETIMPORT                        R11 K4 [require]
       55 GETTABLEKS                       R12 R10 K17 ["SetRBXParameters"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K4 [require]
       60 GETTABLEKS                       R13 R10 K18 ["ClearRBXParameters"]
       62 CALL                             R12 1 1
       63 GETIMPORT                        R13 K4 [require]
       65 GETTABLEKS                       R14 R10 K19 ["AddHistoryItem"]
       67 CALL                             R13 1 1
       68 GETIMPORT                        R14 K4 [require]
       70 GETTABLEKS                       R15 R0 K15 ["Src"]
       72 GETTABLEKS                       R15 R15 K20 ["Util"]
       74 GETTABLEKS                       R15 R15 K21 ["Constants"]
       76 CALL                             R14 1 1
       77 GETTABLEKS                       R15 R14 K22 ["INPUT_PANE_LAYOUT"]
       79 GETTABLEKS                       R16 R14 K23 ["RBXEVENT_ORDER"]
       81 GETTABLEKS                       R17 R14 K24 ["VIEW_ID"]
       83 GETTABLEKS                       R17 R17 K25 ["RBXEvent"]
       85 GETTABLEKS                       R18 R0 K15 ["Src"]
       87 GETTABLEKS                       R18 R18 K26 ["Components"]
       89 GETIMPORT                        R19 K4 [require]
       91 GETTABLEKS                       R20 R18 K27 ["ButtonArray"]
       93 CALL                             R19 1 1
       94 GETIMPORT                        R20 K4 [require]
       96 GETTABLEKS                       R21 R18 K28 ["TextInput"]
       98 CALL                             R20 1 1
       99 GETTABLEKS                       R21 R0 K15 ["Src"]
      101 GETTABLEKS                       R21 R21 K29 ["Operations"]
      103 GETIMPORT                        R22 K4 [require]
      105 GETTABLEKS                       R23 R21 K30 ["RBXEventRequest"]
      107 CALL                             R22 1 1
      108 GETIMPORT                        R23 K32 [game]
      110 LOADK                            R25 K33 ["HttpService"]
      111 NAMECALL                         R23 R23 K34 ["GetService"]
      113 CALL                             R23 2 1
      114 GETTABLEKS                       R24 R1 K35 ["PureComponent"]
      116 LOADK                            R26 K36 ["RBXEventView"]
      117 NAMECALL                         R24 R24 K37 ["extend"]
      119 CALL                             R24 2 1
      120 DUPCLOSURE                       R25 K38 [PROTO_8]
      121 CAPTURE                          VAL R23
      122 CAPTURE                          VAL R22
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R20
      129 SETTABLEKS                       R25 R24 K39 ["init"]
      131 DUPCLOSURE                       R25 K40 [PROTO_9]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R15
      135 SETTABLEKS                       R25 R24 K41 ["render"]
      137 MOVE                             R25 R6
      138 DUPTABLE                         R26 K43 [{"Stylizer"}]
      139 GETTABLEKS                       R27 R5 K42 ["Stylizer"]
      141 SETTABLEKS                       R27 R26 K42 ["Stylizer"]
      143 CALL                             R25 1 1
      144 MOVE                             R26 R24
      145 CALL                             R25 1 1
      146 MOVE                             R24 R25
      147 GETTABLEKS                       R25 R2 K44 ["connect"]
      149 DUPCLOSURE                       R26 K45 [PROTO_10]
      150 DUPCLOSURE                       R27 K46 [PROTO_14]
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R17
      155 CALL                             R25 2 1
      156 MOVE                             R26 R24
      157 CALL                             R25 1 -1
      158 RETURN                           R25 -1
