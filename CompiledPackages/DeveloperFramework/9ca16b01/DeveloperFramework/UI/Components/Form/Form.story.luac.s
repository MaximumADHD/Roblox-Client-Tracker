PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K7 [{["OnClick"], ["Size"], ["Style"] = "RoundPrimary", ["Text"]}]
        7 GETTABLEKS                       R5 R1 K2 ["OnClick"]
        9 SETTABLEKS                       R5 R4 K2 ["OnClick"]
       11 GETIMPORT                        R5 K10 [UDim2.new]
       13 LOADN                            R6 1
       14 LOADN                            R7 0
       15 LOADN                            R8 0
       16 LOADN                            R9 32
       17 CALL                             R5 4 1
       18 SETTABLEKS                       R5 R4 K3 ["Size"]
       20 GETTABLEKS                       R5 R0 K11 ["Value"]
       22 SETTABLEKS                       R5 R4 K6 ["Text"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

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
        8 LOADN                            R2 1024
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
       28 DUPTABLE                         R3 K15 [{["Id"] = "Basic", ["Label"] = "Basic Settings", ["Children"], ["Separator"] = True}]
       29 GETUPVAL                         R4 2
       30 SETTABLEKS                       R4 R3 K12 ["Children"]
       32 DUPTABLE                         R4 K20 [{["Expandable"] = False, ["Id"] = "Advanced", ["Label"] = "Advanced Settings", ["Children"]}]
       33 GETUPVAL                         R5 1
       34 SETTABLEKS                       R5 R4 K12 ["Children"]
       36 SETLIST                          R2 R3 2 [1]
       38 SETTABLEKS                       R2 R1 K6 ["Items"]
       40 SETTABLEKS                       R1 R0 K21 ["state"]
       42 RETURN                           R0 0

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
        4 DUPTABLE                         R3 K12 [{["Expansion"], ["ExpandByDefault"] = True, ["Items"], ["LabelWidth"], ["LabelHeight"] = 32, ["OnExpansionChange"], ["OnChange"], ["Renderers"], ["Size"]}]
        5 GETTABLEKS                       R4 R0 K13 ["state"]
        7 GETTABLEKS                       R4 R4 K1 ["Expansion"]
        9 SETTABLEKS                       R4 R3 K1 ["Expansion"]
       11 GETTABLEKS                       R4 R0 K13 ["state"]
       13 GETTABLEKS                       R4 R4 K4 ["Items"]
       15 SETTABLEKS                       R4 R3 K4 ["Items"]
       17 GETIMPORT                        R4 K16 [UDim.new]
       19 LOADN                            R5 0
       20 LOADN                            R6 150
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K5 ["LabelWidth"]
       24 GETTABLEKS                       R4 R0 K8 ["OnExpansionChange"]
       26 SETTABLEKS                       R4 R3 K8 ["OnExpansionChange"]
       28 GETTABLEKS                       R4 R0 K9 ["OnChange"]
       30 SETTABLEKS                       R4 R3 K9 ["OnChange"]
       32 DUPTABLE                         R4 K18 [{"Custom"}]
       33 GETUPVAL                         R5 2
       34 SETTABLEKS                       R5 R4 K17 ["Custom"]
       36 SETTABLEKS                       R4 R3 K10 ["Renderers"]
       38 GETIMPORT                        R4 K20 [UDim2.new]
       40 LOADN                            R5 1
       41 LOADN                            R6 0
       42 LOADN                            R7 0
       43 LOADN                            R8 500
       44 CALL                             R4 4 1
       45 SETTABLEKS                       R4 R3 K11 ["Size"]
       47 CALL                             R1 2 -1
       48 RETURN                           R1 -1

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
       48 DUPTABLE                         R8 K18 [{["Id"] = "Checkbox", ["Label"] = "Checkbox", ["Schema"], ["Value"] = True}]
       49 DUPTABLE                         R9 K20 [{["Type"] = "Checkbox"}]
       50 SETTABLEKS                       R9 R8 K15 ["Schema"]
       52 DUPTABLE                         R9 K22 [{["Id"] = "Text", ["Label"] = "Text", ["Schema"], ["Value"] = "Text"}]
       53 DUPTABLE                         R10 K24 [{["Type"] = "Text", ["PlaceholderText"] = "Text"}]
       54 SETTABLEKS                       R10 R9 K15 ["Schema"]
       56 DUPTABLE                         R10 K27 [{["Id"] = "Number", ["Label"] = "Number", ["Schema"], ["Value"] = 1}]
       57 DUPTABLE                         R11 K29 [{["Type"] = "Number", ["PlaceholderText"] = 0}]
       58 SETTABLEKS                       R11 R10 K15 ["Schema"]
       60 DUPTABLE                         R11 K32 [{["Id"] = "Slider", ["Label"] = "Slider", ["Schema"], ["Value"] = 0.5}]
       61 DUPTABLE                         R12 K38 [{["Type"] = "Slider", ["Min"] = 0, ["Max"] = 1, ["ShowInput"] = True, ["SnapIncrement"] = 0.05}]
       62 SETTABLEKS                       R12 R11 K15 ["Schema"]
       64 SETLIST                          R7 R8 4 [1]
       66 NEWTABLE                         R8 0 5
       68 DUPTABLE                         R9 K42 [{["Id"] = "Select", ["Label"] = "Select", ["Schema"], ["Validate"], ["Value"] = "Option1"}]
       69 DUPTABLE                         R10 K44 [{["Type"] = "Select", ["Items"]}]
       70 NEWTABLE                         R11 0 3
       72 DUPTABLE                         R12 K46 [{["Id"] = "Option1", ["Label"] = "Option 1"}]
       73 DUPTABLE                         R13 K49 [{["Id"] = "Option2", ["Label"] = "Option 2"}]
       74 DUPTABLE                         R14 K52 [{["Id"] = "Option3", ["Label"] = "Option 3"}]
       75 SETLIST                          R11 R12 3 [1]
       77 SETTABLEKS                       R11 R10 K43 ["Items"]
       79 SETTABLEKS                       R10 R9 K15 ["Schema"]
       81 DUPCLOSURE                       R10 K53 [PROTO_1]
       82 SETTABLEKS                       R10 R9 K40 ["Validate"]
       84 DUPTABLE                         R10 K56 [{["Id"] = "Vector", ["Label"] = "Vector", ["Schema"], ["Validate"], ["Value"] = {0, 0, 0}}]
       85 DUPTABLE                         R11 K60 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetComponents"]}]
       86 NEWTABLE                         R12 0 3
       88 LOADK                            R13 K61 ["X"]
       89 LOADK                            R14 K62 ["Y"]
       90 LOADK                            R15 K63 ["Z"]
       91 SETLIST                          R12 R13 3 [1]
       93 SETTABLEKS                       R12 R11 K57 ["Components"]
       95 DUPCLOSURE                       R12 K64 [PROTO_2]
       96 SETTABLEKS                       R12 R11 K58 ["GetValue"]
       98 DUPCLOSURE                       R12 K65 [PROTO_3]
       99 SETTABLEKS                       R12 R11 K59 ["GetComponents"]
      101 SETTABLEKS                       R11 R10 K15 ["Schema"]
      103 DUPCLOSURE                       R11 K66 [PROTO_4]
      104 SETTABLEKS                       R11 R10 K40 ["Validate"]
      106 DUPTABLE                         R11 K69 [{["Id"] = "Custom", ["Label"] = "Custom", ["Schema"], ["Value"] = "Click me!"}]
      107 DUPTABLE                         R12 K71 [{["Type"] = "Custom", ["OnClick"]}]
      108 DUPCLOSURE                       R13 K72 [PROTO_5]
      109 SETTABLEKS                       R13 R12 K70 ["OnClick"]
      111 SETTABLEKS                       R12 R11 K15 ["Schema"]
      113 DUPTABLE                         R12 K75 [{["Id"] = "Hidden", ["Label"] = "Hidden", ["Schema"], ["Value"] = "Hide me!"}]
      114 DUPTABLE                         R13 K76 [{["Type"] = "Custom"}]
      115 SETTABLEKS                       R13 R12 K15 ["Schema"]
      117 DUPTABLE                         R13 K79 [{["Id"] = "Validate", ["Label"] = "Validation", ["Schema"], ["Validate"], ["Value"] = "Username"}]
      118 DUPTABLE                         R14 K24 [{["Type"] = "Text", ["PlaceholderText"] = "Text"}]
      119 SETTABLEKS                       R14 R13 K15 ["Schema"]
      121 DUPCLOSURE                       R14 K80 [PROTO_6]
      122 SETTABLEKS                       R14 R13 K40 ["Validate"]
      124 SETLIST                          R8 R9 5 [1]
      126 DUPTABLE                         R11 K82 [{["Children"], ["Id"] = "Children", ["Label"] = "Children", ["Schema"], ["Value"] = 1}]
      127 NEWTABLE                         R12 0 2
      129 DUPTABLE                         R13 K84 [{["Id"] = "Slider", ["Label"] = "Child 1", ["Schema"], ["Value"] = 0.5}]
      130 DUPTABLE                         R14 K38 [{["Type"] = "Slider", ["Min"] = 0, ["Max"] = 1, ["ShowInput"] = True, ["SnapIncrement"] = 0.05}]
      131 SETTABLEKS                       R14 R13 K15 ["Schema"]
      133 DUPTABLE                         R14 K87 [{["Children"], ["Id"] = "Multi", ["Label"] = "Child 2", ["Schema"], ["Value"] = 0.5}]
      134 NEWTABLE                         R15 0 1
      136 DUPTABLE                         R16 K27 [{["Id"] = "Number", ["Label"] = "Number", ["Schema"], ["Value"] = 1}]
      137 DUPTABLE                         R17 K29 [{["Type"] = "Number", ["PlaceholderText"] = 0}]
      138 SETTABLEKS                       R17 R16 K15 ["Schema"]
      140 SETLIST                          R15 R16 1 [1]
      142 SETTABLEKS                       R15 R14 K81 ["Children"]
      144 DUPTABLE                         R15 K38 [{["Type"] = "Slider", ["Min"] = 0, ["Max"] = 1, ["ShowInput"] = True, ["SnapIncrement"] = 0.05}]
      145 SETTABLEKS                       R15 R14 K15 ["Schema"]
      147 SETLIST                          R12 R13 2 [1]
      149 SETTABLEKS                       R12 R11 K81 ["Children"]
      151 DUPTABLE                         R12 K88 [{["Type"] = "Number"}]
      152 SETTABLEKS                       R12 R11 K15 ["Schema"]
      154 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      156 MOVE                             R10 R8
      157 GETIMPORT                        R9 K91 [table.insert]
      159 CALL                             R9 2 0
      160 GETTABLEKS                       R9 R1 K92 ["PureComponent"]
      162 LOADK                            R11 K93 ["Settings"]
      163 NAMECALL                         R9 R9 K94 ["extend"]
      165 CALL                             R9 2 1
      166 DUPCLOSURE                       R10 K95 [PROTO_11]
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R7
      170 SETTABLEKS                       R10 R9 K96 ["init"]
      172 DUPCLOSURE                       R10 K97 [PROTO_12]
      173 CAPTURE                          VAL R3
      174 SETTABLEKS                       R10 R9 K98 ["didUpdate"]
      176 DUPCLOSURE                       R10 K99 [PROTO_13]
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R6
      180 SETTABLEKS                       R10 R9 K100 ["render"]
      182 DUPTABLE                         R10 K103 [{"controls", "stories"}]
      183 DUPTABLE                         R11 K106 [{["Disabled"] = False}]
      184 SETTABLEKS                       R11 R10 K101 ["controls"]
      186 NEWTABLE                         R11 0 1
      188 DUPTABLE                         R12 K110 [{["name"] = "Form", ["story"]}]
      189 DUPCLOSURE                       R13 K111 [PROTO_14]
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R9
      192 SETTABLEKS                       R13 R12 K109 ["story"]
      194 SETLIST                          R11 R12 1 [1]
      196 SETTABLEKS                       R11 R10 K102 ["stories"]
      198 RETURN                           R10 1
