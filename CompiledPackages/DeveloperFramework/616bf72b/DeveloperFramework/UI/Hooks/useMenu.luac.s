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
        4 LOADN                            R2 255
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
        6 LOADK                            R3 K0 ["Menus/%*"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R3 K1 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 MOVE                             R5 R2
       13 DUPTABLE                         R6 K10 [{"Id", "InitialEnabled", "MinSize", "Modal", "Popup", "Resizable", "Size", "Title"}]
       14 SETTABLEKS                       R2 R6 K2 ["Id"]
       16 LOADB                            R7 0
       17 SETTABLEKS                       R7 R6 K3 ["InitialEnabled"]
       19 GETIMPORT                        R7 K13 [Vector2.new]
       21 LOADN                            R8 100
       22 LOADN                            R9 100
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K4 ["MinSize"]
       26 LOADB                            R7 0
       27 SETTABLEKS                       R7 R6 K5 ["Modal"]
       29 GETUPVAL                         R8 1
       30 CALL                             R8 0 1
       31 JUMPIFNOT                        R8 ; [+5]
       32 DUPTABLE                         R7 K15 [{"PassesThroughMouseEvents"}]
       33 LOADB                            R8 1
       34 SETTABLEKS                       R8 R7 K14 ["PassesThroughMouseEvents"]
       36 JUMP                             ; [+4]
       37 DUPTABLE                         R7 K17 [{"GrabsMouse"}]
       38 LOADB                            R8 0
       39 SETTABLEKS                       R8 R7 K16 ["GrabsMouse"]
       41 SETTABLEKS                       R7 R6 K6 ["Popup"]
       43 LOADB                            R7 1
       44 SETTABLEKS                       R7 R6 K7 ["Resizable"]
       46 GETIMPORT                        R7 K13 [Vector2.new]
       48 LOADN                            R8 100
       49 LOADN                            R9 100
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K8 ["Size"]
       53 SETTABLEKS                       R2 R6 K9 ["Title"]
       55 NAMECALL                         R3 R0 K18 ["CreateQWidgetPluginGui"]
       57 CALL                             R3 3 1
       58 GETIMPORT                        R4 K22 [Enum.ZIndexBehavior.Sibling]
       60 SETTABLEKS                       R4 R3 K20 ["ZIndexBehavior"]
       62 GETUPVAL                         R4 2
       63 GETTABLEKS                       R4 R4 K23 ["createRoot"]
       65 MOVE                             R5 R3
       66 CALL                             R4 1 1
       67 DUPTABLE                         R5 K30 [{"depth", "uri", "panel", "root", "open", "Panels"}]
       68 GETUPVAL                         R8 0
       69 LENGTH                           R7 R8
       70 ADDK                             R6 R7 K31 [1]
       71 SETTABLEKS                       R6 R5 K24 ["depth"]
       73 GETUPVAL                         R6 3
       74 NAMECALL                         R7 R0 K32 ["GetUri"]
       76 CALL                             R7 1 1
       77 DUPTABLE                         R8 K35 [{"Category", "ItemId"}]
       78 LOADK                            R9 K29 ["Panels"]
       79 SETTABLEKS                       R9 R8 K33 ["Category"]
       81 SETTABLEKS                       R2 R8 K34 ["ItemId"]
       83 CALL                             R6 2 1
       84 SETTABLEKS                       R6 R5 K25 ["uri"]
       86 SETTABLEKS                       R3 R5 K26 ["panel"]
       88 SETTABLEKS                       R4 R5 K27 ["root"]
       90 LOADB                            R6 0
       91 SETTABLEKS                       R6 R5 K28 ["open"]
       93 LOADK                            R8 K29 ["Panels"]
       94 NAMECALL                         R6 R0 K36 ["GetPluginComponent"]
       96 CALL                             R6 2 1
       97 SETTABLEKS                       R6 R5 K29 ["Panels"]
       99 GETUPVAL                         R6 0
      100 SETTABLE                         R5 R6 R1
      101 LOADK                            R8 K37 ["PluginGui"]
      102 NAMECALL                         R6 R3 K38 ["IsA"]
      104 CALL                             R6 2 1
      105 JUMPIFNOT                        R6 ; [+7]
      106 NEWCLOSURE                       R8 P0
      107 CAPTURE                          UPVAL U0
      108 CAPTURE                          VAL R5
      109 CAPTURE                          UPVAL U4
      110 NAMECALL                         R6 R3 K39 ["BindToClose"]
      112 CALL                             R6 2 0
      113 RETURN                           R5 1

PROTO_4:
        0 LOADN                            R3 184
        1 GETTABLEKS                       R5 R0 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R5 R5 K2 ["X"]
        5 ADDK                             R4 R5 K0 [16]
        6 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
        8 GETIMPORT                        R2 K5 [math.min]
       10 CALL                             R2 2 1
       11 FASTCALL1                        MATH_CEIL R2 ; [+2]
       12 GETIMPORT                        R1 K7 [math.ceil]
       14 CALL                             R1 1 1
       15 LOADN                            R4 184
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
        5 DUPTABLE                         R3 K5 [{"functionType", "sourceType", "sourceData"}]
        6 LOADK                            R4 K6 ["Navigation"]
        7 SETTABLEKS                       R4 R3 K2 ["functionType"]
        9 LOADK                            R4 K7 ["Widget"]
       10 SETTABLEKS                       R4 R3 K3 ["sourceType"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K8 ["toString"]
       15 GETUPVAL                         R5 2
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K4 ["sourceData"]
       19 NAMECALL                         R1 R0 K9 ["ReportInteractionAsync"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

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
       14 LOADK                            R8 K4 ["Menus/%*"]
       15 MOVE                             R10 R4
       16 NAMECALL                         R8 R8 K5 ["format"]
       18 CALL                             R8 2 1
       19 MOVE                             R7 R8
       20 GETUPVAL                         R8 3
       21 MOVE                             R9 R6
       22 DUPTABLE                         R10 K8 [{"Category", "ItemId"}]
       23 LOADK                            R11 K9 ["Panels"]
       24 SETTABLEKS                       R11 R10 K6 ["Category"]
       26 SETTABLEKS                       R7 R10 K7 ["ItemId"]
       28 CALL                             R8 2 1
       29 GETUPVAL                         R9 4
       30 MOVE                             R10 R5
       31 MOVE                             R11 R4
       32 CALL                             R9 2 1
       33 LOADK                            R12 K9 ["Panels"]
       34 NAMECALL                         R10 R5 K10 ["GetPluginComponent"]
       36 CALL                             R10 2 1
       37 GETTABLEKS                       R11 R9 K11 ["root"]
       39 GETUPVAL                         R13 5
       40 GETTABLEKS                       R13 R13 K12 ["provide"]
       42 NEWTABLE                         R14 0 4
       44 GETUPVAL                         R15 6
       45 GETUPVAL                         R16 7
       46 GETUPVAL                         R17 2
       47 GETUPVAL                         R18 8
       48 GETTABLEKS                       R18 R18 K13 ["new"]
       50 DUPTABLE                         R19 K15 [{"depth", "menuOnLeft"}]
       51 SETTABLEKS                       R4 R19 K1 ["depth"]
       53 MOVE                             R20 R3
       54 JUMPIF                           R20 ; [+3]
       55 GETUPVAL                         R20 1
       56 GETTABLEKS                       R20 R20 K14 ["menuOnLeft"]
       58 SETTABLEKS                       R20 R19 K14 ["menuOnLeft"]
       60 CALL                             R18 1 -1
       61 SETLIST                          R14 R15 -1 [1]
       63 DUPTABLE                         R15 K17 [{"Main"}]
       64 GETUPVAL                         R16 9
       65 GETTABLEKS                       R16 R16 K18 ["createElement"]
       67 LOADK                            R17 K19 ["Frame"]
       68 NEWTABLE                         R18 1 0
       70 GETUPVAL                         R19 9
       71 GETTABLEKS                       R19 R19 K20 ["Tag"]
       73 LOADK                            R20 K21 ["Role-Surface100 X-Fill X-PadTabMenu"]
       74 SETTABLE                         R20 R18 R19
       75 DUPTABLE                         R19 K24 [{"Menu", "StyleLink"}]
       76 GETUPVAL                         R20 9
       77 GETTABLEKS                       R20 R20 K18 ["createElement"]
       79 GETUPVAL                         R21 10
       80 NEWTABLE                         R22 8 0
       82 SETTABLEKS                       R1 R22 K25 ["WidgetUri"]
       84 SETTABLEKS                       R5 R22 K26 ["Plugin"]
       86 SETTABLEKS                       R0 R22 K27 ["Controls"]
       88 NEWCLOSURE                       R23 P0
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R8
       91 SETTABLEKS                       R23 R22 K28 ["OnResize"]
       93 GETUPVAL                         R23 9
       94 GETTABLEKS                       R23 R23 K20 ["Tag"]
       96 LOADK                            R24 K29 ["X-RowSpace150 X-Top X-Fit"]
       97 SETTABLE                         R24 R22 R23
       98 CALL                             R20 2 1
       99 SETTABLEKS                       R20 R19 K22 ["Menu"]
      101 GETUPVAL                         R20 9
      102 GETTABLEKS                       R20 R20 K18 ["createElement"]
      104 LOADK                            R21 K23 ["StyleLink"]
      105 DUPTABLE                         R22 K31 [{"StyleSheet"}]
      106 GETUPVAL                         R23 6
      107 NAMECALL                         R23 R23 K2 ["get"]
      109 CALL                             R23 1 1
      110 SETTABLEKS                       R23 R22 K30 ["StyleSheet"]
      112 CALL                             R20 2 1
      113 SETTABLEKS                       R20 R19 K23 ["StyleLink"]
      115 CALL                             R16 3 1
      116 SETTABLEKS                       R16 R15 K16 ["Main"]
      118 CALL                             R13 2 -1
      119 NAMECALL                         R11 R11 K32 ["render"]
      121 CALL                             R11 -1 0
      122 GETUPVAL                         R11 3
      123 DUPTABLE                         R12 K37 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
      124 SETTABLEKS                       R1 R12 K33 ["TargetWidgetUri"]
      126 GETIMPORT                        R13 K39 [Vector2.new]
      128 LOADN                            R14 0
      129 LOADN                            R15 1
      130 CALL                             R13 2 1
      131 SETTABLEKS                       R13 R12 K34 ["TargetAnchorPoint"]
      133 GETIMPORT                        R13 K39 [Vector2.new]
      135 LOADN                            R14 0
      136 LOADN                            R15 0
      137 CALL                             R13 2 1
      138 SETTABLEKS                       R13 R12 K35 ["SubjectAnchorPoint"]
      140 GETIMPORT                        R13 K39 [Vector2.new]
      142 LOADN                            R14 0
      143 LOADN                            R15 0
      144 CALL                             R13 2 1
      145 SETTABLEKS                       R13 R12 K36 ["Offset"]
      147 MOVE                             R13 R2
      148 CALL                             R11 2 1
      149 MOVE                             R14 R8
      150 MOVE                             R15 R11
      151 NAMECALL                         R12 R10 K40 ["SetAttachmentAsync"]
      153 CALL                             R12 3 0
      154 GETTABLEKS                       R12 R9 K41 ["panel"]
      156 LOADB                            R13 1
      157 SETTABLEKS                       R13 R12 K42 ["Enabled"]
      159 LOADB                            R12 1
      160 SETTABLEKS                       R12 R9 K43 ["open"]
      162 GETIMPORT                        R12 K46 [task.defer]
      164 NEWCLOSURE                       R13 P1
      165 CAPTURE                          VAL R5
      166 CAPTURE                          UPVAL U11
      167 CAPTURE                          VAL R1
      168 CALL                             R12 1 0
      169 RETURN                           R0 0

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
       22 JUMP                             ; [+7]
       23 DUPTABLE                         R5 K4 [{"depth", "menuOnLeft"}]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K2 ["depth"]
       27 LOADB                            R6 0
       28 SETTABLEKS                       R6 R5 K3 ["menuOnLeft"]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U9
       43 MOVE                             R7 R6
       44 GETUPVAL                         R8 10
       45 MOVE                             R9 R5
       46 RETURN                           R7 3

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
       61 GETIMPORT                        R13 K6 [require]
       63 GETTABLEKS                       R14 R0 K21 ["SharedFlags"]
       65 GETTABLEKS                       R14 R14 K22 ["getFFlagDevFrameworkMaterialPickerRenameGrabsMouseProp"]
       67 CALL                             R13 1 1
       68 NEWTABLE                         R14 0 0
       70 LOADN                            R15 0
       71 DUPCLOSURE                       R16 K23 [PROTO_1]
       72 CAPTURE                          VAL R14
       73 DUPCLOSURE                       R17 K24 [PROTO_3]
       74 CAPTURE                          VAL R14
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R16
       79 NEWCLOSURE                       R18 P2
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R9
       84 CAPTURE                          REF R15
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R17
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R16
       91 CLOSEUPVALS                      R15
       92 RETURN                           R18 1
