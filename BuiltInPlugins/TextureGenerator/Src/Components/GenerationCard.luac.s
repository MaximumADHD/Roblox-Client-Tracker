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
      127 JUMP                             ; [+33]
      128 GETUPVAL                         R11 3
      129 GETTABLEKS                       R11 R11 K9 ["createElement"]
      131 GETUPVAL                         R12 8
      132 DUPTABLE                         R13 K57 [{["LayoutOrder"], ["Size"], ["Text"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
      133 NAMECALL                         R14 R2 K42 ["getNextOrder"]
      135 CALL                             R14 1 1
      136 SETTABLEKS                       R14 R13 K35 ["LayoutOrder"]
      138 GETTABLEKS                       R14 R6 K58 ["PromptLabelProgressSize"]
      140 SETTABLEKS                       R14 R13 K15 ["Size"]
      142 GETTABLEKS                       R14 R0 K2 ["Generation"]
      144 GETTABLEKS                       R14 R14 K59 ["prompt"]
      146 SETTABLEKS                       R14 R13 K51 ["Text"]
      148 GETIMPORT                        R14 K61 [Enum.TextTruncate.AtEnd]
      150 SETTABLEKS                       R14 R13 K52 ["TextTruncate"]
      152 GETIMPORT                        R14 K62 [Enum.TextXAlignment.Left]
      154 SETTABLEKS                       R14 R13 K53 ["TextXAlignment"]
      156 GETIMPORT                        R14 K63 [Enum.TextYAlignment.Center]
      158 SETTABLEKS                       R14 R13 K54 ["TextYAlignment"]
      160 CALL                             R11 2 1
      161 SETTABLEKS                       R11 R10 K31 ["Content"]
      163 GETUPVAL                         R11 3
      164 GETTABLEKS                       R11 R11 K9 ["createElement"]
      166 GETUPVAL                         R12 9
      167 DUPTABLE                         R13 K66 [{"LayoutOrder", "Size", "OnClick", "Style", "Text"}]
      168 NAMECALL                         R14 R2 K42 ["getNextOrder"]
      170 CALL                             R14 1 1
      171 SETTABLEKS                       R14 R13 K35 ["LayoutOrder"]
      173 GETTABLEKS                       R14 R6 K67 ["CancelButtonSize"]
      175 SETTABLEKS                       R14 R13 K15 ["Size"]
      177 GETTABLEKS                       R14 R0 K68 ["OnCancel"]
      179 SETTABLEKS                       R14 R13 K64 ["OnClick"]
      181 GETTABLEKS                       R14 R6 K69 ["CancelButtonStyle"]
      183 SETTABLEKS                       R14 R13 K65 ["Style"]
      185 LOADK                            R16 K8 ["GenerationCard"]
      186 LOADK                            R17 K70 ["Cancel"]
      187 NAMECALL                         R14 R1 K71 ["getText"]
      189 CALL                             R14 3 1
      190 SETTABLEKS                       R14 R13 K51 ["Text"]
      192 CALL                             R11 2 1
      193 SETTABLEKS                       R11 R10 K32 ["CancelButton"]
      195 CALL                             R7 3 -1
      196 RETURN                           R7 -1

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
       13 DUPTABLE                         R1 K12 [{["promptCheckbox"] = False, ["qualityCheckbox"] = False, ["resolutionCheckbox"] = False, ["looksCheckbox"] = False, ["otherNotes"] = ""}]
       14 SETTABLEKS                       R1 R0 K13 ["feedbackTable"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K14 ["updateGeneration"]
       19 DUPTABLE                         R2 K18 [{"action", "uuid", "data"}]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K19 ["GENERATION_ACTIONS"]
       23 GETTABLEKS                       R3 R3 K20 ["UPDATE"]
       25 SETTABLEKS                       R3 R2 K15 ["action"]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K21 ["Generation"]
       30 GETTABLEKS                       R3 R3 K16 ["uuid"]
       32 SETTABLEKS                       R3 R2 K16 ["uuid"]
       34 SETTABLEKS                       R0 R2 K17 ["data"]
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

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
      149 JUMPIFNOT                        R13 ; [+32]
      150 GETUPVAL                         R23 0
      151 GETTABLEKS                       R23 R23 K20 ["createElement"]
      153 GETUPVAL                         R24 14
      154 DUPTABLE                         R25 K55 [{["LayoutOrder"], ["Model"], ["ShouldMuteModelSounds"] = True, ["Size"], ["Static"] = True, ["BackgroundColor3"], ["FocusDirection"], ["LightColor"], ["LightDirection"] = {-1, -1, -1}}]
      155 NAMECALL                         R26 R4 K56 ["getNextOrder"]
      157 CALL                             R26 1 1
      158 SETTABLEKS                       R26 R25 K44 ["LayoutOrder"]
      160 SETTABLEKS                       R13 R25 K45 ["Model"]
      162 GETTABLEKS                       R26 R7 K57 ["InstanceViewSize"]
      164 SETTABLEKS                       R26 R25 K48 ["Size"]
      166 GETTABLEKS                       R26 R7 K58 ["BackgroundColor"]
      168 SETTABLEKS                       R26 R25 K50 ["BackgroundColor3"]
      170 SETTABLEKS                       R18 R25 K51 ["FocusDirection"]
      172 GETIMPORT                        R26 K60 [Color3.new]
      174 LOADN                            R27 1
      175 LOADN                            R28 1
      176 LOADN                            R29 1
      177 CALL                             R26 3 1
      178 SETTABLEKS                       R26 R25 K52 ["LightColor"]
      180 CALL                             R23 2 1
      181 JUMP                             ; [+1]
      182 LOADNIL                          R23
      183 SETTABLEKS                       R23 R22 K37 ["InstanceView"]
      185 GETUPVAL                         R23 0
      186 GETTABLEKS                       R23 R23 K20 ["createElement"]
      188 GETUPVAL                         R24 15
      189 DUPTABLE                         R25 K67 [{["LayoutOrder"], ["Size"], ["Style"], ["Text"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
      190 NAMECALL                         R26 R4 K56 ["getNextOrder"]
      192 CALL                             R26 1 1
      193 SETTABLEKS                       R26 R25 K44 ["LayoutOrder"]
      195 SETTABLEKS                       R14 R25 K48 ["Size"]
      197 GETUPVAL                         R27 7
      198 GETTABLEKS                       R27 R27 K8 ["STATUS"]
      200 GETTABLEKS                       R27 R27 K68 ["FAILED"]
      202 JUMPIFNOTEQ                      R9 R27 ; [+3]
      204 LOADK                            R26 K69 ["Warning"]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R26
      207 SETTABLEKS                       R26 R25 K61 ["Style"]
      209 SETTABLEKS                       R10 R25 K62 ["Text"]
      211 GETIMPORT                        R26 K71 [Enum.TextTruncate.AtEnd]
      213 SETTABLEKS                       R26 R25 K63 ["TextTruncate"]
      215 GETIMPORT                        R26 K72 [Enum.TextXAlignment.Left]
      217 SETTABLEKS                       R26 R25 K64 ["TextXAlignment"]
      219 GETIMPORT                        R26 K73 [Enum.TextYAlignment.Center]
      221 SETTABLEKS                       R26 R25 K65 ["TextYAlignment"]
      223 CALL                             R23 2 1
      224 SETTABLEKS                       R23 R22 K38 ["PromptLabel"]
      226 GETUPVAL                         R24 7
      227 GETTABLEKS                       R24 R24 K8 ["STATUS"]
      229 GETTABLEKS                       R24 R24 K9 ["COMPLETED"]
      231 JUMPIFNOTEQ                      R9 R24 ; [+73]
      233 GETUPVAL                         R23 0
      234 GETTABLEKS                       R23 R23 K20 ["createElement"]
      236 GETUPVAL                         R24 16
      237 DUPTABLE                         R25 K77 [{["DisableHover"], ["LayoutOrder"], ["Size"], ["Style"] = "RoundSubtle", ["OnClick"]}]
      238 GETTABLEKS                       R27 R8 K78 ["accepted"]
      240 JUMPIFNOTEQKNIL                  R27 ; [+2]
      242 LOADB                            R26 0 +1
      243 LOADB                            R26 1
      244 SETTABLEKS                       R26 R25 K74 ["DisableHover"]
      246 NAMECALL                         R26 R4 K56 ["getNextOrder"]
      248 CALL                             R26 1 1
      249 SETTABLEKS                       R26 R25 K44 ["LayoutOrder"]
      251 GETTABLEKS                       R26 R7 K79 ["MenuButtonSize"]
      253 SETTABLEKS                       R26 R25 K48 ["Size"]
      255 NEWCLOSURE                       R26 P3
      256 CAPTURE                          VAL R8
      257 CAPTURE                          VAL R1
      258 CAPTURE                          UPVAL U7
      259 CAPTURE                          VAL R0
      260 CAPTURE                          VAL R6
      261 SETTABLEKS                       R26 R25 K76 ["OnClick"]
      263 DUPTABLE                         R26 K81 [{"Icon"}]
      264 GETUPVAL                         R27 0
      265 GETTABLEKS                       R27 R27 K20 ["createElement"]
      267 GETUPVAL                         R28 17
      268 DUPTABLE                         R29 K85 [{"AnchorPoint", "Image", "Position", "Size"}]
      269 GETIMPORT                        R30 K87 [Vector2.new]
      271 LOADK                            R31 K88 [0.5]
      272 LOADK                            R32 K88 [0.5]
      273 CALL                             R30 2 1
      274 SETTABLEKS                       R30 R29 K82 ["AnchorPoint"]
      276 GETTABLEKS                       R31 R8 K78 ["accepted"]
      278 JUMPIFNOT                        R31 ; [+3]
      279 GETTABLEKS                       R30 R7 K89 ["ThumbsUpIcon"]
      281 JUMP                             ; [+2]
      282 GETTABLEKS                       R30 R7 K90 ["ThumbsUpOutlineIcon"]
      284 SETTABLEKS                       R30 R29 K83 ["Image"]
      286 GETIMPORT                        R30 K93 [UDim2.fromScale]
      288 LOADK                            R31 K88 [0.5]
      289 LOADK                            R32 K88 [0.5]
      290 CALL                             R30 2 1
      291 SETTABLEKS                       R30 R29 K84 ["Position"]
      293 GETIMPORT                        R30 K95 [UDim2.fromOffset]
      295 LOADN                            R31 16
      296 LOADN                            R32 16
      297 CALL                             R30 2 1
      298 SETTABLEKS                       R30 R29 K48 ["Size"]
      300 CALL                             R27 2 1
      301 SETTABLEKS                       R27 R26 K80 ["Icon"]
      303 CALL                             R23 3 1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R23
      306 SETTABLEKS                       R23 R22 K39 ["ThumbsUpButton"]
      308 GETUPVAL                         R24 7
      309 GETTABLEKS                       R24 R24 K8 ["STATUS"]
      311 GETTABLEKS                       R24 R24 K9 ["COMPLETED"]
      313 JUMPIFNOTEQ                      R9 R24 ; [+76]
      315 GETUPVAL                         R23 0
      316 GETTABLEKS                       R23 R23 K20 ["createElement"]
      318 GETUPVAL                         R24 16
      319 DUPTABLE                         R25 K77 [{["DisableHover"], ["LayoutOrder"], ["Size"], ["Style"] = "RoundSubtle", ["OnClick"]}]
      320 GETTABLEKS                       R27 R8 K78 ["accepted"]
      322 JUMPIFNOTEQKNIL                  R27 ; [+2]
      324 LOADB                            R26 0 +1
      325 LOADB                            R26 1
      326 SETTABLEKS                       R26 R25 K74 ["DisableHover"]
      328 NAMECALL                         R26 R4 K56 ["getNextOrder"]
      330 CALL                             R26 1 1
      331 SETTABLEKS                       R26 R25 K44 ["LayoutOrder"]
      333 GETTABLEKS                       R26 R7 K79 ["MenuButtonSize"]
      335 SETTABLEKS                       R26 R25 K48 ["Size"]
      337 NEWCLOSURE                       R26 P4
      338 CAPTURE                          VAL R8
      339 CAPTURE                          VAL R1
      340 CAPTURE                          UPVAL U7
      341 CAPTURE                          VAL R0
      342 SETTABLEKS                       R26 R25 K76 ["OnClick"]
      344 DUPTABLE                         R26 K81 [{"Icon"}]
      345 GETUPVAL                         R27 0
      346 GETTABLEKS                       R27 R27 K20 ["createElement"]
      348 GETUPVAL                         R28 17
      349 DUPTABLE                         R29 K85 [{"AnchorPoint", "Image", "Position", "Size"}]
      350 GETIMPORT                        R30 K87 [Vector2.new]
      352 LOADK                            R31 K88 [0.5]
      353 LOADK                            R32 K88 [0.5]
      354 CALL                             R30 2 1
      355 SETTABLEKS                       R30 R29 K82 ["AnchorPoint"]
      357 GETTABLEKS                       R31 R8 K78 ["accepted"]
      359 JUMPIFEQKNIL                     R31 ; [+7]
      361 GETTABLEKS                       R31 R8 K78 ["accepted"]
      363 JUMPIF                           R31 ; [+3]
      364 GETTABLEKS                       R30 R7 K96 ["ThumbsDownIcon"]
      366 JUMP                             ; [+2]
      367 GETTABLEKS                       R30 R7 K97 ["ThumbsDownOutlineIcon"]
      369 SETTABLEKS                       R30 R29 K83 ["Image"]
      371 GETIMPORT                        R30 K93 [UDim2.fromScale]
      373 LOADK                            R31 K88 [0.5]
      374 LOADK                            R32 K88 [0.5]
      375 CALL                             R30 2 1
      376 SETTABLEKS                       R30 R29 K84 ["Position"]
      378 GETIMPORT                        R30 K95 [UDim2.fromOffset]
      380 LOADN                            R31 16
      381 LOADN                            R32 16
      382 CALL                             R30 2 1
      383 SETTABLEKS                       R30 R29 K48 ["Size"]
      385 CALL                             R27 2 1
      386 SETTABLEKS                       R27 R26 K80 ["Icon"]
      388 CALL                             R23 3 1
      389 JUMP                             ; [+1]
      390 LOADNIL                          R23
      391 SETTABLEKS                       R23 R22 K40 ["ThumbsDownButton"]
      393 GETUPVAL                         R23 0
      394 GETTABLEKS                       R23 R23 K20 ["createElement"]
      396 GETUPVAL                         R24 16
      397 DUPTABLE                         R25 K98 [{["LayoutOrder"], ["Size"], ["Style"] = "RoundSubtle", ["OnClick"]}]
      398 NAMECALL                         R26 R4 K56 ["getNextOrder"]
      400 CALL                             R26 1 1
      401 SETTABLEKS                       R26 R25 K44 ["LayoutOrder"]
      403 GETTABLEKS                       R26 R7 K79 ["MenuButtonSize"]
      405 SETTABLEKS                       R26 R25 K48 ["Size"]
      407 NEWCLOSURE                       R26 P5
      408 CAPTURE                          VAL R9
      409 CAPTURE                          UPVAL U7
      410 CAPTURE                          VAL R1
      411 CAPTURE                          VAL R0
      412 CAPTURE                          UPVAL U18
      413 CAPTURE                          VAL R3
      414 CAPTURE                          VAL R16
      415 SETTABLEKS                       R26 R25 K76 ["OnClick"]
      417 DUPTABLE                         R26 K81 [{"Icon"}]
      418 GETUPVAL                         R28 7
      419 GETTABLEKS                       R28 R28 K8 ["STATUS"]
      421 GETTABLEKS                       R28 R28 K68 ["FAILED"]
      423 JUMPIFNOTEQ                      R9 R28 ; [+29]
      425 GETUPVAL                         R27 0
      426 GETTABLEKS                       R27 R27 K20 ["createElement"]
      428 GETUPVAL                         R28 17
      429 DUPTABLE                         R29 K101 [{["AnchorPoint"], ["Image"] = "rbxasset://textures/DeveloperFramework/close.png", ["Position"], ["Size"], ["Style"] = "ColoredWarning"}]
      430 GETIMPORT                        R30 K87 [Vector2.new]
      432 LOADK                            R31 K88 [0.5]
      433 LOADK                            R32 K88 [0.5]
      434 CALL                             R30 2 1
      435 SETTABLEKS                       R30 R29 K82 ["AnchorPoint"]
      437 GETIMPORT                        R30 K93 [UDim2.fromScale]
      439 LOADK                            R31 K88 [0.5]
      440 LOADK                            R32 K88 [0.5]
      441 CALL                             R30 2 1
      442 SETTABLEKS                       R30 R29 K84 ["Position"]
      444 GETIMPORT                        R30 K95 [UDim2.fromOffset]
      446 LOADN                            R31 16
      447 LOADN                            R32 16
      448 CALL                             R30 2 1
      449 SETTABLEKS                       R30 R29 K48 ["Size"]
      451 CALL                             R27 2 1
      452 JUMP                             ; [+27]
      453 GETUPVAL                         R27 0
      454 GETTABLEKS                       R27 R27 K20 ["createElement"]
      456 GETUPVAL                         R28 17
      457 DUPTABLE                         R29 K103 [{["AnchorPoint"], ["Image"] = "rbxasset://textures/StudioSharedUI/MeatballMenu.png", ["Position"], ["Size"]}]
      458 GETIMPORT                        R30 K87 [Vector2.new]
      460 LOADK                            R31 K88 [0.5]
      461 LOADK                            R32 K88 [0.5]
      462 CALL                             R30 2 1
      463 SETTABLEKS                       R30 R29 K82 ["AnchorPoint"]
      465 GETIMPORT                        R30 K93 [UDim2.fromScale]
      467 LOADK                            R31 K88 [0.5]
      468 LOADK                            R32 K88 [0.5]
      469 CALL                             R30 2 1
      470 SETTABLEKS                       R30 R29 K84 ["Position"]
      472 GETIMPORT                        R30 K95 [UDim2.fromOffset]
      474 LOADN                            R31 24
      475 LOADN                            R32 24
      476 CALL                             R30 2 1
      477 SETTABLEKS                       R30 R29 K48 ["Size"]
      479 CALL                             R27 2 1
      480 SETTABLEKS                       R27 R26 K80 ["Icon"]
      482 CALL                             R23 3 1
      483 SETTABLEKS                       R23 R22 K41 ["Button"]
      485 GETTABLEKS                       R24 R8 K104 ["showFeedbackDialog"]
      487 JUMPIFNOT                        R24 ; [+371]
      488 GETUPVAL                         R23 0
      489 GETTABLEKS                       R23 R23 K20 ["createElement"]
      491 GETUPVAL                         R24 19
      492 DUPTABLE                         R25 K108 [{"Enabled", "Size", "Title", "OnClose"}]
      493 GETTABLEKS                       R26 R8 K104 ["showFeedbackDialog"]
      495 SETTABLEKS                       R26 R25 K105 ["Enabled"]
      497 GETIMPORT                        R26 K87 [Vector2.new]
      499 LOADN                            R27 600
      500 LOADN                            R28 400
      501 CALL                             R26 2 1
      502 SETTABLEKS                       R26 R25 K48 ["Size"]
      504 LOADK                            R28 K109 ["FeedbackDialog"]
      505 LOADK                            R29 K106 ["Title"]
      506 NAMECALL                         R26 R2 K110 ["getText"]
      508 CALL                             R26 3 1
      509 SETTABLEKS                       R26 R25 K106 ["Title"]
      511 NEWCLOSURE                       R26 P6
      512 CAPTURE                          VAL R8
      513 CAPTURE                          VAL R1
      514 CAPTURE                          UPVAL U7
      515 CAPTURE                          VAL R0
      516 SETTABLEKS                       R26 R25 K107 ["OnClose"]
      518 DUPTABLE                         R26 K112 [{"Frame"}]
      519 GETUPVAL                         R27 0
      520 GETTABLEKS                       R27 R27 K20 ["createElement"]
      522 GETUPVAL                         R28 13
      523 DUPTABLE                         R29 K114 [{["AutomaticSize"], ["Layout"], ["Padding"] = 16}]
      524 GETIMPORT                        R30 K29 [Enum.AutomaticSize.Y]
      526 SETTABLEKS                       R30 R29 K21 ["AutomaticSize"]
      528 GETIMPORT                        R30 K116 [Enum.FillDirection.Vertical]
      530 SETTABLEKS                       R30 R29 K23 ["Layout"]
      532 DUPTABLE                         R30 K119 [{"Title", "Separator", "ButtonPane"}]
      533 GETUPVAL                         R31 0
      534 GETTABLEKS                       R31 R31 K20 ["createElement"]
      536 GETUPVAL                         R32 20
      537 DUPTABLE                         R33 K126 [{["AlwaysExpanded"] = True, ["ContentPadding"] = 10, ["ContentSpacing"] = 15, ["OnExpandedChanged"], ["Style"] = "Title", ["Text"], ["VerticalAlignment"]}]
      538 DUPCLOSURE                       R34 K127 [PROTO_11]
      539 SETTABLEKS                       R34 R33 K125 ["OnExpandedChanged"]
      541 LOADK                            R36 K109 ["FeedbackDialog"]
      542 LOADK                            R37 K106 ["Title"]
      543 NAMECALL                         R34 R2 K110 ["getText"]
      545 CALL                             R34 3 1
      546 SETTABLEKS                       R34 R33 K62 ["Text"]
      548 GETIMPORT                        R34 K129 [Enum.VerticalAlignment.Top]
      550 SETTABLEKS                       R34 R33 K25 ["VerticalAlignment"]
      552 DUPTABLE                         R34 K132 [{"Checkboxes", "FreeformText"}]
      553 GETUPVAL                         R35 0
      554 GETTABLEKS                       R35 R35 K20 ["createElement"]
      556 GETUPVAL                         R36 21
      557 DUPTABLE                         R37 K133 [{"Title", "LayoutOrder"}]
      558 LOADK                            R40 K109 ["FeedbackDialog"]
      559 LOADK                            R41 K134 ["CheckboxTitle"]
      560 NAMECALL                         R38 R2 K110 ["getText"]
      562 CALL                             R38 3 1
      563 SETTABLEKS                       R38 R37 K106 ["Title"]
      565 NAMECALL                         R38 R5 K56 ["getNextOrder"]
      567 CALL                             R38 1 1
      568 SETTABLEKS                       R38 R37 K44 ["LayoutOrder"]
      570 DUPTABLE                         R38 K139 [{"PromptCheckbox", "QualityCheckbox", "ResolutionCheckbox", "LooksCheckbox"}]
      571 GETUPVAL                         R39 0
      572 GETTABLEKS                       R39 R39 K20 ["createElement"]
      574 GETUPVAL                         R40 22
      575 DUPTABLE                         R41 K141 [{"Checked", "LayoutOrder", "Text", "OnClick"}]
      576 GETTABLEKS                       R42 R8 K142 ["feedbackTable"]
      578 GETTABLEKS                       R42 R42 K143 ["promptCheckbox"]
      580 SETTABLEKS                       R42 R41 K140 ["Checked"]
      582 NAMECALL                         R42 R5 K56 ["getNextOrder"]
      584 CALL                             R42 1 1
      585 SETTABLEKS                       R42 R41 K44 ["LayoutOrder"]
      587 LOADK                            R44 K109 ["FeedbackDialog"]
      588 LOADK                            R45 K135 ["PromptCheckbox"]
      589 NAMECALL                         R42 R2 K110 ["getText"]
      591 CALL                             R42 3 1
      592 SETTABLEKS                       R42 R41 K62 ["Text"]
      594 NEWCLOSURE                       R42 P8
      595 CAPTURE                          VAL R8
      596 CAPTURE                          VAL R1
      597 CAPTURE                          UPVAL U7
      598 CAPTURE                          VAL R0
      599 SETTABLEKS                       R42 R41 K76 ["OnClick"]
      601 CALL                             R39 2 1
      602 SETTABLEKS                       R39 R38 K135 ["PromptCheckbox"]
      604 GETUPVAL                         R39 0
      605 GETTABLEKS                       R39 R39 K20 ["createElement"]
      607 GETUPVAL                         R40 22
      608 DUPTABLE                         R41 K141 [{"Checked", "LayoutOrder", "Text", "OnClick"}]
      609 GETTABLEKS                       R42 R8 K142 ["feedbackTable"]
      611 GETTABLEKS                       R42 R42 K144 ["qualityCheckbox"]
      613 SETTABLEKS                       R42 R41 K140 ["Checked"]
      615 NAMECALL                         R42 R5 K56 ["getNextOrder"]
      617 CALL                             R42 1 1
      618 SETTABLEKS                       R42 R41 K44 ["LayoutOrder"]
      620 LOADK                            R44 K109 ["FeedbackDialog"]
      621 LOADK                            R45 K136 ["QualityCheckbox"]
      622 NAMECALL                         R42 R2 K110 ["getText"]
      624 CALL                             R42 3 1
      625 SETTABLEKS                       R42 R41 K62 ["Text"]
      627 NEWCLOSURE                       R42 P9
      628 CAPTURE                          VAL R8
      629 CAPTURE                          VAL R1
      630 CAPTURE                          UPVAL U7
      631 CAPTURE                          VAL R0
      632 SETTABLEKS                       R42 R41 K76 ["OnClick"]
      634 CALL                             R39 2 1
      635 SETTABLEKS                       R39 R38 K136 ["QualityCheckbox"]
      637 GETUPVAL                         R39 0
      638 GETTABLEKS                       R39 R39 K20 ["createElement"]
      640 GETUPVAL                         R40 22
      641 DUPTABLE                         R41 K141 [{"Checked", "LayoutOrder", "Text", "OnClick"}]
      642 GETTABLEKS                       R42 R8 K142 ["feedbackTable"]
      644 GETTABLEKS                       R42 R42 K145 ["resolutionCheckbox"]
      646 SETTABLEKS                       R42 R41 K140 ["Checked"]
      648 NAMECALL                         R42 R5 K56 ["getNextOrder"]
      650 CALL                             R42 1 1
      651 SETTABLEKS                       R42 R41 K44 ["LayoutOrder"]
      653 LOADK                            R44 K109 ["FeedbackDialog"]
      654 LOADK                            R45 K137 ["ResolutionCheckbox"]
      655 NAMECALL                         R42 R2 K110 ["getText"]
      657 CALL                             R42 3 1
      658 SETTABLEKS                       R42 R41 K62 ["Text"]
      660 NEWCLOSURE                       R42 P10
      661 CAPTURE                          VAL R8
      662 CAPTURE                          VAL R1
      663 CAPTURE                          UPVAL U7
      664 CAPTURE                          VAL R0
      665 SETTABLEKS                       R42 R41 K76 ["OnClick"]
      667 CALL                             R39 2 1
      668 SETTABLEKS                       R39 R38 K137 ["ResolutionCheckbox"]
      670 GETUPVAL                         R39 0
      671 GETTABLEKS                       R39 R39 K20 ["createElement"]
      673 GETUPVAL                         R40 22
      674 DUPTABLE                         R41 K141 [{"Checked", "LayoutOrder", "Text", "OnClick"}]
      675 GETTABLEKS                       R42 R8 K142 ["feedbackTable"]
      677 GETTABLEKS                       R42 R42 K146 ["looksCheckbox"]
      679 SETTABLEKS                       R42 R41 K140 ["Checked"]
      681 NAMECALL                         R42 R5 K56 ["getNextOrder"]
      683 CALL                             R42 1 1
      684 SETTABLEKS                       R42 R41 K44 ["LayoutOrder"]
      686 LOADK                            R44 K109 ["FeedbackDialog"]
      687 LOADK                            R45 K138 ["LooksCheckbox"]
      688 NAMECALL                         R42 R2 K110 ["getText"]
      690 CALL                             R42 3 1
      691 SETTABLEKS                       R42 R41 K62 ["Text"]
      693 NEWCLOSURE                       R42 P11
      694 CAPTURE                          VAL R8
      695 CAPTURE                          VAL R1
      696 CAPTURE                          UPVAL U7
      697 CAPTURE                          VAL R0
      698 SETTABLEKS                       R42 R41 K76 ["OnClick"]
      700 CALL                             R39 2 1
      701 SETTABLEKS                       R39 R38 K138 ["LooksCheckbox"]
      703 CALL                             R35 3 1
      704 SETTABLEKS                       R35 R34 K130 ["Checkboxes"]
      706 GETUPVAL                         R35 0
      707 GETTABLEKS                       R35 R35 K20 ["createElement"]
      709 GETUPVAL                         R36 21
      710 DUPTABLE                         R37 K133 [{"Title", "LayoutOrder"}]
      711 LOADK                            R40 K109 ["FeedbackDialog"]
      712 LOADK                            R41 K147 ["OtherNotesTitle"]
      713 NAMECALL                         R38 R2 K110 ["getText"]
      715 CALL                             R38 3 1
      716 SETTABLEKS                       R38 R37 K106 ["Title"]
      718 NAMECALL                         R38 R5 K56 ["getNextOrder"]
      720 CALL                             R38 1 1
      721 SETTABLEKS                       R38 R37 K44 ["LayoutOrder"]
      723 DUPTABLE                         R38 K149 [{"TextInput"}]
      724 GETUPVAL                         R39 0
      725 GETTABLEKS                       R39 R39 K20 ["createElement"]
      727 GETUPVAL                         R40 23
      728 DUPTABLE                         R41 K154 [{["Size"], ["MultiLine"] = True, ["MaxLength"] = 1000, ["Text"], ["OnTextChanged"]}]
      729 GETIMPORT                        R42 K155 [UDim2.new]
      731 LOADN                            R43 1
      732 LOADN                            R44 0
      733 LOADN                            R45 0
      734 LOADN                            R46 120
      735 CALL                             R42 4 1
      736 SETTABLEKS                       R42 R41 K48 ["Size"]
      738 GETTABLEKS                       R42 R8 K142 ["feedbackTable"]
      740 GETTABLEKS                       R42 R42 K156 ["otherNotes"]
      742 SETTABLEKS                       R42 R41 K62 ["Text"]
      744 NEWCLOSURE                       R42 P12
      745 CAPTURE                          VAL R8
      746 CAPTURE                          VAL R1
      747 CAPTURE                          UPVAL U7
      748 CAPTURE                          VAL R0
      749 SETTABLEKS                       R42 R41 K153 ["OnTextChanged"]
      751 CALL                             R39 2 1
      752 SETTABLEKS                       R39 R38 K148 ["TextInput"]
      754 CALL                             R35 3 1
      755 SETTABLEKS                       R35 R34 K131 ["FreeformText"]
      757 CALL                             R31 3 1
      758 SETTABLEKS                       R31 R30 K106 ["Title"]
      760 GETUPVAL                         R31 0
      761 GETTABLEKS                       R31 R31 K20 ["createElement"]
      763 GETUPVAL                         R32 24
      764 DUPTABLE                         R33 K158 [{["LayoutOrder"] = 2}]
      765 CALL                             R31 2 1
      766 SETTABLEKS                       R31 R30 K117 ["Separator"]
      768 GETUPVAL                         R31 0
      769 GETTABLEKS                       R31 R31 K20 ["createElement"]
      771 GETUPVAL                         R32 13
      772 DUPTABLE                         R33 K161 [{["Size"], ["HorizontalAlignment"], ["Layout"], ["Spacing"] = 10, ["LayoutOrder"] = 3}]
      773 GETIMPORT                        R34 K155 [UDim2.new]
      775 LOADN                            R35 1
      776 LOADN                            R36 0
      777 LOADN                            R37 0
      778 LOADN                            R38 70
      779 CALL                             R34 4 1
      780 SETTABLEKS                       R34 R33 K48 ["Size"]
      782 GETIMPORT                        R34 K163 [Enum.HorizontalAlignment.Right]
      784 SETTABLEKS                       R34 R33 K22 ["HorizontalAlignment"]
      786 GETIMPORT                        R34 K34 [Enum.FillDirection.Horizontal]
      788 SETTABLEKS                       R34 R33 K23 ["Layout"]
      790 DUPTABLE                         R34 K166 [{"CancelButton", "SubmitButton"}]
      791 GETUPVAL                         R35 0
      792 GETTABLEKS                       R35 R35 K20 ["createElement"]
      794 GETUPVAL                         R36 16
      795 DUPTABLE                         R37 K169 [{["LayoutOrder"] = 1, ["Size"], ["Style"] = "Round", ["Text"], ["OnClick"]}]
      796 GETIMPORT                        R38 K95 [UDim2.fromOffset]
      798 LOADN                            R39 70
      799 LOADN                            R40 40
      800 CALL                             R38 2 1
      801 SETTABLEKS                       R38 R37 K48 ["Size"]
      803 LOADK                            R40 K5 ["GenerationCard"]
      804 LOADK                            R41 K170 ["Cancel"]
      805 NAMECALL                         R38 R2 K110 ["getText"]
      807 CALL                             R38 3 1
      808 SETTABLEKS                       R38 R37 K62 ["Text"]
      810 NEWCLOSURE                       R38 P13
      811 CAPTURE                          VAL R8
      812 CAPTURE                          VAL R1
      813 CAPTURE                          UPVAL U7
      814 CAPTURE                          VAL R0
      815 SETTABLEKS                       R38 R37 K76 ["OnClick"]
      817 CALL                             R35 2 1
      818 SETTABLEKS                       R35 R34 K164 ["CancelButton"]
      820 GETUPVAL                         R35 0
      821 GETTABLEKS                       R35 R35 K20 ["createElement"]
      823 GETUPVAL                         R36 16
      824 DUPTABLE                         R37 K172 [{["LayoutOrder"] = 2, ["Size"], ["Style"] = "RoundPrimary", ["Text"], ["OnClick"]}]
      825 GETIMPORT                        R38 K95 [UDim2.fromOffset]
      827 LOADN                            R39 150
      828 LOADN                            R40 40
      829 CALL                             R38 2 1
      830 SETTABLEKS                       R38 R37 K48 ["Size"]
      832 LOADK                            R40 K109 ["FeedbackDialog"]
      833 LOADK                            R41 K165 ["SubmitButton"]
      834 NAMECALL                         R38 R2 K110 ["getText"]
      836 CALL                             R38 3 1
      837 SETTABLEKS                       R38 R37 K62 ["Text"]
      839 NEWCLOSURE                       R38 P14
      840 CAPTURE                          VAL R8
      841 CAPTURE                          VAL R1
      842 CAPTURE                          UPVAL U7
      843 CAPTURE                          VAL R0
      844 CAPTURE                          UPVAL U25
      845 CAPTURE                          VAL R6
      846 SETTABLEKS                       R38 R37 K76 ["OnClick"]
      848 CALL                             R35 2 1
      849 SETTABLEKS                       R35 R34 K165 ["SubmitButton"]
      851 CALL                             R31 3 1
      852 SETTABLEKS                       R31 R30 K118 ["ButtonPane"]
      854 CALL                             R27 3 1
      855 SETTABLEKS                       R27 R26 K111 ["Frame"]
      857 CALL                             R23 3 1
      858 JUMP                             ; [+1]
      859 LOADNIL                          R23
      860 SETTABLEKS                       R23 R22 K42 ["FeedbackFrom"]
      862 CALL                             R19 3 -1
      863 RETURN                           R19 -1

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
       19 LOADN                            R2 420
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
      110 DUPTABLE                         R15 K21 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Style"] = "CornerBox", ["OnClick"]}]
      111 GETIMPORT                        R16 K24 [Enum.AutomaticSize.Y]
      113 SETTABLEKS                       R16 R15 K15 ["AutomaticSize"]
      115 GETTABLEKS                       R16 R0 K16 ["LayoutOrder"]
      117 SETTABLEKS                       R16 R15 K16 ["LayoutOrder"]
      119 GETIMPORT                        R16 K27 [UDim2.new]
      121 LOADN                            R17 1
      122 LOADN                            R18 0
      123 LOADN                            R19 0
      124 FASTCALL2K                       MATH_MAX R11 K28 ; [+5]
      126 MOVE                             R21 R11
      127 LOADK                            R22 K28 [46]
      128 GETIMPORT                        R20 K31 [math.max]
      130 CALL                             R20 2 1
      131 CALL                             R16 4 1
      132 SETTABLEKS                       R16 R15 K17 ["Size"]
      134 SETTABLEKS                       R10 R15 K20 ["OnClick"]
      136 DUPTABLE                         R16 K34 [{"UIPadding", "Contents"}]
      137 GETUPVAL                         R17 1
      138 GETTABLEKS                       R17 R17 K14 ["createElement"]
      140 LOADK                            R18 K32 ["UIPadding"]
      141 DUPTABLE                         R19 K36 [{"PaddingTop"}]
      142 GETIMPORT                        R20 K38 [UDim.new]
      144 LOADN                            R21 0
      145 LOADN                            R22 3
      146 CALL                             R20 2 1
      147 SETTABLEKS                       R20 R19 K35 ["PaddingTop"]
      149 CALL                             R17 2 1
      150 SETTABLEKS                       R17 R16 K32 ["UIPadding"]
      152 GETUPVAL                         R17 1
      153 GETTABLEKS                       R17 R17 K14 ["createElement"]
      155 GETUPVAL                         R18 13
      156 DUPTABLE                         R19 K41 [{["AnchorPoint"], ["AutomaticSize"], ["Position"], ["Style"] = "CornerBox", ["Size"]}]
      157 GETIMPORT                        R20 K43 [Vector2.new]
      159 LOADK                            R21 K44 [0.5]
      160 LOADK                            R22 K44 [0.5]
      161 CALL                             R20 2 1
      162 SETTABLEKS                       R20 R19 K39 ["AnchorPoint"]
      164 GETIMPORT                        R20 K24 [Enum.AutomaticSize.Y]
      166 SETTABLEKS                       R20 R19 K15 ["AutomaticSize"]
      168 GETIMPORT                        R20 K46 [UDim2.fromScale]
      170 LOADK                            R21 K44 [0.5]
      171 LOADK                            R22 K44 [0.5]
      172 CALL                             R20 2 1
      173 SETTABLEKS                       R20 R19 K40 ["Position"]
      175 GETIMPORT                        R20 K27 [UDim2.new]
      177 LOADN                            R21 1
      178 LOADN                            R22 -2
      179 LOADN                            R23 0
      180 LOADN                            R24 0
      181 CALL                             R20 4 1
      182 SETTABLEKS                       R20 R19 K17 ["Size"]
      184 DUPTABLE                         R20 K48 [{"UIStroke", "Generation"}]
      185 GETUPVAL                         R21 1
      186 GETTABLEKS                       R21 R21 K14 ["createElement"]
      188 LOADK                            R22 K47 ["UIStroke"]
      189 DUPTABLE                         R23 K53 [{["Thickness"] = 1, ["ApplyStrokeMode"], ["Color"]}]
      190 GETIMPORT                        R24 K55 [Enum.ApplyStrokeMode.Border]
      192 SETTABLEKS                       R24 R23 K51 ["ApplyStrokeMode"]
      194 GETUPVAL                         R25 9
      195 GETTABLEKS                       R25 R25 K56 ["STATUS"]
      197 GETTABLEKS                       R25 R25 K57 ["FAILED"]
      199 JUMPIFNOTEQ                      R6 R25 ; [+4]
      201 GETTABLEKS                       R24 R1 K58 ["ErrorStrokeColor"]
      203 JUMP                             ; [+13]
      204 GETTABLEKS                       R25 R2 K11 ["selected"]
      206 GETTABLEKS                       R26 R0 K4 ["Generation"]
      208 GETTABLEKS                       R26 R26 K59 ["uuid"]
      210 JUMPIFNOTEQ                      R25 R26 ; [+4]
      212 GETTABLEKS                       R24 R1 K60 ["SelectedStrokeColor"]
      214 JUMP                             ; [+2]
      215 GETTABLEKS                       R24 R1 K61 ["StrokeColor"]
      217 SETTABLEKS                       R24 R23 K52 ["Color"]
      219 DUPTABLE                         R24 K63 [{"Corner"}]
      220 GETUPVAL                         R25 1
      221 GETTABLEKS                       R25 R25 K14 ["createElement"]
      223 LOADK                            R26 K64 ["UICorner"]
      224 CALL                             R25 1 1
      225 SETTABLEKS                       R25 R24 K62 ["Corner"]
      227 CALL                             R21 3 1
      228 SETTABLEKS                       R21 R20 K47 ["UIStroke"]
      230 GETUPVAL                         R22 9
      231 GETTABLEKS                       R22 R22 K56 ["STATUS"]
      233 GETTABLEKS                       R22 R22 K65 ["PENDING"]
      235 JUMPIFNOTEQ                      R6 R22 ; [+16]
      237 GETUPVAL                         R21 1
      238 GETTABLEKS                       R21 R21 K14 ["createElement"]
      240 GETUPVAL                         R22 14
      241 DUPTABLE                         R23 K68 [{"Generation", "OnCancel", "SetHeight"}]
      242 GETTABLEKS                       R24 R0 K4 ["Generation"]
      244 SETTABLEKS                       R24 R23 K4 ["Generation"]
      246 SETTABLEKS                       R8 R23 K66 ["OnCancel"]
      248 SETTABLEKS                       R12 R23 K67 ["SetHeight"]
      250 CALL                             R21 2 1
      251 JUMP                             ; [+12]
      252 GETUPVAL                         R21 1
      253 GETTABLEKS                       R21 R21 K14 ["createElement"]
      255 GETUPVAL                         R22 15
      256 DUPTABLE                         R23 K69 [{"Generation", "SetHeight"}]
      257 GETTABLEKS                       R24 R0 K4 ["Generation"]
      259 SETTABLEKS                       R24 R23 K4 ["Generation"]
      261 SETTABLEKS                       R12 R23 K67 ["SetHeight"]
      263 CALL                             R21 2 1
      264 SETTABLEKS                       R21 R20 K4 ["Generation"]
      266 CALL                             R17 3 1
      267 SETTABLEKS                       R17 R16 K33 ["Contents"]
      269 CALL                             R13 3 -1
      270 RETURN                           R13 -1

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
