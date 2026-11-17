PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["CurrentView"]
        5 GETTABLEKS                       R2 R0 K2 ["View"]
        7 GETTABLEKS                       R3 R0 K3 ["Data"]
        9 JUMPIFEQ                         R1 R2 ; [+8]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["SetView"]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K5 ["RBXEvent"]
       21 JUMPIFNOTEQ                      R2 R4 ; [+8]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K0 ["props"]
       26 GETTABLEKS                       R4 R4 K6 ["SetRBXParameters"]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K7 ["MemStorage"]
       33 JUMPIFNOTEQ                      R2 R4 ; [+8]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K0 ["props"]
       38 GETTABLEKS                       R4 R4 K8 ["SetMemStoragePair"]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 0
       42 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["RemoveHistoryItem"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Name"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["repopulateHistoryItem"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K1 ["deleteHistoryItem"]
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Name"]
        4 GETTABLEKS                       R3 R1 K2 ["View"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R4 K4 ["Sizes"]
       10 GETTABLEKS                       R6 R4 K5 ["Layout"]
       12 GETTABLEKS                       R7 R4 K6 ["Text"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["createElement"]
       17 GETUPVAL                         R9 1
       18 DUPTABLE                         R10 K10 [{"Background", "Size"}]
       19 GETUPVAL                         R11 2
       20 SETTABLEKS                       R11 R10 K8 ["Background"]
       22 GETIMPORT                        R11 K13 [UDim2.new]
       24 LOADN                            R12 1
       25 LOADN                            R13 0
       26 LOADN                            R14 0
       27 GETTABLEKS                       R15 R5 K14 ["HistoryButtonMinor"]
       29 CALL                             R11 4 1
       30 SETTABLEKS                       R11 R10 K9 ["Size"]
       32 DUPTABLE                         R11 K16 [{"Layout", "View", "Name", "DeleteButton"}]
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R12 R12 K7 ["createElement"]
       36 LOADK                            R13 K17 ["UIListLayout"]
       37 GETTABLEKS                       R14 R6 K18 ["HistoryItem"]
       39 CALL                             R12 2 1
       40 SETTABLEKS                       R12 R11 K5 ["Layout"]
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R12 R12 K7 ["createElement"]
       45 LOADK                            R13 K19 ["TextLabel"]
       46 DUPTABLE                         R14 K28 [{["Size"], ["Text"], ["LayoutOrder"] = 2, ["TextColor3"], ["BackgroundTransparency"] = 1, ["TextSize"] = 18, ["Font"]}]
       47 GETIMPORT                        R15 K13 [UDim2.new]
       49 LOADN                            R16 0
       50 GETTABLEKS                       R17 R5 K29 ["HistoryButtonMajor"]
       52 LOADN                            R18 0
       53 GETTABLEKS                       R19 R5 K14 ["HistoryButtonMinor"]
       55 CALL                             R15 4 1
       56 SETTABLEKS                       R15 R14 K9 ["Size"]
       58 SETTABLEKS                       R3 R14 K6 ["Text"]
       60 GETTABLEKS                       R15 R7 K30 ["BrightText"]
       62 GETTABLEKS                       R15 R15 K31 ["Color"]
       64 SETTABLEKS                       R15 R14 K22 ["TextColor3"]
       66 GETIMPORT                        R15 K34 [Enum.Font.SourceSans]
       68 SETTABLEKS                       R15 R14 K27 ["Font"]
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K2 ["View"]
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K7 ["createElement"]
       76 GETUPVAL                         R13 3
       77 DUPTABLE                         R14 K37 [{["Size"], ["Text"], ["LayoutOrder"] = 3, ["OnClick"]}]
       78 GETIMPORT                        R15 K13 [UDim2.new]
       80 LOADN                            R16 0
       81 GETTABLEKS                       R17 R5 K29 ["HistoryButtonMajor"]
       83 LOADN                            R18 0
       84 GETTABLEKS                       R19 R5 K14 ["HistoryButtonMinor"]
       86 CALL                             R15 4 1
       87 SETTABLEKS                       R15 R14 K9 ["Size"]
       89 SETTABLEKS                       R2 R14 K6 ["Text"]
       91 GETTABLEKS                       R15 R0 K38 ["repopulateHistoryItem"]
       93 SETTABLEKS                       R15 R14 K36 ["OnClick"]
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K1 ["Name"]
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R12 R12 K7 ["createElement"]
      101 GETUPVAL                         R13 3
      102 DUPTABLE                         R14 K41 [{["Size"], ["Text"] = " 🗑", ["LayoutOrder"] = 4, ["OnClick"]}]
      103 GETIMPORT                        R15 K13 [UDim2.new]
      105 LOADN                            R16 0
      106 GETTABLEKS                       R17 R5 K14 ["HistoryButtonMinor"]
      108 LOADN                            R18 0
      109 GETTABLEKS                       R19 R5 K14 ["HistoryButtonMinor"]
      111 CALL                             R15 4 1
      112 SETTABLEKS                       R15 R14 K9 ["Size"]
      114 GETTABLEKS                       R15 R0 K42 ["deleteHistoryItem"]
      116 SETTABLEKS                       R15 R14 K36 ["OnClick"]
      118 CALL                             R12 2 1
      119 SETTABLEKS                       R12 R11 K15 ["DeleteButton"]
      121 CALL                             R8 3 -1
      122 RETURN                           R8 -1

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"CurrentView"}]
        1 GETTABLEKS                       R3 R0 K2 ["Status"]
        3 GETTABLEKS                       R3 R3 K0 ["CurrentView"]
        5 SETTABLEKS                       R3 R2 K0 ["CurrentView"]
        7 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K4 [{"RemoveHistoryItem", "SetMemStoragePair", "SetRBXParameters", "SetView"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["RemoveHistoryItem"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetMemStoragePair"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetRBXParameters"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetView"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["Container"]
       38 GETTABLEKS                       R8 R6 K13 ["Box"]
       40 GETTABLEKS                       R9 R6 K14 ["Button"]
       42 GETTABLEKS                       R10 R0 K15 ["Src"]
       44 GETTABLEKS                       R10 R10 K16 ["Actions"]
       46 GETIMPORT                        R11 K4 [require]
       48 GETTABLEKS                       R12 R10 K17 ["RemoveHistoryItem"]
       50 CALL                             R11 1 1
       51 GETIMPORT                        R12 K4 [require]
       53 GETTABLEKS                       R13 R10 K18 ["SetMemStoragePair"]
       55 CALL                             R12 1 1
       56 GETIMPORT                        R13 K4 [require]
       58 GETTABLEKS                       R14 R10 K19 ["SetRBXParameters"]
       60 CALL                             R13 1 1
       61 GETIMPORT                        R14 K4 [require]
       63 GETTABLEKS                       R15 R10 K20 ["SetView"]
       65 CALL                             R14 1 1
       66 GETIMPORT                        R15 K4 [require]
       68 GETTABLEKS                       R16 R0 K15 ["Src"]
       70 GETTABLEKS                       R16 R16 K21 ["Util"]
       72 GETTABLEKS                       R16 R16 K22 ["Constants"]
       74 CALL                             R15 1 1
       75 GETTABLEKS                       R16 R15 K23 ["VIEW_ID"]
       77 GETTABLEKS                       R17 R1 K24 ["PureComponent"]
       79 LOADK                            R19 K25 ["RepopulatableHistoryItem"]
       80 NAMECALL                         R17 R17 K26 ["extend"]
       82 CALL                             R17 2 1
       83 DUPCLOSURE                       R18 K27 [PROTO_2]
       84 CAPTURE                          VAL R16
       85 SETTABLEKS                       R18 R17 K28 ["init"]
       87 DUPCLOSURE                       R18 K29 [PROTO_3]
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 SETTABLEKS                       R18 R17 K30 ["render"]
       94 MOVE                             R18 R5
       95 DUPTABLE                         R19 K32 [{"Stylizer"}]
       96 GETTABLEKS                       R20 R4 K31 ["Stylizer"]
       98 SETTABLEKS                       R20 R19 K31 ["Stylizer"]
      100 CALL                             R18 1 1
      101 MOVE                             R19 R17
      102 CALL                             R18 1 1
      103 MOVE                             R17 R18
      104 GETTABLEKS                       R18 R2 K33 ["connect"]
      106 DUPCLOSURE                       R19 K34 [PROTO_4]
      107 DUPCLOSURE                       R20 K35 [PROTO_9]
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R14
      112 CALL                             R18 2 1
      113 MOVE                             R19 R17
      114 CALL                             R18 1 -1
      115 RETURN                           R18 -1
