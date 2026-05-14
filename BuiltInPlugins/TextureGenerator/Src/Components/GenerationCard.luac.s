PROTO_0:
        0 NEWTABLE                         R2 0 4
        2 DUPTABLE                         R3 K3 [{"Id", "Text", "OnItemClicked"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K4 ["DROPDOWN_ACTIONS"]
        6 GETTABLEKS                       R4 R4 K5 ["INSERT"]
        8 SETTABLEKS                       R4 R3 K0 ["Id"]
       10 LOADK                            R6 K6 ["DropdownOptions"]
       11 LOADK                            R7 K7 ["Insert"]
       12 NAMECALL                         R4 R0 K8 ["getText"]
       14 CALL                             R4 3 1
       15 SETTABLEKS                       R4 R3 K1 ["Text"]
       17 SETTABLEKS                       R1 R3 K2 ["OnItemClicked"]
       19 DUPTABLE                         R4 K3 [{"Id", "Text", "OnItemClicked"}]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K4 ["DROPDOWN_ACTIONS"]
       23 GETTABLEKS                       R5 R5 K9 ["INVENTORY"]
       25 SETTABLEKS                       R5 R4 K0 ["Id"]
       27 LOADK                            R7 K6 ["DropdownOptions"]
       28 LOADK                            R8 K10 ["Inventory"]
       29 NAMECALL                         R5 R0 K8 ["getText"]
       31 CALL                             R5 3 1
       32 SETTABLEKS                       R5 R4 K1 ["Text"]
       34 SETTABLEKS                       R1 R4 K2 ["OnItemClicked"]
       36 DUPTABLE                         R5 K3 [{"Id", "Text", "OnItemClicked"}]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K4 ["DROPDOWN_ACTIONS"]
       40 GETTABLEKS                       R6 R6 K11 ["EXPORT"]
       42 SETTABLEKS                       R6 R5 K0 ["Id"]
       44 LOADK                            R8 K6 ["DropdownOptions"]
       45 LOADK                            R9 K12 ["Export"]
       46 NAMECALL                         R6 R0 K8 ["getText"]
       48 CALL                             R6 3 1
       49 SETTABLEKS                       R6 R5 K1 ["Text"]
       51 SETTABLEKS                       R1 R5 K2 ["OnItemClicked"]
       53 DUPTABLE                         R6 K3 [{"Id", "Text", "OnItemClicked"}]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K4 ["DROPDOWN_ACTIONS"]
       57 GETTABLEKS                       R7 R7 K13 ["REMOVE"]
       59 SETTABLEKS                       R7 R6 K0 ["Id"]
       61 LOADK                            R9 K6 ["DropdownOptions"]
       62 LOADK                            R10 K14 ["Remove"]
       63 NAMECALL                         R7 R0 K8 ["getText"]
       65 CALL                             R7 3 1
       66 SETTABLEKS                       R7 R6 K1 ["Text"]
       68 SETTABLEKS                       R1 R6 K2 ["OnItemClicked"]
       70 SETLIST                          R2 R3 4 [1]
       72 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+23]
        2 GETIMPORT                        R0 K2 [Instance.new]
        4 LOADK                            R1 K3 ["Model"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETUPVAL                         R6 1
       11 MOVE                             R7 R5
       12 CALL                             R6 1 1
       13 JUMPIFNOT                        R6 ; [+8]
       14 GETUPVAL                         R7 2
       15 JUMPIFNOT                        R7 ; [+4]
       16 GETUPVAL                         R7 3
       17 MOVE                             R8 R6
       18 GETUPVAL                         R9 2
       19 CALL                             R7 2 0
       20 SETTABLEKS                       R0 R6 K4 ["Parent"]
       22 FORGLOOP                         R1 2 ; [-13]
       24 RETURN                           R0 1
       25 LOADNIL                          R0
       26 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R4 0 2
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 SETLIST                          R4 R5 2 [1]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["ViewportSize"]
        2 LOADN                            R4 1
        3 GETTABLEKS                       R6 R2 K1 ["X"]
        5 GETTABLEKS                       R7 R2 K2 ["Y"]
        7 DIV                              R5 R6 R7
        8 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       10 GETIMPORT                        R3 K5 [math.min]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R9 R1 K7 ["FieldOfView"]
       15 DIVK                             R8 R9 K6 [2]
       16 FASTCALL1                        MATH_RAD R8 ; [+2]
       17 GETIMPORT                        R7 K9 [math.rad]
       19 CALL                             R7 1 1
       20 FASTCALL1                        MATH_TAN R7 ; [+2]
       21 GETIMPORT                        R6 K11 [math.tan]
       23 CALL                             R6 1 1
       24 MUL                              R5 R6 R3
       25 FASTCALL1                        MATH_ATAN R5 ; [+2]
       26 GETIMPORT                        R4 K13 [math.atan]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R6 R0 K14 ["Magnitude"]
       31 DIVK                             R5 R6 K6 [2]
       32 FASTCALL1                        MATH_SIN R4 ; [+3]
       33 MOVE                             R8 R4
       34 GETIMPORT                        R7 K16 [math.sin]
       36 CALL                             R7 1 1
       37 DIV                              R6 R5 R7
       38 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R0 K2 ["Generation"]
       10 GETTABLEKS                       R3 R3 K3 ["startTime"]
       12 GETTABLEKS                       R5 R0 K2 ["Generation"]
       14 GETTABLEKS                       R5 R5 K4 ["estimatedWaitDurationSeconds"]
       16 FASTCALL1                        TONUMBER R5 ; [+2]
       17 GETIMPORT                        R4 K6 [tonumber]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R0 K2 ["Generation"]
       22 GETTABLEKS                       R5 R5 K7 ["previewImage"]
       24 GETUPVAL                         R6 2
       25 LOADK                            R8 K8 ["GenerationCard"]
       26 NAMECALL                         R6 R6 K0 ["use"]
       28 CALL                             R6 2 1
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K9 ["createElement"]
       32 GETUPVAL                         R8 4
       33 DUPTABLE                         R9 K16 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "VerticalAlignment", "Size"}]
       34 GETIMPORT                        R10 K19 [Enum.AutomaticSize.Y]
       36 SETTABLEKS                       R10 R9 K10 ["AutomaticSize"]
       38 GETIMPORT                        R10 K21 [Enum.HorizontalAlignment.Left]
       40 SETTABLEKS                       R10 R9 K11 ["HorizontalAlignment"]
       42 GETIMPORT                        R10 K24 [Enum.FillDirection.Horizontal]
       44 SETTABLEKS                       R10 R9 K12 ["Layout"]
       46 GETTABLEKS                       R10 R6 K13 ["Padding"]
       48 SETTABLEKS                       R10 R9 K13 ["Padding"]
       50 GETIMPORT                        R10 K26 [Enum.VerticalAlignment.Center]
       52 SETTABLEKS                       R10 R9 K14 ["VerticalAlignment"]
       54 GETIMPORT                        R10 K29 [UDim2.fromScale]
       56 LOADN                            R11 1
       57 LOADN                            R12 0
       58 CALL                             R10 2 1
       59 SETTABLEKS                       R10 R9 K15 ["Size"]
       61 DUPTABLE                         R10 K33 [{"PreviewImage", "Content", "CancelButton"}]
       62 JUMPIFNOT                        R5 ; [+34]
       63 GETUPVAL                         R11 3
       64 GETTABLEKS                       R11 R11 K9 ["createElement"]
       66 GETUPVAL                         R12 5
       67 DUPTABLE                         R13 K38 [{"AnchorPoint", "LayoutOrder", "Size", "Image", "Position"}]
       68 GETIMPORT                        R14 K40 [Vector2.new]
       70 LOADK                            R15 K41 [0.5]
       71 LOADK                            R16 K41 [0.5]
       72 CALL                             R14 2 1
       73 SETTABLEKS                       R14 R13 K34 ["AnchorPoint"]
       75 NAMECALL                         R14 R2 K42 ["getNextOrder"]
       77 CALL                             R14 1 1
       78 SETTABLEKS                       R14 R13 K35 ["LayoutOrder"]
       80 GETTABLEKS                       R14 R6 K43 ["PreviewImageSize"]
       82 SETTABLEKS                       R14 R13 K15 ["Size"]
       84 GETTABLEKS                       R14 R5 K44 ["previewId"]
       86 SETTABLEKS                       R14 R13 K36 ["Image"]
       88 GETIMPORT                        R14 K29 [UDim2.fromScale]
       90 LOADK                            R15 K41 [0.5]
       91 LOADK                            R16 K41 [0.5]
       92 CALL                             R14 2 1
       93 SETTABLEKS                       R14 R13 K37 ["Position"]
       95 CALL                             R11 2 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R11
       98 SETTABLEKS                       R11 R10 K30 ["PreviewImage"]
      100 JUMPIFNOT                        R4 ; [+27]
      101 GETUPVAL                         R11 3
      102 GETTABLEKS                       R11 R11 K9 ["createElement"]
      104 GETUPVAL                         R12 6
      105 DUPTABLE                         R13 K49 [{"CanGoOverTime", "LayoutOrder", "StartTime", "TotalTime", "Width"}]
      106 GETUPVAL                         R15 7
      107 JUMPIFNOT                        R15 ; [+2]
      108 LOADB                            R14 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R14
      111 SETTABLEKS                       R14 R13 K45 ["CanGoOverTime"]
      113 NAMECALL                         R14 R2 K42 ["getNextOrder"]
      115 CALL                             R14 1 1
      116 SETTABLEKS                       R14 R13 K35 ["LayoutOrder"]
      118 SETTABLEKS                       R3 R13 K46 ["StartTime"]
      120 SETTABLEKS                       R4 R13 K47 ["TotalTime"]
      122 GETTABLEKS                       R14 R6 K50 ["ProgressBarWidth"]
      124 SETTABLEKS                       R14 R13 K48 ["Width"]
      126 CALL                             R11 2 1
      127 JUMP                             ; [+36]
      128 GETUPVAL                         R11 3
      129 GETTABLEKS                       R11 R11 K9 ["createElement"]
      131 GETUPVAL                         R12 8
      132 DUPTABLE                         R13 K56 [{"LayoutOrder", "Size", "Text", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      133 NAMECALL                         R14 R2 K42 ["getNextOrder"]
      135 CALL                             R14 1 1
      136 SETTABLEKS                       R14 R13 K35 ["LayoutOrder"]
      138 GETTABLEKS                       R14 R6 K57 ["PromptLabelProgressSize"]
      140 SETTABLEKS                       R14 R13 K15 ["Size"]
      142 GETTABLEKS                       R14 R0 K2 ["Generation"]
      144 GETTABLEKS                       R14 R14 K58 ["prompt"]
      146 SETTABLEKS                       R14 R13 K51 ["Text"]
      148 GETIMPORT                        R14 K60 [Enum.TextTruncate.AtEnd]
      150 SETTABLEKS                       R14 R13 K52 ["TextTruncate"]
      152 GETIMPORT                        R14 K61 [Enum.TextXAlignment.Left]
      154 SETTABLEKS                       R14 R13 K53 ["TextXAlignment"]
      156 GETIMPORT                        R14 K62 [Enum.TextYAlignment.Center]
      158 SETTABLEKS                       R14 R13 K54 ["TextYAlignment"]
      160 LOADB                            R14 1
      161 SETTABLEKS                       R14 R13 K55 ["TextWrapped"]
      163 CALL                             R11 2 1
      164 SETTABLEKS                       R11 R10 K31 ["Content"]
      166 GETUPVAL                         R11 3
      167 GETTABLEKS                       R11 R11 K9 ["createElement"]
      169 GETUPVAL                         R12 9
      170 DUPTABLE                         R13 K65 [{"LayoutOrder", "Size", "OnClick", "Style", "Text"}]
      171 NAMECALL                         R14 R2 K42 ["getNextOrder"]
      173 CALL                             R14 1 1
      174 SETTABLEKS                       R14 R13 K35 ["LayoutOrder"]
      176 GETTABLEKS                       R14 R6 K66 ["CancelButtonSize"]
      178 SETTABLEKS                       R14 R13 K15 ["Size"]
      180 GETTABLEKS                       R14 R0 K67 ["OnCancel"]
      182 SETTABLEKS                       R14 R13 K63 ["OnClick"]
      184 GETTABLEKS                       R14 R6 K68 ["CancelButtonStyle"]
      186 SETTABLEKS                       R14 R13 K64 ["Style"]
      188 LOADK                            R16 K8 ["GenerationCard"]
      189 LOADK                            R17 K69 ["Cancel"]
      190 NAMECALL                         R14 R1 K70 ["getText"]
      192 CALL                             R14 3 1
      193 SETTABLEKS                       R14 R13 K51 ["Text"]
      195 CALL                             R11 2 1
      196 SETTABLEKS                       R11 R10 K32 ["CancelButton"]
      198 CALL                             R7 3 -1
      199 RETURN                           R7 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["DROPDOWN_ACTIONS"]
        5 GETTABLEKS                       R2 R2 K2 ["INSERT"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+112]
        9 GETIMPORT                        R1 K5 [Instance.new]
       11 LOADK                            R2 K6 ["Model"]
       12 CALL                             R1 1 1
       13 GETIMPORT                        R2 K8 [CFrame.new]
       15 CALL                             R2 0 1
       16 FASTCALL                         VECTOR ; [+2]
       17 GETIMPORT                        R3 K10 [Vector3.new]
       19 CALL                             R3 0 1
       20 GETUPVAL                         R4 1
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 GETUPVAL                         R9 2
       25 MOVE                             R10 R8
       26 CALL                             R9 1 1
       27 JUMPIFNOT                        R9 ; [+24]
       28 SETTABLEKS                       R1 R9 K11 ["Parent"]
       30 GETUPVAL                         R11 3
       31 GETTABLEKS                       R10 R11 K12 ["textureIds"]
       33 JUMPIFNOT                        R10 ; [+6]
       34 GETUPVAL                         R10 4
       35 MOVE                             R11 R9
       36 GETUPVAL                         R13 3
       37 GETTABLEKS                       R12 R13 K12 ["textureIds"]
       39 CALL                             R10 2 0
       40 GETTABLEKS                       R10 R8 K13 ["Size"]
       42 GETTABLEKS                       R10 R10 K14 ["Magnitude"]
       44 GETTABLEKS                       R11 R3 K14 ["Magnitude"]
       46 JUMPIFNOTLT                      R11 R10 ; [+5]
       48 GETTABLEKS                       R3 R8 K13 ["Size"]
       50 GETTABLEKS                       R2 R8 K7 ["CFrame"]
       52 FORGLOOP                         R4 2 ; [-29]
       54 GETUPVAL                         R4 5
       55 SETTABLEKS                       R4 R1 K11 ["Parent"]
       57 GETUPVAL                         R4 5
       58 GETTABLEKS                       R4 R4 K15 ["CurrentCamera"]
       60 GETIMPORT                        R5 K19 [Enum.CameraType.Fixed]
       62 SETTABLEKS                       R5 R4 K17 ["CameraType"]
       64 MOVE                             R6 R3
       65 GETTABLEKS                       R7 R4 K20 ["ViewportSize"]
       67 LOADN                            R9 1
       68 GETTABLEKS                       R11 R7 K21 ["X"]
       70 GETTABLEKS                       R12 R7 K22 ["Y"]
       72 DIV                              R10 R11 R12
       73 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       75 GETIMPORT                        R8 K25 [math.min]
       77 CALL                             R8 2 1
       78 GETTABLEKS                       R14 R4 K27 ["FieldOfView"]
       80 DIVK                             R13 R14 K26 [2]
       81 FASTCALL1                        MATH_RAD R13 ; [+2]
       82 GETIMPORT                        R12 K29 [math.rad]
       84 CALL                             R12 1 1
       85 FASTCALL1                        MATH_TAN R12 ; [+2]
       86 GETIMPORT                        R11 K31 [math.tan]
       88 CALL                             R11 1 1
       89 MUL                              R10 R11 R8
       90 FASTCALL1                        MATH_ATAN R10 ; [+2]
       91 GETIMPORT                        R9 K33 [math.atan]
       93 CALL                             R9 1 1
       94 GETTABLEKS                       R11 R6 K14 ["Magnitude"]
       96 DIVK                             R10 R11 K26 [2]
       97 FASTCALL1                        MATH_SIN R9 ; [+3]
       98 MOVE                             R12 R9
       99 GETIMPORT                        R11 K35 [math.sin]
      101 CALL                             R11 1 1
      102 DIV                              R5 R10 R11
      103 GETTABLEKS                       R6 R4 K7 ["CFrame"]
      105 GETTABLEKS                       R10 R6 K36 ["Position"]
      107 SUB                              R9 R6 R10
      108 GETTABLEKS                       R10 R2 K36 ["Position"]
      110 ADD                              R8 R9 R10
      111 GETTABLEKS                       R10 R6 K37 ["LookVector"]
      113 MUL                              R9 R10 R5
      114 SUB                              R7 R8 R9
      115 SETTABLEKS                       R7 R4 K7 ["CFrame"]
      117 SETTABLEKS                       R2 R4 K38 ["Focus"]
      119 RETURN                           R0 0
      120 GETTABLEKS                       R1 R0 K0 ["Id"]
      122 GETUPVAL                         R2 0
      123 GETTABLEKS                       R2 R2 K1 ["DROPDOWN_ACTIONS"]
      125 GETTABLEKS                       R2 R2 K39 ["INVENTORY"]
      127 JUMPIFNOTEQ                      R1 R2 ; [+9]
      129 GETUPVAL                         R1 6
      130 GETUPVAL                         R3 0
      131 GETTABLEKS                       R3 R3 K40 ["INVENTORY_URL"]
      133 NAMECALL                         R1 R1 K41 ["OpenBrowserWindow"]
      135 CALL                             R1 2 0
      136 RETURN                           R0 0
      137 GETTABLEKS                       R1 R0 K0 ["Id"]
      139 GETUPVAL                         R2 0
      140 GETTABLEKS                       R2 R2 K1 ["DROPDOWN_ACTIONS"]
      142 GETTABLEKS                       R2 R2 K42 ["EXPORT"]
      144 JUMPIFNOTEQ                      R1 R2 ; [+40]
      146 GETIMPORT                        R1 K44 [PluginManager]
      148 CALL                             R1 0 1
      149 NAMECALL                         R2 R1 K45 ["ExportSelection"]
      151 CALL                             R2 1 0
      152 GETUPVAL                         R2 7
      153 LOADK                            R4 K46 ["ExportGeneratedTexture"]
      154 GETUPVAL                         R5 3
      155 GETTABLEKS                       R5 R5 K47 ["serverId"]
      157 GETUPVAL                         R6 3
      158 GETTABLEKS                       R6 R6 K48 ["meshParts"]
      160 GETUPVAL                         R7 3
      161 GETTABLEKS                       R7 R7 K49 ["prompt"]
      163 GETUPVAL                         R8 3
      164 GETTABLEKS                       R8 R8 K50 ["seed"]
      166 GETUPVAL                         R9 3
      167 GETTABLEKS                       R9 R9 K51 ["rotation"]
      169 GETUPVAL                         R10 3
      170 GETTABLEKS                       R10 R10 K52 ["smartUVUnwrap"]
      172 GETUPVAL                         R11 3
      173 GETTABLEKS                       R11 R11 K53 ["promptMasking"]
      175 GETUPVAL                         R12 3
      176 GETTABLEKS                       R12 R12 K12 ["textureIds"]
      178 GETUPVAL                         R13 3
      179 GETTABLEKS                       R13 R13 K54 ["uuid"]
      181 NAMECALL                         R2 R2 K55 ["report"]
      183 CALL                             R2 11 0
      184 RETURN                           R0 0
      185 GETTABLEKS                       R1 R0 K0 ["Id"]
      187 GETUPVAL                         R2 0
      188 GETTABLEKS                       R2 R2 K1 ["DROPDOWN_ACTIONS"]
      190 GETTABLEKS                       R2 R2 K56 ["REMOVE"]
      192 JUMPIFNOTEQ                      R1 R2 ; [+52]
      194 GETUPVAL                         R1 8
      195 GETTABLEKS                       R1 R1 K57 ["updateGeneration"]
      197 DUPTABLE                         R2 K59 [{"action", "uuid"}]
      198 GETUPVAL                         R3 0
      199 GETTABLEKS                       R3 R3 K60 ["GENERATION_ACTIONS"]
      201 GETTABLEKS                       R3 R3 K56 ["REMOVE"]
      203 SETTABLEKS                       R3 R2 K58 ["action"]
      205 GETUPVAL                         R3 9
      206 GETTABLEKS                       R3 R3 K61 ["Generation"]
      208 GETTABLEKS                       R3 R3 K54 ["uuid"]
      210 SETTABLEKS                       R3 R2 K54 ["uuid"]
      212 CALL                             R1 1 0
      213 GETUPVAL                         R1 7
      214 LOADK                            R3 K62 ["RemoveGeneratedTexture"]
      215 GETUPVAL                         R4 3
      216 GETTABLEKS                       R4 R4 K47 ["serverId"]
      218 GETUPVAL                         R5 3
      219 GETTABLEKS                       R5 R5 K48 ["meshParts"]
      221 GETUPVAL                         R6 3
      222 GETTABLEKS                       R6 R6 K49 ["prompt"]
      224 GETUPVAL                         R7 3
      225 GETTABLEKS                       R7 R7 K50 ["seed"]
      227 GETUPVAL                         R8 3
      228 GETTABLEKS                       R8 R8 K51 ["rotation"]
      230 GETUPVAL                         R9 3
      231 GETTABLEKS                       R9 R9 K52 ["smartUVUnwrap"]
      233 GETUPVAL                         R10 3
      234 GETTABLEKS                       R10 R10 K53 ["promptMasking"]
      236 GETUPVAL                         R11 3
      237 GETTABLEKS                       R11 R11 K12 ["textureIds"]
      239 GETUPVAL                         R12 3
      240 GETTABLEKS                       R12 R12 K54 ["uuid"]
      242 NAMECALL                         R1 R1 K55 ["report"]
      244 CALL                             R1 11 0
      245 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+32]
        2 GETIMPORT                        R1 K2 [CFrame.fromEulerAnglesYXZ]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K3 ["X"]
        7 FASTCALL1                        MATH_RAD R4 ; [+2]
        8 GETIMPORT                        R3 K6 [math.rad]
       10 CALL                             R3 1 1
       11 MINUS                            R2 R3
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["Y"]
       15 FASTCALL1                        MATH_RAD R5 ; [+2]
       16 GETIMPORT                        R4 K6 [math.rad]
       18 CALL                             R4 1 1
       19 MINUS                            R3 R4
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K8 ["Z"]
       23 FASTCALL1                        MATH_RAD R6 ; [+2]
       24 GETIMPORT                        R5 K6 [math.rad]
       26 CALL                             R5 1 1
       27 MINUS                            R4 R5
       28 CALL                             R1 3 1
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K9 ["INITIAL_FOCUS_DIRECTION"]
       32 MUL                              R0 R1 R2
       33 RETURN                           R0 1
       34 GETUPVAL                         R0 1
       35 GETTABLEKS                       R0 R0 K9 ["INITIAL_FOCUS_DIRECTION"]
       37 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["accepted"]
        3 JUMPIFEQKNIL                     R0 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R0 K3 [table.clone]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 1
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K0 ["accepted"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["updateGeneration"]
       16 DUPTABLE                         R2 K8 [{"action", "uuid", "data"}]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K9 ["GENERATION_ACTIONS"]
       20 GETTABLEKS                       R3 R3 K10 ["UPDATE"]
       22 SETTABLEKS                       R3 R2 K5 ["action"]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K11 ["Generation"]
       27 GETTABLEKS                       R3 R3 K6 ["uuid"]
       29 SETTABLEKS                       R3 R2 K6 ["uuid"]
       31 SETTABLEKS                       R0 R2 K7 ["data"]
       33 CALL                             R1 1 0
       34 GETUPVAL                         R1 4
       35 LOADK                            R3 K12 ["SendFeedback"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K13 ["serverId"]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K14 ["meshParts"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K15 ["prompt"]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K16 ["seed"]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K17 ["rotation"]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K18 ["smartUVUnwrap"]
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R10 R10 K19 ["promptMasking"]
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K20 ["textureIds"]
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K6 ["uuid"]
       63 LOADB                            R13 1
       64 NAMECALL                         R1 R1 K21 ["report"]
       66 CALL                             R1 12 0
       67 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["accepted"]
        3 JUMPIFEQKNIL                     R0 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R0 K3 [table.clone]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 1
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K4 ["showFeedbackDialog"]
       13 DUPTABLE                         R1 K10 [{"promptCheckbox", "qualityCheckbox", "resolutionCheckbox", "looksCheckbox", "otherNotes"}]
       14 LOADB                            R2 0
       15 SETTABLEKS                       R2 R1 K5 ["promptCheckbox"]
       17 LOADB                            R2 0
       18 SETTABLEKS                       R2 R1 K6 ["qualityCheckbox"]
       20 LOADB                            R2 0
       21 SETTABLEKS                       R2 R1 K7 ["resolutionCheckbox"]
       23 LOADB                            R2 0
       24 SETTABLEKS                       R2 R1 K8 ["looksCheckbox"]
       26 LOADK                            R2 K11 [""]
       27 SETTABLEKS                       R2 R1 K9 ["otherNotes"]
       29 SETTABLEKS                       R1 R0 K12 ["feedbackTable"]
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R1 R1 K13 ["updateGeneration"]
       34 DUPTABLE                         R2 K17 [{"action", "uuid", "data"}]
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K18 ["GENERATION_ACTIONS"]
       38 GETTABLEKS                       R3 R3 K19 ["UPDATE"]
       40 SETTABLEKS                       R3 R2 K14 ["action"]
       42 GETUPVAL                         R3 3
       43 GETTABLEKS                       R3 R3 K20 ["Generation"]
       45 GETTABLEKS                       R3 R3 K15 ["uuid"]
       47 SETTABLEKS                       R3 R2 K15 ["uuid"]
       49 SETTABLEKS                       R0 R2 K16 ["data"]
       51 CALL                             R1 1 0
       52 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["STATUS"]
        4 GETTABLEKS                       R1 R1 K1 ["FAILED"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+21]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["updateGeneration"]
       11 DUPTABLE                         R1 K5 [{"action", "uuid"}]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K6 ["GENERATION_ACTIONS"]
       15 GETTABLEKS                       R2 R2 K7 ["REMOVE"]
       17 SETTABLEKS                       R2 R1 K3 ["action"]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K8 ["Generation"]
       22 GETTABLEKS                       R2 R2 K4 ["uuid"]
       24 SETTABLEKS                       R2 R1 K4 ["uuid"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R0 4
       29 GETUPVAL                         R1 5
       30 GETUPVAL                         R2 6
       31 CALL                             R0 2 0
       32 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K3 ["showFeedbackDialog"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K4 ["updateGeneration"]
       10 DUPTABLE                         R2 K8 [{"action", "uuid", "data"}]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K9 ["GENERATION_ACTIONS"]
       14 GETTABLEKS                       R3 R3 K10 ["UPDATE"]
       16 SETTABLEKS                       R3 R2 K5 ["action"]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K11 ["Generation"]
       21 GETTABLEKS                       R3 R3 K6 ["uuid"]
       23 SETTABLEKS                       R3 R2 K6 ["uuid"]
       25 SETTABLEKS                       R0 R2 K7 ["data"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K3 ["feedbackTable"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["feedbackTable"]
       10 GETTABLEKS                       R3 R3 K4 ["promptCheckbox"]
       12 NOT                              R2 R3
       13 SETTABLEKS                       R2 R1 K4 ["promptCheckbox"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K5 ["updateGeneration"]
       18 DUPTABLE                         R2 K9 [{"action", "uuid", "data"}]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K10 ["GENERATION_ACTIONS"]
       22 GETTABLEKS                       R3 R3 K11 ["UPDATE"]
       24 SETTABLEKS                       R3 R2 K6 ["action"]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K12 ["Generation"]
       29 GETTABLEKS                       R3 R3 K7 ["uuid"]
       31 SETTABLEKS                       R3 R2 K7 ["uuid"]
       33 SETTABLEKS                       R0 R2 K8 ["data"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K3 ["feedbackTable"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["feedbackTable"]
       10 GETTABLEKS                       R3 R3 K4 ["qualityCheckbox"]
       12 NOT                              R2 R3
       13 SETTABLEKS                       R2 R1 K4 ["qualityCheckbox"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K5 ["updateGeneration"]
       18 DUPTABLE                         R2 K9 [{"action", "uuid", "data"}]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K10 ["GENERATION_ACTIONS"]
       22 GETTABLEKS                       R3 R3 K11 ["UPDATE"]
       24 SETTABLEKS                       R3 R2 K6 ["action"]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K12 ["Generation"]
       29 GETTABLEKS                       R3 R3 K7 ["uuid"]
       31 SETTABLEKS                       R3 R2 K7 ["uuid"]
       33 SETTABLEKS                       R0 R2 K8 ["data"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K3 ["feedbackTable"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["feedbackTable"]
       10 GETTABLEKS                       R3 R3 K4 ["resolutionCheckbox"]
       12 NOT                              R2 R3
       13 SETTABLEKS                       R2 R1 K4 ["resolutionCheckbox"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K5 ["updateGeneration"]
       18 DUPTABLE                         R2 K9 [{"action", "uuid", "data"}]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K10 ["GENERATION_ACTIONS"]
       22 GETTABLEKS                       R3 R3 K11 ["UPDATE"]
       24 SETTABLEKS                       R3 R2 K6 ["action"]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K12 ["Generation"]
       29 GETTABLEKS                       R3 R3 K7 ["uuid"]
       31 SETTABLEKS                       R3 R2 K7 ["uuid"]
       33 SETTABLEKS                       R0 R2 K8 ["data"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K3 ["feedbackTable"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["feedbackTable"]
       10 GETTABLEKS                       R3 R3 K4 ["looksCheckbox"]
       12 NOT                              R2 R3
       13 SETTABLEKS                       R2 R1 K4 ["looksCheckbox"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K5 ["updateGeneration"]
       18 DUPTABLE                         R2 K9 [{"action", "uuid", "data"}]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K10 ["GENERATION_ACTIONS"]
       22 GETTABLEKS                       R3 R3 K11 ["UPDATE"]
       24 SETTABLEKS                       R3 R2 K6 ["action"]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K12 ["Generation"]
       29 GETTABLEKS                       R3 R3 K7 ["uuid"]
       31 SETTABLEKS                       R3 R2 K7 ["uuid"]
       33 SETTABLEKS                       R0 R2 K8 ["data"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["feedbackTable"]
        6 SETTABLEKS                       R0 R2 K4 ["otherNotes"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K5 ["updateGeneration"]
       11 DUPTABLE                         R3 K9 [{"action", "uuid", "data"}]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K10 ["GENERATION_ACTIONS"]
       15 GETTABLEKS                       R4 R4 K11 ["UPDATE"]
       17 SETTABLEKS                       R4 R3 K6 ["action"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K12 ["Generation"]
       22 GETTABLEKS                       R4 R4 K7 ["uuid"]
       24 SETTABLEKS                       R4 R3 K7 ["uuid"]
       26 SETTABLEKS                       R1 R3 K8 ["data"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K3 ["showFeedbackDialog"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K4 ["updateGeneration"]
       10 DUPTABLE                         R2 K8 [{"action", "uuid", "data"}]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K9 ["GENERATION_ACTIONS"]
       14 GETTABLEKS                       R3 R3 K10 ["UPDATE"]
       16 SETTABLEKS                       R3 R2 K5 ["action"]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K11 ["Generation"]
       21 GETTABLEKS                       R3 R3 K6 ["uuid"]
       23 SETTABLEKS                       R3 R2 K6 ["uuid"]
       25 SETTABLEKS                       R0 R2 K7 ["data"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K3 ["accepted"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K4 ["showFeedbackDialog"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K5 ["updateGeneration"]
       13 DUPTABLE                         R2 K9 [{"action", "uuid", "data"}]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K10 ["GENERATION_ACTIONS"]
       17 GETTABLEKS                       R3 R3 K11 ["UPDATE"]
       19 SETTABLEKS                       R3 R2 K6 ["action"]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K12 ["Generation"]
       24 GETTABLEKS                       R3 R3 K7 ["uuid"]
       26 SETTABLEKS                       R3 R2 K7 ["uuid"]
       28 SETTABLEKS                       R0 R2 K8 ["data"]
       30 CALL                             R1 1 0
       31 GETUPVAL                         R1 4
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K13 ["feedbackTable"]
       35 CALL                             R1 1 1
       36 GETUPVAL                         R2 5
       37 LOADK                            R4 K14 ["SendFeedback"]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K15 ["serverId"]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K16 ["meshParts"]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K17 ["prompt"]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K18 ["seed"]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K19 ["rotation"]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K20 ["smartUVUnwrap"]
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K21 ["promptMasking"]
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R12 R12 K22 ["textureIds"]
       62 GETUPVAL                         R13 0
       63 GETTABLEKS                       R13 R13 K7 ["uuid"]
       65 LOADB                            R14 0
       66 MOVE                             R15 R1
       67 NAMECALL                         R2 R2 K23 ["report"]
       69 CALL                             R2 13 0
       70 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["Plugin"]
       12 NAMECALL                         R3 R3 K1 ["use"]
       14 CALL                             R3 1 1
       15 NAMECALL                         R3 R3 K3 ["get"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K4 ["new"]
       21 CALL                             R4 0 1
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R5 R5 K4 ["new"]
       25 CALL                             R5 0 1
       26 GETUPVAL                         R6 5
       27 NAMECALL                         R6 R6 K1 ["use"]
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 6
       31 LOADK                            R9 K5 ["GenerationCard"]
       32 NAMECALL                         R7 R7 K1 ["use"]
       34 CALL                             R7 2 1
       35 GETTABLEKS                       R8 R0 K6 ["Generation"]
       37 GETTABLEKS                       R9 R8 K7 ["status"]
       39 LOADNIL                          R10
       40 GETUPVAL                         R11 7
       41 GETTABLEKS                       R11 R11 K8 ["STATUS"]
       43 GETTABLEKS                       R11 R11 K9 ["COMPLETED"]
       45 JUMPIFNOTEQ                      R9 R11 ; [+5]
       47 GETTABLEKS                       R11 R8 K11 ["prompt"]
       49 ORK                              R10 R11 K10 [""]
       50 JUMP                             ; [+12]
       51 GETTABLEKS                       R11 R8 K12 ["message"]
       53 JUMPIFNOT                        R11 ; [+3]
       54 GETTABLEKS                       R10 R8 K12 ["message"]
       56 JUMP                             ; [+6]
       57 GETTABLEKS                       R11 R8 K13 ["errors"]
       59 JUMPIFNOT                        R11 ; [+3]
       60 GETTABLEKS                       R11 R8 K13 ["errors"]
       62 GETTABLEN                        R10 R11 1
       63 GETTABLEKS                       R11 R8 K14 ["textureIds"]
       65 GETTABLEKS                       R12 R8 K15 ["meshParts"]
       67 GETUPVAL                         R13 0
       68 GETTABLEKS                       R13 R13 K16 ["useMemo"]
       70 NEWCLOSURE                       R14 P0
       71 CAPTURE                          VAL R12
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          VAL R11
       74 CAPTURE                          UPVAL U9
       75 NEWTABLE                         R15 0 2
       77 MOVE                             R16 R12
       78 MOVE                             R17 R11
       79 SETLIST                          R15 R16 2 [1]
       81 CALL                             R13 2 1
       82 GETUPVAL                         R15 7
       83 GETTABLEKS                       R15 R15 K8 ["STATUS"]
       85 GETTABLEKS                       R15 R15 K9 ["COMPLETED"]
       87 JUMPIFNOTEQ                      R9 R15 ; [+4]
       89 GETTABLEKS                       R14 R7 K17 ["PromptLabelCompletedSize"]
       91 JUMP                             ; [+2]
       92 GETTABLEKS                       R14 R7 K18 ["PromptLabelSize"]
       94 NEWCLOSURE                       R15 P1
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          VAL R12
       97 CAPTURE                          UPVAL U8
       98 CAPTURE                          VAL R8
       99 CAPTURE                          UPVAL U9
      100 CAPTURE                          UPVAL U10
      101 CAPTURE                          UPVAL U11
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R0
      105 GETUPVAL                         R16 12
      106 MOVE                             R17 R2
      107 MOVE                             R18 R15
      108 CALL                             R16 2 1
      109 GETTABLEKS                       R17 R8 K19 ["rotation"]
      111 GETUPVAL                         R18 0
      112 GETTABLEKS                       R18 R18 K16 ["useMemo"]
      114 NEWCLOSURE                       R19 P2
      115 CAPTURE                          VAL R17
      116 CAPTURE                          UPVAL U7
      117 NEWTABLE                         R20 0 1
      119 MOVE                             R21 R17
      120 SETLIST                          R20 R21 1 [1]
      122 CALL                             R18 2 1
      123 GETUPVAL                         R19 0
      124 GETTABLEKS                       R19 R19 K20 ["createElement"]
      126 GETUPVAL                         R20 13
      127 DUPTABLE                         R21 K26 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "VerticalAlignment"}]
      128 GETIMPORT                        R22 K29 [Enum.AutomaticSize.Y]
      130 SETTABLEKS                       R22 R21 K21 ["AutomaticSize"]
      132 GETIMPORT                        R22 K31 [Enum.HorizontalAlignment.Left]
      134 SETTABLEKS                       R22 R21 K22 ["HorizontalAlignment"]
      136 GETIMPORT                        R22 K34 [Enum.FillDirection.Horizontal]
      138 SETTABLEKS                       R22 R21 K23 ["Layout"]
      140 GETTABLEKS                       R22 R7 K24 ["Padding"]
      142 SETTABLEKS                       R22 R21 K24 ["Padding"]
      144 GETIMPORT                        R22 K36 [Enum.VerticalAlignment.Center]
      146 SETTABLEKS                       R22 R21 K25 ["VerticalAlignment"]
      148 DUPTABLE                         R22 K43 [{"InstanceView", "PromptLabel", "ThumbsUpButton", "ThumbsDownButton", "Button", "FeedbackFrom"}]
      149 JUMPIFNOT                        R13 ; [+41]
      150 GETUPVAL                         R23 0
      151 GETTABLEKS                       R23 R23 K20 ["createElement"]
      153 GETUPVAL                         R24 14
      154 DUPTABLE                         R25 K53 [{"LayoutOrder", "Model", "ShouldMuteModelSounds", "Size", "Static", "BackgroundColor3", "FocusDirection", "LightColor", "LightDirection"}]
      155 NAMECALL                         R26 R4 K54 ["getNextOrder"]
      157 CALL                             R26 1 1
      158 SETTABLEKS                       R26 R25 K44 ["LayoutOrder"]
      160 SETTABLEKS                       R13 R25 K45 ["Model"]
      162 LOADB                            R26 1
      163 SETTABLEKS                       R26 R25 K46 ["ShouldMuteModelSounds"]
      165 GETTABLEKS                       R26 R7 K55 ["InstanceViewSize"]
      167 SETTABLEKS                       R26 R25 K47 ["Size"]
      169 LOADB                            R26 1
      170 SETTABLEKS                       R26 R25 K48 ["Static"]
      172 GETTABLEKS                       R26 R7 K56 ["BackgroundColor"]
      174 SETTABLEKS                       R26 R25 K49 ["BackgroundColor3"]
      176 SETTABLEKS                       R18 R25 K50 ["FocusDirection"]
      178 GETIMPORT                        R26 K58 [Color3.new]
      180 LOADN                            R27 1
      181 LOADN                            R28 1
      182 LOADN                            R29 1
      183 CALL                             R26 3 1
      184 SETTABLEKS                       R26 R25 K51 ["LightColor"]
      186 LOADK                            R26 K59 [{-1, -1, -1}]
      187 SETTABLEKS                       R26 R25 K52 ["LightDirection"]
      189 CALL                             R23 2 1
      190 JUMP                             ; [+1]
      191 LOADNIL                          R23
      192 SETTABLEKS                       R23 R22 K37 ["InstanceView"]
      194 GETUPVAL                         R23 0
      195 GETTABLEKS                       R23 R23 K20 ["createElement"]
      197 GETUPVAL                         R24 15
      198 DUPTABLE                         R25 K66 [{"LayoutOrder", "Size", "Style", "Text", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      199 NAMECALL                         R26 R4 K54 ["getNextOrder"]
      201 CALL                             R26 1 1
      202 SETTABLEKS                       R26 R25 K44 ["LayoutOrder"]
      204 SETTABLEKS                       R14 R25 K47 ["Size"]
      206 GETUPVAL                         R27 7
      207 GETTABLEKS                       R27 R27 K8 ["STATUS"]
      209 GETTABLEKS                       R27 R27 K67 ["FAILED"]
      211 JUMPIFNOTEQ                      R9 R27 ; [+3]
      213 LOADK                            R26 K68 ["Warning"]
      214 JUMP                             ; [+1]
      215 LOADNIL                          R26
      216 SETTABLEKS                       R26 R25 K60 ["Style"]
      218 SETTABLEKS                       R10 R25 K61 ["Text"]
      220 GETIMPORT                        R26 K70 [Enum.TextTruncate.AtEnd]
      222 SETTABLEKS                       R26 R25 K62 ["TextTruncate"]
      224 GETIMPORT                        R26 K71 [Enum.TextXAlignment.Left]
      226 SETTABLEKS                       R26 R25 K63 ["TextXAlignment"]
      228 GETIMPORT                        R26 K72 [Enum.TextYAlignment.Center]
      230 SETTABLEKS                       R26 R25 K64 ["TextYAlignment"]
      232 LOADB                            R26 1
      233 SETTABLEKS                       R26 R25 K65 ["TextWrapped"]
      235 CALL                             R23 2 1
      236 SETTABLEKS                       R23 R22 K38 ["PromptLabel"]
      238 GETUPVAL                         R24 7
      239 GETTABLEKS                       R24 R24 K8 ["STATUS"]
      241 GETTABLEKS                       R24 R24 K9 ["COMPLETED"]
      243 JUMPIFNOTEQ                      R9 R24 ; [+76]
      245 GETUPVAL                         R23 0
      246 GETTABLEKS                       R23 R23 K20 ["createElement"]
      248 GETUPVAL                         R24 16
      249 DUPTABLE                         R25 K75 [{"DisableHover", "LayoutOrder", "Size", "Style", "OnClick"}]
      250 GETTABLEKS                       R27 R8 K76 ["accepted"]
      252 JUMPIFNOTEQKNIL                  R27 ; [+2]
      254 LOADB                            R26 0 +1
      255 LOADB                            R26 1
      256 SETTABLEKS                       R26 R25 K73 ["DisableHover"]
      258 NAMECALL                         R26 R4 K54 ["getNextOrder"]
      260 CALL                             R26 1 1
      261 SETTABLEKS                       R26 R25 K44 ["LayoutOrder"]
      263 GETTABLEKS                       R26 R7 K77 ["MenuButtonSize"]
      265 SETTABLEKS                       R26 R25 K47 ["Size"]
      267 LOADK                            R26 K78 ["RoundSubtle"]
      268 SETTABLEKS                       R26 R25 K60 ["Style"]
      270 NEWCLOSURE                       R26 P3
      271 CAPTURE                          VAL R8
      272 CAPTURE                          VAL R1
      273 CAPTURE                          UPVAL U7
      274 CAPTURE                          VAL R0
      275 CAPTURE                          VAL R6
      276 SETTABLEKS                       R26 R25 K74 ["OnClick"]
      278 DUPTABLE                         R26 K80 [{"Icon"}]
      279 GETUPVAL                         R27 0
      280 GETTABLEKS                       R27 R27 K20 ["createElement"]
      282 GETUPVAL                         R28 17
      283 DUPTABLE                         R29 K84 [{"AnchorPoint", "Image", "Position", "Size"}]
      284 GETIMPORT                        R30 K86 [Vector2.new]
      286 LOADK                            R31 K87 [0.5]
      287 LOADK                            R32 K87 [0.5]
      288 CALL                             R30 2 1
      289 SETTABLEKS                       R30 R29 K81 ["AnchorPoint"]
      291 GETTABLEKS                       R31 R8 K76 ["accepted"]
      293 JUMPIFNOT                        R31 ; [+3]
      294 GETTABLEKS                       R30 R7 K88 ["ThumbsUpIcon"]
      296 JUMP                             ; [+2]
      297 GETTABLEKS                       R30 R7 K89 ["ThumbsUpOutlineIcon"]
      299 SETTABLEKS                       R30 R29 K82 ["Image"]
      301 GETIMPORT                        R30 K92 [UDim2.fromScale]
      303 LOADK                            R31 K87 [0.5]
      304 LOADK                            R32 K87 [0.5]
      305 CALL                             R30 2 1
      306 SETTABLEKS                       R30 R29 K83 ["Position"]
      308 GETIMPORT                        R30 K94 [UDim2.fromOffset]
      310 LOADN                            R31 16
      311 LOADN                            R32 16
      312 CALL                             R30 2 1
      313 SETTABLEKS                       R30 R29 K47 ["Size"]
      315 CALL                             R27 2 1
      316 SETTABLEKS                       R27 R26 K79 ["Icon"]
      318 CALL                             R23 3 1
      319 JUMP                             ; [+1]
      320 LOADNIL                          R23
      321 SETTABLEKS                       R23 R22 K39 ["ThumbsUpButton"]
      323 GETUPVAL                         R24 7
      324 GETTABLEKS                       R24 R24 K8 ["STATUS"]
      326 GETTABLEKS                       R24 R24 K9 ["COMPLETED"]
      328 JUMPIFNOTEQ                      R9 R24 ; [+79]
      330 GETUPVAL                         R23 0
      331 GETTABLEKS                       R23 R23 K20 ["createElement"]
      333 GETUPVAL                         R24 16
      334 DUPTABLE                         R25 K75 [{"DisableHover", "LayoutOrder", "Size", "Style", "OnClick"}]
      335 GETTABLEKS                       R27 R8 K76 ["accepted"]
      337 JUMPIFNOTEQKNIL                  R27 ; [+2]
      339 LOADB                            R26 0 +1
      340 LOADB                            R26 1
      341 SETTABLEKS                       R26 R25 K73 ["DisableHover"]
      343 NAMECALL                         R26 R4 K54 ["getNextOrder"]
      345 CALL                             R26 1 1
      346 SETTABLEKS                       R26 R25 K44 ["LayoutOrder"]
      348 GETTABLEKS                       R26 R7 K77 ["MenuButtonSize"]
      350 SETTABLEKS                       R26 R25 K47 ["Size"]
      352 LOADK                            R26 K78 ["RoundSubtle"]
      353 SETTABLEKS                       R26 R25 K60 ["Style"]
      355 NEWCLOSURE                       R26 P4
      356 CAPTURE                          VAL R8
      357 CAPTURE                          VAL R1
      358 CAPTURE                          UPVAL U7
      359 CAPTURE                          VAL R0
      360 SETTABLEKS                       R26 R25 K74 ["OnClick"]
      362 DUPTABLE                         R26 K80 [{"Icon"}]
      363 GETUPVAL                         R27 0
      364 GETTABLEKS                       R27 R27 K20 ["createElement"]
      366 GETUPVAL                         R28 17
      367 DUPTABLE                         R29 K84 [{"AnchorPoint", "Image", "Position", "Size"}]
      368 GETIMPORT                        R30 K86 [Vector2.new]
      370 LOADK                            R31 K87 [0.5]
      371 LOADK                            R32 K87 [0.5]
      372 CALL                             R30 2 1
      373 SETTABLEKS                       R30 R29 K81 ["AnchorPoint"]
      375 GETTABLEKS                       R31 R8 K76 ["accepted"]
      377 JUMPIFEQKNIL                     R31 ; [+7]
      379 GETTABLEKS                       R31 R8 K76 ["accepted"]
      381 JUMPIF                           R31 ; [+3]
      382 GETTABLEKS                       R30 R7 K95 ["ThumbsDownIcon"]
      384 JUMP                             ; [+2]
      385 GETTABLEKS                       R30 R7 K96 ["ThumbsDownOutlineIcon"]
      387 SETTABLEKS                       R30 R29 K82 ["Image"]
      389 GETIMPORT                        R30 K92 [UDim2.fromScale]
      391 LOADK                            R31 K87 [0.5]
      392 LOADK                            R32 K87 [0.5]
      393 CALL                             R30 2 1
      394 SETTABLEKS                       R30 R29 K83 ["Position"]
      396 GETIMPORT                        R30 K94 [UDim2.fromOffset]
      398 LOADN                            R31 16
      399 LOADN                            R32 16
      400 CALL                             R30 2 1
      401 SETTABLEKS                       R30 R29 K47 ["Size"]
      403 CALL                             R27 2 1
      404 SETTABLEKS                       R27 R26 K79 ["Icon"]
      406 CALL                             R23 3 1
      407 JUMP                             ; [+1]
      408 LOADNIL                          R23
      409 SETTABLEKS                       R23 R22 K40 ["ThumbsDownButton"]
      411 GETUPVAL                         R23 0
      412 GETTABLEKS                       R23 R23 K20 ["createElement"]
      414 GETUPVAL                         R24 16
      415 DUPTABLE                         R25 K97 [{"LayoutOrder", "Size", "Style", "OnClick"}]
      416 NAMECALL                         R26 R4 K54 ["getNextOrder"]
      418 CALL                             R26 1 1
      419 SETTABLEKS                       R26 R25 K44 ["LayoutOrder"]
      421 GETTABLEKS                       R26 R7 K77 ["MenuButtonSize"]
      423 SETTABLEKS                       R26 R25 K47 ["Size"]
      425 LOADK                            R26 K78 ["RoundSubtle"]
      426 SETTABLEKS                       R26 R25 K60 ["Style"]
      428 NEWCLOSURE                       R26 P5
      429 CAPTURE                          VAL R9
      430 CAPTURE                          UPVAL U7
      431 CAPTURE                          VAL R1
      432 CAPTURE                          VAL R0
      433 CAPTURE                          UPVAL U18
      434 CAPTURE                          VAL R3
      435 CAPTURE                          VAL R16
      436 SETTABLEKS                       R26 R25 K74 ["OnClick"]
      438 DUPTABLE                         R26 K80 [{"Icon"}]
      439 GETUPVAL                         R28 7
      440 GETTABLEKS                       R28 R28 K8 ["STATUS"]
      442 GETTABLEKS                       R28 R28 K67 ["FAILED"]
      444 JUMPIFNOTEQ                      R9 R28 ; [+35]
      446 GETUPVAL                         R27 0
      447 GETTABLEKS                       R27 R27 K20 ["createElement"]
      449 GETUPVAL                         R28 17
      450 DUPTABLE                         R29 K98 [{"AnchorPoint", "Image", "Position", "Size", "Style"}]
      451 GETIMPORT                        R30 K86 [Vector2.new]
      453 LOADK                            R31 K87 [0.5]
      454 LOADK                            R32 K87 [0.5]
      455 CALL                             R30 2 1
      456 SETTABLEKS                       R30 R29 K81 ["AnchorPoint"]
      458 LOADK                            R30 K99 ["rbxasset://textures/DeveloperFramework/close.png"]
      459 SETTABLEKS                       R30 R29 K82 ["Image"]
      461 GETIMPORT                        R30 K92 [UDim2.fromScale]
      463 LOADK                            R31 K87 [0.5]
      464 LOADK                            R32 K87 [0.5]
      465 CALL                             R30 2 1
      466 SETTABLEKS                       R30 R29 K83 ["Position"]
      468 GETIMPORT                        R30 K94 [UDim2.fromOffset]
      470 LOADN                            R31 16
      471 LOADN                            R32 16
      472 CALL                             R30 2 1
      473 SETTABLEKS                       R30 R29 K47 ["Size"]
      475 LOADK                            R30 K100 ["ColoredWarning"]
      476 SETTABLEKS                       R30 R29 K60 ["Style"]
      478 CALL                             R27 2 1
      479 JUMP                             ; [+30]
      480 GETUPVAL                         R27 0
      481 GETTABLEKS                       R27 R27 K20 ["createElement"]
      483 GETUPVAL                         R28 17
      484 DUPTABLE                         R29 K84 [{"AnchorPoint", "Image", "Position", "Size"}]
      485 GETIMPORT                        R30 K86 [Vector2.new]
      487 LOADK                            R31 K87 [0.5]
      488 LOADK                            R32 K87 [0.5]
      489 CALL                             R30 2 1
      490 SETTABLEKS                       R30 R29 K81 ["AnchorPoint"]
      492 LOADK                            R30 K101 ["rbxasset://textures/StudioSharedUI/MeatballMenu.png"]
      493 SETTABLEKS                       R30 R29 K82 ["Image"]
      495 GETIMPORT                        R30 K92 [UDim2.fromScale]
      497 LOADK                            R31 K87 [0.5]
      498 LOADK                            R32 K87 [0.5]
      499 CALL                             R30 2 1
      500 SETTABLEKS                       R30 R29 K83 ["Position"]
      502 GETIMPORT                        R30 K94 [UDim2.fromOffset]
      504 LOADN                            R31 24
      505 LOADN                            R32 24
      506 CALL                             R30 2 1
      507 SETTABLEKS                       R30 R29 K47 ["Size"]
      509 CALL                             R27 2 1
      510 SETTABLEKS                       R27 R26 K79 ["Icon"]
      512 CALL                             R23 3 1
      513 SETTABLEKS                       R23 R22 K41 ["Button"]
      515 GETTABLEKS                       R24 R8 K102 ["showFeedbackDialog"]
      517 JUMPIFNOT                        R24 ; [+413]
      518 GETUPVAL                         R23 0
      519 GETTABLEKS                       R23 R23 K20 ["createElement"]
      521 GETUPVAL                         R24 19
      522 DUPTABLE                         R25 K106 [{"Enabled", "Size", "Title", "OnClose"}]
      523 GETTABLEKS                       R26 R8 K102 ["showFeedbackDialog"]
      525 SETTABLEKS                       R26 R25 K103 ["Enabled"]
      527 GETIMPORT                        R26 K86 [Vector2.new]
      529 LOADN                            R27 88
      530 LOADN                            R28 144
      531 CALL                             R26 2 1
      532 SETTABLEKS                       R26 R25 K47 ["Size"]
      534 LOADK                            R28 K107 ["FeedbackDialog"]
      535 LOADK                            R29 K104 ["Title"]
      536 NAMECALL                         R26 R2 K108 ["getText"]
      538 CALL                             R26 3 1
      539 SETTABLEKS                       R26 R25 K104 ["Title"]
      541 NEWCLOSURE                       R26 P6
      542 CAPTURE                          VAL R8
      543 CAPTURE                          VAL R1
      544 CAPTURE                          UPVAL U7
      545 CAPTURE                          VAL R0
      546 SETTABLEKS                       R26 R25 K105 ["OnClose"]
      548 DUPTABLE                         R26 K110 [{"Frame"}]
      549 GETUPVAL                         R27 0
      550 GETTABLEKS                       R27 R27 K20 ["createElement"]
      552 GETUPVAL                         R28 13
      553 DUPTABLE                         R29 K111 [{"AutomaticSize", "Layout", "Padding"}]
      554 GETIMPORT                        R30 K29 [Enum.AutomaticSize.Y]
      556 SETTABLEKS                       R30 R29 K21 ["AutomaticSize"]
      558 GETIMPORT                        R30 K113 [Enum.FillDirection.Vertical]
      560 SETTABLEKS                       R30 R29 K23 ["Layout"]
      562 LOADN                            R30 16
      563 SETTABLEKS                       R30 R29 K24 ["Padding"]
      565 DUPTABLE                         R30 K116 [{"Title", "Separator", "ButtonPane"}]
      566 GETUPVAL                         R31 0
      567 GETTABLEKS                       R31 R31 K20 ["createElement"]
      569 GETUPVAL                         R32 20
      570 DUPTABLE                         R33 K121 [{"AlwaysExpanded", "ContentPadding", "ContentSpacing", "OnExpandedChanged", "Style", "Text", "VerticalAlignment"}]
      571 LOADB                            R34 1
      572 SETTABLEKS                       R34 R33 K117 ["AlwaysExpanded"]
      574 LOADN                            R34 10
      575 SETTABLEKS                       R34 R33 K118 ["ContentPadding"]
      577 LOADN                            R34 15
      578 SETTABLEKS                       R34 R33 K119 ["ContentSpacing"]
      580 DUPCLOSURE                       R34 K122 [PROTO_11]
      581 SETTABLEKS                       R34 R33 K120 ["OnExpandedChanged"]
      583 LOADK                            R34 K104 ["Title"]
      584 SETTABLEKS                       R34 R33 K60 ["Style"]
      586 LOADK                            R36 K107 ["FeedbackDialog"]
      587 LOADK                            R37 K104 ["Title"]
      588 NAMECALL                         R34 R2 K108 ["getText"]
      590 CALL                             R34 3 1
      591 SETTABLEKS                       R34 R33 K61 ["Text"]
      593 GETIMPORT                        R34 K124 [Enum.VerticalAlignment.Top]
      595 SETTABLEKS                       R34 R33 K25 ["VerticalAlignment"]
      597 DUPTABLE                         R34 K127 [{"Checkboxes", "FreeformText"}]
      598 GETUPVAL                         R35 0
      599 GETTABLEKS                       R35 R35 K20 ["createElement"]
      601 GETUPVAL                         R36 21
      602 DUPTABLE                         R37 K128 [{"Title", "LayoutOrder"}]
      603 LOADK                            R40 K107 ["FeedbackDialog"]
      604 LOADK                            R41 K129 ["CheckboxTitle"]
      605 NAMECALL                         R38 R2 K108 ["getText"]
      607 CALL                             R38 3 1
      608 SETTABLEKS                       R38 R37 K104 ["Title"]
      610 NAMECALL                         R38 R5 K54 ["getNextOrder"]
      612 CALL                             R38 1 1
      613 SETTABLEKS                       R38 R37 K44 ["LayoutOrder"]
      615 DUPTABLE                         R38 K134 [{"PromptCheckbox", "QualityCheckbox", "ResolutionCheckbox", "LooksCheckbox"}]
      616 GETUPVAL                         R39 0
      617 GETTABLEKS                       R39 R39 K20 ["createElement"]
      619 GETUPVAL                         R40 22
      620 DUPTABLE                         R41 K136 [{"Checked", "LayoutOrder", "Text", "OnClick"}]
      621 GETTABLEKS                       R42 R8 K137 ["feedbackTable"]
      623 GETTABLEKS                       R42 R42 K138 ["promptCheckbox"]
      625 SETTABLEKS                       R42 R41 K135 ["Checked"]
      627 NAMECALL                         R42 R5 K54 ["getNextOrder"]
      629 CALL                             R42 1 1
      630 SETTABLEKS                       R42 R41 K44 ["LayoutOrder"]
      632 LOADK                            R44 K107 ["FeedbackDialog"]
      633 LOADK                            R45 K130 ["PromptCheckbox"]
      634 NAMECALL                         R42 R2 K108 ["getText"]
      636 CALL                             R42 3 1
      637 SETTABLEKS                       R42 R41 K61 ["Text"]
      639 NEWCLOSURE                       R42 P8
      640 CAPTURE                          VAL R8
      641 CAPTURE                          VAL R1
      642 CAPTURE                          UPVAL U7
      643 CAPTURE                          VAL R0
      644 SETTABLEKS                       R42 R41 K74 ["OnClick"]
      646 CALL                             R39 2 1
      647 SETTABLEKS                       R39 R38 K130 ["PromptCheckbox"]
      649 GETUPVAL                         R39 0
      650 GETTABLEKS                       R39 R39 K20 ["createElement"]
      652 GETUPVAL                         R40 22
      653 DUPTABLE                         R41 K136 [{"Checked", "LayoutOrder", "Text", "OnClick"}]
      654 GETTABLEKS                       R42 R8 K137 ["feedbackTable"]
      656 GETTABLEKS                       R42 R42 K139 ["qualityCheckbox"]
      658 SETTABLEKS                       R42 R41 K135 ["Checked"]
      660 NAMECALL                         R42 R5 K54 ["getNextOrder"]
      662 CALL                             R42 1 1
      663 SETTABLEKS                       R42 R41 K44 ["LayoutOrder"]
      665 LOADK                            R44 K107 ["FeedbackDialog"]
      666 LOADK                            R45 K131 ["QualityCheckbox"]
      667 NAMECALL                         R42 R2 K108 ["getText"]
      669 CALL                             R42 3 1
      670 SETTABLEKS                       R42 R41 K61 ["Text"]
      672 NEWCLOSURE                       R42 P9
      673 CAPTURE                          VAL R8
      674 CAPTURE                          VAL R1
      675 CAPTURE                          UPVAL U7
      676 CAPTURE                          VAL R0
      677 SETTABLEKS                       R42 R41 K74 ["OnClick"]
      679 CALL                             R39 2 1
      680 SETTABLEKS                       R39 R38 K131 ["QualityCheckbox"]
      682 GETUPVAL                         R39 0
      683 GETTABLEKS                       R39 R39 K20 ["createElement"]
      685 GETUPVAL                         R40 22
      686 DUPTABLE                         R41 K136 [{"Checked", "LayoutOrder", "Text", "OnClick"}]
      687 GETTABLEKS                       R42 R8 K137 ["feedbackTable"]
      689 GETTABLEKS                       R42 R42 K140 ["resolutionCheckbox"]
      691 SETTABLEKS                       R42 R41 K135 ["Checked"]
      693 NAMECALL                         R42 R5 K54 ["getNextOrder"]
      695 CALL                             R42 1 1
      696 SETTABLEKS                       R42 R41 K44 ["LayoutOrder"]
      698 LOADK                            R44 K107 ["FeedbackDialog"]
      699 LOADK                            R45 K132 ["ResolutionCheckbox"]
      700 NAMECALL                         R42 R2 K108 ["getText"]
      702 CALL                             R42 3 1
      703 SETTABLEKS                       R42 R41 K61 ["Text"]
      705 NEWCLOSURE                       R42 P10
      706 CAPTURE                          VAL R8
      707 CAPTURE                          VAL R1
      708 CAPTURE                          UPVAL U7
      709 CAPTURE                          VAL R0
      710 SETTABLEKS                       R42 R41 K74 ["OnClick"]
      712 CALL                             R39 2 1
      713 SETTABLEKS                       R39 R38 K132 ["ResolutionCheckbox"]
      715 GETUPVAL                         R39 0
      716 GETTABLEKS                       R39 R39 K20 ["createElement"]
      718 GETUPVAL                         R40 22
      719 DUPTABLE                         R41 K136 [{"Checked", "LayoutOrder", "Text", "OnClick"}]
      720 GETTABLEKS                       R42 R8 K137 ["feedbackTable"]
      722 GETTABLEKS                       R42 R42 K141 ["looksCheckbox"]
      724 SETTABLEKS                       R42 R41 K135 ["Checked"]
      726 NAMECALL                         R42 R5 K54 ["getNextOrder"]
      728 CALL                             R42 1 1
      729 SETTABLEKS                       R42 R41 K44 ["LayoutOrder"]
      731 LOADK                            R44 K107 ["FeedbackDialog"]
      732 LOADK                            R45 K133 ["LooksCheckbox"]
      733 NAMECALL                         R42 R2 K108 ["getText"]
      735 CALL                             R42 3 1
      736 SETTABLEKS                       R42 R41 K61 ["Text"]
      738 NEWCLOSURE                       R42 P11
      739 CAPTURE                          VAL R8
      740 CAPTURE                          VAL R1
      741 CAPTURE                          UPVAL U7
      742 CAPTURE                          VAL R0
      743 SETTABLEKS                       R42 R41 K74 ["OnClick"]
      745 CALL                             R39 2 1
      746 SETTABLEKS                       R39 R38 K133 ["LooksCheckbox"]
      748 CALL                             R35 3 1
      749 SETTABLEKS                       R35 R34 K125 ["Checkboxes"]
      751 GETUPVAL                         R35 0
      752 GETTABLEKS                       R35 R35 K20 ["createElement"]
      754 GETUPVAL                         R36 21
      755 DUPTABLE                         R37 K128 [{"Title", "LayoutOrder"}]
      756 LOADK                            R40 K107 ["FeedbackDialog"]
      757 LOADK                            R41 K142 ["OtherNotesTitle"]
      758 NAMECALL                         R38 R2 K108 ["getText"]
      760 CALL                             R38 3 1
      761 SETTABLEKS                       R38 R37 K104 ["Title"]
      763 NAMECALL                         R38 R5 K54 ["getNextOrder"]
      765 CALL                             R38 1 1
      766 SETTABLEKS                       R38 R37 K44 ["LayoutOrder"]
      768 DUPTABLE                         R38 K144 [{"TextInput"}]
      769 GETUPVAL                         R39 0
      770 GETTABLEKS                       R39 R39 K20 ["createElement"]
      772 GETUPVAL                         R40 23
      773 DUPTABLE                         R41 K148 [{"Size", "MultiLine", "MaxLength", "Text", "OnTextChanged"}]
      774 GETIMPORT                        R42 K149 [UDim2.new]
      776 LOADN                            R43 1
      777 LOADN                            R44 0
      778 LOADN                            R45 0
      779 LOADN                            R46 120
      780 CALL                             R42 4 1
      781 SETTABLEKS                       R42 R41 K47 ["Size"]
      783 LOADB                            R42 1
      784 SETTABLEKS                       R42 R41 K145 ["MultiLine"]
      786 LOADN                            R42 232
      787 SETTABLEKS                       R42 R41 K146 ["MaxLength"]
      789 GETTABLEKS                       R42 R8 K137 ["feedbackTable"]
      791 GETTABLEKS                       R42 R42 K150 ["otherNotes"]
      793 SETTABLEKS                       R42 R41 K61 ["Text"]
      795 NEWCLOSURE                       R42 P12
      796 CAPTURE                          VAL R8
      797 CAPTURE                          VAL R1
      798 CAPTURE                          UPVAL U7
      799 CAPTURE                          VAL R0
      800 SETTABLEKS                       R42 R41 K147 ["OnTextChanged"]
      802 CALL                             R39 2 1
      803 SETTABLEKS                       R39 R38 K143 ["TextInput"]
      805 CALL                             R35 3 1
      806 SETTABLEKS                       R35 R34 K126 ["FreeformText"]
      808 CALL                             R31 3 1
      809 SETTABLEKS                       R31 R30 K104 ["Title"]
      811 GETUPVAL                         R31 0
      812 GETTABLEKS                       R31 R31 K20 ["createElement"]
      814 GETUPVAL                         R32 24
      815 DUPTABLE                         R33 K151 [{"LayoutOrder"}]
      816 LOADN                            R34 2
      817 SETTABLEKS                       R34 R33 K44 ["LayoutOrder"]
      819 CALL                             R31 2 1
      820 SETTABLEKS                       R31 R30 K114 ["Separator"]
      822 GETUPVAL                         R31 0
      823 GETTABLEKS                       R31 R31 K20 ["createElement"]
      825 GETUPVAL                         R32 13
      826 DUPTABLE                         R33 K153 [{"Size", "HorizontalAlignment", "Layout", "Spacing", "LayoutOrder"}]
      827 GETIMPORT                        R34 K149 [UDim2.new]
      829 LOADN                            R35 1
      830 LOADN                            R36 0
      831 LOADN                            R37 0
      832 LOADN                            R38 70
      833 CALL                             R34 4 1
      834 SETTABLEKS                       R34 R33 K47 ["Size"]
      836 GETIMPORT                        R34 K155 [Enum.HorizontalAlignment.Right]
      838 SETTABLEKS                       R34 R33 K22 ["HorizontalAlignment"]
      840 GETIMPORT                        R34 K34 [Enum.FillDirection.Horizontal]
      842 SETTABLEKS                       R34 R33 K23 ["Layout"]
      844 LOADN                            R34 10
      845 SETTABLEKS                       R34 R33 K152 ["Spacing"]
      847 LOADN                            R34 3
      848 SETTABLEKS                       R34 R33 K44 ["LayoutOrder"]
      850 DUPTABLE                         R34 K158 [{"CancelButton", "SubmitButton"}]
      851 GETUPVAL                         R35 0
      852 GETTABLEKS                       R35 R35 K20 ["createElement"]
      854 GETUPVAL                         R36 16
      855 DUPTABLE                         R37 K159 [{"LayoutOrder", "Size", "Style", "Text", "OnClick"}]
      856 LOADN                            R38 1
      857 SETTABLEKS                       R38 R37 K44 ["LayoutOrder"]
      859 GETIMPORT                        R38 K94 [UDim2.fromOffset]
      861 LOADN                            R39 70
      862 LOADN                            R40 40
      863 CALL                             R38 2 1
      864 SETTABLEKS                       R38 R37 K47 ["Size"]
      866 LOADK                            R38 K160 ["Round"]
      867 SETTABLEKS                       R38 R37 K60 ["Style"]
      869 LOADK                            R40 K5 ["GenerationCard"]
      870 LOADK                            R41 K161 ["Cancel"]
      871 NAMECALL                         R38 R2 K108 ["getText"]
      873 CALL                             R38 3 1
      874 SETTABLEKS                       R38 R37 K61 ["Text"]
      876 NEWCLOSURE                       R38 P13
      877 CAPTURE                          VAL R8
      878 CAPTURE                          VAL R1
      879 CAPTURE                          UPVAL U7
      880 CAPTURE                          VAL R0
      881 SETTABLEKS                       R38 R37 K74 ["OnClick"]
      883 CALL                             R35 2 1
      884 SETTABLEKS                       R35 R34 K156 ["CancelButton"]
      886 GETUPVAL                         R35 0
      887 GETTABLEKS                       R35 R35 K20 ["createElement"]
      889 GETUPVAL                         R36 16
      890 DUPTABLE                         R37 K159 [{"LayoutOrder", "Size", "Style", "Text", "OnClick"}]
      891 LOADN                            R38 2
      892 SETTABLEKS                       R38 R37 K44 ["LayoutOrder"]
      894 GETIMPORT                        R38 K94 [UDim2.fromOffset]
      896 LOADN                            R39 150
      897 LOADN                            R40 40
      898 CALL                             R38 2 1
      899 SETTABLEKS                       R38 R37 K47 ["Size"]
      901 LOADK                            R38 K162 ["RoundPrimary"]
      902 SETTABLEKS                       R38 R37 K60 ["Style"]
      904 LOADK                            R40 K107 ["FeedbackDialog"]
      905 LOADK                            R41 K157 ["SubmitButton"]
      906 NAMECALL                         R38 R2 K108 ["getText"]
      908 CALL                             R38 3 1
      909 SETTABLEKS                       R38 R37 K61 ["Text"]
      911 NEWCLOSURE                       R38 P14
      912 CAPTURE                          VAL R8
      913 CAPTURE                          VAL R1
      914 CAPTURE                          UPVAL U7
      915 CAPTURE                          VAL R0
      916 CAPTURE                          UPVAL U25
      917 CAPTURE                          VAL R6
      918 SETTABLEKS                       R38 R37 K74 ["OnClick"]
      920 CALL                             R35 2 1
      921 SETTABLEKS                       R35 R34 K157 ["SubmitButton"]
      923 CALL                             R31 3 1
      924 SETTABLEKS                       R31 R30 K115 ["ButtonPane"]
      926 CALL                             R27 3 1
      927 SETTABLEKS                       R27 R26 K109 ["Frame"]
      929 CALL                             R23 3 1
      930 JUMP                             ; [+1]
      931 LOADNIL                          R23
      932 SETTABLEKS                       R23 R22 K42 ["FeedbackFrom"]
      934 CALL                             R19 3 -1
      935 RETURN                           R19 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R1 R0 K1 ["status"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["STATUS"]
        8 GETTABLEKS                       R2 R2 K3 ["PENDING"]
       10 JUMPIFEQ                         R1 R2 ; [+2]
       12 RETURN                           R0 0
       13 GETIMPORT                        R2 K5 [tick]
       15 CALL                             R2 0 1
       16 GETTABLEKS                       R3 R0 K6 ["startTime"]
       18 SUB                              R1 R2 R3
       19 LOADN                            R2 164
       20 JUMPIFNOTLT                      R2 R1 ; [+55]
       22 GETUPVAL                         R2 2
       23 NAMECALL                         R2 R2 K7 ["Disconnect"]
       25 CALL                             R2 1 0
       26 GETTABLEKS                       R2 R0 K1 ["status"]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K2 ["STATUS"]
       31 GETTABLEKS                       R3 R3 K3 ["PENDING"]
       33 JUMPIFNOTEQ                      R2 R3 ; [+41]
       35 GETIMPORT                        R2 K10 [table.clone]
       37 MOVE                             R3 R0
       38 CALL                             R2 1 1
       39 GETUPVAL                         R3 3
       40 LOADK                            R5 K11 ["GenerationCard"]
       41 LOADK                            R6 K12 ["TimeoutMessage"]
       42 NAMECALL                         R3 R3 K13 ["getText"]
       44 CALL                             R3 3 1
       45 SETTABLEKS                       R3 R2 K14 ["message"]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K2 ["STATUS"]
       50 GETTABLEKS                       R3 R3 K15 ["FAILED"]
       52 SETTABLEKS                       R3 R2 K1 ["status"]
       54 GETUPVAL                         R3 4
       55 GETTABLEKS                       R3 R3 K16 ["updateGeneration"]
       57 DUPTABLE                         R4 K20 [{"action", "uuid", "data"}]
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K21 ["GENERATION_ACTIONS"]
       61 GETTABLEKS                       R5 R5 K22 ["UPDATE"]
       63 SETTABLEKS                       R5 R4 K17 ["action"]
       65 GETUPVAL                         R5 5
       66 GETTABLEKS                       R5 R5 K23 ["Generation"]
       68 GETTABLEKS                       R5 R5 K18 ["uuid"]
       70 SETTABLEKS                       R5 R4 K18 ["uuid"]
       72 SETTABLEKS                       R2 R4 K19 ["data"]
       74 CALL                             R3 1 0
       75 RETURN                           R0 0
       76 RETURN                           R0 0

PROTO_21:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["RenderStepped"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          REF R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 NAMECALL                         R1 R1 K1 ["Connect"]
       13 CALL                             R1 2 1
       14 MOVE                             R0 R1
       15 CLOSEUPVALS                      R0
       16 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelGenerationRequest"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Generation"]
        6 GETTABLEKS                       R1 R1 K2 ["uuid"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K3 ["updateGeneration"]
       12 DUPTABLE                         R1 K5 [{"action", "uuid"}]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K6 ["GENERATION_ACTIONS"]
       16 GETTABLEKS                       R2 R2 K7 ["REMOVE"]
       18 SETTABLEKS                       R2 R1 K4 ["action"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K1 ["Generation"]
       23 GETTABLEKS                       R2 R2 K2 ["uuid"]
       25 SETTABLEKS                       R2 R1 K2 ["uuid"]
       27 CALL                             R0 1 0
       28 GETUPVAL                         R0 4
       29 LOADK                            R2 K8 ["CancelTextureGeneration"]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K1 ["Generation"]
       33 GETTABLEKS                       R4 R4 K10 ["serverId"]
       35 ORK                              R3 R4 K9 [""]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K1 ["Generation"]
       39 GETTABLEKS                       R4 R4 K11 ["meshParts"]
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K1 ["Generation"]
       44 GETTABLEKS                       R5 R5 K12 ["prompt"]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K1 ["Generation"]
       49 GETTABLEKS                       R6 R6 K13 ["seed"]
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K1 ["Generation"]
       54 GETTABLEKS                       R7 R7 K14 ["rotation"]
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K1 ["Generation"]
       59 GETTABLEKS                       R8 R8 K15 ["smartUVUnwrap"]
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R9 R9 K1 ["Generation"]
       64 GETTABLEKS                       R9 R9 K16 ["promptMasking"]
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K1 ["Generation"]
       69 GETTABLEKS                       R10 R10 K2 ["uuid"]
       71 NAMECALL                         R0 R0 K17 ["report"]
       73 CALL                             R0 10 0
       74 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["STATUS"]
        4 GETTABLEKS                       R1 R1 K1 ["COMPLETED"]
        6 JUMPIFEQ                         R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K3 [next]
       11 GETUPVAL                         R1 2
       12 CALL                             R0 1 1
       13 JUMPIFEQKNIL                     R0 ; [+35]
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K4 ["selected"]
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R1 R1 K5 ["Generation"]
       21 GETTABLEKS                       R1 R1 K6 ["uuid"]
       23 JUMPIFEQ                         R0 R1 ; [+25]
       25 GETUPVAL                         R0 3
       26 GETTABLEKS                       R0 R0 K7 ["setSelected"]
       28 GETUPVAL                         R1 4
       29 GETTABLEKS                       R1 R1 K5 ["Generation"]
       31 GETTABLEKS                       R1 R1 K6 ["uuid"]
       33 CALL                             R0 1 0
       34 GETUPVAL                         R0 2
       35 LOADNIL                          R1
       36 LOADNIL                          R2
       37 FORGPREP                         R0
       38 GETUPVAL                         R5 5
       39 MOVE                             R6 R4
       40 GETUPVAL                         R7 4
       41 GETTABLEKS                       R7 R7 K5 ["Generation"]
       43 GETTABLEKS                       R7 R7 K8 ["textureIds"]
       45 CALL                             R5 2 0
       46 FORGLOOP                         R0 2 ; [-9]
       48 RETURN                           R0 0
       49 GETIMPORT                        R0 K3 [next]
       51 GETUPVAL                         R1 2
       52 CALL                             R0 1 1
       53 JUMPIFEQKNIL                     R0 ; [+27]
       55 GETUPVAL                         R0 3
       56 GETTABLEKS                       R0 R0 K4 ["selected"]
       58 GETUPVAL                         R1 4
       59 GETTABLEKS                       R1 R1 K5 ["Generation"]
       61 GETTABLEKS                       R1 R1 K6 ["uuid"]
       63 JUMPIFNOTEQ                      R0 R1 ; [+17]
       65 GETUPVAL                         R0 3
       66 GETTABLEKS                       R0 R0 K7 ["setSelected"]
       68 LOADNIL                          R1
       69 CALL                             R0 1 0
       70 GETUPVAL                         R0 2
       71 LOADNIL                          R1
       72 LOADNIL                          R2
       73 FORGPREP                         R0
       74 GETUPVAL                         R5 5
       75 MOVE                             R6 R4
       76 LOADK                            R7 K9 [""]
       77 CALL                             R5 2 0
       78 FORGLOOP                         R0 2 ; [-5]
       80 RETURN                           R0 0
       81 GETIMPORT                        R0 K3 [next]
       83 GETUPVAL                         R1 2
       84 CALL                             R0 1 1
       85 JUMPIFNOTEQKNIL                  R0 ; [+150]
       87 GETUPVAL                         R0 3
       88 GETTABLEKS                       R0 R0 K4 ["selected"]
       90 GETUPVAL                         R1 4
       91 GETTABLEKS                       R1 R1 K5 ["Generation"]
       93 GETTABLEKS                       R1 R1 K6 ["uuid"]
       95 JUMPIFEQ                         R0 R1 ; [+140]
       97 LOADNIL                          R0
       98 GETIMPORT                        R1 K12 [CFrame.new]
      100 CALL                             R1 0 1
      101 FASTCALL                         VECTOR ; [+2]
      102 GETIMPORT                        R2 K14 [Vector3.new]
      104 CALL                             R2 0 1
      105 LOADB                            R3 0
      106 GETUPVAL                         R4 4
      107 GETTABLEKS                       R4 R4 K5 ["Generation"]
      109 GETTABLEKS                       R4 R4 K15 ["meshParts"]
      111 LOADNIL                          R5
      112 LOADNIL                          R6
      113 FORGPREP                         R4
      114 LOADK                            R11 K16 ["SurfaceAppearance"]
      115 NAMECALL                         R9 R8 K17 ["FindFirstChildOfClass"]
      117 CALL                             R9 2 1
      118 JUMPIFNOT                        R9 ; [+2]
      119 GETTABLEKS                       R0 R9 K18 ["ColorMap"]
      121 GETTABLEKS                       R10 R8 K19 ["Size"]
      123 GETTABLEKS                       R10 R10 K20 ["Magnitude"]
      125 GETTABLEKS                       R11 R2 K20 ["Magnitude"]
      127 JUMPIFNOTLT                      R11 R10 ; [+5]
      129 GETTABLEKS                       R2 R8 K19 ["Size"]
      131 GETTABLEKS                       R1 R8 K10 ["CFrame"]
      133 GETUPVAL                         R12 6
      134 NAMECALL                         R10 R8 K21 ["IsDescendantOf"]
      136 CALL                             R10 2 1
      137 JUMPIFNOT                        R10 ; [+1]
      138 LOADB                            R3 1
      139 FORGLOOP                         R4 2 ; [-26]
      141 JUMPIFNOT                        R3 ; [+94]
      142 GETUPVAL                         R4 4
      143 GETTABLEKS                       R4 R4 K5 ["Generation"]
      145 GETTABLEKS                       R4 R4 K8 ["textureIds"]
      147 JUMPIFNOTEQ                      R0 R4 ; [+88]
      149 FASTCALL2K                       ASSERT R0 K22 ; [+5]
      151 MOVE                             R5 R0
      152 LOADK                            R6 K22 ["No texture ID found"]
      153 GETIMPORT                        R4 K24 [assert]
      155 CALL                             R4 2 0
      156 GETUPVAL                         R4 3
      157 GETTABLEKS                       R4 R4 K7 ["setSelected"]
      159 GETUPVAL                         R5 4
      160 GETTABLEKS                       R5 R5 K5 ["Generation"]
      162 GETTABLEKS                       R5 R5 K6 ["uuid"]
      164 CALL                             R4 1 0
      165 GETUPVAL                         R4 7
      166 GETUPVAL                         R6 4
      167 GETTABLEKS                       R6 R6 K5 ["Generation"]
      169 GETTABLEKS                       R6 R6 K15 ["meshParts"]
      171 NAMECALL                         R4 R4 K25 ["Set"]
      173 CALL                             R4 2 0
      174 GETUPVAL                         R4 6
      175 GETTABLEKS                       R4 R4 K26 ["CurrentCamera"]
      177 GETIMPORT                        R5 K30 [Enum.CameraType.Fixed]
      179 SETTABLEKS                       R5 R4 K28 ["CameraType"]
      181 MOVE                             R6 R2
      182 GETTABLEKS                       R7 R4 K31 ["ViewportSize"]
      184 LOADN                            R9 1
      185 GETTABLEKS                       R11 R7 K32 ["X"]
      187 GETTABLEKS                       R12 R7 K33 ["Y"]
      189 DIV                              R10 R11 R12
      190 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
      192 GETIMPORT                        R8 K36 [math.min]
      194 CALL                             R8 2 1
      195 GETTABLEKS                       R14 R4 K38 ["FieldOfView"]
      197 DIVK                             R13 R14 K37 [2]
      198 FASTCALL1                        MATH_RAD R13 ; [+2]
      199 GETIMPORT                        R12 K40 [math.rad]
      201 CALL                             R12 1 1
      202 FASTCALL1                        MATH_TAN R12 ; [+2]
      203 GETIMPORT                        R11 K42 [math.tan]
      205 CALL                             R11 1 1
      206 MUL                              R10 R11 R8
      207 FASTCALL1                        MATH_ATAN R10 ; [+2]
      208 GETIMPORT                        R9 K44 [math.atan]
      210 CALL                             R9 1 1
      211 GETTABLEKS                       R11 R6 K20 ["Magnitude"]
      213 DIVK                             R10 R11 K37 [2]
      214 FASTCALL1                        MATH_SIN R9 ; [+3]
      215 MOVE                             R12 R9
      216 GETIMPORT                        R11 K46 [math.sin]
      218 CALL                             R11 1 1
      219 DIV                              R5 R10 R11
      220 GETTABLEKS                       R6 R4 K10 ["CFrame"]
      222 GETTABLEKS                       R10 R6 K47 ["Position"]
      224 SUB                              R9 R6 R10
      225 GETTABLEKS                       R10 R1 K47 ["Position"]
      227 ADD                              R8 R9 R10
      228 GETTABLEKS                       R10 R6 K48 ["LookVector"]
      230 MUL                              R9 R10 R5
      231 SUB                              R7 R8 R9
      232 SETTABLEKS                       R7 R4 K10 ["CFrame"]
      234 SETTABLEKS                       R1 R4 K49 ["Focus"]
      236 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GenerationCard"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["useContext"]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 3
       11 NAMECALL                         R3 R3 K1 ["use"]
       13 CALL                             R3 1 1
       14 NAMECALL                         R3 R3 K3 ["get"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 4
       18 NAMECALL                         R4 R4 K1 ["use"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 5
       22 NAMECALL                         R5 R5 K1 ["use"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R6 R0 K4 ["Generation"]
       27 GETTABLEKS                       R6 R6 K5 ["status"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K2 ["useContext"]
       32 GETUPVAL                         R8 6
       33 CALL                             R7 1 1
       34 GETUPVAL                         R8 7
       35 CALL                             R8 0 1
       36 JUMPIFNOT                        R8 ; [+21]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K6 ["useRef"]
       40 GETTABLEKS                       R9 R0 K4 ["Generation"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R0 K4 ["Generation"]
       45 SETTABLEKS                       R9 R8 K7 ["current"]
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       50 NEWCLOSURE                       R10 P0
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          VAL R8
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R0
       57 CALL                             R9 1 0
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R8 R8 K9 ["useCallback"]
       61 NEWCLOSURE                       R9 P1
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U9
       66 CAPTURE                          VAL R4
       67 NEWTABLE                         R10 0 2
       69 GETTABLEKS                       R11 R0 K4 ["Generation"]
       71 GETTABLEKS                       R12 R2 K10 ["updateGeneration"]
       73 SETLIST                          R10 R11 2 [1]
       75 CALL                             R8 2 1
       76 GETUPVAL                         R9 10
       77 CALL                             R9 0 1
       78 GETUPVAL                         R10 1
       79 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       81 NEWCLOSURE                       R11 P2
       82 CAPTURE                          VAL R6
       83 CAPTURE                          UPVAL U9
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U11
       88 CAPTURE                          UPVAL U12
       89 CAPTURE                          VAL R3
       90 NEWTABLE                         R12 0 4
       92 MOVE                             R13 R6
       93 MOVE                             R14 R9
       94 GETTABLEKS                       R15 R2 K11 ["selected"]
       96 GETTABLEKS                       R16 R2 K12 ["setSelected"]
       98 SETLIST                          R12 R13 4 [1]
      100 CALL                             R10 2 1
      101 GETUPVAL                         R11 1
      102 GETTABLEKS                       R11 R11 K13 ["useState"]
      104 LOADN                            R12 0
      105 CALL                             R11 1 2
      106 GETUPVAL                         R13 1
      107 GETTABLEKS                       R13 R13 K14 ["createElement"]
      109 GETUPVAL                         R14 13
      110 DUPTABLE                         R15 K20 [{"AutomaticSize", "LayoutOrder", "Size", "Style", "OnClick"}]
      111 GETIMPORT                        R16 K23 [Enum.AutomaticSize.Y]
      113 SETTABLEKS                       R16 R15 K15 ["AutomaticSize"]
      115 GETTABLEKS                       R16 R0 K16 ["LayoutOrder"]
      117 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      119 GETIMPORT                        R16 K26 [UDim2.new]
      121 LOADN                            R17 1
      122 LOADN                            R18 0
      123 LOADN                            R19 0
      124 FASTCALL2K                       MATH_MAX R11 K27 ; [+5]
      126 MOVE                             R21 R11
      127 LOADK                            R22 K27 [46]
      128 GETIMPORT                        R20 K30 [math.max]
      130 CALL                             R20 2 1
      131 CALL                             R16 4 1
      132 SETTABLEKS                       R16 R15 K17 ["Size"]
      134 LOADK                            R16 K31 ["CornerBox"]
      135 SETTABLEKS                       R16 R15 K18 ["Style"]
      137 SETTABLEKS                       R10 R15 K19 ["OnClick"]
      139 DUPTABLE                         R16 K34 [{"UIPadding", "Contents"}]
      140 GETUPVAL                         R17 1
      141 GETTABLEKS                       R17 R17 K14 ["createElement"]
      143 LOADK                            R18 K32 ["UIPadding"]
      144 DUPTABLE                         R19 K36 [{"PaddingTop"}]
      145 GETIMPORT                        R20 K38 [UDim.new]
      147 LOADN                            R21 0
      148 LOADN                            R22 3
      149 CALL                             R20 2 1
      150 SETTABLEKS                       R20 R19 K35 ["PaddingTop"]
      152 CALL                             R17 2 1
      153 SETTABLEKS                       R17 R16 K32 ["UIPadding"]
      155 GETUPVAL                         R17 1
      156 GETTABLEKS                       R17 R17 K14 ["createElement"]
      158 GETUPVAL                         R18 13
      159 DUPTABLE                         R19 K41 [{"AnchorPoint", "AutomaticSize", "Position", "Style", "Size"}]
      160 GETIMPORT                        R20 K43 [Vector2.new]
      162 LOADK                            R21 K44 [0.5]
      163 LOADK                            R22 K44 [0.5]
      164 CALL                             R20 2 1
      165 SETTABLEKS                       R20 R19 K39 ["AnchorPoint"]
      167 GETIMPORT                        R20 K23 [Enum.AutomaticSize.Y]
      169 SETTABLEKS                       R20 R19 K15 ["AutomaticSize"]
      171 GETIMPORT                        R20 K46 [UDim2.fromScale]
      173 LOADK                            R21 K44 [0.5]
      174 LOADK                            R22 K44 [0.5]
      175 CALL                             R20 2 1
      176 SETTABLEKS                       R20 R19 K40 ["Position"]
      178 LOADK                            R20 K31 ["CornerBox"]
      179 SETTABLEKS                       R20 R19 K18 ["Style"]
      181 GETIMPORT                        R20 K26 [UDim2.new]
      183 LOADN                            R21 1
      184 LOADN                            R22 254
      185 LOADN                            R23 0
      186 LOADN                            R24 0
      187 CALL                             R20 4 1
      188 SETTABLEKS                       R20 R19 K17 ["Size"]
      190 DUPTABLE                         R20 K48 [{"UIStroke", "Generation"}]
      191 GETUPVAL                         R21 1
      192 GETTABLEKS                       R21 R21 K14 ["createElement"]
      194 LOADK                            R22 K47 ["UIStroke"]
      195 DUPTABLE                         R23 K52 [{"Thickness", "ApplyStrokeMode", "Color"}]
      196 LOADN                            R24 1
      197 SETTABLEKS                       R24 R23 K49 ["Thickness"]
      199 GETIMPORT                        R24 K54 [Enum.ApplyStrokeMode.Border]
      201 SETTABLEKS                       R24 R23 K50 ["ApplyStrokeMode"]
      203 GETUPVAL                         R25 9
      204 GETTABLEKS                       R25 R25 K55 ["STATUS"]
      206 GETTABLEKS                       R25 R25 K56 ["FAILED"]
      208 JUMPIFNOTEQ                      R6 R25 ; [+4]
      210 GETTABLEKS                       R24 R1 K57 ["ErrorStrokeColor"]
      212 JUMP                             ; [+13]
      213 GETTABLEKS                       R25 R2 K11 ["selected"]
      215 GETTABLEKS                       R26 R0 K4 ["Generation"]
      217 GETTABLEKS                       R26 R26 K58 ["uuid"]
      219 JUMPIFNOTEQ                      R25 R26 ; [+4]
      221 GETTABLEKS                       R24 R1 K59 ["SelectedStrokeColor"]
      223 JUMP                             ; [+2]
      224 GETTABLEKS                       R24 R1 K60 ["StrokeColor"]
      226 SETTABLEKS                       R24 R23 K51 ["Color"]
      228 DUPTABLE                         R24 K62 [{"Corner"}]
      229 GETUPVAL                         R25 1
      230 GETTABLEKS                       R25 R25 K14 ["createElement"]
      232 LOADK                            R26 K63 ["UICorner"]
      233 CALL                             R25 1 1
      234 SETTABLEKS                       R25 R24 K61 ["Corner"]
      236 CALL                             R21 3 1
      237 SETTABLEKS                       R21 R20 K47 ["UIStroke"]
      239 GETUPVAL                         R22 9
      240 GETTABLEKS                       R22 R22 K55 ["STATUS"]
      242 GETTABLEKS                       R22 R22 K64 ["PENDING"]
      244 JUMPIFNOTEQ                      R6 R22 ; [+16]
      246 GETUPVAL                         R21 1
      247 GETTABLEKS                       R21 R21 K14 ["createElement"]
      249 GETUPVAL                         R22 14
      250 DUPTABLE                         R23 K67 [{"Generation", "OnCancel", "SetHeight"}]
      251 GETTABLEKS                       R24 R0 K4 ["Generation"]
      253 SETTABLEKS                       R24 R23 K4 ["Generation"]
      255 SETTABLEKS                       R8 R23 K65 ["OnCancel"]
      257 SETTABLEKS                       R12 R23 K66 ["SetHeight"]
      259 CALL                             R21 2 1
      260 JUMP                             ; [+12]
      261 GETUPVAL                         R21 1
      262 GETTABLEKS                       R21 R21 K14 ["createElement"]
      264 GETUPVAL                         R22 15
      265 DUPTABLE                         R23 K68 [{"Generation", "SetHeight"}]
      266 GETTABLEKS                       R24 R0 K4 ["Generation"]
      268 SETTABLEKS                       R24 R23 K4 ["Generation"]
      270 SETTABLEKS                       R12 R23 K66 ["SetHeight"]
      272 CALL                             R21 2 1
      273 SETTABLEKS                       R21 R20 K4 ["Generation"]
      275 CALL                             R17 3 1
      276 SETTABLEKS                       R17 R16 K33 ["Contents"]
      278 CALL                             R13 3 -1
      279 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K13 ["ContextServices"]
       29 GETTABLEKS                       R5 R4 K14 ["Analytics"]
       31 GETTABLEKS                       R6 R4 K15 ["Localization"]
       33 GETIMPORT                        R7 K9 [require]
       35 GETTABLEKS                       R8 R0 K16 ["Src"]
       37 GETTABLEKS                       R8 R8 K17 ["Components"]
       39 GETTABLEKS                       R8 R8 K18 ["TextureGenerationServiceContext"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R2 K19 ["UI"]
       44 GETTABLEKS                       R9 R8 K20 ["AssetRenderModel"]
       46 GETTABLEKS                       R10 R8 K21 ["Button"]
       48 GETTABLEKS                       R11 R8 K22 ["Checkbox"]
       50 GETTABLEKS                       R12 R8 K23 ["Dialog"]
       52 GETTABLEKS                       R13 R8 K24 ["ExpandablePane"]
       54 GETTABLEKS                       R14 R8 K25 ["Image"]
       56 GETTABLEKS                       R15 R8 K26 ["Pane"]
       58 GETTABLEKS                       R16 R8 K27 ["Separator"]
       60 GETTABLEKS                       R17 R8 K28 ["showContextMenu"]
       62 GETTABLEKS                       R18 R8 K29 ["TextInput"]
       64 GETTABLEKS                       R19 R8 K30 ["TextLabel"]
       66 GETTABLEKS                       R20 R8 K31 ["TimeProgressBar"]
       68 GETTABLEKS                       R21 R8 K32 ["TitledFrame"]
       70 GETTABLEKS                       R22 R2 K33 ["Util"]
       72 GETTABLEKS                       R22 R22 K34 ["StyleModifier"]
       74 GETTABLEKS                       R23 R2 K33 ["Util"]
       76 GETTABLEKS                       R23 R23 K35 ["LayoutOrderIterator"]
       78 GETTABLEKS                       R24 R2 K13 ["ContextServices"]
       80 GETTABLEKS                       R24 R24 K36 ["Stylizer"]
       82 GETTABLEKS                       R25 R0 K16 ["Src"]
       84 GETTABLEKS                       R25 R25 K37 ["Hooks"]
       86 GETIMPORT                        R26 K9 [require]
       88 GETTABLEKS                       R27 R25 K38 ["useSelectedMeshParts"]
       90 CALL                             R26 1 1
       91 GETIMPORT                        R27 K9 [require]
       93 GETTABLEKS                       R28 R0 K16 ["Src"]
       95 GETTABLEKS                       R28 R28 K33 ["Util"]
       97 GETTABLEKS                       R28 R28 K39 ["cloneIgnoreArchivable"]
       99 CALL                             R27 1 1
      100 GETIMPORT                        R28 K9 [require]
      102 GETTABLEKS                       R29 R0 K16 ["Src"]
      104 GETTABLEKS                       R29 R29 K33 ["Util"]
      106 GETTABLEKS                       R29 R29 K40 ["Constants"]
      108 CALL                             R28 1 1
      109 GETIMPORT                        R29 K9 [require]
      111 GETTABLEKS                       R30 R0 K16 ["Src"]
      113 GETTABLEKS                       R30 R30 K33 ["Util"]
      115 GETTABLEKS                       R30 R30 K41 ["formatFeedbackTable"]
      117 CALL                             R29 1 1
      118 GETIMPORT                        R30 K9 [require]
      120 GETTABLEKS                       R31 R0 K16 ["Src"]
      122 GETTABLEKS                       R31 R31 K33 ["Util"]
      124 GETTABLEKS                       R31 R31 K42 ["GenerationsContext"]
      126 CALL                             R30 1 1
      127 GETIMPORT                        R31 K9 [require]
      129 GETTABLEKS                       R32 R0 K16 ["Src"]
      131 GETTABLEKS                       R32 R32 K33 ["Util"]
      133 GETTABLEKS                       R32 R32 K43 ["SelectionWrapper"]
      135 CALL                             R31 1 1
      136 GETIMPORT                        R32 K9 [require]
      138 GETTABLEKS                       R33 R0 K16 ["Src"]
      140 GETTABLEKS                       R33 R33 K33 ["Util"]
      142 GETTABLEKS                       R33 R33 K44 ["setTexture"]
      144 CALL                             R32 1 1
      145 GETIMPORT                        R33 K9 [require]
      147 GETTABLEKS                       R34 R0 K16 ["Src"]
      149 GETTABLEKS                       R34 R34 K45 ["Resources"]
      151 GETTABLEKS                       R34 R34 K46 ["Theme"]
      153 CALL                             R33 1 1
      154 GETIMPORT                        R34 K9 [require]
      156 GETTABLEKS                       R35 R0 K16 ["Src"]
      158 GETTABLEKS                       R35 R35 K47 ["Types"]
      160 CALL                             R34 1 1
      161 GETIMPORT                        R35 K5 [game]
      163 LOADK                            R37 K48 ["GuiService"]
      164 NAMECALL                         R35 R35 K7 ["GetService"]
      166 CALL                             R35 2 1
      167 GETIMPORT                        R36 K5 [game]
      169 LOADK                            R38 K49 ["Workspace"]
      170 NAMECALL                         R36 R36 K7 ["GetService"]
      172 CALL                             R36 2 1
      173 GETIMPORT                        R37 K5 [game]
      175 LOADK                            R39 K50 ["TextureGeneratorLoadingBarAnimation"]
      176 LOADB                            R40 0
      177 NAMECALL                         R37 R37 K51 ["DefineFastFlag"]
      179 CALL                             R37 3 1
      180 GETIMPORT                        R38 K9 [require]
      182 GETTABLEKS                       R39 R0 K16 ["Src"]
      184 GETTABLEKS                       R39 R39 K52 ["Flags"]
      186 GETTABLEKS                       R39 R39 K53 ["getFFlagTextureGeneratorBugFixes"]
      188 CALL                             R38 1 1
      189 DUPCLOSURE                       R39 K54 [PROTO_0]
      190 CAPTURE                          VAL R28
      191 DUPCLOSURE                       R40 K55 [PROTO_2]
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R27
      194 CAPTURE                          VAL R32
      195 DUPCLOSURE                       R41 K56 [PROTO_3]
      196 DUPCLOSURE                       R42 K57 [PROTO_4]
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R37
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R10
      207 DUPCLOSURE                       R43 K58 [PROTO_19]
      208 CAPTURE                          VAL R3
      209 CAPTURE                          VAL R30
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R24
      215 CAPTURE                          VAL R28
      216 CAPTURE                          VAL R27
      217 CAPTURE                          VAL R32
      218 CAPTURE                          VAL R36
      219 CAPTURE                          VAL R35
      220 CAPTURE                          VAL R39
      221 CAPTURE                          VAL R15
      222 CAPTURE                          VAL R9
      223 CAPTURE                          VAL R19
      224 CAPTURE                          VAL R10
      225 CAPTURE                          VAL R14
      226 CAPTURE                          VAL R17
      227 CAPTURE                          VAL R12
      228 CAPTURE                          VAL R13
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R11
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R16
      233 CAPTURE                          VAL R29
      234 DUPCLOSURE                       R44 K59 [PROTO_24]
      235 CAPTURE                          VAL R24
      236 CAPTURE                          VAL R3
      237 CAPTURE                          VAL R30
      238 CAPTURE                          VAL R31
      239 CAPTURE                          VAL R5
      240 CAPTURE                          VAL R6
      241 CAPTURE                          VAL R7
      242 CAPTURE                          VAL R38
      243 CAPTURE                          VAL R1
      244 CAPTURE                          VAL R28
      245 CAPTURE                          VAL R26
      246 CAPTURE                          VAL R32
      247 CAPTURE                          VAL R36
      248 CAPTURE                          VAL R15
      249 CAPTURE                          VAL R42
      250 CAPTURE                          VAL R43
      251 RETURN                           R44 1
