PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["AutomaticSize"], ["HorizontalAlignment"], ["LayoutOrder"], ["Size"], ["Spacing"] = 10}]
        5 GETIMPORT                        R4 K10 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R4 R3 K1 ["AutomaticSize"]
        9 GETIMPORT                        R4 K12 [Enum.HorizontalAlignment.Left]
       11 SETTABLEKS                       R4 R3 K2 ["HorizontalAlignment"]
       13 GETUPVAL                         R4 2
       14 NAMECALL                         R4 R4 K13 ["getNextOrder"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       19 GETIMPORT                        R4 K16 [UDim2.fromScale]
       21 LOADN                            R5 1
       22 LOADN                            R6 0
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K4 ["Size"]
       26 DUPTABLE                         R4 K18 [{"Content"}]
       27 SETTABLEKS                       R0 R4 K17 ["Content"]
       29 CALL                             R1 3 -1
       30 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = ""}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Text"}]
        2 SETTABLEKS                       R0 R3 K0 ["Text"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 MOVE                             R5 R1
        8 DUPTABLE                         R6 K4 [{"Text", "OnTextChanged"}]
        9 GETTABLEKS                       R8 R0 K6 ["state"]
       11 GETTABLEKS                       R8 R8 K2 ["Text"]
       13 ORK                              R7 R8 K5 [""]
       14 SETTABLEKS                       R7 R6 K2 ["Text"]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R7 R6 K3 ["OnTextChanged"]
       20 CALL                             R4 2 -1
       21 CALL                             R2 -1 -1
       22 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked Send"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K3 [{"ToolButtons", "SendButton"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["createElement"]
        9 GETUPVAL                         R6 1
       10 DUPTABLE                         R7 K10 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["Spacing"] = 8, ["VerticalAlignment"]}]
       11 GETIMPORT                        R8 K13 [Enum.AutomaticSize.X]
       13 SETTABLEKS                       R8 R7 K4 ["AutomaticSize"]
       15 GETIMPORT                        R8 K15 [Enum.HorizontalAlignment.Left]
       17 SETTABLEKS                       R8 R7 K5 ["HorizontalAlignment"]
       19 GETIMPORT                        R8 K18 [Enum.FillDirection.Horizontal]
       21 SETTABLEKS                       R8 R7 K6 ["Layout"]
       23 GETIMPORT                        R8 K20 [Enum.VerticalAlignment.Center]
       25 SETTABLEKS                       R8 R7 K9 ["VerticalAlignment"]
       27 DUPTABLE                         R8 K23 [{"InsertIcon", "FolderIcon"}]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K0 ["createElement"]
       31 GETUPVAL                         R10 2
       32 DUPTABLE                         R11 K28 [{["LayoutOrder"] = 1, ["Size"], ["Style"]}]
       33 GETIMPORT                        R12 K31 [UDim2.fromOffset]
       35 LOADN                            R13 16
       36 LOADN                            R14 16
       37 CALL                             R12 2 1
       38 SETTABLEKS                       R12 R11 K26 ["Size"]
       40 DUPTABLE                         R12 K35 [{["Color"], ["Image"] = "rbxasset://textures/TagEditor/Insert.png"}]
       41 GETIMPORT                        R13 K38 [Color3.new]
       43 LOADK                            R14 K39 [0.6]
       44 LOADK                            R15 K39 [0.6]
       45 LOADK                            R16 K39 [0.6]
       46 CALL                             R13 3 1
       47 SETTABLEKS                       R13 R12 K32 ["Color"]
       49 SETTABLEKS                       R12 R11 K27 ["Style"]
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K21 ["InsertIcon"]
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R9 R9 K0 ["createElement"]
       57 GETUPVAL                         R10 2
       58 DUPTABLE                         R11 K41 [{["LayoutOrder"] = 2, ["Size"], ["Style"]}]
       59 GETIMPORT                        R12 K31 [UDim2.fromOffset]
       61 LOADN                            R13 16
       62 LOADN                            R14 16
       63 CALL                             R12 2 1
       64 SETTABLEKS                       R12 R11 K26 ["Size"]
       66 DUPTABLE                         R12 K43 [{["Color"], ["Image"] = "rbxasset://textures/TagEditor/Folder.png"}]
       67 GETIMPORT                        R13 K38 [Color3.new]
       69 LOADK                            R14 K39 [0.6]
       70 LOADK                            R15 K39 [0.6]
       71 LOADK                            R16 K39 [0.6]
       72 CALL                             R13 3 1
       73 SETTABLEKS                       R13 R12 K32 ["Color"]
       75 SETTABLEKS                       R12 R11 K27 ["Style"]
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K22 ["FolderIcon"]
       80 CALL                             R5 3 1
       81 SETTABLEKS                       R5 R4 K1 ["ToolButtons"]
       83 GETUPVAL                         R5 0
       84 GETTABLEKS                       R5 R5 K0 ["createElement"]
       86 GETUPVAL                         R6 3
       87 DUPTABLE                         R7 K50 [{["AnchorPoint"], ["OnClick"], ["Position"], ["Size"], ["Style"] = "Round", ["Text"] = "Send"}]
       88 GETIMPORT                        R8 K52 [Vector2.new]
       90 LOADN                            R9 1
       91 LOADK                            R10 K53 [0.5]
       92 CALL                             R8 2 1
       93 SETTABLEKS                       R8 R7 K44 ["AnchorPoint"]
       95 DUPCLOSURE                       R8 K54 [PROTO_4]
       96 SETTABLEKS                       R8 R7 K45 ["OnClick"]
       98 GETIMPORT                        R8 K56 [UDim2.fromScale]
      100 LOADN                            R9 1
      101 LOADK                            R10 K53 [0.5]
      102 CALL                             R8 2 1
      103 SETTABLEKS                       R8 R7 K46 ["Position"]
      105 GETIMPORT                        R8 K31 [UDim2.fromOffset]
      107 LOADN                            R9 50
      108 LOADN                            R10 28
      109 CALL                             R8 2 1
      110 SETTABLEKS                       R8 R7 K26 ["Size"]
      112 CALL                             R5 2 1
      113 SETTABLEKS                       R5 R4 K2 ["SendButton"]
      115 CALL                             R1 3 -1
      116 RETURN                           R1 -1

PROTO_6:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["Focus lost"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["createElement"]
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K7 [{["Disabled"], ["PlaceholderText"] = "Hello, metaverse!", ["ShouldFocus"] = True, ["OnFocusLost"]}]
        6 GETTABLEKS                       R5 R0 K8 ["controls"]
        8 GETTABLEKS                       R5 R5 K9 ["isDisabled"]
       10 SETTABLEKS                       R5 R4 K1 ["Disabled"]
       12 DUPCLOSURE                       R5 K10 [PROTO_6]
       13 SETTABLEKS                       R5 R4 K6 ["OnFocusLost"]
       15 CALL                             R2 2 -1
       16 CALL                             R1 -1 -1
       17 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Pressed enter to Send"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [string.upper]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_10:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 [""] ; [+10]
        3 FASTCALL1                        TONUMBER R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [tonumber]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 LOADNIL                          R2
       13 JUMPIF                           R1 ; [+1]
       14 LOADK                            R2 K3 ["Must be a number"]
       15 RETURN                           R1 2

PROTO_11:
        0 NEWTABLE                         R1 0 3
        2 DUPTABLE                         R2 K4 [{[1] = "Red", ["Label"], ["Value"]}]
        3 LOADK                            R4 K5 ["Add Red to "]
        4 MOVE                             R5 R0
        5 CONCAT                           R3 R4 R5
        6 SETTABLEKS                       R3 R2 K2 ["Label"]
        8 MOVE                             R4 R0
        9 LOADK                            R5 K6 [": Red"]
       10 CONCAT                           R3 R4 R5
       11 SETTABLEKS                       R3 R2 K3 ["Value"]
       13 DUPTABLE                         R3 K8 [{[1] = "Green", ["Label"], ["Value"]}]
       14 LOADK                            R5 K9 ["Add Green to "]
       15 MOVE                             R6 R0
       16 CONCAT                           R4 R5 R6
       17 SETTABLEKS                       R4 R3 K2 ["Label"]
       19 MOVE                             R5 R0
       20 LOADK                            R6 K10 [": Green"]
       21 CONCAT                           R4 R5 R6
       22 SETTABLEKS                       R4 R3 K3 ["Value"]
       24 DUPTABLE                         R4 K12 [{[1] = "Blue", ["Label"], ["Value"]}]
       25 LOADK                            R6 K13 ["Add Blue to "]
       26 MOVE                             R7 R0
       27 CONCAT                           R5 R6 R7
       28 SETTABLEKS                       R5 R4 K2 ["Label"]
       30 MOVE                             R6 R0
       31 LOADK                            R7 K14 [": Blue"]
       32 CONCAT                           R5 R6 R7
       33 SETTABLEKS                       R5 R4 K3 ["Value"]
       35 SETLIST                          R1 R2 3 [1]
       37 RETURN                           R1 1

PROTO_12:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["OnEnter called"]
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
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["join"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R5 K10 ["Components"]
       31 GETTABLEKS                       R5 R5 K11 ["DEPRECATED_Button"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R6 K10 ["Components"]
       40 GETTABLEKS                       R6 R6 K12 ["Image"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K2 ["UI"]
       47 GETTABLEKS                       R7 R7 K10 ["Components"]
       49 GETTABLEKS                       R7 R7 K13 ["Pane"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R8 R0 K2 ["UI"]
       56 GETTABLEKS                       R8 R8 K10 ["Components"]
       58 GETTABLEKS                       R8 R8 K14 ["TextInput"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R9 R0 K15 ["Util"]
       65 GETTABLEKS                       R9 R9 K16 ["LayoutOrderIterator"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R9 R8 K17 ["new"]
       70 CALL                             R9 0 1
       71 DUPCLOSURE                       R10 K18 [PROTO_0]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R9
       75 GETTABLEKS                       R11 R1 K19 ["PureComponent"]
       77 LOADK                            R13 K20 ["ControlledInput"]
       78 NAMECALL                         R11 R11 K21 ["extend"]
       80 CALL                             R11 2 1
       81 DUPTABLE                         R12 K24 [{["Width"] = 300}]
       82 SETTABLEKS                       R12 R11 K25 ["defaultProps"]
       84 DUPCLOSURE                       R12 K26 [PROTO_1]
       85 SETTABLEKS                       R12 R11 K27 ["init"]
       87 DUPCLOSURE                       R12 K28 [PROTO_3]
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R3
       91 SETTABLEKS                       R12 R11 K29 ["render"]
       93 DUPCLOSURE                       R12 K30 [PROTO_5]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R4
       98 DUPTABLE                         R13 K33 [{"controls", "stories"}]
       99 DUPTABLE                         R14 K36 [{["isDisabled"] = False}]
      100 SETTABLEKS                       R14 R13 K31 ["controls"]
      102 NEWTABLE                         R14 0 11
      104 DUPTABLE                         R15 K40 [{["name"] = "Default", ["story"]}]
      105 DUPCLOSURE                       R16 K41 [PROTO_7]
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R11
      109 SETTABLEKS                       R16 R15 K39 ["story"]
      111 DUPTABLE                         R16 K43 [{["name"] = "Standard Styles", ["story"]}]
      112 GETTABLEKS                       R17 R1 K44 ["createElement"]
      114 MOVE                             R18 R6
      115 DUPTABLE                         R19 K49 [{["AutomaticSize"], ["Layout"], ["Spacing"] = 10}]
      116 GETIMPORT                        R20 K52 [Enum.AutomaticSize.Y]
      118 SETTABLEKS                       R20 R19 K45 ["AutomaticSize"]
      120 GETIMPORT                        R20 K55 [Enum.FillDirection.Vertical]
      122 SETTABLEKS                       R20 R19 K46 ["Layout"]
      124 DUPTABLE                         R20 K59 [{"Box", "RoundBox", "BorderBox"}]
      125 MOVE                             R21 R10
      126 GETTABLEKS                       R22 R1 K44 ["createElement"]
      128 MOVE                             R23 R11
      129 DUPTABLE                         R24 K63 [{["PlaceholderText"] = "Box style", ["Style"] = "Box"}]
      130 CALL                             R22 2 -1
      131 CALL                             R21 -1 1
      132 SETTABLEKS                       R21 R20 K56 ["Box"]
      134 MOVE                             R21 R10
      135 GETTABLEKS                       R22 R1 K44 ["createElement"]
      137 MOVE                             R23 R11
      138 DUPTABLE                         R24 K65 [{["PlaceholderText"] = "RoundBox style", ["Style"] = "RoundBox"}]
      139 CALL                             R22 2 -1
      140 CALL                             R21 -1 1
      141 SETTABLEKS                       R21 R20 K57 ["RoundBox"]
      143 MOVE                             R21 R10
      144 GETTABLEKS                       R22 R1 K44 ["createElement"]
      146 MOVE                             R23 R11
      147 DUPTABLE                         R24 K67 [{["PlaceholderText"] = "BorderBox style", ["Style"] = "BorderBox"}]
      148 CALL                             R22 2 -1
      149 CALL                             R21 -1 1
      150 SETTABLEKS                       R21 R20 K58 ["BorderBox"]
      152 CALL                             R17 3 1
      153 SETTABLEKS                       R17 R16 K39 ["story"]
      155 DUPTABLE                         R17 K69 [{["name"] = "Bottom Text", ["story"]}]
      156 MOVE                             R18 R10
      157 GETTABLEKS                       R19 R1 K44 ["createElement"]
      159 MOVE                             R20 R11
      160 DUPTABLE                         R21 K72 [{["BottomText"] = "Username or email address"}]
      161 CALL                             R19 2 -1
      162 CALL                             R18 -1 1
      163 SETTABLEKS                       R18 R17 K39 ["story"]
      165 DUPTABLE                         R18 K76 [{["name"] = "Error Text", ["summary"] = "Render component with error border color and error text", ["story"]}]
      166 MOVE                             R19 R10
      167 GETTABLEKS                       R20 R1 K44 ["createElement"]
      169 MOVE                             R21 R11
      170 DUPTABLE                         R22 K79 [{["ErrorText"] = "Invalid input"}]
      171 CALL                             R20 2 -1
      172 CALL                             R19 -1 1
      173 SETTABLEKS                       R19 R18 K39 ["story"]
      175 DUPTABLE                         R19 K82 [{["name"] = "Custom Components", ["summary"] = "Render leading, trailing, and bottom components", ["story"]}]
      176 GETTABLEKS                       R20 R1 K44 ["createElement"]
      178 MOVE                             R21 R6
      179 DUPTABLE                         R22 K49 [{["AutomaticSize"], ["Layout"], ["Spacing"] = 10}]
      180 GETIMPORT                        R23 K52 [Enum.AutomaticSize.Y]
      182 SETTABLEKS                       R23 R22 K45 ["AutomaticSize"]
      184 GETIMPORT                        R23 K55 [Enum.FillDirection.Vertical]
      186 SETTABLEKS                       R23 R22 K46 ["Layout"]
      188 DUPTABLE                         R23 K86 [{"Leading", "Trailing", "Bottom"}]
      189 MOVE                             R24 R10
      190 GETTABLEKS                       R25 R1 K44 ["createElement"]
      192 MOVE                             R26 R11
      193 DUPTABLE                         R27 K90 [{["LeadingComponent"], ["LeadingComponentProps"], ["PlaceholderText"] = "Search..."}]
      194 SETTABLEKS                       R5 R27 K87 ["LeadingComponent"]
      196 DUPTABLE                         R28 K92 [{"Size", "Style"}]
      197 GETIMPORT                        R29 K95 [UDim2.fromOffset]
      199 LOADN                            R30 16
      200 LOADN                            R31 16
      201 CALL                             R29 2 1
      202 SETTABLEKS                       R29 R28 K91 ["Size"]
      204 DUPTABLE                         R29 K98 [{["Color"], ["Image"] = "rbxasset://textures/DeveloperFramework/StudioTheme/search_16.png"}]
      205 GETIMPORT                        R30 K100 [Color3.new]
      207 LOADK                            R31 K101 [0.6]
      208 LOADK                            R32 K101 [0.6]
      209 LOADK                            R33 K101 [0.6]
      210 CALL                             R30 3 1
      211 SETTABLEKS                       R30 R29 K96 ["Color"]
      213 SETTABLEKS                       R29 R28 K62 ["Style"]
      215 SETTABLEKS                       R28 R27 K88 ["LeadingComponentProps"]
      217 CALL                             R25 2 -1
      218 CALL                             R24 -1 1
      219 SETTABLEKS                       R24 R23 K83 ["Leading"]
      221 MOVE                             R24 R10
      222 GETTABLEKS                       R25 R1 K44 ["createElement"]
      224 MOVE                             R26 R11
      225 DUPTABLE                         R27 K104 [{"TrailingComponent", "TrailingComponentProps"}]
      226 SETTABLEKS                       R5 R27 K102 ["TrailingComponent"]
      228 DUPTABLE                         R28 K92 [{"Size", "Style"}]
      229 GETIMPORT                        R29 K95 [UDim2.fromOffset]
      231 LOADN                            R30 13
      232 LOADN                            R31 13
      233 CALL                             R29 2 1
      234 SETTABLEKS                       R29 R28 K91 ["Size"]
      236 DUPTABLE                         R29 K106 [{["Color"], ["Image"] = "rbxasset://textures/DeveloperFramework/StudioTheme/clear.png"}]
      237 GETIMPORT                        R30 K100 [Color3.new]
      239 LOADK                            R31 K101 [0.6]
      240 LOADK                            R32 K101 [0.6]
      241 LOADK                            R33 K101 [0.6]
      242 CALL                             R30 3 1
      243 SETTABLEKS                       R30 R29 K96 ["Color"]
      245 SETTABLEKS                       R29 R28 K62 ["Style"]
      247 SETTABLEKS                       R28 R27 K103 ["TrailingComponentProps"]
      249 CALL                             R25 2 -1
      250 CALL                             R24 -1 1
      251 SETTABLEKS                       R24 R23 K84 ["Trailing"]
      253 MOVE                             R24 R10
      254 GETTABLEKS                       R25 R1 K44 ["createElement"]
      256 MOVE                             R26 R11
      257 DUPTABLE                         R27 K113 [{["BottomComponent"], ["BottomComponentProps"], ["MultiLine"] = True, ["OnEnter"], ["Size"], ["PlaceholderText"] = "Enter a message"}]
      258 SETTABLEKS                       R12 R27 K107 ["BottomComponent"]
      260 DUPTABLE                         R28 K114 [{"Size"}]
      261 GETIMPORT                        R29 K115 [UDim2.new]
      263 LOADN                            R30 1
      264 LOADN                            R31 0
      265 LOADN                            R32 0
      266 LOADN                            R33 32
      267 CALL                             R29 4 1
      268 SETTABLEKS                       R29 R28 K91 ["Size"]
      270 SETTABLEKS                       R28 R27 K108 ["BottomComponentProps"]
      272 DUPCLOSURE                       R28 K116 [PROTO_8]
      273 SETTABLEKS                       R28 R27 K111 ["OnEnter"]
      275 GETIMPORT                        R28 K95 [UDim2.fromOffset]
      277 LOADN                            R29 300
      278 LOADN                            R30 120
      279 CALL                             R28 2 1
      280 SETTABLEKS                       R28 R27 K91 ["Size"]
      282 CALL                             R25 2 -1
      283 CALL                             R24 -1 1
      284 SETTABLEKS                       R24 R23 K85 ["Bottom"]
      286 CALL                             R20 3 1
      287 SETTABLEKS                       R20 R19 K39 ["story"]
      289 DUPTABLE                         R20 K119 [{["name"] = "Formatting", ["summary"] = "Convert input to uppercase", ["story"]}]
      290 MOVE                             R21 R10
      291 GETTABLEKS                       R22 R1 K44 ["createElement"]
      293 MOVE                             R23 R11
      294 DUPTABLE                         R24 K121 [{"OnFormatText"}]
      295 DUPCLOSURE                       R25 K122 [PROTO_9]
      296 SETTABLEKS                       R25 R24 K120 ["OnFormatText"]
      298 CALL                             R22 2 -1
      299 CALL                             R21 -1 1
      300 SETTABLEKS                       R21 R20 K39 ["story"]
      302 DUPTABLE                         R21 K125 [{["name"] = "Validation", ["summary"] = "Validate input and render error style and text if invalid", ["story"]}]
      303 MOVE                             R22 R10
      304 GETTABLEKS                       R23 R1 K44 ["createElement"]
      306 MOVE                             R24 R11
      307 DUPTABLE                         R25 K128 [{["OnValidateText"], ["PlaceholderText"] = "Enter a number"}]
      308 DUPCLOSURE                       R26 K129 [PROTO_10]
      309 SETTABLEKS                       R26 R25 K126 ["OnValidateText"]
      311 CALL                             R23 2 -1
      312 CALL                             R22 -1 1
      313 SETTABLEKS                       R22 R21 K39 ["story"]
      315 DUPTABLE                         R22 K132 [{["name"] = "Max Length", ["summary"] = "Provide a max length for the input", ["story"]}]
      316 MOVE                             R23 R10
      317 GETTABLEKS                       R24 R1 K44 ["createElement"]
      319 MOVE                             R25 R11
      320 DUPTABLE                         R26 K136 [{["PlaceholderText"] = "Enter text", ["MaxLength"] = 20}]
      321 CALL                             R24 2 -1
      322 CALL                             R23 -1 1
      323 SETTABLEKS                       R23 R22 K39 ["story"]
      325 DUPTABLE                         R23 K138 [{["name"] = "MultiLine", ["summary"] = "A multiline text input with max length", ["story"]}]
      326 MOVE                             R24 R10
      327 GETTABLEKS                       R25 R1 K44 ["createElement"]
      329 MOVE                             R26 R11
      330 DUPTABLE                         R27 K140 [{["PlaceholderText"] = "Enter text", ["MaxLength"] = 200, ["MultiLine"] = True, ["Size"]}]
      331 GETIMPORT                        R28 K95 [UDim2.fromOffset]
      333 LOADN                            R29 300
      334 LOADN                            R30 200
      335 CALL                             R28 2 1
      336 SETTABLEKS                       R28 R27 K91 ["Size"]
      338 CALL                             R25 2 -1
      339 CALL                             R24 -1 1
      340 SETTABLEKS                       R24 R23 K39 ["story"]
      342 DUPTABLE                         R24 K143 [{["name"] = "Autocomplete", ["summary"] = "Show an autocomplete dropdown of options when typing", ["story"]}]
      343 MOVE                             R25 R10
      344 GETTABLEKS                       R26 R1 K44 ["createElement"]
      346 MOVE                             R27 R11
      347 DUPTABLE                         R28 K145 [{["GetAutocompleteItems"], ["PlaceholderText"] = "Enter text"}]
      348 DUPCLOSURE                       R29 K146 [PROTO_11]
      349 SETTABLEKS                       R29 R28 K144 ["GetAutocompleteItems"]
      351 CALL                             R26 2 -1
      352 CALL                             R25 -1 1
      353 SETTABLEKS                       R25 R24 K39 ["story"]
      355 DUPTABLE                         R25 K148 [{["name"] = "OnEnter", ["summary"] = "Prints to the console when you press enter", ["story"]}]
      356 MOVE                             R26 R10
      357 GETTABLEKS                       R27 R1 K44 ["createElement"]
      359 MOVE                             R28 R11
      360 DUPTABLE                         R29 K149 [{["MultiLine"] = True, ["OnEnter"]}]
      361 DUPCLOSURE                       R30 K150 [PROTO_12]
      362 SETTABLEKS                       R30 R29 K111 ["OnEnter"]
      364 CALL                             R27 2 -1
      365 CALL                             R26 -1 1
      366 SETTABLEKS                       R26 R25 K39 ["story"]
      368 SETLIST                          R14 R15 11 [1]
      370 SETTABLEKS                       R14 R13 K32 ["stories"]
      372 RETURN                           R13 1
