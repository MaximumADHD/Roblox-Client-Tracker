PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Panels"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["uri"]
        6 GETIMPORT                        R3 K4 [Vector2.new]
        8 LOADN                            R4 0
        9 LOADN                            R5 0
       10 CALL                             R3 2 -1
       11 NAMECALL                         R0 R0 K5 ["SetSizeAsync"]
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFEQKNIL                     R0 ; [+3]
        6 JUMPIFLE                         R4 R0 ; [+20]
        8 LOADB                            R6 0
        9 SETTABLEKS                       R6 R5 K0 ["open"]
       11 GETTABLEKS                       R6 R5 K1 ["panel"]
       13 LOADB                            R7 0
       14 SETTABLEKS                       R7 R6 K2 ["Enabled"]
       16 GETTABLEKS                       R6 R5 K3 ["root"]
       18 LOADNIL                          R8
       19 NAMECALL                         R6 R6 K4 ["render"]
       21 CALL                             R6 2 0
       22 GETIMPORT                        R6 K7 [task.spawn]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R5
       26 CALL                             R6 1 0
       27 FORGLOOP                         R1 2 ; [-24]
       29 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 GETUPVAL                         R4 0
        2 LENGTH                           R3 R4
        3 LOADN                            R1 1
        4 LOADN                            R2 -1
        5 FORNPREP                         R1
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R4 R5 R3
        8 GETTABLEKS                       R4 R4 K0 ["open"]
       10 JUMPIFNOT                        R4 ; [+3]
       11 GETUPVAL                         R4 0
       12 GETTABLE                         R0 R4 R3
       13 JUMP                             ; [+1]
       14 FORNLOOP                         R1
       15 GETUPVAL                         R1 1
       16 JUMPIFNOTEQ                      R1 R0 ; [+3]
       18 GETUPVAL                         R1 2
       19 CALL                             R1 0 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1
        6 LOADK                            R2 K0 ["Menus/%*"]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K1 ["format"]
       10 CALL                             R2 2 1
       11 MOVE                             R5 R2
       12 DUPTABLE                         R6 K12 [{["Id"], ["InitialEnabled"] = False, ["MinSize"], ["Modal"] = False, ["Popup"], ["Resizable"] = True, ["Size"], ["Title"]}]
       13 SETTABLEKS                       R2 R6 K2 ["Id"]
       15 GETIMPORT                        R7 K15 [Vector2.new]
       17 LOADN                            R8 100
       18 LOADN                            R9 100
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R6 K5 ["MinSize"]
       22 DUPTABLE                         R7 K17 [{["PassesThroughMouseEvents"] = True}]
       23 SETTABLEKS                       R7 R6 K7 ["Popup"]
       25 GETIMPORT                        R7 K15 [Vector2.new]
       27 LOADN                            R8 100
       28 LOADN                            R9 100
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R6 K10 ["Size"]
       32 SETTABLEKS                       R2 R6 K11 ["Title"]
       34 NAMECALL                         R3 R0 K18 ["CreateQWidgetPluginGui"]
       36 CALL                             R3 3 1
       37 GETIMPORT                        R4 K22 [Enum.ZIndexBehavior.Sibling]
       39 SETTABLEKS                       R4 R3 K20 ["ZIndexBehavior"]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K23 ["createRoot"]
       44 MOVE                             R5 R3
       45 CALL                             R4 1 1
       46 DUPTABLE                         R5 K30 [{["depth"], ["uri"], ["panel"], ["root"], ["open"] = False, ["Panels"]}]
       47 GETUPVAL                         R8 0
       48 LENGTH                           R7 R8
       49 ADDK                             R6 R7 K31 [1]
       50 SETTABLEKS                       R6 R5 K24 ["depth"]
       52 GETUPVAL                         R6 2
       53 NAMECALL                         R7 R0 K32 ["GetUri"]
       55 CALL                             R7 1 1
       56 DUPTABLE                         R8 K35 [{["Category"] = "Panels", ["ItemId"]}]
       57 SETTABLEKS                       R2 R8 K34 ["ItemId"]
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R5 K25 ["uri"]
       62 SETTABLEKS                       R3 R5 K26 ["panel"]
       64 SETTABLEKS                       R4 R5 K27 ["root"]
       66 LOADK                            R8 K29 ["Panels"]
       67 NAMECALL                         R6 R0 K36 ["GetPluginComponent"]
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K29 ["Panels"]
       72 GETUPVAL                         R6 0
       73 SETTABLE                         R5 R6 R1
       74 LOADK                            R8 K37 ["PluginGui"]
       75 NAMECALL                         R6 R3 K38 ["IsA"]
       77 CALL                             R6 2 1
       78 JUMPIFNOT                        R6 ; [+7]
       79 NEWCLOSURE                       R8 P0
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          VAL R5
       82 CAPTURE                          UPVAL U3
       83 NAMECALL                         R6 R3 K39 ["BindToClose"]
       85 CALL                             R6 2 0
       86 RETURN                           R5 1

PROTO_4:
        0 LOADN                            R3 3000
        1 GETTABLEKS                       R5 R0 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R5 R5 K2 ["X"]
        5 ADDK                             R4 R5 K0 [16]
        6 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
        8 GETIMPORT                        R2 K5 [math.min]
       10 CALL                             R2 2 1
       11 FASTCALL1                        MATH_CEIL R2 ; [+2]
       12 GETIMPORT                        R1 K7 [math.ceil]
       14 CALL                             R1 1 1
       15 LOADN                            R4 3000
       16 GETTABLEKS                       R6 R0 K1 ["AbsoluteSize"]
       18 GETTABLEKS                       R6 R6 K8 ["Y"]
       20 ADDK                             R5 R6 K0 [16]
       21 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       23 GETIMPORT                        R3 K5 [math.min]
       25 CALL                             R3 2 1
       26 FASTCALL1                        MATH_CEIL R3 ; [+2]
       27 GETIMPORT                        R2 K7 [math.ceil]
       29 CALL                             R2 1 1
       30 GETUPVAL                         R3 0
       31 GETUPVAL                         R5 1
       32 GETIMPORT                        R6 K11 [Vector2.new]
       34 MOVE                             R7 R1
       35 MOVE                             R8 R2
       36 CALL                             R6 2 -1
       37 NAMECALL                         R3 R3 K12 ["SetSizeAsync"]
       39 CALL                             R3 -1 0
       40 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["InteractionTelemetry"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 DUPTABLE                         R3 K7 [{["functionType"] = "Navigation", ["sourceType"] = "Widget", ["sourceData"]}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K8 ["toString"]
        9 GETUPVAL                         R5 2
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K6 ["sourceData"]
       13 NAMECALL                         R1 R0 K9 ["ReportInteractionAsync"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 ADDK                             R4 R4 K0 [1]
        2 SETUPVAL                         R4 0
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["depth"]
        6 ADDK                             R4 R5 K0 [1]
        7 GETUPVAL                         R5 2
        8 NAMECALL                         R5 R5 K2 ["get"]
       10 CALL                             R5 1 1
       11 NAMECALL                         R6 R5 K3 ["GetUri"]
       13 CALL                             R6 1 1
       14 LOADK                            R7 K4 ["Menus/%*"]
       15 MOVE                             R9 R4
       16 NAMECALL                         R7 R7 K5 ["format"]
       18 CALL                             R7 2 1
       19 GETUPVAL                         R8 3
       20 MOVE                             R9 R6
       21 DUPTABLE                         R10 K9 [{["Category"] = "Panels", ["ItemId"]}]
       22 SETTABLEKS                       R7 R10 K8 ["ItemId"]
       24 CALL                             R8 2 1
       25 GETUPVAL                         R9 4
       26 MOVE                             R10 R5
       27 MOVE                             R11 R4
       28 CALL                             R9 2 1
       29 LOADK                            R12 K7 ["Panels"]
       30 NAMECALL                         R10 R5 K10 ["GetPluginComponent"]
       32 CALL                             R10 2 1
       33 GETTABLEKS                       R11 R9 K11 ["root"]
       35 GETUPVAL                         R13 5
       36 GETTABLEKS                       R13 R13 K12 ["provide"]
       38 NEWTABLE                         R14 0 4
       40 GETUPVAL                         R15 6
       41 GETUPVAL                         R16 7
       42 GETUPVAL                         R17 2
       43 GETUPVAL                         R18 8
       44 GETTABLEKS                       R18 R18 K13 ["new"]
       46 DUPTABLE                         R19 K15 [{"depth", "menuOnLeft"}]
       47 SETTABLEKS                       R4 R19 K1 ["depth"]
       49 MOVE                             R20 R3
       50 JUMPIF                           R20 ; [+3]
       51 GETUPVAL                         R20 1
       52 GETTABLEKS                       R20 R20 K14 ["menuOnLeft"]
       54 SETTABLEKS                       R20 R19 K14 ["menuOnLeft"]
       56 CALL                             R18 1 -1
       57 SETLIST                          R14 R15 -1 [1]
       59 DUPTABLE                         R15 K17 [{"Main"}]
       60 GETUPVAL                         R16 9
       61 GETTABLEKS                       R16 R16 K18 ["createElement"]
       63 LOADK                            R17 K19 ["Frame"]
       64 NEWTABLE                         R18 1 0
       66 GETUPVAL                         R19 9
       67 GETTABLEKS                       R19 R19 K20 ["Tag"]
       69 LOADK                            R20 K21 ["Role-Surface100 X-Fill X-PadTabMenu"]
       70 SETTABLE                         R20 R18 R19
       71 DUPTABLE                         R19 K24 [{"Menu", "StyleLink"}]
       72 GETUPVAL                         R20 9
       73 GETTABLEKS                       R20 R20 K18 ["createElement"]
       75 GETUPVAL                         R21 10
       76 NEWTABLE                         R22 8 0
       78 SETTABLEKS                       R1 R22 K25 ["WidgetUri"]
       80 SETTABLEKS                       R5 R22 K26 ["Plugin"]
       82 SETTABLEKS                       R0 R22 K27 ["Controls"]
       84 NEWCLOSURE                       R23 P0
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R8
       87 SETTABLEKS                       R23 R22 K28 ["OnResize"]
       89 GETUPVAL                         R23 9
       90 GETTABLEKS                       R23 R23 K20 ["Tag"]
       92 LOADK                            R24 K29 ["X-RowSpace150 X-Top X-Fit"]
       93 SETTABLE                         R24 R22 R23
       94 CALL                             R20 2 1
       95 SETTABLEKS                       R20 R19 K22 ["Menu"]
       97 GETUPVAL                         R20 9
       98 GETTABLEKS                       R20 R20 K18 ["createElement"]
      100 LOADK                            R21 K23 ["StyleLink"]
      101 DUPTABLE                         R22 K31 [{"StyleSheet"}]
      102 GETUPVAL                         R23 6
      103 NAMECALL                         R23 R23 K2 ["get"]
      105 CALL                             R23 1 1
      106 SETTABLEKS                       R23 R22 K30 ["StyleSheet"]
      108 CALL                             R20 2 1
      109 SETTABLEKS                       R20 R19 K23 ["StyleLink"]
      111 CALL                             R16 3 1
      112 SETTABLEKS                       R16 R15 K16 ["Main"]
      114 CALL                             R13 2 -1
      115 NAMECALL                         R11 R11 K32 ["render"]
      117 CALL                             R11 -1 0
      118 GETUPVAL                         R11 3
      119 DUPTABLE                         R12 K37 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      120 SETTABLEKS                       R1 R12 K33 ["TargetWidgetUri"]
      122 GETIMPORT                        R13 K39 [Vector2.new]
      124 LOADN                            R14 0
      125 LOADN                            R15 1
      126 CALL                             R13 2 1
      127 SETTABLEKS                       R13 R12 K34 ["TargetAnchorPoint"]
      129 GETIMPORT                        R13 K39 [Vector2.new]
      131 LOADN                            R14 0
      132 LOADN                            R15 0
      133 CALL                             R13 2 1
      134 SETTABLEKS                       R13 R12 K35 ["SubjectAnchorPoint"]
      136 GETIMPORT                        R13 K39 [Vector2.new]
      138 LOADN                            R14 0
      139 LOADN                            R15 0
      140 CALL                             R13 2 1
      141 SETTABLEKS                       R13 R12 K36 ["Offset"]
      143 MOVE                             R13 R2
      144 CALL                             R11 2 1
      145 MOVE                             R14 R8
      146 MOVE                             R15 R11
      147 NAMECALL                         R12 R10 K40 ["SetAttachmentAsync"]
      149 CALL                             R12 3 0
      150 GETTABLEKS                       R12 R9 K41 ["panel"]
      152 LOADB                            R13 1
      153 SETTABLEKS                       R13 R12 K42 ["Enabled"]
      155 LOADB                            R12 1
      156 SETTABLEKS                       R12 R9 K43 ["open"]
      158 GETIMPORT                        R12 K46 [task.defer]
      160 NEWCLOSURE                       R13 P1
      161 CAPTURE                          VAL R5
      162 CAPTURE                          UPVAL U11
      163 CAPTURE                          VAL R1
      164 CALL                             R12 1 0
      165 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETTABLEKS                       R6 R3 K1 ["get"]
       18 JUMPIFNOT                        R6 ; [+4]
       19 NAMECALL                         R5 R3 K1 ["get"]
       21 CALL                             R5 1 1
       22 JUMP                             ; [+1]
       23 DUPTABLE                         R5 K6 [{["depth"] = 0, ["menuOnLeft"] = False}]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R4
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U8
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U9
       37 MOVE                             R7 R6
       38 GETUPVAL                         R8 10
       39 MOVE                             R9 R5
       40 RETURN                           R7 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["ReactRoblox"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K6 [require]
       30 GETTABLEKS                       R5 R0 K7 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["StudioUri"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K6 [require]
       37 GETTABLEKS                       R6 R0 K4 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["Dash"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K13 ["join"]
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K14 ["ContextServices"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R7 K15 ["Design"]
       51 GETTABLEKS                       R9 R7 K16 ["Localization"]
       53 GETTABLEKS                       R10 R7 K17 ["Plugin"]
       55 GETTABLEKS                       R11 R7 K18 ["ContextItem"]
       57 LOADK                            R14 K19 ["Menu"]
       58 NAMECALL                         R12 R11 K20 ["createSimple"]
       60 CALL                             R12 2 1
       61 NEWTABLE                         R13 0 0
       63 LOADN                            R14 0
       64 DUPCLOSURE                       R15 K21 [PROTO_1]
       65 CAPTURE                          VAL R13
       66 DUPCLOSURE                       R16 K22 [PROTO_3]
       67 CAPTURE                          VAL R13
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R15
       71 NEWCLOSURE                       R17 P2
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R9
       76 CAPTURE                          REF R14
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R16
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R15
       83 CLOSEUPVALS                      R14
       84 RETURN                           R17 1
