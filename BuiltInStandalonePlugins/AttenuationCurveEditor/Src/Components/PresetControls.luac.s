PROTO_0:
        0 GETIMPORT                        R1 K2 [table.find]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R4 2
        9 GETTABLE                         R3 R4 R1
       10 SETTABLEKS                       R3 R2 K3 ["CurveType"]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K4 ["OnPresetChanged"]
       15 GETUPVAL                         R3 1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       MATH_MAX R0 K0 ; [+5]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K0 [0]
        5 GETIMPORT                        R2 K3 [math.max]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K4 ["Min"]
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["Min"]
       14 ADDK                             R3 R4 K5 [0.01]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K6 ["Max"]
       18 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       20 GETIMPORT                        R2 K3 [math.max]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K6 ["Max"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K7 ["OnPresetChanged"]
       28 GETUPVAL                         R2 0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       MATH_MAX R0 K0 ; [+5]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K0 [0.01]
        5 GETIMPORT                        R2 K3 [math.max]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K4 ["Max"]
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["Max"]
       14 SUBK                             R3 R4 K0 [0.01]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K5 ["Min"]
       18 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       20 GETIMPORT                        R2 K7 [math.min]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K5 ["Min"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K8 ["OnPresetChanged"]
       28 GETUPVAL                         R2 0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Context"]
        4 GETTABLEKS                       R2 R2 K1 ["Consumer"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["Localization"]
       10 GETTABLEKS                       R3 R3 K3 ["Key"]
       12 GETTABLE                         R2 R1 R3
       13 NEWTABLE                         R3 0 4
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["INVERSE"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K5 ["INVERSE_TAPERED"]
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K6 ["LINEAR"]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K7 ["LINEAR_SQUARED"]
       27 SETLIST                          R3 R4 4 [1]
       29 NEWTABLE                         R4 0 4
       31 LOADK                            R7 K8 ["Label"]
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R8 R8 K4 ["INVERSE"]
       35 NAMECALL                         R5 R2 K9 ["getText"]
       37 CALL                             R5 3 1
       38 LOADK                            R8 K8 ["Label"]
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R9 R9 K5 ["INVERSE_TAPERED"]
       42 NAMECALL                         R6 R2 K9 ["getText"]
       44 CALL                             R6 3 1
       45 LOADK                            R9 K8 ["Label"]
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R10 R10 K6 ["LINEAR"]
       49 NAMECALL                         R7 R2 K9 ["getText"]
       51 CALL                             R7 3 1
       52 LOADK                            R10 K8 ["Label"]
       53 GETUPVAL                         R11 2
       54 GETTABLEKS                       R11 R11 K7 ["LINEAR_SQUARED"]
       56 NAMECALL                         R8 R2 K9 ["getText"]
       58 CALL                             R8 3 -1
       59 SETLIST                          R4 R5 -1 [1]
       61 GETTABLEKS                       R5 R0 K10 ["Preset"]
       63 GETTABLEKS                       R7 R5 K11 ["CurveType"]
       65 GETUPVAL                         R8 2
       66 GETTABLEKS                       R8 R8 K12 ["CUSTOM"]
       68 JUMPIFEQ                         R7 R8 ; [+2]
       70 LOADB                            R6 0 +1
       71 LOADB                            R6 1
       72 GETUPVAL                         R7 3
       73 NEWCLOSURE                       R8 P0
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R0
       78 NEWTABLE                         R9 0 1
       80 MOVE                             R10 R0
       81 SETLIST                          R9 R10 1 [1]
       83 CALL                             R7 2 1
       84 GETUPVAL                         R8 3
       85 NEWCLOSURE                       R9 P1
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R0
       88 NEWTABLE                         R10 0 1
       90 MOVE                             R11 R0
       91 SETLIST                          R10 R11 1 [1]
       93 CALL                             R8 2 1
       94 GETUPVAL                         R9 3
       95 NEWCLOSURE                       R10 P2
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R11 0 1
      100 MOVE                             R12 R0
      101 SETLIST                          R11 R12 1 [1]
      103 CALL                             R9 2 1
      104 GETUPVAL                         R10 4
      105 GETTABLEKS                       R10 R10 K13 ["createElement"]
      107 GETUPVAL                         R11 5
      108 NEWTABLE                         R12 2 0
      110 GETIMPORT                        R13 K16 [UDim2.fromScale]
      112 LOADN                            R14 1
      113 LOADN                            R15 0
      114 CALL                             R13 2 1
      115 SETTABLEKS                       R13 R12 K17 ["Size"]
      117 GETUPVAL                         R13 4
      118 GETTABLEKS                       R13 R13 K18 ["Tag"]
      120 LOADK                            R14 K19 ["X-Pad X-RowM X-FitY"]
      121 SETTABLE                         R14 R12 R13
      122 DUPTABLE                         R13 K22 [{"TypeDropdown", "ParamsContainer"}]
      123 GETUPVAL                         R14 4
      124 GETTABLEKS                       R14 R14 K13 ["createElement"]
      126 GETUPVAL                         R15 6
      127 DUPTABLE                         R16 K28 [{["LayoutOrder"] = 0, ["PlaceholderText"], ["Items"], ["OnItemActivated"]}]
      128 LOADK                            R19 K8 ["Label"]
      129 GETTABLEKS                       R20 R5 K11 ["CurveType"]
      131 NAMECALL                         R17 R2 K9 ["getText"]
      133 CALL                             R17 3 1
      134 SETTABLEKS                       R17 R16 K25 ["PlaceholderText"]
      136 SETTABLEKS                       R4 R16 K26 ["Items"]
      138 SETTABLEKS                       R7 R16 K27 ["OnItemActivated"]
      140 CALL                             R14 2 1
      141 SETTABLEKS                       R14 R13 K20 ["TypeDropdown"]
      143 NOT                              R14 R6
      144 JUMPIFNOT                        R14 ; [+64]
      145 GETUPVAL                         R14 4
      146 GETTABLEKS                       R14 R14 K13 ["createElement"]
      148 GETUPVAL                         R15 5
      149 NEWTABLE                         R16 2 0
      151 LOADN                            R17 1
      152 SETTABLEKS                       R17 R16 K23 ["LayoutOrder"]
      154 GETUPVAL                         R17 4
      155 GETTABLEKS                       R17 R17 K18 ["Tag"]
      157 LOADK                            R18 K29 ["X-Left X-RowM X-FitY"]
      158 SETTABLE                         R18 R16 R17
      159 DUPTABLE                         R17 K32 [{"Min", "Max"}]
      160 GETUPVAL                         R18 4
      161 GETTABLEKS                       R18 R18 K13 ["createElement"]
      163 GETUPVAL                         R19 7
      164 DUPTABLE                         R20 K38 [{["LayoutOrder"] = 1, ["Text"], ["Schema"], ["Value"], ["OnChanged"]}]
      165 LOADK                            R23 K8 ["Label"]
      166 LOADK                            R24 K30 ["Min"]
      167 NAMECALL                         R21 R2 K9 ["getText"]
      169 CALL                             R21 3 1
      170 SETTABLEKS                       R21 R20 K34 ["Text"]
      172 DUPTABLE                         R21 K41 [{["Type"] = "Number", ["Min"] = 0}]
      173 SETTABLEKS                       R21 R20 K35 ["Schema"]
      175 GETTABLEKS                       R21 R5 K30 ["Min"]
      177 SETTABLEKS                       R21 R20 K36 ["Value"]
      179 SETTABLEKS                       R8 R20 K37 ["OnChanged"]
      181 CALL                             R18 2 1
      182 SETTABLEKS                       R18 R17 K30 ["Min"]
      184 GETUPVAL                         R18 4
      185 GETTABLEKS                       R18 R18 K13 ["createElement"]
      187 GETUPVAL                         R19 7
      188 DUPTABLE                         R20 K43 [{["LayoutOrder"] = 2, ["Text"], ["Schema"], ["Value"], ["OnChanged"]}]
      189 LOADK                            R23 K8 ["Label"]
      190 LOADK                            R24 K31 ["Max"]
      191 NAMECALL                         R21 R2 K9 ["getText"]
      193 CALL                             R21 3 1
      194 SETTABLEKS                       R21 R20 K34 ["Text"]
      196 DUPTABLE                         R21 K45 [{["Type"] = "Number", ["Min"] = 0.01}]
      197 SETTABLEKS                       R21 R20 K35 ["Schema"]
      199 GETTABLEKS                       R21 R5 K31 ["Max"]
      201 SETTABLEKS                       R21 R20 K36 ["Value"]
      203 SETTABLEKS                       R9 R20 K37 ["OnChanged"]
      205 CALL                             R18 2 1
      206 SETTABLEKS                       R18 R17 K31 ["Max"]
      208 CALL                             R14 3 1
      209 SETTABLEKS                       R14 R13 K21 ["ParamsContainer"]
      211 CALL                             R10 3 -1
      212 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AttenuationCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useContext"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["Framework"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       27 GETTABLEKS                       R6 R4 K12 ["UI"]
       29 GETTABLEKS                       R6 R6 K13 ["Pane"]
       31 GETTABLEKS                       R7 R4 K12 ["UI"]
       33 GETTABLEKS                       R7 R7 K14 ["SelectInput"]
       35 GETIMPORT                        R8 K5 [require]
       37 GETTABLEKS                       R9 R0 K15 ["Src"]
       39 GETTABLEKS                       R9 R9 K16 ["Types"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K5 [require]
       44 GETTABLEKS                       R10 R0 K15 ["Src"]
       46 GETTABLEKS                       R10 R10 K17 ["Components"]
       48 GETTABLEKS                       R10 R10 K18 ["LabelCell"]
       50 CALL                             R9 1 1
       51 DUPCLOSURE                       R10 K19 [PROTO_3]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R9
       60 RETURN                           R10 1
