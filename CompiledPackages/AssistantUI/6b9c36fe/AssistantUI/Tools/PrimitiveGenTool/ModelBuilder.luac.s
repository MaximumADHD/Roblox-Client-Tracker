PROTO_0:
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
       56 JUMPIFNOT                        R2 ; [+58]
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
       76 JUMP                             ; [+38]
       77 JUMPIFNOTEQKS                    R1 K16 ["Vector3"] ; [+27]
       79 LOADK                            R4 K17 ["Vector3%.new%(([%d%.%-]+),%s*([%d%.%-]+),%s*([%d%.%-]+)%)"]
       80 NAMECALL                         R2 R0 K8 ["match"]
       82 CALL                             R2 2 3
       83 JUMPIFNOT                        R2 ; [+31]
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
      104 JUMP                             ; [+10]
      105 GETIMPORT                        R2 K20 [warn]
      107 LOADK                            R4 K21 ["[PrimitiveGen] Unknown luau type: %* for value: %*, defaulting to any"]
      108 MOVE                             R6 R1
      109 MOVE                             R7 R0
      110 NAMECALL                         R4 R4 K22 ["format"]
      112 CALL                             R4 3 1
      113 MOVE                             R3 R4
      114 CALL                             R2 1 0
      115 LOADNIL                          R2
      116 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["ModuleScript"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R2 R4 K4 ["Name"]
        6 SETTABLEKS                       R1 R4 K5 ["Parent"]
        8 GETTABLEKS                       R5 R0 K6 ["tools"]
       10 GETTABLEKS                       R5 R5 K7 ["multiEdit"]
       12 GETTABLEKS                       R5 R5 K8 ["applyScriptSourceDirectly"]
       14 MOVE                             R6 R4
       15 MOVE                             R7 R3
       16 CALL                             R5 2 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETTABLEKS                       R3 R3 K0 ["moduleName"]
        6 GETUPVAL                         R4 4
        7 CALL                             R0 4 -1
        8 RETURN                           R0 -1

PROTO_3:
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
       36 GETUPVAL                         R12 0
       37 GETTABLEKS                       R12 R12 K14 ["wrapFunction"]
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
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K20 ["collectTasks"]
       73 MOVE                             R7 R5
       74 CALL                             R6 1 2
       75 JUMPIF                           R6 ; [+12]
       76 GETUPVAL                         R8 2
       77 LOADK                            R10 K21 ["Failed to install dependencies: %*"]
       78 GETIMPORT                        R12 K10 [table.concat]
       80 MOVE                             R13 R7
       81 LOADK                            R14 K22 [", "]
       82 CALL                             R12 2 1
       83 NAMECALL                         R10 R10 K13 ["format"]
       85 CALL                             R10 2 1
       86 MOVE                             R9 R10
       87 CALL                             R8 1 0
       88 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R3 2
        1 LOADN                            R4 -2
        2 NAMECALL                         R1 R0 K0 ["sub"]
        4 CALL                             R1 3 1
        5 LOADK                            R4 K1 ["\"([^\"]+)\""]
        6 NAMECALL                         R2 R1 K2 ["match"]
        8 CALL                             R2 2 1
        9 LOADK                            R5 K3 ["\"[^\"]+\"%s*,%s*(.+)"]
       10 NAMECALL                         R3 R1 K2 ["match"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["FFlagDisableNewSmartSize"]
       16 JUMPIF                           R4 ; [+7]
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETUPVAL                         R5 1
       19 GETTABLE                         R4 R5 R2
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 JUMPIFNOT                        R4 ; [+1]
       23 RETURN                           R4 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K5 ["FFlagDisableOldSmartSize"]
       27 JUMPIF                           R4 ; [+7]
       28 JUMPIFNOT                        R2 ; [+3]
       29 GETUPVAL                         R5 2
       30 GETTABLE                         R4 R5 R2
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 JUMPIFNOT                        R4 ; [+1]
       34 RETURN                           R4 1
       35 JUMPIFNOT                        R2 ; [+9]
       36 JUMPIFNOT                        R3 ; [+8]
       37 LOADK                            R5 K6 ["parameters.Attributes.%* or %*"]
       38 MOVE                             R7 R2
       39 MOVE                             R8 R3
       40 NAMECALL                         R5 R5 K7 ["format"]
       42 CALL                             R5 3 1
       43 MOVE                             R4 R5
       44 RETURN                           R4 1
       45 JUMPIFNOT                        R2 ; [+7]
       46 LOADK                            R5 K8 ["parameters.Attributes.%*"]
       47 MOVE                             R7 R2
       48 NAMECALL                         R5 R5 K7 ["format"]
       50 CALL                             R5 2 1
       51 MOVE                             R4 R5
       52 RETURN                           R4 1
       53 LOADK                            R4 K9 ["parameters.Attributes.Unknown"]
       54 RETURN                           R4 1

PROTO_5:
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
       16 DUPTABLE                         R5 K11 [{["moduleSource"] = "", ["objectName"] = "", ["extractedAttributes"], ["smartSizeDefaults"]}]
       17 NEWTABLE                         R6 0 0
       19 SETTABLEKS                       R6 R5 K9 ["extractedAttributes"]
       21 NEWTABLE                         R6 0 0
       23 SETTABLEKS                       R6 R5 K10 ["smartSizeDefaults"]
       25 LOADK                            R8 K12 ["local%s+(%w+)%s*=%s*GP%.model%(%s*\"([^\"]+)\"%s*,%s*nil%s*%)"]
       26 NAMECALL                         R6 R0 K13 ["match"]
       28 CALL                             R6 2 2
       29 MOVE                             R8 R7
       30 JUMPIF                           R8 ; [+3]
       31 MOVE                             R8 R3
       32 JUMPIF                           R8 ; [+1]
       33 LOADK                            R8 K14 ["ProceduralObject"]
       34 SETTABLEKS                       R8 R5 K8 ["objectName"]
       36 NEWTABLE                         R8 0 0
       38 NEWTABLE                         R9 0 0
       40 LOADK                            R12 K15 ["SO%.getAttribute(%b())"]
       41 NAMECALL                         R10 R0 K16 ["gmatch"]
       43 CALL                             R10 2 3
       44 FORGPREP                         R10
       45 LOADN                            R17 2
       46 LOADN                            R18 -2
       47 NAMECALL                         R15 R13 K17 ["sub"]
       49 CALL                             R15 3 1
       50 LOADK                            R18 K18 ["\"([^\"]+)\""]
       51 NAMECALL                         R16 R15 K13 ["match"]
       53 CALL                             R16 2 1
       54 LOADK                            R19 K19 ["\"[^\"]+\"%s*,%s*(.+)"]
       55 NAMECALL                         R17 R15 K13 ["match"]
       57 CALL                             R17 2 1
       58 JUMPIFNOT                        R16 ; [+138]
       59 GETTABLE                         R18 R9 R16
       60 JUMPIF                           R18 ; [+136]
       61 LOADB                            R18 1
       62 SETTABLE                         R18 R9 R16
       63 GETUPVAL                         R19 0
       64 GETTABLE                         R18 R19 R16
       65 JUMPIFNOT                        R18 ; [+18]
       66 GETUPVAL                         R18 1
       67 GETTABLEKS                       R18 R18 K20 ["FFlagDisableOldSmartSize"]
       69 JUMPIF                           R18 ; [+14]
       70 JUMPIFNOT                        R17 ; [+126]
       71 LOADK                            R21 K21 ["^%s*(.-)%s*$"]
       72 NAMECALL                         R19 R17 K13 ["match"]
       74 CALL                             R19 2 -1
       75 FASTCALL                         TONUMBER ; [+2]
       76 GETIMPORT                        R18 K23 [tonumber]
       78 CALL                             R18 -1 1
       79 JUMPIFNOT                        R18 ; [+117]
       80 GETTABLEKS                       R19 R5 K10 ["smartSizeDefaults"]
       82 SETTABLE                         R18 R19 R16
       83 JUMP                             ; [+113]
       84 GETUPVAL                         R19 2
       85 GETTABLE                         R18 R19 R16
       86 JUMPIFNOT                        R18 ; [+18]
       87 GETUPVAL                         R18 1
       88 GETTABLEKS                       R18 R18 K24 ["FFlagDisableNewSmartSize"]
       90 JUMPIF                           R18 ; [+14]
       91 JUMPIFNOT                        R17 ; [+105]
       92 LOADK                            R21 K21 ["^%s*(.-)%s*$"]
       93 NAMECALL                         R19 R17 K13 ["match"]
       95 CALL                             R19 2 -1
       96 FASTCALL                         TONUMBER ; [+2]
       97 GETIMPORT                        R18 K23 [tonumber]
       99 CALL                             R18 -1 1
      100 JUMPIFNOT                        R18 ; [+96]
      101 GETTABLEKS                       R19 R5 K10 ["smartSizeDefaults"]
      103 SETTABLE                         R18 R19 R16
      104 JUMP                             ; [+92]
      105 LOADK                            R18 K25 ["any"]
      106 JUMPIFNOT                        R17 ; [+5]
      107 LOADK                            R21 K21 ["^%s*(.-)%s*$"]
      108 NAMECALL                         R19 R17 K13 ["match"]
      110 CALL                             R19 2 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R19
      113 JUMPIFNOT                        R19 ; [+70]
      114 LOADK                            R22 K26 ["^Color3"]
      115 NAMECALL                         R20 R19 K13 ["match"]
      117 CALL                             R20 2 1
      118 JUMPIFNOT                        R20 ; [+2]
      119 LOADK                            R18 K27 ["Color3"]
      120 JUMP                             ; [+49]
      121 LOADK                            R22 K28 ["^Vector3"]
      122 NAMECALL                         R20 R19 K13 ["match"]
      124 CALL                             R20 2 1
      125 JUMPIFNOT                        R20 ; [+2]
      126 LOADK                            R18 K29 ["Vector3"]
      127 JUMP                             ; [+42]
      128 LOADK                            R22 K30 ["^CFrame"]
      129 NAMECALL                         R20 R19 K13 ["match"]
      131 CALL                             R20 2 1
      132 JUMPIFNOT                        R20 ; [+2]
      133 LOADK                            R18 K31 ["CFrame"]
      134 JUMP                             ; [+35]
      135 LOADK                            R22 K32 ["^%-?%d"]
      136 NAMECALL                         R20 R19 K13 ["match"]
      138 CALL                             R20 2 1
      139 JUMPIF                           R20 ; [+5]
      140 LOADK                            R22 K33 ["^math%."]
      141 NAMECALL                         R20 R19 K13 ["match"]
      143 CALL                             R20 2 1
      144 JUMPIFNOT                        R20 ; [+2]
      145 LOADK                            R18 K34 ["number"]
      146 JUMP                             ; [+23]
      147 LOADK                            R22 K35 ["^\""]
      148 NAMECALL                         R20 R19 K13 ["match"]
      150 CALL                             R20 2 1
      151 JUMPIFNOT                        R20 ; [+2]
      152 LOADK                            R18 K36 ["string"]
      153 JUMP                             ; [+16]
      154 JUMPIFEQKS                       R19 K37 ["true"] ; [+3]
      156 JUMPIFNOTEQKS                    R19 K38 ["false"] ; [+3]
      158 LOADK                            R18 K39 ["boolean"]
      159 JUMP                             ; [+10]
      160 GETIMPORT                        R20 K41 [warn]
      162 LOADK                            R22 K42 ["[PrimitiveGen] Unknown luau type from value: %*, defaulting %* to any"]
      163 MOVE                             R24 R19
      164 MOVE                             R25 R16
      165 NAMECALL                         R22 R22 K5 ["format"]
      167 CALL                             R22 3 1
      168 MOVE                             R21 R22
      169 CALL                             R20 1 0
      170 GETTABLEKS                       R21 R5 K9 ["extractedAttributes"]
      172 DUPTABLE                         R22 K46 [{"name", "defaultValueStr", "luauType"}]
      173 SETTABLEKS                       R16 R22 K43 ["name"]
      175 SETTABLEKS                       R19 R22 K44 ["defaultValueStr"]
      177 SETTABLEKS                       R18 R22 K45 ["luauType"]
      179 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      181 GETIMPORT                        R20 K48 [table.insert]
      183 CALL                             R20 2 0
      184 LOADK                            R23 K49 ["\t\t%*: %*?,"]
      185 MOVE                             R25 R16
      186 MOVE                             R26 R18
      187 NAMECALL                         R23 R23 K5 ["format"]
      189 CALL                             R23 3 1
      190 MOVE                             R22 R23
      191 FASTCALL2                        TABLE_INSERT R8 R22 ; [+4]
      193 MOVE                             R21 R8
      194 GETIMPORT                        R20 K48 [table.insert]
      196 CALL                             R20 2 0
      197 FORGLOOP                         R10 1 ; [-153]
      199 LOADK                            R12 K15 ["SO%.getAttribute(%b())"]
      200 DUPCLOSURE                       R13 K50 [PROTO_4]
      201 CAPTURE                          UPVAL U1
      202 CAPTURE                          UPVAL U2
      203 CAPTURE                          UPVAL U0
      204 NAMECALL                         R10 R0 K51 ["gsub"]
      206 CALL                             R10 3 1
      207 GETIMPORT                        R11 K3 [table.concat]
      209 MOVE                             R12 R8
      210 LOADK                            R13 K4 ["\n"]
      211 CALL                             R11 2 1
      212 LOADK                            R13 K52 ["type Parameters = {\n\tSize: Vector3,\n\tAttributes: {\n%*\n\t},\n}"]
      213 MOVE                             R15 R11
      214 NAMECALL                         R13 R13 K5 ["format"]
      216 CALL                             R13 2 1
      217 MOVE                             R12 R13
      218 JUMPIFNOT                        R6 ; [+32]
      219 GETIMPORT                        R13 K3 [table.concat]
      221 NEWTABLE                         R14 0 3
      223 LOADK                            R15 K53 ["-- Fix orientation of the model"]
      224 LOADK                            R17 K54 ["%*.WorldPivot = CFrame.identity"]
      225 MOVE                             R19 R6
      226 NAMECALL                         R17 R17 K5 ["format"]
      228 CALL                             R17 2 1
      229 MOVE                             R16 R17
      230 LOADK                            R17 K6 [""]
      231 SETLIST                          R14 R15 3 [1]
      233 LOADK                            R15 K4 ["\n"]
      234 CALL                             R13 2 1
      235 LOADK                            R17 K55 ["(local%%s+%*%%s*=%%s*GP%%.model%%b())"]
      236 MOVE                             R19 R6
      237 NAMECALL                         R17 R17 K5 ["format"]
      239 CALL                             R17 2 1
      240 MOVE                             R16 R17
      241 LOADK                            R18 K56 ["%%1%*"]
      242 MOVE                             R20 R13
      243 NAMECALL                         R18 R18 K5 ["format"]
      245 CALL                             R18 2 1
      246 MOVE                             R17 R18
      247 NAMECALL                         R14 R10 K51 ["gsub"]
      249 CALL                             R14 3 1
      250 MOVE                             R10 R14
      251 LOADK                            R15 K57 ["%s*return%s+[%w_]+%s*$"]
      252 LOADK                            R16 K6 [""]
      253 NAMECALL                         R13 R10 K51 ["gsub"]
      255 CALL                             R13 3 1
      256 MOVE                             R10 R13
      257 JUMPIFNOT                        R6 ; [+8]
      258 MOVE                             R13 R10
      259 LOADK                            R15 K58 ["\n\n%*.Parent = targetContainer"]
      260 MOVE                             R17 R6
      261 NAMECALL                         R15 R15 K5 ["format"]
      263 CALL                             R15 2 1
      264 MOVE                             R14 R15
      265 CONCAT                           R10 R13 R14
      266 NEWTABLE                         R13 0 0
      268 GETIMPORT                        R14 K60 [string.split]
      270 MOVE                             R15 R10
      271 LOADK                            R16 K4 ["\n"]
      272 CALL                             R14 2 3
      273 FORGPREP                         R14
      274 LOADK                            R22 K61 ["\t%*"]
      275 MOVE                             R24 R18
      276 NAMECALL                         R22 R22 K5 ["format"]
      278 CALL                             R22 2 1
      279 MOVE                             R21 R22
      280 FASTCALL2                        TABLE_INSERT R13 R21 ; [+4]
      282 MOVE                             R20 R13
      283 GETIMPORT                        R19 K48 [table.insert]
      285 CALL                             R19 2 0
      286 FORGLOOP                         R14 2 ; [-13]
      288 GETIMPORT                        R14 K3 [table.concat]
      290 MOVE                             R15 R13
      291 LOADK                            R16 K4 ["\n"]
      292 CALL                             R14 2 1
      293 GETIMPORT                        R15 K3 [table.concat]
      295 NEWTABLE                         R16 0 16
      297 LOADK                            R17 K62 ["--!strict"]
      298 LOADK                            R19 K63 ["-- generationId: %*"]
      299 ORK                              R21 R2 K64 ["unknown"]
      300 NAMECALL                         R19 R19 K5 ["format"]
      302 CALL                             R19 2 1
      303 MOVE                             R18 R19
      304 MOVE                             R19 R4
      305 LOADK                            R21 K65 ["local %* = {}"]
      306 GETTABLEKS                       R23 R5 K8 ["objectName"]
      308 NAMECALL                         R21 R21 K5 ["format"]
      310 CALL                             R21 2 1
      311 MOVE                             R20 R21
      312 LOADK                            R21 K6 [""]
      313 MOVE                             R22 R12
      314 LOADK                            R23 K66 ["local startTime = 0\nlocal timerThread : thread = task.spawn(function()\nwhile true do\n\tif not script:IsDescendantOf(game) then\n\t\tstartTime = 0\n\t\treturn\n\tend\n\tif startTime > 0 then\n\t\tlocal elapsed = tick() - startTime\n\t\tprint(\"[ProceduralModel] \" .. script:GetFullName() .. \" rendering... \" .. string.format(\"%.0f\", elapsed) .. \" seconds\")\n\tend\n\ttask.wait(3)\nend\nend)\nscript.Destroying:Connect(function()\n\ttask.cancel(timerThread)\nend)\n"]
      315 LOADK                            R25 K67 ["%*.OnGenerate = function(parameters: Parameters, targetContainer: Instance)"]
      316 GETTABLEKS                       R27 R5 K8 ["objectName"]
      318 NAMECALL                         R25 R25 K5 ["format"]
      320 CALL                             R25 2 1
      321 MOVE                             R24 R25
      322 LOADK                            R25 K68 ["\t-- Timer setup\n\tstartTime = tick()\n"]
      323 MOVE                             R26 R14
      324 LOADK                            R27 K69 ["\t-- reposition\n\tfor _, part in targetContainer:GetDescendants() do\n\t\tif part:IsA(\"BasePart\") then\n\t\t\tpart.CFrame -= Vector3.yAxis * parameters.Size.Y / 2\n\t\tend\n\tend\n\tfor _, model in targetContainer:GetDescendants() do\n\t\tif model:IsA(\"Model\") then\n\t\t\tmodel.WorldPivot -= Vector3.yAxis * parameters.Size.Y / 2\n\t\tend\n\tend\n"]
      325 LOADK                            R28 K70 ["\t-- Stop timer when generation completes\n\tlocal timeElapsed = tick() - startTime\n\tstartTime = 0\n\tif timeElapsed > 3 and script:IsDescendantOf(game) then\n\t\tprint(\"[ProceduralModel] \" .. script:GetFullName() .. \" rendering completed\")\n\tend\n"]
      326 LOADK                            R29 K71 ["end"]
      327 LOADK                            R30 K6 [""]
      328 LOADK                            R32 K72 ["return %*"]
      329 GETTABLEKS                       R34 R5 K8 ["objectName"]
      331 NAMECALL                         R32 R32 K5 ["format"]
      333 CALL                             R32 2 1
      334 MOVE                             R31 R32
      335 LOADK                            R32 K6 [""]
      336 SETLIST                          R16 R17 16 [1]
      338 LOADK                            R17 K4 ["\n"]
      339 CALL                             R15 2 1
      340 SETTABLEKS                       R15 R5 K7 ["moduleSource"]
      342 RETURN                           R5 1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FStringProceduralScriptCapabilities"]
        3 LOADK                            R4 K1 [","]
        4 NAMECALL                         R2 R1 K2 ["split"]
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K5 [table.create]
        9 LENGTH                           R4 R2
       10 CALL                             R3 1 1
       11 MOVE                             R4 R2
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETIMPORT                        R9 K8 [Enum.SecurityCapability]
       17 MOVE                             R11 R8
       18 NAMECALL                         R9 R9 K9 ["FromName"]
       20 CALL                             R9 2 1
       21 JUMPIFNOT                        R9 ; [+8]
       22 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       24 MOVE                             R11 R3
       25 MOVE                             R12 R9
       26 GETIMPORT                        R10 K11 [table.insert]
       28 CALL                             R10 2 0
       29 JUMP                             ; [+9]
       30 GETIMPORT                        R10 K13 [warn]
       32 LOADK                            R12 K14 ["[PrimitiveGen] Unknown SecurityCapability: %*"]
       33 MOVE                             R14 R8
       34 NAMECALL                         R12 R12 K15 ["format"]
       36 CALL                             R12 2 1
       37 MOVE                             R11 R12
       38 CALL                             R10 1 0
       39 FORGLOOP                         R4 2 ; [-25]
       41 GETIMPORT                        R4 K18 [SecurityCapabilities.new]
       43 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
       44 MOVE                             R6 R3
       45 GETIMPORT                        R5 K20 [table.unpack]
       47 CALL                             R5 1 -1
       48 CALL                             R4 -1 1
       49 SETTABLEKS                       R4 R0 K21 ["Capabilities"]
       51 LOADB                            R5 1
       52 SETTABLEKS                       R5 R0 K22 ["Sandboxed"]
       54 RETURN                           R0 0

PROTO_8:
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
       17 GETTABLEKS                       R6 R6 K12 ["FFlagDisableOldSmartSize"]
       19 JUMPIF                           R6 ; [+30]
       20 GETTABLEKS                       R6 R5 K13 ["smartWidth"]
       22 JUMPIF                           R6 ; [+6]
       23 GETTABLEKS                       R6 R5 K14 ["smartHeight"]
       25 JUMPIF                           R6 ; [+3]
       26 GETTABLEKS                       R6 R5 K15 ["smartDepth"]
       28 JUMPIFNOT                        R6 ; [+21]
       29 GETTABLEKS                       R7 R5 K13 ["smartWidth"]
       31 JUMPIF                           R7 ; [+2]
       32 GETTABLEKS                       R7 R4 K16 ["X"]
       34 GETTABLEKS                       R8 R5 K14 ["smartHeight"]
       36 JUMPIF                           R8 ; [+2]
       37 GETTABLEKS                       R8 R4 K17 ["Y"]
       39 GETTABLEKS                       R9 R5 K15 ["smartDepth"]
       41 JUMPIF                           R9 ; [+2]
       42 GETTABLEKS                       R9 R4 K18 ["Z"]
       44 FASTCALL                         VECTOR ; [+2]
       45 GETIMPORT                        R6 K20 [Vector3.new]
       47 CALL                             R6 3 1
       48 SETTABLEKS                       R6 R3 K10 ["Size"]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K21 ["FFlagDisableNewSmartSize"]
       53 JUMPIF                           R6 ; [+30]
       54 GETTABLEKS                       R6 R5 K22 ["SmartWidth"]
       56 JUMPIF                           R6 ; [+6]
       57 GETTABLEKS                       R6 R5 K23 ["SmartHeight"]
       59 JUMPIF                           R6 ; [+3]
       60 GETTABLEKS                       R6 R5 K24 ["SmartDepth"]
       62 JUMPIFNOT                        R6 ; [+21]
       63 GETTABLEKS                       R7 R5 K22 ["SmartWidth"]
       65 JUMPIF                           R7 ; [+2]
       66 GETTABLEKS                       R7 R4 K16 ["X"]
       68 GETTABLEKS                       R8 R5 K23 ["SmartHeight"]
       70 JUMPIF                           R8 ; [+2]
       71 GETTABLEKS                       R8 R4 K17 ["Y"]
       73 GETTABLEKS                       R9 R5 K24 ["SmartDepth"]
       75 JUMPIF                           R9 ; [+2]
       76 GETTABLEKS                       R9 R4 K18 ["Z"]
       78 FASTCALL                         VECTOR ; [+2]
       79 GETIMPORT                        R6 K20 [Vector3.new]
       81 CALL                             R6 3 1
       82 SETTABLEKS                       R6 R3 K10 ["Size"]
       84 GETTABLEKS                       R6 R2 K25 ["extractedAttributes"]
       86 LOADNIL                          R7
       87 LOADNIL                          R8
       88 FORGPREP                         R6
       89 GETUPVAL                         R11 1
       90 GETTABLEKS                       R12 R10 K26 ["defaultValueStr"]
       92 GETTABLEKS                       R13 R10 K27 ["luauType"]
       94 CALL                             R11 2 1
       95 JUMPIFEQKNIL                     R11 ; [+7]
       97 GETTABLEKS                       R14 R10 K28 ["name"]
       99 MOVE                             R15 R11
      100 NAMECALL                         R12 R3 K29 ["SetAttribute"]
      102 CALL                             R12 3 0
      103 FORGLOOP                         R6 2 ; [-15]
      105 GETIMPORT                        R6 K2 [Instance.new]
      107 LOADK                            R7 K30 ["ModuleScript"]
      108 CALL                             R6 1 1
      109 LOADK                            R7 K31 ["ProceduralGeneration"]
      110 SETTABLEKS                       R7 R6 K5 ["Name"]
      112 JUMPIFNOT                        R1 ; [+9]
      113 LENGTH                           R7 R1
      114 LOADN                            R8 0
      115 JUMPIFNOTLT                      R8 R7 ; [+6]
      117 GETUPVAL                         R7 2
      118 MOVE                             R8 R0
      119 MOVE                             R9 R6
      120 MOVE                             R10 R1
      121 CALL                             R7 3 0
      122 SETTABLEKS                       R3 R6 K32 ["Parent"]
      124 GETUPVAL                         R7 3
      125 MOVE                             R8 R6
      126 CALL                             R7 1 0
      127 GETTABLEKS                       R7 R0 K33 ["tools"]
      129 GETTABLEKS                       R7 R7 K34 ["multiEdit"]
      131 GETTABLEKS                       R7 R7 K35 ["applyScriptSourceDirectly"]
      133 MOVE                             R8 R6
      134 GETTABLEKS                       R9 R2 K36 ["moduleSource"]
      136 CALL                             R7 2 0
      137 SETTABLEKS                       R6 R3 K37 ["Generator"]
      139 GETIMPORT                        R7 K39 [workspace]
      141 SETTABLEKS                       R7 R3 K32 ["Parent"]
      143 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setPositionOnGround"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["Name"]
        9 SETUPVAL                         R0 2
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["GenerationError"]
       13 JUMPIFEQKS                       R0 K3 [""] ; [+17]
       15 GETIMPORT                        R0 K5 [warn]
       17 LOADK                            R2 K6 ["[PrimitiveGen] \"Model %*\" generated with error: \"%*\". GenerationId: %*"]
       18 GETUPVAL                         R4 1
       19 NAMECALL                         R4 R4 K7 ["GetFullName"]
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K2 ["GenerationError"]
       25 GETUPVAL                         R6 3
       26 NAMECALL                         R2 R2 K8 ["format"]
       28 CALL                             R2 4 1
       29 MOVE                             R1 R2
       30 CALL                             R0 1 0
       31 GETIMPORT                        R0 K11 [coroutine.status]
       33 GETUPVAL                         R1 4
       34 CALL                             R0 1 1
       35 JUMPIFNOTEQKS                    R0 K12 ["suspended"] ; [+8]
       37 GETIMPORT                        R0 K14 [coroutine.resume]
       39 GETUPVAL                         R1 4
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R2 R2 K1 ["Name"]
       43 CALL                             R0 2 0
       44 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 NAMECALL                         R2 R0 K2 ["GetChildren"]
        7 CALL                             R2 1 1
        8 GETTABLEN                        R1 R2 1
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETUPVAL                         R2 0
       11 CALL                             R2 0 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R0 K3 ["ChildAdded"]
       15 GETUPVAL                         R4 0
       16 NAMECALL                         R2 R2 K4 ["Once"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R3 K0 ["GeneratedFolder"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+23]
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
       18 JUMPIFNOT                        R1 ; [+3]
       19 GETUPVAL                         R2 1
       20 CALL                             R2 0 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R2 R0 K6 ["ChildAdded"]
       24 GETUPVAL                         R4 1
       25 NAMECALL                         R2 R2 K7 ["Once"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_12:
        0 LOADK                            R2 K0 [""]
        1 GETIMPORT                        R3 K3 [coroutine.running]
        3 CALL                             R3 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          REF R2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R3
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          VAL R4
       12 LOADK                            R8 K4 ["GeneratedFolder"]
       13 NAMECALL                         R6 R0 K5 ["FindFirstChildWhichIsA"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+20]
       17 LOADK                            R9 K6 ["Model"]
       18 NAMECALL                         R7 R6 K7 ["FindFirstChildOfClass"]
       20 CALL                             R7 2 1
       21 JUMPIF                           R7 ; [+4]
       22 NAMECALL                         R8 R6 K8 ["GetChildren"]
       24 CALL                             R8 1 1
       25 GETTABLEN                        R7 R8 1
       26 JUMPIFNOT                        R7 ; [+3]
       27 MOVE                             R8 R4
       28 CALL                             R8 0 0
       29 JUMP                             ; [+18]
       30 GETTABLEKS                       R8 R6 K9 ["ChildAdded"]
       32 MOVE                             R10 R4
       33 NAMECALL                         R8 R8 K10 ["Once"]
       35 CALL                             R8 2 0
       36 JUMP                             ; [+11]
       37 LOADNIL                          R7
       38 GETTABLEKS                       R8 R0 K9 ["ChildAdded"]
       40 NEWCLOSURE                       R10 P2
       41 CAPTURE                          REF R7
       42 CAPTURE                          VAL R4
       43 NAMECALL                         R8 R8 K11 ["Connect"]
       45 CALL                             R8 2 1
       46 MOVE                             R7 R8
       47 CLOSEUPVALS                      R7
       48 JUMPIFEQKS                       R2 K0 [""] ; [+3]
       50 CLOSEUPVALS                      R2
       51 RETURN                           R2 1
       52 GETIMPORT                        R7 K13 [coroutine.yield]
       54 CALL                             R7 0 1
       55 MOVE                             R2 R7
       56 CLOSEUPVALS                      R2
       57 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
       11 GETTABLEKS                       R0 R0 K2 ["logGen3DInstanceDeleted"]
       13 DUPTABLE                         R1 K7 [{["generationId"], ["modelFlow"] = "procedural", ["secondsSinceInsertion"]}]
       14 GETUPVAL                         R2 2
       15 SETTABLEKS                       R2 R1 K3 ["generationId"]
       17 GETIMPORT                        R3 K10 [os.clock]
       19 CALL                             R3 0 1
       20 GETUPVAL                         R4 3
       21 SUB                              R2 R3 R4
       22 SETTABLEKS                       R2 R1 K6 ["secondsSinceInsertion"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["dependencies"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["code"]
        9 MOVE                             R3 R0
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["generationId"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K3 ["name"]
       16 CALL                             R1 4 1
       17 GETUPVAL                         R2 3
       18 GETUPVAL                         R3 4
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K0 ["dependencies"]
       22 MOVE                             R5 R1
       23 CALL                             R2 3 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K2 ["generationId"]
       27 JUMPIFNOT                        R4 ; [+6]
       28 GETUPVAL                         R3 5
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K2 ["generationId"]
       32 CALL                             R3 1 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R3
       35 JUMPIFNOT                        R3 ; [+5]
       36 MOVE                             R6 R3
       37 NAMECALL                         R4 R2 K4 ["AddTag"]
       39 CALL                             R4 2 0
       40 SETUPVAL                         R3 6
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K2 ["generationId"]
       44 JUMPIFNOT                        R4 ; [+9]
       45 GETUPVAL                         R4 7
       46 GETTABLEKS                       R4 R4 K5 ["markGeneratedAsset"]
       48 MOVE                             R5 R2
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K2 ["generationId"]
       52 LOADK                            R7 K6 ["procedural"]
       53 CALL                             R4 3 0
       54 GETUPVAL                         R4 8
       55 GETTABLEKS                       R4 R4 K7 ["FFlagAssistantGen3DTelemetryV2"]
       57 JUMPIFNOT                        R4 ; [+23]
       58 GETUPVAL                         R4 1
       59 GETTABLEKS                       R4 R4 K2 ["generationId"]
       61 JUMPIFNOT                        R4 ; [+19]
       62 GETUPVAL                         R4 1
       63 GETTABLEKS                       R4 R4 K2 ["generationId"]
       65 GETIMPORT                        R5 K10 [os.clock]
       67 CALL                             R5 0 1
       68 LOADNIL                          R6
       69 GETTABLEKS                       R7 R2 K11 ["Destroying"]
       71 NEWCLOSURE                       R9 P0
       72 CAPTURE                          REF R6
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 NAMECALL                         R7 R7 K12 ["Connect"]
       78 CALL                             R7 2 1
       79 MOVE                             R6 R7
       80 CLOSEUPVALS                      R6
       81 GETUPVAL                         R4 9
       82 MOVE                             R5 R2
       83 GETUPVAL                         R6 10
       84 CALL                             R4 2 1
       85 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADB                            R4 0
        6 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R1 K2 ["startRecording"]
       11 MOVE                             R4 R2
       12 LOADK                            R5 K3 ["Assistant Primitive Generation"]
       13 CALL                             R3 2 0
       14 LOADNIL                          R3
       15 GETIMPORT                        R4 K5 [pcall]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          REF R3
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          VAL R2
       29 CALL                             R4 1 2
       30 GETTABLEKS                       R6 R1 K6 ["endRecording"]
       32 MOVE                             R7 R2
       33 CALL                             R6 1 0
       34 JUMPIF                           R4 ; [+5]
       35 DUPTABLE                         R6 K10 [{["success"] = False, ["error"]}]
       36 SETTABLEKS                       R5 R6 K9 ["error"]
       38 CLOSEUPVALS                      R3
       39 RETURN                           R6 1
       40 DUPTABLE                         R6 K14 [{["success"] = True, ["resultName"], ["tag"]}]
       41 SETTABLEKS                       R5 R6 K12 ["resultName"]
       43 SETTABLEKS                       R3 R6 K13 ["tag"]
       45 CLOSEUPVALS                      R3
       46 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantHarness"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETIMPORT                        R4 K1 [script]
       24 GETTABLEKS                       R4 R4 K10 ["Parent"]
       26 GETTABLEKS                       R4 R4 K12 ["Backend"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K13 ["Guest"]
       33 GETTABLEKS                       R5 R5 K14 ["Environment"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K15 ["Flags"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K16 ["Util"]
       45 GETTABLEKS                       R7 R7 K17 ["Gen3dUtils"]
       47 GETTABLEKS                       R7 R7 K18 ["Gen3DAssetTracking"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K16 ["Util"]
       54 GETTABLEKS                       R8 R8 K19 ["PrimitiveGen"]
       56 GETTABLEKS                       R8 R8 K20 ["PrimitiveGenTypes"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K16 ["Util"]
       63 GETTABLEKS                       R9 R9 K21 ["ToolUtils"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R2 K22 ["Engine"]
       68 GETTABLEKS                       R9 R9 K23 ["TaskCollector"]
       70 GETTABLEKS                       R10 R3 K24 ["raiseError"]
       72 GETTABLEKS                       R11 R7 K25 ["getLinkTag"]
       74 DUPTABLE                         R12 K32 [{["smartWidth"] = "parameters.Size.X", ["smartHeight"] = "parameters.Size.Y", ["smartDepth"] = "parameters.Size.Z"}]
       75 DUPTABLE                         R13 K36 [{["SmartWidth"] = "parameters.Size.X", ["SmartHeight"] = "parameters.Size.Y", ["SmartDepth"] = "parameters.Size.Z"}]
       76 DUPCLOSURE                       R14 K37 [PROTO_0]
       77 DUPCLOSURE                       R15 K38 [PROTO_1]
       78 DUPCLOSURE                       R16 K39 [PROTO_3]
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R15
       81 CAPTURE                          VAL R10
       82 DUPCLOSURE                       R17 K40 [PROTO_5]
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R13
       86 DUPCLOSURE                       R18 K41 [PROTO_6]
       87 DUPCLOSURE                       R19 K42 [PROTO_7]
       88 CAPTURE                          VAL R5
       89 DUPCLOSURE                       R20 K43 [PROTO_8]
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R19
       94 DUPCLOSURE                       R21 K44 [PROTO_12]
       95 CAPTURE                          VAL R8
       96 DUPCLOSURE                       R22 K45 [PROTO_15]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R18
      100 CAPTURE                          VAL R17
      101 CAPTURE                          VAL R20
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R21
      106 DUPTABLE                         R23 K47 [{"addWorkspaceModel"}]
      107 SETTABLEKS                       R22 R23 K46 ["addWorkspaceModel"]
      109 RETURN                           R23 1
