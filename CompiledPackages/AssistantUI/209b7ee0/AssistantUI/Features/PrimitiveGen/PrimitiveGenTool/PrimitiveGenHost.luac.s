PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R2 K0 ["PrimitiveGen_%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R1 K0 ["number"] ; [+8]
        2 FASTCALL1                        TONUMBER R0 ; [+3]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R3 K3 [tonumber]
        6 CALL                             R3 1 1
        7 ORK                              R2 R3 K1 [1]
        8 RETURN                           R2 1
        9 JUMPIFNOTEQKS                    R1 K4 ["boolean"] ; [+6]
       11 JUMPIFEQKS                       R0 K5 ["true"] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1
       16 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+6]
       18 LOADK                            R4 K7 ["^\"(.*)\"$"]
       19 NAMECALL                         R2 R0 K8 ["match"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1
       23 JUMPIFNOTEQKS                    R1 K9 ["Color3"] ; [+53]
       25 LOADK                            R4 K10 ["Color3%.fromRGB%((%d+),%s*(%d+),%s*(%d+)%)"]
       26 NAMECALL                         R2 R0 K8 ["match"]
       28 CALL                             R2 2 3
       29 JUMPIFNOT                        R2 ; [+19]
       30 GETIMPORT                        R5 K12 [Color3.fromRGB]
       32 FASTCALL1                        TONUMBER R2 ; [+3]
       33 MOVE                             R7 R2
       34 GETIMPORT                        R6 K3 [tonumber]
       36 CALL                             R6 1 1
       37 FASTCALL1                        TONUMBER R3 ; [+3]
       38 MOVE                             R8 R3
       39 GETIMPORT                        R7 K3 [tonumber]
       41 CALL                             R7 1 1
       42 FASTCALL1                        TONUMBER R4 ; [+3]
       43 MOVE                             R9 R4
       44 GETIMPORT                        R8 K3 [tonumber]
       46 CALL                             R8 1 1
       47 CALL                             R5 3 -1
       48 RETURN                           R5 -1
       49 LOADK                            R7 K13 ["Color3%.new%(([%d%.]+),%s*([%d%.]+),%s*([%d%.]+)%)"]
       50 NAMECALL                         R5 R0 K8 ["match"]
       52 CALL                             R5 2 3
       53 MOVE                             R2 R5
       54 MOVE                             R3 R6
       55 MOVE                             R4 R7
       56 JUMPIFNOT                        R2 ; [+74]
       57 GETIMPORT                        R5 K15 [Color3.new]
       59 FASTCALL1                        TONUMBER R2 ; [+3]
       60 MOVE                             R7 R2
       61 GETIMPORT                        R6 K3 [tonumber]
       63 CALL                             R6 1 1
       64 FASTCALL1                        TONUMBER R3 ; [+3]
       65 MOVE                             R8 R3
       66 GETIMPORT                        R7 K3 [tonumber]
       68 CALL                             R7 1 1
       69 FASTCALL1                        TONUMBER R4 ; [+3]
       70 MOVE                             R9 R4
       71 GETIMPORT                        R8 K3 [tonumber]
       73 CALL                             R8 1 1
       74 CALL                             R5 3 -1
       75 RETURN                           R5 -1
       76 JUMP                             ; [+54]
       77 JUMPIFNOTEQKS                    R1 K16 ["Vector3"] ; [+27]
       79 LOADK                            R4 K17 ["Vector3%.new%(([%d%.%-]+),%s*([%d%.%-]+),%s*([%d%.%-]+)%)"]
       80 NAMECALL                         R2 R0 K8 ["match"]
       82 CALL                             R2 2 3
       83 JUMPIFNOT                        R2 ; [+47]
       84 FASTCALL1                        TONUMBER R2 ; [+3]
       85 MOVE                             R7 R2
       86 GETIMPORT                        R6 K3 [tonumber]
       88 CALL                             R6 1 1
       89 FASTCALL1                        TONUMBER R3 ; [+3]
       90 MOVE                             R8 R3
       91 GETIMPORT                        R7 K3 [tonumber]
       93 CALL                             R7 1 1
       94 FASTCALL1                        TONUMBER R4 ; [+3]
       95 MOVE                             R9 R4
       96 GETIMPORT                        R8 K3 [tonumber]
       98 CALL                             R8 1 1
       99 FASTCALL                         VECTOR ; [+2]
      100 GETIMPORT                        R5 K18 [Vector3.new]
      102 CALL                             R5 3 1
      103 RETURN                           R5 1
      104 JUMP                             ; [+26]
      105 GETUPVAL                         R2 0
      106 CALL                             R2 0 1
      107 JUMPIFNOT                        R2 ; [+11]
      108 GETIMPORT                        R2 K20 [warn]
      110 LOADK                            R4 K21 ["[PrimitiveGen] Unknown luau type: %* for value: %*, defaulting to any"]
      111 MOVE                             R6 R1
      112 MOVE                             R7 R0
      113 NAMECALL                         R4 R4 K22 ["format"]
      115 CALL                             R4 3 1
      116 MOVE                             R3 R4
      117 CALL                             R2 1 0
      118 JUMP                             ; [+12]
      119 LOADK                            R3 K23 ["Unknown luau type: %* for value: %*"]
      120 MOVE                             R5 R1
      121 MOVE                             R6 R0
      122 NAMECALL                         R3 R3 K22 ["format"]
      124 CALL                             R3 3 1
      125 MOVE                             R2 R3
      126 GETIMPORT                        R3 K25 [error]
      128 MOVE                             R4 R2
      129 LOADN                            R5 0
      130 CALL                             R3 2 0
      131 LOADNIL                          R2
      132 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["ModuleScript"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R2 R4 K4 ["Name"]
        6 SETTABLEKS                       R1 R4 K5 ["Parent"]
        8 GETTABLEKS                       R7 R0 K6 ["tools"]
       10 GETTABLEKS                       R6 R7 K7 ["multiEdit"]
       12 GETTABLEKS                       R5 R6 K8 ["applyScriptSourceDirectly"]
       14 MOVE                             R6 R4
       15 MOVE                             R7 R3
       16 CALL                             R5 2 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R4 3
        4 GETTABLEKS                       R3 R4 K0 ["moduleName"]
        6 GETUPVAL                         R4 4
        7 CALL                             R0 4 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Folder"]
        3 CALL                             R3 1 1
        4 LOADK                            R4 K4 ["Dependencies"]
        5 SETTABLEKS                       R4 R3 K5 ["Name"]
        7 SETTABLEKS                       R1 R3 K6 ["Parent"]
        9 NEWTABLE                         R4 0 0
       11 NEWTABLE                         R5 0 0
       13 MOVE                             R6 R2
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 LENGTH                           R12 R4
       18 LOADN                            R13 0
       19 JUMPIFNOTLT                      R13 R12 ; [+14]
       21 LOADK                            R12 K7 ["%*\n\n%*"]
       22 GETIMPORT                        R14 K10 [table.concat]
       24 MOVE                             R15 R4
       25 LOADK                            R16 K11 ["\n"]
       26 CALL                             R14 2 1
       27 GETTABLEKS                       R15 R10 K12 ["source"]
       29 NAMECALL                         R12 R12 K13 ["format"]
       31 CALL                             R12 3 1
       32 MOVE                             R11 R12
       33 JUMP                             ; [+2]
       34 GETTABLEKS                       R11 R10 K12 ["source"]
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R12 R13 K14 ["wrapFunction"]
       39 NEWCLOSURE                       R13 P0
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R10
       44 CAPTURE                          VAL R11
       45 CALL                             R12 1 1
       46 FASTCALL2                        TABLE_INSERT R5 R12 ; [+5]
       48 MOVE                             R14 R5
       49 MOVE                             R15 R12
       50 GETIMPORT                        R13 K16 [table.insert]
       52 CALL                             R13 2 0
       53 LOADK                            R16 K17 ["local %* = require(script.Parent.%*)"]
       54 GETTABLEKS                       R18 R10 K18 ["variableName"]
       56 GETTABLEKS                       R19 R10 K19 ["moduleName"]
       58 NAMECALL                         R16 R16 K13 ["format"]
       60 CALL                             R16 3 1
       61 MOVE                             R15 R16
       62 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
       64 MOVE                             R14 R4
       65 GETIMPORT                        R13 K16 [table.insert]
       67 CALL                             R13 2 0
       68 FORGLOOP                         R6 2 ; [-52]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R6 R7 K20 ["collectTasks"]
       73 MOVE                             R7 R5
       74 CALL                             R6 1 2
       75 JUMPIF                           R6 ; [+15]
       76 LOADK                            R9 K21 ["Failed to install dependencies: %*"]
       77 GETIMPORT                        R11 K10 [table.concat]
       79 MOVE                             R12 R7
       80 LOADK                            R13 K22 [", "]
       81 CALL                             R11 2 1
       82 NAMECALL                         R9 R9 K13 ["format"]
       84 CALL                             R9 2 1
       85 MOVE                             R8 R9
       86 GETIMPORT                        R9 K24 [error]
       88 MOVE                             R10 R8
       89 LOADN                            R11 0
       90 CALL                             R9 2 0
       91 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R3 2
        1 LOADN                            R4 254
        2 NAMECALL                         R1 R0 K0 ["sub"]
        4 CALL                             R1 3 1
        5 LOADK                            R4 K1 ["\"([^\"]+)\""]
        6 NAMECALL                         R2 R1 K2 ["match"]
        8 CALL                             R2 2 1
        9 LOADK                            R5 K3 ["\"[^\"]+\"%s*,%s*(.+)"]
       10 NAMECALL                         R3 R1 K2 ["match"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 CALL                             R4 0 1
       15 JUMPIF                           R4 ; [+7]
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETUPVAL                         R5 1
       18 GETTABLE                         R4 R5 R2
       19 JUMP                             ; [+1]
       20 LOADNIL                          R4
       21 JUMPIFNOT                        R4 ; [+1]
       22 RETURN                           R4 1
       23 GETUPVAL                         R4 2
       24 CALL                             R4 0 1
       25 JUMPIF                           R4 ; [+7]
       26 JUMPIFNOT                        R2 ; [+3]
       27 GETUPVAL                         R5 3
       28 GETTABLE                         R4 R5 R2
       29 JUMP                             ; [+1]
       30 LOADNIL                          R4
       31 JUMPIFNOT                        R4 ; [+1]
       32 RETURN                           R4 1
       33 JUMPIFNOT                        R2 ; [+9]
       34 JUMPIFNOT                        R3 ; [+8]
       35 LOADK                            R5 K4 ["parameters.Attributes.%* or %*"]
       36 MOVE                             R7 R2
       37 MOVE                             R8 R3
       38 NAMECALL                         R5 R5 K5 ["format"]
       40 CALL                             R5 3 1
       41 MOVE                             R4 R5
       42 RETURN                           R4 1
       43 JUMPIFNOT                        R2 ; [+7]
       44 LOADK                            R5 K6 ["parameters.Attributes.%*"]
       45 MOVE                             R7 R2
       46 NAMECALL                         R5 R5 K5 ["format"]
       48 CALL                             R5 2 1
       49 MOVE                             R4 R5
       50 RETURN                           R4 1
       51 LOADK                            R4 K7 ["parameters.Attributes.Unknown"]
       52 RETURN                           R4 1

PROTO_7:
        0 LENGTH                           R5 R1
        1 LOADN                            R6 0
        2 JUMPIFNOTLT                      R6 R5 ; [+12]
        4 LOADK                            R5 K0 ["%*\n\n"]
        5 GETIMPORT                        R7 K3 [table.concat]
        7 MOVE                             R8 R1
        8 LOADK                            R9 K4 ["\n"]
        9 CALL                             R7 2 1
       10 NAMECALL                         R5 R5 K5 ["format"]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 JUMP                             ; [+1]
       15 LOADK                            R4 K6 [""]
       16 DUPTABLE                         R5 K11 [{"moduleSource", "objectName", "extractedAttributes", "smartSizeDefaults"}]
       17 LOADK                            R6 K6 [""]
       18 SETTABLEKS                       R6 R5 K7 ["moduleSource"]
       20 LOADK                            R6 K6 [""]
       21 SETTABLEKS                       R6 R5 K8 ["objectName"]
       23 NEWTABLE                         R6 0 0
       25 SETTABLEKS                       R6 R5 K9 ["extractedAttributes"]
       27 NEWTABLE                         R6 0 0
       29 SETTABLEKS                       R6 R5 K10 ["smartSizeDefaults"]
       31 LOADK                            R8 K12 ["local%s+(%w+)%s*=%s*GP%.model%(%s*\"([^\"]+)\"%s*,%s*nil%s*%)"]
       32 NAMECALL                         R6 R0 K13 ["match"]
       34 CALL                             R6 2 2
       35 MOVE                             R8 R7
       36 JUMPIF                           R8 ; [+3]
       37 MOVE                             R8 R3
       38 JUMPIF                           R8 ; [+1]
       39 LOADK                            R8 K14 ["ProceduralObject"]
       40 SETTABLEKS                       R8 R5 K8 ["objectName"]
       42 NEWTABLE                         R8 0 0
       44 NEWTABLE                         R9 0 0
       46 LOADK                            R12 K15 ["SO%.getAttribute(%b())"]
       47 NAMECALL                         R10 R0 K16 ["gmatch"]
       49 CALL                             R10 2 3
       50 FORGPREP                         R10
       51 LOADN                            R17 2
       52 LOADN                            R18 254
       53 NAMECALL                         R15 R13 K17 ["sub"]
       55 CALL                             R15 3 1
       56 LOADK                            R18 K18 ["\"([^\"]+)\""]
       57 NAMECALL                         R16 R15 K13 ["match"]
       59 CALL                             R16 2 1
       60 LOADK                            R19 K19 ["\"[^\"]+\"%s*,%s*(.+)"]
       61 NAMECALL                         R17 R15 K13 ["match"]
       63 CALL                             R17 2 1
       64 JUMPIFNOT                        R16 ; [+154]
       65 GETTABLE                         R18 R9 R16
       66 JUMPIF                           R18 ; [+152]
       67 LOADB                            R18 1
       68 SETTABLE                         R18 R9 R16
       69 GETUPVAL                         R19 0
       70 GETTABLE                         R18 R19 R16
       71 JUMPIFNOT                        R18 ; [+17]
       72 GETUPVAL                         R18 1
       73 CALL                             R18 0 1
       74 JUMPIF                           R18 ; [+14]
       75 JUMPIFNOT                        R17 ; [+143]
       76 LOADK                            R21 K20 ["^%s*(.-)%s*$"]
       77 NAMECALL                         R19 R17 K13 ["match"]
       79 CALL                             R19 2 -1
       80 FASTCALL                         TONUMBER ; [+2]
       81 GETIMPORT                        R18 K22 [tonumber]
       83 CALL                             R18 -1 1
       84 JUMPIFNOT                        R18 ; [+134]
       85 GETTABLEKS                       R19 R5 K10 ["smartSizeDefaults"]
       87 SETTABLE                         R18 R19 R16
       88 JUMP                             ; [+130]
       89 GETUPVAL                         R19 2
       90 GETTABLE                         R18 R19 R16
       91 JUMPIFNOT                        R18 ; [+17]
       92 GETUPVAL                         R18 3
       93 CALL                             R18 0 1
       94 JUMPIF                           R18 ; [+14]
       95 JUMPIFNOT                        R17 ; [+123]
       96 LOADK                            R21 K20 ["^%s*(.-)%s*$"]
       97 NAMECALL                         R19 R17 K13 ["match"]
       99 CALL                             R19 2 -1
      100 FASTCALL                         TONUMBER ; [+2]
      101 GETIMPORT                        R18 K22 [tonumber]
      103 CALL                             R18 -1 1
      104 JUMPIFNOT                        R18 ; [+114]
      105 GETTABLEKS                       R19 R5 K10 ["smartSizeDefaults"]
      107 SETTABLE                         R18 R19 R16
      108 JUMP                             ; [+110]
      109 LOADK                            R18 K23 ["any"]
      110 JUMPIFNOT                        R17 ; [+5]
      111 LOADK                            R21 K20 ["^%s*(.-)%s*$"]
      112 NAMECALL                         R19 R17 K13 ["match"]
      114 CALL                             R19 2 1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R19
      117 JUMPIFNOT                        R19 ; [+88]
      118 LOADK                            R22 K24 ["^Color3"]
      119 NAMECALL                         R20 R19 K13 ["match"]
      121 CALL                             R20 2 1
      122 JUMPIFNOT                        R20 ; [+2]
      123 LOADK                            R18 K25 ["Color3"]
      124 JUMP                             ; [+67]
      125 LOADK                            R22 K26 ["^Vector3"]
      126 NAMECALL                         R20 R19 K13 ["match"]
      128 CALL                             R20 2 1
      129 JUMPIFNOT                        R20 ; [+2]
      130 LOADK                            R18 K27 ["Vector3"]
      131 JUMP                             ; [+60]
      132 LOADK                            R22 K28 ["^CFrame"]
      133 NAMECALL                         R20 R19 K13 ["match"]
      135 CALL                             R20 2 1
      136 JUMPIFNOT                        R20 ; [+2]
      137 LOADK                            R18 K29 ["CFrame"]
      138 JUMP                             ; [+53]
      139 LOADK                            R22 K30 ["^%-?%d"]
      140 NAMECALL                         R20 R19 K13 ["match"]
      142 CALL                             R20 2 1
      143 JUMPIF                           R20 ; [+8]
      144 GETUPVAL                         R20 4
      145 CALL                             R20 0 1
      146 JUMPIFNOT                        R20 ; [+7]
      147 LOADK                            R22 K31 ["^math%."]
      148 NAMECALL                         R20 R19 K13 ["match"]
      150 CALL                             R20 2 1
      151 JUMPIFNOT                        R20 ; [+2]
      152 LOADK                            R18 K32 ["number"]
      153 JUMP                             ; [+38]
      154 LOADK                            R22 K33 ["^\""]
      155 NAMECALL                         R20 R19 K13 ["match"]
      157 CALL                             R20 2 1
      158 JUMPIFNOT                        R20 ; [+2]
      159 LOADK                            R18 K34 ["string"]
      160 JUMP                             ; [+31]
      161 JUMPIFEQKS                       R19 K35 ["true"] ; [+3]
      163 JUMPIFNOTEQKS                    R19 K36 ["false"] ; [+3]
      165 LOADK                            R18 K37 ["boolean"]
      166 JUMP                             ; [+25]
      167 GETUPVAL                         R20 4
      168 CALL                             R20 0 1
      169 JUMPIFNOT                        R20 ; [+11]
      170 GETIMPORT                        R20 K39 [warn]
      172 LOADK                            R22 K40 ["[PrimitiveGen] Unknown luau type from value: %*, defaulting %* to any"]
      173 MOVE                             R24 R19
      174 MOVE                             R25 R16
      175 NAMECALL                         R22 R22 K5 ["format"]
      177 CALL                             R22 3 1
      178 MOVE                             R21 R22
      179 CALL                             R20 1 0
      180 JUMP                             ; [+11]
      181 LOADK                            R21 K41 ["Unknown luau type from value: %*"]
      182 MOVE                             R23 R19
      183 NAMECALL                         R21 R21 K5 ["format"]
      185 CALL                             R21 2 1
      186 MOVE                             R20 R21
      187 GETIMPORT                        R21 K43 [error]
      189 MOVE                             R22 R20
      190 LOADN                            R23 0
      191 CALL                             R21 2 0
      192 GETTABLEKS                       R21 R5 K9 ["extractedAttributes"]
      194 DUPTABLE                         R22 K47 [{"name", "defaultValueStr", "luauType"}]
      195 SETTABLEKS                       R16 R22 K44 ["name"]
      197 SETTABLEKS                       R19 R22 K45 ["defaultValueStr"]
      199 SETTABLEKS                       R18 R22 K46 ["luauType"]
      201 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      203 GETIMPORT                        R20 K49 [table.insert]
      205 CALL                             R20 2 0
      206 LOADK                            R23 K50 ["\t\t%*: %*?,"]
      207 MOVE                             R25 R16
      208 MOVE                             R26 R18
      209 NAMECALL                         R23 R23 K5 ["format"]
      211 CALL                             R23 3 1
      212 MOVE                             R22 R23
      213 FASTCALL2                        TABLE_INSERT R8 R22 ; [+4]
      215 MOVE                             R21 R8
      216 GETIMPORT                        R20 K49 [table.insert]
      218 CALL                             R20 2 0
      219 FORGLOOP                         R10 1 ; [-169]
      221 LOADK                            R12 K15 ["SO%.getAttribute(%b())"]
      222 DUPCLOSURE                       R13 K51 [PROTO_6]
      223 CAPTURE                          UPVAL U3
      224 CAPTURE                          UPVAL U2
      225 CAPTURE                          UPVAL U1
      226 CAPTURE                          UPVAL U0
      227 NAMECALL                         R10 R0 K52 ["gsub"]
      229 CALL                             R10 3 1
      230 GETIMPORT                        R11 K3 [table.concat]
      232 MOVE                             R12 R8
      233 LOADK                            R13 K4 ["\n"]
      234 CALL                             R11 2 1
      235 LOADK                            R13 K53 ["type Parameters = {\n\tSize: Vector3,\n\tAttributes: {\n%*\n\t},\n}"]
      236 MOVE                             R15 R11
      237 NAMECALL                         R13 R13 K5 ["format"]
      239 CALL                             R13 2 1
      240 MOVE                             R12 R13
      241 JUMPIFNOT                        R6 ; [+32]
      242 GETIMPORT                        R13 K3 [table.concat]
      244 NEWTABLE                         R14 0 3
      246 LOADK                            R15 K54 ["-- Fix orientation of the model"]
      247 LOADK                            R17 K55 ["%*.WorldPivot = CFrame.identity"]
      248 MOVE                             R19 R6
      249 NAMECALL                         R17 R17 K5 ["format"]
      251 CALL                             R17 2 1
      252 MOVE                             R16 R17
      253 LOADK                            R17 K6 [""]
      254 SETLIST                          R14 R15 3 [1]
      256 LOADK                            R15 K4 ["\n"]
      257 CALL                             R13 2 1
      258 LOADK                            R17 K56 ["(local%%s+%*%%s*=%%s*GP%%.model%%b())"]
      259 MOVE                             R19 R6
      260 NAMECALL                         R17 R17 K5 ["format"]
      262 CALL                             R17 2 1
      263 MOVE                             R16 R17
      264 LOADK                            R18 K57 ["%%1%*"]
      265 MOVE                             R20 R13
      266 NAMECALL                         R18 R18 K5 ["format"]
      268 CALL                             R18 2 1
      269 MOVE                             R17 R18
      270 NAMECALL                         R14 R10 K52 ["gsub"]
      272 CALL                             R14 3 1
      273 MOVE                             R10 R14
      274 LOADK                            R15 K58 ["%s*return%s+[%w_]+%s*$"]
      275 LOADK                            R16 K6 [""]
      276 NAMECALL                         R13 R10 K52 ["gsub"]
      278 CALL                             R13 3 1
      279 MOVE                             R10 R13
      280 JUMPIFNOT                        R6 ; [+8]
      281 MOVE                             R13 R10
      282 LOADK                            R15 K59 ["\n\n%*.Parent = targetContainer"]
      283 MOVE                             R17 R6
      284 NAMECALL                         R15 R15 K5 ["format"]
      286 CALL                             R15 2 1
      287 MOVE                             R14 R15
      288 CONCAT                           R10 R13 R14
      289 NEWTABLE                         R13 0 0
      291 GETIMPORT                        R14 K61 [string.split]
      293 MOVE                             R15 R10
      294 LOADK                            R16 K4 ["\n"]
      295 CALL                             R14 2 3
      296 FORGPREP                         R14
      297 LOADK                            R22 K62 ["\t%*"]
      298 MOVE                             R24 R18
      299 NAMECALL                         R22 R22 K5 ["format"]
      301 CALL                             R22 2 1
      302 MOVE                             R21 R22
      303 FASTCALL2                        TABLE_INSERT R13 R21 ; [+4]
      305 MOVE                             R20 R13
      306 GETIMPORT                        R19 K49 [table.insert]
      308 CALL                             R19 2 0
      309 FORGLOOP                         R14 2 ; [-13]
      311 GETIMPORT                        R14 K3 [table.concat]
      313 MOVE                             R15 R13
      314 LOADK                            R16 K4 ["\n"]
      315 CALL                             R14 2 1
      316 GETIMPORT                        R15 K3 [table.concat]
      318 NEWTABLE                         R16 0 16
      320 LOADK                            R17 K63 ["--!strict"]
      321 LOADK                            R19 K64 ["-- generationId: %*"]
      322 ORK                              R21 R2 K65 ["unknown"]
      323 NAMECALL                         R19 R19 K5 ["format"]
      325 CALL                             R19 2 1
      326 MOVE                             R18 R19
      327 MOVE                             R19 R4
      328 LOADK                            R21 K66 ["local %* = {}"]
      329 GETTABLEKS                       R23 R5 K8 ["objectName"]
      331 NAMECALL                         R21 R21 K5 ["format"]
      333 CALL                             R21 2 1
      334 MOVE                             R20 R21
      335 LOADK                            R21 K6 [""]
      336 MOVE                             R22 R12
      337 LOADK                            R23 K67 ["local startTime = 0\nlocal timerThread : thread = task.spawn(function()\nwhile true do\n\tif not script:IsDescendantOf(game) then\n\t\tstartTime = 0\n\t\treturn\n\tend\n\tif startTime > 0 then\n\t\tlocal elapsed = tick() - startTime\n\t\tprint(\"[ProceduralModel] \" .. script:GetFullName() .. \" rendering... \" .. string.format(\"%.0f\", elapsed) .. \" seconds\")\n\tend\n\ttask.wait(3)\nend\nend)\nscript.Destroying:Connect(function()\n\ttask.cancel(timerThread)\nend)\n"]
      338 LOADK                            R25 K68 ["%*.OnGenerate = function(parameters: Parameters, targetContainer: Instance)"]
      339 GETTABLEKS                       R27 R5 K8 ["objectName"]
      341 NAMECALL                         R25 R25 K5 ["format"]
      343 CALL                             R25 2 1
      344 MOVE                             R24 R25
      345 LOADK                            R25 K69 ["\t-- Timer setup\n\tstartTime = tick()\n"]
      346 MOVE                             R26 R14
      347 LOADK                            R27 K70 ["\t-- reposition\n\tfor _, part in targetContainer:GetDescendants() do\n\t\tif part:IsA(\"BasePart\") then\n\t\t\tpart.CFrame -= Vector3.yAxis * parameters.Size.Y / 2\n\t\tend\n\tend\n\tfor _, model in targetContainer:GetDescendants() do\n\t\tif model:IsA(\"Model\") then\n\t\t\tmodel.WorldPivot -= Vector3.yAxis * parameters.Size.Y / 2\n\t\tend\n\tend\n"]
      348 LOADK                            R28 K71 ["\t-- Stop timer when generation completes\n\tlocal timeElapsed = tick() - startTime\n\tstartTime = 0\n\tif timeElapsed > 3 and script:IsDescendantOf(game) then\n\t\tprint(\"[ProceduralModel] \" .. script:GetFullName() .. \" rendering completed\")\n\tend\n"]
      349 LOADK                            R29 K72 ["end"]
      350 LOADK                            R30 K6 [""]
      351 LOADK                            R32 K73 ["return %*"]
      352 GETTABLEKS                       R34 R5 K8 ["objectName"]
      354 NAMECALL                         R32 R32 K5 ["format"]
      356 CALL                             R32 2 1
      357 MOVE                             R31 R32
      358 LOADK                            R32 K6 [""]
      359 SETLIST                          R16 R17 16 [1]
      361 LOADK                            R17 K4 ["\n"]
      362 CALL                             R15 2 1
      363 SETTABLEKS                       R15 R5 K7 ["moduleSource"]
      365 RETURN                           R5 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+25]
        3 LENGTH                           R2 R0
        4 LOADN                            R3 0
        5 JUMPIFNOTLT                      R3 R2 ; [+22]
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 LOADK                            R10 K0 ["local %* = require(script.Dependencies.%*)"]
       12 GETTABLEKS                       R12 R6 K1 ["variableName"]
       14 GETTABLEKS                       R13 R6 K2 ["moduleName"]
       16 NAMECALL                         R10 R10 K3 ["format"]
       18 CALL                             R10 3 1
       19 MOVE                             R9 R10
       20 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       22 MOVE                             R8 R1
       23 GETIMPORT                        R7 K6 [table.insert]
       25 CALL                             R7 2 0
       26 FORGLOOP                         R2 2 ; [-16]
       28 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADNIL                          R1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+50]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 LOADK                            R5 K0 [","]
       11 NAMECALL                         R3 R2 K1 ["split"]
       13 CALL                             R3 2 1
       14 GETIMPORT                        R4 K4 [table.create]
       16 LENGTH                           R5 R3
       17 CALL                             R4 1 1
       18 MOVE                             R5 R3
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETIMPORT                        R10 K7 [Enum.SecurityCapability]
       24 MOVE                             R12 R9
       25 NAMECALL                         R10 R10 K8 ["FromName"]
       27 CALL                             R10 2 1
       28 JUMPIFNOT                        R10 ; [+8]
       29 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       31 MOVE                             R12 R4
       32 MOVE                             R13 R10
       33 GETIMPORT                        R11 K10 [table.insert]
       35 CALL                             R11 2 0
       36 JUMP                             ; [+9]
       37 GETIMPORT                        R11 K12 [warn]
       39 LOADK                            R13 K13 ["[PrimitiveGen] Unknown SecurityCapability: %*"]
       40 MOVE                             R15 R9
       41 NAMECALL                         R13 R13 K14 ["format"]
       43 CALL                             R13 2 1
       44 MOVE                             R12 R13
       45 CALL                             R11 1 0
       46 FORGLOOP                         R5 2 ; [-25]
       48 GETIMPORT                        R5 K17 [SecurityCapabilities.new]
       50 FASTCALL1                        TABLE_UNPACK R4 ; [+3]
       51 MOVE                             R7 R4
       52 GETIMPORT                        R6 K19 [table.unpack]
       54 CALL                             R6 1 -1
       55 CALL                             R5 -1 1
       56 MOVE                             R1 R5
       57 JUMP                             ; [+18]
       58 GETIMPORT                        R2 K17 [SecurityCapabilities.new]
       60 GETIMPORT                        R3 K21 [Enum.SecurityCapability.Basic]
       62 GETIMPORT                        R4 K23 [Enum.SecurityCapability.CreateInstances]
       64 GETIMPORT                        R5 K25 [Enum.SecurityCapability.CSG]
       66 GETIMPORT                        R6 K27 [Enum.SecurityCapability.Logging]
       68 GETIMPORT                        R7 K29 [Enum.SecurityCapability.Material]
       70 GETIMPORT                        R8 K31 [Enum.SecurityCapability.RunClientScript]
       72 GETIMPORT                        R9 K33 [Enum.SecurityCapability.RunServerScript]
       74 CALL                             R2 7 1
       75 MOVE                             R1 R2
       76 SETTABLEKS                       R1 R0 K34 ["Capabilities"]
       78 LOADB                            R2 1
       79 SETTABLEKS                       R2 R0 K35 ["Sandboxed"]
       81 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["ProceduralModel"]
        3 CALL                             R3 1 1
        4 GETTABLEKS                       R4 R2 K4 ["objectName"]
        6 SETTABLEKS                       R4 R3 K5 ["Name"]
        8 GETIMPORT                        R4 K8 [CFrame.identity]
       10 SETTABLEKS                       R4 R3 K9 ["WorldPivot"]
       12 GETTABLEKS                       R4 R3 K10 ["Size"]
       14 GETTABLEKS                       R5 R2 K11 ["smartSizeDefaults"]
       16 GETUPVAL                         R6 0
       17 CALL                             R6 0 1
       18 JUMPIF                           R6 ; [+30]
       19 GETTABLEKS                       R6 R5 K12 ["smartWidth"]
       21 JUMPIF                           R6 ; [+6]
       22 GETTABLEKS                       R6 R5 K13 ["smartHeight"]
       24 JUMPIF                           R6 ; [+3]
       25 GETTABLEKS                       R6 R5 K14 ["smartDepth"]
       27 JUMPIFNOT                        R6 ; [+21]
       28 GETTABLEKS                       R7 R5 K12 ["smartWidth"]
       30 JUMPIF                           R7 ; [+2]
       31 GETTABLEKS                       R7 R4 K15 ["X"]
       33 GETTABLEKS                       R8 R5 K13 ["smartHeight"]
       35 JUMPIF                           R8 ; [+2]
       36 GETTABLEKS                       R8 R4 K16 ["Y"]
       38 GETTABLEKS                       R9 R5 K14 ["smartDepth"]
       40 JUMPIF                           R9 ; [+2]
       41 GETTABLEKS                       R9 R4 K17 ["Z"]
       43 FASTCALL                         VECTOR ; [+2]
       44 GETIMPORT                        R6 K19 [Vector3.new]
       46 CALL                             R6 3 1
       47 SETTABLEKS                       R6 R3 K10 ["Size"]
       49 GETUPVAL                         R6 1
       50 CALL                             R6 0 1
       51 JUMPIF                           R6 ; [+30]
       52 GETTABLEKS                       R6 R5 K20 ["SmartWidth"]
       54 JUMPIF                           R6 ; [+6]
       55 GETTABLEKS                       R6 R5 K21 ["SmartHeight"]
       57 JUMPIF                           R6 ; [+3]
       58 GETTABLEKS                       R6 R5 K22 ["SmartDepth"]
       60 JUMPIFNOT                        R6 ; [+21]
       61 GETTABLEKS                       R7 R5 K20 ["SmartWidth"]
       63 JUMPIF                           R7 ; [+2]
       64 GETTABLEKS                       R7 R4 K15 ["X"]
       66 GETTABLEKS                       R8 R5 K21 ["SmartHeight"]
       68 JUMPIF                           R8 ; [+2]
       69 GETTABLEKS                       R8 R4 K16 ["Y"]
       71 GETTABLEKS                       R9 R5 K22 ["SmartDepth"]
       73 JUMPIF                           R9 ; [+2]
       74 GETTABLEKS                       R9 R4 K17 ["Z"]
       76 FASTCALL                         VECTOR ; [+2]
       77 GETIMPORT                        R6 K19 [Vector3.new]
       79 CALL                             R6 3 1
       80 SETTABLEKS                       R6 R3 K10 ["Size"]
       82 GETTABLEKS                       R6 R2 K23 ["extractedAttributes"]
       84 LOADNIL                          R7
       85 LOADNIL                          R8
       86 FORGPREP                         R6
       87 GETUPVAL                         R11 2
       88 GETTABLEKS                       R12 R10 K24 ["defaultValueStr"]
       90 GETTABLEKS                       R13 R10 K25 ["luauType"]
       92 CALL                             R11 2 1
       93 JUMPIFEQKNIL                     R11 ; [+7]
       95 GETTABLEKS                       R14 R10 K26 ["name"]
       97 MOVE                             R15 R11
       98 NAMECALL                         R12 R3 K27 ["SetAttribute"]
      100 CALL                             R12 3 0
      101 FORGLOOP                         R6 2 ; [-15]
      103 GETIMPORT                        R6 K2 [Instance.new]
      105 LOADK                            R7 K28 ["ModuleScript"]
      106 CALL                             R6 1 1
      107 LOADK                            R7 K29 ["ProceduralGeneration"]
      108 SETTABLEKS                       R7 R6 K5 ["Name"]
      110 JUMPIFNOT                        R1 ; [+9]
      111 LENGTH                           R7 R1
      112 LOADN                            R8 0
      113 JUMPIFNOTLT                      R8 R7 ; [+6]
      115 GETUPVAL                         R7 3
      116 MOVE                             R8 R0
      117 MOVE                             R9 R6
      118 MOVE                             R10 R1
      119 CALL                             R7 3 0
      120 SETTABLEKS                       R3 R6 K30 ["Parent"]
      122 GETUPVAL                         R7 4
      123 MOVE                             R8 R6
      124 CALL                             R7 1 0
      125 GETTABLEKS                       R9 R0 K31 ["tools"]
      127 GETTABLEKS                       R8 R9 K32 ["multiEdit"]
      129 GETTABLEKS                       R7 R8 K33 ["applyScriptSourceDirectly"]
      131 MOVE                             R8 R6
      132 GETTABLEKS                       R9 R2 K34 ["moduleSource"]
      134 CALL                             R7 2 0
      135 SETTABLEKS                       R6 R3 K35 ["Generator"]
      137 GETIMPORT                        R7 K37 [workspace]
      139 SETTABLEKS                       R7 R3 K30 ["Parent"]
      141 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["bridge"]
        3 GETTABLEKS                       R2 R3 K1 ["setPreviewImage"]
        5 DUPTABLE                         R3 K4 [{"index", "image"}]
        6 SETTABLEKS                       R0 R3 K2 ["index"]
        8 SETTABLEKS                       R1 R3 K3 ["image"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setPositionOnGround"]
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 1
        5 CALL                             R1 2 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["Name"]
        9 SETUPVAL                         R1 2
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K2 ["GenerationError"]
       13 JUMPIFEQKS                       R1 K3 [""] ; [+17]
       15 GETIMPORT                        R1 K5 [warn]
       17 LOADK                            R3 K6 ["[PrimitiveGen] \"Model %*\" generated with error: \"%*\". GenerationId: %*"]
       18 GETUPVAL                         R5 1
       19 NAMECALL                         R5 R5 K7 ["GetFullName"]
       21 CALL                             R5 1 1
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K2 ["GenerationError"]
       25 GETUPVAL                         R7 3
       26 NAMECALL                         R3 R3 K8 ["format"]
       28 CALL                             R3 4 1
       29 MOVE                             R2 R3
       30 CALL                             R1 1 0
       31 GETIMPORT                        R1 K11 [coroutine.status]
       33 GETUPVAL                         R2 4
       34 CALL                             R1 1 1
       35 JUMPIFNOTEQKS                    R1 K12 ["suspended"] ; [+8]
       37 GETIMPORT                        R1 K14 [coroutine.resume]
       39 GETUPVAL                         R2 4
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R3 R4 K1 ["Name"]
       43 CALL                             R1 2 0
       44 GETUPVAL                         R1 5
       45 CALL                             R1 0 1
       46 JUMPIF                           R1 ; [+7]
       47 GETUPVAL                         R2 6
       48 GETTABLEKS                       R1 R2 K15 ["capturePreviewImages"]
       50 GETUPVAL                         R2 1
       51 NEWCLOSURE                       R3 P0
       52 CAPTURE                          UPVAL U7
       53 CALL                             R1 2 0
       54 GETUPVAL                         R3 7
       55 GETTABLEKS                       R2 R3 K16 ["bridge"]
       57 GETTABLEKS                       R1 R2 K17 ["updateContentHeader"]
       59 DUPTABLE                         R2 K21 [{"newDisplayName", "newClassName", "modelTag"}]
       60 GETUPVAL                         R4 1
       61 GETTABLEKS                       R3 R4 K1 ["Name"]
       63 SETTABLEKS                       R3 R2 K18 ["newDisplayName"]
       65 GETUPVAL                         R4 1
       66 GETTABLEKS                       R3 R4 K22 ["ClassName"]
       68 SETTABLEKS                       R3 R2 K19 ["newClassName"]
       70 GETUPVAL                         R3 8
       71 SETTABLEKS                       R3 R2 K20 ["modelTag"]
       73 CALL                             R1 1 0
       74 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 NAMECALL                         R2 R0 K2 ["GetChildren"]
        7 CALL                             R2 1 1
        8 GETTABLEN                        R1 R2 1
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R2 R0 K3 ["ChildAdded"]
       16 GETUPVAL                         R4 0
       17 NAMECALL                         R2 R2 K4 ["Once"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_14:
        0 LOADK                            R3 K0 ["GeneratedFolder"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+24]
        5 GETUPVAL                         R1 0
        6 NAMECALL                         R1 R1 K2 ["Disconnect"]
        8 CALL                             R1 1 0
        9 LOADK                            R3 K3 ["Model"]
       10 NAMECALL                         R1 R0 K4 ["FindFirstChildOfClass"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+4]
       14 NAMECALL                         R2 R0 K5 ["GetChildren"]
       16 CALL                             R2 1 1
       17 GETTABLEN                        R1 R2 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 GETUPVAL                         R2 1
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R2 R0 K6 ["ChildAdded"]
       25 GETUPVAL                         R4 1
       26 NAMECALL                         R2 R2 K7 ["Once"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_15:
        0 LOADK                            R5 K0 [""]
        1 GETIMPORT                        R6 K3 [coroutine.running]
        3 CALL                             R6 0 1
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          REF R5
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R6
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R4
       14 NEWCLOSURE                       R8 P1
       15 CAPTURE                          VAL R7
       16 LOADK                            R11 K4 ["GeneratedFolder"]
       17 NAMECALL                         R9 R0 K5 ["FindFirstChildWhichIsA"]
       19 CALL                             R9 2 1
       20 JUMPIFNOT                        R9 ; [+21]
       21 LOADK                            R12 K6 ["Model"]
       22 NAMECALL                         R10 R9 K7 ["FindFirstChildOfClass"]
       24 CALL                             R10 2 1
       25 JUMPIF                           R10 ; [+4]
       26 NAMECALL                         R11 R9 K8 ["GetChildren"]
       28 CALL                             R11 1 1
       29 GETTABLEN                        R10 R11 1
       30 JUMPIFNOT                        R10 ; [+4]
       31 MOVE                             R11 R7
       32 MOVE                             R12 R10
       33 CALL                             R11 1 0
       34 JUMP                             ; [+18]
       35 GETTABLEKS                       R11 R9 K9 ["ChildAdded"]
       37 MOVE                             R13 R7
       38 NAMECALL                         R11 R11 K10 ["Once"]
       40 CALL                             R11 2 0
       41 JUMP                             ; [+11]
       42 LOADNIL                          R10
       43 GETTABLEKS                       R11 R0 K9 ["ChildAdded"]
       45 NEWCLOSURE                       R13 P2
       46 CAPTURE                          REF R10
       47 CAPTURE                          VAL R7
       48 NAMECALL                         R11 R11 K11 ["Connect"]
       50 CALL                             R11 2 1
       51 MOVE                             R10 R11
       52 CLOSEUPVALS                      R10
       53 JUMPIFEQKS                       R5 K0 [""] ; [+3]
       55 CLOSEUPVALS                      R5
       56 RETURN                           R5 1
       57 GETIMPORT                        R10 K13 [coroutine.yield]
       59 CALL                             R10 0 1
       60 MOVE                             R5 R10
       61 CLOSEUPVALS                      R5
       62 RETURN                           R5 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["dependencies"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["code"]
        9 MOVE                             R3 R0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K2 ["generationId"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K3 ["name"]
       16 CALL                             R1 4 1
       17 GETUPVAL                         R2 3
       18 GETUPVAL                         R3 4
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K0 ["dependencies"]
       22 MOVE                             R5 R1
       23 CALL                             R2 3 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K2 ["generationId"]
       27 JUMPIFNOT                        R4 ; [+10]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K2 ["generationId"]
       31 LOADK                            R5 K4 ["PrimitiveGen_%*"]
       32 MOVE                             R7 R4
       33 NAMECALL                         R5 R5 K5 ["format"]
       35 CALL                             R5 2 1
       36 MOVE                             R3 R5
       37 JUMP                             ; [+1]
       38 LOADNIL                          R3
       39 JUMPIFNOT                        R3 ; [+6]
       40 GETUPVAL                         R4 5
       41 MOVE                             R6 R2
       42 MOVE                             R7 R3
       43 NAMECALL                         R4 R4 K6 ["AddTag"]
       45 CALL                             R4 3 0
       46 GETUPVAL                         R4 6
       47 MOVE                             R5 R2
       48 GETUPVAL                         R6 4
       49 GETUPVAL                         R7 7
       50 GETUPVAL                         R8 8
       51 MOVE                             R9 R3
       52 CALL                             R4 5 1
       53 RETURN                           R4 1

PROTO_17:
        0 GETTABLEKS                       R3 R1 K0 ["toolArgs"]
        2 GETTABLEKS                       R2 R3 K1 ["environment"]
        4 GETUPVAL                         R3 0
        5 LOADB                            R5 0
        6 NAMECALL                         R3 R3 K2 ["GenerateGUID"]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R4 R2 K3 ["startRecording"]
       11 MOVE                             R5 R3
       12 LOADK                            R6 K4 ["Assistant Primitive Generation"]
       13 CALL                             R4 2 0
       14 GETIMPORT                        R4 K6 [pcall]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R1
       26 CALL                             R4 1 2
       27 GETTABLEKS                       R6 R2 K7 ["endRecording"]
       29 MOVE                             R7 R3
       30 CALL                             R6 1 0
       31 JUMPIF                           R4 ; [+7]
       32 DUPTABLE                         R6 K10 [{"success", "error"}]
       33 LOADB                            R7 0
       34 SETTABLEKS                       R7 R6 K8 ["success"]
       36 SETTABLEKS                       R5 R6 K9 ["error"]
       38 RETURN                           R6 1
       39 DUPTABLE                         R6 K12 [{"success", "resultName"}]
       40 LOADB                            R7 1
       41 SETTABLEKS                       R7 R6 K8 ["success"]
       43 SETTABLEKS                       R5 R6 K11 ["resultName"]
       45 RETURN                           R6 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["modelTag"]
        3 NAMECALL                         R2 R2 K1 ["GetTagged"]
        5 CALL                             R2 2 1
        6 LENGTH                           R3 R2
        7 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R4 R1 K3 ["toolArgs"]
       12 GETTABLEKS                       R3 R4 K4 ["environment"]
       14 GETTABLEKS                       R5 R3 K5 ["selection"]
       16 GETTABLEKS                       R4 R5 K6 ["set"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTagged"]
        4 CALL                             R0 2 1
        5 LENGTH                           R1 R0
        6 GETUPVAL                         R2 2
        7 JUMPIFNOTEQKN                    R1 K1 [0] ; [+12]
        9 GETUPVAL                         R3 3
       10 LOADK                            R5 K2 ["InstanceChip"]
       11 LOADK                            R6 K3 ["Deleted"]
       12 DUPTABLE                         R7 K5 [{"name"}]
       13 GETUPVAL                         R8 2
       14 SETTABLEKS                       R8 R7 K4 ["name"]
       16 NAMECALL                         R3 R3 K6 ["getText"]
       18 CALL                             R3 4 1
       19 MOVE                             R2 R3
       20 LOADNIL                          R3
       21 LOADN                            R4 0
       22 JUMPIFNOTLT                      R4 R1 ; [+4]
       24 GETTABLEN                        R4 R0 1
       25 GETTABLEKS                       R3 R4 K7 ["ClassName"]
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R5 R6 K8 ["bridge"]
       30 GETTABLEKS                       R4 R5 K9 ["updateContentHeader"]
       32 DUPTABLE                         R5 K13 [{"newDisplayName", "newClassName", "modelTag"}]
       33 SETTABLEKS                       R2 R5 K10 ["newDisplayName"]
       35 SETTABLEKS                       R3 R5 K11 ["newClassName"]
       37 LOADN                            R7 0
       38 JUMPIFNOTLT                      R7 R1 ; [+3]
       40 GETUPVAL                         R6 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R6
       43 SETTABLEKS                       R6 R5 K12 ["modelTag"]
       45 CALL                             R4 1 0
       46 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R0 K1 ["generationId"]
        4 LOADK                            R5 K2 ["PrimitiveGen_%*"]
        5 MOVE                             R7 R4
        6 NAMECALL                         R5 R5 K3 ["format"]
        8 CALL                             R5 2 1
        9 MOVE                             R3 R5
       10 GETTABLEKS                       R5 R1 K4 ["toolArgs"]
       12 GETTABLEKS                       R4 R5 K5 ["networking"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K6 ["observeLinkChanges"]
       17 MOVE                             R6 R4
       18 MOVE                             R7 R3
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R1
       25 CALL                             R5 3 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETIMPORT                        R6 K1 [script]
       23 GETTABLEKS                       R5 R6 K11 ["Parent"]
       25 GETTABLEKS                       R4 R5 K12 ["PrimitiveGenBridgeTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R6 R0 K13 ["Util"]
       32 GETTABLEKS                       R5 R6 K14 ["TaskCollector"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Util"]
       39 GETTABLEKS                       R6 R7 K15 ["ToolUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R9 R0 K16 ["Resources"]
       46 GETTABLEKS                       R8 R9 K17 ["Localization"]
       48 GETTABLEKS                       R7 R8 K18 ["Translator"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R10 R0 K19 ["Features"]
       55 GETTABLEKS                       R9 R10 K20 ["Gen3dUtils"]
       57 GETTABLEKS                       R8 R9 K21 ["ViewportPreviewUtils"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K10 [require]
       62 GETTABLEKS                       R10 R0 K22 ["Guest"]
       64 GETTABLEKS                       R9 R10 K23 ["Environment"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R11 R0 K24 ["Flags"]
       71 GETTABLEKS                       R10 R11 K25 ["FFlagControlProceduralScriptCapabilities"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R12 R0 K24 ["Flags"]
       78 GETTABLEKS                       R11 R12 K26 ["FFlagDisableNewSmartSize"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K10 [require]
       83 GETTABLEKS                       R13 R0 K24 ["Flags"]
       85 GETTABLEKS                       R12 R13 K27 ["FFlagDisableOldSmartSize"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K10 [require]
       90 GETTABLEKS                       R14 R0 K24 ["Flags"]
       92 GETTABLEKS                       R13 R14 K28 ["FFlagPrimGenErrorInfo"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K10 [require]
       97 GETTABLEKS                       R15 R0 K24 ["Flags"]
       99 GETTABLEKS                       R14 R15 K29 ["FFlagPrimGenFetchPreviewFromBackend"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K10 [require]
      104 GETTABLEKS                       R16 R0 K24 ["Flags"]
      106 GETTABLEKS                       R15 R16 K30 ["FFlagSandboxProceduralScript"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K10 [require]
      111 GETTABLEKS                       R17 R0 K24 ["Flags"]
      113 GETTABLEKS                       R16 R17 K31 ["FStringProceduralScriptCapabilities"]
      115 CALL                             R15 1 1
      116 DUPTABLE                         R16 K35 [{"smartWidth", "smartHeight", "smartDepth"}]
      117 LOADK                            R17 K36 ["parameters.Size.X"]
      118 SETTABLEKS                       R17 R16 K32 ["smartWidth"]
      120 LOADK                            R17 K37 ["parameters.Size.Y"]
      121 SETTABLEKS                       R17 R16 K33 ["smartHeight"]
      123 LOADK                            R17 K38 ["parameters.Size.Z"]
      124 SETTABLEKS                       R17 R16 K34 ["smartDepth"]
      126 DUPTABLE                         R17 K42 [{"SmartWidth", "SmartHeight", "SmartDepth"}]
      127 LOADK                            R18 K36 ["parameters.Size.X"]
      128 SETTABLEKS                       R18 R17 K39 ["SmartWidth"]
      130 LOADK                            R18 K37 ["parameters.Size.Y"]
      131 SETTABLEKS                       R18 R17 K40 ["SmartHeight"]
      133 LOADK                            R18 K38 ["parameters.Size.Z"]
      134 SETTABLEKS                       R18 R17 K41 ["SmartDepth"]
      136 DUPCLOSURE                       R18 K43 [PROTO_0]
      137 DUPCLOSURE                       R19 K44 [PROTO_1]
      138 DUPCLOSURE                       R20 K45 [PROTO_2]
      139 CAPTURE                          VAL R12
      140 DUPCLOSURE                       R21 K46 [PROTO_3]
      141 DUPCLOSURE                       R22 K47 [PROTO_5]
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R21
      144 DUPCLOSURE                       R23 K48 [PROTO_7]
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R12
      150 DUPCLOSURE                       R24 K49 [PROTO_8]
      151 DUPCLOSURE                       R25 K50 [PROTO_9]
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R15
      155 DUPCLOSURE                       R26 K51 [PROTO_10]
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R20
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R25
      161 DUPCLOSURE                       R27 K52 [PROTO_15]
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R7
      165 DUPCLOSURE                       R28 K53 [PROTO_17]
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R24
      168 CAPTURE                          VAL R23
      169 CAPTURE                          VAL R26
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R27
      172 DUPCLOSURE                       R29 K54 [PROTO_18]
      173 CAPTURE                          VAL R1
      174 DUPCLOSURE                       R30 K55 [PROTO_20]
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R6
      178 DUPTABLE                         R31 K59 [{"addWorkspaceModelAsync", "selectModel", "listenToLinkChanges"}]
      179 SETTABLEKS                       R28 R31 K56 ["addWorkspaceModelAsync"]
      181 SETTABLEKS                       R29 R31 K57 ["selectModel"]
      183 SETTABLEKS                       R30 R31 K58 ["listenToLinkChanges"]
      185 DUPTABLE                         R32 K61 [{"bridge"}]
      186 SETTABLEKS                       R31 R32 K60 ["bridge"]
      188 RETURN                           R32 1
