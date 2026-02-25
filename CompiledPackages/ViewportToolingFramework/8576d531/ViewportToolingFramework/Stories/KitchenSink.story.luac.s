PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Option A clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Option B clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked on"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Should be unreachable"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K5 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick"}]
        1 LOADK                            R2 K6 ["Button"]
        2 SETTABLEKS                       R2 R1 K0 ["Type"]
        4 LOADK                            R2 K7 ["A button"]
        5 SETTABLEKS                       R2 R1 K1 ["Tooltip"]
        7 LOADK                            R3 K8 ["This is a %*long description."]
        8 GETIMPORT                        R5 K11 [string.rep]
       10 LOADK                            R6 K12 ["very "]
       11 LOADN                            R7 10
       12 CALL                             R5 2 1
       13 NAMECALL                         R3 R3 K13 ["format"]
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 SETTABLEKS                       R2 R1 K2 ["TooltipDescription"]
       19 LOADK                            R2 K14 ["rbxassetid://11560341132"]
       20 SETTABLEKS                       R2 R1 K3 ["Icon"]
       22 DUPCLOSURE                       R2 K15 [PROTO_0]
       23 SETTABLEKS                       R2 R1 K4 ["OnClick"]
       25 GETIMPORT                        R2 K18 [table.clone]
       27 MOVE                             R3 R1
       28 CALL                             R2 1 1
       29 LOADB                            R3 1
       30 SETTABLEKS                       R3 R2 K19 ["Selected"]
       32 DUPTABLE                         R3 K21 [{"Type", "Options"}]
       33 LOADK                            R4 K22 ["SplitButton"]
       34 SETTABLEKS                       R4 R3 K0 ["Type"]
       36 NEWTABLE                         R4 0 2
       38 DUPTABLE                         R5 K24 [{"Icon", "Text", "OnClick"}]
       39 LOADK                            R6 K25 ["rbxasset://textures/StudioToolbox/Search.png"]
       40 SETTABLEKS                       R6 R5 K3 ["Icon"]
       42 LOADK                            R6 K26 ["Option A"]
       43 SETTABLEKS                       R6 R5 K23 ["Text"]
       45 DUPCLOSURE                       R6 K27 [PROTO_1]
       46 SETTABLEKS                       R6 R5 K4 ["OnClick"]
       48 DUPTABLE                         R6 K28 [{"Icon", "Text", "TooltipDescription", "OnClick"}]
       49 LOADK                            R7 K29 ["rbxasset://textures/StudioToolbox/Gallery.png"]
       50 SETTABLEKS                       R7 R6 K3 ["Icon"]
       52 LOADK                            R7 K30 ["This is the second option, as you can see"]
       53 SETTABLEKS                       R7 R6 K23 ["Text"]
       55 LOADK                            R7 K31 ["The name is long on purpose!"]
       56 SETTABLEKS                       R7 R6 K2 ["TooltipDescription"]
       58 DUPCLOSURE                       R7 K32 [PROTO_2]
       59 SETTABLEKS                       R7 R6 K4 ["OnClick"]
       61 SETLIST                          R4 R5 2 [1]
       63 SETTABLEKS                       R4 R3 K20 ["Options"]
       65 DUPTABLE                         R4 K33 [{"Type"}]
       66 LOADK                            R5 K34 ["Separator"]
       67 SETTABLEKS                       R5 R4 K0 ["Type"]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R5 R6 K35 ["useState"]
       72 LOADK                            R6 K36 ["gallery"]
       73 CALL                             R5 1 2
       74 DUPTABLE                         R7 K40 [{"Type", "Value", "OnChange", "Items"}]
       75 LOADK                            R8 K41 ["Radio"]
       76 SETTABLEKS                       R8 R7 K0 ["Type"]
       78 SETTABLEKS                       R5 R7 K37 ["Value"]
       80 SETTABLEKS                       R6 R7 K38 ["OnChange"]
       82 NEWTABLE                         R8 0 3
       84 DUPTABLE                         R9 K43 [{"Id", "Tooltip", "TooltipDescription", "Icon"}]
       85 LOADK                            R10 K36 ["gallery"]
       86 SETTABLEKS                       R10 R9 K42 ["Id"]
       88 LOADK                            R10 K44 ["Gallery"]
       89 SETTABLEKS                       R10 R9 K1 ["Tooltip"]
       91 LOADK                            R10 K45 ["The gallery"]
       92 SETTABLEKS                       R10 R9 K2 ["TooltipDescription"]
       94 LOADK                            R10 K29 ["rbxasset://textures/StudioToolbox/Gallery.png"]
       95 SETTABLEKS                       R10 R9 K3 ["Icon"]
       97 DUPTABLE                         R10 K46 [{"Id", "Tooltip", "Icon"}]
       98 LOADK                            R11 K47 ["list"]
       99 SETTABLEKS                       R11 R10 K42 ["Id"]
      101 LOADK                            R11 K48 ["List"]
      102 SETTABLEKS                       R11 R10 K1 ["Tooltip"]
      104 LOADK                            R11 K49 ["rbxasset://textures/StudioToolbox/List.png"]
      105 SETTABLEKS                       R11 R10 K3 ["Icon"]
      107 DUPTABLE                         R11 K46 [{"Id", "Tooltip", "Icon"}]
      108 LOADK                            R12 K50 ["search"]
      109 SETTABLEKS                       R12 R11 K42 ["Id"]
      111 LOADK                            R12 K51 ["Search"]
      112 SETTABLEKS                       R12 R11 K1 ["Tooltip"]
      114 LOADK                            R12 K25 ["rbxasset://textures/StudioToolbox/Search.png"]
      115 SETTABLEKS                       R12 R11 K3 ["Icon"]
      117 SETLIST                          R8 R9 3 [1]
      119 SETTABLEKS                       R8 R7 K39 ["Items"]
      121 GETUPVAL                         R9 0
      122 GETTABLEKS                       R8 R9 K35 ["useState"]
      124 LOADN                            R9 5
      125 CALL                             R8 1 2
      126 DUPTABLE                         R10 K55 [{"Type", "Value", "OnChange", "Min", "Max", "IncrementStep", "Icon", "Tooltip"}]
      127 LOADK                            R11 K56 ["Slider"]
      128 SETTABLEKS                       R11 R10 K0 ["Type"]
      130 SETTABLEKS                       R8 R10 K37 ["Value"]
      132 SETTABLEKS                       R9 R10 K38 ["OnChange"]
      134 LOADN                            R11 0
      135 SETTABLEKS                       R11 R10 K52 ["Min"]
      137 LOADN                            R11 10
      138 SETTABLEKS                       R11 R10 K53 ["Max"]
      140 LOADN                            R11 1
      141 SETTABLEKS                       R11 R10 K54 ["IncrementStep"]
      143 LOADK                            R11 K29 ["rbxasset://textures/StudioToolbox/Gallery.png"]
      144 SETTABLEKS                       R11 R10 K3 ["Icon"]
      146 LOADK                            R11 K57 ["My slider"]
      147 SETTABLEKS                       R11 R10 K1 ["Tooltip"]
      149 DUPTABLE                         R11 K58 [{"Type", "Text"}]
      150 LOADK                            R12 K59 ["Label"]
      151 SETTABLEKS                       R12 R11 K0 ["Type"]
      153 LOADK                            R12 K60 ["This is a label."]
      154 SETTABLEKS                       R12 R11 K23 ["Text"]
      156 DUPTABLE                         R12 K62 [{"HorizontalItems"}]
      157 NEWTABLE                         R13 0 12
      159 MOVE                             R14 R1
      160 MOVE                             R15 R2
      161 GETUPVAL                         R17 1
      162 CALL                             R17 0 1
      163 JUMPIFNOT                        R17 ; [+2]
      164 MOVE                             R16 R3
      165 JUMP                             ; [+1]
      166 MOVE                             R16 R4
      167 MOVE                             R17 R4
      168 MOVE                             R18 R7
      169 MOVE                             R19 R4
      170 MOVE                             R20 R10
      171 MOVE                             R21 R4
      172 DUPTABLE                         R22 K63 [{"Type", "Text", "OnClick"}]
      173 LOADK                            R23 K64 ["TextButton"]
      174 SETTABLEKS                       R23 R22 K0 ["Type"]
      176 LOADK                            R23 K65 ["On"]
      177 SETTABLEKS                       R23 R22 K23 ["Text"]
      179 DUPCLOSURE                       R23 K66 [PROTO_3]
      180 SETTABLEKS                       R23 R22 K4 ["OnClick"]
      182 DUPTABLE                         R23 K68 [{"Type", "Text", "Enabled", "OnClick"}]
      183 LOADK                            R24 K64 ["TextButton"]
      184 SETTABLEKS                       R24 R23 K0 ["Type"]
      186 LOADK                            R24 K69 ["Off"]
      187 SETTABLEKS                       R24 R23 K23 ["Text"]
      189 LOADB                            R24 0
      190 SETTABLEKS                       R24 R23 K67 ["Enabled"]
      192 DUPCLOSURE                       R24 K70 [PROTO_4]
      193 SETTABLEKS                       R24 R23 K4 ["OnClick"]
      195 MOVE                             R24 R4
      196 MOVE                             R25 R11
      197 SETLIST                          R13 R14 12 [1]
      199 SETTABLEKS                       R13 R12 K61 ["HorizontalItems"]
      201 DUPTABLE                         R13 K72 [{"VerticalItems"}]
      202 NEWTABLE                         R14 0 5
      204 MOVE                             R15 R1
      205 MOVE                             R16 R2
      206 GETUPVAL                         R18 1
      207 CALL                             R18 0 1
      208 JUMPIFNOT                        R18 ; [+2]
      209 MOVE                             R17 R3
      210 JUMP                             ; [+1]
      211 MOVE                             R17 R4
      212 MOVE                             R18 R4
      213 MOVE                             R19 R7
      214 SETLIST                          R14 R15 5 [1]
      216 SETTABLEKS                       R14 R13 K71 ["VerticalItems"]
      218 GETTABLEKS                       R16 R0 K73 ["controls"]
      220 GETTABLEKS                       R15 R16 K74 ["PutInViewport"]
      222 JUMPIFNOT                        R15 ; [+2]
      223 GETUPVAL                         R14 2
      224 JUMP                             ; [+1]
      225 GETUPVAL                         R14 3
      226 GETUPVAL                         R16 0
      227 GETTABLEKS                       R15 R16 K75 ["createElement"]
      229 GETUPVAL                         R17 0
      230 GETTABLEKS                       R16 R17 K76 ["Fragment"]
      232 NEWTABLE                         R17 0 0
      234 DUPTABLE                         R18 K79 [{"HorizontalToolbar", "VerticalToolbar"}]
      235 GETUPVAL                         R20 0
      236 GETTABLEKS                       R19 R20 K75 ["createElement"]
      238 MOVE                             R20 R14
      239 MOVE                             R21 R12
      240 CALL                             R19 2 1
      241 SETTABLEKS                       R19 R18 K77 ["HorizontalToolbar"]
      243 GETUPVAL                         R20 0
      244 GETTABLEKS                       R19 R20 K75 ["createElement"]
      246 MOVE                             R20 R14
      247 MOVE                             R21 R13
      248 CALL                             R19 2 1
      249 SETTABLEKS                       R19 R18 K78 ["VerticalToolbar"]
      251 CALL                             R15 3 -1
      252 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R4 K9 ["Toolbar"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R4 R5 K10 ["ToolbarBase"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Flags"]
       37 GETTABLEKS                       R6 R7 K13 ["getFFlagViewportToolingFrameworkSplitButtons"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K14 [PROTO_5]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 DUPTABLE                         R7 K17 [{"story", "controls"}]
       46 SETTABLEKS                       R6 R7 K15 ["story"]
       48 DUPTABLE                         R8 K19 [{"PutInViewport"}]
       49 LOADB                            R9 0
       50 SETTABLEKS                       R9 R8 K18 ["PutInViewport"]
       52 SETTABLEKS                       R8 R7 K16 ["controls"]
       54 RETURN                           R7 1
