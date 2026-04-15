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
        0 JUMPIFNOTEQKS                    R1 K0 ["number"] ; [+7]
        2 FASTCALL1                        TONUMBER R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K2 [tonumber]
        6 CALL                             R2 1 1
        7 RETURN                           R2 1
        8 JUMPIFNOTEQKS                    R1 K3 ["boolean"] ; [+6]
       10 JUMPIFEQKS                       R0 K4 ["true"] ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 JUMPIFNOTEQKS                    R1 K5 ["string"] ; [+6]
       17 LOADK                            R4 K6 ["^\"(.*)\"$"]
       18 NAMECALL                         R2 R0 K7 ["match"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1
       22 JUMPIFNOTEQKS                    R1 K8 ["Color3"] ; [+53]
       24 LOADK                            R4 K9 ["Color3%.fromRGB%((%d+),%s*(%d+),%s*(%d+)%)"]
       25 NAMECALL                         R2 R0 K7 ["match"]
       27 CALL                             R2 2 3
       28 JUMPIFNOT                        R2 ; [+19]
       29 GETIMPORT                        R5 K11 [Color3.fromRGB]
       31 FASTCALL1                        TONUMBER R2 ; [+3]
       32 MOVE                             R7 R2
       33 GETIMPORT                        R6 K2 [tonumber]
       35 CALL                             R6 1 1
       36 FASTCALL1                        TONUMBER R3 ; [+3]
       37 MOVE                             R8 R3
       38 GETIMPORT                        R7 K2 [tonumber]
       40 CALL                             R7 1 1
       41 FASTCALL1                        TONUMBER R4 ; [+3]
       42 MOVE                             R9 R4
       43 GETIMPORT                        R8 K2 [tonumber]
       45 CALL                             R8 1 1
       46 CALL                             R5 3 -1
       47 RETURN                           R5 -1
       48 LOADK                            R7 K12 ["Color3%.new%(([%d%.]+),%s*([%d%.]+),%s*([%d%.]+)%)"]
       49 NAMECALL                         R5 R0 K7 ["match"]
       51 CALL                             R5 2 3
       52 MOVE                             R2 R5
       53 MOVE                             R3 R6
       54 MOVE                             R4 R7
       55 JUMPIFNOT                        R2 ; [+74]
       56 GETIMPORT                        R5 K14 [Color3.new]
       58 FASTCALL1                        TONUMBER R2 ; [+3]
       59 MOVE                             R7 R2
       60 GETIMPORT                        R6 K2 [tonumber]
       62 CALL                             R6 1 1
       63 FASTCALL1                        TONUMBER R3 ; [+3]
       64 MOVE                             R8 R3
       65 GETIMPORT                        R7 K2 [tonumber]
       67 CALL                             R7 1 1
       68 FASTCALL1                        TONUMBER R4 ; [+3]
       69 MOVE                             R9 R4
       70 GETIMPORT                        R8 K2 [tonumber]
       72 CALL                             R8 1 1
       73 CALL                             R5 3 -1
       74 RETURN                           R5 -1
       75 JUMP                             ; [+54]
       76 JUMPIFNOTEQKS                    R1 K15 ["Vector3"] ; [+27]
       78 LOADK                            R4 K16 ["Vector3%.new%(([%d%.%-]+),%s*([%d%.%-]+),%s*([%d%.%-]+)%)"]
       79 NAMECALL                         R2 R0 K7 ["match"]
       81 CALL                             R2 2 3
       82 JUMPIFNOT                        R2 ; [+47]
       83 FASTCALL1                        TONUMBER R2 ; [+3]
       84 MOVE                             R7 R2
       85 GETIMPORT                        R6 K2 [tonumber]
       87 CALL                             R6 1 1
       88 FASTCALL1                        TONUMBER R3 ; [+3]
       89 MOVE                             R8 R3
       90 GETIMPORT                        R7 K2 [tonumber]
       92 CALL                             R7 1 1
       93 FASTCALL1                        TONUMBER R4 ; [+3]
       94 MOVE                             R9 R4
       95 GETIMPORT                        R8 K2 [tonumber]
       97 CALL                             R8 1 1
       98 FASTCALL                         VECTOR ; [+2]
       99 GETIMPORT                        R5 K17 [Vector3.new]
      101 CALL                             R5 3 1
      102 RETURN                           R5 1
      103 JUMP                             ; [+26]
      104 GETUPVAL                         R2 0
      105 CALL                             R2 0 1
      106 JUMPIFNOT                        R2 ; [+11]
      107 GETIMPORT                        R2 K19 [warn]
      109 LOADK                            R4 K20 ["[PrimitiveGen] Unknown luau type: %* for value: %*, defaulting to any"]
      110 MOVE                             R6 R1
      111 MOVE                             R7 R0
      112 NAMECALL                         R4 R4 K21 ["format"]
      114 CALL                             R4 3 1
      115 MOVE                             R3 R4
      116 CALL                             R2 1 0
      117 JUMP                             ; [+12]
      118 LOADK                            R3 K22 ["Unknown luau type: %* for value: %*"]
      119 MOVE                             R5 R1
      120 MOVE                             R6 R0
      121 NAMECALL                         R3 R3 K21 ["format"]
      123 CALL                             R3 3 1
      124 MOVE                             R2 R3
      125 GETIMPORT                        R3 K24 [error]
      127 MOVE                             R4 R2
      128 LOADN                            R5 0
      129 CALL                             R3 2 0
      130 LOADNIL                          R2
      131 RETURN                           R2 1

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
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETUPVAL                         R5 0
       15 GETTABLE                         R4 R5 R2
       16 JUMP                             ; [+1]
       17 LOADNIL                          R4
       18 JUMPIFNOT                        R4 ; [+1]
       19 RETURN                           R4 1
       20 JUMPIFNOT                        R2 ; [+9]
       21 JUMPIFNOT                        R3 ; [+8]
       22 LOADK                            R6 K4 ["parameters.Attributes.%* or %*"]
       23 MOVE                             R8 R2
       24 MOVE                             R9 R3
       25 NAMECALL                         R6 R6 K5 ["format"]
       27 CALL                             R6 3 1
       28 MOVE                             R5 R6
       29 RETURN                           R5 1
       30 JUMPIFNOT                        R2 ; [+7]
       31 LOADK                            R6 K6 ["parameters.Attributes.%*"]
       32 MOVE                             R8 R2
       33 NAMECALL                         R6 R6 K5 ["format"]
       35 CALL                             R6 2 1
       36 MOVE                             R5 R6
       37 RETURN                           R5 1
       38 LOADK                            R5 K7 ["parameters.Attributes.Unknown"]
       39 RETURN                           R5 1

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
       64 JUMPIFNOT                        R16 ; [+131]
       65 GETTABLE                         R18 R9 R16
       66 JUMPIF                           R18 ; [+129]
       67 LOADB                            R18 1
       68 SETTABLE                         R18 R9 R16
       69 GETUPVAL                         R19 0
       70 GETTABLE                         R18 R19 R16
       71 JUMPIFNOT                        R18 ; [+14]
       72 JUMPIFNOT                        R17 ; [+123]
       73 LOADK                            R21 K20 ["^%s*(.-)%s*$"]
       74 NAMECALL                         R19 R17 K13 ["match"]
       76 CALL                             R19 2 -1
       77 FASTCALL                         TONUMBER ; [+2]
       78 GETIMPORT                        R18 K22 [tonumber]
       80 CALL                             R18 -1 1
       81 JUMPIFNOT                        R18 ; [+114]
       82 GETTABLEKS                       R19 R5 K10 ["smartSizeDefaults"]
       84 SETTABLE                         R18 R19 R16
       85 JUMP                             ; [+110]
       86 LOADK                            R18 K23 ["any"]
       87 JUMPIFNOT                        R17 ; [+5]
       88 LOADK                            R21 K20 ["^%s*(.-)%s*$"]
       89 NAMECALL                         R19 R17 K13 ["match"]
       91 CALL                             R19 2 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R19
       94 JUMPIFNOT                        R19 ; [+88]
       95 LOADK                            R22 K24 ["^Color3"]
       96 NAMECALL                         R20 R19 K13 ["match"]
       98 CALL                             R20 2 1
       99 JUMPIFNOT                        R20 ; [+2]
      100 LOADK                            R18 K25 ["Color3"]
      101 JUMP                             ; [+67]
      102 LOADK                            R22 K26 ["^Vector3"]
      103 NAMECALL                         R20 R19 K13 ["match"]
      105 CALL                             R20 2 1
      106 JUMPIFNOT                        R20 ; [+2]
      107 LOADK                            R18 K27 ["Vector3"]
      108 JUMP                             ; [+60]
      109 LOADK                            R22 K28 ["^CFrame"]
      110 NAMECALL                         R20 R19 K13 ["match"]
      112 CALL                             R20 2 1
      113 JUMPIFNOT                        R20 ; [+2]
      114 LOADK                            R18 K29 ["CFrame"]
      115 JUMP                             ; [+53]
      116 LOADK                            R22 K30 ["^%-?%d"]
      117 NAMECALL                         R20 R19 K13 ["match"]
      119 CALL                             R20 2 1
      120 JUMPIF                           R20 ; [+8]
      121 GETUPVAL                         R20 1
      122 CALL                             R20 0 1
      123 JUMPIFNOT                        R20 ; [+7]
      124 LOADK                            R22 K31 ["^math%."]
      125 NAMECALL                         R20 R19 K13 ["match"]
      127 CALL                             R20 2 1
      128 JUMPIFNOT                        R20 ; [+2]
      129 LOADK                            R18 K32 ["number"]
      130 JUMP                             ; [+38]
      131 LOADK                            R22 K33 ["^\""]
      132 NAMECALL                         R20 R19 K13 ["match"]
      134 CALL                             R20 2 1
      135 JUMPIFNOT                        R20 ; [+2]
      136 LOADK                            R18 K34 ["string"]
      137 JUMP                             ; [+31]
      138 JUMPIFEQKS                       R19 K35 ["true"] ; [+3]
      140 JUMPIFNOTEQKS                    R19 K36 ["false"] ; [+3]
      142 LOADK                            R18 K37 ["boolean"]
      143 JUMP                             ; [+25]
      144 GETUPVAL                         R20 1
      145 CALL                             R20 0 1
      146 JUMPIFNOT                        R20 ; [+11]
      147 GETIMPORT                        R20 K39 [warn]
      149 LOADK                            R22 K40 ["[PrimitiveGen] Unknown luau type from value: %*, defaulting %* to any"]
      150 MOVE                             R24 R19
      151 MOVE                             R25 R16
      152 NAMECALL                         R22 R22 K5 ["format"]
      154 CALL                             R22 3 1
      155 MOVE                             R21 R22
      156 CALL                             R20 1 0
      157 JUMP                             ; [+11]
      158 LOADK                            R21 K41 ["Unknown luau type from value: %*"]
      159 MOVE                             R23 R19
      160 NAMECALL                         R21 R21 K5 ["format"]
      162 CALL                             R21 2 1
      163 MOVE                             R20 R21
      164 GETIMPORT                        R21 K43 [error]
      166 MOVE                             R22 R20
      167 LOADN                            R23 0
      168 CALL                             R21 2 0
      169 GETTABLEKS                       R21 R5 K9 ["extractedAttributes"]
      171 DUPTABLE                         R22 K47 [{"name", "defaultValueStr", "luauType"}]
      172 SETTABLEKS                       R16 R22 K44 ["name"]
      174 SETTABLEKS                       R19 R22 K45 ["defaultValueStr"]
      176 SETTABLEKS                       R18 R22 K46 ["luauType"]
      178 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      180 GETIMPORT                        R20 K49 [table.insert]
      182 CALL                             R20 2 0
      183 LOADK                            R23 K50 ["\t\t%*: %*?,"]
      184 MOVE                             R25 R16
      185 MOVE                             R26 R18
      186 NAMECALL                         R23 R23 K5 ["format"]
      188 CALL                             R23 3 1
      189 MOVE                             R22 R23
      190 FASTCALL2                        TABLE_INSERT R8 R22 ; [+4]
      192 MOVE                             R21 R8
      193 GETIMPORT                        R20 K49 [table.insert]
      195 CALL                             R20 2 0
      196 FORGLOOP                         R10 1 ; [-146]
      198 LOADK                            R12 K15 ["SO%.getAttribute(%b())"]
      199 DUPCLOSURE                       R13 K51 [PROTO_6]
      200 CAPTURE                          UPVAL U0
      201 NAMECALL                         R10 R0 K52 ["gsub"]
      203 CALL                             R10 3 1
      204 GETIMPORT                        R11 K3 [table.concat]
      206 MOVE                             R12 R8
      207 LOADK                            R13 K4 ["\n"]
      208 CALL                             R11 2 1
      209 LOADK                            R13 K53 ["type Parameters = {\n\tSize: Vector3,\n\tAttributes: {\n%*\n\t},\n}"]
      210 MOVE                             R15 R11
      211 NAMECALL                         R13 R13 K5 ["format"]
      213 CALL                             R13 2 1
      214 MOVE                             R12 R13
      215 JUMPIFNOT                        R6 ; [+32]
      216 GETIMPORT                        R13 K3 [table.concat]
      218 NEWTABLE                         R14 0 3
      220 LOADK                            R15 K54 ["-- Fix orientation of the model"]
      221 LOADK                            R17 K55 ["%*.WorldPivot = CFrame.identity"]
      222 MOVE                             R19 R6
      223 NAMECALL                         R17 R17 K5 ["format"]
      225 CALL                             R17 2 1
      226 MOVE                             R16 R17
      227 LOADK                            R17 K6 [""]
      228 SETLIST                          R14 R15 3 [1]
      230 LOADK                            R15 K4 ["\n"]
      231 CALL                             R13 2 1
      232 LOADK                            R17 K56 ["(local%%s+%*%%s*=%%s*GP%%.model%%b())"]
      233 MOVE                             R19 R6
      234 NAMECALL                         R17 R17 K5 ["format"]
      236 CALL                             R17 2 1
      237 MOVE                             R16 R17
      238 LOADK                            R18 K57 ["%%1%*"]
      239 MOVE                             R20 R13
      240 NAMECALL                         R18 R18 K5 ["format"]
      242 CALL                             R18 2 1
      243 MOVE                             R17 R18
      244 NAMECALL                         R14 R10 K52 ["gsub"]
      246 CALL                             R14 3 1
      247 MOVE                             R10 R14
      248 LOADK                            R15 K58 ["%s*return%s+[%w_]+%s*$"]
      249 LOADK                            R16 K6 [""]
      250 NAMECALL                         R13 R10 K52 ["gsub"]
      252 CALL                             R13 3 1
      253 MOVE                             R10 R13
      254 JUMPIFNOT                        R6 ; [+8]
      255 MOVE                             R13 R10
      256 LOADK                            R15 K59 ["\n\n%*.Parent = targetContainer"]
      257 MOVE                             R17 R6
      258 NAMECALL                         R15 R15 K5 ["format"]
      260 CALL                             R15 2 1
      261 MOVE                             R14 R15
      262 CONCAT                           R10 R13 R14
      263 NEWTABLE                         R13 0 0
      265 GETIMPORT                        R14 K61 [string.split]
      267 MOVE                             R15 R10
      268 LOADK                            R16 K4 ["\n"]
      269 CALL                             R14 2 3
      270 FORGPREP                         R14
      271 LOADK                            R22 K62 ["\t%*"]
      272 MOVE                             R24 R18
      273 NAMECALL                         R22 R22 K5 ["format"]
      275 CALL                             R22 2 1
      276 MOVE                             R21 R22
      277 FASTCALL2                        TABLE_INSERT R13 R21 ; [+4]
      279 MOVE                             R20 R13
      280 GETIMPORT                        R19 K49 [table.insert]
      282 CALL                             R19 2 0
      283 FORGLOOP                         R14 2 ; [-13]
      285 GETIMPORT                        R14 K3 [table.concat]
      287 MOVE                             R15 R13
      288 LOADK                            R16 K4 ["\n"]
      289 CALL                             R14 2 1
      290 GETIMPORT                        R15 K3 [table.concat]
      292 NEWTABLE                         R16 0 16
      294 LOADK                            R17 K63 ["--!strict"]
      295 LOADK                            R19 K64 ["-- generationId: %*"]
      296 ORK                              R21 R2 K65 ["unknown"]
      297 NAMECALL                         R19 R19 K5 ["format"]
      299 CALL                             R19 2 1
      300 MOVE                             R18 R19
      301 MOVE                             R19 R4
      302 LOADK                            R21 K66 ["local %* = {}"]
      303 GETTABLEKS                       R23 R5 K8 ["objectName"]
      305 NAMECALL                         R21 R21 K5 ["format"]
      307 CALL                             R21 2 1
      308 MOVE                             R20 R21
      309 LOADK                            R21 K6 [""]
      310 MOVE                             R22 R12
      311 LOADK                            R23 K67 ["local startTime = 0\nlocal timerThread : thread = task.spawn(function()\nwhile true do\n\tif startTime > 0 then\n\t\tlocal elapsed = tick() - startTime\n\t\tprint(\"[ProceduralModel] \" .. script:GetFullName() .. \" rendering... \" .. string.format(\"%.0f\", elapsed) .. \" seconds\")\n\tend\n\ttask.wait(3)\nend\nend)\nscript.Destroying:Connect(function()\n\ttask.cancel(timerThread)\nend)\n"]
      312 LOADK                            R25 K68 ["%*.OnGenerate = function(parameters: Parameters, targetContainer: Instance)"]
      313 GETTABLEKS                       R27 R5 K8 ["objectName"]
      315 NAMECALL                         R25 R25 K5 ["format"]
      317 CALL                             R25 2 1
      318 MOVE                             R24 R25
      319 LOADK                            R25 K69 ["\t-- Timer setup\n\tstartTime = tick()\n"]
      320 MOVE                             R26 R14
      321 LOADK                            R27 K70 ["\t-- reposition\n\tfor _, part in targetContainer:GetDescendants() do\n\t\tif part:IsA(\"BasePart\") then\n\t\t\tpart.CFrame -= Vector3.yAxis * parameters.Size.Y / 2\n\t\tend\n\tend\n\tfor _, model in targetContainer:GetDescendants() do\n\t\tif model:IsA(\"Model\") then\n\t\t\tmodel.WorldPivot -= Vector3.yAxis * parameters.Size.Y / 2\n\t\tend\n\tend\n"]
      322 LOADK                            R28 K71 ["\t-- Stop timer when generation completes\n\tlocal timeElapsed = tick() - startTime\n\tstartTime = 0\n\tif timeElapsed > 3 then\n\t\tprint(\"[ProceduralModel] \" .. script:GetFullName() .. \" rendering completed\")\n\tend\n"]
      323 LOADK                            R29 K72 ["end"]
      324 LOADK                            R30 K6 [""]
      325 LOADK                            R32 K73 ["return %*"]
      326 GETTABLEKS                       R34 R5 K8 ["objectName"]
      328 NAMECALL                         R32 R32 K5 ["format"]
      330 CALL                             R32 2 1
      331 MOVE                             R31 R32
      332 LOADK                            R32 K6 [""]
      333 SETLIST                          R16 R17 16 [1]
      335 LOADK                            R17 K4 ["\n"]
      336 CALL                             R15 2 1
      337 SETTABLEKS                       R15 R5 K7 ["moduleSource"]
      339 RETURN                           R5 1

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
       16 GETTABLEKS                       R6 R5 K12 ["smartWidth"]
       18 JUMPIF                           R6 ; [+6]
       19 GETTABLEKS                       R6 R5 K13 ["smartHeight"]
       21 JUMPIF                           R6 ; [+3]
       22 GETTABLEKS                       R6 R5 K14 ["smartDepth"]
       24 JUMPIFNOT                        R6 ; [+21]
       25 GETTABLEKS                       R7 R5 K12 ["smartWidth"]
       27 JUMPIF                           R7 ; [+2]
       28 GETTABLEKS                       R7 R4 K15 ["X"]
       30 GETTABLEKS                       R8 R5 K13 ["smartHeight"]
       32 JUMPIF                           R8 ; [+2]
       33 GETTABLEKS                       R8 R4 K16 ["Y"]
       35 GETTABLEKS                       R9 R5 K14 ["smartDepth"]
       37 JUMPIF                           R9 ; [+2]
       38 GETTABLEKS                       R9 R4 K17 ["Z"]
       40 FASTCALL                         VECTOR ; [+2]
       41 GETIMPORT                        R6 K19 [Vector3.new]
       43 CALL                             R6 3 1
       44 SETTABLEKS                       R6 R3 K10 ["Size"]
       46 GETTABLEKS                       R6 R2 K20 ["extractedAttributes"]
       48 LOADNIL                          R7
       49 LOADNIL                          R8
       50 FORGPREP                         R6
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R12 R10 K21 ["defaultValueStr"]
       54 GETTABLEKS                       R13 R10 K22 ["luauType"]
       56 CALL                             R11 2 1
       57 JUMPIFEQKNIL                     R11 ; [+7]
       59 GETTABLEKS                       R14 R10 K23 ["name"]
       61 MOVE                             R15 R11
       62 NAMECALL                         R12 R3 K24 ["SetAttribute"]
       64 CALL                             R12 3 0
       65 FORGLOOP                         R6 2 ; [-15]
       67 GETIMPORT                        R6 K2 [Instance.new]
       69 LOADK                            R7 K25 ["ModuleScript"]
       70 CALL                             R6 1 1
       71 LOADK                            R7 K26 ["ProceduralGeneration"]
       72 SETTABLEKS                       R7 R6 K5 ["Name"]
       74 JUMPIFNOT                        R1 ; [+9]
       75 LENGTH                           R7 R1
       76 LOADN                            R8 0
       77 JUMPIFNOTLT                      R8 R7 ; [+6]
       79 GETUPVAL                         R7 1
       80 MOVE                             R8 R0
       81 MOVE                             R9 R6
       82 MOVE                             R10 R1
       83 CALL                             R7 3 0
       84 SETTABLEKS                       R3 R6 K27 ["Parent"]
       86 GETUPVAL                         R7 2
       87 MOVE                             R8 R6
       88 CALL                             R7 1 0
       89 GETTABLEKS                       R9 R0 K28 ["tools"]
       91 GETTABLEKS                       R8 R9 K29 ["multiEdit"]
       93 GETTABLEKS                       R7 R8 K30 ["applyScriptSourceDirectly"]
       95 MOVE                             R8 R6
       96 GETTABLEKS                       R9 R2 K31 ["moduleSource"]
       98 CALL                             R7 2 0
       99 SETTABLEKS                       R6 R3 K32 ["Generator"]
      101 GETIMPORT                        R7 K34 [workspace]
      103 SETTABLEKS                       R7 R3 K27 ["Parent"]
      105 RETURN                           R3 1

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
       10 GETIMPORT                        R1 K4 [coroutine.status]
       12 GETUPVAL                         R2 3
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K5 ["suspended"] ; [+8]
       16 GETIMPORT                        R1 K7 [coroutine.resume]
       18 GETUPVAL                         R2 3
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K1 ["Name"]
       22 CALL                             R1 2 0
       23 GETUPVAL                         R2 4
       24 GETTABLEKS                       R1 R2 K8 ["capturePreviewImages"]
       26 GETUPVAL                         R2 1
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U5
       29 CALL                             R1 2 0
       30 GETUPVAL                         R3 5
       31 GETTABLEKS                       R2 R3 K9 ["bridge"]
       33 GETTABLEKS                       R1 R2 K10 ["updateContentHeader"]
       35 DUPTABLE                         R2 K14 [{"newDisplayName", "newClassName", "modelTag"}]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R3 R4 K1 ["Name"]
       39 SETTABLEKS                       R3 R2 K11 ["newDisplayName"]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R3 R4 K15 ["ClassName"]
       44 SETTABLEKS                       R3 R2 K12 ["newClassName"]
       46 GETUPVAL                         R3 6
       47 SETTABLEKS                       R3 R2 K13 ["modelTag"]
       49 CALL                             R1 1 0
       50 RETURN                           R0 0

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
        8 CAPTURE                          VAL R6
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R4
       12 NEWCLOSURE                       R8 P1
       13 CAPTURE                          VAL R7
       14 LOADK                            R11 K4 ["GeneratedFolder"]
       15 NAMECALL                         R9 R0 K5 ["FindFirstChildWhichIsA"]
       17 CALL                             R9 2 1
       18 JUMPIFNOT                        R9 ; [+21]
       19 LOADK                            R12 K6 ["Model"]
       20 NAMECALL                         R10 R9 K7 ["FindFirstChildOfClass"]
       22 CALL                             R10 2 1
       23 JUMPIF                           R10 ; [+4]
       24 NAMECALL                         R11 R9 K8 ["GetChildren"]
       26 CALL                             R11 1 1
       27 GETTABLEN                        R10 R11 1
       28 JUMPIFNOT                        R10 ; [+4]
       29 MOVE                             R11 R7
       30 MOVE                             R12 R10
       31 CALL                             R11 1 0
       32 JUMP                             ; [+18]
       33 GETTABLEKS                       R11 R9 K9 ["ChildAdded"]
       35 MOVE                             R13 R7
       36 NAMECALL                         R11 R11 K10 ["Once"]
       38 CALL                             R11 2 0
       39 JUMP                             ; [+11]
       40 LOADNIL                          R10
       41 GETTABLEKS                       R11 R0 K9 ["ChildAdded"]
       43 NEWCLOSURE                       R13 P2
       44 CAPTURE                          REF R10
       45 CAPTURE                          VAL R7
       46 NAMECALL                         R11 R11 K11 ["Connect"]
       48 CALL                             R11 2 1
       49 MOVE                             R10 R11
       50 CLOSEUPVALS                      R10
       51 JUMPIFEQKS                       R5 K0 [""] ; [+3]
       53 CLOSEUPVALS                      R5
       54 RETURN                           R5 1
       55 GETIMPORT                        R10 K13 [coroutine.yield]
       57 CALL                             R10 0 1
       58 MOVE                             R5 R10
       59 CLOSEUPVALS                      R5
       60 RETURN                           R5 1

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
       78 GETTABLEKS                       R11 R12 K26 ["FFlagPrimGenErrorInfo"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K10 [require]
       83 GETTABLEKS                       R13 R0 K24 ["Flags"]
       85 GETTABLEKS                       R12 R13 K27 ["FFlagSandboxProceduralScript"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K10 [require]
       90 GETTABLEKS                       R14 R0 K24 ["Flags"]
       92 GETTABLEKS                       R13 R14 K28 ["FStringProceduralScriptCapabilities"]
       94 CALL                             R12 1 1
       95 DUPTABLE                         R13 K32 [{"smartWidth", "smartHeight", "smartDepth"}]
       96 LOADK                            R14 K33 ["parameters.Size.X"]
       97 SETTABLEKS                       R14 R13 K29 ["smartWidth"]
       99 LOADK                            R14 K34 ["parameters.Size.Y"]
      100 SETTABLEKS                       R14 R13 K30 ["smartHeight"]
      102 LOADK                            R14 K35 ["parameters.Size.Z"]
      103 SETTABLEKS                       R14 R13 K31 ["smartDepth"]
      105 DUPCLOSURE                       R14 K36 [PROTO_0]
      106 DUPCLOSURE                       R15 K37 [PROTO_1]
      107 DUPCLOSURE                       R16 K38 [PROTO_2]
      108 CAPTURE                          VAL R10
      109 DUPCLOSURE                       R17 K39 [PROTO_3]
      110 DUPCLOSURE                       R18 K40 [PROTO_5]
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R17
      113 DUPCLOSURE                       R19 K41 [PROTO_7]
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R10
      116 DUPCLOSURE                       R20 K42 [PROTO_8]
      117 DUPCLOSURE                       R21 K43 [PROTO_9]
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R12
      121 DUPCLOSURE                       R22 K44 [PROTO_10]
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R21
      125 DUPCLOSURE                       R23 K45 [PROTO_15]
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R7
      128 DUPCLOSURE                       R24 K46 [PROTO_17]
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R20
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R22
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R23
      135 DUPCLOSURE                       R25 K47 [PROTO_18]
      136 CAPTURE                          VAL R1
      137 DUPCLOSURE                       R26 K48 [PROTO_20]
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R6
      141 DUPTABLE                         R27 K52 [{"addWorkspaceModelAsync", "selectModel", "listenToLinkChanges"}]
      142 SETTABLEKS                       R24 R27 K49 ["addWorkspaceModelAsync"]
      144 SETTABLEKS                       R25 R27 K50 ["selectModel"]
      146 SETTABLEKS                       R26 R27 K51 ["listenToLinkChanges"]
      148 DUPTABLE                         R28 K54 [{"bridge"}]
      149 SETTABLEKS                       R27 R28 K53 ["bridge"]
      151 RETURN                           R28 1
