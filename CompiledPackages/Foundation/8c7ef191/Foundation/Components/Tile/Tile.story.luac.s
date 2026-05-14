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
        4 DUPTABLE                         R3 K9 [{"textStyle", "fontStyle", "Text", "TextXAlignment", "TextWrapped", "TextTruncate", "Size", "AutomaticSize"}]
        5 GETTABLEKS                       R4 R0 K10 ["Color"]
        7 GETTABLEKS                       R4 R4 K11 ["Content"]
        9 GETTABLEKS                       R4 R4 K12 ["Default"]
       11 SETTABLEKS                       R4 R3 K1 ["textStyle"]
       13 GETTABLEKS                       R4 R0 K13 ["Typography"]
       15 GETTABLEKS                       R4 R4 K14 ["TitleLarge"]
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
       85 GETUPVAL                         R14 2
       86 GETTABLEKS                       R14 R14 K12 ["createElement"]
       88 GETUPVAL                         R15 7
       89 GETTABLEKS                       R15 R15 K27 ["Media"]
       91 DUPTABLE                         R16 K30 [{"shape", "background"}]
       92 GETUPVAL                         R17 8
       93 GETTABLEKS                       R17 R17 K31 ["Square"]
       95 SETTABLEKS                       R17 R16 K28 ["shape"]
       97 DUPTABLE                         R17 K33 [{"image"}]
       98 SETTABLEKS                       R2 R17 K32 ["image"]
      100 SETTABLEKS                       R17 R16 K29 ["background"]
      102 NEWTABLE                         R17 0 1
      104 JUMPIFNOT                        R5 ; [+12]
      105 GETUPVAL                         R18 2
      106 GETTABLEKS                       R18 R18 K12 ["createElement"]
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
      123 GETUPVAL                         R14 2
      124 GETTABLEKS                       R14 R14 K12 ["createElement"]
      126 GETUPVAL                         R15 7
      127 GETTABLEKS                       R15 R15 K38 ["Content"]
      129 NEWTABLE                         R16 0 0
      131 DUPTABLE                         R17 K40 [{"TileHeader"}]
      132 GETUPVAL                         R18 2
      133 GETTABLEKS                       R18 R18 K12 ["createElement"]
      135 GETUPVAL                         R19 7
      136 GETTABLEKS                       R19 R19 K41 ["Header"]
      138 DUPTABLE                         R20 K44 [{"title", "subtitle"}]
      139 DUPTABLE                         R21 K49 [{"text", "isLoading", "fontStyle", "numLines"}]
      140 GETTABLEKS                       R22 R3 K3 ["Name"]
      142 SETTABLEKS                       R22 R21 K45 ["text"]
      144 GETTABLEKS                       R23 R3 K3 ["Name"]
      146 JUMPIFEQKNIL                     R23 ; [+2]
      148 LOADB                            R22 0 +1
      149 LOADB                            R22 1
      150 SETTABLEKS                       R22 R21 K46 ["isLoading"]
      152 GETTABLEKS                       R22 R1 K50 ["Typography"]
      154 GETTABLEKS                       R22 R22 K51 ["HeadingSmall"]
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
      176 GETTABLEKS                       R22 R1 K50 ["Typography"]
      178 GETTABLEKS                       R22 R22 K55 ["BodyLarge"]
      180 SETTABLEKS                       R22 R21 K47 ["fontStyle"]
      182 GETTABLEKS                       R22 R1 K56 ["Color"]
      184 GETTABLEKS                       R22 R22 K38 ["Content"]
      186 GETTABLEKS                       R22 R22 K57 ["Muted"]
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
       90 DUPTABLE                         R19 K8 [{"tag"}]
       91 LOADK                            R20 K9 ["auto-xy gap-large padding-small row"]
       92 SETTABLEKS                       R20 R19 K7 ["tag"]
       94 DUPTABLE                         R20 K13 [{"Tile", "WideTileWrapper", "WideTileWithPadding"}]
       95 GETUPVAL                         R21 1
       96 GETTABLEKS                       R21 R21 K6 ["createElement"]
       98 GETUPVAL                         R22 8
       99 GETTABLEKS                       R22 R22 K14 ["Root"]
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
      130 GETUPVAL                         R25 1
      131 GETTABLEKS                       R25 R25 K6 ["createElement"]
      133 GETUPVAL                         R26 8
      134 GETTABLEKS                       R26 R26 K30 ["Media"]
      136 DUPTABLE                         R27 K34 [{"id", "type", "shape"}]
      137 JUMPIFNOT                        R2 ; [+2]
      138 MOVE                             R28 R10
      139 JUMP                             ; [+1]
      140 MOVE                             R28 R11
      141 SETTABLEKS                       R28 R27 K31 ["id"]
      143 JUMPIFNOT                        R2 ; [+4]
      144 GETUPVAL                         R28 10
      145 GETTABLEKS                       R28 R28 K35 ["Asset"]
      147 JUMP                             ; [+3]
      148 GETUPVAL                         R28 10
      149 GETTABLEKS                       R28 R28 K36 ["GameIcon"]
      151 SETTABLEKS                       R28 R27 K32 ["type"]
      153 JUMPIFNOT                        R2 ; [+4]
      154 GETUPVAL                         R28 11
      155 GETTABLEKS                       R28 R28 K37 ["Landscape"]
      157 JUMP                             ; [+3]
      158 GETUPVAL                         R28 11
      159 GETTABLEKS                       R28 R28 K38 ["Square"]
      161 SETTABLEKS                       R28 R27 K33 ["shape"]
      163 CALL                             R25 2 1
      164 SETTABLEKS                       R25 R24 K27 ["TileMedia"]
      166 GETUPVAL                         R25 1
      167 GETTABLEKS                       R25 R25 K6 ["createElement"]
      169 GETUPVAL                         R26 8
      170 GETTABLEKS                       R26 R26 K39 ["Content"]
      172 NEWTABLE                         R27 0 0
      174 DUPTABLE                         R28 K43 [{"TileHeader", "TileFooter", "TileActions"}]
      175 GETUPVAL                         R29 1
      176 GETTABLEKS                       R29 R29 K6 ["createElement"]
      178 GETUPVAL                         R30 8
      179 GETTABLEKS                       R30 R30 K44 ["Header"]
      181 DUPTABLE                         R31 K46 [{"title"}]
      182 DUPTABLE                         R32 K51 [{"text", "isLoading", "fontStyle", "numLines"}]
      183 GETTABLEKS                       R33 R8 K52 ["Name"]
      185 SETTABLEKS                       R33 R32 K47 ["text"]
      187 GETTABLEKS                       R34 R8 K52 ["Name"]
      189 JUMPIFEQKNIL                     R34 ; [+2]
      191 LOADB                            R33 0 +1
      192 LOADB                            R33 1
      193 SETTABLEKS                       R33 R32 K48 ["isLoading"]
      195 GETTABLEKS                       R33 R1 K53 ["Typography"]
      197 GETTABLEKS                       R33 R33 K54 ["HeadingSmall"]
      199 SETTABLEKS                       R33 R32 K49 ["fontStyle"]
      201 LOADN                            R33 2
      202 SETTABLEKS                       R33 R32 K50 ["numLines"]
      204 SETTABLEKS                       R32 R31 K45 ["title"]
      206 CALL                             R29 2 1
      207 SETTABLEKS                       R29 R28 K40 ["TileHeader"]
      209 GETUPVAL                         R29 1
      210 GETTABLEKS                       R29 R29 K6 ["createElement"]
      212 GETUPVAL                         R30 8
      213 GETTABLEKS                       R30 R30 K55 ["Footer"]
      215 NEWTABLE                         R31 0 0
      217 NEWTABLE                         R32 0 1
      219 GETUPVAL                         R33 12
      220 MOVE                             R34 R1
      221 CALL                             R33 1 -1
      222 SETLIST                          R32 R33 -1 [1]
      224 CALL                             R29 3 1
      225 SETTABLEKS                       R29 R28 K41 ["TileFooter"]
      227 GETUPVAL                         R29 1
      228 GETTABLEKS                       R29 R29 K6 ["createElement"]
      230 GETUPVAL                         R30 8
      231 GETTABLEKS                       R30 R30 K56 ["Actions"]
      233 DUPTABLE                         R31 K58 [{"Visible"}]
      234 SETTABLEKS                       R2 R31 K57 ["Visible"]
      236 DUPTABLE                         R32 K60 [{"Button"}]
      237 GETUPVAL                         R33 1
      238 GETTABLEKS                       R33 R33 K6 ["createElement"]
      240 GETUPVAL                         R34 13
      241 DUPTABLE                         R35 K65 [{"text", "size", "variant", "fillBehavior", "onActivated"}]
      242 LOADK                            R36 K66 ["Play"]
      243 SETTABLEKS                       R36 R35 K47 ["text"]
      245 GETUPVAL                         R36 14
      246 GETTABLEKS                       R36 R36 K67 ["Medium"]
      248 SETTABLEKS                       R36 R35 K61 ["size"]
      250 GETUPVAL                         R36 15
      251 GETTABLEKS                       R36 R36 K68 ["Emphasis"]
      253 SETTABLEKS                       R36 R35 K62 ["variant"]
      255 GETUPVAL                         R36 16
      256 GETTABLEKS                       R36 R36 K69 ["Fill"]
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
      275 GETUPVAL                         R21 1
      276 GETTABLEKS                       R21 R21 K6 ["createElement"]
      278 GETUPVAL                         R22 7
      279 DUPTABLE                         R23 K71 [{"Size", "LayoutOrder"}]
      280 GETUPVAL                         R24 17
      281 SETTABLEKS                       R24 R23 K18 ["Size"]
      283 LOADN                            R24 2
      284 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      286 DUPTABLE                         R24 K73 [{"WideTile"}]
      287 GETUPVAL                         R25 1
      288 GETTABLEKS                       R25 R25 K6 ["createElement"]
      290 GETUPVAL                         R26 8
      291 GETTABLEKS                       R26 R26 K14 ["Root"]
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
      326 GETUPVAL                         R29 1
      327 GETTABLEKS                       R29 R29 K6 ["createElement"]
      329 GETUPVAL                         R30 8
      330 GETTABLEKS                       R30 R30 K30 ["Media"]
      332 DUPTABLE                         R31 K34 [{"id", "type", "shape"}]
      333 SETTABLEKS                       R11 R31 K31 ["id"]
      335 GETUPVAL                         R32 10
      336 GETTABLEKS                       R32 R32 K36 ["GameIcon"]
      338 SETTABLEKS                       R32 R31 K32 ["type"]
      340 GETUPVAL                         R32 11
      341 GETTABLEKS                       R32 R32 K37 ["Landscape"]
      343 SETTABLEKS                       R32 R31 K33 ["shape"]
      345 CALL                             R29 2 1
      346 SETTABLEKS                       R29 R28 K27 ["TileMedia"]
      348 GETUPVAL                         R29 1
      349 GETTABLEKS                       R29 R29 K6 ["createElement"]
      351 GETUPVAL                         R30 8
      352 GETTABLEKS                       R30 R30 K39 ["Content"]
      354 NEWTABLE                         R31 0 0
      356 DUPTABLE                         R32 K84 [{"TileHeader", "TileActions"}]
      357 GETUPVAL                         R33 1
      358 GETTABLEKS                       R33 R33 K6 ["createElement"]
      360 GETUPVAL                         R34 8
      361 GETTABLEKS                       R34 R34 K44 ["Header"]
      363 DUPTABLE                         R35 K86 [{"title", "subtitle"}]
      364 DUPTABLE                         R36 K51 [{"text", "isLoading", "fontStyle", "numLines"}]
      365 GETTABLEKS                       R37 R8 K52 ["Name"]
      367 SETTABLEKS                       R37 R36 K47 ["text"]
      369 GETTABLEKS                       R38 R8 K52 ["Name"]
      371 JUMPIFEQKNIL                     R38 ; [+2]
      373 LOADB                            R37 0 +1
      374 LOADB                            R37 1
      375 SETTABLEKS                       R37 R36 K48 ["isLoading"]
      377 GETTABLEKS                       R37 R1 K53 ["Typography"]
      379 GETTABLEKS                       R37 R37 K87 ["TitleLarge"]
      381 SETTABLEKS                       R37 R36 K49 ["fontStyle"]
      383 LOADN                            R37 2
      384 SETTABLEKS                       R37 R36 K50 ["numLines"]
      386 SETTABLEKS                       R36 R35 K45 ["title"]
      388 LOADK                            R36 K88 ["82% 👍 92k 👤"]
      389 SETTABLEKS                       R36 R35 K85 ["subtitle"]
      391 CALL                             R33 2 1
      392 SETTABLEKS                       R33 R32 K40 ["TileHeader"]
      394 GETUPVAL                         R33 1
      395 GETTABLEKS                       R33 R33 K6 ["createElement"]
      397 GETUPVAL                         R34 8
      398 GETTABLEKS                       R34 R34 K56 ["Actions"]
      400 DUPTABLE                         R35 K58 [{"Visible"}]
      401 SETTABLEKS                       R4 R35 K57 ["Visible"]
      403 DUPTABLE                         R36 K60 [{"Button"}]
      404 GETUPVAL                         R37 1
      405 GETTABLEKS                       R37 R37 K6 ["createElement"]
      407 GETUPVAL                         R38 13
      408 DUPTABLE                         R39 K65 [{"text", "size", "variant", "fillBehavior", "onActivated"}]
      409 LOADK                            R40 K66 ["Play"]
      410 SETTABLEKS                       R40 R39 K47 ["text"]
      412 GETUPVAL                         R40 14
      413 GETTABLEKS                       R40 R40 K67 ["Medium"]
      415 SETTABLEKS                       R40 R39 K61 ["size"]
      417 GETUPVAL                         R40 15
      418 GETTABLEKS                       R40 R40 K68 ["Emphasis"]
      420 SETTABLEKS                       R40 R39 K62 ["variant"]
      422 GETUPVAL                         R40 16
      423 GETTABLEKS                       R40 R40 K69 ["Fill"]
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
      445 GETUPVAL                         R21 1
      446 GETTABLEKS                       R21 R21 K6 ["createElement"]
      448 GETUPVAL                         R22 7
      449 DUPTABLE                         R23 K71 [{"Size", "LayoutOrder"}]
      450 GETUPVAL                         R24 17
      451 SETTABLEKS                       R24 R23 K18 ["Size"]
      453 LOADN                            R24 3
      454 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      456 DUPTABLE                         R24 K73 [{"WideTile"}]
      457 GETUPVAL                         R25 1
      458 GETTABLEKS                       R25 R25 K6 ["createElement"]
      460 GETUPVAL                         R26 8
      461 GETTABLEKS                       R26 R26 K14 ["Root"]
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
      495 GETUPVAL                         R29 1
      496 GETTABLEKS                       R29 R29 K6 ["createElement"]
      498 GETUPVAL                         R30 8
      499 GETTABLEKS                       R30 R30 K30 ["Media"]
      501 DUPTABLE                         R31 K34 [{"id", "type", "shape"}]
      502 SETTABLEKS                       R11 R31 K31 ["id"]
      504 GETUPVAL                         R32 10
      505 GETTABLEKS                       R32 R32 K36 ["GameIcon"]
      507 SETTABLEKS                       R32 R31 K32 ["type"]
      509 GETUPVAL                         R32 11
      510 GETTABLEKS                       R32 R32 K37 ["Landscape"]
      512 SETTABLEKS                       R32 R31 K33 ["shape"]
      514 CALL                             R29 2 1
      515 SETTABLEKS                       R29 R28 K27 ["TileMedia"]
      517 GETUPVAL                         R29 1
      518 GETTABLEKS                       R29 R29 K6 ["createElement"]
      520 GETUPVAL                         R30 8
      521 GETTABLEKS                       R30 R30 K39 ["Content"]
      523 DUPTABLE                         R31 K92 [{"spacing"}]
      524 GETTABLEKS                       R32 R1 K93 ["Gap"]
      526 GETTABLEKS                       R32 R32 K94 ["Small"]
      528 SETTABLEKS                       R32 R31 K91 ["spacing"]
      530 DUPTABLE                         R32 K84 [{"TileHeader", "TileActions"}]
      531 GETUPVAL                         R33 1
      532 GETTABLEKS                       R33 R33 K6 ["createElement"]
      534 GETUPVAL                         R34 8
      535 GETTABLEKS                       R34 R34 K44 ["Header"]
      537 DUPTABLE                         R35 K86 [{"title", "subtitle"}]
      538 DUPTABLE                         R36 K51 [{"text", "isLoading", "fontStyle", "numLines"}]
      539 GETTABLEKS                       R37 R8 K52 ["Name"]
      541 SETTABLEKS                       R37 R36 K47 ["text"]
      543 GETTABLEKS                       R38 R8 K52 ["Name"]
      545 JUMPIFEQKNIL                     R38 ; [+2]
      547 LOADB                            R37 0 +1
      548 LOADB                            R37 1
      549 SETTABLEKS                       R37 R36 K48 ["isLoading"]
      551 GETTABLEKS                       R37 R1 K53 ["Typography"]
      553 GETTABLEKS                       R37 R37 K87 ["TitleLarge"]
      555 SETTABLEKS                       R37 R36 K49 ["fontStyle"]
      557 LOADN                            R37 2
      558 SETTABLEKS                       R37 R36 K50 ["numLines"]
      560 SETTABLEKS                       R36 R35 K45 ["title"]
      562 LOADK                            R36 K88 ["82% 👍 92k 👤"]
      563 SETTABLEKS                       R36 R35 K85 ["subtitle"]
      565 CALL                             R33 2 1
      566 SETTABLEKS                       R33 R32 K40 ["TileHeader"]
      568 GETUPVAL                         R33 1
      569 GETTABLEKS                       R33 R33 K6 ["createElement"]
      571 GETUPVAL                         R34 8
      572 GETTABLEKS                       R34 R34 K56 ["Actions"]
      574 NEWTABLE                         R35 0 0
      576 DUPTABLE                         R36 K60 [{"Button"}]
      577 GETUPVAL                         R37 1
      578 GETTABLEKS                       R37 R37 K6 ["createElement"]
      580 GETUPVAL                         R38 13
      581 DUPTABLE                         R39 K65 [{"text", "size", "variant", "fillBehavior", "onActivated"}]
      582 LOADK                            R40 K66 ["Play"]
      583 SETTABLEKS                       R40 R39 K47 ["text"]
      585 GETUPVAL                         R40 14
      586 GETTABLEKS                       R40 R40 K67 ["Medium"]
      588 SETTABLEKS                       R40 R39 K61 ["size"]
      590 GETUPVAL                         R40 15
      591 GETTABLEKS                       R40 R40 K68 ["Emphasis"]
      593 SETTABLEKS                       R40 R39 K62 ["variant"]
      595 GETUPVAL                         R40 16
      596 GETTABLEKS                       R40 R40 K69 ["Fill"]
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
       78 GETUPVAL                         R12 2
       79 GETTABLEKS                       R12 R12 K12 ["createElement"]
       81 GETUPVAL                         R13 5
       82 GETTABLEKS                       R13 R13 K27 ["Media"]
       84 DUPTABLE                         R14 K32 [{"id", "type", "shape", "background"}]
       85 SETTABLEKS                       R5 R14 K28 ["id"]
       87 GETUPVAL                         R15 7
       88 GETTABLEKS                       R15 R15 K33 ["Asset"]
       90 SETTABLEKS                       R15 R14 K29 ["type"]
       92 GETUPVAL                         R15 8
       93 GETTABLEKS                       R15 R15 K34 ["Square"]
       95 SETTABLEKS                       R15 R14 K30 ["shape"]
       97 DUPTABLE                         R15 K36 [{"image"}]
       98 SETTABLEKS                       R2 R15 K35 ["image"]
      100 SETTABLEKS                       R15 R14 K31 ["background"]
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K24 ["TileMedia"]
      105 GETUPVAL                         R12 2
      106 GETTABLEKS                       R12 R12 K12 ["createElement"]
      108 GETUPVAL                         R13 5
      109 GETTABLEKS                       R13 R13 K37 ["Content"]
      111 NEWTABLE                         R14 0 0
      113 DUPTABLE                         R15 K39 [{"TileHeader"}]
      114 GETUPVAL                         R16 2
      115 GETTABLEKS                       R16 R16 K12 ["createElement"]
      117 GETUPVAL                         R17 5
      118 GETTABLEKS                       R17 R17 K40 ["Header"]
      120 DUPTABLE                         R18 K43 [{"title", "subtitle"}]
      121 DUPTABLE                         R19 K48 [{"text", "isLoading", "fontStyle", "numLines"}]
      122 GETTABLEKS                       R20 R3 K3 ["Name"]
      124 SETTABLEKS                       R20 R19 K44 ["text"]
      126 GETTABLEKS                       R21 R3 K3 ["Name"]
      128 JUMPIFEQKNIL                     R21 ; [+2]
      130 LOADB                            R20 0 +1
      131 LOADB                            R20 1
      132 SETTABLEKS                       R20 R19 K45 ["isLoading"]
      134 GETTABLEKS                       R20 R1 K49 ["Typography"]
      136 GETTABLEKS                       R20 R20 K50 ["HeadingSmall"]
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
      158 GETTABLEKS                       R20 R1 K49 ["Typography"]
      160 GETTABLEKS                       R20 R20 K54 ["BodyLarge"]
      162 SETTABLEKS                       R20 R19 K46 ["fontStyle"]
      164 GETTABLEKS                       R20 R1 K55 ["Color"]
      166 GETTABLEKS                       R20 R20 K37 ["Content"]
      168 GETTABLEKS                       R20 R20 K56 ["Muted"]
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
       21 DUPTABLE                         R2 K16 [{"text", "icon", "fontStyle", "iconTextSpacing", "iconPadding", "iconSize", "textHeight", "onActivated"}]
       22 LOADK                            R3 K17 ["Hueblox"]
       23 SETTABLEKS                       R3 R2 K8 ["text"]
       25 LOADK                            R3 K18 ["icons/common/play"]
       26 SETTABLEKS                       R3 R2 K9 ["icon"]
       28 GETTABLEKS                       R3 R0 K19 ["Typography"]
       30 GETTABLEKS                       R3 R3 K20 ["CaptionLarge"]
       32 SETTABLEKS                       R3 R2 K10 ["fontStyle"]
       34 GETTABLEKS                       R3 R0 K21 ["Gap"]
       36 GETTABLEKS                       R3 R3 K22 ["XSmall"]
       38 SETTABLEKS                       R3 R2 K11 ["iconTextSpacing"]
       40 LOADN                            R3 0
       41 SETTABLEKS                       R3 R2 K12 ["iconPadding"]
       43 GETIMPORT                        R3 K25 [UDim2.fromOffset]
       45 GETTABLEKS                       R4 R0 K26 ["Size"]
       47 GETTABLEKS                       R4 R4 K27 ["Size_300"]
       49 GETTABLEKS                       R5 R0 K26 ["Size"]
       51 GETTABLEKS                       R5 R5 K27 ["Size_300"]
       53 CALL                             R3 2 1
       54 SETTABLEKS                       R3 R2 K13 ["iconSize"]
       56 GETTABLEKS                       R3 R0 K26 ["Size"]
       58 GETTABLEKS                       R3 R3 K28 ["Size_700"]
       60 SETTABLEKS                       R3 R2 K14 ["textHeight"]
       62 DUPCLOSURE                       R3 K29 [PROTO_23]
       63 SETTABLEKS                       R3 R2 K15 ["onActivated"]
       65 GETUPVAL                         R3 2
       66 GETTABLEKS                       R3 R3 K30 ["useState"]
       68 NEWTABLE                         R4 0 0
       70 CALL                             R3 1 2
       71 GETUPVAL                         R5 2
       72 GETTABLEKS                       R5 R5 K30 ["useState"]
       74 LOADB                            R6 0
       75 CALL                             R5 1 2
       76 GETUPVAL                         R7 2
       77 GETTABLEKS                       R7 R7 K31 ["useCallback"]
       79 NEWCLOSURE                       R8 P1
       80 CAPTURE                          VAL R6
       81 CAPTURE                          UPVAL U3
       82 NEWTABLE                         R9 0 1
       84 MOVE                             R10 R6
       85 SETLIST                          R9 R10 1 [1]
       87 CALL                             R7 2 1
       88 GETTABLEKS                       R8 R0 K32 ["Color"]
       90 GETTABLEKS                       R8 R8 K33 ["Extended"]
       92 GETTABLEKS                       R8 R8 K34 ["White"]
       94 GETTABLEKS                       R8 R8 K35 ["White_100"]
       96 GETTABLEKS                       R8 R8 K36 ["Color3"]
       98 GETTABLEKS                       R9 R0 K32 ["Color"]
      100 GETTABLEKS                       R9 R9 K33 ["Extended"]
      102 GETTABLEKS                       R9 R9 K37 ["Gray"]
      104 GETTABLEKS                       R9 R9 K38 ["Gray_400"]
      106 GETTABLEKS                       R9 R9 K36 ["Color3"]
      108 GETUPVAL                         R10 4
      109 GETTABLEKS                       R10 R10 K39 ["useAnimatedBinding"]
      111 DUPTABLE                         R11 K43 [{"R", "G", "B"}]
      112 GETTABLEKS                       R12 R8 K40 ["R"]
      114 SETTABLEKS                       R12 R11 K40 ["R"]
      116 GETTABLEKS                       R12 R8 K41 ["G"]
      118 SETTABLEKS                       R12 R11 K41 ["G"]
      120 GETTABLEKS                       R12 R8 K42 ["B"]
      122 SETTABLEKS                       R12 R11 K42 ["B"]
      124 CALL                             R10 1 2
      125 GETUPVAL                         R12 2
      126 GETTABLEKS                       R12 R12 K44 ["useEffect"]
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
      140 GETUPVAL                         R13 6
      141 GETTABLEKS                       R13 R13 K45 ["LocalPlayer"]
      143 JUMPIFNOT                        R13 ; [+6]
      144 GETUPVAL                         R12 6
      145 GETTABLEKS                       R12 R12 K45 ["LocalPlayer"]
      147 GETTABLEKS                       R12 R12 K46 ["UserId"]
      149 JUMP                             ; [+8]
      150 GETUPVAL                         R13 7
      151 JUMPIFNOT                        R13 ; [+5]
      152 GETUPVAL                         R12 7
      153 NAMECALL                         R12 R12 K47 ["GetUserId"]
      155 CALL                             R12 1 1
      156 JUMP                             ; [+1]
      157 LOADNIL                          R12
      158 GETUPVAL                         R13 2
      159 GETTABLEKS                       R13 R13 K44 ["useEffect"]
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
      180 DUPCLOSURE                       R19 K48 [PROTO_28]
      181 CAPTURE                          UPVAL U2
      182 CAPTURE                          UPVAL U10
      183 CAPTURE                          UPVAL U11
      184 GETUPVAL                         R20 2
      185 GETTABLEKS                       R20 R20 K49 ["createElement"]
      187 GETUPVAL                         R21 12
      188 DUPTABLE                         R22 K51 [{"tag"}]
      189 LOADK                            R23 K52 ["auto-xy gap-large row"]
      190 SETTABLEKS                       R23 R22 K50 ["tag"]
      192 DUPTABLE                         R23 K55 [{"PlayerTile", "OldPlayerTile"}]
      193 GETUPVAL                         R24 2
      194 GETTABLEKS                       R24 R24 K49 ["createElement"]
      196 GETUPVAL                         R25 13
      197 GETTABLEKS                       R25 R25 K56 ["Root"]
      199 DUPTABLE                         R26 K59 [{"FillDirection", "Size", "isContained"}]
      200 GETIMPORT                        R27 K62 [Enum.FillDirection.Vertical]
      202 SETTABLEKS                       R27 R26 K57 ["FillDirection"]
      204 GETUPVAL                         R28 14
      205 GETIMPORT                        R29 K25 [UDim2.fromOffset]
      207 LOADN                            R30 0
      208 MOVE                             R31 R17
      209 CALL                             R29 2 1
      210 ADD                              R27 R28 R29
      211 SETTABLEKS                       R27 R26 K26 ["Size"]
      213 LOADB                            R27 1
      214 SETTABLEKS                       R27 R26 K58 ["isContained"]
      216 DUPTABLE                         R27 K65 [{"TileMedia", "TileContent"}]
      217 GETUPVAL                         R28 2
      218 GETTABLEKS                       R28 R28 K49 ["createElement"]
      220 GETUPVAL                         R29 13
      221 GETTABLEKS                       R29 R29 K66 ["Media"]
      223 DUPTABLE                         R30 K72 [{"id", "type", "shape", "background", "onStateChanged"}]
      224 SETTABLEKS                       R12 R30 K67 ["id"]
      226 GETUPVAL                         R31 15
      227 GETTABLEKS                       R31 R31 K73 ["Avatar"]
      229 SETTABLEKS                       R31 R30 K68 ["type"]
      231 GETUPVAL                         R31 16
      232 GETTABLEKS                       R31 R31 K74 ["Square"]
      234 SETTABLEKS                       R31 R30 K69 ["shape"]
      236 DUPTABLE                         R31 K77 [{"image", "style"}]
      237 SETTABLEKS                       R1 R31 K75 ["image"]
      239 DUPCLOSURE                       R34 K78 [PROTO_29]
      240 NAMECALL                         R32 R10 K79 ["map"]
      242 CALL                             R32 2 1
      243 SETTABLEKS                       R32 R31 K76 ["style"]
      245 SETTABLEKS                       R31 R30 K70 ["background"]
      247 SETTABLEKS                       R7 R30 K71 ["onStateChanged"]
      249 DUPTABLE                         R31 K81 [{"PlayerTileButtons"}]
      250 GETUPVAL                         R32 2
      251 GETTABLEKS                       R32 R32 K49 ["createElement"]
      253 GETUPVAL                         R33 12
      254 DUPTABLE                         R34 K83 [{"ZIndex", "tag"}]
      255 LOADN                            R35 2
      256 SETTABLEKS                       R35 R34 K82 ["ZIndex"]
      258 LOADK                            R35 K84 ["auto-y size-full-0 row gap-small align-x-right align-y-bottom anchor-bottom-right position-bottom-right"]
      259 SETTABLEKS                       R35 R34 K50 ["tag"]
      261 GETUPVAL                         R36 17
      262 GETTABLEKS                       R36 R36 K85 ["FoundationMigrateCryoToDash"]
      264 JUMPIFNOT                        R36 ; [+7]
      265 GETUPVAL                         R35 18
      266 GETTABLEKS                       R35 R35 K79 ["map"]
      268 GETUPVAL                         R36 19
      269 MOVE                             R37 R19
      270 CALL                             R35 2 1
      271 JUMP                             ; [+8]
      272 GETUPVAL                         R35 20
      273 GETTABLEKS                       R35 R35 K86 ["List"]
      275 GETTABLEKS                       R35 R35 K79 ["map"]
      277 GETUPVAL                         R36 19
      278 MOVE                             R37 R19
      279 CALL                             R35 2 1
      280 CALL                             R32 3 1
      281 SETTABLEKS                       R32 R31 K80 ["PlayerTileButtons"]
      283 CALL                             R28 3 1
      284 SETTABLEKS                       R28 R27 K63 ["TileMedia"]
      286 GETUPVAL                         R28 2
      287 GETTABLEKS                       R28 R28 K49 ["createElement"]
      289 GETUPVAL                         R29 13
      290 GETTABLEKS                       R29 R29 K87 ["Content"]
      292 DUPTABLE                         R30 K89 [{"spacing"}]
      293 GETTABLEKS                       R31 R0 K21 ["Gap"]
      295 GETTABLEKS                       R31 R31 K22 ["XSmall"]
      297 SETTABLEKS                       R31 R30 K88 ["spacing"]
      299 DUPTABLE                         R31 K92 [{"TileHeader", "TileFooter"}]
      300 GETUPVAL                         R32 2
      301 GETTABLEKS                       R32 R32 K49 ["createElement"]
      303 GETUPVAL                         R33 13
      304 GETTABLEKS                       R33 R33 K93 ["Header"]
      306 DUPTABLE                         R34 K96 [{"title", "subtitle"}]
      307 DUPTABLE                         R35 K98 [{"text", "isLoading"}]
      308 GETTABLEKS                       R36 R3 K99 ["DisplayName"]
      310 SETTABLEKS                       R36 R35 K8 ["text"]
      312 GETTABLEKS                       R37 R3 K99 ["DisplayName"]
      314 JUMPIFEQKNIL                     R37 ; [+2]
      316 LOADB                            R36 0 +1
      317 LOADB                            R36 1
      318 SETTABLEKS                       R36 R35 K97 ["isLoading"]
      320 SETTABLEKS                       R35 R34 K94 ["title"]
      322 DUPTABLE                         R35 K98 [{"text", "isLoading"}]
      323 GETTABLEKS                       R37 R3 K100 ["Username"]
      325 JUMPIFNOT                        R37 ; [+5]
      326 LOADK                            R37 K101 ["@"]
      327 GETTABLEKS                       R38 R3 K100 ["Username"]
      329 CONCAT                           R36 R37 R38
      330 JUMP                             ; [+1]
      331 LOADNIL                          R36
      332 SETTABLEKS                       R36 R35 K8 ["text"]
      334 GETTABLEKS                       R37 R3 K100 ["Username"]
      336 JUMPIFEQKNIL                     R37 ; [+2]
      338 LOADB                            R36 0 +1
      339 LOADB                            R36 1
      340 SETTABLEKS                       R36 R35 K97 ["isLoading"]
      342 SETTABLEKS                       R35 R34 K95 ["subtitle"]
      344 CALL                             R32 2 1
      345 SETTABLEKS                       R32 R31 K90 ["TileHeader"]
      347 GETUPVAL                         R32 2
      348 GETTABLEKS                       R32 R32 K49 ["createElement"]
      350 GETUPVAL                         R33 13
      351 GETTABLEKS                       R33 R33 K102 ["Footer"]
      353 NEWTABLE                         R34 0 0
      355 DUPTABLE                         R35 K104 [{"RelevancyInfo"}]
      356 GETUPVAL                         R36 2
      357 GETTABLEKS                       R36 R36 K49 ["createElement"]
      359 GETUPVAL                         R37 12
      360 DUPTABLE                         R38 K51 [{"tag"}]
      361 LOADK                            R39 K105 ["row gap-xsmall auto-y size-full-0"]
      362 SETTABLEKS                       R39 R38 K50 ["tag"]
      364 DUPTABLE                         R39 K108 [{"Icon", "Text"}]
      365 GETUPVAL                         R40 2
      366 GETTABLEKS                       R40 R40 K49 ["createElement"]
      368 GETUPVAL                         R41 21
      369 DUPTABLE                         R42 K111 [{"name", "size"}]
      370 GETTABLEKS                       R43 R2 K9 ["icon"]
      372 SETTABLEKS                       R43 R42 K109 ["name"]
      374 GETUPVAL                         R43 22
      375 GETTABLEKS                       R43 R43 K112 ["Small"]
      377 SETTABLEKS                       R43 R42 K110 ["size"]
      379 CALL                             R40 2 1
      380 SETTABLEKS                       R40 R39 K106 ["Icon"]
      382 GETUPVAL                         R40 2
      383 GETTABLEKS                       R40 R40 K49 ["createElement"]
      385 GETUPVAL                         R41 23
      386 DUPTABLE                         R42 K116 [{"textStyle", "fontStyle", "Text", "TextXAlignment", "Size", "AutomaticSize"}]
      387 GETTABLEKS                       R43 R0 K32 ["Color"]
      389 GETTABLEKS                       R43 R43 K87 ["Content"]
      391 GETTABLEKS                       R43 R43 K117 ["Emphasis"]
      393 SETTABLEKS                       R43 R42 K113 ["textStyle"]
      395 GETTABLEKS                       R43 R2 K10 ["fontStyle"]
      397 SETTABLEKS                       R43 R42 K10 ["fontStyle"]
      399 GETTABLEKS                       R43 R2 K8 ["text"]
      401 SETTABLEKS                       R43 R42 K107 ["Text"]
      403 GETIMPORT                        R43 K119 [Enum.TextXAlignment.Left]
      405 SETTABLEKS                       R43 R42 K114 ["TextXAlignment"]
      407 GETIMPORT                        R43 K121 [UDim2.fromScale]
      409 LOADN                            R44 1
      410 LOADN                            R45 0
      411 CALL                             R43 2 1
      412 SETTABLEKS                       R43 R42 K26 ["Size"]
      414 GETIMPORT                        R43 K123 [Enum.AutomaticSize.Y]
      416 SETTABLEKS                       R43 R42 K115 ["AutomaticSize"]
      418 CALL                             R40 2 1
      419 SETTABLEKS                       R40 R39 K107 ["Text"]
      421 CALL                             R36 3 1
      422 SETTABLEKS                       R36 R35 K103 ["RelevancyInfo"]
      424 CALL                             R32 3 1
      425 SETTABLEKS                       R32 R31 K91 ["TileFooter"]
      427 CALL                             R28 3 1
      428 SETTABLEKS                       R28 R27 K64 ["TileContent"]
      430 CALL                             R24 3 1
      431 SETTABLEKS                       R24 R23 K53 ["PlayerTile"]
      433 GETUPVAL                         R24 2
      434 GETTABLEKS                       R24 R24 K49 ["createElement"]
      436 GETUPVAL                         R25 13
      437 GETTABLEKS                       R25 R25 K56 ["Root"]
      439 DUPTABLE                         R26 K124 [{"FillDirection", "Size"}]
      440 GETIMPORT                        R27 K62 [Enum.FillDirection.Vertical]
      442 SETTABLEKS                       R27 R26 K57 ["FillDirection"]
      444 GETIMPORT                        R27 K25 [UDim2.fromOffset]
      446 LOADN                            R28 90
      447 LOADN                            R30 115
      448 ADD                              R29 R30 R18
      449 CALL                             R27 2 1
      450 SETTABLEKS                       R27 R26 K26 ["Size"]
      452 DUPTABLE                         R27 K65 [{"TileMedia", "TileContent"}]
      453 GETUPVAL                         R28 2
      454 GETTABLEKS                       R28 R28 K49 ["createElement"]
      456 GETUPVAL                         R29 13
      457 GETTABLEKS                       R29 R29 K66 ["Media"]
      459 DUPTABLE                         R30 K125 [{"id", "type", "shape", "background"}]
      460 SETTABLEKS                       R12 R30 K67 ["id"]
      462 GETUPVAL                         R31 15
      463 GETTABLEKS                       R31 R31 K126 ["AvatarHeadShot"]
      465 SETTABLEKS                       R31 R30 K68 ["type"]
      467 GETUPVAL                         R31 16
      468 GETTABLEKS                       R31 R31 K127 ["Circle"]
      470 SETTABLEKS                       R31 R30 K69 ["shape"]
      472 DUPTABLE                         R31 K128 [{"image"}]
      473 SETTABLEKS                       R1 R31 K75 ["image"]
      475 SETTABLEKS                       R31 R30 K70 ["background"]
      477 NEWTABLE                         R31 0 1
      479 GETUPVAL                         R32 2
      480 GETTABLEKS                       R32 R32 K49 ["createElement"]
      482 GETUPVAL                         R33 24
      483 DUPTABLE                         R34 K130 [{"tag", "Image"}]
      484 LOADK                            R35 K131 ["position-bottom-right anchor-center-center size-700-700 bg-system-success stroke-emphasis radius-circle"]
      485 SETTABLEKS                       R35 R34 K50 ["tag"]
      487 LOADK                            R35 K132 ["icons/placeholder/placeholderOff"]
      488 SETTABLEKS                       R35 R34 K129 ["Image"]
      490 CALL                             R32 2 -1
      491 SETLIST                          R31 R32 -1 [1]
      493 CALL                             R28 3 1
      494 SETTABLEKS                       R28 R27 K63 ["TileMedia"]
      496 GETUPVAL                         R28 2
      497 GETTABLEKS                       R28 R28 K49 ["createElement"]
      499 GETUPVAL                         R29 13
      500 GETTABLEKS                       R29 R29 K87 ["Content"]
      502 DUPTABLE                         R30 K89 [{"spacing"}]
      503 GETTABLEKS                       R31 R0 K21 ["Gap"]
      505 GETTABLEKS                       R31 R31 K133 ["XXSmall"]
      507 SETTABLEKS                       R31 R30 K88 ["spacing"]
      509 DUPTABLE                         R31 K134 [{"TileHeader"}]
      510 GETUPVAL                         R32 2
      511 GETTABLEKS                       R32 R32 K49 ["createElement"]
      513 GETUPVAL                         R33 13
      514 GETTABLEKS                       R33 R33 K93 ["Header"]
      516 DUPTABLE                         R34 K135 [{"title", "subtitle", "TextXAlignment"}]
      517 DUPTABLE                         R35 K98 [{"text", "isLoading"}]
      518 GETTABLEKS                       R36 R3 K99 ["DisplayName"]
      520 SETTABLEKS                       R36 R35 K8 ["text"]
      522 GETTABLEKS                       R37 R3 K99 ["DisplayName"]
      524 JUMPIFEQKNIL                     R37 ; [+2]
      526 LOADB                            R36 0 +1
      527 LOADB                            R36 1
      528 SETTABLEKS                       R36 R35 K97 ["isLoading"]
      530 SETTABLEKS                       R35 R34 K94 ["title"]
      532 DUPTABLE                         R35 K98 [{"text", "isLoading"}]
      533 GETTABLEKS                       R36 R2 K8 ["text"]
      535 SETTABLEKS                       R36 R35 K8 ["text"]
      537 GETTABLEKS                       R37 R3 K99 ["DisplayName"]
      539 JUMPIFEQKNIL                     R37 ; [+2]
      541 LOADB                            R36 0 +1
      542 LOADB                            R36 1
      543 SETTABLEKS                       R36 R35 K97 ["isLoading"]
      545 SETTABLEKS                       R35 R34 K95 ["subtitle"]
      547 GETIMPORT                        R35 K137 [Enum.TextXAlignment.Center]
      549 SETTABLEKS                       R35 R34 K114 ["TextXAlignment"]
      551 CALL                             R32 2 1
      552 SETTABLEKS                       R32 R31 K90 ["TileHeader"]
      554 CALL                             R28 3 1
      555 SETTABLEKS                       R28 R27 K64 ["TileContent"]
      557 CALL                             R24 3 1
      558 SETTABLEKS                       R24 R23 K54 ["OldPlayerTile"]
      560 CALL                             R20 3 -1
      561 RETURN                           R20 -1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K2 [{"tag"}]
        7 LOADK                            R5 K3 ["auto-xy gap-large row"]
        8 SETTABLEKS                       R5 R4 K1 ["tag"]
       10 DUPTABLE                         R5 K5 [{"MarketplaceTile"}]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K0 ["createElement"]
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R7 R7 K6 ["Root"]
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
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R10 R10 K0 ["createElement"]
       35 GETUPVAL                         R11 3
       36 GETTABLEKS                       R11 R11 K19 ["Content"]
       38 DUPTABLE                         R12 K22 [{"spacing", "LayoutOrder"}]
       39 GETTABLEKS                       R13 R1 K23 ["Gap"]
       41 GETTABLEKS                       R13 R13 K24 ["XSmall"]
       43 SETTABLEKS                       R13 R12 K20 ["spacing"]
       45 LOADN                            R13 1
       46 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
       48 DUPTABLE                         R13 K27 [{"TileHeader", "TileFooter"}]
       49 GETUPVAL                         R14 1
       50 GETTABLEKS                       R14 R14 K0 ["createElement"]
       52 GETUPVAL                         R15 3
       53 GETTABLEKS                       R15 R15 K28 ["Header"]
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
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R14 R14 K0 ["createElement"]
       74 GETUPVAL                         R15 3
       75 GETTABLEKS                       R15 R15 K36 ["Footer"]
       77 NEWTABLE                         R16 0 0
       79 NEWTABLE                         R17 0 0
       81 CALL                             R14 3 1
       82 SETTABLEKS                       R14 R13 K26 ["TileFooter"]
       84 CALL                             R10 3 1
       85 SETTABLEKS                       R10 R9 K16 ["TileContent"]
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R10 R10 K0 ["createElement"]
       90 GETUPVAL                         R11 3
       91 GETTABLEKS                       R11 R11 K37 ["Media"]
       93 DUPTABLE                         R12 K41 [{"id", "type", "shape", "LayoutOrder"}]
       94 GETTABLEKS                       R13 R0 K42 ["controls"]
       96 GETTABLEKS                       R13 R13 K43 ["placeId"]
       98 SETTABLEKS                       R13 R12 K38 ["id"]
      100 GETUPVAL                         R13 4
      101 GETTABLEKS                       R13 R13 K44 ["Asset"]
      103 SETTABLEKS                       R13 R12 K39 ["type"]
      105 GETUPVAL                         R13 5
      106 GETTABLEKS                       R13 R13 K45 ["Square"]
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
      230 LOADN                            R38 44
      231 LOADN                            R39 24
      232 CALL                             R37 2 1
      233 NEWTABLE                         R38 0 1
      235 DUPTABLE                         R39 K58 [{"icon", "onActivated", "variant"}]
      236 LOADK                            R40 K59 ["icons/actions/friends/friendpending"]
      237 SETTABLEKS                       R40 R39 K55 ["icon"]
      239 DUPCLOSURE                       R40 K60 [PROTO_2]
      240 SETTABLEKS                       R40 R39 K56 ["onActivated"]
      242 GETTABLEKS                       R40 R24 K61 ["SubEmphasis"]
      244 SETTABLEKS                       R40 R39 K57 ["variant"]
      246 SETLIST                          R38 R39 1 [1]
      248 DUPCLOSURE                       R39 K62 [PROTO_3]
      249 CAPTURE                          VAL R11
      250 CAPTURE                          VAL R25
      251 DUPCLOSURE                       R40 K63 [PROTO_4]
      252 DUPTABLE                         R41 K65 [{"frequency"}]
      253 LOADN                            R42 4
      254 SETTABLEKS                       R42 R41 K64 ["frequency"]
      256 DUPCLOSURE                       R42 K66 [PROTO_5]
      257 CAPTURE                          VAL R12
      258 CAPTURE                          VAL R41
      259 DUPTABLE                         R43 K70 [{"name", "stories", "controls"}]
      260 LOADK                            R44 K27 ["Tile"]
      261 SETTABLEKS                       R44 R43 K67 ["name"]
      263 DUPTABLE                         R44 K77 [{"Configurable", "Fun", "Experience", "Item", "Player", "Marketplace"}]
      264 DUPTABLE                         R45 K79 [{"name", "story"}]
      265 LOADK                            R46 K80 ["Configurable Tile"]
      266 SETTABLEKS                       R46 R45 K67 ["name"]
      268 DUPCLOSURE                       R46 K81 [PROTO_6]
      269 CAPTURE                          VAL R28
      270 CAPTURE                          VAL R29
      271 CAPTURE                          VAL R11
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R16
      274 CAPTURE                          VAL R39
      275 SETTABLEKS                       R46 R45 K78 ["story"]
      277 SETTABLEKS                       R45 R44 K71 ["Configurable"]
      279 DUPTABLE                         R45 K79 [{"name", "story"}]
      280 LOADK                            R46 K82 ["Fun Tile"]
      281 SETTABLEKS                       R46 R45 K67 ["name"]
      283 DUPCLOSURE                       R46 K83 [PROTO_9]
      284 CAPTURE                          VAL R28
      285 CAPTURE                          VAL R18
      286 CAPTURE                          VAL R11
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R2
      289 CAPTURE                          VAL R4
      290 CAPTURE                          VAL R29
      291 CAPTURE                          VAL R15
      292 CAPTURE                          VAL R17
      293 CAPTURE                          VAL R30
      294 SETTABLEKS                       R46 R45 K78 ["story"]
      296 SETTABLEKS                       R45 R44 K72 ["Fun"]
      298 DUPTABLE                         R45 K79 [{"name", "story"}]
      299 LOADK                            R46 K84 ["Experience Tile"]
      300 SETTABLEKS                       R46 R45 K67 ["name"]
      302 DUPCLOSURE                       R46 K85 [PROTO_19]
      303 CAPTURE                          VAL R28
      304 CAPTURE                          VAL R11
      305 CAPTURE                          VAL R32
      306 CAPTURE                          VAL R33
      307 CAPTURE                          VAL R1
      308 CAPTURE                          VAL R12
      309 CAPTURE                          VAL R29
      310 CAPTURE                          VAL R26
      311 CAPTURE                          VAL R15
      312 CAPTURE                          VAL R36
      313 CAPTURE                          VAL R16
      314 CAPTURE                          VAL R17
      315 CAPTURE                          VAL R39
      316 CAPTURE                          VAL R22
      317 CAPTURE                          VAL R23
      318 CAPTURE                          VAL R24
      319 CAPTURE                          VAL R31
      320 CAPTURE                          VAL R37
      321 SETTABLEKS                       R46 R45 K78 ["story"]
      323 SETTABLEKS                       R45 R44 K73 ["Experience"]
      325 DUPTABLE                         R45 K79 [{"name", "story"}]
      326 LOADK                            R46 K86 ["Item Tile"]
      327 SETTABLEKS                       R46 R45 K67 ["name"]
      329 DUPCLOSURE                       R46 K87 [PROTO_22]
      330 CAPTURE                          VAL R28
      331 CAPTURE                          VAL R18
      332 CAPTURE                          VAL R11
      333 CAPTURE                          VAL R1
      334 CAPTURE                          VAL R29
      335 CAPTURE                          VAL R15
      336 CAPTURE                          VAL R35
      337 CAPTURE                          VAL R16
      338 CAPTURE                          VAL R17
      339 SETTABLEKS                       R46 R45 K78 ["story"]
      341 SETTABLEKS                       R45 R44 K74 ["Item"]
      343 DUPTABLE                         R45 K79 [{"name", "story"}]
      344 LOADK                            R46 K88 ["Player Tile"]
      345 SETTABLEKS                       R46 R45 K67 ["name"]
      347 DUPCLOSURE                       R46 K89 [PROTO_30]
      348 CAPTURE                          VAL R28
      349 CAPTURE                          VAL R18
      350 CAPTURE                          VAL R11
      351 CAPTURE                          VAL R32
      352 CAPTURE                          VAL R12
      353 CAPTURE                          VAL R42
      354 CAPTURE                          VAL R9
      355 CAPTURE                          VAL R6
      356 CAPTURE                          VAL R0
      357 CAPTURE                          VAL R29
      358 CAPTURE                          VAL R22
      359 CAPTURE                          VAL R23
      360 CAPTURE                          VAL R26
      361 CAPTURE                          VAL R15
      362 CAPTURE                          VAL R34
      363 CAPTURE                          VAL R16
      364 CAPTURE                          VAL R17
      365 CAPTURE                          VAL R10
      366 CAPTURE                          VAL R14
      367 CAPTURE                          VAL R38
      368 CAPTURE                          VAL R13
      369 CAPTURE                          VAL R19
      370 CAPTURE                          VAL R21
      371 CAPTURE                          VAL R25
      372 CAPTURE                          VAL R20
      373 SETTABLEKS                       R46 R45 K78 ["story"]
      375 SETTABLEKS                       R45 R44 K75 ["Player"]
      377 DUPTABLE                         R45 K79 [{"name", "story"}]
      378 LOADK                            R46 K90 ["Marketplace Tile (work in progress)"]
      379 SETTABLEKS                       R46 R45 K67 ["name"]
      381 DUPCLOSURE                       R46 K91 [PROTO_31]
      382 CAPTURE                          VAL R28
      383 CAPTURE                          VAL R11
      384 CAPTURE                          VAL R26
      385 CAPTURE                          VAL R15
      386 CAPTURE                          VAL R16
      387 CAPTURE                          VAL R17
      388 SETTABLEKS                       R46 R45 K78 ["story"]
      390 SETTABLEKS                       R45 R44 K76 ["Marketplace"]
      392 SETTABLEKS                       R44 R43 K68 ["stories"]
      394 DUPTABLE                         R44 K101 [{"fillDirection", "itemId", "isContained", "shape", "title", "numTitleLines", "numSubtitleLines", "subtitle", "placeId"}]
      395 NEWTABLE                         R45 0 2
      397 GETIMPORT                        R46 K105 [Enum.FillDirection.Vertical]
      399 GETIMPORT                        R47 K107 [Enum.FillDirection.Horizontal]
      401 SETLIST                          R45 R46 2 [1]
      403 SETTABLEKS                       R45 R44 K92 ["fillDirection"]
      405 NEWTABLE                         R45 0 4
      407 LOADK                            R46 K108 [21070012]
      408 LOADK                            R47 K109 [125378389]
      409 LOADK                            R48 K110 [14825332446]
      410 LOADK                            R49 K111 [3360689775]
      411 SETLIST                          R45 R46 4 [1]
      413 SETTABLEKS                       R45 R44 K93 ["itemId"]
      415 LOADB                            R45 1
      416 SETTABLEKS                       R45 R44 K94 ["isContained"]
      418 NEWTABLE                         R45 0 4
      420 GETTABLEKS                       R46 R17 K112 ["Square"]
      422 GETTABLEKS                       R47 R17 K113 ["Landscape"]
      424 GETTABLEKS                       R48 R17 K114 ["Portrait"]
      426 GETTABLEKS                       R49 R17 K115 ["Circle"]
      428 SETLIST                          R45 R46 4 [1]
      430 SETTABLEKS                       R45 R44 K95 ["shape"]
      432 LOADK                            R45 K116 ["Build a Boat for Treasure"]
      433 SETTABLEKS                       R45 R44 K96 ["title"]
      435 LOADN                            R45 2
      436 SETTABLEKS                       R45 R44 K97 ["numTitleLines"]
      438 LOADN                            R45 1
      439 SETTABLEKS                       R45 R44 K98 ["numSubtitleLines"]
      441 LOADK                            R45 K117 ["By Koi Koi Studios"]
      442 SETTABLEKS                       R45 R44 K99 ["subtitle"]
      444 NEWTABLE                         R45 0 2
      446 LOADK                            R46 K48 [2727067538]
      447 LOADK                            R47 K50 [1537690962]
      448 SETLIST                          R45 R46 2 [1]
      450 SETTABLEKS                       R45 R44 K100 ["placeId"]
      452 SETTABLEKS                       R44 R43 K69 ["controls"]
      454 RETURN                           R43 1
