PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

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
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Tooltip"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["DEPRECATED_Button"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K8 ["Components"]
       40 GETTABLEKS                       R5 R5 K11 ["LinkText"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R6 R0 K2 ["UI"]
       47 GETTABLEKS                       R6 R6 K8 ["Components"]
       49 GETTABLEKS                       R6 R6 K12 ["Pane"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K6 [require]
       54 GETTABLEKS                       R7 R0 K2 ["UI"]
       56 GETTABLEKS                       R7 R7 K8 ["Components"]
       58 GETTABLEKS                       R7 R7 K13 ["TextLabel"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K6 [require]
       63 GETTABLEKS                       R8 R0 K2 ["UI"]
       65 GETTABLEKS                       R8 R8 K8 ["Components"]
       67 GETTABLEKS                       R8 R8 K14 ["Slider"]
       69 CALL                             R7 1 1
       70 DUPTABLE                         R8 K16 [{"stories"}]
       71 NEWTABLE                         R9 0 5
       73 DUPTABLE                         R10 K20 [{["name"] = "For label", ["story"]}]
       74 GETTABLEKS                       R11 R1 K21 ["createElement"]
       76 MOVE                             R12 R6
       77 DUPTABLE                         R13 K25 [{["Text"] = "Hover over this text", ["Size"]}]
       78 GETIMPORT                        R14 K28 [UDim2.new]
       80 LOADN                            R15 1
       81 LOADN                            R16 0
       82 LOADN                            R17 0
       83 LOADN                            R18 20
       84 CALL                             R14 4 1
       85 SETTABLEKS                       R14 R13 K24 ["Size"]
       87 DUPTABLE                         R14 K29 [{"Tooltip"}]
       88 GETTABLEKS                       R15 R1 K21 ["createElement"]
       90 MOVE                             R16 R2
       91 DUPTABLE                         R17 K31 [{["Text"] = "An example tooltip"}]
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K9 ["Tooltip"]
       95 CALL                             R11 3 1
       96 SETTABLEKS                       R11 R10 K19 ["story"]
       98 DUPTABLE                         R11 K33 [{["name"] = "For button", ["story"]}]
       99 GETTABLEKS                       R12 R1 K21 ["createElement"]
      101 MOVE                             R13 R3
      102 DUPTABLE                         R14 K38 [{["Text"] = "Hover over this button", ["Size"], ["Style"] = "Round", ["OnClick"]}]
      103 GETIMPORT                        R15 K28 [UDim2.new]
      105 LOADN                            R16 1
      106 LOADN                            R17 0
      107 LOADN                            R18 0
      108 LOADN                            R19 32
      109 CALL                             R15 4 1
      110 SETTABLEKS                       R15 R14 K24 ["Size"]
      112 DUPCLOSURE                       R15 K39 [PROTO_0]
      113 SETTABLEKS                       R15 R14 K37 ["OnClick"]
      115 DUPTABLE                         R15 K29 [{"Tooltip"}]
      116 GETTABLEKS                       R16 R1 K21 ["createElement"]
      118 MOVE                             R17 R2
      119 DUPTABLE                         R18 K41 [{["Text"] = "Some example which is really rather long indeed!"}]
      120 CALL                             R16 2 1
      121 SETTABLEKS                       R16 R15 K9 ["Tooltip"]
      123 CALL                             R12 3 1
      124 SETTABLEKS                       R12 R11 K19 ["story"]
      126 DUPTABLE                         R12 K43 [{["name"] = "For automatic size child", ["story"]}]
      127 GETTABLEKS                       R13 R1 K21 ["createElement"]
      129 MOVE                             R14 R2
      130 DUPTABLE                         R15 K45 [{["Text"] = "Some example which is really rather long indeed!", ["Child"]}]
      131 GETTABLEKS                       R16 R1 K21 ["createElement"]
      133 MOVE                             R17 R5
      134 DUPTABLE                         R18 K49 [{["Style"] = "BorderBox", ["Padding"] = 10}]
      135 DUPTABLE                         R19 K50 [{"Child"}]
      136 GETTABLEKS                       R20 R1 K21 ["createElement"]
      138 MOVE                             R21 R6
      139 DUPTABLE                         R22 K53 [{["Text"] = "Hover over this pane!", ["AutomaticSize"]}]
      140 GETIMPORT                        R23 K56 [Enum.AutomaticSize.XY]
      142 SETTABLEKS                       R23 R22 K52 ["AutomaticSize"]
      144 CALL                             R20 2 1
      145 SETTABLEKS                       R20 R19 K44 ["Child"]
      147 CALL                             R16 3 1
      148 SETTABLEKS                       R16 R15 K44 ["Child"]
      150 CALL                             R13 2 1
      151 SETTABLEKS                       R13 R12 K19 ["story"]
      153 DUPTABLE                         R13 K58 [{["name"] = "Slider With Tooltip", ["story"]}]
      154 GETTABLEKS                       R14 R1 K21 ["createElement"]
      156 MOVE                             R15 R2
      157 DUPTABLE                         R16 K59 [{["Text"] = "An example tooltip", ["Child"]}]
      158 GETTABLEKS                       R17 R1 K21 ["createElement"]
      160 MOVE                             R18 R7
      161 DUPTABLE                         R19 K66 [{["Size"], ["Min"] = 0, ["Max"] = 10, ["Value"] = 5, ["OnValueChanged"]}]
      162 GETIMPORT                        R20 K28 [UDim2.new]
      164 LOADN                            R21 0
      165 LOADN                            R22 200
      166 LOADN                            R23 0
      167 LOADN                            R24 20
      168 CALL                             R20 4 1
      169 SETTABLEKS                       R20 R19 K24 ["Size"]
      171 DUPCLOSURE                       R20 K67 [PROTO_1]
      172 SETTABLEKS                       R20 R19 K65 ["OnValueChanged"]
      174 CALL                             R17 2 1
      175 SETTABLEKS                       R17 R16 K44 ["Child"]
      177 CALL                             R14 2 1
      178 SETTABLEKS                       R14 R13 K19 ["story"]
      180 DUPTABLE                         R14 K69 [{["name"] = "Tooltip with Custom Content", ["story"]}]
      181 GETTABLEKS                       R15 R1 K21 ["createElement"]
      183 MOVE                             R16 R6
      184 DUPTABLE                         R17 K70 [{["AutomaticSize"], ["Size"], ["Text"] = "Hover over this text"}]
      185 GETIMPORT                        R18 K72 [Enum.AutomaticSize.Y]
      187 SETTABLEKS                       R18 R17 K52 ["AutomaticSize"]
      189 GETIMPORT                        R18 K28 [UDim2.new]
      191 LOADN                            R19 1
      192 LOADN                            R20 0
      193 LOADN                            R21 0
      194 LOADN                            R22 0
      195 CALL                             R18 4 1
      196 SETTABLEKS                       R18 R17 K24 ["Size"]
      198 DUPTABLE                         R18 K29 [{"Tooltip"}]
      199 GETTABLEKS                       R19 R1 K21 ["createElement"]
      201 MOVE                             R20 R2
      202 DUPTABLE                         R21 K75 [{"Content", "ContentExtents"}]
      203 GETTABLEKS                       R22 R1 K21 ["createElement"]
      205 MOVE                             R23 R5
      206 DUPTABLE                         R24 K80 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["Spacing"] = 6}]
      207 GETIMPORT                        R25 K72 [Enum.AutomaticSize.Y]
      209 SETTABLEKS                       R25 R24 K52 ["AutomaticSize"]
      211 GETIMPORT                        R25 K82 [Enum.HorizontalAlignment.Left]
      213 SETTABLEKS                       R25 R24 K76 ["HorizontalAlignment"]
      215 GETIMPORT                        R25 K85 [Enum.FillDirection.Vertical]
      217 SETTABLEKS                       R25 R24 K77 ["Layout"]
      219 DUPTABLE                         R25 K86 [{"TextLabel", "LinkText"}]
      220 GETTABLEKS                       R26 R1 K21 ["createElement"]
      222 MOVE                             R27 R6
      223 DUPTABLE                         R28 K93 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"], ["Text"] = "An example tooltip with text and a link", ["TextWrapped"] = True, ["TextXAlignment"]}]
      224 GETIMPORT                        R29 K72 [Enum.AutomaticSize.Y]
      226 SETTABLEKS                       R29 R28 K52 ["AutomaticSize"]
      228 GETIMPORT                        R29 K95 [UDim2.fromScale]
      230 LOADN                            R30 1
      231 LOADN                            R31 0
      232 CALL                             R29 2 1
      233 SETTABLEKS                       R29 R28 K24 ["Size"]
      235 GETIMPORT                        R29 K96 [Enum.TextXAlignment.Left]
      237 SETTABLEKS                       R29 R28 K92 ["TextXAlignment"]
      239 CALL                             R26 2 1
      240 SETTABLEKS                       R26 R25 K13 ["TextLabel"]
      242 GETTABLEKS                       R26 R1 K21 ["createElement"]
      244 MOVE                             R27 R4
      245 DUPTABLE                         R28 K99 [{["LayoutOrder"] = 2, ["Text"] = "Click me", ["OnClick"]}]
      246 DUPCLOSURE                       R29 K100 [PROTO_2]
      247 SETTABLEKS                       R29 R28 K37 ["OnClick"]
      249 CALL                             R26 2 1
      250 SETTABLEKS                       R26 R25 K11 ["LinkText"]
      252 CALL                             R22 3 1
      253 SETTABLEKS                       R22 R21 K73 ["Content"]
      255 GETIMPORT                        R22 K102 [Vector2.new]
      257 LOADN                            R23 180
      258 LOADN                            R24 64
      259 CALL                             R22 2 1
      260 SETTABLEKS                       R22 R21 K74 ["ContentExtents"]
      262 CALL                             R19 2 1
      263 SETTABLEKS                       R19 R18 K9 ["Tooltip"]
      265 CALL                             R15 3 1
      266 SETTABLEKS                       R15 R14 K19 ["story"]
      268 SETLIST                          R9 R10 5 [1]
      270 SETTABLEKS                       R9 R8 K15 ["stories"]
      272 RETURN                           R8 1
