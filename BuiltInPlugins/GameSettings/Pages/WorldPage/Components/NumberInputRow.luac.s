PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 FASTCALL1                        TONUMBER R3 ; [+3]
        8 MOVE                             R5 R3
        9 GETIMPORT                        R4 K2 [tonumber]
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["props"]
       15 GETTABLEKS                       R5 R5 K3 ["OnUpdate"]
       17 MOVE                             R6 R4
       18 CALL                             R5 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["props"]
        6 GETTABLEKS                       R4 R2 K2 ["MinValue"]
        8 ORK                              R3 R4 K1 [-∞]
        9 GETTABLEKS                       R5 R2 K4 ["MaxValue"]
       11 ORK                              R4 R5 K3 [∞]
       12 LOADB                            R5 1
       13 LOADNIL                          R6
       14 JUMPIFNOTEQKS                    R1 K5 [""] ; [+11]
       16 LOADB                            R5 0
       17 GETTABLEKS                       R7 R2 K6 ["Localization"]
       19 LOADK                            R9 K7 ["General"]
       20 LOADK                            R10 K8 ["NumberError"]
       21 NAMECALL                         R7 R7 K9 ["getText"]
       23 CALL                             R7 3 1
       24 MOVE                             R6 R7
       25 JUMP                             ; [+80]
       26 FASTCALL1                        TONUMBER R1 ; [+3]
       27 MOVE                             R8 R1
       28 GETIMPORT                        R7 K11 [tonumber]
       30 CALL                             R7 1 1
       31 JUMPIFNOTEQKNIL                  R7 ; [+11]
       33 LOADB                            R5 0
       34 GETTABLEKS                       R8 R2 K6 ["Localization"]
       36 LOADK                            R10 K7 ["General"]
       37 LOADK                            R11 K8 ["NumberError"]
       38 NAMECALL                         R8 R8 K9 ["getText"]
       40 CALL                             R8 3 1
       41 MOVE                             R6 R8
       42 JUMP                             ; [+63]
       43 JUMPIFLT                         R4 R7 ; [+3]
       45 JUMPIFNOTLT                      R7 R3 ; [+60]
       47 LOADB                            R5 0
       48 GETTABLEKS                       R8 R2 K2 ["MinValue"]
       50 JUMPIFNOT                        R8 ; [+17]
       51 GETTABLEKS                       R8 R2 K4 ["MaxValue"]
       53 JUMPIFNOT                        R8 ; [+14]
       54 GETTABLEKS                       R8 R2 K6 ["Localization"]
       56 LOADK                            R10 K12 ["Input"]
       57 LOADK                            R11 K13 ["NumberErrorBetween"]
       58 DUPTABLE                         R12 K16 [{"minRange", "maxRange"}]
       59 SETTABLEKS                       R3 R12 K14 ["minRange"]
       61 SETTABLEKS                       R4 R12 K15 ["maxRange"]
       63 NAMECALL                         R8 R8 K9 ["getText"]
       65 CALL                             R8 4 1
       66 MOVE                             R6 R8
       67 JUMP                             ; [+38]
       68 GETTABLEKS                       R8 R2 K2 ["MinValue"]
       70 JUMPIFNOT                        R8 ; [+12]
       71 GETTABLEKS                       R8 R2 K6 ["Localization"]
       73 LOADK                            R10 K12 ["Input"]
       74 LOADK                            R11 K17 ["NumberErrorAbove"]
       75 DUPTABLE                         R12 K18 [{"minRange"}]
       76 SETTABLEKS                       R3 R12 K14 ["minRange"]
       78 NAMECALL                         R8 R8 K9 ["getText"]
       80 CALL                             R8 4 1
       81 MOVE                             R6 R8
       82 JUMP                             ; [+23]
       83 GETTABLEKS                       R8 R2 K4 ["MaxValue"]
       85 JUMPIFNOT                        R8 ; [+12]
       86 GETTABLEKS                       R8 R2 K6 ["Localization"]
       88 LOADK                            R10 K12 ["Input"]
       89 LOADK                            R11 K19 ["NumberErrorBelow"]
       90 DUPTABLE                         R12 K20 [{"maxRange"}]
       91 SETTABLEKS                       R4 R12 K15 ["maxRange"]
       93 NAMECALL                         R8 R8 K9 ["getText"]
       95 CALL                             R8 4 1
       96 MOVE                             R6 R8
       97 JUMP                             ; [+8]
       98 GETTABLEKS                       R8 R2 K6 ["Localization"]
      100 LOADK                            R10 K7 ["General"]
      101 LOADK                            R11 K8 ["NumberError"]
      102 NAMECALL                         R8 R8 K9 ["getText"]
      104 CALL                             R8 3 1
      105 MOVE                             R6 R8
      106 JUMPIF                           R5 ; [+8]
      107 GETUPVAL                         R7 1
      108 GETTABLEKS                       R7 R7 K0 ["props"]
      110 GETTABLEKS                       R7 R7 K21 ["OnError"]
      112 MOVE                             R8 R6
      113 MOVE                             R9 R0
      114 CALL                             R7 2 0
      115 RETURN                           R5 2

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onTextChanged"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K1 ["onValidateText"]
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 GETTABLEKS                       R4 R1 K3 ["Label"]
        8 GETTABLEKS                       R5 R1 K4 ["Value"]
       10 GETTABLEKS                       R6 R1 K5 ["UnitsFormatFunction"]
       12 GETTABLEKS                       R7 R1 K6 ["WorldRootPhysics"]
       14 NAMECALL                         R7 R7 K7 ["get"]
       16 CALL                             R7 1 1
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K8 ["createElement"]
       20 GETUPVAL                         R9 1
       21 DUPTABLE                         R10 K9 [{"LayoutOrder", "Title"}]
       22 SETTABLEKS                       R2 R10 K1 ["LayoutOrder"]
       24 SETTABLEKS                       R3 R10 K2 ["Title"]
       26 DUPTABLE                         R11 K12 [{"Label", "InputBox", "MetricLabel"}]
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R12 R12 K8 ["createElement"]
       30 GETUPVAL                         R13 2
       31 DUPTABLE                         R14 K18 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Style"] = "Normal", ["Text"]}]
       32 GETIMPORT                        R15 K21 [Enum.AutomaticSize.XY]
       34 SETTABLEKS                       R15 R14 K13 ["AutomaticSize"]
       36 SETTABLEKS                       R4 R14 K17 ["Text"]
       38 CALL                             R12 2 1
       39 SETTABLEKS                       R12 R11 K3 ["Label"]
       41 GETUPVAL                         R12 0
       42 GETTABLEKS                       R12 R12 K8 ["createElement"]
       44 GETUPVAL                         R13 3
       45 DUPTABLE                         R14 K29 [{["OnFocusLost"], ["OnTextChanged"], ["OnValidateText"], ["LayoutOrder"] = 2, ["Position"], ["Width"] = 150, ["Text"]}]
       46 GETTABLEKS                       R15 R0 K30 ["onFocusLost"]
       48 SETTABLEKS                       R15 R14 K22 ["OnFocusLost"]
       50 GETTABLEKS                       R15 R0 K31 ["onTextChanged"]
       52 SETTABLEKS                       R15 R14 K23 ["OnTextChanged"]
       54 GETTABLEKS                       R15 R0 K32 ["onValidateText"]
       56 SETTABLEKS                       R15 R14 K24 ["OnValidateText"]
       58 GETIMPORT                        R15 K35 [UDim2.new]
       60 LOADN                            R16 0
       61 LOADN                            R17 160
       62 LOADN                            R18 0
       63 LOADN                            R19 0
       64 CALL                             R15 4 1
       65 SETTABLEKS                       R15 R14 K26 ["Position"]
       67 GETUPVAL                         R15 4
       68 MOVE                             R16 R5
       69 CALL                             R15 1 1
       70 SETTABLEKS                       R15 R14 K17 ["Text"]
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K10 ["InputBox"]
       75 MOVE                             R12 R6
       76 JUMPIFNOT                        R12 ; [+18]
       77 GETUPVAL                         R12 0
       78 GETTABLEKS                       R12 R12 K8 ["createElement"]
       80 GETUPVAL                         R13 2
       81 DUPTABLE                         R14 K38 [{["AutomaticSize"], ["LayoutOrder"] = 3, ["Style"] = "SubText", ["Text"]}]
       82 GETIMPORT                        R15 K21 [Enum.AutomaticSize.XY]
       84 SETTABLEKS                       R15 R14 K13 ["AutomaticSize"]
       86 MOVE                             R15 R6
       87 GETTABLEKS                       R16 R7 K39 ["convertStudsToMeters"]
       89 MOVE                             R17 R5
       90 CALL                             R16 1 -1
       91 CALL                             R15 -1 1
       92 SETTABLEKS                       R15 R14 K17 ["Text"]
       94 CALL                             R12 2 1
       95 SETTABLEKS                       R12 R11 K11 ["MetricLabel"]
       97 CALL                             R8 3 -1
       98 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R4 K7 ["Framework"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       33 GETTABLEKS                       R5 R4 K9 ["withContext"]
       35 GETTABLEKS                       R6 R3 K10 ["UI"]
       37 GETTABLEKS                       R7 R6 K11 ["TextLabel"]
       39 GETTABLEKS                       R8 R6 K12 ["TextInput"]
       41 GETTABLEKS                       R9 R6 K13 ["TitledFrame"]
       43 GETIMPORT                        R10 K4 [require]
       45 GETTABLEKS                       R11 R0 K8 ["ContextServices"]
       47 GETTABLEKS                       R11 R11 K14 ["WorldRootPhysics"]
       49 CALL                             R10 1 1
       50 GETIMPORT                        R11 K4 [require]
       52 GETTABLEKS                       R12 R0 K15 ["Util"]
       54 GETTABLEKS                       R12 R12 K16 ["formatNumberForDisplay"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K4 [require]
       59 GETTABLEKS                       R13 R0 K15 ["Util"]
       61 GETTABLEKS                       R13 R13 K17 ["formatNumberForEngine"]
       63 CALL                             R12 1 1
       64 GETTABLEKS                       R13 R2 K18 ["PureComponent"]
       66 LOADK                            R15 K19 ["NumberInputRow"]
       67 NAMECALL                         R13 R13 K20 ["extend"]
       69 CALL                             R13 2 1
       70 DUPCLOSURE                       R14 K21 [PROTO_2]
       71 CAPTURE                          VAL R12
       72 SETTABLEKS                       R14 R13 K22 ["init"]
       74 DUPCLOSURE                       R14 K23 [PROTO_3]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R11
       80 SETTABLEKS                       R14 R13 K24 ["render"]
       82 MOVE                             R14 R5
       83 DUPTABLE                         R15 K27 [{"Mouse", "Localization", "WorldRootPhysics"}]
       84 GETTABLEKS                       R16 R4 K25 ["Mouse"]
       86 SETTABLEKS                       R16 R15 K25 ["Mouse"]
       88 GETTABLEKS                       R16 R4 K26 ["Localization"]
       90 SETTABLEKS                       R16 R15 K26 ["Localization"]
       92 SETTABLEKS                       R10 R15 K14 ["WorldRootPhysics"]
       94 CALL                             R14 1 1
       95 MOVE                             R15 R13
       96 CALL                             R14 1 1
       97 MOVE                             R13 R14
       98 RETURN                           R13 1
