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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{"textStyle", "fontStyle", "Text", "TextXAlignment", "TextWrapped", "TextTruncate", "Size", "AutomaticSize"}]
        5 GETTABLEKS                       R6 R0 K10 ["Color"]
        7 GETTABLEKS                       R5 R6 K11 ["Content"]
        9 GETTABLEKS                       R4 R5 K12 ["Default"]
       11 SETTABLEKS                       R4 R3 K1 ["textStyle"]
       13 GETTABLEKS                       R5 R0 K13 ["Typography"]
       15 GETTABLEKS                       R4 R5 K14 ["TitleLarge"]
       17 SETTABLEKS                       R4 R3 K2 ["fontStyle"]
       19 LOADK                            R4 K15 ["82% 👍 92k 👤"]
       20 SETTABLEKS                       R4 R3 K3 ["Text"]
       22 GETIMPORT                        R4 K18 [Enum.TextXAlignment.Left]
       24 SETTABLEKS                       R4 R3 K4 ["TextXAlignment"]
       26 LOADB                            R4 0
       27 SETTABLEKS                       R4 R3 K5 ["TextWrapped"]
       29 GETIMPORT                        R4 K20 [Enum.TextTruncate.AtEnd]
       31 SETTABLEKS                       R4 R3 K6 ["TextTruncate"]
       33 GETIMPORT                        R4 K23 [UDim2.fromScale]
       35 LOADN                            R5 1
       36 LOADN                            R6 0
       37 CALL                             R4 2 1
       38 SETTABLEKS                       R4 R3 K7 ["Size"]
       40 GETIMPORT                        R4 K25 [Enum.AutomaticSize.Y]
       42 SETTABLEKS                       R4 R3 K8 ["AutomaticSize"]
       44 CALL                             R1 2 -1
       45 RETURN                           R1 -1

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
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K4 ["spring"]
        4 GETTABLEKS                       R3 R0 K0 ["R"]
        6 GETUPVAL                         R4 1
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R2 R1 K0 ["R"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K4 ["spring"]
       13 GETTABLEKS                       R3 R0 K1 ["G"]
       15 GETUPVAL                         R4 1
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K1 ["G"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K4 ["spring"]
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
        4 GETTABLEKS                       R8 R0 K2 ["controls"]
        6 GETTABLEKS                       R7 R8 K3 ["numTitleLines"]
        8 ORK                              R6 R7 K1 [0]
        9 GETTABLEKS                       R8 R0 K2 ["controls"]
       11 GETTABLEKS                       R7 R8 K4 ["numSubtitleLines"]
       13 ADD                              R5 R6 R7
       14 ADDK                             R4 R5 K0 [1]
       15 MUL                              R3 R4 R2
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R4 R5 K5 ["createElement"]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R5 R6 K6 ["Root"]
       22 DUPTABLE                         R6 K10 [{"FillDirection", "Size", "isContained"}]
       23 GETTABLEKS                       R8 R0 K2 ["controls"]
       25 GETTABLEKS                       R7 R8 K11 ["fillDirection"]
       27 SETTABLEKS                       R7 R6 K7 ["FillDirection"]
       29 GETTABLEKS                       R9 R0 K2 ["controls"]
       31 GETTABLEKS                       R8 R9 K11 ["fillDirection"]
       33 GETIMPORT                        R9 K14 [Enum.FillDirection.Vertical]
       35 JUMPIFNOTEQ                      R8 R9 ; [+8]
       37 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       39 LOADN                            R8 150
       40 LOADN                            R10 19
       41 ADD                              R9 R10 R3
       42 CALL                             R7 2 1
       43 JUMP                             ; [+6]
       44 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       46 LOADN                            R8 44
       47 LOADN                            R10 150
       48 ADD                              R9 R10 R3
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K8 ["Size"]
       52 GETTABLEKS                       R8 R0 K2 ["controls"]
       54 GETTABLEKS                       R7 R8 K9 ["isContained"]
       56 SETTABLEKS                       R7 R6 K9 ["isContained"]
       58 DUPTABLE                         R7 K20 [{"TileMedia", "TileContent"}]
       59 GETUPVAL                         R9 2
       60 GETTABLEKS                       R8 R9 K5 ["createElement"]
       62 GETUPVAL                         R10 3
       63 GETTABLEKS                       R9 R10 K21 ["Media"]
       65 DUPTABLE                         R10 K26 [{"id", "type", "shape", "background"}]
       66 GETTABLEKS                       R12 R0 K2 ["controls"]
       68 GETTABLEKS                       R11 R12 K27 ["itemId"]
       70 SETTABLEKS                       R11 R10 K22 ["id"]
       72 GETUPVAL                         R12 4
       73 GETTABLEKS                       R11 R12 K28 ["Asset"]
       75 SETTABLEKS                       R11 R10 K23 ["type"]
       77 GETTABLEKS                       R12 R0 K2 ["controls"]
       79 GETTABLEKS                       R11 R12 K24 ["shape"]
       81 SETTABLEKS                       R11 R10 K24 ["shape"]
       83 DUPTABLE                         R11 K30 [{"style"}]
       84 GETTABLEKS                       R14 R1 K31 ["Color"]
       86 GETTABLEKS                       R13 R14 K32 ["Shift"]
       88 GETTABLEKS                       R12 R13 K33 ["Shift_200"]
       90 SETTABLEKS                       R12 R11 K29 ["style"]
       92 SETTABLEKS                       R11 R10 K25 ["background"]
       94 CALL                             R8 2 1
       95 SETTABLEKS                       R8 R7 K18 ["TileMedia"]
       97 GETUPVAL                         R9 2
       98 GETTABLEKS                       R8 R9 K5 ["createElement"]
      100 GETUPVAL                         R10 3
      101 GETTABLEKS                       R9 R10 K34 ["Content"]
      103 NEWTABLE                         R10 0 0
      105 DUPTABLE                         R11 K37 [{"TileHeader", "TileFooter"}]
      106 GETUPVAL                         R13 2
      107 GETTABLEKS                       R12 R13 K5 ["createElement"]
      109 GETUPVAL                         R14 3
      110 GETTABLEKS                       R13 R14 K38 ["Header"]
      112 DUPTABLE                         R14 K41 [{"title", "subtitle"}]
      113 DUPTABLE                         R15 K46 [{"text", "isLoading", "fontStyle", "numLines"}]
      114 GETTABLEKS                       R17 R0 K2 ["controls"]
      116 GETTABLEKS                       R16 R17 K39 ["title"]
      118 SETTABLEKS                       R16 R15 K42 ["text"]
      120 GETTABLEKS                       R18 R0 K2 ["controls"]
      122 GETTABLEKS                       R17 R18 K39 ["title"]
      124 JUMPIFEQKNIL                     R17 ; [+2]
      126 LOADB                            R16 0 +1
      127 LOADB                            R16 1
      128 SETTABLEKS                       R16 R15 K43 ["isLoading"]
      130 GETTABLEKS                       R17 R1 K47 ["Typography"]
      132 GETTABLEKS                       R16 R17 K48 ["HeadingSmall"]
      134 SETTABLEKS                       R16 R15 K44 ["fontStyle"]
      136 GETTABLEKS                       R17 R0 K2 ["controls"]
      138 GETTABLEKS                       R16 R17 K3 ["numTitleLines"]
      140 SETTABLEKS                       R16 R15 K45 ["numLines"]
      142 SETTABLEKS                       R15 R14 K39 ["title"]
      144 DUPTABLE                         R15 K50 [{"text", "isLoading", "fontStyle", "colorStyle", "numLines"}]
      145 GETTABLEKS                       R17 R0 K2 ["controls"]
      147 GETTABLEKS                       R16 R17 K40 ["subtitle"]
      149 SETTABLEKS                       R16 R15 K42 ["text"]
      151 GETTABLEKS                       R18 R0 K2 ["controls"]
      153 GETTABLEKS                       R17 R18 K40 ["subtitle"]
      155 JUMPIFEQKNIL                     R17 ; [+2]
      157 LOADB                            R16 0 +1
      158 LOADB                            R16 1
      159 SETTABLEKS                       R16 R15 K43 ["isLoading"]
      161 GETTABLEKS                       R17 R1 K47 ["Typography"]
      163 GETTABLEKS                       R16 R17 K51 ["BodyLarge"]
      165 SETTABLEKS                       R16 R15 K44 ["fontStyle"]
      167 GETTABLEKS                       R18 R1 K31 ["Color"]
      169 GETTABLEKS                       R17 R18 K34 ["Content"]
      171 GETTABLEKS                       R16 R17 K52 ["Muted"]
      173 SETTABLEKS                       R16 R15 K49 ["colorStyle"]
      175 GETTABLEKS                       R17 R0 K2 ["controls"]
      177 GETTABLEKS                       R16 R17 K4 ["numSubtitleLines"]
      179 SETTABLEKS                       R16 R15 K45 ["numLines"]
      181 SETTABLEKS                       R15 R14 K40 ["subtitle"]
      183 CALL                             R12 2 1
      184 SETTABLEKS                       R12 R11 K35 ["TileHeader"]
      186 GETUPVAL                         R13 2
      187 GETTABLEKS                       R12 R13 K5 ["createElement"]
      189 GETUPVAL                         R14 3
      190 GETTABLEKS                       R13 R14 K53 ["Footer"]
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
        3 GETTABLEKS                       R8 R1 K1 ["Config"]
        5 GETTABLEKS                       R7 R8 K2 ["ColorMode"]
        7 GETTABLEKS                       R6 R7 K3 ["Name"]
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R7 R8 K4 ["Dark"]
       12 JUMPIFNOTEQ                      R6 R7 ; [+3]
       14 LOADK                            R5 K5 ["dark"]
       15 JUMP                             ; [+1]
       16 LOADK                            R5 K6 ["light"]
       17 NAMECALL                         R3 R3 K7 ["format"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K8 ["useState"]
       24 NEWTABLE                         R4 0 0
       26 CALL                             R3 1 2
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R5 R6 K8 ["useState"]
       30 LOADNIL                          R6
       31 CALL                             R5 1 2
       32 GETTABLEKS                       R8 R0 K9 ["controls"]
       34 GETTABLEKS                       R7 R8 K10 ["itemId"]
       36 GETUPVAL                         R9 2
       37 GETTABLEKS                       R8 R9 K11 ["useEffect"]
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
       56 GETUPVAL                         R11 2
       57 GETTABLEKS                       R10 R11 K12 ["createElement"]
       59 GETUPVAL                         R12 7
       60 GETTABLEKS                       R11 R12 K13 ["Root"]
       62 DUPTABLE                         R12 K17 [{"isContained", "FillDirection", "Size"}]
       63 LOADB                            R13 1
       64 SETTABLEKS                       R13 R12 K14 ["isContained"]
       66 GETIMPORT                        R13 K20 [Enum.FillDirection.Horizontal]
       68 SETTABLEKS                       R13 R12 K15 ["FillDirection"]
       70 GETIMPORT                        R14 K23 [UDim2.fromOffset]
       72 LOADN                            R15 44
       73 LOADN                            R17 150
       74 ADD                              R16 R17 R9
       75 CALL                             R14 2 1
       76 GETIMPORT                        R15 K23 [UDim2.fromOffset]
       78 LOADN                            R16 2
       79 LOADN                            R17 2
       80 CALL                             R15 2 1
       81 SUB                              R13 R14 R15
       82 SETTABLEKS                       R13 R12 K16 ["Size"]
       84 DUPTABLE                         R13 K26 [{"TileMedia", "TileContent"}]
       85 GETUPVAL                         R15 2
       86 GETTABLEKS                       R14 R15 K12 ["createElement"]
       88 GETUPVAL                         R16 7
       89 GETTABLEKS                       R15 R16 K27 ["Media"]
       91 DUPTABLE                         R16 K30 [{"shape", "background"}]
       92 GETUPVAL                         R18 8
       93 GETTABLEKS                       R17 R18 K31 ["Square"]
       95 SETTABLEKS                       R17 R16 K28 ["shape"]
       97 DUPTABLE                         R17 K33 [{"image"}]
       98 SETTABLEKS                       R2 R17 K32 ["image"]
      100 SETTABLEKS                       R17 R16 K29 ["background"]
      102 NEWTABLE                         R17 0 1
      104 JUMPIFNOT                        R5 ; [+12]
      105 GETUPVAL                         R19 2
      106 GETTABLEKS                       R18 R19 K12 ["createElement"]
      108 GETUPVAL                         R19 9
      109 DUPTABLE                         R20 K36 [{"model", "rotationSpeed"}]
      110 SETTABLEKS                       R5 R20 K34 ["model"]
      112 LOADK                            R21 K37 [0.01]
      113 SETTABLEKS                       R21 R20 K35 ["rotationSpeed"]
      115 CALL                             R18 2 1
      116 JUMP                             ; [+1]
      117 LOADNIL                          R18
      118 SETLIST                          R17 R18 1 [1]
      120 CALL                             R14 3 1
      121 SETTABLEKS                       R14 R13 K24 ["TileMedia"]
      123 GETUPVAL                         R15 2
      124 GETTABLEKS                       R14 R15 K12 ["createElement"]
      126 GETUPVAL                         R16 7
      127 GETTABLEKS                       R15 R16 K38 ["Content"]
      129 NEWTABLE                         R16 0 0
      131 DUPTABLE                         R17 K40 [{"TileHeader"}]
      132 GETUPVAL                         R19 2
      133 GETTABLEKS                       R18 R19 K12 ["createElement"]
      135 GETUPVAL                         R20 7
      136 GETTABLEKS                       R19 R20 K41 ["Header"]
      138 DUPTABLE                         R20 K44 [{"title", "subtitle"}]
      139 DUPTABLE                         R21 K49 [{"text", "isLoading", "fontStyle", "numLines"}]
      140 GETTABLEKS                       R22 R3 K3 ["Name"]
      142 SETTABLEKS                       R22 R21 K45 ["text"]
      144 GETTABLEKS                       R23 R3 K3 ["Name"]
      146 JUMPIFEQKNIL                     R23 ; [+2]
      148 LOADB                            R22 0 +1
      149 LOADB                            R22 1
      150 SETTABLEKS                       R22 R21 K46 ["isLoading"]
      152 GETTABLEKS                       R23 R1 K50 ["Typography"]
      154 GETTABLEKS                       R22 R23 K51 ["HeadingSmall"]
      156 SETTABLEKS                       R22 R21 K47 ["fontStyle"]
      158 LOADN                            R22 2
      159 SETTABLEKS                       R22 R21 K48 ["numLines"]
      161 SETTABLEKS                       R21 R20 K42 ["title"]
      163 DUPTABLE                         R21 K53 [{"text", "isLoading", "fontStyle", "colorStyle", "numLines"}]
      164 GETTABLEKS                       R22 R3 K54 ["PriceText"]
      166 SETTABLEKS                       R22 R21 K45 ["text"]
      168 GETTABLEKS                       R23 R3 K54 ["PriceText"]
      170 JUMPIFEQKNIL                     R23 ; [+2]
      172 LOADB                            R22 0 +1
      173 LOADB                            R22 1
      174 SETTABLEKS                       R22 R21 K46 ["isLoading"]
      176 GETTABLEKS                       R23 R1 K50 ["Typography"]
      178 GETTABLEKS                       R22 R23 K55 ["BodyLarge"]
      180 SETTABLEKS                       R22 R21 K47 ["fontStyle"]
      182 GETTABLEKS                       R24 R1 K56 ["Color"]
      184 GETTABLEKS                       R23 R24 K38 ["Content"]
      186 GETTABLEKS                       R22 R23 K57 ["Muted"]
      188 SETTABLEKS                       R22 R21 K52 ["colorStyle"]
      190 LOADN                            R22 1
      191 SETTABLEKS                       R22 R21 K48 ["numLines"]
      193 SETTABLEKS                       R21 R20 K43 ["subtitle"]
      195 CALL                             R18 2 1
      196 SETTABLEKS                       R18 R17 K39 ["TileHeader"]
      198 CALL                             R14 3 1
      199 SETTABLEKS                       R14 R13 K25 ["TileContent"]
      201 CALL                             R10 3 -1
      202 RETURN                           R10 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["Size"]
        5 GETTABLEKS                       R0 R1 K1 ["Size_200"]
        7 JUMP                             ; [+1]
        8 LOADN                            R0 0
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R2 R3 K2 ["ease"]
       13 MOVE                             R3 R0
       14 DUPTABLE                         R4 K5 [{"duration", "easingStyle"}]
       15 LOADK                            R5 K6 [0.3]
       16 SETTABLEKS                       R5 R4 K3 ["duration"]
       18 NEWTABLE                         R5 0 4
       20 LOADK                            R6 K7 [0.2]
       21 LOADN                            R7 0
       22 LOADN                            R8 0
       23 LOADN                            R9 1
       24 SETLIST                          R5 R6 4 [1]
       26 SETTABLEKS                       R5 R4 K4 ["easingStyle"]
       28 CALL                             R2 2 -1
       29 CALL                             R1 -1 0
       30 RETURN                           R0 0

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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K0 ["useState"]
       10 LOADB                            R5 0
       11 CALL                             R4 1 2
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K1 ["useCallback"]
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R8 0 1
       20 MOVE                             R9 R3
       21 SETLIST                          R8 R9 1 [1]
       23 CALL                             R6 2 1
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K1 ["useCallback"]
       27 NEWCLOSURE                       R8 P1
       28 CAPTURE                          VAL R5
       29 CAPTURE                          UPVAL U2
       30 NEWTABLE                         R9 0 1
       32 MOVE                             R10 R5
       33 SETLIST                          R9 R10 1 [1]
       35 CALL                             R7 2 1
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R8 R9 K0 ["useState"]
       39 NEWTABLE                         R9 0 0
       41 CALL                             R8 1 2
       42 GETTABLEKS                       R11 R0 K2 ["controls"]
       44 GETTABLEKS                       R10 R11 K3 ["placeId"]
       46 GETUPVAL                         R12 3
       47 GETTABLE                         R11 R12 R10
       48 GETUPVAL                         R13 1
       49 GETTABLEKS                       R12 R13 K4 ["useEffect"]
       51 NEWCLOSURE                       R13 P2
       52 CAPTURE                          VAL R9
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R10
       55 NEWTABLE                         R14 0 1
       57 MOVE                             R15 R10
       58 SETLIST                          R14 R15 1 [1]
       60 CALL                             R12 2 0
       61 GETUPVAL                         R13 5
       62 GETTABLEKS                       R12 R13 K5 ["useAnimatedBinding"]
       64 LOADN                            R13 0
       65 CALL                             R12 1 2
       66 GETUPVAL                         R15 1
       67 GETTABLEKS                       R14 R15 K4 ["useEffect"]
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
       86 GETUPVAL                         R18 1
       87 GETTABLEKS                       R17 R18 K6 ["createElement"]
       89 GETUPVAL                         R18 7
       90 DUPTABLE                         R19 K8 [{"tag"}]
       91 LOADK                            R20 K9 ["auto-xy gap-large padding-small row"]
       92 SETTABLEKS                       R20 R19 K7 ["tag"]
       94 DUPTABLE                         R20 K13 [{"Tile", "WideTileWrapper", "WideTileWithPadding"}]
       95 GETUPVAL                         R22 1
       96 GETTABLEKS                       R21 R22 K6 ["createElement"]
       98 GETUPVAL                         R23 8
       99 GETTABLEKS                       R22 R23 K14 ["Root"]
      101 DUPTABLE                         R23 K20 [{"isContained", "onStateChanged", "FillDirection", "Size", "LayoutOrder"}]
      102 LOADB                            R24 1
      103 SETTABLEKS                       R24 R23 K15 ["isContained"]
      105 SETTABLEKS                       R6 R23 K16 ["onStateChanged"]
      107 GETIMPORT                        R24 K23 [Enum.FillDirection.Vertical]
      109 SETTABLEKS                       R24 R23 K17 ["FillDirection"]
      111 GETUPVAL                         R26 9
      112 GETIMPORT                        R27 K26 [UDim2.fromOffset]
      114 LOADN                            R28 0
      115 MOVE                             R29 R16
      116 CALL                             R27 2 1
      117 ADD                              R25 R26 R27
      118 GETIMPORT                        R26 K26 [UDim2.fromOffset]
      120 LOADN                            R27 2
      121 LOADN                            R28 2
      122 CALL                             R26 2 1
      123 SUB                              R24 R25 R26
      124 SETTABLEKS                       R24 R23 K18 ["Size"]
      126 LOADN                            R24 1
      127 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      129 DUPTABLE                         R24 K29 [{"TileMedia", "TileContent"}]
      130 GETUPVAL                         R26 1
      131 GETTABLEKS                       R25 R26 K6 ["createElement"]
      133 GETUPVAL                         R27 8
      134 GETTABLEKS                       R26 R27 K30 ["Media"]
      136 DUPTABLE                         R27 K34 [{"id", "type", "shape"}]
      137 JUMPIFNOT                        R2 ; [+2]
      138 MOVE                             R28 R10
      139 JUMP                             ; [+1]
      140 MOVE                             R28 R11
      141 SETTABLEKS                       R28 R27 K31 ["id"]
      143 JUMPIFNOT                        R2 ; [+4]
      144 GETUPVAL                         R29 10
      145 GETTABLEKS                       R28 R29 K35 ["Asset"]
      147 JUMP                             ; [+3]
      148 GETUPVAL                         R29 10
      149 GETTABLEKS                       R28 R29 K36 ["GameIcon"]
      151 SETTABLEKS                       R28 R27 K32 ["type"]
      153 JUMPIFNOT                        R2 ; [+4]
      154 GETUPVAL                         R29 11
      155 GETTABLEKS                       R28 R29 K37 ["Landscape"]
      157 JUMP                             ; [+3]
      158 GETUPVAL                         R29 11
      159 GETTABLEKS                       R28 R29 K38 ["Square"]
      161 SETTABLEKS                       R28 R27 K33 ["shape"]
      163 CALL                             R25 2 1
      164 SETTABLEKS                       R25 R24 K27 ["TileMedia"]
      166 GETUPVAL                         R26 1
      167 GETTABLEKS                       R25 R26 K6 ["createElement"]
      169 GETUPVAL                         R27 8
      170 GETTABLEKS                       R26 R27 K39 ["Content"]
      172 NEWTABLE                         R27 0 0
      174 DUPTABLE                         R28 K43 [{"TileHeader", "TileFooter", "TileActions"}]
      175 GETUPVAL                         R30 1
      176 GETTABLEKS                       R29 R30 K6 ["createElement"]
      178 GETUPVAL                         R31 8
      179 GETTABLEKS                       R30 R31 K44 ["Header"]
      181 DUPTABLE                         R31 K46 [{"title"}]
      182 DUPTABLE                         R32 K51 [{"text", "isLoading", "fontStyle", "numLines"}]
      183 GETTABLEKS                       R33 R8 K52 ["Name"]
      185 SETTABLEKS                       R33 R32 K47 ["text"]
      187 GETTABLEKS                       R34 R8 K52 ["Name"]
      189 JUMPIFEQKNIL                     R34 ; [+2]
      191 LOADB                            R33 0 +1
      192 LOADB                            R33 1
      193 SETTABLEKS                       R33 R32 K48 ["isLoading"]
      195 GETTABLEKS                       R34 R1 K53 ["Typography"]
      197 GETTABLEKS                       R33 R34 K54 ["HeadingSmall"]
      199 SETTABLEKS                       R33 R32 K49 ["fontStyle"]
      201 LOADN                            R33 2
      202 SETTABLEKS                       R33 R32 K50 ["numLines"]
      204 SETTABLEKS                       R32 R31 K45 ["title"]
      206 CALL                             R29 2 1
      207 SETTABLEKS                       R29 R28 K40 ["TileHeader"]
      209 GETUPVAL                         R30 1
      210 GETTABLEKS                       R29 R30 K6 ["createElement"]
      212 GETUPVAL                         R31 8
      213 GETTABLEKS                       R30 R31 K55 ["Footer"]
      215 NEWTABLE                         R31 0 0
      217 NEWTABLE                         R32 0 1
      219 GETUPVAL                         R33 12
      220 MOVE                             R34 R1
      221 CALL                             R33 1 -1
      222 SETLIST                          R32 R33 -1 [1]
      224 CALL                             R29 3 1
      225 SETTABLEKS                       R29 R28 K41 ["TileFooter"]
      227 GETUPVAL                         R30 1
      228 GETTABLEKS                       R29 R30 K6 ["createElement"]
      230 GETUPVAL                         R31 8
      231 GETTABLEKS                       R30 R31 K56 ["Actions"]
      233 DUPTABLE                         R31 K58 [{"Visible"}]
      234 SETTABLEKS                       R2 R31 K57 ["Visible"]
      236 DUPTABLE                         R32 K60 [{"Button"}]
      237 GETUPVAL                         R34 1
      238 GETTABLEKS                       R33 R34 K6 ["createElement"]
      240 GETUPVAL                         R34 13
      241 DUPTABLE                         R35 K65 [{"text", "size", "variant", "fillBehavior", "onActivated"}]
      242 LOADK                            R36 K66 ["Play"]
      243 SETTABLEKS                       R36 R35 K47 ["text"]
      245 GETUPVAL                         R37 14
      246 GETTABLEKS                       R36 R37 K67 ["Medium"]
      248 SETTABLEKS                       R36 R35 K61 ["size"]
      250 GETUPVAL                         R37 15
      251 GETTABLEKS                       R36 R37 K68 ["Emphasis"]
      253 SETTABLEKS                       R36 R35 K62 ["variant"]
      255 GETUPVAL                         R37 16
      256 GETTABLEKS                       R36 R37 K69 ["Fill"]
      258 SETTABLEKS                       R36 R35 K63 ["fillBehavior"]
      260 DUPCLOSURE                       R36 K70 [PROTO_15]
      261 SETTABLEKS                       R36 R35 K64 ["onActivated"]
      263 CALL                             R33 2 1
      264 SETTABLEKS                       R33 R32 K59 ["Button"]
      266 CALL                             R29 3 1
      267 SETTABLEKS                       R29 R28 K42 ["TileActions"]
      269 CALL                             R25 3 1
      270 SETTABLEKS                       R25 R24 K28 ["TileContent"]
      272 CALL                             R21 3 1
      273 SETTABLEKS                       R21 R20 K10 ["Tile"]
      275 GETUPVAL                         R22 1
      276 GETTABLEKS                       R21 R22 K6 ["createElement"]
      278 GETUPVAL                         R22 7
      279 DUPTABLE                         R23 K71 [{"Size", "LayoutOrder"}]
      280 GETUPVAL                         R24 17
      281 SETTABLEKS                       R24 R23 K18 ["Size"]
      283 LOADN                            R24 2
      284 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      286 DUPTABLE                         R24 K73 [{"WideTile"}]
      287 GETUPVAL                         R26 1
      288 GETTABLEKS                       R25 R26 K6 ["createElement"]
      290 GETUPVAL                         R27 8
      291 GETTABLEKS                       R26 R27 K14 ["Root"]
      293 DUPTABLE                         R27 K76 [{"onStateChanged", "isContained", "FillDirection", "Size", "AnchorPoint", "Position"}]
      294 SETTABLEKS                       R7 R27 K16 ["onStateChanged"]
      296 LOADB                            R28 0
      297 SETTABLEKS                       R28 R27 K15 ["isContained"]
      299 GETIMPORT                        R28 K23 [Enum.FillDirection.Vertical]
      301 SETTABLEKS                       R28 R27 K17 ["FillDirection"]
      303 NEWCLOSURE                       R30 P5
      304 CAPTURE                          UPVAL U17
      305 CAPTURE                          VAL R15
      306 NAMECALL                         R28 R12 K77 ["map"]
      308 CALL                             R28 2 1
      309 SETTABLEKS                       R28 R27 K18 ["Size"]
      311 GETIMPORT                        R28 K80 [Vector2.new]
      313 LOADK                            R29 K81 [0.5]
      314 LOADK                            R30 K81 [0.5]
      315 CALL                             R28 2 1
      316 SETTABLEKS                       R28 R27 K74 ["AnchorPoint"]
      318 GETIMPORT                        R28 K83 [UDim2.fromScale]
      320 LOADK                            R29 K81 [0.5]
      321 LOADK                            R30 K81 [0.5]
      322 CALL                             R28 2 1
      323 SETTABLEKS                       R28 R27 K75 ["Position"]
      325 DUPTABLE                         R28 K29 [{"TileMedia", "TileContent"}]
      326 GETUPVAL                         R30 1
      327 GETTABLEKS                       R29 R30 K6 ["createElement"]
      329 GETUPVAL                         R31 8
      330 GETTABLEKS                       R30 R31 K30 ["Media"]
      332 DUPTABLE                         R31 K34 [{"id", "type", "shape"}]
      333 SETTABLEKS                       R11 R31 K31 ["id"]
      335 GETUPVAL                         R33 10
      336 GETTABLEKS                       R32 R33 K36 ["GameIcon"]
      338 SETTABLEKS                       R32 R31 K32 ["type"]
      340 GETUPVAL                         R33 11
      341 GETTABLEKS                       R32 R33 K37 ["Landscape"]
      343 SETTABLEKS                       R32 R31 K33 ["shape"]
      345 CALL                             R29 2 1
      346 SETTABLEKS                       R29 R28 K27 ["TileMedia"]
      348 GETUPVAL                         R30 1
      349 GETTABLEKS                       R29 R30 K6 ["createElement"]
      351 GETUPVAL                         R31 8
      352 GETTABLEKS                       R30 R31 K39 ["Content"]
      354 NEWTABLE                         R31 0 0
      356 DUPTABLE                         R32 K84 [{"TileHeader", "TileActions"}]
      357 GETUPVAL                         R34 1
      358 GETTABLEKS                       R33 R34 K6 ["createElement"]
      360 GETUPVAL                         R35 8
      361 GETTABLEKS                       R34 R35 K44 ["Header"]
      363 DUPTABLE                         R35 K86 [{"title", "subtitle"}]
      364 DUPTABLE                         R36 K51 [{"text", "isLoading", "fontStyle", "numLines"}]
      365 GETTABLEKS                       R37 R8 K52 ["Name"]
      367 SETTABLEKS                       R37 R36 K47 ["text"]
      369 GETTABLEKS                       R38 R8 K52 ["Name"]
      371 JUMPIFEQKNIL                     R38 ; [+2]
      373 LOADB                            R37 0 +1
      374 LOADB                            R37 1
      375 SETTABLEKS                       R37 R36 K48 ["isLoading"]
      377 GETTABLEKS                       R38 R1 K53 ["Typography"]
      379 GETTABLEKS                       R37 R38 K87 ["TitleLarge"]
      381 SETTABLEKS                       R37 R36 K49 ["fontStyle"]
      383 LOADN                            R37 2
      384 SETTABLEKS                       R37 R36 K50 ["numLines"]
      386 SETTABLEKS                       R36 R35 K45 ["title"]
      388 LOADK                            R36 K88 ["82% 👍 92k 👤"]
      389 SETTABLEKS                       R36 R35 K85 ["subtitle"]
      391 CALL                             R33 2 1
      392 SETTABLEKS                       R33 R32 K40 ["TileHeader"]
      394 GETUPVAL                         R34 1
      395 GETTABLEKS                       R33 R34 K6 ["createElement"]
      397 GETUPVAL                         R35 8
      398 GETTABLEKS                       R34 R35 K56 ["Actions"]
      400 DUPTABLE                         R35 K58 [{"Visible"}]
      401 SETTABLEKS                       R4 R35 K57 ["Visible"]
      403 DUPTABLE                         R36 K60 [{"Button"}]
      404 GETUPVAL                         R38 1
      405 GETTABLEKS                       R37 R38 K6 ["createElement"]
      407 GETUPVAL                         R38 13
      408 DUPTABLE                         R39 K65 [{"text", "size", "variant", "fillBehavior", "onActivated"}]
      409 LOADK                            R40 K66 ["Play"]
      410 SETTABLEKS                       R40 R39 K47 ["text"]
      412 GETUPVAL                         R41 14
      413 GETTABLEKS                       R40 R41 K67 ["Medium"]
      415 SETTABLEKS                       R40 R39 K61 ["size"]
      417 GETUPVAL                         R41 15
      418 GETTABLEKS                       R40 R41 K68 ["Emphasis"]
      420 SETTABLEKS                       R40 R39 K62 ["variant"]
      422 GETUPVAL                         R41 16
      423 GETTABLEKS                       R40 R41 K69 ["Fill"]
      425 SETTABLEKS                       R40 R39 K63 ["fillBehavior"]
      427 DUPCLOSURE                       R40 K89 [PROTO_17]
      428 SETTABLEKS                       R40 R39 K64 ["onActivated"]
      430 CALL                             R37 2 1
      431 SETTABLEKS                       R37 R36 K59 ["Button"]
      433 CALL                             R33 3 1
      434 SETTABLEKS                       R33 R32 K42 ["TileActions"]
      436 CALL                             R29 3 1
      437 SETTABLEKS                       R29 R28 K28 ["TileContent"]
      439 CALL                             R25 3 1
      440 SETTABLEKS                       R25 R24 K72 ["WideTile"]
      442 CALL                             R21 3 1
      443 SETTABLEKS                       R21 R20 K11 ["WideTileWrapper"]
      445 GETUPVAL                         R22 1
      446 GETTABLEKS                       R21 R22 K6 ["createElement"]
      448 GETUPVAL                         R22 7
      449 DUPTABLE                         R23 K71 [{"Size", "LayoutOrder"}]
      450 GETUPVAL                         R24 17
      451 SETTABLEKS                       R24 R23 K18 ["Size"]
      453 LOADN                            R24 3
      454 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      456 DUPTABLE                         R24 K73 [{"WideTile"}]
      457 GETUPVAL                         R26 1
      458 GETTABLEKS                       R25 R26 K6 ["createElement"]
      460 GETUPVAL                         R27 8
      461 GETTABLEKS                       R26 R27 K14 ["Root"]
      463 DUPTABLE                         R27 K90 [{"isContained", "FillDirection", "Size", "AnchorPoint", "Position"}]
      464 LOADB                            R28 1
      465 SETTABLEKS                       R28 R27 K15 ["isContained"]
      467 GETIMPORT                        R28 K23 [Enum.FillDirection.Vertical]
      469 SETTABLEKS                       R28 R27 K17 ["FillDirection"]
      471 GETUPVAL                         R29 17
      472 GETIMPORT                        R30 K26 [UDim2.fromOffset]
      474 LOADN                            R31 0
      475 MOVE                             R32 R15
      476 CALL                             R30 2 1
      477 ADD                              R28 R29 R30
      478 SETTABLEKS                       R28 R27 K18 ["Size"]
      480 GETIMPORT                        R28 K80 [Vector2.new]
      482 LOADK                            R29 K81 [0.5]
      483 LOADK                            R30 K81 [0.5]
      484 CALL                             R28 2 1
      485 SETTABLEKS                       R28 R27 K74 ["AnchorPoint"]
      487 GETIMPORT                        R28 K83 [UDim2.fromScale]
      489 LOADK                            R29 K81 [0.5]
      490 LOADK                            R30 K81 [0.5]
      491 CALL                             R28 2 1
      492 SETTABLEKS                       R28 R27 K75 ["Position"]
      494 DUPTABLE                         R28 K29 [{"TileMedia", "TileContent"}]
      495 GETUPVAL                         R30 1
      496 GETTABLEKS                       R29 R30 K6 ["createElement"]
      498 GETUPVAL                         R31 8
      499 GETTABLEKS                       R30 R31 K30 ["Media"]
      501 DUPTABLE                         R31 K34 [{"id", "type", "shape"}]
      502 SETTABLEKS                       R11 R31 K31 ["id"]
      504 GETUPVAL                         R33 10
      505 GETTABLEKS                       R32 R33 K36 ["GameIcon"]
      507 SETTABLEKS                       R32 R31 K32 ["type"]
      509 GETUPVAL                         R33 11
      510 GETTABLEKS                       R32 R33 K37 ["Landscape"]
      512 SETTABLEKS                       R32 R31 K33 ["shape"]
      514 CALL                             R29 2 1
      515 SETTABLEKS                       R29 R28 K27 ["TileMedia"]
      517 GETUPVAL                         R30 1
      518 GETTABLEKS                       R29 R30 K6 ["createElement"]
      520 GETUPVAL                         R31 8
      521 GETTABLEKS                       R30 R31 K39 ["Content"]
      523 DUPTABLE                         R31 K92 [{"spacing"}]
      524 GETTABLEKS                       R33 R1 K93 ["Gap"]
      526 GETTABLEKS                       R32 R33 K94 ["Small"]
      528 SETTABLEKS                       R32 R31 K91 ["spacing"]
      530 DUPTABLE                         R32 K84 [{"TileHeader", "TileActions"}]
      531 GETUPVAL                         R34 1
      532 GETTABLEKS                       R33 R34 K6 ["createElement"]
      534 GETUPVAL                         R35 8
      535 GETTABLEKS                       R34 R35 K44 ["Header"]
      537 DUPTABLE                         R35 K86 [{"title", "subtitle"}]
      538 DUPTABLE                         R36 K51 [{"text", "isLoading", "fontStyle", "numLines"}]
      539 GETTABLEKS                       R37 R8 K52 ["Name"]
      541 SETTABLEKS                       R37 R36 K47 ["text"]
      543 GETTABLEKS                       R38 R8 K52 ["Name"]
      545 JUMPIFEQKNIL                     R38 ; [+2]
      547 LOADB                            R37 0 +1
      548 LOADB                            R37 1
      549 SETTABLEKS                       R37 R36 K48 ["isLoading"]
      551 GETTABLEKS                       R38 R1 K53 ["Typography"]
      553 GETTABLEKS                       R37 R38 K87 ["TitleLarge"]
      555 SETTABLEKS                       R37 R36 K49 ["fontStyle"]
      557 LOADN                            R37 2
      558 SETTABLEKS                       R37 R36 K50 ["numLines"]
      560 SETTABLEKS                       R36 R35 K45 ["title"]
      562 LOADK                            R36 K88 ["82% 👍 92k 👤"]
      563 SETTABLEKS                       R36 R35 K85 ["subtitle"]
      565 CALL                             R33 2 1
      566 SETTABLEKS                       R33 R32 K40 ["TileHeader"]
      568 GETUPVAL                         R34 1
      569 GETTABLEKS                       R33 R34 K6 ["createElement"]
      571 GETUPVAL                         R35 8
      572 GETTABLEKS                       R34 R35 K56 ["Actions"]
      574 NEWTABLE                         R35 0 0
      576 DUPTABLE                         R36 K60 [{"Button"}]
      577 GETUPVAL                         R38 1
      578 GETTABLEKS                       R37 R38 K6 ["createElement"]
      580 GETUPVAL                         R38 13
      581 DUPTABLE                         R39 K65 [{"text", "size", "variant", "fillBehavior", "onActivated"}]
      582 LOADK                            R40 K66 ["Play"]
      583 SETTABLEKS                       R40 R39 K47 ["text"]
      585 GETUPVAL                         R41 14
      586 GETTABLEKS                       R40 R41 K67 ["Medium"]
      588 SETTABLEKS                       R40 R39 K61 ["size"]
      590 GETUPVAL                         R41 15
      591 GETTABLEKS                       R40 R41 K68 ["Emphasis"]
      593 SETTABLEKS                       R40 R39 K62 ["variant"]
      595 GETUPVAL                         R41 16
      596 GETTABLEKS                       R40 R41 K69 ["Fill"]
      598 SETTABLEKS                       R40 R39 K63 ["fillBehavior"]
      600 DUPCLOSURE                       R40 K95 [PROTO_18]
      601 SETTABLEKS                       R40 R39 K64 ["onActivated"]
      603 CALL                             R37 2 1
      604 SETTABLEKS                       R37 R36 K59 ["Button"]
      606 CALL                             R33 3 1
      607 SETTABLEKS                       R33 R32 K42 ["TileActions"]
      609 CALL                             R29 3 1
      610 SETTABLEKS                       R29 R28 K28 ["TileContent"]
      612 CALL                             R25 3 1
      613 SETTABLEKS                       R25 R24 K72 ["WideTile"]
      615 CALL                             R21 3 1
      616 SETTABLEKS                       R21 R20 K12 ["WideTileWithPadding"]
      618 CALL                             R17 3 -1
      619 RETURN                           R17 -1

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
        3 GETTABLEKS                       R8 R1 K1 ["Config"]
        5 GETTABLEKS                       R7 R8 K2 ["ColorMode"]
        7 GETTABLEKS                       R6 R7 K3 ["Name"]
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R7 R8 K4 ["Dark"]
       12 JUMPIFNOTEQ                      R6 R7 ; [+3]
       14 LOADK                            R5 K5 ["dark"]
       15 JUMP                             ; [+1]
       16 LOADK                            R5 K6 ["light"]
       17 NAMECALL                         R3 R3 K7 ["format"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K8 ["useState"]
       24 NEWTABLE                         R4 0 0
       26 CALL                             R3 1 2
       27 GETTABLEKS                       R6 R0 K9 ["controls"]
       29 GETTABLEKS                       R5 R6 K10 ["itemId"]
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R6 R7 K11 ["useEffect"]
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
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R8 R9 K12 ["createElement"]
       51 GETUPVAL                         R10 5
       52 GETTABLEKS                       R9 R10 K13 ["Root"]
       54 DUPTABLE                         R10 K17 [{"isContained", "FillDirection", "Size"}]
       55 LOADB                            R11 1
       56 SETTABLEKS                       R11 R10 K14 ["isContained"]
       58 GETIMPORT                        R11 K20 [Enum.FillDirection.Vertical]
       60 SETTABLEKS                       R11 R10 K15 ["FillDirection"]
       62 GETUPVAL                         R13 6
       63 GETIMPORT                        R14 K23 [UDim2.fromOffset]
       65 LOADN                            R15 0
       66 MOVE                             R16 R7
       67 CALL                             R14 2 1
       68 ADD                              R12 R13 R14
       69 GETIMPORT                        R13 K23 [UDim2.fromOffset]
       71 LOADN                            R14 2
       72 LOADN                            R15 2
       73 CALL                             R13 2 1
       74 SUB                              R11 R12 R13
       75 SETTABLEKS                       R11 R10 K16 ["Size"]
       77 DUPTABLE                         R11 K26 [{"TileMedia", "TileContent"}]
       78 GETUPVAL                         R13 2
       79 GETTABLEKS                       R12 R13 K12 ["createElement"]
       81 GETUPVAL                         R14 5
       82 GETTABLEKS                       R13 R14 K27 ["Media"]
       84 DUPTABLE                         R14 K32 [{"id", "type", "shape", "background"}]
       85 SETTABLEKS                       R5 R14 K28 ["id"]
       87 GETUPVAL                         R16 7
       88 GETTABLEKS                       R15 R16 K33 ["Asset"]
       90 SETTABLEKS                       R15 R14 K29 ["type"]
       92 GETUPVAL                         R16 8
       93 GETTABLEKS                       R15 R16 K34 ["Square"]
       95 SETTABLEKS                       R15 R14 K30 ["shape"]
       97 DUPTABLE                         R15 K36 [{"image"}]
       98 SETTABLEKS                       R2 R15 K35 ["image"]
      100 SETTABLEKS                       R15 R14 K31 ["background"]
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K24 ["TileMedia"]
      105 GETUPVAL                         R13 2
      106 GETTABLEKS                       R12 R13 K12 ["createElement"]
      108 GETUPVAL                         R14 5
      109 GETTABLEKS                       R13 R14 K37 ["Content"]
      111 NEWTABLE                         R14 0 0
      113 DUPTABLE                         R15 K39 [{"TileHeader"}]
      114 GETUPVAL                         R17 2
      115 GETTABLEKS                       R16 R17 K12 ["createElement"]
      117 GETUPVAL                         R18 5
      118 GETTABLEKS                       R17 R18 K40 ["Header"]
      120 DUPTABLE                         R18 K43 [{"title", "subtitle"}]
      121 DUPTABLE                         R19 K48 [{"text", "isLoading", "fontStyle", "numLines"}]
      122 GETTABLEKS                       R20 R3 K3 ["Name"]
      124 SETTABLEKS                       R20 R19 K44 ["text"]
      126 GETTABLEKS                       R21 R3 K3 ["Name"]
      128 JUMPIFEQKNIL                     R21 ; [+2]
      130 LOADB                            R20 0 +1
      131 LOADB                            R20 1
      132 SETTABLEKS                       R20 R19 K45 ["isLoading"]
      134 GETTABLEKS                       R21 R1 K49 ["Typography"]
      136 GETTABLEKS                       R20 R21 K50 ["HeadingSmall"]
      138 SETTABLEKS                       R20 R19 K46 ["fontStyle"]
      140 LOADN                            R20 2
      141 SETTABLEKS                       R20 R19 K47 ["numLines"]
      143 SETTABLEKS                       R19 R18 K41 ["title"]
      145 DUPTABLE                         R19 K52 [{"text", "isLoading", "fontStyle", "colorStyle", "numLines"}]
      146 GETTABLEKS                       R20 R3 K53 ["PriceText"]
      148 SETTABLEKS                       R20 R19 K44 ["text"]
      150 GETTABLEKS                       R21 R3 K53 ["PriceText"]
      152 JUMPIFEQKNIL                     R21 ; [+2]
      154 LOADB                            R20 0 +1
      155 LOADB                            R20 1
      156 SETTABLEKS                       R20 R19 K45 ["isLoading"]
      158 GETTABLEKS                       R21 R1 K49 ["Typography"]
      160 GETTABLEKS                       R20 R21 K54 ["BodyLarge"]
      162 SETTABLEKS                       R20 R19 K46 ["fontStyle"]
      164 GETTABLEKS                       R22 R1 K55 ["Color"]
      166 GETTABLEKS                       R21 R22 K37 ["Content"]
      168 GETTABLEKS                       R20 R21 K56 ["Muted"]
      170 SETTABLEKS                       R20 R19 K51 ["colorStyle"]
      172 LOADN                            R20 1
      173 SETTABLEKS                       R20 R19 K47 ["numLines"]
      175 SETTABLEKS                       R19 R18 K42 ["subtitle"]
      177 CALL                             R16 2 1
      178 SETTABLEKS                       R16 R15 K38 ["TileHeader"]
      180 CALL                             R12 3 1
      181 SETTABLEKS                       R12 R11 K25 ["TileContent"]
      183 CALL                             R8 3 -1
      184 RETURN                           R8 -1

PROTO_23:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Relevancy Info Pressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
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
        0 DUPTABLE                         R1 K1 [{"Color3"}]
        1 GETIMPORT                        R2 K3 [Color3.new]
        3 GETTABLEKS                       R3 R0 K4 ["R"]
        5 GETTABLEKS                       R4 R0 K5 ["G"]
        7 GETTABLEKS                       R5 R0 K6 ["B"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"onActivated", "isDisabled", "variant", "size", "icon"}]
        5 GETTABLEKS                       R4 R0 K1 ["onActivated"]
        7 SETTABLEKS                       R4 R3 K1 ["onActivated"]
        9 GETTABLEKS                       R4 R0 K2 ["isDisabled"]
       11 SETTABLEKS                       R4 R3 K2 ["isDisabled"]
       13 GETTABLEKS                       R4 R0 K3 ["variant"]
       15 SETTABLEKS                       R4 R3 K3 ["variant"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K7 ["Medium"]
       20 SETTABLEKS                       R4 R3 K4 ["size"]
       22 GETTABLEKS                       R4 R0 K5 ["icon"]
       24 SETTABLEKS                       R4 R3 K5 ["icon"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 LOADK                            R2 K0 ["component_assets/avatarBG_%*"]
        3 GETTABLEKS                       R7 R0 K1 ["Config"]
        5 GETTABLEKS                       R6 R7 K2 ["ColorMode"]
        7 GETTABLEKS                       R5 R6 K3 ["Name"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R6 R7 K4 ["Dark"]
       12 JUMPIFNOTEQ                      R5 R6 ; [+3]
       14 LOADK                            R4 K5 ["dark"]
       15 JUMP                             ; [+1]
       16 LOADK                            R4 K6 ["light"]
       17 NAMECALL                         R2 R2 K7 ["format"]
       19 CALL                             R2 2 1
       20 MOVE                             R1 R2
       21 DUPTABLE                         R2 K16 [{"text", "icon", "fontStyle", "iconTextSpacing", "iconPadding", "iconSize", "textHeight", "onActivated"}]
       22 LOADK                            R3 K17 ["Hueblox"]
       23 SETTABLEKS                       R3 R2 K8 ["text"]
       25 LOADK                            R3 K18 ["icons/common/play"]
       26 SETTABLEKS                       R3 R2 K9 ["icon"]
       28 GETTABLEKS                       R4 R0 K19 ["Typography"]
       30 GETTABLEKS                       R3 R4 K20 ["CaptionLarge"]
       32 SETTABLEKS                       R3 R2 K10 ["fontStyle"]
       34 GETTABLEKS                       R4 R0 K21 ["Gap"]
       36 GETTABLEKS                       R3 R4 K22 ["XSmall"]
       38 SETTABLEKS                       R3 R2 K11 ["iconTextSpacing"]
       40 LOADN                            R3 0
       41 SETTABLEKS                       R3 R2 K12 ["iconPadding"]
       43 GETIMPORT                        R3 K25 [UDim2.fromOffset]
       45 GETTABLEKS                       R5 R0 K26 ["Size"]
       47 GETTABLEKS                       R4 R5 K27 ["Size_300"]
       49 GETTABLEKS                       R6 R0 K26 ["Size"]
       51 GETTABLEKS                       R5 R6 K27 ["Size_300"]
       53 CALL                             R3 2 1
       54 SETTABLEKS                       R3 R2 K13 ["iconSize"]
       56 GETTABLEKS                       R4 R0 K26 ["Size"]
       58 GETTABLEKS                       R3 R4 K28 ["Size_700"]
       60 SETTABLEKS                       R3 R2 K14 ["textHeight"]
       62 DUPCLOSURE                       R3 K29 [PROTO_23]
       63 SETTABLEKS                       R3 R2 K15 ["onActivated"]
       65 GETUPVAL                         R4 2
       66 GETTABLEKS                       R3 R4 K30 ["useState"]
       68 NEWTABLE                         R4 0 0
       70 CALL                             R3 1 2
       71 GETUPVAL                         R6 2
       72 GETTABLEKS                       R5 R6 K30 ["useState"]
       74 LOADB                            R6 0
       75 CALL                             R5 1 2
       76 GETUPVAL                         R8 2
       77 GETTABLEKS                       R7 R8 K31 ["useCallback"]
       79 NEWCLOSURE                       R8 P1
       80 CAPTURE                          VAL R6
       81 CAPTURE                          UPVAL U3
       82 NEWTABLE                         R9 0 1
       84 MOVE                             R10 R6
       85 SETLIST                          R9 R10 1 [1]
       87 CALL                             R7 2 1
       88 GETTABLEKS                       R12 R0 K32 ["Color"]
       90 GETTABLEKS                       R11 R12 K33 ["Extended"]
       92 GETTABLEKS                       R10 R11 K34 ["White"]
       94 GETTABLEKS                       R9 R10 K35 ["White_100"]
       96 GETTABLEKS                       R8 R9 K36 ["Color3"]
       98 GETTABLEKS                       R13 R0 K32 ["Color"]
      100 GETTABLEKS                       R12 R13 K33 ["Extended"]
      102 GETTABLEKS                       R11 R12 K37 ["Gray"]
      104 GETTABLEKS                       R10 R11 K38 ["Gray_400"]
      106 GETTABLEKS                       R9 R10 K36 ["Color3"]
      108 GETUPVAL                         R11 4
      109 GETTABLEKS                       R10 R11 K39 ["useAnimatedBinding"]
      111 DUPTABLE                         R11 K43 [{"R", "G", "B"}]
      112 GETTABLEKS                       R12 R8 K40 ["R"]
      114 SETTABLEKS                       R12 R11 K40 ["R"]
      116 GETTABLEKS                       R12 R8 K41 ["G"]
      118 SETTABLEKS                       R12 R11 K41 ["G"]
      120 GETTABLEKS                       R12 R8 K42 ["B"]
      122 SETTABLEKS                       R12 R11 K42 ["B"]
      124 CALL                             R10 1 2
      125 GETUPVAL                         R13 2
      126 GETTABLEKS                       R12 R13 K44 ["useEffect"]
      128 NEWCLOSURE                       R13 P2
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R5
      131 CAPTURE                          UPVAL U5
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R8
      134 NEWTABLE                         R14 0 1
      136 MOVE                             R15 R5
      137 SETLIST                          R14 R15 1 [1]
      139 CALL                             R12 2 0
      140 GETUPVAL                         R14 6
      141 GETTABLEKS                       R13 R14 K45 ["LocalPlayer"]
      143 JUMPIFNOT                        R13 ; [+6]
      144 GETUPVAL                         R14 6
      145 GETTABLEKS                       R13 R14 K45 ["LocalPlayer"]
      147 GETTABLEKS                       R12 R13 K46 ["UserId"]
      149 JUMP                             ; [+8]
      150 GETUPVAL                         R13 7
      151 JUMPIFNOT                        R13 ; [+5]
      152 GETUPVAL                         R12 7
      153 NAMECALL                         R12 R12 K47 ["GetUserId"]
      155 CALL                             R12 1 1
      156 JUMP                             ; [+1]
      157 LOADNIL                          R12
      158 GETUPVAL                         R14 2
      159 GETTABLEKS                       R13 R14 K44 ["useEffect"]
      161 NEWCLOSURE                       R14 P3
      162 CAPTURE                          VAL R4
      163 CAPTURE                          UPVAL U8
      164 CAPTURE                          VAL R12
      165 NEWTABLE                         R15 0 1
      167 MOVE                             R16 R12
      168 SETLIST                          R15 R16 1 [1]
      170 CALL                             R13 2 0
      171 LOADN                            R13 1
      172 LOADN                            R14 1
      173 LOADN                            R15 1
      174 GETUPVAL                         R16 9
      175 CALL                             R16 0 1
      176 LOADN                            R18 3
      177 MUL                              R17 R18 R16
      178 LOADN                            R19 2
      179 MUL                              R18 R19 R16
      180 GETUPVAL                         R20 2
      181 GETTABLEKS                       R19 R20 K48 ["createElement"]
      183 GETUPVAL                         R20 10
      184 DUPTABLE                         R21 K50 [{"tag"}]
      185 LOADK                            R22 K51 ["auto-xy gap-large row"]
      186 SETTABLEKS                       R22 R21 K49 ["tag"]
      188 DUPTABLE                         R22 K54 [{"PlayerTile", "OldPlayerTile"}]
      189 GETUPVAL                         R24 2
      190 GETTABLEKS                       R23 R24 K48 ["createElement"]
      192 GETUPVAL                         R25 11
      193 GETTABLEKS                       R24 R25 K55 ["Root"]
      195 DUPTABLE                         R25 K58 [{"FillDirection", "Size", "isContained"}]
      196 GETIMPORT                        R26 K61 [Enum.FillDirection.Vertical]
      198 SETTABLEKS                       R26 R25 K56 ["FillDirection"]
      200 GETUPVAL                         R27 12
      201 GETIMPORT                        R28 K25 [UDim2.fromOffset]
      203 LOADN                            R29 0
      204 MOVE                             R30 R17
      205 CALL                             R28 2 1
      206 ADD                              R26 R27 R28
      207 SETTABLEKS                       R26 R25 K26 ["Size"]
      209 LOADB                            R26 1
      210 SETTABLEKS                       R26 R25 K57 ["isContained"]
      212 DUPTABLE                         R26 K64 [{"TileMedia", "TileContent"}]
      213 GETUPVAL                         R28 2
      214 GETTABLEKS                       R27 R28 K48 ["createElement"]
      216 GETUPVAL                         R29 11
      217 GETTABLEKS                       R28 R29 K65 ["Media"]
      219 DUPTABLE                         R29 K71 [{"id", "type", "shape", "background", "onStateChanged"}]
      220 SETTABLEKS                       R12 R29 K66 ["id"]
      222 GETUPVAL                         R31 13
      223 GETTABLEKS                       R30 R31 K72 ["Avatar"]
      225 SETTABLEKS                       R30 R29 K67 ["type"]
      227 GETUPVAL                         R31 14
      228 GETTABLEKS                       R30 R31 K73 ["Square"]
      230 SETTABLEKS                       R30 R29 K68 ["shape"]
      232 DUPTABLE                         R30 K76 [{"image", "style"}]
      233 SETTABLEKS                       R1 R30 K74 ["image"]
      235 DUPCLOSURE                       R33 K77 [PROTO_28]
      236 NAMECALL                         R31 R10 K78 ["map"]
      238 CALL                             R31 2 1
      239 SETTABLEKS                       R31 R30 K75 ["style"]
      241 SETTABLEKS                       R30 R29 K69 ["background"]
      243 SETTABLEKS                       R7 R29 K70 ["onStateChanged"]
      245 DUPTABLE                         R30 K80 [{"PlayerTileButtons"}]
      246 GETUPVAL                         R32 2
      247 GETTABLEKS                       R31 R32 K48 ["createElement"]
      249 GETUPVAL                         R32 10
      250 DUPTABLE                         R33 K82 [{"ZIndex", "tag"}]
      251 LOADN                            R34 2
      252 SETTABLEKS                       R34 R33 K81 ["ZIndex"]
      254 LOADK                            R34 K83 ["auto-y size-full-0 row gap-small align-x-right align-y-bottom anchor-bottom-right position-bottom-right"]
      255 SETTABLEKS                       R34 R33 K49 ["tag"]
      257 GETUPVAL                         R36 15
      258 GETTABLEKS                       R35 R36 K84 ["List"]
      260 GETTABLEKS                       R34 R35 K78 ["map"]
      262 GETUPVAL                         R35 16
      263 DUPCLOSURE                       R36 K85 [PROTO_29]
      264 CAPTURE                          UPVAL U2
      265 CAPTURE                          UPVAL U17
      266 CAPTURE                          UPVAL U18
      267 CALL                             R34 2 -1
      268 CALL                             R31 -1 1
      269 SETTABLEKS                       R31 R30 K79 ["PlayerTileButtons"]
      271 CALL                             R27 3 1
      272 SETTABLEKS                       R27 R26 K62 ["TileMedia"]
      274 GETUPVAL                         R28 2
      275 GETTABLEKS                       R27 R28 K48 ["createElement"]
      277 GETUPVAL                         R29 11
      278 GETTABLEKS                       R28 R29 K86 ["Content"]
      280 DUPTABLE                         R29 K88 [{"spacing"}]
      281 GETTABLEKS                       R31 R0 K21 ["Gap"]
      283 GETTABLEKS                       R30 R31 K22 ["XSmall"]
      285 SETTABLEKS                       R30 R29 K87 ["spacing"]
      287 DUPTABLE                         R30 K91 [{"TileHeader", "TileFooter"}]
      288 GETUPVAL                         R32 2
      289 GETTABLEKS                       R31 R32 K48 ["createElement"]
      291 GETUPVAL                         R33 11
      292 GETTABLEKS                       R32 R33 K92 ["Header"]
      294 DUPTABLE                         R33 K95 [{"title", "subtitle"}]
      295 DUPTABLE                         R34 K97 [{"text", "isLoading"}]
      296 GETTABLEKS                       R35 R3 K98 ["DisplayName"]
      298 SETTABLEKS                       R35 R34 K8 ["text"]
      300 GETTABLEKS                       R36 R3 K98 ["DisplayName"]
      302 JUMPIFEQKNIL                     R36 ; [+2]
      304 LOADB                            R35 0 +1
      305 LOADB                            R35 1
      306 SETTABLEKS                       R35 R34 K96 ["isLoading"]
      308 SETTABLEKS                       R34 R33 K93 ["title"]
      310 DUPTABLE                         R34 K97 [{"text", "isLoading"}]
      311 GETTABLEKS                       R36 R3 K99 ["Username"]
      313 JUMPIFNOT                        R36 ; [+5]
      314 LOADK                            R36 K100 ["@"]
      315 GETTABLEKS                       R37 R3 K99 ["Username"]
      317 CONCAT                           R35 R36 R37
      318 JUMP                             ; [+1]
      319 LOADNIL                          R35
      320 SETTABLEKS                       R35 R34 K8 ["text"]
      322 GETTABLEKS                       R36 R3 K99 ["Username"]
      324 JUMPIFEQKNIL                     R36 ; [+2]
      326 LOADB                            R35 0 +1
      327 LOADB                            R35 1
      328 SETTABLEKS                       R35 R34 K96 ["isLoading"]
      330 SETTABLEKS                       R34 R33 K94 ["subtitle"]
      332 CALL                             R31 2 1
      333 SETTABLEKS                       R31 R30 K89 ["TileHeader"]
      335 GETUPVAL                         R32 2
      336 GETTABLEKS                       R31 R32 K48 ["createElement"]
      338 GETUPVAL                         R33 11
      339 GETTABLEKS                       R32 R33 K101 ["Footer"]
      341 NEWTABLE                         R33 0 0
      343 DUPTABLE                         R34 K103 [{"RelevancyInfo"}]
      344 GETUPVAL                         R36 2
      345 GETTABLEKS                       R35 R36 K48 ["createElement"]
      347 GETUPVAL                         R36 10
      348 DUPTABLE                         R37 K50 [{"tag"}]
      349 LOADK                            R38 K104 ["row gap-xsmall auto-y size-full-0"]
      350 SETTABLEKS                       R38 R37 K49 ["tag"]
      352 DUPTABLE                         R38 K107 [{"Icon", "Text"}]
      353 GETUPVAL                         R40 2
      354 GETTABLEKS                       R39 R40 K48 ["createElement"]
      356 GETUPVAL                         R40 19
      357 DUPTABLE                         R41 K110 [{"name", "size"}]
      358 GETTABLEKS                       R42 R2 K9 ["icon"]
      360 SETTABLEKS                       R42 R41 K108 ["name"]
      362 GETUPVAL                         R43 20
      363 GETTABLEKS                       R42 R43 K111 ["Small"]
      365 SETTABLEKS                       R42 R41 K109 ["size"]
      367 CALL                             R39 2 1
      368 SETTABLEKS                       R39 R38 K105 ["Icon"]
      370 GETUPVAL                         R40 2
      371 GETTABLEKS                       R39 R40 K48 ["createElement"]
      373 GETUPVAL                         R40 21
      374 DUPTABLE                         R41 K115 [{"textStyle", "fontStyle", "Text", "TextXAlignment", "Size", "AutomaticSize"}]
      375 GETTABLEKS                       R44 R0 K32 ["Color"]
      377 GETTABLEKS                       R43 R44 K86 ["Content"]
      379 GETTABLEKS                       R42 R43 K116 ["Emphasis"]
      381 SETTABLEKS                       R42 R41 K112 ["textStyle"]
      383 GETTABLEKS                       R42 R2 K10 ["fontStyle"]
      385 SETTABLEKS                       R42 R41 K10 ["fontStyle"]
      387 GETTABLEKS                       R42 R2 K8 ["text"]
      389 SETTABLEKS                       R42 R41 K106 ["Text"]
      391 GETIMPORT                        R42 K118 [Enum.TextXAlignment.Left]
      393 SETTABLEKS                       R42 R41 K113 ["TextXAlignment"]
      395 GETIMPORT                        R42 K120 [UDim2.fromScale]
      397 LOADN                            R43 1
      398 LOADN                            R44 0
      399 CALL                             R42 2 1
      400 SETTABLEKS                       R42 R41 K26 ["Size"]
      402 GETIMPORT                        R42 K122 [Enum.AutomaticSize.Y]
      404 SETTABLEKS                       R42 R41 K114 ["AutomaticSize"]
      406 CALL                             R39 2 1
      407 SETTABLEKS                       R39 R38 K106 ["Text"]
      409 CALL                             R35 3 1
      410 SETTABLEKS                       R35 R34 K102 ["RelevancyInfo"]
      412 CALL                             R31 3 1
      413 SETTABLEKS                       R31 R30 K90 ["TileFooter"]
      415 CALL                             R27 3 1
      416 SETTABLEKS                       R27 R26 K63 ["TileContent"]
      418 CALL                             R23 3 1
      419 SETTABLEKS                       R23 R22 K52 ["PlayerTile"]
      421 GETUPVAL                         R24 2
      422 GETTABLEKS                       R23 R24 K48 ["createElement"]
      424 GETUPVAL                         R25 11
      425 GETTABLEKS                       R24 R25 K55 ["Root"]
      427 DUPTABLE                         R25 K123 [{"FillDirection", "Size"}]
      428 GETIMPORT                        R26 K61 [Enum.FillDirection.Vertical]
      430 SETTABLEKS                       R26 R25 K56 ["FillDirection"]
      432 GETIMPORT                        R26 K25 [UDim2.fromOffset]
      434 LOADN                            R27 90
      435 LOADN                            R29 115
      436 ADD                              R28 R29 R18
      437 CALL                             R26 2 1
      438 SETTABLEKS                       R26 R25 K26 ["Size"]
      440 DUPTABLE                         R26 K64 [{"TileMedia", "TileContent"}]
      441 GETUPVAL                         R28 2
      442 GETTABLEKS                       R27 R28 K48 ["createElement"]
      444 GETUPVAL                         R29 11
      445 GETTABLEKS                       R28 R29 K65 ["Media"]
      447 DUPTABLE                         R29 K124 [{"id", "type", "shape", "background"}]
      448 SETTABLEKS                       R12 R29 K66 ["id"]
      450 GETUPVAL                         R31 13
      451 GETTABLEKS                       R30 R31 K125 ["AvatarHeadShot"]
      453 SETTABLEKS                       R30 R29 K67 ["type"]
      455 GETUPVAL                         R31 14
      456 GETTABLEKS                       R30 R31 K126 ["Circle"]
      458 SETTABLEKS                       R30 R29 K68 ["shape"]
      460 DUPTABLE                         R30 K127 [{"image"}]
      461 SETTABLEKS                       R1 R30 K74 ["image"]
      463 SETTABLEKS                       R30 R29 K69 ["background"]
      465 NEWTABLE                         R30 0 1
      467 GETUPVAL                         R32 2
      468 GETTABLEKS                       R31 R32 K48 ["createElement"]
      470 GETUPVAL                         R32 22
      471 DUPTABLE                         R33 K129 [{"tag", "Image"}]
      472 LOADK                            R34 K130 ["position-bottom-right anchor-center-center size-700-700 bg-system-success stroke-emphasis radius-circle"]
      473 SETTABLEKS                       R34 R33 K49 ["tag"]
      475 LOADK                            R34 K131 ["icons/placeholder/placeholderOff"]
      476 SETTABLEKS                       R34 R33 K128 ["Image"]
      478 CALL                             R31 2 -1
      479 SETLIST                          R30 R31 -1 [1]
      481 CALL                             R27 3 1
      482 SETTABLEKS                       R27 R26 K62 ["TileMedia"]
      484 GETUPVAL                         R28 2
      485 GETTABLEKS                       R27 R28 K48 ["createElement"]
      487 GETUPVAL                         R29 11
      488 GETTABLEKS                       R28 R29 K86 ["Content"]
      490 DUPTABLE                         R29 K88 [{"spacing"}]
      491 GETTABLEKS                       R31 R0 K21 ["Gap"]
      493 GETTABLEKS                       R30 R31 K132 ["XXSmall"]
      495 SETTABLEKS                       R30 R29 K87 ["spacing"]
      497 DUPTABLE                         R30 K133 [{"TileHeader"}]
      498 GETUPVAL                         R32 2
      499 GETTABLEKS                       R31 R32 K48 ["createElement"]
      501 GETUPVAL                         R33 11
      502 GETTABLEKS                       R32 R33 K92 ["Header"]
      504 DUPTABLE                         R33 K134 [{"title", "subtitle", "TextXAlignment"}]
      505 DUPTABLE                         R34 K97 [{"text", "isLoading"}]
      506 GETTABLEKS                       R35 R3 K98 ["DisplayName"]
      508 SETTABLEKS                       R35 R34 K8 ["text"]
      510 GETTABLEKS                       R36 R3 K98 ["DisplayName"]
      512 JUMPIFEQKNIL                     R36 ; [+2]
      514 LOADB                            R35 0 +1
      515 LOADB                            R35 1
      516 SETTABLEKS                       R35 R34 K96 ["isLoading"]
      518 SETTABLEKS                       R34 R33 K93 ["title"]
      520 DUPTABLE                         R34 K97 [{"text", "isLoading"}]
      521 GETTABLEKS                       R35 R2 K8 ["text"]
      523 SETTABLEKS                       R35 R34 K8 ["text"]
      525 GETTABLEKS                       R36 R3 K98 ["DisplayName"]
      527 JUMPIFEQKNIL                     R36 ; [+2]
      529 LOADB                            R35 0 +1
      530 LOADB                            R35 1
      531 SETTABLEKS                       R35 R34 K96 ["isLoading"]
      533 SETTABLEKS                       R34 R33 K94 ["subtitle"]
      535 GETIMPORT                        R34 K136 [Enum.TextXAlignment.Center]
      537 SETTABLEKS                       R34 R33 K113 ["TextXAlignment"]
      539 CALL                             R31 2 1
      540 SETTABLEKS                       R31 R30 K89 ["TileHeader"]
      542 CALL                             R27 3 1
      543 SETTABLEKS                       R27 R26 K63 ["TileContent"]
      545 CALL                             R23 3 1
      546 SETTABLEKS                       R23 R22 K53 ["OldPlayerTile"]
      548 CALL                             R19 3 -1
      549 RETURN                           R19 -1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K2 [{"tag"}]
        7 LOADK                            R5 K3 ["auto-xy gap-large row"]
        8 SETTABLEKS                       R5 R4 K1 ["tag"]
       10 DUPTABLE                         R5 K5 [{"MarketplaceTile"}]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K0 ["createElement"]
       14 GETUPVAL                         R8 3
       15 GETTABLEKS                       R7 R8 K6 ["Root"]
       17 DUPTABLE                         R8 K9 [{"FillDirection", "Size"}]
       18 GETIMPORT                        R9 K12 [Enum.FillDirection.Horizontal]
       20 SETTABLEKS                       R9 R8 K7 ["FillDirection"]
       22 GETIMPORT                        R9 K15 [UDim2.new]
       24 LOADN                            R10 0
       25 LOADN                            R11 44
       26 LOADN                            R12 0
       27 LOADN                            R13 150
       28 CALL                             R9 4 1
       29 SETTABLEKS                       R9 R8 K8 ["Size"]
       31 DUPTABLE                         R9 K18 [{"TileContent", "TileMedia"}]
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R10 R11 K0 ["createElement"]
       35 GETUPVAL                         R12 3
       36 GETTABLEKS                       R11 R12 K19 ["Content"]
       38 DUPTABLE                         R12 K22 [{"spacing", "LayoutOrder"}]
       39 GETTABLEKS                       R14 R1 K23 ["Gap"]
       41 GETTABLEKS                       R13 R14 K24 ["XSmall"]
       43 SETTABLEKS                       R13 R12 K20 ["spacing"]
       45 LOADN                            R13 1
       46 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
       48 DUPTABLE                         R13 K27 [{"TileHeader", "TileFooter"}]
       49 GETUPVAL                         R15 1
       50 GETTABLEKS                       R14 R15 K0 ["createElement"]
       52 GETUPVAL                         R16 3
       53 GETTABLEKS                       R15 R16 K28 ["Header"]
       55 DUPTABLE                         R16 K31 [{"title", "subtitle"}]
       56 DUPTABLE                         R17 K33 [{"text"}]
       57 LOADK                            R18 K34 ["Try out studio!"]
       58 SETTABLEKS                       R18 R17 K32 ["text"]
       60 SETTABLEKS                       R17 R16 K29 ["title"]
       62 DUPTABLE                         R17 K33 [{"text"}]
       63 LOADK                            R18 K35 ["Do something exciting in studio."]
       64 SETTABLEKS                       R18 R17 K32 ["text"]
       66 SETTABLEKS                       R17 R16 K30 ["subtitle"]
       68 CALL                             R14 2 1
       69 SETTABLEKS                       R14 R13 K25 ["TileHeader"]
       71 GETUPVAL                         R15 1
       72 GETTABLEKS                       R14 R15 K0 ["createElement"]
       74 GETUPVAL                         R16 3
       75 GETTABLEKS                       R15 R16 K36 ["Footer"]
       77 NEWTABLE                         R16 0 0
       79 NEWTABLE                         R17 0 0
       81 CALL                             R14 3 1
       82 SETTABLEKS                       R14 R13 K26 ["TileFooter"]
       84 CALL                             R10 3 1
       85 SETTABLEKS                       R10 R9 K16 ["TileContent"]
       87 GETUPVAL                         R11 1
       88 GETTABLEKS                       R10 R11 K0 ["createElement"]
       90 GETUPVAL                         R12 3
       91 GETTABLEKS                       R11 R12 K37 ["Media"]
       93 DUPTABLE                         R12 K41 [{"id", "type", "shape", "LayoutOrder"}]
       94 GETTABLEKS                       R14 R0 K42 ["controls"]
       96 GETTABLEKS                       R13 R14 K43 ["placeId"]
       98 SETTABLEKS                       R13 R12 K38 ["id"]
      100 GETUPVAL                         R14 4
      101 GETTABLEKS                       R13 R14 K44 ["Asset"]
      103 SETTABLEKS                       R13 R12 K39 ["type"]
      105 GETUPVAL                         R14 5
      106 GETTABLEKS                       R13 R14 K45 ["Square"]
      108 SETTABLEKS                       R13 R12 K40 ["shape"]
      110 LOADN                            R13 2
      111 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
      113 CALL                             R10 2 1
      114 SETTABLEKS                       R10 R9 K17 ["TileMedia"]
      116 CALL                             R6 3 1
      117 SETTABLEKS                       R6 R5 K4 ["MarketplaceTile"]
      119 CALL                             R2 3 -1
      120 RETURN                           R2 -1

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
       35 GETIMPORT                        R11 K16 [require]
       37 GETTABLEKS                       R13 R7 K17 ["Utility"]
       39 GETTABLEKS                       R12 R13 K18 ["Wrappers"]
       41 CALL                             R11 1 1
       42 GETTABLEKS                       R10 R11 K19 ["Services"]
       44 GETTABLEKS                       R9 R10 K20 ["Players"]
       46 GETIMPORT                        R10 K16 [require]
       48 GETTABLEKS                       R11 R8 K21 ["React"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K16 [require]
       53 GETTABLEKS                       R12 R8 K22 ["ReactOtter"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K16 [require]
       58 GETTABLEKS                       R13 R8 K23 ["Cryo"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K16 [require]
       63 GETTABLEKS                       R15 R7 K24 ["Components"]
       65 GETTABLEKS                       R14 R15 K25 ["Tile"]
       67 CALL                             R13 1 1
       68 GETIMPORT                        R14 K16 [require]
       70 GETTABLEKS                       R16 R7 K26 ["Enums"]
       72 GETTABLEKS                       R15 R16 K27 ["MediaType"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K16 [require]
       77 GETTABLEKS                       R17 R7 K26 ["Enums"]
       79 GETTABLEKS                       R16 R17 K28 ["MediaShape"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K16 [require]
       84 GETTABLEKS                       R18 R7 K26 ["Enums"]
       86 GETTABLEKS                       R17 R18 K29 ["Theme"]
       88 CALL                             R16 1 1
       89 GETIMPORT                        R17 K16 [require]
       91 GETTABLEKS                       R19 R7 K24 ["Components"]
       93 GETTABLEKS                       R18 R19 K30 ["Icon"]
       95 CALL                             R17 1 1
       96 GETIMPORT                        R18 K16 [require]
       98 GETTABLEKS                       R20 R7 K24 ["Components"]
      100 GETTABLEKS                       R19 R20 K31 ["Image"]
      102 CALL                             R18 1 1
      103 GETIMPORT                        R19 K16 [require]
      105 GETTABLEKS                       R21 R7 K26 ["Enums"]
      107 GETTABLEKS                       R20 R21 K32 ["IconSize"]
      109 CALL                             R19 1 1
      110 GETIMPORT                        R20 K16 [require]
      112 GETTABLEKS                       R22 R7 K24 ["Components"]
      114 GETTABLEKS                       R21 R22 K33 ["Button"]
      116 CALL                             R20 1 1
      117 GETIMPORT                        R21 K16 [require]
      119 GETTABLEKS                       R23 R7 K26 ["Enums"]
      121 GETTABLEKS                       R22 R23 K34 ["InputSize"]
      123 CALL                             R21 1 1
      124 GETIMPORT                        R22 K16 [require]
      126 GETTABLEKS                       R24 R7 K26 ["Enums"]
      128 GETTABLEKS                       R23 R24 K35 ["ButtonVariant"]
      130 CALL                             R22 1 1
      131 GETIMPORT                        R23 K16 [require]
      133 GETTABLEKS                       R25 R7 K24 ["Components"]
      135 GETTABLEKS                       R24 R25 K36 ["Text"]
      137 CALL                             R23 1 1
      138 GETIMPORT                        R24 K16 [require]
      140 GETTABLEKS                       R26 R7 K24 ["Components"]
      142 GETTABLEKS                       R25 R26 K37 ["View"]
      144 CALL                             R24 1 1
      145 GETIMPORT                        R25 K16 [require]
      147 GETTABLEKS                       R27 R7 K24 ["Components"]
      149 GETTABLEKS                       R26 R27 K38 ["Types"]
      151 CALL                             R25 1 1
      152 GETIMPORT                        R26 K16 [require]
      154 GETTABLEKS                       R29 R7 K39 ["Providers"]
      156 GETTABLEKS                       R28 R29 K40 ["Style"]
      158 GETTABLEKS                       R27 R28 K41 ["useTokens"]
      160 CALL                             R26 1 1
      161 GETIMPORT                        R27 K16 [require]
      163 GETTABLEKS                       R30 R7 K39 ["Providers"]
      165 GETTABLEKS                       R29 R30 K40 ["Style"]
      167 GETTABLEKS                       R28 R29 K42 ["useTextSizeOffset"]
      169 CALL                             R27 1 1
      170 GETIMPORT                        R28 K16 [require]
      172 GETIMPORT                        R31 K11 [script]
      174 GETTABLEKS                       R30 R31 K14 ["Parent"]
      176 GETTABLEKS                       R29 R30 K43 ["ObjectViewport"]
      178 CALL                             R28 1 1
      179 GETIMPORT                        R29 K16 [require]
      181 GETTABLEKS                       R31 R7 K26 ["Enums"]
      183 GETTABLEKS                       R30 R31 K44 ["FillBehavior"]
      185 CALL                             R29 1 1
      186 GETIMPORT                        R30 K16 [require]
      188 GETTABLEKS                       R32 R7 K26 ["Enums"]
      190 GETTABLEKS                       R31 R32 K45 ["ControlState"]
      192 CALL                             R30 1 1
      193 NEWTABLE                         R31 2 0
      195 LOADK                            R32 K46 [2727067538]
      196 LOADK                            R33 K47 [985731078]
      197 SETTABLE                         R33 R31 R32
      198 LOADK                            R32 K48 [1537690962]
      199 LOADK                            R33 K49 [601130232]
      200 SETTABLE                         R33 R31 R32
      201 GETIMPORT                        R32 K52 [UDim2.fromOffset]
      203 LOADN                            R33 150
      204 LOADN                            R34 225
      205 CALL                             R32 2 1
      206 GETIMPORT                        R33 K52 [UDim2.fromOffset]
      208 LOADN                            R34 150
      209 LOADN                            R35 240
      210 CALL                             R33 2 1
      211 GETIMPORT                        R34 K52 [UDim2.fromOffset]
      213 LOADN                            R35 150
      214 LOADN                            R36 250
      215 CALL                             R34 2 1
      216 GETIMPORT                        R35 K52 [UDim2.fromOffset]
      218 LOADN                            R36 44
      219 LOADN                            R37 24
      220 CALL                             R35 2 1
      221 NEWTABLE                         R36 0 1
      223 DUPTABLE                         R37 K56 [{"icon", "onActivated", "variant"}]
      224 LOADK                            R38 K57 ["icons/actions/friends/friendpending"]
      225 SETTABLEKS                       R38 R37 K53 ["icon"]
      227 DUPCLOSURE                       R38 K58 [PROTO_2]
      228 SETTABLEKS                       R38 R37 K54 ["onActivated"]
      230 GETTABLEKS                       R38 R22 K59 ["SubEmphasis"]
      232 SETTABLEKS                       R38 R37 K55 ["variant"]
      234 SETLIST                          R36 R37 1 [1]
      236 DUPCLOSURE                       R37 K60 [PROTO_3]
      237 CAPTURE                          VAL R10
      238 CAPTURE                          VAL R23
      239 DUPCLOSURE                       R38 K61 [PROTO_4]
      240 DUPTABLE                         R39 K63 [{"frequency"}]
      241 LOADN                            R40 4
      242 SETTABLEKS                       R40 R39 K62 ["frequency"]
      244 DUPCLOSURE                       R40 K64 [PROTO_5]
      245 CAPTURE                          VAL R11
      246 CAPTURE                          VAL R39
      247 DUPTABLE                         R41 K68 [{"name", "stories", "controls"}]
      248 LOADK                            R42 K25 ["Tile"]
      249 SETTABLEKS                       R42 R41 K65 ["name"]
      251 DUPTABLE                         R42 K75 [{"Configurable", "Fun", "Experience", "Item", "Player", "Marketplace"}]
      252 DUPTABLE                         R43 K77 [{"name", "story"}]
      253 LOADK                            R44 K78 ["Configurable Tile"]
      254 SETTABLEKS                       R44 R43 K65 ["name"]
      256 DUPCLOSURE                       R44 K79 [PROTO_6]
      257 CAPTURE                          VAL R26
      258 CAPTURE                          VAL R27
      259 CAPTURE                          VAL R10
      260 CAPTURE                          VAL R13
      261 CAPTURE                          VAL R14
      262 CAPTURE                          VAL R37
      263 SETTABLEKS                       R44 R43 K76 ["story"]
      265 SETTABLEKS                       R43 R42 K69 ["Configurable"]
      267 DUPTABLE                         R43 K77 [{"name", "story"}]
      268 LOADK                            R44 K80 ["Fun Tile"]
      269 SETTABLEKS                       R44 R43 K65 ["name"]
      271 DUPCLOSURE                       R44 K81 [PROTO_9]
      272 CAPTURE                          VAL R26
      273 CAPTURE                          VAL R16
      274 CAPTURE                          VAL R10
      275 CAPTURE                          VAL R1
      276 CAPTURE                          VAL R2
      277 CAPTURE                          VAL R4
      278 CAPTURE                          VAL R27
      279 CAPTURE                          VAL R13
      280 CAPTURE                          VAL R15
      281 CAPTURE                          VAL R28
      282 SETTABLEKS                       R44 R43 K76 ["story"]
      284 SETTABLEKS                       R43 R42 K70 ["Fun"]
      286 DUPTABLE                         R43 K77 [{"name", "story"}]
      287 LOADK                            R44 K82 ["Experience Tile"]
      288 SETTABLEKS                       R44 R43 K65 ["name"]
      290 DUPCLOSURE                       R44 K83 [PROTO_19]
      291 CAPTURE                          VAL R26
      292 CAPTURE                          VAL R10
      293 CAPTURE                          VAL R30
      294 CAPTURE                          VAL R31
      295 CAPTURE                          VAL R1
      296 CAPTURE                          VAL R11
      297 CAPTURE                          VAL R27
      298 CAPTURE                          VAL R24
      299 CAPTURE                          VAL R13
      300 CAPTURE                          VAL R34
      301 CAPTURE                          VAL R14
      302 CAPTURE                          VAL R15
      303 CAPTURE                          VAL R37
      304 CAPTURE                          VAL R20
      305 CAPTURE                          VAL R21
      306 CAPTURE                          VAL R22
      307 CAPTURE                          VAL R29
      308 CAPTURE                          VAL R35
      309 SETTABLEKS                       R44 R43 K76 ["story"]
      311 SETTABLEKS                       R43 R42 K71 ["Experience"]
      313 DUPTABLE                         R43 K77 [{"name", "story"}]
      314 LOADK                            R44 K84 ["Item Tile"]
      315 SETTABLEKS                       R44 R43 K65 ["name"]
      317 DUPCLOSURE                       R44 K85 [PROTO_22]
      318 CAPTURE                          VAL R26
      319 CAPTURE                          VAL R16
      320 CAPTURE                          VAL R10
      321 CAPTURE                          VAL R1
      322 CAPTURE                          VAL R27
      323 CAPTURE                          VAL R13
      324 CAPTURE                          VAL R33
      325 CAPTURE                          VAL R14
      326 CAPTURE                          VAL R15
      327 SETTABLEKS                       R44 R43 K76 ["story"]
      329 SETTABLEKS                       R43 R42 K72 ["Item"]
      331 DUPTABLE                         R43 K77 [{"name", "story"}]
      332 LOADK                            R44 K86 ["Player Tile"]
      333 SETTABLEKS                       R44 R43 K65 ["name"]
      335 DUPCLOSURE                       R44 K87 [PROTO_30]
      336 CAPTURE                          VAL R26
      337 CAPTURE                          VAL R16
      338 CAPTURE                          VAL R10
      339 CAPTURE                          VAL R30
      340 CAPTURE                          VAL R11
      341 CAPTURE                          VAL R40
      342 CAPTURE                          VAL R9
      343 CAPTURE                          VAL R6
      344 CAPTURE                          VAL R0
      345 CAPTURE                          VAL R27
      346 CAPTURE                          VAL R24
      347 CAPTURE                          VAL R13
      348 CAPTURE                          VAL R32
      349 CAPTURE                          VAL R14
      350 CAPTURE                          VAL R15
      351 CAPTURE                          VAL R12
      352 CAPTURE                          VAL R36
      353 CAPTURE                          VAL R20
      354 CAPTURE                          VAL R21
      355 CAPTURE                          VAL R17
      356 CAPTURE                          VAL R19
      357 CAPTURE                          VAL R23
      358 CAPTURE                          VAL R18
      359 SETTABLEKS                       R44 R43 K76 ["story"]
      361 SETTABLEKS                       R43 R42 K73 ["Player"]
      363 DUPTABLE                         R43 K77 [{"name", "story"}]
      364 LOADK                            R44 K88 ["Marketplace Tile (work in progress)"]
      365 SETTABLEKS                       R44 R43 K65 ["name"]
      367 DUPCLOSURE                       R44 K89 [PROTO_31]
      368 CAPTURE                          VAL R26
      369 CAPTURE                          VAL R10
      370 CAPTURE                          VAL R24
      371 CAPTURE                          VAL R13
      372 CAPTURE                          VAL R14
      373 CAPTURE                          VAL R15
      374 SETTABLEKS                       R44 R43 K76 ["story"]
      376 SETTABLEKS                       R43 R42 K74 ["Marketplace"]
      378 SETTABLEKS                       R42 R41 K66 ["stories"]
      380 DUPTABLE                         R42 K99 [{"fillDirection", "itemId", "isContained", "shape", "title", "numTitleLines", "numSubtitleLines", "subtitle", "placeId"}]
      381 NEWTABLE                         R43 0 2
      383 GETIMPORT                        R44 K103 [Enum.FillDirection.Vertical]
      385 GETIMPORT                        R45 K105 [Enum.FillDirection.Horizontal]
      387 SETLIST                          R43 R44 2 [1]
      389 SETTABLEKS                       R43 R42 K90 ["fillDirection"]
      391 NEWTABLE                         R43 0 4
      393 LOADK                            R44 K106 [21070012]
      394 LOADK                            R45 K107 [125378389]
      395 LOADK                            R46 K108 [14825332446]
      396 LOADK                            R47 K109 [3360689775]
      397 SETLIST                          R43 R44 4 [1]
      399 SETTABLEKS                       R43 R42 K91 ["itemId"]
      401 LOADB                            R43 1
      402 SETTABLEKS                       R43 R42 K92 ["isContained"]
      404 NEWTABLE                         R43 0 4
      406 GETTABLEKS                       R44 R15 K110 ["Square"]
      408 GETTABLEKS                       R45 R15 K111 ["Landscape"]
      410 GETTABLEKS                       R46 R15 K112 ["Portrait"]
      412 GETTABLEKS                       R47 R15 K113 ["Circle"]
      414 SETLIST                          R43 R44 4 [1]
      416 SETTABLEKS                       R43 R42 K93 ["shape"]
      418 LOADK                            R43 K114 ["Build a Boat for Treasure"]
      419 SETTABLEKS                       R43 R42 K94 ["title"]
      421 LOADN                            R43 2
      422 SETTABLEKS                       R43 R42 K95 ["numTitleLines"]
      424 LOADN                            R43 1
      425 SETTABLEKS                       R43 R42 K96 ["numSubtitleLines"]
      427 LOADK                            R43 K115 ["By Koi Koi Studios"]
      428 SETTABLEKS                       R43 R42 K97 ["subtitle"]
      430 NEWTABLE                         R43 0 2
      432 LOADK                            R44 K46 [2727067538]
      433 LOADK                            R45 K48 [1537690962]
      434 SETLIST                          R43 R44 2 [1]
      436 SETTABLEKS                       R43 R42 K98 ["placeId"]
      438 SETTABLEKS                       R42 R41 K67 ["controls"]
      440 RETURN                           R41 1
