PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "Size", "Spacing"}]
        5 GETIMPORT                        R4 K9 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R4 R3 K1 ["AutomaticSize"]
        9 GETIMPORT                        R4 K11 [Enum.HorizontalAlignment.Left]
       11 SETTABLEKS                       R4 R3 K2 ["HorizontalAlignment"]
       13 GETUPVAL                         R4 2
       14 NAMECALL                         R4 R4 K12 ["getNextOrder"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       19 GETIMPORT                        R4 K15 [UDim2.fromScale]
       21 LOADN                            R5 1
       22 LOADN                            R6 0
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K4 ["Size"]
       26 LOADN                            R4 10
       27 SETTABLEKS                       R4 R3 K5 ["Spacing"]
       29 DUPTABLE                         R4 K17 [{"Content"}]
       30 SETTABLEKS                       R0 R4 K16 ["Content"]
       32 CALL                             R1 3 -1
       33 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"Text"}]
        1 LOADK                            R2 K2 [""]
        2 SETTABLEKS                       R2 R1 K0 ["Text"]
        4 SETTABLEKS                       R1 R0 K3 ["state"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Text"}]
        2 SETTABLEKS                       R0 R3 K0 ["Text"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 MOVE                             R5 R1
        8 DUPTABLE                         R6 K4 [{"Text", "OnTextChanged"}]
        9 GETTABLEKS                       R9 R0 K6 ["state"]
       11 GETTABLEKS                       R8 R9 K2 ["Text"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 DUPTABLE                         R4 K3 [{"ToolButtons", "SendButton"}]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["createElement"]
        9 GETUPVAL                         R6 1
       10 DUPTABLE                         R7 K9 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Spacing", "VerticalAlignment"}]
       11 GETIMPORT                        R8 K12 [Enum.AutomaticSize.X]
       13 SETTABLEKS                       R8 R7 K4 ["AutomaticSize"]
       15 GETIMPORT                        R8 K14 [Enum.HorizontalAlignment.Left]
       17 SETTABLEKS                       R8 R7 K5 ["HorizontalAlignment"]
       19 GETIMPORT                        R8 K17 [Enum.FillDirection.Horizontal]
       21 SETTABLEKS                       R8 R7 K6 ["Layout"]
       23 LOADN                            R8 8
       24 SETTABLEKS                       R8 R7 K7 ["Spacing"]
       26 GETIMPORT                        R8 K19 [Enum.VerticalAlignment.Center]
       28 SETTABLEKS                       R8 R7 K8 ["VerticalAlignment"]
       30 DUPTABLE                         R8 K22 [{"InsertIcon", "FolderIcon"}]
       31 GETUPVAL                         R10 0
       32 GETTABLEKS                       R9 R10 K0 ["createElement"]
       34 GETUPVAL                         R10 2
       35 DUPTABLE                         R11 K26 [{"LayoutOrder", "Size", "Style"}]
       36 LOADN                            R12 1
       37 SETTABLEKS                       R12 R11 K23 ["LayoutOrder"]
       39 GETIMPORT                        R12 K29 [UDim2.fromOffset]
       41 LOADN                            R13 16
       42 LOADN                            R14 16
       43 CALL                             R12 2 1
       44 SETTABLEKS                       R12 R11 K24 ["Size"]
       46 DUPTABLE                         R12 K32 [{"Color", "Image"}]
       47 GETIMPORT                        R13 K35 [Color3.new]
       49 LOADK                            R14 K36 [0.6]
       50 LOADK                            R15 K36 [0.6]
       51 LOADK                            R16 K36 [0.6]
       52 CALL                             R13 3 1
       53 SETTABLEKS                       R13 R12 K30 ["Color"]
       55 LOADK                            R13 K37 ["rbxasset://textures/TagEditor/Insert.png"]
       56 SETTABLEKS                       R13 R12 K31 ["Image"]
       58 SETTABLEKS                       R12 R11 K25 ["Style"]
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K20 ["InsertIcon"]
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R9 R10 K0 ["createElement"]
       66 GETUPVAL                         R10 2
       67 DUPTABLE                         R11 K26 [{"LayoutOrder", "Size", "Style"}]
       68 LOADN                            R12 2
       69 SETTABLEKS                       R12 R11 K23 ["LayoutOrder"]
       71 GETIMPORT                        R12 K29 [UDim2.fromOffset]
       73 LOADN                            R13 16
       74 LOADN                            R14 16
       75 CALL                             R12 2 1
       76 SETTABLEKS                       R12 R11 K24 ["Size"]
       78 DUPTABLE                         R12 K32 [{"Color", "Image"}]
       79 GETIMPORT                        R13 K35 [Color3.new]
       81 LOADK                            R14 K36 [0.6]
       82 LOADK                            R15 K36 [0.6]
       83 LOADK                            R16 K36 [0.6]
       84 CALL                             R13 3 1
       85 SETTABLEKS                       R13 R12 K30 ["Color"]
       87 LOADK                            R13 K38 ["rbxasset://textures/TagEditor/Folder.png"]
       88 SETTABLEKS                       R13 R12 K31 ["Image"]
       90 SETTABLEKS                       R12 R11 K25 ["Style"]
       92 CALL                             R9 2 1
       93 SETTABLEKS                       R9 R8 K21 ["FolderIcon"]
       95 CALL                             R5 3 1
       96 SETTABLEKS                       R5 R4 K1 ["ToolButtons"]
       98 GETUPVAL                         R6 0
       99 GETTABLEKS                       R5 R6 K0 ["createElement"]
      101 GETUPVAL                         R6 3
      102 DUPTABLE                         R7 K43 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "Text"}]
      103 GETIMPORT                        R8 K45 [Vector2.new]
      105 LOADN                            R9 1
      106 LOADK                            R10 K46 [0.5]
      107 CALL                             R8 2 1
      108 SETTABLEKS                       R8 R7 K39 ["AnchorPoint"]
      110 DUPCLOSURE                       R8 K47 [PROTO_4]
      111 SETTABLEKS                       R8 R7 K40 ["OnClick"]
      113 GETIMPORT                        R8 K49 [UDim2.fromScale]
      115 LOADN                            R9 1
      116 LOADK                            R10 K46 [0.5]
      117 CALL                             R8 2 1
      118 SETTABLEKS                       R8 R7 K41 ["Position"]
      120 GETIMPORT                        R8 K29 [UDim2.fromOffset]
      122 LOADN                            R9 50
      123 LOADN                            R10 28
      124 CALL                             R8 2 1
      125 SETTABLEKS                       R8 R7 K24 ["Size"]
      127 LOADK                            R8 K50 ["Round"]
      128 SETTABLEKS                       R8 R7 K25 ["Style"]
      130 LOADK                            R8 K51 ["Send"]
      131 SETTABLEKS                       R8 R7 K42 ["Text"]
      133 CALL                             R5 2 1
      134 SETTABLEKS                       R5 R4 K2 ["SendButton"]
      136 CALL                             R1 3 -1
      137 RETURN                           R1 -1

PROTO_6:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["Focus lost"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["createElement"]
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K5 [{"Disabled", "PlaceholderText", "ShouldFocus", "OnFocusLost"}]
        6 GETTABLEKS                       R6 R0 K6 ["controls"]
        8 GETTABLEKS                       R5 R6 K7 ["isDisabled"]
       10 SETTABLEKS                       R5 R4 K1 ["Disabled"]
       12 LOADK                            R5 K8 ["Hello, metaverse!"]
       13 SETTABLEKS                       R5 R4 K2 ["PlaceholderText"]
       15 LOADB                            R5 1
       16 SETTABLEKS                       R5 R4 K3 ["ShouldFocus"]
       18 DUPCLOSURE                       R5 K9 [PROTO_6]
       19 SETTABLEKS                       R5 R4 K4 ["OnFocusLost"]
       21 CALL                             R2 2 -1
       22 CALL                             R1 -1 -1
       23 RETURN                           R1 -1

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
        2 DUPTABLE                         R2 K3 [{"Id", "Label", "Value"}]
        3 LOADK                            R3 K4 ["Red"]
        4 SETTABLEKS                       R3 R2 K0 ["Id"]
        6 LOADK                            R4 K5 ["Add Red to "]
        7 MOVE                             R5 R0
        8 CONCAT                           R3 R4 R5
        9 SETTABLEKS                       R3 R2 K1 ["Label"]
       11 MOVE                             R4 R0
       12 LOADK                            R5 K6 [": Red"]
       13 CONCAT                           R3 R4 R5
       14 SETTABLEKS                       R3 R2 K2 ["Value"]
       16 DUPTABLE                         R3 K3 [{"Id", "Label", "Value"}]
       17 LOADK                            R4 K7 ["Green"]
       18 SETTABLEKS                       R4 R3 K0 ["Id"]
       20 LOADK                            R5 K8 ["Add Green to "]
       21 MOVE                             R6 R0
       22 CONCAT                           R4 R5 R6
       23 SETTABLEKS                       R4 R3 K1 ["Label"]
       25 MOVE                             R5 R0
       26 LOADK                            R6 K9 [": Green"]
       27 CONCAT                           R4 R5 R6
       28 SETTABLEKS                       R4 R3 K2 ["Value"]
       30 DUPTABLE                         R4 K3 [{"Id", "Label", "Value"}]
       31 LOADK                            R5 K10 ["Blue"]
       32 SETTABLEKS                       R5 R4 K0 ["Id"]
       34 LOADK                            R6 K11 ["Add Blue to "]
       35 MOVE                             R7 R0
       36 CONCAT                           R5 R6 R7
       37 SETTABLEKS                       R5 R4 K1 ["Label"]
       39 MOVE                             R6 R0
       40 LOADK                            R7 K12 [": Blue"]
       41 CONCAT                           R5 R6 R7
       42 SETTABLEKS                       R5 R4 K2 ["Value"]
       44 SETLIST                          R1 R2 3 [1]
       46 RETURN                           R1 1

PROTO_12:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["OnEnter called"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["join"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R7 R0 K2 ["UI"]
       29 GETTABLEKS                       R6 R7 K10 ["Components"]
       31 GETTABLEKS                       R5 R6 K11 ["DEPRECATED_Button"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R8 R0 K2 ["UI"]
       38 GETTABLEKS                       R7 R8 K10 ["Components"]
       40 GETTABLEKS                       R6 R7 K12 ["Image"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R9 R0 K2 ["UI"]
       47 GETTABLEKS                       R8 R9 K10 ["Components"]
       49 GETTABLEKS                       R7 R8 K13 ["Pane"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R10 R0 K2 ["UI"]
       56 GETTABLEKS                       R9 R10 K10 ["Components"]
       58 GETTABLEKS                       R8 R9 K14 ["TextInput"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R10 R0 K15 ["Util"]
       65 GETTABLEKS                       R9 R10 K16 ["LayoutOrderIterator"]
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
       81 DUPTABLE                         R12 K23 [{"Width"}]
       82 LOADN                            R13 44
       83 SETTABLEKS                       R13 R12 K22 ["Width"]
       85 SETTABLEKS                       R12 R11 K24 ["defaultProps"]
       87 DUPCLOSURE                       R12 K25 [PROTO_1]
       88 SETTABLEKS                       R12 R11 K26 ["init"]
       90 DUPCLOSURE                       R12 K27 [PROTO_3]
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R12 R11 K28 ["render"]
       96 DUPCLOSURE                       R12 K29 [PROTO_5]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R4
      101 DUPTABLE                         R13 K32 [{"controls", "stories"}]
      102 DUPTABLE                         R14 K34 [{"isDisabled"}]
      103 LOADB                            R15 0
      104 SETTABLEKS                       R15 R14 K33 ["isDisabled"]
      106 SETTABLEKS                       R14 R13 K30 ["controls"]
      108 NEWTABLE                         R14 0 11
      110 DUPTABLE                         R15 K37 [{"name", "story"}]
      111 LOADK                            R16 K38 ["Default"]
      112 SETTABLEKS                       R16 R15 K35 ["name"]
      114 DUPCLOSURE                       R16 K39 [PROTO_7]
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R11
      118 SETTABLEKS                       R16 R15 K36 ["story"]
      120 DUPTABLE                         R16 K37 [{"name", "story"}]
      121 LOADK                            R17 K40 ["Standard Styles"]
      122 SETTABLEKS                       R17 R16 K35 ["name"]
      124 GETTABLEKS                       R17 R1 K41 ["createElement"]
      126 MOVE                             R18 R6
      127 DUPTABLE                         R19 K45 [{"AutomaticSize", "Layout", "Spacing"}]
      128 GETIMPORT                        R20 K48 [Enum.AutomaticSize.Y]
      130 SETTABLEKS                       R20 R19 K42 ["AutomaticSize"]
      132 GETIMPORT                        R20 K51 [Enum.FillDirection.Vertical]
      134 SETTABLEKS                       R20 R19 K43 ["Layout"]
      136 LOADN                            R20 10
      137 SETTABLEKS                       R20 R19 K44 ["Spacing"]
      139 DUPTABLE                         R20 K55 [{"Box", "RoundBox", "BorderBox"}]
      140 MOVE                             R21 R10
      141 GETTABLEKS                       R22 R1 K41 ["createElement"]
      143 MOVE                             R23 R11
      144 DUPTABLE                         R24 K58 [{"PlaceholderText", "Style"}]
      145 LOADK                            R25 K59 ["Box style"]
      146 SETTABLEKS                       R25 R24 K56 ["PlaceholderText"]
      148 LOADK                            R25 K52 ["Box"]
      149 SETTABLEKS                       R25 R24 K57 ["Style"]
      151 CALL                             R22 2 -1
      152 CALL                             R21 -1 1
      153 SETTABLEKS                       R21 R20 K52 ["Box"]
      155 MOVE                             R21 R10
      156 GETTABLEKS                       R22 R1 K41 ["createElement"]
      158 MOVE                             R23 R11
      159 DUPTABLE                         R24 K58 [{"PlaceholderText", "Style"}]
      160 LOADK                            R25 K60 ["RoundBox style"]
      161 SETTABLEKS                       R25 R24 K56 ["PlaceholderText"]
      163 LOADK                            R25 K53 ["RoundBox"]
      164 SETTABLEKS                       R25 R24 K57 ["Style"]
      166 CALL                             R22 2 -1
      167 CALL                             R21 -1 1
      168 SETTABLEKS                       R21 R20 K53 ["RoundBox"]
      170 MOVE                             R21 R10
      171 GETTABLEKS                       R22 R1 K41 ["createElement"]
      173 MOVE                             R23 R11
      174 DUPTABLE                         R24 K58 [{"PlaceholderText", "Style"}]
      175 LOADK                            R25 K61 ["BorderBox style"]
      176 SETTABLEKS                       R25 R24 K56 ["PlaceholderText"]
      178 LOADK                            R25 K54 ["BorderBox"]
      179 SETTABLEKS                       R25 R24 K57 ["Style"]
      181 CALL                             R22 2 -1
      182 CALL                             R21 -1 1
      183 SETTABLEKS                       R21 R20 K54 ["BorderBox"]
      185 CALL                             R17 3 1
      186 SETTABLEKS                       R17 R16 K36 ["story"]
      188 DUPTABLE                         R17 K37 [{"name", "story"}]
      189 LOADK                            R18 K62 ["Bottom Text"]
      190 SETTABLEKS                       R18 R17 K35 ["name"]
      192 MOVE                             R18 R10
      193 GETTABLEKS                       R19 R1 K41 ["createElement"]
      195 MOVE                             R20 R11
      196 DUPTABLE                         R21 K64 [{"BottomText"}]
      197 LOADK                            R22 K65 ["Username or email address"]
      198 SETTABLEKS                       R22 R21 K63 ["BottomText"]
      200 CALL                             R19 2 -1
      201 CALL                             R18 -1 1
      202 SETTABLEKS                       R18 R17 K36 ["story"]
      204 DUPTABLE                         R18 K67 [{"name", "summary", "story"}]
      205 LOADK                            R19 K68 ["Error Text"]
      206 SETTABLEKS                       R19 R18 K35 ["name"]
      208 LOADK                            R19 K69 ["Render component with error border color and error text"]
      209 SETTABLEKS                       R19 R18 K66 ["summary"]
      211 MOVE                             R19 R10
      212 GETTABLEKS                       R20 R1 K41 ["createElement"]
      214 MOVE                             R21 R11
      215 DUPTABLE                         R22 K71 [{"ErrorText"}]
      216 LOADK                            R23 K72 ["Invalid input"]
      217 SETTABLEKS                       R23 R22 K70 ["ErrorText"]
      219 CALL                             R20 2 -1
      220 CALL                             R19 -1 1
      221 SETTABLEKS                       R19 R18 K36 ["story"]
      223 DUPTABLE                         R19 K67 [{"name", "summary", "story"}]
      224 LOADK                            R20 K73 ["Custom Components"]
      225 SETTABLEKS                       R20 R19 K35 ["name"]
      227 LOADK                            R20 K74 ["Render leading, trailing, and bottom components"]
      228 SETTABLEKS                       R20 R19 K66 ["summary"]
      230 GETTABLEKS                       R20 R1 K41 ["createElement"]
      232 MOVE                             R21 R6
      233 DUPTABLE                         R22 K45 [{"AutomaticSize", "Layout", "Spacing"}]
      234 GETIMPORT                        R23 K48 [Enum.AutomaticSize.Y]
      236 SETTABLEKS                       R23 R22 K42 ["AutomaticSize"]
      238 GETIMPORT                        R23 K51 [Enum.FillDirection.Vertical]
      240 SETTABLEKS                       R23 R22 K43 ["Layout"]
      242 LOADN                            R23 10
      243 SETTABLEKS                       R23 R22 K44 ["Spacing"]
      245 DUPTABLE                         R23 K78 [{"Leading", "Trailing", "Bottom"}]
      246 MOVE                             R24 R10
      247 GETTABLEKS                       R25 R1 K41 ["createElement"]
      249 MOVE                             R26 R11
      250 DUPTABLE                         R27 K81 [{"LeadingComponent", "LeadingComponentProps", "PlaceholderText"}]
      251 SETTABLEKS                       R5 R27 K79 ["LeadingComponent"]
      253 DUPTABLE                         R28 K83 [{"Size", "Style"}]
      254 GETIMPORT                        R29 K86 [UDim2.fromOffset]
      256 LOADN                            R30 16
      257 LOADN                            R31 16
      258 CALL                             R29 2 1
      259 SETTABLEKS                       R29 R28 K82 ["Size"]
      261 DUPTABLE                         R29 K88 [{"Color", "Image"}]
      262 GETIMPORT                        R30 K90 [Color3.new]
      264 LOADK                            R31 K91 [0.6]
      265 LOADK                            R32 K91 [0.6]
      266 LOADK                            R33 K91 [0.6]
      267 CALL                             R30 3 1
      268 SETTABLEKS                       R30 R29 K87 ["Color"]
      270 LOADK                            R30 K92 ["rbxasset://textures/DeveloperFramework/StudioTheme/search_16.png"]
      271 SETTABLEKS                       R30 R29 K12 ["Image"]
      273 SETTABLEKS                       R29 R28 K57 ["Style"]
      275 SETTABLEKS                       R28 R27 K80 ["LeadingComponentProps"]
      277 LOADK                            R28 K93 ["Search..."]
      278 SETTABLEKS                       R28 R27 K56 ["PlaceholderText"]
      280 CALL                             R25 2 -1
      281 CALL                             R24 -1 1
      282 SETTABLEKS                       R24 R23 K75 ["Leading"]
      284 MOVE                             R24 R10
      285 GETTABLEKS                       R25 R1 K41 ["createElement"]
      287 MOVE                             R26 R11
      288 DUPTABLE                         R27 K96 [{"TrailingComponent", "TrailingComponentProps"}]
      289 SETTABLEKS                       R5 R27 K94 ["TrailingComponent"]
      291 DUPTABLE                         R28 K83 [{"Size", "Style"}]
      292 GETIMPORT                        R29 K86 [UDim2.fromOffset]
      294 LOADN                            R30 13
      295 LOADN                            R31 13
      296 CALL                             R29 2 1
      297 SETTABLEKS                       R29 R28 K82 ["Size"]
      299 DUPTABLE                         R29 K88 [{"Color", "Image"}]
      300 GETIMPORT                        R30 K90 [Color3.new]
      302 LOADK                            R31 K91 [0.6]
      303 LOADK                            R32 K91 [0.6]
      304 LOADK                            R33 K91 [0.6]
      305 CALL                             R30 3 1
      306 SETTABLEKS                       R30 R29 K87 ["Color"]
      308 LOADK                            R30 K97 ["rbxasset://textures/DeveloperFramework/StudioTheme/clear.png"]
      309 SETTABLEKS                       R30 R29 K12 ["Image"]
      311 SETTABLEKS                       R29 R28 K57 ["Style"]
      313 SETTABLEKS                       R28 R27 K95 ["TrailingComponentProps"]
      315 CALL                             R25 2 -1
      316 CALL                             R24 -1 1
      317 SETTABLEKS                       R24 R23 K76 ["Trailing"]
      319 MOVE                             R24 R10
      320 GETTABLEKS                       R25 R1 K41 ["createElement"]
      322 MOVE                             R26 R11
      323 DUPTABLE                         R27 K102 [{"BottomComponent", "BottomComponentProps", "MultiLine", "OnEnter", "Size", "PlaceholderText"}]
      324 SETTABLEKS                       R12 R27 K98 ["BottomComponent"]
      326 DUPTABLE                         R28 K103 [{"Size"}]
      327 GETIMPORT                        R29 K104 [UDim2.new]
      329 LOADN                            R30 1
      330 LOADN                            R31 0
      331 LOADN                            R32 0
      332 LOADN                            R33 32
      333 CALL                             R29 4 1
      334 SETTABLEKS                       R29 R28 K82 ["Size"]
      336 SETTABLEKS                       R28 R27 K99 ["BottomComponentProps"]
      338 LOADB                            R28 1
      339 SETTABLEKS                       R28 R27 K100 ["MultiLine"]
      341 DUPCLOSURE                       R28 K105 [PROTO_8]
      342 SETTABLEKS                       R28 R27 K101 ["OnEnter"]
      344 GETIMPORT                        R28 K86 [UDim2.fromOffset]
      346 LOADN                            R29 44
      347 LOADN                            R30 120
      348 CALL                             R28 2 1
      349 SETTABLEKS                       R28 R27 K82 ["Size"]
      351 LOADK                            R28 K106 ["Enter a message"]
      352 SETTABLEKS                       R28 R27 K56 ["PlaceholderText"]
      354 CALL                             R25 2 -1
      355 CALL                             R24 -1 1
      356 SETTABLEKS                       R24 R23 K77 ["Bottom"]
      358 CALL                             R20 3 1
      359 SETTABLEKS                       R20 R19 K36 ["story"]
      361 DUPTABLE                         R20 K67 [{"name", "summary", "story"}]
      362 LOADK                            R21 K107 ["Formatting"]
      363 SETTABLEKS                       R21 R20 K35 ["name"]
      365 LOADK                            R21 K108 ["Convert input to uppercase"]
      366 SETTABLEKS                       R21 R20 K66 ["summary"]
      368 MOVE                             R21 R10
      369 GETTABLEKS                       R22 R1 K41 ["createElement"]
      371 MOVE                             R23 R11
      372 DUPTABLE                         R24 K110 [{"OnFormatText"}]
      373 DUPCLOSURE                       R25 K111 [PROTO_9]
      374 SETTABLEKS                       R25 R24 K109 ["OnFormatText"]
      376 CALL                             R22 2 -1
      377 CALL                             R21 -1 1
      378 SETTABLEKS                       R21 R20 K36 ["story"]
      380 DUPTABLE                         R21 K67 [{"name", "summary", "story"}]
      381 LOADK                            R22 K112 ["Validation"]
      382 SETTABLEKS                       R22 R21 K35 ["name"]
      384 LOADK                            R22 K113 ["Validate input and render error style and text if invalid"]
      385 SETTABLEKS                       R22 R21 K66 ["summary"]
      387 MOVE                             R22 R10
      388 GETTABLEKS                       R23 R1 K41 ["createElement"]
      390 MOVE                             R24 R11
      391 DUPTABLE                         R25 K115 [{"OnValidateText", "PlaceholderText"}]
      392 DUPCLOSURE                       R26 K116 [PROTO_10]
      393 SETTABLEKS                       R26 R25 K114 ["OnValidateText"]
      395 LOADK                            R26 K117 ["Enter a number"]
      396 SETTABLEKS                       R26 R25 K56 ["PlaceholderText"]
      398 CALL                             R23 2 -1
      399 CALL                             R22 -1 1
      400 SETTABLEKS                       R22 R21 K36 ["story"]
      402 DUPTABLE                         R22 K67 [{"name", "summary", "story"}]
      403 LOADK                            R23 K118 ["Max Length"]
      404 SETTABLEKS                       R23 R22 K35 ["name"]
      406 LOADK                            R23 K119 ["Provide a max length for the input"]
      407 SETTABLEKS                       R23 R22 K66 ["summary"]
      409 MOVE                             R23 R10
      410 GETTABLEKS                       R24 R1 K41 ["createElement"]
      412 MOVE                             R25 R11
      413 DUPTABLE                         R26 K121 [{"PlaceholderText", "MaxLength"}]
      414 LOADK                            R27 K122 ["Enter text"]
      415 SETTABLEKS                       R27 R26 K56 ["PlaceholderText"]
      417 LOADN                            R27 20
      418 SETTABLEKS                       R27 R26 K120 ["MaxLength"]
      420 CALL                             R24 2 -1
      421 CALL                             R23 -1 1
      422 SETTABLEKS                       R23 R22 K36 ["story"]
      424 DUPTABLE                         R23 K67 [{"name", "summary", "story"}]
      425 LOADK                            R24 K100 ["MultiLine"]
      426 SETTABLEKS                       R24 R23 K35 ["name"]
      428 LOADK                            R24 K123 ["A multiline text input with max length"]
      429 SETTABLEKS                       R24 R23 K66 ["summary"]
      431 MOVE                             R24 R10
      432 GETTABLEKS                       R25 R1 K41 ["createElement"]
      434 MOVE                             R26 R11
      435 DUPTABLE                         R27 K124 [{"PlaceholderText", "MaxLength", "MultiLine", "Size"}]
      436 LOADK                            R28 K122 ["Enter text"]
      437 SETTABLEKS                       R28 R27 K56 ["PlaceholderText"]
      439 LOADN                            R28 200
      440 SETTABLEKS                       R28 R27 K120 ["MaxLength"]
      442 LOADB                            R28 1
      443 SETTABLEKS                       R28 R27 K100 ["MultiLine"]
      445 GETIMPORT                        R28 K86 [UDim2.fromOffset]
      447 LOADN                            R29 44
      448 LOADN                            R30 200
      449 CALL                             R28 2 1
      450 SETTABLEKS                       R28 R27 K82 ["Size"]
      452 CALL                             R25 2 -1
      453 CALL                             R24 -1 1
      454 SETTABLEKS                       R24 R23 K36 ["story"]
      456 DUPTABLE                         R24 K67 [{"name", "summary", "story"}]
      457 LOADK                            R25 K125 ["Autocomplete"]
      458 SETTABLEKS                       R25 R24 K35 ["name"]
      460 LOADK                            R25 K126 ["Show an autocomplete dropdown of options when typing"]
      461 SETTABLEKS                       R25 R24 K66 ["summary"]
      463 MOVE                             R25 R10
      464 GETTABLEKS                       R26 R1 K41 ["createElement"]
      466 MOVE                             R27 R11
      467 DUPTABLE                         R28 K128 [{"GetAutocompleteItems", "PlaceholderText"}]
      468 DUPCLOSURE                       R29 K129 [PROTO_11]
      469 SETTABLEKS                       R29 R28 K127 ["GetAutocompleteItems"]
      471 LOADK                            R29 K122 ["Enter text"]
      472 SETTABLEKS                       R29 R28 K56 ["PlaceholderText"]
      474 CALL                             R26 2 -1
      475 CALL                             R25 -1 1
      476 SETTABLEKS                       R25 R24 K36 ["story"]
      478 DUPTABLE                         R25 K67 [{"name", "summary", "story"}]
      479 LOADK                            R26 K101 ["OnEnter"]
      480 SETTABLEKS                       R26 R25 K35 ["name"]
      482 LOADK                            R26 K130 ["Prints to the console when you press enter"]
      483 SETTABLEKS                       R26 R25 K66 ["summary"]
      485 MOVE                             R26 R10
      486 GETTABLEKS                       R27 R1 K41 ["createElement"]
      488 MOVE                             R28 R11
      489 DUPTABLE                         R29 K131 [{"MultiLine", "OnEnter"}]
      490 LOADB                            R30 1
      491 SETTABLEKS                       R30 R29 K100 ["MultiLine"]
      493 DUPCLOSURE                       R30 K132 [PROTO_12]
      494 SETTABLEKS                       R30 R29 K101 ["OnEnter"]
      496 CALL                             R27 2 -1
      497 CALL                             R26 -1 1
      498 SETTABLEKS                       R26 R25 K36 ["story"]
      500 SETLIST                          R14 R15 11 [1]
      502 SETTABLEKS                       R14 R13 K31 ["stories"]
      504 RETURN                           R13 1
