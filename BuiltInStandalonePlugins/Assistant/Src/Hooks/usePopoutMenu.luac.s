PROTO_0:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K11 [{[1], ["MinSize"], ["Resizable"] = True, ["Modal"] = False, ["ToolDialog"] = False, ["Size"], ["Name"] = "", ["Popup"]}]
        2 SETTABLEKS                       R1 R6 K0 ["Id"]
        4 GETIMPORT                        R7 K14 [Vector2.new]
        6 LOADN                            R8 0
        7 LOADN                            R9 0
        8 CALL                             R7 2 1
        9 SETTABLEKS                       R7 R6 K1 ["MinSize"]
       11 GETTABLEKS                       R7 R2 K15 ["InitialSize"]
       13 SETTABLEKS                       R7 R6 K7 ["Size"]
       15 DUPTABLE                         R7 K17 [{["PassesThroughMouseEvents"] = True}]
       16 SETTABLEKS                       R7 R6 K10 ["Popup"]
       18 NAMECALL                         R3 R0 K18 ["CreateQWidgetPluginGui"]
       20 CALL                             R3 3 1
       21 GETIMPORT                        R4 K22 [Enum.ZIndexBehavior.Sibling]
       23 SETTABLEKS                       R4 R3 K20 ["ZIndexBehavior"]
       25 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R1 K0 ["Menu/%*"]
        1 GETUPVAL                         R3 0
        2 LOADB                            R5 0
        3 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
        5 CALL                             R3 2 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 1
        9 MOVE                             R0 R1
       10 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["current"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETIMPORT                        R2 K3 [task.delay]
        8 LOADK                            R3 K4 [0.2]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K0 ["current"]
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETIMPORT                        R1 K3 [task.cancel]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K0 ["current"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K0 ["current"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETIMPORT                        R2 K5 [task.defer]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 LOADK                            R2 K1 ["PluginGui"]
        8 NAMECALL                         R0 R0 K2 ["IsA"]
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+7]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["current"]
       15 DUPCLOSURE                       R2 K3 [PROTO_12]
       16 NAMECALL                         R0 R0 K4 ["BindToClose"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 LOADK                            R2 K1 ["PluginGui"]
        8 NAMECALL                         R0 R0 K2 ["IsA"]
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["current"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U1
       17 NAMECALL                         R0 R0 K3 ["BindToClose"]
       19 CALL                             R0 2 0
       20 NEWCLOSURE                       R0 P1
       21 CAPTURE                          UPVAL U0
       22 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetSizeAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["TargetWidgetUri"]
        6 GETIMPORT                        R4 K7 [Vector2.new]
        8 LOADN                            R5 0
        9 LOADN                            R6 0
       10 CALL                             R4 2 1
       11 SETTABLEKS                       R4 R3 K1 ["TargetAnchorPoint"]
       13 GETIMPORT                        R4 K7 [Vector2.new]
       15 LOADN                            R5 0
       16 LOADN                            R6 0
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K2 ["SubjectAnchorPoint"]
       20 GETUPVAL                         R5 3
       21 GETIMPORT                        R6 K7 [Vector2.new]
       23 LOADN                            R7 5
       24 LOADN                            R8 5
       25 CALL                             R6 2 1
       26 ADD                              R4 R5 R6
       27 SETTABLEKS                       R4 R3 K3 ["Offset"]
       29 NAMECALL                         R0 R0 K8 ["SetAttachmentAsync"]
       31 CALL                             R0 3 0
       32 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_19:
        0 LOADN                            R3 3000
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R4 R4 K1 ["X"]
        5 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
        7 GETIMPORT                        R2 K4 [math.min]
        9 CALL                             R2 2 1
       10 FASTCALL1                        MATH_CEIL R2 ; [+2]
       11 GETIMPORT                        R1 K6 [math.ceil]
       13 CALL                             R1 1 1
       14 LOADN                            R4 3000
       15 GETTABLEKS                       R5 R0 K0 ["AbsoluteSize"]
       17 GETTABLEKS                       R5 R5 K7 ["Y"]
       19 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       21 GETIMPORT                        R3 K4 [math.min]
       23 CALL                             R3 2 1
       24 FASTCALL1                        MATH_CEIL R3 ; [+2]
       25 GETIMPORT                        R2 K6 [math.ceil]
       27 CALL                             R2 1 1
       28 GETUPVAL                         R3 0
       29 GETIMPORT                        R4 K10 [Vector2.new]
       31 MOVE                             R5 R1
       32 MOVE                             R6 R2
       33 CALL                             R4 2 -1
       34 CALL                             R3 -1 0
       35 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 DUPTABLE                         R2 K4 [{["tag"] = "auto-xy", ["onAbsoluteSizeChanged"]}]
       11 GETUPVAL                         R3 4
       12 SETTABLEKS                       R3 R2 K3 ["onAbsoluteSizeChanged"]
       14 DUPTABLE                         R3 K7 [{"Menu", "StyleLink"}]
       15 GETUPVAL                         R4 5
       16 GETTABLEKS                       R4 R4 K8 ["Contents"]
       18 SETTABLEKS                       R4 R3 K5 ["Menu"]
       20 GETUPVAL                         R4 2
       21 LOADK                            R5 K6 ["StyleLink"]
       22 DUPTABLE                         R6 K10 [{"StyleSheet"}]
       23 GETUPVAL                         R7 6
       24 SETTABLEKS                       R7 R6 K9 ["StyleSheet"]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K6 ["StyleLink"]
       29 CALL                             R0 3 1
       30 GETUPVAL                         R1 7
       31 GETTABLEKS                       R1 R1 K11 ["createPortal"]
       33 MOVE                             R2 R0
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K0 ["current"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

PROTO_21:
        0 DUPTABLE                         R0 K5 [{"root", "show", "hide", "resize", "moveTo"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["root"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["show"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["hide"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["resize"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["moveTo"]
       16 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R2 R1 K1 ["get"]
        6 CALL                             R2 1 1
        7 LOADK                            R5 K2 ["Panels"]
        8 NAMECALL                         R3 R2 K3 ["GetPluginComponent"]
       10 CALL                             R3 2 1
       11 LOADK                            R6 K4 ["PlaceManager"]
       12 NAMECALL                         R4 R2 K3 ["GetPluginComponent"]
       14 CALL                             R4 2 1
       15 NAMECALL                         R5 R2 K5 ["GetUri"]
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K0 ["use"]
       21 CALL                             R6 0 1
       22 NAMECALL                         R6 R6 K1 ["get"]
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K6 ["useState"]
       28 LOADB                            R8 0
       29 CALL                             R7 1 2
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K7 ["useRef"]
       33 LOADNIL                          R10
       34 CALL                             R9 1 1
       35 GETUPVAL                         R10 2
       36 GETTABLEKS                       R10 R10 K6 ["useState"]
       38 GETTABLEKS                       R11 R0 K8 ["InitialSize"]
       40 CALL                             R10 1 2
       41 GETUPVAL                         R12 2
       42 GETTABLEKS                       R12 R12 K6 ["useState"]
       44 GETTABLEKS                       R13 R0 K9 ["Position"]
       46 CALL                             R12 1 2
       47 GETUPVAL                         R14 2
       48 GETTABLEKS                       R14 R14 K10 ["useMemo"]
       50 DUPCLOSURE                       R15 K11 [PROTO_1]
       51 CAPTURE                          UPVAL U3
       52 NEWTABLE                         R16 0 0
       54 CALL                             R14 2 1
       55 GETTABLEKS                       R15 R9 K12 ["current"]
       57 JUMPIF                           R15 ; [+7]
       58 GETUPVAL                         R15 4
       59 MOVE                             R16 R2
       60 MOVE                             R17 R14
       61 MOVE                             R18 R0
       62 CALL                             R15 3 1
       63 SETTABLEKS                       R15 R9 K12 ["current"]
       65 GETUPVAL                         R15 2
       66 GETTABLEKS                       R15 R15 K7 ["useRef"]
       68 LOADNIL                          R16
       69 CALL                             R15 1 1
       70 GETUPVAL                         R16 2
       71 GETTABLEKS                       R16 R16 K13 ["useCallback"]
       73 NEWCLOSURE                       R17 P1
       74 CAPTURE                          VAL R15
       75 CAPTURE                          VAL R8
       76 NEWTABLE                         R18 0 0
       78 CALL                             R16 2 1
       79 GETUPVAL                         R17 2
       80 GETTABLEKS                       R17 R17 K13 ["useCallback"]
       82 NEWCLOSURE                       R18 P2
       83 CAPTURE                          VAL R16
       84 NEWTABLE                         R19 0 1
       86 MOVE                             R20 R16
       87 SETLIST                          R19 R20 1 [1]
       89 CALL                             R17 2 1
       90 GETUPVAL                         R18 2
       91 GETTABLEKS                       R18 R18 K13 ["useCallback"]
       93 NEWCLOSURE                       R19 P3
       94 CAPTURE                          VAL R16
       95 NEWTABLE                         R20 0 1
       97 MOVE                             R21 R16
       98 SETLIST                          R20 R21 1 [1]
      100 CALL                             R18 2 1
      101 GETUPVAL                         R19 5
      102 GETTABLEKS                       R19 R19 K14 ["useEventConnection"]
      104 GETTABLEKS                       R20 R4 K15 ["PlaceDocPanelClosed"]
      106 NEWCLOSURE                       R21 P4
      107 CAPTURE                          VAL R18
      108 NEWTABLE                         R22 0 1
      110 MOVE                             R23 R18
      111 SETLIST                          R22 R23 1 [1]
      113 CALL                             R19 3 0
      114 GETUPVAL                         R19 2
      115 GETTABLEKS                       R19 R19 K16 ["useEffect"]
      117 NEWCLOSURE                       R20 P5
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R9
      120 NEWTABLE                         R21 0 0
      122 CALL                             R19 2 0
      123 GETUPVAL                         R19 2
      124 GETTABLEKS                       R19 R19 K16 ["useEffect"]
      126 NEWCLOSURE                       R20 P6
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R7
      129 NEWTABLE                         R21 0 1
      131 MOVE                             R22 R7
      132 SETLIST                          R21 R22 1 [1]
      134 CALL                             R19 2 0
      135 GETUPVAL                         R19 2
      136 GETTABLEKS                       R19 R19 K16 ["useEffect"]
      138 NEWCLOSURE                       R20 P7
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R18
      141 NEWTABLE                         R21 0 1
      143 MOVE                             R22 R18
      144 SETLIST                          R21 R22 1 [1]
      146 CALL                             R19 2 0
      147 GETUPVAL                         R19 6
      148 GETTABLEKS                       R19 R19 K17 ["join"]
      150 MOVE                             R20 R5
      151 DUPTABLE                         R21 K20 [{["Category"] = "Panels", ["ItemId"]}]
      152 SETTABLEKS                       R14 R21 K19 ["ItemId"]
      154 CALL                             R19 2 1
      155 GETUPVAL                         R20 2
      156 GETTABLEKS                       R20 R20 K16 ["useEffect"]
      158 NEWCLOSURE                       R21 P8
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R10
      162 NEWTABLE                         R22 0 1
      164 MOVE                             R23 R10
      165 SETLIST                          R22 R23 1 [1]
      167 CALL                             R20 2 0
      168 GETUPVAL                         R20 7
      169 CALL                             R20 0 1
      170 GETUPVAL                         R21 2
      171 GETTABLEKS                       R21 R21 K16 ["useEffect"]
      173 NEWCLOSURE                       R22 P9
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R12
      178 NEWTABLE                         R23 0 2
      180 MOVE                             R24 R12
      181 MOVE                             R25 R20
      182 SETLIST                          R23 R24 2 [1]
      184 CALL                             R21 2 0
      185 GETUPVAL                         R21 2
      186 GETTABLEKS                       R21 R21 K13 ["useCallback"]
      188 NEWCLOSURE                       R22 P10
      189 CAPTURE                          VAL R11
      190 NEWTABLE                         R23 0 0
      192 CALL                             R21 2 1
      193 GETUPVAL                         R22 2
      194 GETTABLEKS                       R22 R22 K10 ["useMemo"]
      196 NEWCLOSURE                       R23 P11
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R9
      199 CAPTURE                          UPVAL U8
      200 CAPTURE                          UPVAL U9
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R0
      203 CAPTURE                          VAL R6
      204 CAPTURE                          UPVAL U10
      205 NEWTABLE                         R24 0 4
      207 MOVE                             R25 R7
      208 GETTABLEKS                       R26 R0 K21 ["Contents"]
      210 MOVE                             R27 R6
      211 MOVE                             R28 R21
      212 SETLIST                          R24 R25 4 [1]
      214 CALL                             R22 2 1
      215 GETUPVAL                         R23 2
      216 GETTABLEKS                       R23 R23 K10 ["useMemo"]
      218 NEWCLOSURE                       R24 P12
      219 CAPTURE                          VAL R22
      220 CAPTURE                          VAL R17
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R13
      224 NEWTABLE                         R25 0 3
      226 MOVE                             R26 R22
      227 MOVE                             R27 R17
      228 MOVE                             R28 R18
      229 SETLIST                          R25 R26 3 [1]
      231 CALL                             R23 2 -1
      232 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["ReactRoblox"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Packages"]
       45 GETTABLEKS                       R7 R7 K15 ["ReactUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K10 ["Packages"]
       52 GETTABLEKS                       R8 R8 K16 ["StudioFoundation"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K17 ["Src"]
       59 GETTABLEKS                       R9 R9 K18 ["Components"]
       61 GETTABLEKS                       R9 R9 K19 ["WidgetTrackingMainView"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R9 R8 K20 ["useMainViewWidgetUri"]
       66 GETTABLEKS                       R10 R3 K21 ["ContextServices"]
       68 GETTABLEKS                       R11 R10 K22 ["Design"]
       70 GETTABLEKS                       R12 R10 K23 ["Plugin"]
       72 GETTABLEKS                       R13 R7 K24 ["Util"]
       74 GETTABLEKS                       R13 R13 K25 ["StudioUri"]
       76 GETTABLEKS                       R14 R2 K26 ["View"]
       78 GETTABLEKS                       R15 R4 K27 ["createElement"]
       80 DUPCLOSURE                       R16 K28 [PROTO_0]
       81 DUPCLOSURE                       R17 K29 [PROTO_22]
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R16
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R15
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R5
       93 RETURN                           R17 1
