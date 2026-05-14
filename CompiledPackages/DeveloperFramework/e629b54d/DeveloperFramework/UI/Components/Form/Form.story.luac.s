PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K6 [{"OnClick", "Size", "Style", "Text"}]
        7 GETTABLEKS                       R5 R1 K2 ["OnClick"]
        9 SETTABLEKS                       R5 R4 K2 ["OnClick"]
       11 GETIMPORT                        R5 K9 [UDim2.new]
       13 LOADN                            R6 1
       14 LOADN                            R7 0
       15 LOADN                            R8 0
       16 LOADN                            R9 32
       17 CALL                             R5 4 1
       18 SETTABLEKS                       R5 R4 K3 ["Size"]
       20 LOADK                            R5 K10 ["RoundPrimary"]
       21 SETTABLEKS                       R5 R4 K4 ["Style"]
       23 GETTABLEKS                       R5 R0 K11 ["Value"]
       25 SETTABLEKS                       R5 R4 K5 ["Text"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["Option3"] ; [+5]
        2 GETIMPORT                        R1 K4 [Enum.PropertyStatus.Error]
        4 LOADK                            R2 K5 ["Option 3 is currently disabled"]
        5 RETURN                           R1 2
        6 GETIMPORT                        R1 K7 [Enum.PropertyStatus.Ok]
        8 RETURN                           R1 1

PROTO_2:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEN                        R3 R0 2
        2 GETTABLEN                        R4 R0 3
        3 FASTCALL                         VECTOR ; [+2]
        4 GETIMPORT                        R1 K2 [Vector3.new]
        6 CALL                             R1 3 1
        7 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 3
        2 GETTABLEKS                       R2 R0 K0 ["X"]
        4 GETTABLEKS                       R3 R0 K1 ["Y"]
        6 GETTABLEKS                       R4 R0 K2 ["Z"]
        8 SETLIST                          R1 R2 3 [1]
       10 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R4 R0 K1 ["Y"]
        4 MUL                              R2 R3 R4
        5 GETTABLEKS                       R3 R0 K2 ["Z"]
        7 MUL                              R1 R2 R3
        8 LOADN                            R2 0
        9 JUMPIFNOTLT                      R2 R1 ; [+5]
       11 GETIMPORT                        R1 K6 [Enum.PropertyStatus.Error]
       13 LOADK                            R2 K7 ["Exceded maximum volume"]
       14 RETURN                           R1 2
       15 GETIMPORT                        R1 K9 [Enum.PropertyStatus.Ok]
       17 LOADK                            R2 K10 [""]
       18 RETURN                           R1 2

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 10
        2 JUMPIFNOTLT                      R2 R1 ; [+5]
        4 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
        6 LOADK                            R2 K4 ["Username is too long"]
        7 RETURN                           R1 2
        8 LENGTH                           R1 R0
        9 LOADN                            R2 9
       10 JUMPIFNOTLT                      R2 R1 ; [+5]
       12 GETIMPORT                        R1 K6 [Enum.PropertyStatus.Warning]
       14 LOADK                            R2 K7 ["Username approaching limit"]
       15 RETURN                           R1 2
       16 GETIMPORT                        R1 K9 [Enum.PropertyStatus.Ok]
       18 LOADK                            R2 K10 [""]
       19 RETURN                           R1 2

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 SETTABLEKS                       R0 R3 K0 ["Expansion"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Items"}]
        2 SETTABLEKS                       R0 R3 K0 ["Items"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Items"]
        3 CALL                             R1 1 1
        4 GETTABLEN                        R3 R1 2
        5 GETTABLEKS                       R3 R3 K1 ["Children"]
        7 GETTABLEN                        R2 R3 4
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K2 ["Hidden"]
       11 DUPTABLE                         R2 K3 [{"Items"}]
       12 SETTABLEKS                       R1 R2 K0 ["Items"]
       14 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_9]
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K1 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["OnExpansionChange"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["OnChange"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R1 R0 K2 ["HideButton"]
       13 GETUPVAL                         R2 1
       14 GETTABLEN                        R1 R2 4
       15 GETTABLEKS                       R1 R1 K3 ["Schema"]
       17 GETTABLEKS                       R2 R0 K2 ["HideButton"]
       19 SETTABLEKS                       R2 R1 K4 ["OnClick"]
       21 DUPTABLE                         R1 K7 [{"Expansion", "Items"}]
       22 NEWTABLE                         R2 0 0
       24 SETTABLEKS                       R2 R1 K5 ["Expansion"]
       26 NEWTABLE                         R2 0 2
       28 DUPTABLE                         R3 K12 [{"Id", "Label", "Children", "Separator"}]
       29 LOADK                            R4 K13 ["Basic"]
       30 SETTABLEKS                       R4 R3 K8 ["Id"]
       32 LOADK                            R4 K14 ["Basic Settings"]
       33 SETTABLEKS                       R4 R3 K9 ["Label"]
       35 GETUPVAL                         R4 2
       36 SETTABLEKS                       R4 R3 K10 ["Children"]
       38 LOADB                            R4 1
       39 SETTABLEKS                       R4 R3 K11 ["Separator"]
       41 DUPTABLE                         R4 K16 [{"Expandable", "Id", "Label", "Children"}]
       42 LOADB                            R5 0
       43 SETTABLEKS                       R5 R4 K15 ["Expandable"]
       45 LOADK                            R5 K17 ["Advanced"]
       46 SETTABLEKS                       R5 R4 K8 ["Id"]
       48 LOADK                            R5 K18 ["Advanced Settings"]
       49 SETTABLEKS                       R5 R4 K9 ["Label"]
       51 GETUPVAL                         R5 1
       52 SETTABLEKS                       R5 R4 K10 ["Children"]
       54 SETLIST                          R2 R3 2 [1]
       56 SETTABLEKS                       R2 R1 K6 ["Items"]
       58 SETTABLEKS                       R1 R0 K19 ["state"]
       60 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Disabled"]
        4 GETTABLEKS                       R4 R2 K1 ["Disabled"]
        6 JUMPIFEQ                         R3 R4 ; [+34]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R4 R0 K2 ["state"]
       11 GETTABLEKS                       R4 R4 K3 ["Items"]
       13 CALL                             R3 1 1
       14 MOVE                             R4 R3
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETTABLEKS                       R9 R8 K4 ["Children"]
       20 LOADNIL                          R10
       21 LOADNIL                          R11
       22 FORGPREP                         R9
       23 GETTABLE                         R15 R3 R7
       24 GETTABLEKS                       R15 R15 K4 ["Children"]
       26 GETTABLE                         R14 R15 R12
       27 GETTABLEKS                       R15 R2 K1 ["Disabled"]
       29 SETTABLEKS                       R15 R14 K1 ["Disabled"]
       31 FORGLOOP                         R9 2 ; [-9]
       33 FORGLOOP                         R4 2 ; [-16]
       35 DUPTABLE                         R6 K5 [{"Items"}]
       36 SETTABLEKS                       R3 R6 K3 ["Items"]
       38 NAMECALL                         R4 R0 K6 ["setState"]
       40 CALL                             R4 2 0
       41 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K10 [{"Expansion", "ExpandByDefault", "Items", "LabelWidth", "LabelHeight", "OnExpansionChange", "OnChange", "Renderers", "Size"}]
        5 GETTABLEKS                       R4 R0 K11 ["state"]
        7 GETTABLEKS                       R4 R4 K1 ["Expansion"]
        9 SETTABLEKS                       R4 R3 K1 ["Expansion"]
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R3 K2 ["ExpandByDefault"]
       14 GETTABLEKS                       R4 R0 K11 ["state"]
       16 GETTABLEKS                       R4 R4 K3 ["Items"]
       18 SETTABLEKS                       R4 R3 K3 ["Items"]
       20 GETIMPORT                        R4 K14 [UDim.new]
       22 LOADN                            R5 0
       23 LOADN                            R6 150
       24 CALL                             R4 2 1
       25 SETTABLEKS                       R4 R3 K4 ["LabelWidth"]
       27 LOADN                            R4 32
       28 SETTABLEKS                       R4 R3 K5 ["LabelHeight"]
       30 GETTABLEKS                       R4 R0 K6 ["OnExpansionChange"]
       32 SETTABLEKS                       R4 R3 K6 ["OnExpansionChange"]
       34 GETTABLEKS                       R4 R0 K7 ["OnChange"]
       36 SETTABLEKS                       R4 R3 K7 ["OnChange"]
       38 DUPTABLE                         R4 K16 [{"Custom"}]
       39 GETUPVAL                         R5 2
       40 SETTABLEKS                       R5 R4 K15 ["Custom"]
       42 SETTABLEKS                       R4 R3 K8 ["Renderers"]
       44 GETIMPORT                        R4 K18 [UDim2.new]
       46 LOADN                            R5 1
       47 LOADN                            R6 0
       48 LOADN                            R7 0
       49 LOADN                            R8 244
       50 CALL                             R4 4 1
       51 SETTABLEKS                       R4 R3 K9 ["Size"]
       53 CALL                             R1 2 -1
       54 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"Disabled"}]
        5 GETTABLEKS                       R4 R0 K3 ["controls"]
        7 GETTABLEKS                       R4 R4 K1 ["Disabled"]
        9 SETTABLEKS                       R4 R3 K1 ["Disabled"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

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
       23 GETTABLEKS                       R3 R2 K9 ["copy"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K4 ["Parent"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K4 ["Parent"]
       38 GETTABLEKS                       R6 R6 K4 ["Parent"]
       40 GETTABLEKS                       R6 R6 K10 ["DEPRECATED_Button"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K11 [PROTO_0]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R5
       46 NEWTABLE                         R7 0 4
       48 DUPTABLE                         R8 K16 [{"Id", "Label", "Schema", "Value"}]
       49 LOADK                            R9 K17 ["Checkbox"]
       50 SETTABLEKS                       R9 R8 K12 ["Id"]
       52 LOADK                            R9 K17 ["Checkbox"]
       53 SETTABLEKS                       R9 R8 K13 ["Label"]
       55 DUPTABLE                         R9 K19 [{"Type"}]
       56 LOADK                            R10 K17 ["Checkbox"]
       57 SETTABLEKS                       R10 R9 K18 ["Type"]
       59 SETTABLEKS                       R9 R8 K14 ["Schema"]
       61 LOADB                            R9 1
       62 SETTABLEKS                       R9 R8 K15 ["Value"]
       64 DUPTABLE                         R9 K16 [{"Id", "Label", "Schema", "Value"}]
       65 LOADK                            R10 K20 ["Text"]
       66 SETTABLEKS                       R10 R9 K12 ["Id"]
       68 LOADK                            R10 K20 ["Text"]
       69 SETTABLEKS                       R10 R9 K13 ["Label"]
       71 DUPTABLE                         R10 K22 [{"Type", "PlaceholderText"}]
       72 LOADK                            R11 K20 ["Text"]
       73 SETTABLEKS                       R11 R10 K18 ["Type"]
       75 LOADK                            R11 K20 ["Text"]
       76 SETTABLEKS                       R11 R10 K21 ["PlaceholderText"]
       78 SETTABLEKS                       R10 R9 K14 ["Schema"]
       80 LOADK                            R10 K20 ["Text"]
       81 SETTABLEKS                       R10 R9 K15 ["Value"]
       83 DUPTABLE                         R10 K16 [{"Id", "Label", "Schema", "Value"}]
       84 LOADK                            R11 K23 ["Number"]
       85 SETTABLEKS                       R11 R10 K12 ["Id"]
       87 LOADK                            R11 K23 ["Number"]
       88 SETTABLEKS                       R11 R10 K13 ["Label"]
       90 DUPTABLE                         R11 K22 [{"Type", "PlaceholderText"}]
       91 LOADK                            R12 K23 ["Number"]
       92 SETTABLEKS                       R12 R11 K18 ["Type"]
       94 LOADN                            R12 0
       95 SETTABLEKS                       R12 R11 K21 ["PlaceholderText"]
       97 SETTABLEKS                       R11 R10 K14 ["Schema"]
       99 LOADN                            R11 1
      100 SETTABLEKS                       R11 R10 K15 ["Value"]
      102 DUPTABLE                         R11 K16 [{"Id", "Label", "Schema", "Value"}]
      103 LOADK                            R12 K24 ["Slider"]
      104 SETTABLEKS                       R12 R11 K12 ["Id"]
      106 LOADK                            R12 K24 ["Slider"]
      107 SETTABLEKS                       R12 R11 K13 ["Label"]
      109 DUPTABLE                         R12 K29 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
      110 LOADK                            R13 K24 ["Slider"]
      111 SETTABLEKS                       R13 R12 K18 ["Type"]
      113 LOADN                            R13 0
      114 SETTABLEKS                       R13 R12 K25 ["Min"]
      116 LOADN                            R13 1
      117 SETTABLEKS                       R13 R12 K26 ["Max"]
      119 LOADB                            R13 1
      120 SETTABLEKS                       R13 R12 K27 ["ShowInput"]
      122 LOADK                            R13 K30 [0.05]
      123 SETTABLEKS                       R13 R12 K28 ["SnapIncrement"]
      125 SETTABLEKS                       R12 R11 K14 ["Schema"]
      127 LOADK                            R12 K31 [0.5]
      128 SETTABLEKS                       R12 R11 K15 ["Value"]
      130 SETLIST                          R7 R8 4 [1]
      132 NEWTABLE                         R8 0 5
      134 DUPTABLE                         R9 K33 [{"Id", "Label", "Schema", "Validate", "Value"}]
      135 LOADK                            R10 K34 ["Select"]
      136 SETTABLEKS                       R10 R9 K12 ["Id"]
      138 LOADK                            R10 K34 ["Select"]
      139 SETTABLEKS                       R10 R9 K13 ["Label"]
      141 DUPTABLE                         R10 K36 [{"Type", "Items"}]
      142 LOADK                            R11 K34 ["Select"]
      143 SETTABLEKS                       R11 R10 K18 ["Type"]
      145 NEWTABLE                         R11 0 3
      147 DUPTABLE                         R12 K37 [{"Id", "Label"}]
      148 LOADK                            R13 K38 ["Option1"]
      149 SETTABLEKS                       R13 R12 K12 ["Id"]
      151 LOADK                            R13 K39 ["Option 1"]
      152 SETTABLEKS                       R13 R12 K13 ["Label"]
      154 DUPTABLE                         R13 K37 [{"Id", "Label"}]
      155 LOADK                            R14 K40 ["Option2"]
      156 SETTABLEKS                       R14 R13 K12 ["Id"]
      158 LOADK                            R14 K41 ["Option 2"]
      159 SETTABLEKS                       R14 R13 K13 ["Label"]
      161 DUPTABLE                         R14 K37 [{"Id", "Label"}]
      162 LOADK                            R15 K42 ["Option3"]
      163 SETTABLEKS                       R15 R14 K12 ["Id"]
      165 LOADK                            R15 K43 ["Option 3"]
      166 SETTABLEKS                       R15 R14 K13 ["Label"]
      168 SETLIST                          R11 R12 3 [1]
      170 SETTABLEKS                       R11 R10 K35 ["Items"]
      172 SETTABLEKS                       R10 R9 K14 ["Schema"]
      174 DUPCLOSURE                       R10 K44 [PROTO_1]
      175 SETTABLEKS                       R10 R9 K32 ["Validate"]
      177 LOADK                            R10 K38 ["Option1"]
      178 SETTABLEKS                       R10 R9 K15 ["Value"]
      180 DUPTABLE                         R10 K33 [{"Id", "Label", "Schema", "Validate", "Value"}]
      181 LOADK                            R11 K45 ["Vector"]
      182 SETTABLEKS                       R11 R10 K12 ["Id"]
      184 LOADK                            R11 K45 ["Vector"]
      185 SETTABLEKS                       R11 R10 K13 ["Label"]
      187 DUPTABLE                         R11 K49 [{"Type", "Components", "GetValue", "GetComponents"}]
      188 LOADK                            R12 K45 ["Vector"]
      189 SETTABLEKS                       R12 R11 K18 ["Type"]
      191 NEWTABLE                         R12 0 3
      193 LOADK                            R13 K50 ["X"]
      194 LOADK                            R14 K51 ["Y"]
      195 LOADK                            R15 K52 ["Z"]
      196 SETLIST                          R12 R13 3 [1]
      198 SETTABLEKS                       R12 R11 K46 ["Components"]
      200 DUPCLOSURE                       R12 K53 [PROTO_2]
      201 SETTABLEKS                       R12 R11 K47 ["GetValue"]
      203 DUPCLOSURE                       R12 K54 [PROTO_3]
      204 SETTABLEKS                       R12 R11 K48 ["GetComponents"]
      206 SETTABLEKS                       R11 R10 K14 ["Schema"]
      208 DUPCLOSURE                       R11 K55 [PROTO_4]
      209 SETTABLEKS                       R11 R10 K32 ["Validate"]
      211 LOADK                            R11 K56 [{0, 0, 0}]
      212 SETTABLEKS                       R11 R10 K15 ["Value"]
      214 DUPTABLE                         R11 K16 [{"Id", "Label", "Schema", "Value"}]
      215 LOADK                            R12 K57 ["Custom"]
      216 SETTABLEKS                       R12 R11 K12 ["Id"]
      218 LOADK                            R12 K57 ["Custom"]
      219 SETTABLEKS                       R12 R11 K13 ["Label"]
      221 DUPTABLE                         R12 K59 [{"Type", "OnClick"}]
      222 LOADK                            R13 K57 ["Custom"]
      223 SETTABLEKS                       R13 R12 K18 ["Type"]
      225 DUPCLOSURE                       R13 K60 [PROTO_5]
      226 SETTABLEKS                       R13 R12 K58 ["OnClick"]
      228 SETTABLEKS                       R12 R11 K14 ["Schema"]
      230 LOADK                            R12 K61 ["Click me!"]
      231 SETTABLEKS                       R12 R11 K15 ["Value"]
      233 DUPTABLE                         R12 K16 [{"Id", "Label", "Schema", "Value"}]
      234 LOADK                            R13 K62 ["Hidden"]
      235 SETTABLEKS                       R13 R12 K12 ["Id"]
      237 LOADK                            R13 K62 ["Hidden"]
      238 SETTABLEKS                       R13 R12 K13 ["Label"]
      240 DUPTABLE                         R13 K19 [{"Type"}]
      241 LOADK                            R14 K57 ["Custom"]
      242 SETTABLEKS                       R14 R13 K18 ["Type"]
      244 SETTABLEKS                       R13 R12 K14 ["Schema"]
      246 LOADK                            R13 K63 ["Hide me!"]
      247 SETTABLEKS                       R13 R12 K15 ["Value"]
      249 DUPTABLE                         R13 K33 [{"Id", "Label", "Schema", "Validate", "Value"}]
      250 LOADK                            R14 K32 ["Validate"]
      251 SETTABLEKS                       R14 R13 K12 ["Id"]
      253 LOADK                            R14 K64 ["Validation"]
      254 SETTABLEKS                       R14 R13 K13 ["Label"]
      256 DUPTABLE                         R14 K22 [{"Type", "PlaceholderText"}]
      257 LOADK                            R15 K20 ["Text"]
      258 SETTABLEKS                       R15 R14 K18 ["Type"]
      260 LOADK                            R15 K20 ["Text"]
      261 SETTABLEKS                       R15 R14 K21 ["PlaceholderText"]
      263 SETTABLEKS                       R14 R13 K14 ["Schema"]
      265 DUPCLOSURE                       R14 K65 [PROTO_6]
      266 SETTABLEKS                       R14 R13 K32 ["Validate"]
      268 LOADK                            R14 K66 ["Username"]
      269 SETTABLEKS                       R14 R13 K15 ["Value"]
      271 SETLIST                          R8 R9 5 [1]
      273 DUPTABLE                         R11 K68 [{"Children", "Id", "Label", "Schema", "Value"}]
      274 NEWTABLE                         R12 0 2
      276 DUPTABLE                         R13 K16 [{"Id", "Label", "Schema", "Value"}]
      277 LOADK                            R14 K24 ["Slider"]
      278 SETTABLEKS                       R14 R13 K12 ["Id"]
      280 LOADK                            R14 K69 ["Child 1"]
      281 SETTABLEKS                       R14 R13 K13 ["Label"]
      283 DUPTABLE                         R14 K29 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
      284 LOADK                            R15 K24 ["Slider"]
      285 SETTABLEKS                       R15 R14 K18 ["Type"]
      287 LOADN                            R15 0
      288 SETTABLEKS                       R15 R14 K25 ["Min"]
      290 LOADN                            R15 1
      291 SETTABLEKS                       R15 R14 K26 ["Max"]
      293 LOADB                            R15 1
      294 SETTABLEKS                       R15 R14 K27 ["ShowInput"]
      296 LOADK                            R15 K30 [0.05]
      297 SETTABLEKS                       R15 R14 K28 ["SnapIncrement"]
      299 SETTABLEKS                       R14 R13 K14 ["Schema"]
      301 LOADK                            R14 K31 [0.5]
      302 SETTABLEKS                       R14 R13 K15 ["Value"]
      304 DUPTABLE                         R14 K68 [{"Children", "Id", "Label", "Schema", "Value"}]
      305 NEWTABLE                         R15 0 1
      307 DUPTABLE                         R16 K16 [{"Id", "Label", "Schema", "Value"}]
      308 LOADK                            R17 K23 ["Number"]
      309 SETTABLEKS                       R17 R16 K12 ["Id"]
      311 LOADK                            R17 K23 ["Number"]
      312 SETTABLEKS                       R17 R16 K13 ["Label"]
      314 DUPTABLE                         R17 K22 [{"Type", "PlaceholderText"}]
      315 LOADK                            R18 K23 ["Number"]
      316 SETTABLEKS                       R18 R17 K18 ["Type"]
      318 LOADN                            R18 0
      319 SETTABLEKS                       R18 R17 K21 ["PlaceholderText"]
      321 SETTABLEKS                       R17 R16 K14 ["Schema"]
      323 LOADN                            R17 1
      324 SETTABLEKS                       R17 R16 K15 ["Value"]
      326 SETLIST                          R15 R16 1 [1]
      328 SETTABLEKS                       R15 R14 K67 ["Children"]
      330 LOADK                            R15 K70 ["Multi"]
      331 SETTABLEKS                       R15 R14 K12 ["Id"]
      333 LOADK                            R15 K71 ["Child 2"]
      334 SETTABLEKS                       R15 R14 K13 ["Label"]
      336 DUPTABLE                         R15 K29 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
      337 LOADK                            R16 K24 ["Slider"]
      338 SETTABLEKS                       R16 R15 K18 ["Type"]
      340 LOADN                            R16 0
      341 SETTABLEKS                       R16 R15 K25 ["Min"]
      343 LOADN                            R16 1
      344 SETTABLEKS                       R16 R15 K26 ["Max"]
      346 LOADB                            R16 1
      347 SETTABLEKS                       R16 R15 K27 ["ShowInput"]
      349 LOADK                            R16 K30 [0.05]
      350 SETTABLEKS                       R16 R15 K28 ["SnapIncrement"]
      352 SETTABLEKS                       R15 R14 K14 ["Schema"]
      354 LOADK                            R15 K31 [0.5]
      355 SETTABLEKS                       R15 R14 K15 ["Value"]
      357 SETLIST                          R12 R13 2 [1]
      359 SETTABLEKS                       R12 R11 K67 ["Children"]
      361 LOADK                            R12 K67 ["Children"]
      362 SETTABLEKS                       R12 R11 K12 ["Id"]
      364 LOADK                            R12 K67 ["Children"]
      365 SETTABLEKS                       R12 R11 K13 ["Label"]
      367 DUPTABLE                         R12 K19 [{"Type"}]
      368 LOADK                            R13 K23 ["Number"]
      369 SETTABLEKS                       R13 R12 K18 ["Type"]
      371 SETTABLEKS                       R12 R11 K14 ["Schema"]
      373 LOADN                            R12 1
      374 SETTABLEKS                       R12 R11 K15 ["Value"]
      376 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      378 MOVE                             R10 R8
      379 GETIMPORT                        R9 K74 [table.insert]
      381 CALL                             R9 2 0
      382 GETTABLEKS                       R9 R1 K75 ["PureComponent"]
      384 LOADK                            R11 K76 ["Settings"]
      385 NAMECALL                         R9 R9 K77 ["extend"]
      387 CALL                             R9 2 1
      388 DUPCLOSURE                       R10 K78 [PROTO_11]
      389 CAPTURE                          VAL R3
      390 CAPTURE                          VAL R8
      391 CAPTURE                          VAL R7
      392 SETTABLEKS                       R10 R9 K79 ["init"]
      394 DUPCLOSURE                       R10 K80 [PROTO_12]
      395 CAPTURE                          VAL R3
      396 SETTABLEKS                       R10 R9 K81 ["didUpdate"]
      398 DUPCLOSURE                       R10 K82 [PROTO_13]
      399 CAPTURE                          VAL R1
      400 CAPTURE                          VAL R4
      401 CAPTURE                          VAL R6
      402 SETTABLEKS                       R10 R9 K83 ["render"]
      404 DUPTABLE                         R10 K86 [{"controls", "stories"}]
      405 DUPTABLE                         R11 K88 [{"Disabled"}]
      406 LOADB                            R12 0
      407 SETTABLEKS                       R12 R11 K87 ["Disabled"]
      409 SETTABLEKS                       R11 R10 K84 ["controls"]
      411 NEWTABLE                         R11 0 1
      413 DUPTABLE                         R12 K91 [{"name", "story"}]
      414 LOADK                            R13 K92 ["Form"]
      415 SETTABLEKS                       R13 R12 K89 ["name"]
      417 DUPCLOSURE                       R13 K93 [PROTO_14]
      418 CAPTURE                          VAL R1
      419 CAPTURE                          VAL R9
      420 SETTABLEKS                       R13 R12 K90 ["story"]
      422 SETLIST                          R11 R12 1 [1]
      424 SETTABLEKS                       R11 R10 K85 ["stories"]
      426 RETURN                           R10 1
