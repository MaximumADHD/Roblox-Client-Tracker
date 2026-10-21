PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["X"]
        2 GETTABLEKS                       R2 R0 K1 ["Y"]
        4 NEWTABLE                         R3 0 2
        6 MOVE                             R4 R1
        7 MOVE                             R5 R2
        8 SETLIST                          R3 R4 2 [1]
       10 RETURN                           R3 1

PROTO_2:
        0 GETTABLEN                        R4 R0 1
        1 FASTCALL1                        TONUMBER R4 ; [+2]
        2 GETIMPORT                        R3 K1 [tonumber]
        4 CALL                             R3 1 1
        5 MOVE                             R1 R3
        6 GETTABLEN                        R3 R0 2
        7 FASTCALL1                        TONUMBER R3 ; [+2]
        8 GETIMPORT                        R2 K1 [tonumber]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K4 [Vector2.new]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R2
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"Name", "Value"}]
        1 DUPTABLE                         R1 K5 [{["Schema"], ["Value"] = ""}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K3 ["Schema"]
        5 SETTABLEKS                       R1 R0 K0 ["Name"]
        7 DUPTABLE                         R1 K5 [{["Schema"], ["Value"] = ""}]
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K3 ["Schema"]
       11 SETTABLEKS                       R1 R0 K1 ["Value"]
       13 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"Name", "Children"}]
        1 DUPTABLE                         R1 K9 [{["Actions"], ["FullSpan"] = True, ["Schema"], ["Value"] = ""}]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R1 K3 ["Actions"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K11 [{["Editing"] = True}]
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R1 K6 ["Schema"]
       11 SETTABLEKS                       R1 R0 K0 ["Name"]
       13 NEWTABLE                         R1 0 1
       15 GETUPVAL                         R2 3
       16 CALL                             R2 0 1
       17 SETLIST                          R1 R2 1 [1]
       19 SETTABLEKS                       R1 R0 K1 ["Children"]
       21 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K2 [{"Name", "Children"}]
        3 DUPTABLE                         R2 K9 [{["Actions"], ["FullSpan"] = True, ["Schema"], ["Value"] = "TextLabel"}]
        4 GETUPVAL                         R3 0
        5 SETTABLEKS                       R3 R2 K3 ["Actions"]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K6 ["Schema"]
       10 SETTABLEKS                       R2 R1 K0 ["Name"]
       12 NEWTABLE                         R2 0 5
       14 DUPTABLE                         R3 K10 [{"Name", "Value"}]
       15 DUPTABLE                         R4 K12 [{["Actions"], ["Schema"], ["Value"] = "BackgroundColor3"}]
       16 GETUPVAL                         R5 2
       17 SETTABLEKS                       R5 R4 K3 ["Actions"]
       19 GETUPVAL                         R5 3
       20 SETTABLEKS                       R5 R4 K6 ["Schema"]
       22 SETTABLEKS                       R4 R3 K0 ["Name"]
       24 DUPTABLE                         R4 K13 [{"Schema", "Value"}]
       25 GETUPVAL                         R5 4
       26 SETTABLEKS                       R5 R4 K6 ["Schema"]
       28 GETIMPORT                        R5 K16 [Color3.fromRGB]
       30 LOADN                            R6 200
       31 LOADN                            R7 30
       32 LOADN                            R8 120
       33 CALL                             R5 3 1
       34 SETTABLEKS                       R5 R4 K7 ["Value"]
       36 SETTABLEKS                       R4 R3 K7 ["Value"]
       38 DUPTABLE                         R4 K10 [{"Name", "Value"}]
       39 DUPTABLE                         R5 K18 [{["Actions"], ["Schema"], ["Value"] = "Font"}]
       40 GETUPVAL                         R6 2
       41 SETTABLEKS                       R6 R5 K3 ["Actions"]
       43 GETUPVAL                         R6 3
       44 SETTABLEKS                       R6 R5 K6 ["Schema"]
       46 SETTABLEKS                       R5 R4 K0 ["Name"]
       48 DUPTABLE                         R5 K20 [{["Schema"], ["Value"] = "Gotham"}]
       49 GETUPVAL                         R6 5
       50 SETTABLEKS                       R6 R5 K6 ["Schema"]
       52 SETTABLEKS                       R5 R4 K7 ["Value"]
       54 DUPTABLE                         R5 K10 [{"Name", "Value"}]
       55 DUPTABLE                         R6 K22 [{["Actions"], ["Schema"], ["Value"] = "AnchorPoint"}]
       56 GETUPVAL                         R7 2
       57 SETTABLEKS                       R7 R6 K3 ["Actions"]
       59 GETUPVAL                         R7 3
       60 SETTABLEKS                       R7 R6 K6 ["Schema"]
       62 SETTABLEKS                       R6 R5 K0 ["Name"]
       64 DUPTABLE                         R6 K13 [{"Schema", "Value"}]
       65 GETUPVAL                         R7 6
       66 SETTABLEKS                       R7 R6 K6 ["Schema"]
       68 GETIMPORT                        R7 K25 [Vector2.new]
       70 LOADN                            R8 0
       71 LOADN                            R9 0
       72 CALL                             R7 2 1
       73 SETTABLEKS                       R7 R6 K7 ["Value"]
       75 SETTABLEKS                       R6 R5 K7 ["Value"]
       77 DUPTABLE                         R6 K10 [{"Name", "Value"}]
       78 DUPTABLE                         R7 K27 [{["Actions"], ["Schema"], ["Value"] = "TextTransparency"}]
       79 GETUPVAL                         R8 2
       80 SETTABLEKS                       R8 R7 K3 ["Actions"]
       82 GETUPVAL                         R8 3
       83 SETTABLEKS                       R8 R7 K6 ["Schema"]
       85 SETTABLEKS                       R7 R6 K0 ["Name"]
       87 DUPTABLE                         R7 K29 [{["Schema"], ["Value"] = 0.5}]
       88 GETUPVAL                         R8 7
       89 SETTABLEKS                       R8 R7 K6 ["Schema"]
       91 SETTABLEKS                       R7 R6 K7 ["Value"]
       93 GETUPVAL                         R7 8
       94 CALL                             R7 0 1
       95 SETLIST                          R2 R3 5 [1]
       97 SETTABLEKS                       R2 R1 K1 ["Children"]
       99 DUPTABLE                         R2 K2 [{"Name", "Children"}]
      100 DUPTABLE                         R3 K33 [{["Actions"], ["FullSpan"] = True, ["Schema"], ["Value"] = "Error", ["ErrorMessage"] = "This is an error"}]
      101 GETUPVAL                         R4 0
      102 SETTABLEKS                       R4 R3 K3 ["Actions"]
      104 GETUPVAL                         R4 1
      105 SETTABLEKS                       R4 R3 K6 ["Schema"]
      107 SETTABLEKS                       R3 R2 K0 ["Name"]
      109 NEWTABLE                         R3 0 3
      111 GETUPVAL                         R4 8
      112 CALL                             R4 0 1
      113 DUPTABLE                         R5 K2 [{"Name", "Children"}]
      114 DUPTABLE                         R6 K33 [{["Actions"], ["FullSpan"] = True, ["Schema"], ["Value"] = "Error", ["ErrorMessage"] = "This is an error"}]
      115 GETUPVAL                         R7 0
      116 SETTABLEKS                       R7 R6 K3 ["Actions"]
      118 GETUPVAL                         R7 1
      119 SETTABLEKS                       R7 R6 K6 ["Schema"]
      121 SETTABLEKS                       R6 R5 K0 ["Name"]
      123 NEWTABLE                         R6 0 2
      125 DUPTABLE                         R7 K10 [{"Name", "Value"}]
      126 DUPTABLE                         R8 K35 [{["Value"] = "ImageTransparency", ["Actions"], ["Schema"]}]
      127 GETUPVAL                         R9 2
      128 SETTABLEKS                       R9 R8 K3 ["Actions"]
      130 GETUPVAL                         R9 3
      131 SETTABLEKS                       R9 R8 K6 ["Schema"]
      133 SETTABLEKS                       R8 R7 K0 ["Name"]
      135 DUPTABLE                         R8 K36 [{["Value"] = 0.5, ["Schema"]}]
      136 GETUPVAL                         R9 7
      137 SETTABLEKS                       R9 R8 K6 ["Schema"]
      139 SETTABLEKS                       R8 R7 K7 ["Value"]
      141 GETUPVAL                         R8 8
      142 CALL                             R8 0 1
      143 SETLIST                          R6 R7 2 [1]
      145 SETTABLEKS                       R6 R5 K1 ["Children"]
      147 DUPTABLE                         R6 K2 [{"Name", "Children"}]
      148 DUPTABLE                         R7 K38 [{["Actions"], ["FullSpan"] = True, ["Schema"], ["Value"] = ":Hover.ImageLabel"}]
      149 GETUPVAL                         R8 0
      150 SETTABLEKS                       R8 R7 K3 ["Actions"]
      152 GETUPVAL                         R8 1
      153 SETTABLEKS                       R8 R7 K6 ["Schema"]
      155 SETTABLEKS                       R7 R6 K0 ["Name"]
      157 NEWTABLE                         R7 0 2
      159 DUPTABLE                         R8 K10 [{"Name", "Value"}]
      160 DUPTABLE                         R9 K39 [{["Actions"], ["Schema"], ["Value"] = "ImageTransparency"}]
      161 GETUPVAL                         R10 2
      162 SETTABLEKS                       R10 R9 K3 ["Actions"]
      164 GETUPVAL                         R10 3
      165 SETTABLEKS                       R10 R9 K6 ["Schema"]
      167 SETTABLEKS                       R9 R8 K0 ["Name"]
      169 DUPTABLE                         R9 K41 [{["Schema"], ["Value"] = 0.8}]
      170 GETUPVAL                         R10 7
      171 SETTABLEKS                       R10 R9 K6 ["Schema"]
      173 SETTABLEKS                       R9 R8 K7 ["Value"]
      175 GETUPVAL                         R9 8
      176 CALL                             R9 0 1
      177 SETLIST                          R7 R8 2 [1]
      179 SETTABLEKS                       R7 R6 K1 ["Children"]
      181 SETLIST                          R3 R4 3 [1]
      183 SETTABLEKS                       R3 R2 K1 ["Children"]
      185 DUPTABLE                         R3 K2 [{"Name", "Children"}]
      186 DUPTABLE                         R4 K43 [{["Actions"], ["FullSpan"] = True, ["Schema"], ["Value"] = "Frame $Dialog"}]
      187 GETUPVAL                         R5 0
      188 SETTABLEKS                       R5 R4 K3 ["Actions"]
      190 GETUPVAL                         R5 1
      191 SETTABLEKS                       R5 R4 K6 ["Schema"]
      193 SETTABLEKS                       R4 R3 K0 ["Name"]
      195 NEWTABLE                         R4 0 2
      197 DUPTABLE                         R5 K2 [{"Name", "Children"}]
      198 DUPTABLE                         R6 K45 [{["Actions"], ["FullSpan"] = True, ["Schema"], ["Value"] = "Frame $Alert"}]
      199 GETUPVAL                         R7 0
      200 SETTABLEKS                       R7 R6 K3 ["Actions"]
      202 GETUPVAL                         R7 1
      203 SETTABLEKS                       R7 R6 K6 ["Schema"]
      205 SETTABLEKS                       R6 R5 K0 ["Name"]
      207 NEWTABLE                         R6 0 2
      209 DUPTABLE                         R7 K10 [{"Name", "Value"}]
      210 DUPTABLE                         R8 K47 [{["Value"] = "Image", ["Actions"], ["Schema"]}]
      211 GETUPVAL                         R9 2
      212 SETTABLEKS                       R9 R8 K3 ["Actions"]
      214 GETUPVAL                         R9 3
      215 SETTABLEKS                       R9 R8 K6 ["Schema"]
      217 SETTABLEKS                       R8 R7 K0 ["Name"]
      219 DUPTABLE                         R8 K49 [{["Value"] = "rbxassetid://textures/alert", ["Schema"]}]
      220 GETUPVAL                         R9 9
      221 SETTABLEKS                       R9 R8 K6 ["Schema"]
      223 SETTABLEKS                       R8 R7 K7 ["Value"]
      225 GETUPVAL                         R8 8
      226 CALL                             R8 0 1
      227 SETLIST                          R6 R7 2 [1]
      229 SETTABLEKS                       R6 R5 K1 ["Children"]
      231 DUPTABLE                         R6 K2 [{"Name", "Children"}]
      232 DUPTABLE                         R7 K51 [{["Actions"], ["FullSpan"] = True, ["Schema"], ["Value"] = ".. Frame $ButtonRow ::UIListLayout"}]
      233 GETUPVAL                         R8 0
      234 SETTABLEKS                       R8 R7 K3 ["Actions"]
      236 GETUPVAL                         R8 1
      237 SETTABLEKS                       R8 R7 K6 ["Schema"]
      239 SETTABLEKS                       R7 R6 K0 ["Name"]
      241 NEWTABLE                         R7 0 2
      243 DUPTABLE                         R8 K10 [{"Name", "Value"}]
      244 DUPTABLE                         R9 K53 [{["Value"] = "FillDirection", ["Actions"], ["Schema"]}]
      245 GETUPVAL                         R10 2
      246 SETTABLEKS                       R10 R9 K3 ["Actions"]
      248 GETUPVAL                         R10 3
      249 SETTABLEKS                       R10 R9 K6 ["Schema"]
      251 SETTABLEKS                       R9 R8 K0 ["Name"]
      253 DUPTABLE                         R9 K55 [{["Value"] = "", ["Schema"]}]
      254 GETUPVAL                         R10 10
      255 SETTABLEKS                       R10 R9 K6 ["Schema"]
      257 SETTABLEKS                       R9 R8 K7 ["Value"]
      259 GETUPVAL                         R9 8
      260 CALL                             R9 0 1
      261 SETLIST                          R7 R8 2 [1]
      263 SETTABLEKS                       R7 R6 K1 ["Children"]
      265 SETLIST                          R4 R5 2 [1]
      267 SETTABLEKS                       R4 R3 K1 ["Children"]
      269 SETLIST                          R0 R1 3 [1]
      271 RETURN                           R0 1

PROTO_6:
        0 NEWTABLE                         R1 0 4
        2 DUPTABLE                         R2 K4 [{[1] = "Text", ["Label"] = "Text", ["Value"] = "Text"}]
        3 DUPTABLE                         R3 K6 [{[1] = "Color", ["Label"] = "Color", ["Value"] = "Color"}]
        4 DUPTABLE                         R4 K8 [{[1] = "Frame", ["Label"] = "Frame", ["Value"] = "Frame"}]
        5 DUPTABLE                         R5 K10 [{[1] = "Image", ["Label"] = "Image", ["Value"] = "Image"}]
        6 SETLIST                          R1 R2 4 [1]
        8 NEWTABLE                         R2 0 0
       10 GETIMPORT                        R3 K12 [ipairs]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 3
       14 FORGPREP_INEXT                   R3
       15 GETIMPORT                        R9 K15 [string.lower]
       17 GETTABLEKS                       R10 R7 K0 ["Id"]
       19 CALL                             R9 1 1
       20 LOADN                            R10 1
       21 FASTCALL1                        STRING_LEN R0 ; [+3]
       22 MOVE                             R12 R0
       23 GETIMPORT                        R11 K17 [string.len]
       25 CALL                             R11 1 1
       26 FASTCALL                         STRING_SUB ; [+2]
       27 GETIMPORT                        R8 K19 [string.sub]
       29 CALL                             R8 3 1
       30 GETIMPORT                        R9 K15 [string.lower]
       32 MOVE                             R10 R0
       33 CALL                             R9 1 1
       34 JUMPIFNOTEQ                      R8 R9 ; [+8]
       36 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       38 MOVE                             R9 R2
       39 MOVE                             R10 R7
       40 GETIMPORT                        R8 K22 [table.insert]
       42 CALL                             R8 2 0
       43 FORGLOOP                         R3 2 [inext] ; [-29]
       45 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["Sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETUPVAL                         R6 3
        5 NAMECALL                         R1 R1 K0 ["updateCell"]
        7 CALL                             R1 5 -1
        8 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["removeItem"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R4 R0 K0 ["Items"]
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R2 R2 K1 ["getChild"]
        8 CALL                             R2 3 1
        9 GETUPVAL                         R3 1
       10 MOVE                             R5 R0
       11 GETUPVAL                         R6 2
       12 MOVE                             R7 R1
       13 GETTABLEKS                       R10 R2 K3 ["Children"]
       15 LENGTH                           R9 R10
       16 ADDK                             R8 R9 K2 [1]
       17 NAMECALL                         R3 R3 K4 ["insertRow"]
       19 CALL                             R3 5 1
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R3
       22 GETUPVAL                         R6 1
       23 MOVE                             R8 R3
       24 GETUPVAL                         R9 2
       25 LOADB                            R10 1
       26 NAMECALL                         R6 R6 K5 ["togglePath"]
       28 CALL                             R6 4 -1
       29 CALL                             R4 -1 1
       30 GETTABLEKS                       R5 R4 K6 ["Expansion"]
       32 LOADB                            R6 1
       33 SETTABLE                         R6 R5 R1
       34 RETURN                           R4 1

PROTO_11:
        0 JUMPIFNOTEQKS                    R0 K0 ["Edit"] ; [+18]
        2 DUPTABLE                         R3 K2 [{"Schema"}]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 DUPTABLE                         R6 K5 [{["Editing"] = True}]
        6 CALL                             R4 2 1
        7 SETTABLEKS                       R4 R3 K1 ["Schema"]
        9 GETUPVAL                         R4 2
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 NAMECALL                         R4 R4 K6 ["setState"]
       17 CALL                             R4 2 0
       18 RETURN                           R0 0
       19 JUMPIFNOTEQKS                    R0 K7 ["Delete"] ; [+9]
       21 GETUPVAL                         R3 2
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R1
       25 NAMECALL                         R3 R3 K6 ["setState"]
       27 CALL                             R3 2 0
       28 RETURN                           R0 0
       29 JUMPIFNOTEQKS                    R0 K8 ["Add"] ; [+11]
       31 GETUPVAL                         R3 2
       32 NEWCLOSURE                       R5 P2
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U0
       37 NAMECALL                         R3 R3 K6 ["setState"]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0
       41 JUMPIFNOTEQKS                    R0 K9 ["Variable"] ; [+5]
       43 GETIMPORT                        R3 K11 [print]
       45 LOADK                            R4 K12 ["Switch to Variable schema!"]
       46 CALL                             R3 1 0
       47 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["removeItem"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K3 [{[1] = 0, ["Schema"]}]
        3 GETUPVAL                         R5 1
        4 SETTABLEKS                       R5 R4 K2 ["Schema"]
        6 GETUPVAL                         R5 2
        7 LOADN                            R6 2
        8 NAMECALL                         R1 R1 K4 ["updateCell"]
       10 CALL                             R1 5 1
       11 GETUPVAL                         R2 3
       12 GETUPVAL                         R3 2
       13 LOADN                            R4 1
       14 LOADN                            R5 -1
       15 CALL                             R2 3 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R5 R1 K5 ["Items"]
       19 MOVE                             R6 R2
       20 NAMECALL                         R3 R3 K6 ["getChild"]
       22 CALL                             R3 3 1
       23 GETTABLEKS                       R6 R3 K8 ["Children"]
       25 LENGTH                           R5 R6
       26 ADDK                             R4 R5 K7 [1]
       27 LOADN                            R7 1
       28 GETTABLEKS                       R8 R3 K8 ["Children"]
       30 LENGTH                           R5 R8
       31 LOADN                            R6 1
       32 FORNPREP                         R5
       33 GETTABLEKS                       R9 R3 K8 ["Children"]
       35 GETTABLE                         R8 R9 R7
       36 GETTABLEKS                       R8 R8 K9 ["Name"]
       38 GETTABLEKS                       R8 R8 K10 ["FullSpan"]
       40 JUMPIFNOT                        R8 ; [+2]
       41 MOVE                             R4 R7
       42 JUMP                             ; [+1]
       43 FORNLOOP                         R5
       44 GETUPVAL                         R5 0
       45 MOVE                             R7 R1
       46 MOVE                             R8 R2
       47 GETUPVAL                         R9 4
       48 CALL                             R9 0 1
       49 MOVE                             R10 R4
       50 NAMECALL                         R5 R5 K11 ["insertRow"]
       52 CALL                             R5 5 -1
       53 RETURN                           R5 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETUPVAL                         R6 3
        5 NAMECALL                         R1 R1 K0 ["updateCell"]
        7 CALL                             R1 5 -1
        8 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["state"]
        4 GETTABLEKS                       R5 R5 K1 ["Items"]
        6 MOVE                             R6 R1
        7 NAMECALL                         R3 R3 K2 ["getChild"]
        9 CALL                             R3 3 1
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 JUMPIFNOTEQKN                    R2 K3 [1] ; [+17]
       14 JUMPIFNOTEQKS                    R0 K4 [""] ; [+15]
       16 GETTABLEKS                       R4 R3 K5 ["Name"]
       18 GETTABLEKS                       R4 R4 K6 ["Value"]
       20 JUMPIFEQKS                       R4 K4 [""] ; [+9]
       22 GETUPVAL                         R4 1
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R1
       26 NAMECALL                         R4 R4 K7 ["setState"]
       28 CALL                             R4 2 0
       29 RETURN                           R0 0
       30 DUPTABLE                         R4 K8 [{"Value"}]
       31 SETTABLEKS                       R0 R4 K6 ["Value"]
       33 JUMPIFNOTEQKS                    R0 K9 ["Error"] ; [+5]
       35 LOADK                            R5 K10 ["Error tooltip"]
       36 SETTABLEKS                       R5 R4 K11 ["ErrorMessage"]
       38 JUMP                             ; [+3]
       39 LOADK                            R5 K4 [""]
       40 SETTABLEKS                       R5 R4 K11 ["ErrorMessage"]
       42 JUMPIFNOTEQKN                    R2 K3 [1] ; [+37]
       44 GETTABLEKS                       R5 R3 K5 ["Name"]
       46 GETTABLEKS                       R5 R5 K12 ["FullSpan"]
       48 JUMPIFNOT                        R5 ; [+7]
       49 GETUPVAL                         R5 2
       50 GETUPVAL                         R6 3
       51 DUPTABLE                         R7 K15 [{["Editing"] = False}]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K16 ["Schema"]
       55 JUMP                             ; [+24]
       56 GETTABLEKS                       R5 R3 K5 ["Name"]
       58 GETTABLEKS                       R5 R5 K6 ["Value"]
       60 JUMPIFNOTEQKS                    R5 K4 [""] ; [+19]
       62 JUMPIFEQKS                       R0 K4 [""] ; [+17]
       64 GETUPVAL                         R5 4
       65 SETTABLEKS                       R5 R4 K17 ["Actions"]
       67 GETUPVAL                         R5 5
       68 SETTABLEKS                       R5 R4 K16 ["Schema"]
       70 GETUPVAL                         R5 1
       71 NEWCLOSURE                       R7 P1
       72 CAPTURE                          UPVAL U0
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          VAL R1
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          UPVAL U8
       77 NAMECALL                         R5 R5 K7 ["setState"]
       79 CALL                             R5 2 0
       80 GETUPVAL                         R5 1
       81 NEWCLOSURE                       R7 P2
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R2
       86 NAMECALL                         R5 R5 K7 ["setState"]
       88 CALL                             R5 2 0
       89 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["togglePath"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R1 K6 [{"Columns", "Sizes", "Expansion", "Hidden", "Selection", "Items"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Columns"]
        4 NEWTABLE                         R2 0 2
        6 GETIMPORT                        R3 K9 [UDim.new]
        8 LOADK                            R4 K10 [0.4]
        9 LOADN                            R5 0
       10 CALL                             R3 2 1
       11 GETIMPORT                        R4 K9 [UDim.new]
       13 LOADK                            R5 K11 [0.6]
       14 LOADN                            R6 0
       15 CALL                             R4 2 -1
       16 SETLIST                          R2 R3 -1 [1]
       18 SETTABLEKS                       R2 R1 K1 ["Sizes"]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R1 K2 ["Expansion"]
       24 NEWTABLE                         R2 0 0
       26 SETTABLEKS                       R2 R1 K3 ["Hidden"]
       28 NEWTABLE                         R2 0 0
       30 SETTABLEKS                       R2 R1 K4 ["Selection"]
       32 GETUPVAL                         R2 1
       33 GETUPVAL                         R4 2
       34 CALL                             R4 0 1
       35 NAMECALL                         R2 R2 K12 ["updatePaths"]
       37 CALL                             R2 2 1
       38 SETTABLEKS                       R2 R1 K5 ["Items"]
       40 SETTABLEKS                       R1 R0 K13 ["state"]
       42 DUPCLOSURE                       R1 K14 [PROTO_6]
       43 SETTABLEKS                       R1 R0 K15 ["GetCellAutocomplete"]
       45 NEWCLOSURE                       R1 P1
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R1 R0 K16 ["onSizesChange"]
       49 NEWCLOSURE                       R1 P2
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U5
       55 SETTABLEKS                       R1 R0 K17 ["onAction"]
       57 NEWCLOSURE                       R1 P3
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U8
       65 CAPTURE                          UPVAL U9
       66 CAPTURE                          UPVAL U10
       67 SETTABLEKS                       R1 R0 K18 ["onEdited"]
       69 NEWCLOSURE                       R1 P4
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U1
       72 SETTABLEKS                       R1 R0 K19 ["onPressed"]
       74 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Width"}]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K2 ["Sizes"]
        6 GETTABLE                         R5 R6 R1
        7 SETTABLEKS                       R5 R4 K0 ["Width"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_20:
        0 DUPTABLE                         R1 K1 [{"Expansion"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["Expansion"]
        4 GETUPVAL                         R4 1
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["Expansion"]
        8 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R1 K1 [{"Selection"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["Selection"]
        4 GETUPVAL                         R4 1
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["Selection"]
        8 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R1 K2 [table.concat]
        2 GETTABLEKS                       R2 R0 K3 ["Path"]
        4 LOADK                            R3 K4 [","]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["Columns"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R0 K2 ["onSizesChange"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["createElement"]
       14 GETUPVAL                         R5 3
       15 DUPTABLE                         R6 K23 [{["Size"], ["FullSpanEmphasis"] = True, ["Columns"], ["ClampSize"] = True, ["GetCellAutocomplete"], ["OnExpansionChange"], ["OnSelectionChange"], ["OnColumnSizesChange"], ["OnCellAction"], ["OnCellEdited"], ["OnCellPressed"], ["Expansion"], ["RootItems"], ["RowHeight"] = 32, ["GetChildren"], ["GetItemId"], ["Scroll"] = True, ["UseScale"] = True}]
       16 GETIMPORT                        R7 K26 [UDim2.new]
       18 LOADN                            R8 1
       19 LOADN                            R9 0
       20 LOADN                            R10 0
       21 LOADN                            R11 400
       22 CALL                             R7 4 1
       23 SETTABLEKS                       R7 R6 K4 ["Size"]
       25 SETTABLEKS                       R2 R6 K1 ["Columns"]
       27 GETTABLEKS                       R7 R0 K8 ["GetCellAutocomplete"]
       29 SETTABLEKS                       R7 R6 K8 ["GetCellAutocomplete"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R7 R6 K9 ["OnExpansionChange"]
       36 NEWCLOSURE                       R7 P2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U1
       39 SETTABLEKS                       R7 R6 K10 ["OnSelectionChange"]
       41 SETTABLEKS                       R3 R6 K11 ["OnColumnSizesChange"]
       43 GETTABLEKS                       R7 R0 K27 ["onAction"]
       45 SETTABLEKS                       R7 R6 K12 ["OnCellAction"]
       47 GETTABLEKS                       R7 R0 K28 ["onEdited"]
       49 SETTABLEKS                       R7 R6 K13 ["OnCellEdited"]
       51 GETTABLEKS                       R7 R0 K29 ["onPressed"]
       53 SETTABLEKS                       R7 R6 K14 ["OnCellPressed"]
       55 GETTABLEKS                       R7 R1 K15 ["Expansion"]
       57 SETTABLEKS                       R7 R6 K15 ["Expansion"]
       59 GETTABLEKS                       R7 R1 K30 ["Items"]
       61 SETTABLEKS                       R7 R6 K16 ["RootItems"]
       63 DUPCLOSURE                       R7 K31 [PROTO_24]
       64 SETTABLEKS                       R7 R6 K19 ["GetChildren"]
       66 DUPCLOSURE                       R7 K32 [PROTO_25]
       67 SETTABLEKS                       R7 R6 K20 ["GetItemId"]
       69 CALL                             R4 2 -1
       70 RETURN                           R4 -1

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
       23 GETTABLEKS                       R3 R2 K9 ["join"]
       25 GETTABLEKS                       R4 R2 K10 ["map"]
       27 GETTABLEKS                       R5 R2 K11 ["slice"]
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K2 ["UI"]
       33 GETTABLEKS                       R7 R7 K12 ["Components"]
       35 GETTABLEKS                       R7 R7 K13 ["Breadcrumb"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K2 ["UI"]
       42 GETTABLEKS                       R8 R8 K12 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["TreeTable"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Util"]
       51 GETTABLEKS                       R9 R9 K16 ["EditTree"]
       53 CALL                             R8 1 1
       54 NEWTABLE                         R9 0 2
       56 DUPTABLE                         R10 K19 [{["Name"] = "Name", ["Key"] = "Name"}]
       57 DUPTABLE                         R11 K21 [{["Name"] = "Value", ["Key"] = "Value"}]
       58 SETLIST                          R9 R10 2 [1]
       60 JUMPIFNOT                        R8 ; [+2]
       61 MOVE                             R10 R8
       62 JUMP                             ; [+2]
       63 GETTABLEKS                       R10 R7 K16 ["EditTree"]
       65 GETTABLEKS                       R10 R10 K22 ["new"]
       67 DUPTABLE                         R11 K24 [{"getChildren"}]
       68 DUPCLOSURE                       R12 K25 [PROTO_0]
       69 SETTABLEKS                       R12 R11 K23 ["getChildren"]
       71 CALL                             R10 1 1
       72 DUPTABLE                         R11 K28 [{["Type"] = "Color"}]
       73 DUPTABLE                         R12 K30 [{["Type"] = "Empty"}]
       74 DUPTABLE                         R13 K33 [{["Type"] = "Select", ["Items"]}]
       75 NEWTABLE                         R14 0 3
       77 DUPTABLE                         R15 K37 [{["Id"] = "Gotham", ["Label"] = "Gotham"}]
       78 DUPTABLE                         R16 K39 [{["Id"] = "SourceSans", ["Label"] = "SourceSans"}]
       79 DUPTABLE                         R17 K41 [{["Id"] = "SourceSansBold", ["Label"] = "SourceSansBold"}]
       80 SETLIST                          R14 R15 3 [1]
       82 SETTABLEKS                       R14 R13 K32 ["Items"]
       84 DUPTABLE                         R14 K45 [{["Type"] = "Vector", ["Components"], ["GetComponents"], ["GetValue"]}]
       85 NEWTABLE                         R15 0 2
       87 LOADK                            R16 K46 ["X"]
       88 LOADK                            R17 K47 ["Y"]
       89 SETLIST                          R15 R16 2 [1]
       91 SETTABLEKS                       R15 R14 K12 ["Components"]
       93 DUPCLOSURE                       R15 K48 [PROTO_1]
       94 SETTABLEKS                       R15 R14 K43 ["GetComponents"]
       96 DUPCLOSURE                       R15 K49 [PROTO_2]
       97 SETTABLEKS                       R15 R14 K44 ["GetValue"]
       99 DUPTABLE                         R15 K55 [{["Type"] = "Text", ["ErrorStyle"] = "PropertyCellError", ["PlaceholderText"] = "Add Property..."}]
      100 NEWTABLE                         R16 0 1
      102 DUPTABLE                         R17 K60 [{["Id"] = "Variable", ["Icon"], ["Tooltip"] = "Assign this property from a variable"}]
      103 DUPTABLE                         R18 K64 [{["Image"] = "rbxasset://textures/StyleEditor/style-variable.png", ["Size"]}]
      104 GETIMPORT                        R19 K67 [UDim2.fromOffset]
      106 LOADN                            R20 16
      107 LOADN                            R21 16
      108 CALL                             R19 2 1
      109 SETTABLEKS                       R19 R18 K63 ["Size"]
      111 SETTABLEKS                       R18 R17 K57 ["Icon"]
      113 SETLIST                          R16 R17 1 [1]
      115 DUPTABLE                         R17 K70 [{["Type"] = "Breadcrumb", ["Delimiters"], ["ErrorStyle"] = "PropertyCellError", ["GetImageProps"]}]
      116 NEWTABLE                         R18 0 3
      118 LOADK                            R19 K71 ["%.%."]
      119 LOADK                            R20 K72 ["%."]
      120 LOADK                            R21 K73 ["::"]
      121 SETLIST                          R18 R19 3 [1]
      123 SETTABLEKS                       R18 R17 K68 ["Delimiters"]
      125 GETTABLEKS                       R18 R6 K74 ["GetSelectorIcon"]
      127 SETTABLEKS                       R18 R17 K69 ["GetImageProps"]
      129 NEWTABLE                         R18 0 3
      131 DUPTABLE                         R19 K77 [{["Id"] = "Edit", ["Icon"], ["Tooltip"] = "Edit the style selector"}]
      132 DUPTABLE                         R20 K79 [{["Image"] = "rbxasset://textures/StyleEditor/style-edit.png", ["Size"]}]
      133 GETIMPORT                        R21 K67 [UDim2.fromOffset]
      135 LOADN                            R22 16
      136 LOADN                            R23 16
      137 CALL                             R21 2 1
      138 SETTABLEKS                       R21 R20 K63 ["Size"]
      140 SETTABLEKS                       R20 R19 K57 ["Icon"]
      142 DUPTABLE                         R20 K82 [{["Id"] = "Add", ["Icon"], ["Tooltip"] = "Add a child style"}]
      143 DUPTABLE                         R21 K84 [{["Image"] = "rbxasset://textures/StyleEditor/style-add.png", ["Size"]}]
      144 GETIMPORT                        R22 K67 [UDim2.fromOffset]
      146 LOADN                            R23 16
      147 LOADN                            R24 16
      148 CALL                             R22 2 1
      149 SETTABLEKS                       R22 R21 K63 ["Size"]
      151 SETTABLEKS                       R21 R20 K57 ["Icon"]
      153 DUPTABLE                         R21 K87 [{["Id"] = "Delete", ["Icon"], ["Tooltip"] = "Delete the style"}]
      154 DUPTABLE                         R22 K89 [{["Image"] = "rbxasset://textures/StyleEditor/style-bin.png", ["Size"]}]
      155 GETIMPORT                        R23 K67 [UDim2.fromOffset]
      157 LOADN                            R24 16
      158 LOADN                            R25 16
      159 CALL                             R23 2 1
      160 SETTABLEKS                       R23 R22 K63 ["Size"]
      162 SETTABLEKS                       R22 R21 K57 ["Icon"]
      164 SETLIST                          R18 R19 3 [1]
      166 DUPTABLE                         R19 K90 [{["Type"] = "Text"}]
      167 DUPTABLE                         R20 K102 [{["Type"] = "Slider", ["Min"] = 0, ["Max"] = 1, ["ShowInput"] = True, ["InputPrecision"] = 3, ["SnapIncrement"] = 0.05}]
      168 DUPTABLE                         R21 K33 [{["Type"] = "Select", ["Items"]}]
      169 NEWTABLE                         R22 0 2
      171 DUPTABLE                         R23 K104 [{["Id"] = "Row", ["Label"] = "Row"}]
      172 DUPTABLE                         R24 K106 [{["Id"] = "Column", ["Label"] = "Column"}]
      173 SETLIST                          R22 R23 2 [1]
      175 SETTABLEKS                       R22 R21 K32 ["Items"]
      177 DUPCLOSURE                       R22 K107 [PROTO_3]
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R12
      180 DUPCLOSURE                       R23 K108 [PROTO_4]
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R22
      185 DUPCLOSURE                       R24 K109 [PROTO_5]
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R15
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R22
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R21
      197 GETTABLEKS                       R25 R1 K110 ["PureComponent"]
      199 LOADK                            R27 K111 ["Story"]
      200 NAMECALL                         R25 R25 K112 ["extend"]
      202 CALL                             R25 2 1
      203 DUPCLOSURE                       R26 K113 [PROTO_18]
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R10
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R17
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R16
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R22
      215 SETTABLEKS                       R26 R25 K114 ["init"]
      217 DUPCLOSURE                       R26 K115 [PROTO_26]
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R7
      222 SETTABLEKS                       R26 R25 K116 ["render"]
      224 RETURN                           R25 1
