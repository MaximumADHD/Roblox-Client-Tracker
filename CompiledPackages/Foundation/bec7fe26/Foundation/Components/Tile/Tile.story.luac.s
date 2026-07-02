PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["InsertService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button Pressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K11 [{["textStyle"], ["fontStyle"], ["Text"] = "82% 👍 92k 👤", ["TextXAlignment"], ["TextWrapped"] = False, ["TextTruncate"], ["Size"], ["AutomaticSize"]}]
        5 GETTABLEKS                       R4 R0 K12 ["Color"]
        7 GETTABLEKS                       R4 R4 K13 ["Content"]
        9 GETTABLEKS                       R4 R4 K14 ["Default"]
       11 SETTABLEKS                       R4 R3 K1 ["textStyle"]
       13 GETTABLEKS                       R4 R0 K15 ["Typography"]
       15 GETTABLEKS                       R4 R4 K16 ["TitleLarge"]
       17 SETTABLEKS                       R4 R3 K2 ["fontStyle"]
       19 GETIMPORT                        R4 K19 [Enum.TextXAlignment.Left]
       21 SETTABLEKS                       R4 R3 K5 ["TextXAlignment"]
       23 GETIMPORT                        R4 K21 [Enum.TextTruncate.AtEnd]
       25 SETTABLEKS                       R4 R3 K8 ["TextTruncate"]
       27 GETIMPORT                        R4 K24 [UDim2.fromScale]
       29 LOADN                            R5 1
       30 LOADN                            R6 0
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K9 ["Size"]
       34 GETIMPORT                        R4 K26 [Enum.AutomaticSize.Y]
       36 SETTABLEKS                       R4 R3 K10 ["AutomaticSize"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1

PROTO_4:
        0 DUPTABLE                         R1 K3 [{"R", "G", "B"}]
        1 GETTABLEKS                       R2 R0 K0 ["R"]
        3 SETTABLEKS                       R2 R1 K0 ["R"]
        5 GETTABLEKS                       R2 R0 K1 ["G"]
        7 SETTABLEKS                       R2 R1 K1 ["G"]
        9 GETTABLEKS                       R2 R0 K2 ["B"]
       11 SETTABLEKS                       R2 R1 K2 ["B"]
       13 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R1 K3 [{"R", "G", "B"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["spring"]
        4 GETTABLEKS                       R3 R0 K0 ["R"]
        6 GETUPVAL                         R4 1
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K0 ["R"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["spring"]
       13 GETTABLEKS                       R3 R0 K1 ["G"]
       15 GETUPVAL                         R4 1
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K1 ["G"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K4 ["spring"]
       22 GETTABLEKS                       R3 R0 K2 ["B"]
       24 GETUPVAL                         R4 1
       25 CALL                             R2 2 1
       26 SETTABLEKS                       R2 R1 K2 ["B"]
       28 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R7 R0 K2 ["controls"]
        6 GETTABLEKS                       R7 R7 K3 ["numTitleLines"]
        8 ORK                              R6 R7 K1 [0]
        9 GETTABLEKS                       R7 R0 K2 ["controls"]
       11 GETTABLEKS                       R7 R7 K4 ["numSubtitleLines"]
       13 ADD                              R5 R6 R7
       14 ADDK                             R4 R5 K0 [1]
       15 MUL                              R3 R4 R2
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K5 ["createElement"]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K6 ["Root"]
       22 DUPTABLE                         R6 K10 [{"FillDirection", "Size", "isContained"}]
       23 GETTABLEKS                       R7 R0 K2 ["controls"]
       25 GETTABLEKS                       R7 R7 K11 ["fillDirection"]
       27 SETTABLEKS                       R7 R6 K7 ["FillDirection"]
       29 GETTABLEKS                       R8 R0 K2 ["controls"]
       31 GETTABLEKS                       R8 R8 K11 ["fillDirection"]
       33 GETIMPORT                        R9 K14 [Enum.FillDirection.Vertical]
       35 JUMPIFNOTEQ                      R8 R9 ; [+8]
       37 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       39 LOADN                            R8 150
       40 LOADN                            R10 275
       41 ADD                              R9 R10 R3
       42 CALL                             R7 2 1
       43 JUMP                             ; [+6]
       44 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       46 LOADN                            R8 300
       47 LOADN                            R10 150
       48 ADD                              R9 R10 R3
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K8 ["Size"]
       52 GETTABLEKS                       R7 R0 K2 ["controls"]
       54 GETTABLEKS                       R7 R7 K9 ["isContained"]
       56 SETTABLEKS                       R7 R6 K9 ["isContained"]
       58 DUPTABLE                         R7 K20 [{"TileMedia", "TileContent"}]
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R8 R8 K5 ["createElement"]
       62 GETUPVAL                         R9 3
       63 GETTABLEKS                       R9 R9 K21 ["Media"]
       65 DUPTABLE                         R10 K26 [{"id", "type", "shape", "background"}]
       66 GETTABLEKS                       R11 R0 K2 ["controls"]
       68 GETTABLEKS                       R11 R11 K27 ["itemId"]
       70 SETTABLEKS                       R11 R10 K22 ["id"]
       72 GETUPVAL                         R11 4
       73 GETTABLEKS                       R11 R11 K28 ["Asset"]
       75 SETTABLEKS                       R11 R10 K23 ["type"]
       77 GETTABLEKS                       R11 R0 K2 ["controls"]
       79 GETTABLEKS                       R11 R11 K24 ["shape"]
       81 SETTABLEKS                       R11 R10 K24 ["shape"]
       83 DUPTABLE                         R11 K30 [{"style"}]
       84 GETTABLEKS                       R12 R1 K31 ["Color"]
       86 GETTABLEKS                       R12 R12 K32 ["Shift"]
       88 GETTABLEKS                       R12 R12 K33 ["Shift_200"]
       90 SETTABLEKS                       R12 R11 K29 ["style"]
       92 SETTABLEKS                       R11 R10 K25 ["background"]
       94 CALL                             R8 2 1
       95 SETTABLEKS                       R8 R7 K18 ["TileMedia"]
       97 GETUPVAL                         R8 2
       98 GETTABLEKS                       R8 R8 K5 ["createElement"]
      100 GETUPVAL                         R9 3
      101 GETTABLEKS                       R9 R9 K34 ["Content"]
      103 NEWTABLE                         R10 0 0
      105 DUPTABLE                         R11 K37 [{"TileHeader", "TileFooter"}]
      106 GETUPVAL                         R12 2
      107 GETTABLEKS                       R12 R12 K5 ["createElement"]
      109 GETUPVAL                         R13 3
      110 GETTABLEKS                       R13 R13 K38 ["Header"]
      112 DUPTABLE                         R14 K41 [{"title", "subtitle"}]
      113 DUPTABLE                         R15 K46 [{"text", "isLoading", "fontStyle", "numLines"}]
      114 GETTABLEKS                       R16 R0 K2 ["controls"]
      116 GETTABLEKS                       R16 R16 K39 ["title"]
      118 SETTABLEKS                       R16 R15 K42 ["text"]
      120 GETTABLEKS                       R17 R0 K2 ["controls"]
      122 GETTABLEKS                       R17 R17 K39 ["title"]
      124 JUMPIFEQKNIL                     R17 ; [+2]
      126 LOADB                            R16 0 +1
      127 LOADB                            R16 1
      128 SETTABLEKS                       R16 R15 K43 ["isLoading"]
      130 GETTABLEKS                       R16 R1 K47 ["Typography"]
      132 GETTABLEKS                       R16 R16 K48 ["HeadingSmall"]
      134 SETTABLEKS                       R16 R15 K44 ["fontStyle"]
      136 GETTABLEKS                       R16 R0 K2 ["controls"]
      138 GETTABLEKS                       R16 R16 K3 ["numTitleLines"]
      140 SETTABLEKS                       R16 R15 K45 ["numLines"]
      142 SETTABLEKS                       R15 R14 K39 ["title"]
      144 DUPTABLE                         R15 K50 [{"text", "isLoading", "fontStyle", "colorStyle", "numLines"}]
      145 GETTABLEKS                       R16 R0 K2 ["controls"]
      147 GETTABLEKS                       R16 R16 K40 ["subtitle"]
      149 SETTABLEKS                       R16 R15 K42 ["text"]
      151 GETTABLEKS                       R17 R0 K2 ["controls"]
      153 GETTABLEKS                       R17 R17 K40 ["subtitle"]
      155 JUMPIFEQKNIL                     R17 ; [+2]
      157 LOADB                            R16 0 +1
      158 LOADB                            R16 1
      159 SETTABLEKS                       R16 R15 K43 ["isLoading"]
      161 GETTABLEKS                       R16 R1 K47 ["Typography"]
      163 GETTABLEKS                       R16 R16 K51 ["BodyLarge"]
      165 SETTABLEKS                       R16 R15 K44 ["fontStyle"]
      167 GETTABLEKS                       R16 R1 K31 ["Color"]
      169 GETTABLEKS                       R16 R16 K34 ["Content"]
      171 GETTABLEKS                       R16 R16 K52 ["Muted"]
      173 SETTABLEKS                       R16 R15 K49 ["colorStyle"]
      175 GETTABLEKS                       R16 R0 K2 ["controls"]
      177 GETTABLEKS                       R16 R16 K4 ["numSubtitleLines"]
      179 SETTABLEKS                       R16 R15 K45 ["numLines"]
      181 SETTABLEKS                       R15 R14 K40 ["subtitle"]
      183 CALL                             R12 2 1
      184 SETTABLEKS                       R12 R11 K35 ["TileHeader"]
      186 GETUPVAL                         R12 2
      187 GETTABLEKS                       R12 R12 K5 ["createElement"]
      189 GETUPVAL                         R13 3
      190 GETTABLEKS                       R13 R13 K53 ["Footer"]
      192 NEWTABLE                         R14 0 0
      194 NEWTABLE                         R15 0 1
      196 GETUPVAL                         R16 5
      197 MOVE                             R17 R1
      198 CALL                             R16 1 -1
      199 SETLIST                          R15 R16 -1 [1]
      201 CALL                             R12 3 1
      202 SETTABLEKS                       R12 R11 K36 ["TileFooter"]
      204 CALL                             R8 3 1
      205 SETTABLEKS                       R8 R7 K19 ["TileContent"]
      207 CALL                             R4 3 -1
      208 RETURN                           R4 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [wait]
        2 LOADN                            R1 2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R0 R0 K2 ["GetProductInfo"]
        8 CALL                             R0 2 1
        9 GETTABLEKS                       R1 R0 K3 ["IsPublicDomain"]
       11 JUMPIFNOT                        R1 ; [+7]
       12 LOADN                            R1 0
       13 SETTABLEKS                       R1 R0 K4 ["PriceInRobux"]
       15 LOADK                            R1 K5 ["Free"]
       16 SETTABLEKS                       R1 R0 K6 ["PriceText"]
       18 JUMP                             ; [+22]
       19 GETTABLEKS                       R3 R0 K4 ["PriceInRobux"]
       21 JUMPIFNOTEQKNIL                  R3 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 FASTCALL2K                       ASSERT R2 K7 ; [+4]
       27 LOADK                            R3 K7 ["Item price will not be nil"]
       28 GETIMPORT                        R1 K9 [assert]
       30 CALL                             R1 2 0
       31 LOADK                            R2 K10 [""]
       32 GETTABLEKS                       R4 R0 K4 ["PriceInRobux"]
       34 FASTCALL1                        TOSTRING R4 ; [+2]
       35 GETIMPORT                        R3 K12 [tostring]
       37 CALL                             R3 1 1
       38 CONCAT                           R1 R2 R3
       39 SETTABLEKS                       R1 R0 K6 ["PriceText"]
       41 GETUPVAL                         R1 2
       42 MOVE                             R2 R0
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K1 [spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 LOADK                            R3 K2 ["%*"]
       13 GETUPVAL                         R5 2
       14 NAMECALL                         R3 R3 K3 ["format"]
       16 CALL                             R3 2 1
       17 MOVE                             R2 R3
       18 NAMECALL                         R0 R0 K4 ["FindFirstChild"]
       20 CALL                             R0 2 1
       21 JUMPIF                           R0 ; [+9]
       22 GETUPVAL                         R1 4
       23 JUMPIFNOT                        R1 ; [+6]
       24 GETUPVAL                         R0 4
       25 GETUPVAL                         R2 2
       26 NAMECALL                         R0 R0 K5 ["LoadAsset"]
       28 CALL                             R0 2 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R0
       31 JUMPIFNOT                        R0 ; [+13]
       32 LOADK                            R4 K6 ["Model"]
       33 NAMECALL                         R2 R0 K7 ["IsA"]
       35 CALL                             R2 2 1
       36 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       38 LOADK                            R3 K8 ["Fetched item is a Model"]
       39 GETIMPORT                        R1 K10 [assert]
       41 CALL                             R1 2 0
       42 GETUPVAL                         R1 5
       43 MOVE                             R2 R0
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["component_assets/itemBG_%*"]
        3 GETTABLEKS                       R6 R1 K1 ["Config"]
        5 GETTABLEKS                       R6 R6 K2 ["ColorMode"]
        7 GETTABLEKS                       R6 R6 K3 ["Name"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K4 ["Dark"]
       12 JUMPIFNOTEQ                      R6 R7 ; [+3]
       14 LOADK                            R5 K5 ["dark"]
       15 JUMP                             ; [+1]
       16 LOADK                            R5 K6 ["light"]
       17 NAMECALL                         R3 R3 K7 ["format"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K8 ["useState"]
       24 NEWTABLE                         R4 0 0
       26 CALL                             R3 1 2
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K8 ["useState"]
       30 LOADNIL                          R6
       31 CALL                             R5 1 2
       32 GETTABLEKS                       R7 R0 K9 ["controls"]
       34 GETTABLEKS                       R7 R7 K10 ["itemId"]
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R8 R8 K11 ["useEffect"]
       39 NEWCLOSURE                       R9 P0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R7
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R6
       46 NEWTABLE                         R10 0 1
       48 MOVE                             R11 R7
       49 SETLIST                          R10 R11 1 [1]
       51 CALL                             R8 2 0
       52 GETUPVAL                         R8 6
       53 CALL                             R8 0 1
       54 LOADN                            R10 3
       55 MUL                              R9 R10 R8
       56 GETUPVAL                         R10 2
       57 GETTABLEKS                       R10 R10 K12 ["createElement"]
       59 GETUPVAL                         R11 7
       60 GETTABLEKS                       R11 R11 K13 ["Root"]
       62 DUPTABLE                         R12 K18 [{["isContained"] = True, ["FillDirection"], ["Size"]}]
       63 GETIMPORT                        R13 K21 [Enum.FillDirection.Horizontal]
       65 SETTABLEKS                       R13 R12 K16 ["FillDirection"]
       67 GETIMPORT                        R14 K24 [UDim2.fromOffset]
       69 LOADN                            R15 300
       70 LOADN                            R17 150
       71 ADD                              R16 R17 R9
       72 CALL                             R14 2 1
       73 GETIMPORT                        R15 K24 [UDim2.fromOffset]
       75 LOADN                            R16 2
       76 LOADN                            R17 2
       77 CALL                             R15 2 1
       78 SUB                              R13 R14 R15
       79 SETTABLEKS                       R13 R12 K17 ["Size"]
       81 DUPTABLE                         R13 K27 [{"TileMedia", "TileContent"}]
       82 GETUPVAL                         R14 2
       83 GETTABLEKS                       R14 R14 K12 ["createElement"]
       85 GETUPVAL                         R15 7
       86 GETTABLEKS                       R15 R15 K28 ["Media"]
       88 DUPTABLE                         R16 K31 [{"shape", "background"}]
       89 GETUPVAL                         R17 8
       90 GETTABLEKS                       R17 R17 K32 ["Square"]
       92 SETTABLEKS                       R17 R16 K29 ["shape"]
       94 DUPTABLE                         R17 K34 [{"image"}]
       95 SETTABLEKS                       R2 R17 K33 ["image"]
       97 SETTABLEKS                       R17 R16 K30 ["background"]
       99 NEWTABLE                         R17 0 1
      101 JUMPIFNOT                        R5 ; [+9]
      102 GETUPVAL                         R18 2
      103 GETTABLEKS                       R18 R18 K12 ["createElement"]
      105 GETUPVAL                         R19 9
      106 DUPTABLE                         R20 K38 [{["model"], ["rotationSpeed"] = 0.01}]
      107 SETTABLEKS                       R5 R20 K35 ["model"]
      109 CALL                             R18 2 1
      110 JUMP                             ; [+1]
      111 LOADNIL                          R18
      112 SETLIST                          R17 R18 1 [1]
      114 CALL                             R14 3 1
      115 SETTABLEKS                       R14 R13 K25 ["TileMedia"]
      117 GETUPVAL                         R14 2
      118 GETTABLEKS                       R14 R14 K12 ["createElement"]
      120 GETUPVAL                         R15 7
      121 GETTABLEKS                       R15 R15 K39 ["Content"]
      123 NEWTABLE                         R16 0 0
      125 DUPTABLE                         R17 K41 [{"TileHeader"}]
      126 GETUPVAL                         R18 2
      127 GETTABLEKS                       R18 R18 K12 ["createElement"]
      129 GETUPVAL                         R19 7
      130 GETTABLEKS                       R19 R19 K42 ["Header"]
      132 DUPTABLE                         R20 K45 [{"title", "subtitle"}]
      133 DUPTABLE                         R21 K51 [{["text"], ["isLoading"], ["fontStyle"], ["numLines"] = 2}]
      134 GETTABLEKS                       R22 R3 K3 ["Name"]
      136 SETTABLEKS                       R22 R21 K46 ["text"]
      138 GETTABLEKS                       R23 R3 K3 ["Name"]
      140 JUMPIFEQKNIL                     R23 ; [+2]
      142 LOADB                            R22 0 +1
      143 LOADB                            R22 1
      144 SETTABLEKS                       R22 R21 K47 ["isLoading"]
      146 GETTABLEKS                       R22 R1 K52 ["Typography"]
      148 GETTABLEKS                       R22 R22 K53 ["HeadingSmall"]
      150 SETTABLEKS                       R22 R21 K48 ["fontStyle"]
      152 SETTABLEKS                       R21 R20 K43 ["title"]
      154 DUPTABLE                         R21 K56 [{["text"], ["isLoading"], ["fontStyle"], ["colorStyle"], ["numLines"] = 1}]
      155 GETTABLEKS                       R22 R3 K57 ["PriceText"]
      157 SETTABLEKS                       R22 R21 K46 ["text"]
      159 GETTABLEKS                       R23 R3 K57 ["PriceText"]
      161 JUMPIFEQKNIL                     R23 ; [+2]
      163 LOADB                            R22 0 +1
      164 LOADB                            R22 1
      165 SETTABLEKS                       R22 R21 K47 ["isLoading"]
      167 GETTABLEKS                       R22 R1 K52 ["Typography"]
      169 GETTABLEKS                       R22 R22 K58 ["BodyLarge"]
      171 SETTABLEKS                       R22 R21 K48 ["fontStyle"]
      173 GETTABLEKS                       R22 R1 K59 ["Color"]
      175 GETTABLEKS                       R22 R22 K39 ["Content"]
      177 GETTABLEKS                       R22 R22 K60 ["Muted"]
      179 SETTABLEKS                       R22 R21 K54 ["colorStyle"]
      181 SETTABLEKS                       R21 R20 K44 ["subtitle"]
      183 CALL                             R18 2 1
      184 SETTABLEKS                       R18 R17 K40 ["TileHeader"]
      186 CALL                             R14 3 1
      187 SETTABLEKS                       R14 R13 K26 ["TileContent"]
      189 CALL                             R10 3 -1
      190 RETURN                           R10 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [wait]
        2 LOADN                            R1 2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R0 R0 K2 ["GetProductInfo"]
        8 CALL                             R0 2 1
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K1 [spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["Size"]
        5 GETTABLEKS                       R0 R0 K1 ["Size_200"]
        7 JUMP                             ; [+1]
        8 LOADN                            R0 0
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K2 ["ease"]
       13 MOVE                             R3 R0
       14 DUPTABLE                         R4 K6 [{["duration"] = 0.3, ["easingStyle"]}]
       15 NEWTABLE                         R5 0 4
       17 LOADK                            R6 K7 [0.2]
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 LOADN                            R9 1
       21 SETLIST                          R5 R6 4 [1]
       23 SETTABLEKS                       R5 R4 K5 ["easingStyle"]
       25 CALL                             R2 2 -1
       26 CALL                             R1 -1 0
       27 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["play pressed!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K2 [UDim2.fromOffset]
        3 MULK                             R4 R0 K3 [2]
        4 MULK                             R6 R0 K3 [2]
        5 GETUPVAL                         R7 1
        6 ADD                              R5 R6 R7
        7 CALL                             R3 2 1
        8 ADD                              R1 R2 R3
        9 RETURN                           R1 1

PROTO_17:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["play pressed!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["play pressed!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K0 ["useState"]
       10 LOADB                            R5 0
       11 CALL                             R4 1 2
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K1 ["useCallback"]
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R8 0 1
       20 MOVE                             R9 R3
       21 SETLIST                          R8 R9 1 [1]
       23 CALL                             R6 2 1
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       27 NEWCLOSURE                       R8 P1
       28 CAPTURE                          VAL R5
       29 CAPTURE                          UPVAL U2
       30 NEWTABLE                         R9 0 1
       32 MOVE                             R10 R5
       33 SETLIST                          R9 R10 1 [1]
       35 CALL                             R7 2 1
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K0 ["useState"]
       39 NEWTABLE                         R9 0 0
       41 CALL                             R8 1 2
       42 GETTABLEKS                       R10 R0 K2 ["controls"]
       44 GETTABLEKS                       R10 R10 K3 ["placeId"]
       46 GETUPVAL                         R12 3
       47 GETTABLE                         R11 R12 R10
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R12 R12 K4 ["useEffect"]
       51 NEWCLOSURE                       R13 P2
       52 CAPTURE                          VAL R9
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R10
       55 NEWTABLE                         R14 0 1
       57 MOVE                             R15 R10
       58 SETLIST                          R14 R15 1 [1]
       60 CALL                             R12 2 0
       61 GETUPVAL                         R12 5
       62 GETTABLEKS                       R12 R12 K5 ["useAnimatedBinding"]
       64 LOADN                            R13 0
       65 CALL                             R12 1 2
       66 GETUPVAL                         R14 1
       67 GETTABLEKS                       R14 R14 K4 ["useEffect"]
       69 NEWCLOSURE                       R15 P3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R13
       73 CAPTURE                          UPVAL U5
       74 NEWTABLE                         R16 0 1
       76 MOVE                             R17 R4
       77 SETLIST                          R16 R17 1 [1]
       79 CALL                             R14 2 0
       80 GETUPVAL                         R14 6
       81 CALL                             R14 0 1
       82 LOADN                            R16 4
       83 MUL                              R15 R16 R14
       84 LOADN                            R17 3
       85 MUL                              R16 R17 R14
       86 GETUPVAL                         R17 1
       87 GETTABLEKS                       R17 R17 K6 ["createElement"]
       89 GETUPVAL                         R18 7
       90 DUPTABLE                         R19 K9 [{["tag"] = "auto-xy gap-large padding-small row"}]
       91 DUPTABLE                         R20 K13 [{"Tile", "WideTileWrapper", "WideTileWithPadding"}]
       92 GETUPVAL                         R21 1
       93 GETTABLEKS                       R21 R21 K6 ["createElement"]
       95 GETUPVAL                         R22 8
       96 GETTABLEKS                       R22 R22 K14 ["Root"]
       98 DUPTABLE                         R23 K22 [{["isContained"] = True, ["onStateChanged"], ["FillDirection"], ["Size"], ["LayoutOrder"] = 1}]
       99 SETTABLEKS                       R6 R23 K17 ["onStateChanged"]
      101 GETIMPORT                        R24 K25 [Enum.FillDirection.Vertical]
      103 SETTABLEKS                       R24 R23 K18 ["FillDirection"]
      105 GETUPVAL                         R26 9
      106 GETIMPORT                        R27 K28 [UDim2.fromOffset]
      108 LOADN                            R28 0
      109 MOVE                             R29 R16
      110 CALL                             R27 2 1
      111 ADD                              R25 R26 R27
      112 GETIMPORT                        R26 K28 [UDim2.fromOffset]
      114 LOADN                            R27 2
      115 LOADN                            R28 2
      116 CALL                             R26 2 1
      117 SUB                              R24 R25 R26
      118 SETTABLEKS                       R24 R23 K19 ["Size"]
      120 DUPTABLE                         R24 K31 [{"TileMedia", "TileContent"}]
      121 GETUPVAL                         R25 1
      122 GETTABLEKS                       R25 R25 K6 ["createElement"]
      124 GETUPVAL                         R26 8
      125 GETTABLEKS                       R26 R26 K32 ["Media"]
      127 DUPTABLE                         R27 K36 [{"id", "type", "shape"}]
      128 JUMPIFNOT                        R2 ; [+2]
      129 MOVE                             R28 R10
      130 JUMP                             ; [+1]
      131 MOVE                             R28 R11
      132 SETTABLEKS                       R28 R27 K33 ["id"]
      134 JUMPIFNOT                        R2 ; [+4]
      135 GETUPVAL                         R28 10
      136 GETTABLEKS                       R28 R28 K37 ["Asset"]
      138 JUMP                             ; [+3]
      139 GETUPVAL                         R28 10
      140 GETTABLEKS                       R28 R28 K38 ["GameIcon"]
      142 SETTABLEKS                       R28 R27 K34 ["type"]
      144 JUMPIFNOT                        R2 ; [+4]
      145 GETUPVAL                         R28 11
      146 GETTABLEKS                       R28 R28 K39 ["Landscape"]
      148 JUMP                             ; [+3]
      149 GETUPVAL                         R28 11
      150 GETTABLEKS                       R28 R28 K40 ["Square"]
      152 SETTABLEKS                       R28 R27 K35 ["shape"]
      154 CALL                             R25 2 1
      155 SETTABLEKS                       R25 R24 K29 ["TileMedia"]
      157 GETUPVAL                         R25 1
      158 GETTABLEKS                       R25 R25 K6 ["createElement"]
      160 GETUPVAL                         R26 8
      161 GETTABLEKS                       R26 R26 K41 ["Content"]
      163 NEWTABLE                         R27 0 0
      165 DUPTABLE                         R28 K45 [{"TileHeader", "TileFooter", "TileActions"}]
      166 GETUPVAL                         R29 1
      167 GETTABLEKS                       R29 R29 K6 ["createElement"]
      169 GETUPVAL                         R30 8
      170 GETTABLEKS                       R30 R30 K46 ["Header"]
      172 DUPTABLE                         R31 K48 [{"title"}]
      173 DUPTABLE                         R32 K54 [{["text"], ["isLoading"], ["fontStyle"], ["numLines"] = 2}]
      174 GETTABLEKS                       R33 R8 K55 ["Name"]
      176 SETTABLEKS                       R33 R32 K49 ["text"]
      178 GETTABLEKS                       R34 R8 K55 ["Name"]
      180 JUMPIFEQKNIL                     R34 ; [+2]
      182 LOADB                            R33 0 +1
      183 LOADB                            R33 1
      184 SETTABLEKS                       R33 R32 K50 ["isLoading"]
      186 GETTABLEKS                       R33 R1 K56 ["Typography"]
      188 GETTABLEKS                       R33 R33 K57 ["HeadingSmall"]
      190 SETTABLEKS                       R33 R32 K51 ["fontStyle"]
      192 SETTABLEKS                       R32 R31 K47 ["title"]
      194 CALL                             R29 2 1
      195 SETTABLEKS                       R29 R28 K42 ["TileHeader"]
      197 GETUPVAL                         R29 1
      198 GETTABLEKS                       R29 R29 K6 ["createElement"]
      200 GETUPVAL                         R30 8
      201 GETTABLEKS                       R30 R30 K58 ["Footer"]
      203 NEWTABLE                         R31 0 0
      205 NEWTABLE                         R32 0 1
      207 GETUPVAL                         R33 12
      208 MOVE                             R34 R1
      209 CALL                             R33 1 -1
      210 SETLIST                          R32 R33 -1 [1]
      212 CALL                             R29 3 1
      213 SETTABLEKS                       R29 R28 K43 ["TileFooter"]
      215 GETUPVAL                         R29 1
      216 GETTABLEKS                       R29 R29 K6 ["createElement"]
      218 GETUPVAL                         R30 8
      219 GETTABLEKS                       R30 R30 K59 ["Actions"]
      221 DUPTABLE                         R31 K61 [{"Visible"}]
      222 SETTABLEKS                       R2 R31 K60 ["Visible"]
      224 DUPTABLE                         R32 K63 [{"Button"}]
      225 GETUPVAL                         R33 1
      226 GETTABLEKS                       R33 R33 K6 ["createElement"]
      228 GETUPVAL                         R34 13
      229 DUPTABLE                         R35 K69 [{["text"] = "Play", ["size"], ["variant"], ["fillBehavior"], ["onActivated"]}]
      230 GETUPVAL                         R36 14
      231 GETTABLEKS                       R36 R36 K70 ["Medium"]
      233 SETTABLEKS                       R36 R35 K65 ["size"]
      235 GETUPVAL                         R36 15
      236 GETTABLEKS                       R36 R36 K71 ["Emphasis"]
      238 SETTABLEKS                       R36 R35 K66 ["variant"]
      240 GETUPVAL                         R36 16
      241 GETTABLEKS                       R36 R36 K72 ["Fill"]
      243 SETTABLEKS                       R36 R35 K67 ["fillBehavior"]
      245 DUPCLOSURE                       R36 K73 [PROTO_15]
      246 SETTABLEKS                       R36 R35 K68 ["onActivated"]
      248 CALL                             R33 2 1
      249 SETTABLEKS                       R33 R32 K62 ["Button"]
      251 CALL                             R29 3 1
      252 SETTABLEKS                       R29 R28 K44 ["TileActions"]
      254 CALL                             R25 3 1
      255 SETTABLEKS                       R25 R24 K30 ["TileContent"]
      257 CALL                             R21 3 1
      258 SETTABLEKS                       R21 R20 K10 ["Tile"]
      260 GETUPVAL                         R21 1
      261 GETTABLEKS                       R21 R21 K6 ["createElement"]
      263 GETUPVAL                         R22 7
      264 DUPTABLE                         R23 K74 [{["Size"], ["LayoutOrder"] = 2}]
      265 GETUPVAL                         R24 17
      266 SETTABLEKS                       R24 R23 K19 ["Size"]
      268 DUPTABLE                         R24 K76 [{"WideTile"}]
      269 GETUPVAL                         R25 1
      270 GETTABLEKS                       R25 R25 K6 ["createElement"]
      272 GETUPVAL                         R26 8
      273 GETTABLEKS                       R26 R26 K14 ["Root"]
      275 DUPTABLE                         R27 K80 [{["onStateChanged"], ["isContained"] = False, ["FillDirection"], ["Size"], ["AnchorPoint"], ["Position"]}]
      276 SETTABLEKS                       R7 R27 K17 ["onStateChanged"]
      278 GETIMPORT                        R28 K25 [Enum.FillDirection.Vertical]
      280 SETTABLEKS                       R28 R27 K18 ["FillDirection"]
      282 NEWCLOSURE                       R30 P5
      283 CAPTURE                          UPVAL U17
      284 CAPTURE                          VAL R15
      285 NAMECALL                         R28 R12 K81 ["map"]
      287 CALL                             R28 2 1
      288 SETTABLEKS                       R28 R27 K19 ["Size"]
      290 GETIMPORT                        R28 K84 [Vector2.new]
      292 LOADK                            R29 K85 [0.5]
      293 LOADK                            R30 K85 [0.5]
      294 CALL                             R28 2 1
      295 SETTABLEKS                       R28 R27 K78 ["AnchorPoint"]
      297 GETIMPORT                        R28 K87 [UDim2.fromScale]
      299 LOADK                            R29 K85 [0.5]
      300 LOADK                            R30 K85 [0.5]
      301 CALL                             R28 2 1
      302 SETTABLEKS                       R28 R27 K79 ["Position"]
      304 DUPTABLE                         R28 K31 [{"TileMedia", "TileContent"}]
      305 GETUPVAL                         R29 1
      306 GETTABLEKS                       R29 R29 K6 ["createElement"]
      308 GETUPVAL                         R30 8
      309 GETTABLEKS                       R30 R30 K32 ["Media"]
      311 DUPTABLE                         R31 K36 [{"id", "type", "shape"}]
      312 SETTABLEKS                       R11 R31 K33 ["id"]
      314 GETUPVAL                         R32 10
      315 GETTABLEKS                       R32 R32 K38 ["GameIcon"]
      317 SETTABLEKS                       R32 R31 K34 ["type"]
      319 GETUPVAL                         R32 11
      320 GETTABLEKS                       R32 R32 K39 ["Landscape"]
      322 SETTABLEKS                       R32 R31 K35 ["shape"]
      324 CALL                             R29 2 1
      325 SETTABLEKS                       R29 R28 K29 ["TileMedia"]
      327 GETUPVAL                         R29 1
      328 GETTABLEKS                       R29 R29 K6 ["createElement"]
      330 GETUPVAL                         R30 8
      331 GETTABLEKS                       R30 R30 K41 ["Content"]
      333 NEWTABLE                         R31 0 0
      335 DUPTABLE                         R32 K88 [{"TileHeader", "TileActions"}]
      336 GETUPVAL                         R33 1
      337 GETTABLEKS                       R33 R33 K6 ["createElement"]
      339 GETUPVAL                         R34 8
      340 GETTABLEKS                       R34 R34 K46 ["Header"]
      342 DUPTABLE                         R35 K91 [{["title"], ["subtitle"] = "82% 👍 92k 👤"}]
      343 DUPTABLE                         R36 K54 [{["text"], ["isLoading"], ["fontStyle"], ["numLines"] = 2}]
      344 GETTABLEKS                       R37 R8 K55 ["Name"]
      346 SETTABLEKS                       R37 R36 K49 ["text"]
      348 GETTABLEKS                       R38 R8 K55 ["Name"]
      350 JUMPIFEQKNIL                     R38 ; [+2]
      352 LOADB                            R37 0 +1
      353 LOADB                            R37 1
      354 SETTABLEKS                       R37 R36 K50 ["isLoading"]
      356 GETTABLEKS                       R37 R1 K56 ["Typography"]
      358 GETTABLEKS                       R37 R37 K92 ["TitleLarge"]
      360 SETTABLEKS                       R37 R36 K51 ["fontStyle"]
      362 SETTABLEKS                       R36 R35 K47 ["title"]
      364 CALL                             R33 2 1
      365 SETTABLEKS                       R33 R32 K42 ["TileHeader"]
      367 GETUPVAL                         R33 1
      368 GETTABLEKS                       R33 R33 K6 ["createElement"]
      370 GETUPVAL                         R34 8
      371 GETTABLEKS                       R34 R34 K59 ["Actions"]
      373 DUPTABLE                         R35 K61 [{"Visible"}]
      374 SETTABLEKS                       R4 R35 K60 ["Visible"]
      376 DUPTABLE                         R36 K63 [{"Button"}]
      377 GETUPVAL                         R37 1
      378 GETTABLEKS                       R37 R37 K6 ["createElement"]
      380 GETUPVAL                         R38 13
      381 DUPTABLE                         R39 K69 [{["text"] = "Play", ["size"], ["variant"], ["fillBehavior"], ["onActivated"]}]
      382 GETUPVAL                         R40 14
      383 GETTABLEKS                       R40 R40 K70 ["Medium"]
      385 SETTABLEKS                       R40 R39 K65 ["size"]
      387 GETUPVAL                         R40 15
      388 GETTABLEKS                       R40 R40 K71 ["Emphasis"]
      390 SETTABLEKS                       R40 R39 K66 ["variant"]
      392 GETUPVAL                         R40 16
      393 GETTABLEKS                       R40 R40 K72 ["Fill"]
      395 SETTABLEKS                       R40 R39 K67 ["fillBehavior"]
      397 DUPCLOSURE                       R40 K93 [PROTO_17]
      398 SETTABLEKS                       R40 R39 K68 ["onActivated"]
      400 CALL                             R37 2 1
      401 SETTABLEKS                       R37 R36 K62 ["Button"]
      403 CALL                             R33 3 1
      404 SETTABLEKS                       R33 R32 K44 ["TileActions"]
      406 CALL                             R29 3 1
      407 SETTABLEKS                       R29 R28 K30 ["TileContent"]
      409 CALL                             R25 3 1
      410 SETTABLEKS                       R25 R24 K75 ["WideTile"]
      412 CALL                             R21 3 1
      413 SETTABLEKS                       R21 R20 K11 ["WideTileWrapper"]
      415 GETUPVAL                         R21 1
      416 GETTABLEKS                       R21 R21 K6 ["createElement"]
      418 GETUPVAL                         R22 7
      419 DUPTABLE                         R23 K95 [{["Size"], ["LayoutOrder"] = 3}]
      420 GETUPVAL                         R24 17
      421 SETTABLEKS                       R24 R23 K19 ["Size"]
      423 DUPTABLE                         R24 K76 [{"WideTile"}]
      424 GETUPVAL                         R25 1
      425 GETTABLEKS                       R25 R25 K6 ["createElement"]
      427 GETUPVAL                         R26 8
      428 GETTABLEKS                       R26 R26 K14 ["Root"]
      430 DUPTABLE                         R27 K96 [{["isContained"] = True, ["FillDirection"], ["Size"], ["AnchorPoint"], ["Position"]}]
      431 GETIMPORT                        R28 K25 [Enum.FillDirection.Vertical]
      433 SETTABLEKS                       R28 R27 K18 ["FillDirection"]
      435 GETUPVAL                         R29 17
      436 GETIMPORT                        R30 K28 [UDim2.fromOffset]
      438 LOADN                            R31 0
      439 MOVE                             R32 R15
      440 CALL                             R30 2 1
      441 ADD                              R28 R29 R30
      442 SETTABLEKS                       R28 R27 K19 ["Size"]
      444 GETIMPORT                        R28 K84 [Vector2.new]
      446 LOADK                            R29 K85 [0.5]
      447 LOADK                            R30 K85 [0.5]
      448 CALL                             R28 2 1
      449 SETTABLEKS                       R28 R27 K78 ["AnchorPoint"]
      451 GETIMPORT                        R28 K87 [UDim2.fromScale]
      453 LOADK                            R29 K85 [0.5]
      454 LOADK                            R30 K85 [0.5]
      455 CALL                             R28 2 1
      456 SETTABLEKS                       R28 R27 K79 ["Position"]
      458 DUPTABLE                         R28 K31 [{"TileMedia", "TileContent"}]
      459 GETUPVAL                         R29 1
      460 GETTABLEKS                       R29 R29 K6 ["createElement"]
      462 GETUPVAL                         R30 8
      463 GETTABLEKS                       R30 R30 K32 ["Media"]
      465 DUPTABLE                         R31 K36 [{"id", "type", "shape"}]
      466 SETTABLEKS                       R11 R31 K33 ["id"]
      468 GETUPVAL                         R32 10
      469 GETTABLEKS                       R32 R32 K38 ["GameIcon"]
      471 SETTABLEKS                       R32 R31 K34 ["type"]
      473 GETUPVAL                         R32 11
      474 GETTABLEKS                       R32 R32 K39 ["Landscape"]
      476 SETTABLEKS                       R32 R31 K35 ["shape"]
      478 CALL                             R29 2 1
      479 SETTABLEKS                       R29 R28 K29 ["TileMedia"]
      481 GETUPVAL                         R29 1
      482 GETTABLEKS                       R29 R29 K6 ["createElement"]
      484 GETUPVAL                         R30 8
      485 GETTABLEKS                       R30 R30 K41 ["Content"]
      487 DUPTABLE                         R31 K98 [{"spacing"}]
      488 GETTABLEKS                       R32 R1 K99 ["Gap"]
      490 GETTABLEKS                       R32 R32 K100 ["Small"]
      492 SETTABLEKS                       R32 R31 K97 ["spacing"]
      494 DUPTABLE                         R32 K88 [{"TileHeader", "TileActions"}]
      495 GETUPVAL                         R33 1
      496 GETTABLEKS                       R33 R33 K6 ["createElement"]
      498 GETUPVAL                         R34 8
      499 GETTABLEKS                       R34 R34 K46 ["Header"]
      501 DUPTABLE                         R35 K91 [{["title"], ["subtitle"] = "82% 👍 92k 👤"}]
      502 DUPTABLE                         R36 K54 [{["text"], ["isLoading"], ["fontStyle"], ["numLines"] = 2}]
      503 GETTABLEKS                       R37 R8 K55 ["Name"]
      505 SETTABLEKS                       R37 R36 K49 ["text"]
      507 GETTABLEKS                       R38 R8 K55 ["Name"]
      509 JUMPIFEQKNIL                     R38 ; [+2]
      511 LOADB                            R37 0 +1
      512 LOADB                            R37 1
      513 SETTABLEKS                       R37 R36 K50 ["isLoading"]
      515 GETTABLEKS                       R37 R1 K56 ["Typography"]
      517 GETTABLEKS                       R37 R37 K92 ["TitleLarge"]
      519 SETTABLEKS                       R37 R36 K51 ["fontStyle"]
      521 SETTABLEKS                       R36 R35 K47 ["title"]
      523 CALL                             R33 2 1
      524 SETTABLEKS                       R33 R32 K42 ["TileHeader"]
      526 GETUPVAL                         R33 1
      527 GETTABLEKS                       R33 R33 K6 ["createElement"]
      529 GETUPVAL                         R34 8
      530 GETTABLEKS                       R34 R34 K59 ["Actions"]
      532 NEWTABLE                         R35 0 0
      534 DUPTABLE                         R36 K63 [{"Button"}]
      535 GETUPVAL                         R37 1
      536 GETTABLEKS                       R37 R37 K6 ["createElement"]
      538 GETUPVAL                         R38 13
      539 DUPTABLE                         R39 K69 [{["text"] = "Play", ["size"], ["variant"], ["fillBehavior"], ["onActivated"]}]
      540 GETUPVAL                         R40 14
      541 GETTABLEKS                       R40 R40 K70 ["Medium"]
      543 SETTABLEKS                       R40 R39 K65 ["size"]
      545 GETUPVAL                         R40 15
      546 GETTABLEKS                       R40 R40 K71 ["Emphasis"]
      548 SETTABLEKS                       R40 R39 K66 ["variant"]
      550 GETUPVAL                         R40 16
      551 GETTABLEKS                       R40 R40 K72 ["Fill"]
      553 SETTABLEKS                       R40 R39 K67 ["fillBehavior"]
      555 DUPCLOSURE                       R40 K101 [PROTO_18]
      556 SETTABLEKS                       R40 R39 K68 ["onActivated"]
      558 CALL                             R37 2 1
      559 SETTABLEKS                       R37 R36 K62 ["Button"]
      561 CALL                             R33 3 1
      562 SETTABLEKS                       R33 R32 K44 ["TileActions"]
      564 CALL                             R29 3 1
      565 SETTABLEKS                       R29 R28 K30 ["TileContent"]
      567 CALL                             R25 3 1
      568 SETTABLEKS                       R25 R24 K75 ["WideTile"]
      570 CALL                             R21 3 1
      571 SETTABLEKS                       R21 R20 K12 ["WideTileWithPadding"]
      573 CALL                             R17 3 -1
      574 RETURN                           R17 -1

PROTO_20:
        0 GETIMPORT                        R0 K1 [wait]
        2 LOADN                            R1 2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R0 R0 K2 ["GetProductInfo"]
        8 CALL                             R0 2 1
        9 GETTABLEKS                       R1 R0 K3 ["IsPublicDomain"]
       11 JUMPIFNOT                        R1 ; [+7]
       12 LOADN                            R1 0
       13 SETTABLEKS                       R1 R0 K4 ["PriceInRobux"]
       15 LOADK                            R1 K5 ["Free"]
       16 SETTABLEKS                       R1 R0 K6 ["PriceText"]
       18 JUMP                             ; [+22]
       19 GETTABLEKS                       R3 R0 K4 ["PriceInRobux"]
       21 JUMPIFNOTEQKNIL                  R3 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 FASTCALL2K                       ASSERT R2 K7 ; [+4]
       27 LOADK                            R3 K7 ["Item price will not be nil"]
       28 GETIMPORT                        R1 K9 [assert]
       30 CALL                             R1 2 0
       31 LOADK                            R2 K10 [""]
       32 GETTABLEKS                       R4 R0 K4 ["PriceInRobux"]
       34 FASTCALL1                        TOSTRING R4 ; [+2]
       35 GETIMPORT                        R3 K12 [tostring]
       37 CALL                             R3 1 1
       38 CONCAT                           R1 R2 R3
       39 SETTABLEKS                       R1 R0 K6 ["PriceText"]
       41 GETUPVAL                         R1 2
       42 MOVE                             R2 R0
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K1 [spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["component_assets/itemBG_%*"]
        3 GETTABLEKS                       R6 R1 K1 ["Config"]
        5 GETTABLEKS                       R6 R6 K2 ["ColorMode"]
        7 GETTABLEKS                       R6 R6 K3 ["Name"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K4 ["Dark"]
       12 JUMPIFNOTEQ                      R6 R7 ; [+3]
       14 LOADK                            R5 K5 ["dark"]
       15 JUMP                             ; [+1]
       16 LOADK                            R5 K6 ["light"]
       17 NAMECALL                         R3 R3 K7 ["format"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K8 ["useState"]
       24 NEWTABLE                         R4 0 0
       26 CALL                             R3 1 2
       27 GETTABLEKS                       R5 R0 K9 ["controls"]
       29 GETTABLEKS                       R5 R5 K10 ["itemId"]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K11 ["useEffect"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R5
       38 NEWTABLE                         R8 0 1
       40 MOVE                             R9 R5
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R6 2 0
       44 GETUPVAL                         R6 4
       45 CALL                             R6 0 1
       46 LOADN                            R8 3
       47 MUL                              R7 R8 R6
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K12 ["createElement"]
       51 GETUPVAL                         R9 5
       52 GETTABLEKS                       R9 R9 K13 ["Root"]
       54 DUPTABLE                         R10 K18 [{["isContained"] = True, ["FillDirection"], ["Size"]}]
       55 GETIMPORT                        R11 K21 [Enum.FillDirection.Vertical]
       57 SETTABLEKS                       R11 R10 K16 ["FillDirection"]
       59 GETUPVAL                         R13 6
       60 GETIMPORT                        R14 K24 [UDim2.fromOffset]
       62 LOADN                            R15 0
       63 MOVE                             R16 R7
       64 CALL                             R14 2 1
       65 ADD                              R12 R13 R14
       66 GETIMPORT                        R13 K24 [UDim2.fromOffset]
       68 LOADN                            R14 2
       69 LOADN                            R15 2
       70 CALL                             R13 2 1
       71 SUB                              R11 R12 R13
       72 SETTABLEKS                       R11 R10 K17 ["Size"]
       74 DUPTABLE                         R11 K27 [{"TileMedia", "TileContent"}]
       75 GETUPVAL                         R12 2
       76 GETTABLEKS                       R12 R12 K12 ["createElement"]
       78 GETUPVAL                         R13 5
       79 GETTABLEKS                       R13 R13 K28 ["Media"]
       81 DUPTABLE                         R14 K33 [{"id", "type", "shape", "background"}]
       82 SETTABLEKS                       R5 R14 K29 ["id"]
       84 GETUPVAL                         R15 7
       85 GETTABLEKS                       R15 R15 K34 ["Asset"]
       87 SETTABLEKS                       R15 R14 K30 ["type"]
       89 GETUPVAL                         R15 8
       90 GETTABLEKS                       R15 R15 K35 ["Square"]
       92 SETTABLEKS                       R15 R14 K31 ["shape"]
       94 DUPTABLE                         R15 K37 [{"image"}]
       95 SETTABLEKS                       R2 R15 K36 ["image"]
       97 SETTABLEKS                       R15 R14 K32 ["background"]
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K25 ["TileMedia"]
      102 GETUPVAL                         R12 2
      103 GETTABLEKS                       R12 R12 K12 ["createElement"]
      105 GETUPVAL                         R13 5
      106 GETTABLEKS                       R13 R13 K38 ["Content"]
      108 NEWTABLE                         R14 0 0
      110 DUPTABLE                         R15 K40 [{"TileHeader"}]
      111 GETUPVAL                         R16 2
      112 GETTABLEKS                       R16 R16 K12 ["createElement"]
      114 GETUPVAL                         R17 5
      115 GETTABLEKS                       R17 R17 K41 ["Header"]
      117 DUPTABLE                         R18 K44 [{"title", "subtitle"}]
      118 DUPTABLE                         R19 K50 [{["text"], ["isLoading"], ["fontStyle"], ["numLines"] = 2}]
      119 GETTABLEKS                       R20 R3 K3 ["Name"]
      121 SETTABLEKS                       R20 R19 K45 ["text"]
      123 GETTABLEKS                       R21 R3 K3 ["Name"]
      125 JUMPIFEQKNIL                     R21 ; [+2]
      127 LOADB                            R20 0 +1
      128 LOADB                            R20 1
      129 SETTABLEKS                       R20 R19 K46 ["isLoading"]
      131 GETTABLEKS                       R20 R1 K51 ["Typography"]
      133 GETTABLEKS                       R20 R20 K52 ["HeadingSmall"]
      135 SETTABLEKS                       R20 R19 K47 ["fontStyle"]
      137 SETTABLEKS                       R19 R18 K42 ["title"]
      139 DUPTABLE                         R19 K55 [{["text"], ["isLoading"], ["fontStyle"], ["colorStyle"], ["numLines"] = 1}]
      140 GETTABLEKS                       R20 R3 K56 ["PriceText"]
      142 SETTABLEKS                       R20 R19 K45 ["text"]
      144 GETTABLEKS                       R21 R3 K56 ["PriceText"]
      146 JUMPIFEQKNIL                     R21 ; [+2]
      148 LOADB                            R20 0 +1
      149 LOADB                            R20 1
      150 SETTABLEKS                       R20 R19 K46 ["isLoading"]
      152 GETTABLEKS                       R20 R1 K51 ["Typography"]
      154 GETTABLEKS                       R20 R20 K57 ["BodyLarge"]
      156 SETTABLEKS                       R20 R19 K47 ["fontStyle"]
      158 GETTABLEKS                       R20 R1 K58 ["Color"]
      160 GETTABLEKS                       R20 R20 K38 ["Content"]
      162 GETTABLEKS                       R20 R20 K59 ["Muted"]
      164 SETTABLEKS                       R20 R19 K53 ["colorStyle"]
      166 SETTABLEKS                       R19 R18 K43 ["subtitle"]
      168 CALL                             R16 2 1
      169 SETTABLEKS                       R16 R15 K39 ["TileHeader"]
      171 CALL                             R12 3 1
      172 SETTABLEKS                       R12 R11 K26 ["TileContent"]
      174 CALL                             R8 3 -1
      175 RETURN                           R8 -1

PROTO_23:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Relevancy Info Pressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 CALL                             R1 1 1
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 4
        9 CALL                             R1 1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R0 K1 [wait]
        2 LOADN                            R1 2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 NEWTABLE                         R2 0 1
        7 GETUPVAL                         R3 1
        8 SETLIST                          R2 R3 1 [1]
       10 NAMECALL                         R0 R0 K2 ["GetUserInfosByUserIdsAsync"]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 2
       14 GETTABLEN                        R2 R0 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K1 [spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"onActivated", "isDisabled", "variant", "size", "icon"}]
        5 GETTABLEKS                       R4 R0 K1 ["onActivated"]
        7 SETTABLEKS                       R4 R3 K1 ["onActivated"]
        9 GETTABLEKS                       R4 R0 K2 ["isDisabled"]
       11 SETTABLEKS                       R4 R3 K2 ["isDisabled"]
       13 GETTABLEKS                       R4 R0 K3 ["variant"]
       15 SETTABLEKS                       R4 R3 K3 ["variant"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K7 ["Medium"]
       20 SETTABLEKS                       R4 R3 K4 ["size"]
       22 GETTABLEKS                       R4 R0 K5 ["icon"]
       24 SETTABLEKS                       R4 R3 K5 ["icon"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_29:
        0 DUPTABLE                         R1 K1 [{"Color3"}]
        1 GETIMPORT                        R2 K3 [Color3.new]
        3 GETTABLEKS                       R3 R0 K4 ["R"]
        5 GETTABLEKS                       R4 R0 K5 ["G"]
        7 GETTABLEKS                       R5 R0 K6 ["B"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 LOADK                            R2 K0 ["component_assets/avatarBG_%*"]
        3 GETTABLEKS                       R5 R0 K1 ["Config"]
        5 GETTABLEKS                       R5 R5 K2 ["ColorMode"]
        7 GETTABLEKS                       R5 R5 K3 ["Name"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K4 ["Dark"]
       12 JUMPIFNOTEQ                      R5 R6 ; [+3]
       14 LOADK                            R4 K5 ["dark"]
       15 JUMP                             ; [+1]
       16 LOADK                            R4 K6 ["light"]
       17 NAMECALL                         R2 R2 K7 ["format"]
       19 CALL                             R2 2 1
       20 MOVE                             R1 R2
       21 DUPTABLE                         R2 K19 [{["text"] = "Hueblox", ["icon"] = "icons/common/play", ["fontStyle"], ["iconTextSpacing"], ["iconPadding"] = 0, ["iconSize"], ["textHeight"], ["onActivated"]}]
       22 GETTABLEKS                       R3 R0 K20 ["Typography"]
       24 GETTABLEKS                       R3 R3 K21 ["CaptionLarge"]
       26 SETTABLEKS                       R3 R2 K12 ["fontStyle"]
       28 GETTABLEKS                       R3 R0 K22 ["Gap"]
       30 GETTABLEKS                       R3 R3 K23 ["XSmall"]
       32 SETTABLEKS                       R3 R2 K13 ["iconTextSpacing"]
       34 GETIMPORT                        R3 K26 [UDim2.fromOffset]
       36 GETTABLEKS                       R4 R0 K27 ["Size"]
       38 GETTABLEKS                       R4 R4 K28 ["Size_300"]
       40 GETTABLEKS                       R5 R0 K27 ["Size"]
       42 GETTABLEKS                       R5 R5 K28 ["Size_300"]
       44 CALL                             R3 2 1
       45 SETTABLEKS                       R3 R2 K16 ["iconSize"]
       47 GETTABLEKS                       R3 R0 K27 ["Size"]
       49 GETTABLEKS                       R3 R3 K29 ["Size_700"]
       51 SETTABLEKS                       R3 R2 K17 ["textHeight"]
       53 DUPCLOSURE                       R3 K30 [PROTO_23]
       54 SETTABLEKS                       R3 R2 K18 ["onActivated"]
       56 GETUPVAL                         R3 2
       57 GETTABLEKS                       R3 R3 K31 ["useState"]
       59 NEWTABLE                         R4 0 0
       61 CALL                             R3 1 2
       62 GETUPVAL                         R5 2
       63 GETTABLEKS                       R5 R5 K31 ["useState"]
       65 LOADB                            R6 0
       66 CALL                             R5 1 2
       67 GETUPVAL                         R7 2
       68 GETTABLEKS                       R7 R7 K32 ["useCallback"]
       70 NEWCLOSURE                       R8 P1
       71 CAPTURE                          VAL R6
       72 CAPTURE                          UPVAL U3
       73 NEWTABLE                         R9 0 1
       75 MOVE                             R10 R6
       76 SETLIST                          R9 R10 1 [1]
       78 CALL                             R7 2 1
       79 GETTABLEKS                       R8 R0 K33 ["Color"]
       81 GETTABLEKS                       R8 R8 K34 ["Extended"]
       83 GETTABLEKS                       R8 R8 K35 ["White"]
       85 GETTABLEKS                       R8 R8 K36 ["White_100"]
       87 GETTABLEKS                       R8 R8 K37 ["Color3"]
       89 GETTABLEKS                       R9 R0 K33 ["Color"]
       91 GETTABLEKS                       R9 R9 K34 ["Extended"]
       93 GETTABLEKS                       R9 R9 K38 ["Gray"]
       95 GETTABLEKS                       R9 R9 K39 ["Gray_400"]
       97 GETTABLEKS                       R9 R9 K37 ["Color3"]
       99 GETUPVAL                         R10 4
      100 GETTABLEKS                       R10 R10 K40 ["useAnimatedBinding"]
      102 DUPTABLE                         R11 K44 [{"R", "G", "B"}]
      103 GETTABLEKS                       R12 R8 K41 ["R"]
      105 SETTABLEKS                       R12 R11 K41 ["R"]
      107 GETTABLEKS                       R12 R8 K42 ["G"]
      109 SETTABLEKS                       R12 R11 K42 ["G"]
      111 GETTABLEKS                       R12 R8 K43 ["B"]
      113 SETTABLEKS                       R12 R11 K43 ["B"]
      115 CALL                             R10 1 2
      116 GETUPVAL                         R12 2
      117 GETTABLEKS                       R12 R12 K45 ["useEffect"]
      119 NEWCLOSURE                       R13 P2
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R5
      122 CAPTURE                          UPVAL U5
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R8
      125 NEWTABLE                         R14 0 1
      127 MOVE                             R15 R5
      128 SETLIST                          R14 R15 1 [1]
      130 CALL                             R12 2 0
      131 GETUPVAL                         R13 6
      132 GETTABLEKS                       R13 R13 K46 ["LocalPlayer"]
      134 JUMPIFNOT                        R13 ; [+6]
      135 GETUPVAL                         R12 6
      136 GETTABLEKS                       R12 R12 K46 ["LocalPlayer"]
      138 GETTABLEKS                       R12 R12 K47 ["UserId"]
      140 JUMP                             ; [+8]
      141 GETUPVAL                         R13 7
      142 JUMPIFNOT                        R13 ; [+5]
      143 GETUPVAL                         R12 7
      144 NAMECALL                         R12 R12 K48 ["GetUserId"]
      146 CALL                             R12 1 1
      147 JUMP                             ; [+1]
      148 LOADNIL                          R12
      149 GETUPVAL                         R13 2
      150 GETTABLEKS                       R13 R13 K45 ["useEffect"]
      152 NEWCLOSURE                       R14 P3
      153 CAPTURE                          VAL R4
      154 CAPTURE                          UPVAL U8
      155 CAPTURE                          VAL R12
      156 NEWTABLE                         R15 0 1
      158 MOVE                             R16 R12
      159 SETLIST                          R15 R16 1 [1]
      161 CALL                             R13 2 0
      162 LOADN                            R13 1
      163 LOADN                            R14 1
      164 LOADN                            R15 1
      165 GETUPVAL                         R16 9
      166 CALL                             R16 0 1
      167 LOADN                            R18 3
      168 MUL                              R17 R18 R16
      169 LOADN                            R19 2
      170 MUL                              R18 R19 R16
      171 DUPCLOSURE                       R19 K49 [PROTO_28]
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          UPVAL U10
      174 CAPTURE                          UPVAL U11
      175 GETUPVAL                         R20 2
      176 GETTABLEKS                       R20 R20 K50 ["createElement"]
      178 GETUPVAL                         R21 12
      179 DUPTABLE                         R22 K53 [{["tag"] = "auto-xy gap-large row"}]
      180 DUPTABLE                         R23 K56 [{"PlayerTile", "OldPlayerTile"}]
      181 GETUPVAL                         R24 2
      182 GETTABLEKS                       R24 R24 K50 ["createElement"]
      184 GETUPVAL                         R25 13
      185 GETTABLEKS                       R25 R25 K57 ["Root"]
      187 DUPTABLE                         R26 K61 [{["FillDirection"], ["Size"], ["isContained"] = True}]
      188 GETIMPORT                        R27 K64 [Enum.FillDirection.Vertical]
      190 SETTABLEKS                       R27 R26 K58 ["FillDirection"]
      192 GETUPVAL                         R28 14
      193 GETIMPORT                        R29 K26 [UDim2.fromOffset]
      195 LOADN                            R30 0
      196 MOVE                             R31 R17
      197 CALL                             R29 2 1
      198 ADD                              R27 R28 R29
      199 SETTABLEKS                       R27 R26 K27 ["Size"]
      201 DUPTABLE                         R27 K67 [{"TileMedia", "TileContent"}]
      202 GETUPVAL                         R28 2
      203 GETTABLEKS                       R28 R28 K50 ["createElement"]
      205 GETUPVAL                         R29 13
      206 GETTABLEKS                       R29 R29 K68 ["Media"]
      208 DUPTABLE                         R30 K74 [{"id", "type", "shape", "background", "onStateChanged"}]
      209 SETTABLEKS                       R12 R30 K69 ["id"]
      211 GETUPVAL                         R31 15
      212 GETTABLEKS                       R31 R31 K75 ["Avatar"]
      214 SETTABLEKS                       R31 R30 K70 ["type"]
      216 GETUPVAL                         R31 16
      217 GETTABLEKS                       R31 R31 K76 ["Square"]
      219 SETTABLEKS                       R31 R30 K71 ["shape"]
      221 DUPTABLE                         R31 K79 [{"image", "style"}]
      222 SETTABLEKS                       R1 R31 K77 ["image"]
      224 DUPCLOSURE                       R34 K80 [PROTO_29]
      225 NAMECALL                         R32 R10 K81 ["map"]
      227 CALL                             R32 2 1
      228 SETTABLEKS                       R32 R31 K78 ["style"]
      230 SETTABLEKS                       R31 R30 K72 ["background"]
      232 SETTABLEKS                       R7 R30 K73 ["onStateChanged"]
      234 DUPTABLE                         R31 K83 [{"PlayerTileButtons"}]
      235 GETUPVAL                         R32 2
      236 GETTABLEKS                       R32 R32 K50 ["createElement"]
      238 GETUPVAL                         R33 12
      239 DUPTABLE                         R34 K87 [{["ZIndex"] = 2, ["tag"] = "auto-y size-full-0 row gap-small align-x-right align-y-bottom anchor-bottom-right position-bottom-right"}]
      240 GETUPVAL                         R36 17
      241 GETTABLEKS                       R36 R36 K88 ["FoundationMigrateCryoToDash"]
      243 JUMPIFNOT                        R36 ; [+7]
      244 GETUPVAL                         R35 18
      245 GETTABLEKS                       R35 R35 K81 ["map"]
      247 GETUPVAL                         R36 19
      248 MOVE                             R37 R19
      249 CALL                             R35 2 1
      250 JUMP                             ; [+8]
      251 GETUPVAL                         R35 20
      252 GETTABLEKS                       R35 R35 K89 ["List"]
      254 GETTABLEKS                       R35 R35 K81 ["map"]
      256 GETUPVAL                         R36 19
      257 MOVE                             R37 R19
      258 CALL                             R35 2 1
      259 CALL                             R32 3 1
      260 SETTABLEKS                       R32 R31 K82 ["PlayerTileButtons"]
      262 CALL                             R28 3 1
      263 SETTABLEKS                       R28 R27 K65 ["TileMedia"]
      265 GETUPVAL                         R28 2
      266 GETTABLEKS                       R28 R28 K50 ["createElement"]
      268 GETUPVAL                         R29 13
      269 GETTABLEKS                       R29 R29 K90 ["Content"]
      271 DUPTABLE                         R30 K92 [{"spacing"}]
      272 GETTABLEKS                       R31 R0 K22 ["Gap"]
      274 GETTABLEKS                       R31 R31 K23 ["XSmall"]
      276 SETTABLEKS                       R31 R30 K91 ["spacing"]
      278 DUPTABLE                         R31 K95 [{"TileHeader", "TileFooter"}]
      279 GETUPVAL                         R32 2
      280 GETTABLEKS                       R32 R32 K50 ["createElement"]
      282 GETUPVAL                         R33 13
      283 GETTABLEKS                       R33 R33 K96 ["Header"]
      285 DUPTABLE                         R34 K99 [{"title", "subtitle"}]
      286 DUPTABLE                         R35 K101 [{"text", "isLoading"}]
      287 GETTABLEKS                       R36 R3 K102 ["DisplayName"]
      289 SETTABLEKS                       R36 R35 K8 ["text"]
      291 GETTABLEKS                       R37 R3 K102 ["DisplayName"]
      293 JUMPIFEQKNIL                     R37 ; [+2]
      295 LOADB                            R36 0 +1
      296 LOADB                            R36 1
      297 SETTABLEKS                       R36 R35 K100 ["isLoading"]
      299 SETTABLEKS                       R35 R34 K97 ["title"]
      301 DUPTABLE                         R35 K101 [{"text", "isLoading"}]
      302 GETTABLEKS                       R37 R3 K103 ["Username"]
      304 JUMPIFNOT                        R37 ; [+5]
      305 LOADK                            R37 K104 ["@"]
      306 GETTABLEKS                       R38 R3 K103 ["Username"]
      308 CONCAT                           R36 R37 R38
      309 JUMP                             ; [+1]
      310 LOADNIL                          R36
      311 SETTABLEKS                       R36 R35 K8 ["text"]
      313 GETTABLEKS                       R37 R3 K103 ["Username"]
      315 JUMPIFEQKNIL                     R37 ; [+2]
      317 LOADB                            R36 0 +1
      318 LOADB                            R36 1
      319 SETTABLEKS                       R36 R35 K100 ["isLoading"]
      321 SETTABLEKS                       R35 R34 K98 ["subtitle"]
      323 CALL                             R32 2 1
      324 SETTABLEKS                       R32 R31 K93 ["TileHeader"]
      326 GETUPVAL                         R32 2
      327 GETTABLEKS                       R32 R32 K50 ["createElement"]
      329 GETUPVAL                         R33 13
      330 GETTABLEKS                       R33 R33 K105 ["Footer"]
      332 NEWTABLE                         R34 0 0
      334 DUPTABLE                         R35 K107 [{"RelevancyInfo"}]
      335 GETUPVAL                         R36 2
      336 GETTABLEKS                       R36 R36 K50 ["createElement"]
      338 GETUPVAL                         R37 12
      339 DUPTABLE                         R38 K109 [{["tag"] = "row gap-xsmall auto-y size-full-0"}]
      340 DUPTABLE                         R39 K112 [{"Icon", "Text"}]
      341 GETUPVAL                         R40 2
      342 GETTABLEKS                       R40 R40 K50 ["createElement"]
      344 GETUPVAL                         R41 21
      345 DUPTABLE                         R42 K115 [{"name", "size"}]
      346 GETTABLEKS                       R43 R2 K10 ["icon"]
      348 SETTABLEKS                       R43 R42 K113 ["name"]
      350 GETUPVAL                         R43 22
      351 GETTABLEKS                       R43 R43 K116 ["Small"]
      353 SETTABLEKS                       R43 R42 K114 ["size"]
      355 CALL                             R40 2 1
      356 SETTABLEKS                       R40 R39 K110 ["Icon"]
      358 GETUPVAL                         R40 2
      359 GETTABLEKS                       R40 R40 K50 ["createElement"]
      361 GETUPVAL                         R41 23
      362 DUPTABLE                         R42 K120 [{"textStyle", "fontStyle", "Text", "TextXAlignment", "Size", "AutomaticSize"}]
      363 GETTABLEKS                       R43 R0 K33 ["Color"]
      365 GETTABLEKS                       R43 R43 K90 ["Content"]
      367 GETTABLEKS                       R43 R43 K121 ["Emphasis"]
      369 SETTABLEKS                       R43 R42 K117 ["textStyle"]
      371 GETTABLEKS                       R43 R2 K12 ["fontStyle"]
      373 SETTABLEKS                       R43 R42 K12 ["fontStyle"]
      375 GETTABLEKS                       R43 R2 K8 ["text"]
      377 SETTABLEKS                       R43 R42 K111 ["Text"]
      379 GETIMPORT                        R43 K123 [Enum.TextXAlignment.Left]
      381 SETTABLEKS                       R43 R42 K118 ["TextXAlignment"]
      383 GETIMPORT                        R43 K125 [UDim2.fromScale]
      385 LOADN                            R44 1
      386 LOADN                            R45 0
      387 CALL                             R43 2 1
      388 SETTABLEKS                       R43 R42 K27 ["Size"]
      390 GETIMPORT                        R43 K127 [Enum.AutomaticSize.Y]
      392 SETTABLEKS                       R43 R42 K119 ["AutomaticSize"]
      394 CALL                             R40 2 1
      395 SETTABLEKS                       R40 R39 K111 ["Text"]
      397 CALL                             R36 3 1
      398 SETTABLEKS                       R36 R35 K106 ["RelevancyInfo"]
      400 CALL                             R32 3 1
      401 SETTABLEKS                       R32 R31 K94 ["TileFooter"]
      403 CALL                             R28 3 1
      404 SETTABLEKS                       R28 R27 K66 ["TileContent"]
      406 CALL                             R24 3 1
      407 SETTABLEKS                       R24 R23 K54 ["PlayerTile"]
      409 GETUPVAL                         R24 2
      410 GETTABLEKS                       R24 R24 K50 ["createElement"]
      412 GETUPVAL                         R25 13
      413 GETTABLEKS                       R25 R25 K57 ["Root"]
      415 DUPTABLE                         R26 K128 [{"FillDirection", "Size"}]
      416 GETIMPORT                        R27 K64 [Enum.FillDirection.Vertical]
      418 SETTABLEKS                       R27 R26 K58 ["FillDirection"]
      420 GETIMPORT                        R27 K26 [UDim2.fromOffset]
      422 LOADN                            R28 90
      423 LOADN                            R30 115
      424 ADD                              R29 R30 R18
      425 CALL                             R27 2 1
      426 SETTABLEKS                       R27 R26 K27 ["Size"]
      428 DUPTABLE                         R27 K67 [{"TileMedia", "TileContent"}]
      429 GETUPVAL                         R28 2
      430 GETTABLEKS                       R28 R28 K50 ["createElement"]
      432 GETUPVAL                         R29 13
      433 GETTABLEKS                       R29 R29 K68 ["Media"]
      435 DUPTABLE                         R30 K129 [{"id", "type", "shape", "background"}]
      436 SETTABLEKS                       R12 R30 K69 ["id"]
      438 GETUPVAL                         R31 15
      439 GETTABLEKS                       R31 R31 K130 ["AvatarHeadShot"]
      441 SETTABLEKS                       R31 R30 K70 ["type"]
      443 GETUPVAL                         R31 16
      444 GETTABLEKS                       R31 R31 K131 ["Circle"]
      446 SETTABLEKS                       R31 R30 K71 ["shape"]
      448 DUPTABLE                         R31 K132 [{"image"}]
      449 SETTABLEKS                       R1 R31 K77 ["image"]
      451 SETTABLEKS                       R31 R30 K72 ["background"]
      453 NEWTABLE                         R31 0 1
      455 GETUPVAL                         R32 2
      456 GETTABLEKS                       R32 R32 K50 ["createElement"]
      458 GETUPVAL                         R33 24
      459 DUPTABLE                         R34 K136 [{["tag"] = "position-bottom-right anchor-center-center size-700-700 bg-system-success stroke-emphasis radius-circle", ["Image"] = "icons/placeholder/placeholderOff"}]
      460 CALL                             R32 2 -1
      461 SETLIST                          R31 R32 -1 [1]
      463 CALL                             R28 3 1
      464 SETTABLEKS                       R28 R27 K65 ["TileMedia"]
      466 GETUPVAL                         R28 2
      467 GETTABLEKS                       R28 R28 K50 ["createElement"]
      469 GETUPVAL                         R29 13
      470 GETTABLEKS                       R29 R29 K90 ["Content"]
      472 DUPTABLE                         R30 K92 [{"spacing"}]
      473 GETTABLEKS                       R31 R0 K22 ["Gap"]
      475 GETTABLEKS                       R31 R31 K137 ["XXSmall"]
      477 SETTABLEKS                       R31 R30 K91 ["spacing"]
      479 DUPTABLE                         R31 K138 [{"TileHeader"}]
      480 GETUPVAL                         R32 2
      481 GETTABLEKS                       R32 R32 K50 ["createElement"]
      483 GETUPVAL                         R33 13
      484 GETTABLEKS                       R33 R33 K96 ["Header"]
      486 DUPTABLE                         R34 K139 [{"title", "subtitle", "TextXAlignment"}]
      487 DUPTABLE                         R35 K101 [{"text", "isLoading"}]
      488 GETTABLEKS                       R36 R3 K102 ["DisplayName"]
      490 SETTABLEKS                       R36 R35 K8 ["text"]
      492 GETTABLEKS                       R37 R3 K102 ["DisplayName"]
      494 JUMPIFEQKNIL                     R37 ; [+2]
      496 LOADB                            R36 0 +1
      497 LOADB                            R36 1
      498 SETTABLEKS                       R36 R35 K100 ["isLoading"]
      500 SETTABLEKS                       R35 R34 K97 ["title"]
      502 DUPTABLE                         R35 K101 [{"text", "isLoading"}]
      503 GETTABLEKS                       R36 R2 K8 ["text"]
      505 SETTABLEKS                       R36 R35 K8 ["text"]
      507 GETTABLEKS                       R37 R3 K102 ["DisplayName"]
      509 JUMPIFEQKNIL                     R37 ; [+2]
      511 LOADB                            R36 0 +1
      512 LOADB                            R36 1
      513 SETTABLEKS                       R36 R35 K100 ["isLoading"]
      515 SETTABLEKS                       R35 R34 K98 ["subtitle"]
      517 GETIMPORT                        R35 K141 [Enum.TextXAlignment.Center]
      519 SETTABLEKS                       R35 R34 K118 ["TextXAlignment"]
      521 CALL                             R32 2 1
      522 SETTABLEKS                       R32 R31 K93 ["TileHeader"]
      524 CALL                             R28 3 1
      525 SETTABLEKS                       R28 R27 K66 ["TileContent"]
      527 CALL                             R24 3 1
      528 SETTABLEKS                       R24 R23 K55 ["OldPlayerTile"]
      530 CALL                             R20 3 -1
      531 RETURN                           R20 -1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K3 [{["tag"] = "auto-xy gap-large row"}]
        7 DUPTABLE                         R5 K5 [{"MarketplaceTile"}]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K0 ["createElement"]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K6 ["Root"]
       14 DUPTABLE                         R8 K9 [{"FillDirection", "Size"}]
       15 GETIMPORT                        R9 K12 [Enum.FillDirection.Horizontal]
       17 SETTABLEKS                       R9 R8 K7 ["FillDirection"]
       19 GETIMPORT                        R9 K15 [UDim2.new]
       21 LOADN                            R10 0
       22 LOADN                            R11 300
       23 LOADN                            R12 0
       24 LOADN                            R13 150
       25 CALL                             R9 4 1
       26 SETTABLEKS                       R9 R8 K8 ["Size"]
       28 DUPTABLE                         R9 K18 [{"TileContent", "TileMedia"}]
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R10 R10 K0 ["createElement"]
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R11 R11 K19 ["Content"]
       35 DUPTABLE                         R12 K23 [{["spacing"], ["LayoutOrder"] = 1}]
       36 GETTABLEKS                       R13 R1 K24 ["Gap"]
       38 GETTABLEKS                       R13 R13 K25 ["XSmall"]
       40 SETTABLEKS                       R13 R12 K20 ["spacing"]
       42 DUPTABLE                         R13 K28 [{"TileHeader", "TileFooter"}]
       43 GETUPVAL                         R14 1
       44 GETTABLEKS                       R14 R14 K0 ["createElement"]
       46 GETUPVAL                         R15 3
       47 GETTABLEKS                       R15 R15 K29 ["Header"]
       49 DUPTABLE                         R16 K32 [{"title", "subtitle"}]
       50 DUPTABLE                         R17 K35 [{["text"] = "Try out studio!"}]
       51 SETTABLEKS                       R17 R16 K30 ["title"]
       53 DUPTABLE                         R17 K37 [{["text"] = "Do something exciting in studio."}]
       54 SETTABLEKS                       R17 R16 K31 ["subtitle"]
       56 CALL                             R14 2 1
       57 SETTABLEKS                       R14 R13 K26 ["TileHeader"]
       59 GETUPVAL                         R14 1
       60 GETTABLEKS                       R14 R14 K0 ["createElement"]
       62 GETUPVAL                         R15 3
       63 GETTABLEKS                       R15 R15 K38 ["Footer"]
       65 NEWTABLE                         R16 0 0
       67 NEWTABLE                         R17 0 0
       69 CALL                             R14 3 1
       70 SETTABLEKS                       R14 R13 K27 ["TileFooter"]
       72 CALL                             R10 3 1
       73 SETTABLEKS                       R10 R9 K16 ["TileContent"]
       75 GETUPVAL                         R10 1
       76 GETTABLEKS                       R10 R10 K0 ["createElement"]
       78 GETUPVAL                         R11 3
       79 GETTABLEKS                       R11 R11 K39 ["Media"]
       81 DUPTABLE                         R12 K44 [{["id"], ["type"], ["shape"], ["LayoutOrder"] = 2}]
       82 GETTABLEKS                       R13 R0 K45 ["controls"]
       84 GETTABLEKS                       R13 R13 K46 ["placeId"]
       86 SETTABLEKS                       R13 R12 K40 ["id"]
       88 GETUPVAL                         R13 4
       89 GETTABLEKS                       R13 R13 K47 ["Asset"]
       91 SETTABLEKS                       R13 R12 K41 ["type"]
       93 GETUPVAL                         R13 5
       94 GETTABLEKS                       R13 R13 K48 ["Square"]
       96 SETTABLEKS                       R13 R12 K42 ["shape"]
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K17 ["TileMedia"]
      101 CALL                             R6 3 1
      102 SETTABLEKS                       R6 R5 K4 ["MarketplaceTile"]
      104 CALL                             R2 3 -1
      105 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MarketplaceService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ReplicatedStorage"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [pcall]
       21 DUPCLOSURE                       R4 K8 [PROTO_0]
       22 CALL                             R3 1 2
       23 GETIMPORT                        R5 K7 [pcall]
       25 DUPCLOSURE                       R6 K9 [PROTO_1]
       26 CALL                             R5 1 2
       27 GETIMPORT                        R7 K11 [script]
       29 LOADK                            R9 K12 ["Foundation"]
       30 NAMECALL                         R7 R7 K13 ["FindFirstAncestor"]
       32 CALL                             R7 2 1
       33 GETTABLEKS                       R8 R7 K14 ["Parent"]
       35 GETIMPORT                        R9 K16 [require]
       37 GETTABLEKS                       R10 R7 K17 ["Utility"]
       39 GETTABLEKS                       R10 R10 K18 ["Wrappers"]
       41 CALL                             R9 1 1
       42 GETTABLEKS                       R9 R9 K19 ["Services"]
       44 GETTABLEKS                       R9 R9 K20 ["Players"]
       46 GETIMPORT                        R10 K16 [require]
       48 GETTABLEKS                       R11 R7 K17 ["Utility"]
       50 GETTABLEKS                       R11 R11 K21 ["Flags"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K16 [require]
       55 GETTABLEKS                       R12 R8 K22 ["React"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K16 [require]
       60 GETTABLEKS                       R13 R8 K23 ["ReactOtter"]
       62 CALL                             R12 1 1
       63 GETIMPORT                        R13 K16 [require]
       65 GETTABLEKS                       R14 R8 K24 ["Cryo"]
       67 CALL                             R13 1 1
       68 GETIMPORT                        R14 K16 [require]
       70 GETTABLEKS                       R15 R8 K25 ["Dash"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K16 [require]
       75 GETTABLEKS                       R16 R7 K26 ["Components"]
       77 GETTABLEKS                       R16 R16 K27 ["Tile"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K16 [require]
       82 GETTABLEKS                       R17 R7 K28 ["Enums"]
       84 GETTABLEKS                       R17 R17 K29 ["MediaType"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K16 [require]
       89 GETTABLEKS                       R18 R7 K28 ["Enums"]
       91 GETTABLEKS                       R18 R18 K30 ["MediaShape"]
       93 CALL                             R17 1 1
       94 GETIMPORT                        R18 K16 [require]
       96 GETTABLEKS                       R19 R7 K28 ["Enums"]
       98 GETTABLEKS                       R19 R19 K31 ["Theme"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K16 [require]
      103 GETTABLEKS                       R20 R7 K26 ["Components"]
      105 GETTABLEKS                       R20 R20 K32 ["Icon"]
      107 CALL                             R19 1 1
      108 GETIMPORT                        R20 K16 [require]
      110 GETTABLEKS                       R21 R7 K26 ["Components"]
      112 GETTABLEKS                       R21 R21 K33 ["Image"]
      114 CALL                             R20 1 1
      115 GETIMPORT                        R21 K16 [require]
      117 GETTABLEKS                       R22 R7 K28 ["Enums"]
      119 GETTABLEKS                       R22 R22 K34 ["IconSize"]
      121 CALL                             R21 1 1
      122 GETIMPORT                        R22 K16 [require]
      124 GETTABLEKS                       R23 R7 K26 ["Components"]
      126 GETTABLEKS                       R23 R23 K35 ["Button"]
      128 CALL                             R22 1 1
      129 GETIMPORT                        R23 K16 [require]
      131 GETTABLEKS                       R24 R7 K28 ["Enums"]
      133 GETTABLEKS                       R24 R24 K36 ["InputSize"]
      135 CALL                             R23 1 1
      136 GETIMPORT                        R24 K16 [require]
      138 GETTABLEKS                       R25 R7 K28 ["Enums"]
      140 GETTABLEKS                       R25 R25 K37 ["ButtonVariant"]
      142 CALL                             R24 1 1
      143 GETIMPORT                        R25 K16 [require]
      145 GETTABLEKS                       R26 R7 K26 ["Components"]
      147 GETTABLEKS                       R26 R26 K38 ["Text"]
      149 CALL                             R25 1 1
      150 GETIMPORT                        R26 K16 [require]
      152 GETTABLEKS                       R27 R7 K26 ["Components"]
      154 GETTABLEKS                       R27 R27 K39 ["View"]
      156 CALL                             R26 1 1
      157 GETIMPORT                        R27 K16 [require]
      159 GETTABLEKS                       R28 R7 K26 ["Components"]
      161 GETTABLEKS                       R28 R28 K40 ["Types"]
      163 CALL                             R27 1 1
      164 GETIMPORT                        R28 K16 [require]
      166 GETTABLEKS                       R29 R7 K41 ["Providers"]
      168 GETTABLEKS                       R29 R29 K42 ["Style"]
      170 GETTABLEKS                       R29 R29 K43 ["useTokens"]
      172 CALL                             R28 1 1
      173 GETIMPORT                        R29 K16 [require]
      175 GETTABLEKS                       R30 R7 K41 ["Providers"]
      177 GETTABLEKS                       R30 R30 K42 ["Style"]
      179 GETTABLEKS                       R30 R30 K44 ["useTextSizeOffset"]
      181 CALL                             R29 1 1
      182 GETIMPORT                        R30 K16 [require]
      184 GETIMPORT                        R31 K11 [script]
      186 GETTABLEKS                       R31 R31 K14 ["Parent"]
      188 GETTABLEKS                       R31 R31 K45 ["ObjectViewport"]
      190 CALL                             R30 1 1
      191 GETIMPORT                        R31 K16 [require]
      193 GETTABLEKS                       R32 R7 K28 ["Enums"]
      195 GETTABLEKS                       R32 R32 K46 ["FillBehavior"]
      197 CALL                             R31 1 1
      198 GETIMPORT                        R32 K16 [require]
      200 GETTABLEKS                       R33 R7 K28 ["Enums"]
      202 GETTABLEKS                       R33 R33 K47 ["ControlState"]
      204 CALL                             R32 1 1
      205 NEWTABLE                         R33 2 0
      207 LOADK                            R34 K48 [2727067538]
      208 LOADK                            R35 K49 [985731078]
      209 SETTABLE                         R35 R33 R34
      210 LOADK                            R34 K50 [1537690962]
      211 LOADK                            R35 K51 [601130232]
      212 SETTABLE                         R35 R33 R34
      213 GETIMPORT                        R34 K54 [UDim2.fromOffset]
      215 LOADN                            R35 150
      216 LOADN                            R36 225
      217 CALL                             R34 2 1
      218 GETIMPORT                        R35 K54 [UDim2.fromOffset]
      220 LOADN                            R36 150
      221 LOADN                            R37 240
      222 CALL                             R35 2 1
      223 GETIMPORT                        R36 K54 [UDim2.fromOffset]
      225 LOADN                            R37 150
      226 LOADN                            R38 250
      227 CALL                             R36 2 1
      228 GETIMPORT                        R37 K54 [UDim2.fromOffset]
      230 LOADN                            R38 300
      231 LOADN                            R39 280
      232 CALL                             R37 2 1
      233 NEWTABLE                         R38 0 1
      235 DUPTABLE                         R39 K59 [{["icon"] = "icons/actions/friends/friendpending", ["onActivated"], ["variant"]}]
      236 DUPCLOSURE                       R40 K60 [PROTO_2]
      237 SETTABLEKS                       R40 R39 K57 ["onActivated"]
      239 GETTABLEKS                       R40 R24 K61 ["SubEmphasis"]
      241 SETTABLEKS                       R40 R39 K58 ["variant"]
      243 SETLIST                          R38 R39 1 [1]
      245 DUPCLOSURE                       R39 K62 [PROTO_3]
      246 CAPTURE                          VAL R11
      247 CAPTURE                          VAL R25
      248 DUPCLOSURE                       R40 K63 [PROTO_4]
      249 DUPTABLE                         R41 K66 [{["frequency"] = 4}]
      250 DUPCLOSURE                       R42 K67 [PROTO_5]
      251 CAPTURE                          VAL R12
      252 CAPTURE                          VAL R41
      253 DUPTABLE                         R43 K71 [{["name"] = "Tile", ["stories"], ["controls"]}]
      254 DUPTABLE                         R44 K78 [{"Configurable", "Fun", "Experience", "Item", "Player", "Marketplace"}]
      255 DUPTABLE                         R45 K81 [{["name"] = "Configurable Tile", ["story"]}]
      256 DUPCLOSURE                       R46 K82 [PROTO_6]
      257 CAPTURE                          VAL R28
      258 CAPTURE                          VAL R29
      259 CAPTURE                          VAL R11
      260 CAPTURE                          VAL R15
      261 CAPTURE                          VAL R16
      262 CAPTURE                          VAL R39
      263 SETTABLEKS                       R46 R45 K80 ["story"]
      265 SETTABLEKS                       R45 R44 K72 ["Configurable"]
      267 DUPTABLE                         R45 K84 [{["name"] = "Fun Tile", ["story"]}]
      268 DUPCLOSURE                       R46 K85 [PROTO_9]
      269 CAPTURE                          VAL R28
      270 CAPTURE                          VAL R18
      271 CAPTURE                          VAL R11
      272 CAPTURE                          VAL R1
      273 CAPTURE                          VAL R2
      274 CAPTURE                          VAL R4
      275 CAPTURE                          VAL R29
      276 CAPTURE                          VAL R15
      277 CAPTURE                          VAL R17
      278 CAPTURE                          VAL R30
      279 SETTABLEKS                       R46 R45 K80 ["story"]
      281 SETTABLEKS                       R45 R44 K73 ["Fun"]
      283 DUPTABLE                         R45 K87 [{["name"] = "Experience Tile", ["story"]}]
      284 DUPCLOSURE                       R46 K88 [PROTO_19]
      285 CAPTURE                          VAL R28
      286 CAPTURE                          VAL R11
      287 CAPTURE                          VAL R32
      288 CAPTURE                          VAL R33
      289 CAPTURE                          VAL R1
      290 CAPTURE                          VAL R12
      291 CAPTURE                          VAL R29
      292 CAPTURE                          VAL R26
      293 CAPTURE                          VAL R15
      294 CAPTURE                          VAL R36
      295 CAPTURE                          VAL R16
      296 CAPTURE                          VAL R17
      297 CAPTURE                          VAL R39
      298 CAPTURE                          VAL R22
      299 CAPTURE                          VAL R23
      300 CAPTURE                          VAL R24
      301 CAPTURE                          VAL R31
      302 CAPTURE                          VAL R37
      303 SETTABLEKS                       R46 R45 K80 ["story"]
      305 SETTABLEKS                       R45 R44 K74 ["Experience"]
      307 DUPTABLE                         R45 K90 [{["name"] = "Item Tile", ["story"]}]
      308 DUPCLOSURE                       R46 K91 [PROTO_22]
      309 CAPTURE                          VAL R28
      310 CAPTURE                          VAL R18
      311 CAPTURE                          VAL R11
      312 CAPTURE                          VAL R1
      313 CAPTURE                          VAL R29
      314 CAPTURE                          VAL R15
      315 CAPTURE                          VAL R35
      316 CAPTURE                          VAL R16
      317 CAPTURE                          VAL R17
      318 SETTABLEKS                       R46 R45 K80 ["story"]
      320 SETTABLEKS                       R45 R44 K75 ["Item"]
      322 DUPTABLE                         R45 K93 [{["name"] = "Player Tile", ["story"]}]
      323 DUPCLOSURE                       R46 K94 [PROTO_30]
      324 CAPTURE                          VAL R28
      325 CAPTURE                          VAL R18
      326 CAPTURE                          VAL R11
      327 CAPTURE                          VAL R32
      328 CAPTURE                          VAL R12
      329 CAPTURE                          VAL R42
      330 CAPTURE                          VAL R9
      331 CAPTURE                          VAL R6
      332 CAPTURE                          VAL R0
      333 CAPTURE                          VAL R29
      334 CAPTURE                          VAL R22
      335 CAPTURE                          VAL R23
      336 CAPTURE                          VAL R26
      337 CAPTURE                          VAL R15
      338 CAPTURE                          VAL R34
      339 CAPTURE                          VAL R16
      340 CAPTURE                          VAL R17
      341 CAPTURE                          VAL R10
      342 CAPTURE                          VAL R14
      343 CAPTURE                          VAL R38
      344 CAPTURE                          VAL R13
      345 CAPTURE                          VAL R19
      346 CAPTURE                          VAL R21
      347 CAPTURE                          VAL R25
      348 CAPTURE                          VAL R20
      349 SETTABLEKS                       R46 R45 K80 ["story"]
      351 SETTABLEKS                       R45 R44 K76 ["Player"]
      353 DUPTABLE                         R45 K96 [{["name"] = "Marketplace Tile (work in progress)", ["story"]}]
      354 DUPCLOSURE                       R46 K97 [PROTO_31]
      355 CAPTURE                          VAL R28
      356 CAPTURE                          VAL R11
      357 CAPTURE                          VAL R26
      358 CAPTURE                          VAL R15
      359 CAPTURE                          VAL R16
      360 CAPTURE                          VAL R17
      361 SETTABLEKS                       R46 R45 K80 ["story"]
      363 SETTABLEKS                       R45 R44 K77 ["Marketplace"]
      365 SETTABLEKS                       R44 R43 K69 ["stories"]
      367 DUPTABLE                         R44 K112 [{["fillDirection"], ["itemId"], ["isContained"] = True, ["shape"], ["title"] = "Build a Boat for Treasure", ["numTitleLines"] = 2, ["numSubtitleLines"] = 1, ["subtitle"] = "By Koi Koi Studios", ["placeId"]}]
      368 NEWTABLE                         R45 0 2
      370 GETIMPORT                        R46 K116 [Enum.FillDirection.Vertical]
      372 GETIMPORT                        R47 K118 [Enum.FillDirection.Horizontal]
      374 SETLIST                          R45 R46 2 [1]
      376 SETTABLEKS                       R45 R44 K98 ["fillDirection"]
      378 NEWTABLE                         R45 0 4
      380 LOADK                            R46 K119 [21070012]
      381 LOADK                            R47 K120 [125378389]
      382 LOADK                            R48 K121 [14825332446]
      383 LOADK                            R49 K122 [3360689775]
      384 SETLIST                          R45 R46 4 [1]
      386 SETTABLEKS                       R45 R44 K99 ["itemId"]
      388 NEWTABLE                         R45 0 4
      390 GETTABLEKS                       R46 R17 K123 ["Square"]
      392 GETTABLEKS                       R47 R17 K124 ["Landscape"]
      394 GETTABLEKS                       R48 R17 K125 ["Portrait"]
      396 GETTABLEKS                       R49 R17 K126 ["Circle"]
      398 SETLIST                          R45 R46 4 [1]
      400 SETTABLEKS                       R45 R44 K102 ["shape"]
      402 NEWTABLE                         R45 0 2
      404 LOADK                            R46 K48 [2727067538]
      405 LOADK                            R47 K50 [1537690962]
      406 SETLIST                          R45 R46 2 [1]
      408 SETTABLEKS                       R45 R44 K111 ["placeId"]
      410 SETTABLEKS                       R44 R43 K70 ["controls"]
      412 RETURN                           R43 1
