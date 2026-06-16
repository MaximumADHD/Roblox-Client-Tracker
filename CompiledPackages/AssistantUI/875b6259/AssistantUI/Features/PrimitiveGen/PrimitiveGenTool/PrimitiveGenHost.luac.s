PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getUniqueTag"]
        6 LOADK                            R2 K1 ["Prim"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 LOADK                            R2 K2 ["PrimitiveGen_%*"]
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K3 ["format"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1

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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETTABLEKS                       R3 R3 K0 ["moduleName"]
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
       64 JUMPIFNOT                        R16 ; [+136]
       65 GETTABLE                         R18 R9 R16
       66 JUMPIF                           R18 ; [+134]
       67 LOADB                            R18 1
       68 SETTABLE                         R18 R9 R16
       69 GETUPVAL                         R19 0
       70 GETTABLE                         R18 R19 R16
       71 JUMPIFNOT                        R18 ; [+17]
       72 GETUPVAL                         R18 1
       73 CALL                             R18 0 1
       74 JUMPIF                           R18 ; [+14]
       75 JUMPIFNOT                        R17 ; [+125]
       76 LOADK                            R21 K20 ["^%s*(.-)%s*$"]
       77 NAMECALL                         R19 R17 K13 ["match"]
       79 CALL                             R19 2 -1
       80 FASTCALL                         TONUMBER ; [+2]
       81 GETIMPORT                        R18 K22 [tonumber]
       83 CALL                             R18 -1 1
       84 JUMPIFNOT                        R18 ; [+116]
       85 GETTABLEKS                       R19 R5 K10 ["smartSizeDefaults"]
       87 SETTABLE                         R18 R19 R16
       88 JUMP                             ; [+112]
       89 GETUPVAL                         R19 2
       90 GETTABLE                         R18 R19 R16
       91 JUMPIFNOT                        R18 ; [+17]
       92 GETUPVAL                         R18 3
       93 CALL                             R18 0 1
       94 JUMPIF                           R18 ; [+14]
       95 JUMPIFNOT                        R17 ; [+105]
       96 LOADK                            R21 K20 ["^%s*(.-)%s*$"]
       97 NAMECALL                         R19 R17 K13 ["match"]
       99 CALL                             R19 2 -1
      100 FASTCALL                         TONUMBER ; [+2]
      101 GETIMPORT                        R18 K22 [tonumber]
      103 CALL                             R18 -1 1
      104 JUMPIFNOT                        R18 ; [+96]
      105 GETTABLEKS                       R19 R5 K10 ["smartSizeDefaults"]
      107 SETTABLE                         R18 R19 R16
      108 JUMP                             ; [+92]
      109 LOADK                            R18 K23 ["any"]
      110 JUMPIFNOT                        R17 ; [+5]
      111 LOADK                            R21 K20 ["^%s*(.-)%s*$"]
      112 NAMECALL                         R19 R17 K13 ["match"]
      114 CALL                             R19 2 1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R19
      117 JUMPIFNOT                        R19 ; [+70]
      118 LOADK                            R22 K24 ["^Color3"]
      119 NAMECALL                         R20 R19 K13 ["match"]
      121 CALL                             R20 2 1
      122 JUMPIFNOT                        R20 ; [+2]
      123 LOADK                            R18 K25 ["Color3"]
      124 JUMP                             ; [+49]
      125 LOADK                            R22 K26 ["^Vector3"]
      126 NAMECALL                         R20 R19 K13 ["match"]
      128 CALL                             R20 2 1
      129 JUMPIFNOT                        R20 ; [+2]
      130 LOADK                            R18 K27 ["Vector3"]
      131 JUMP                             ; [+42]
      132 LOADK                            R22 K28 ["^CFrame"]
      133 NAMECALL                         R20 R19 K13 ["match"]
      135 CALL                             R20 2 1
      136 JUMPIFNOT                        R20 ; [+2]
      137 LOADK                            R18 K29 ["CFrame"]
      138 JUMP                             ; [+35]
      139 LOADK                            R22 K30 ["^%-?%d"]
      140 NAMECALL                         R20 R19 K13 ["match"]
      142 CALL                             R20 2 1
      143 JUMPIF                           R20 ; [+5]
      144 LOADK                            R22 K31 ["^math%."]
      145 NAMECALL                         R20 R19 K13 ["match"]
      147 CALL                             R20 2 1
      148 JUMPIFNOT                        R20 ; [+2]
      149 LOADK                            R18 K32 ["number"]
      150 JUMP                             ; [+23]
      151 LOADK                            R22 K33 ["^\""]
      152 NAMECALL                         R20 R19 K13 ["match"]
      154 CALL                             R20 2 1
      155 JUMPIFNOT                        R20 ; [+2]
      156 LOADK                            R18 K34 ["string"]
      157 JUMP                             ; [+16]
      158 JUMPIFEQKS                       R19 K35 ["true"] ; [+3]
      160 JUMPIFNOTEQKS                    R19 K36 ["false"] ; [+3]
      162 LOADK                            R18 K37 ["boolean"]
      163 JUMP                             ; [+10]
      164 GETIMPORT                        R20 K39 [warn]
      166 LOADK                            R22 K40 ["[PrimitiveGen] Unknown luau type from value: %*, defaulting %* to any"]
      167 MOVE                             R24 R19
      168 MOVE                             R25 R16
      169 NAMECALL                         R22 R22 K5 ["format"]
      171 CALL                             R22 3 1
      172 MOVE                             R21 R22
      173 CALL                             R20 1 0
      174 GETTABLEKS                       R21 R5 K9 ["extractedAttributes"]
      176 DUPTABLE                         R22 K44 [{"name", "defaultValueStr", "luauType"}]
      177 SETTABLEKS                       R16 R22 K41 ["name"]
      179 SETTABLEKS                       R19 R22 K42 ["defaultValueStr"]
      181 SETTABLEKS                       R18 R22 K43 ["luauType"]
      183 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      185 GETIMPORT                        R20 K46 [table.insert]
      187 CALL                             R20 2 0
      188 LOADK                            R23 K47 ["\t\t%*: %*?,"]
      189 MOVE                             R25 R16
      190 MOVE                             R26 R18
      191 NAMECALL                         R23 R23 K5 ["format"]
      193 CALL                             R23 3 1
      194 MOVE                             R22 R23
      195 FASTCALL2                        TABLE_INSERT R8 R22 ; [+4]
      197 MOVE                             R21 R8
      198 GETIMPORT                        R20 K46 [table.insert]
      200 CALL                             R20 2 0
      201 FORGLOOP                         R10 1 ; [-151]
      203 LOADK                            R12 K15 ["SO%.getAttribute(%b())"]
      204 DUPCLOSURE                       R13 K48 [PROTO_6]
      205 CAPTURE                          UPVAL U3
      206 CAPTURE                          UPVAL U2
      207 CAPTURE                          UPVAL U1
      208 CAPTURE                          UPVAL U0
      209 NAMECALL                         R10 R0 K49 ["gsub"]
      211 CALL                             R10 3 1
      212 GETIMPORT                        R11 K3 [table.concat]
      214 MOVE                             R12 R8
      215 LOADK                            R13 K4 ["\n"]
      216 CALL                             R11 2 1
      217 LOADK                            R13 K50 ["type Parameters = {\n\tSize: Vector3,\n\tAttributes: {\n%*\n\t},\n}"]
      218 MOVE                             R15 R11
      219 NAMECALL                         R13 R13 K5 ["format"]
      221 CALL                             R13 2 1
      222 MOVE                             R12 R13
      223 JUMPIFNOT                        R6 ; [+32]
      224 GETIMPORT                        R13 K3 [table.concat]
      226 NEWTABLE                         R14 0 3
      228 LOADK                            R15 K51 ["-- Fix orientation of the model"]
      229 LOADK                            R17 K52 ["%*.WorldPivot = CFrame.identity"]
      230 MOVE                             R19 R6
      231 NAMECALL                         R17 R17 K5 ["format"]
      233 CALL                             R17 2 1
      234 MOVE                             R16 R17
      235 LOADK                            R17 K6 [""]
      236 SETLIST                          R14 R15 3 [1]
      238 LOADK                            R15 K4 ["\n"]
      239 CALL                             R13 2 1
      240 LOADK                            R17 K53 ["(local%%s+%*%%s*=%%s*GP%%.model%%b())"]
      241 MOVE                             R19 R6
      242 NAMECALL                         R17 R17 K5 ["format"]
      244 CALL                             R17 2 1
      245 MOVE                             R16 R17
      246 LOADK                            R18 K54 ["%%1%*"]
      247 MOVE                             R20 R13
      248 NAMECALL                         R18 R18 K5 ["format"]
      250 CALL                             R18 2 1
      251 MOVE                             R17 R18
      252 NAMECALL                         R14 R10 K49 ["gsub"]
      254 CALL                             R14 3 1
      255 MOVE                             R10 R14
      256 LOADK                            R15 K55 ["%s*return%s+[%w_]+%s*$"]
      257 LOADK                            R16 K6 [""]
      258 NAMECALL                         R13 R10 K49 ["gsub"]
      260 CALL                             R13 3 1
      261 MOVE                             R10 R13
      262 JUMPIFNOT                        R6 ; [+8]
      263 MOVE                             R13 R10
      264 LOADK                            R15 K56 ["\n\n%*.Parent = targetContainer"]
      265 MOVE                             R17 R6
      266 NAMECALL                         R15 R15 K5 ["format"]
      268 CALL                             R15 2 1
      269 MOVE                             R14 R15
      270 CONCAT                           R10 R13 R14
      271 NEWTABLE                         R13 0 0
      273 GETIMPORT                        R14 K58 [string.split]
      275 MOVE                             R15 R10
      276 LOADK                            R16 K4 ["\n"]
      277 CALL                             R14 2 3
      278 FORGPREP                         R14
      279 LOADK                            R22 K59 ["\t%*"]
      280 MOVE                             R24 R18
      281 NAMECALL                         R22 R22 K5 ["format"]
      283 CALL                             R22 2 1
      284 MOVE                             R21 R22
      285 FASTCALL2                        TABLE_INSERT R13 R21 ; [+4]
      287 MOVE                             R20 R13
      288 GETIMPORT                        R19 K46 [table.insert]
      290 CALL                             R19 2 0
      291 FORGLOOP                         R14 2 ; [-13]
      293 GETIMPORT                        R14 K3 [table.concat]
      295 MOVE                             R15 R13
      296 LOADK                            R16 K4 ["\n"]
      297 CALL                             R14 2 1
      298 GETIMPORT                        R15 K3 [table.concat]
      300 NEWTABLE                         R16 0 16
      302 LOADK                            R17 K60 ["--!strict"]
      303 LOADK                            R19 K61 ["-- generationId: %*"]
      304 ORK                              R21 R2 K62 ["unknown"]
      305 NAMECALL                         R19 R19 K5 ["format"]
      307 CALL                             R19 2 1
      308 MOVE                             R18 R19
      309 MOVE                             R19 R4
      310 LOADK                            R21 K63 ["local %* = {}"]
      311 GETTABLEKS                       R23 R5 K8 ["objectName"]
      313 NAMECALL                         R21 R21 K5 ["format"]
      315 CALL                             R21 2 1
      316 MOVE                             R20 R21
      317 LOADK                            R21 K6 [""]
      318 MOVE                             R22 R12
      319 LOADK                            R23 K64 ["local startTime = 0\nlocal timerThread : thread = task.spawn(function()\nwhile true do\n\tif not script:IsDescendantOf(game) then\n\t\tstartTime = 0\n\t\treturn\n\tend\n\tif startTime > 0 then\n\t\tlocal elapsed = tick() - startTime\n\t\tprint(\"[ProceduralModel] \" .. script:GetFullName() .. \" rendering... \" .. string.format(\"%.0f\", elapsed) .. \" seconds\")\n\tend\n\ttask.wait(3)\nend\nend)\nscript.Destroying:Connect(function()\n\ttask.cancel(timerThread)\nend)\n"]
      320 LOADK                            R25 K65 ["%*.OnGenerate = function(parameters: Parameters, targetContainer: Instance)"]
      321 GETTABLEKS                       R27 R5 K8 ["objectName"]
      323 NAMECALL                         R25 R25 K5 ["format"]
      325 CALL                             R25 2 1
      326 MOVE                             R24 R25
      327 LOADK                            R25 K66 ["\t-- Timer setup\n\tstartTime = tick()\n"]
      328 MOVE                             R26 R14
      329 LOADK                            R27 K67 ["\t-- reposition\n\tfor _, part in targetContainer:GetDescendants() do\n\t\tif part:IsA(\"BasePart\") then\n\t\t\tpart.CFrame -= Vector3.yAxis * parameters.Size.Y / 2\n\t\tend\n\tend\n\tfor _, model in targetContainer:GetDescendants() do\n\t\tif model:IsA(\"Model\") then\n\t\t\tmodel.WorldPivot -= Vector3.yAxis * parameters.Size.Y / 2\n\t\tend\n\tend\n"]
      330 LOADK                            R28 K68 ["\t-- Stop timer when generation completes\n\tlocal timeElapsed = tick() - startTime\n\tstartTime = 0\n\tif timeElapsed > 3 and script:IsDescendantOf(game) then\n\t\tprint(\"[ProceduralModel] \" .. script:GetFullName() .. \" rendering completed\")\n\tend\n"]
      331 LOADK                            R29 K69 ["end"]
      332 LOADK                            R30 K6 [""]
      333 LOADK                            R32 K70 ["return %*"]
      334 GETTABLEKS                       R34 R5 K8 ["objectName"]
      336 NAMECALL                         R32 R32 K5 ["format"]
      338 CALL                             R32 2 1
      339 MOVE                             R31 R32
      340 LOADK                            R32 K6 [""]
      341 SETLIST                          R16 R17 16 [1]
      343 LOADK                            R17 K4 ["\n"]
      344 CALL                             R15 2 1
      345 SETTABLEKS                       R15 R5 K7 ["moduleSource"]
      347 RETURN                           R5 1

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
        2 LOADK                            R4 K0 [","]
        3 NAMECALL                         R2 R1 K1 ["split"]
        5 CALL                             R2 2 1
        6 GETIMPORT                        R3 K4 [table.create]
        8 LENGTH                           R4 R2
        9 CALL                             R3 1 1
       10 MOVE                             R4 R2
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETIMPORT                        R9 K7 [Enum.SecurityCapability]
       16 MOVE                             R11 R8
       17 NAMECALL                         R9 R9 K8 ["FromName"]
       19 CALL                             R9 2 1
       20 JUMPIFNOT                        R9 ; [+8]
       21 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       23 MOVE                             R11 R3
       24 MOVE                             R12 R9
       25 GETIMPORT                        R10 K10 [table.insert]
       27 CALL                             R10 2 0
       28 JUMP                             ; [+9]
       29 GETIMPORT                        R10 K12 [warn]
       31 LOADK                            R12 K13 ["[PrimitiveGen] Unknown SecurityCapability: %*"]
       32 MOVE                             R14 R8
       33 NAMECALL                         R12 R12 K14 ["format"]
       35 CALL                             R12 2 1
       36 MOVE                             R11 R12
       37 CALL                             R10 1 0
       38 FORGLOOP                         R4 2 ; [-25]
       40 GETIMPORT                        R4 K17 [SecurityCapabilities.new]
       42 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
       43 MOVE                             R6 R3
       44 GETIMPORT                        R5 K19 [table.unpack]
       46 CALL                             R5 1 -1
       47 CALL                             R4 -1 1
       48 SETTABLEKS                       R4 R0 K20 ["Capabilities"]
       50 LOADB                            R5 1
       51 SETTABLEKS                       R5 R0 K21 ["Sandboxed"]
       53 RETURN                           R0 0

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
      125 GETTABLEKS                       R7 R0 K31 ["tools"]
      127 GETTABLEKS                       R7 R7 K32 ["multiEdit"]
      129 GETTABLEKS                       R7 R7 K33 ["applyScriptSourceDirectly"]
      131 MOVE                             R8 R6
      132 GETTABLEKS                       R9 R2 K34 ["moduleSource"]
      134 CALL                             R7 2 0
      135 SETTABLEKS                       R6 R3 K35 ["Generator"]
      137 GETIMPORT                        R7 K37 [workspace]
      139 SETTABLEKS                       R7 R3 K30 ["Parent"]
      141 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["bridge"]
        3 GETTABLEKS                       R2 R2 K1 ["setPreviewImage"]
        5 DUPTABLE                         R3 K4 [{"index", "image"}]
        6 SETTABLEKS                       R0 R3 K2 ["index"]
        8 SETTABLEKS                       R1 R3 K3 ["image"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setPositionOnGround"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+8]
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K1 ["capturePreviewImages"]
       12 GETUPVAL                         R1 1
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U4
       15 GETUPVAL                         R3 5
       16 CALL                             R0 3 0
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K2 ["Name"]
       20 SETUPVAL                         R0 6
       21 GETUPVAL                         R0 1
       22 GETTABLEKS                       R0 R0 K3 ["GenerationError"]
       24 JUMPIFEQKS                       R0 K4 [""] ; [+17]
       26 GETIMPORT                        R0 K6 [warn]
       28 LOADK                            R2 K7 ["[PrimitiveGen] \"Model %*\" generated with error: \"%*\". GenerationId: %*"]
       29 GETUPVAL                         R4 1
       30 NAMECALL                         R4 R4 K8 ["GetFullName"]
       32 CALL                             R4 1 1
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K3 ["GenerationError"]
       36 GETUPVAL                         R6 7
       37 NAMECALL                         R2 R2 K9 ["format"]
       39 CALL                             R2 4 1
       40 MOVE                             R1 R2
       41 CALL                             R0 1 0
       42 GETIMPORT                        R0 K12 [coroutine.status]
       44 GETUPVAL                         R1 8
       45 CALL                             R0 1 1
       46 JUMPIFNOTEQKS                    R0 K13 ["suspended"] ; [+8]
       48 GETIMPORT                        R0 K15 [coroutine.resume]
       50 GETUPVAL                         R1 8
       51 GETUPVAL                         R2 1
       52 GETTABLEKS                       R2 R2 K2 ["Name"]
       54 CALL                             R0 2 0
       55 GETUPVAL                         R0 4
       56 GETTABLEKS                       R0 R0 K16 ["bridge"]
       58 GETTABLEKS                       R0 R0 K17 ["updateContentHeader"]
       60 DUPTABLE                         R1 K21 [{"newDisplayName", "newClassName", "modelTag"}]
       61 GETUPVAL                         R2 1
       62 GETTABLEKS                       R2 R2 K2 ["Name"]
       64 SETTABLEKS                       R2 R1 K18 ["newDisplayName"]
       66 GETUPVAL                         R2 1
       67 GETTABLEKS                       R2 R2 K22 ["ClassName"]
       69 SETTABLEKS                       R2 R1 K19 ["newClassName"]
       71 GETUPVAL                         R2 9
       72 SETTABLEKS                       R2 R1 K20 ["modelTag"]
       74 CALL                             R0 1 0
       75 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 LOADK                            R4 K0 [""]
        1 GETIMPORT                        R5 K3 [coroutine.running]
        3 CALL                             R5 0 1
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R5
       14 CAPTURE                          VAL R3
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          VAL R6
       17 LOADK                            R10 K4 ["GeneratedFolder"]
       18 NAMECALL                         R8 R0 K5 ["FindFirstChildWhichIsA"]
       20 CALL                             R8 2 1
       21 JUMPIFNOT                        R8 ; [+20]
       22 LOADK                            R11 K6 ["Model"]
       23 NAMECALL                         R9 R8 K7 ["FindFirstChildOfClass"]
       25 CALL                             R9 2 1
       26 JUMPIF                           R9 ; [+4]
       27 NAMECALL                         R10 R8 K8 ["GetChildren"]
       29 CALL                             R10 1 1
       30 GETTABLEN                        R9 R10 1
       31 JUMPIFNOT                        R9 ; [+3]
       32 MOVE                             R10 R6
       33 CALL                             R10 0 0
       34 JUMP                             ; [+18]
       35 GETTABLEKS                       R10 R8 K9 ["ChildAdded"]
       37 MOVE                             R12 R6
       38 NAMECALL                         R10 R10 K10 ["Once"]
       40 CALL                             R10 2 0
       41 JUMP                             ; [+11]
       42 LOADNIL                          R9
       43 GETTABLEKS                       R10 R0 K9 ["ChildAdded"]
       45 NEWCLOSURE                       R12 P2
       46 CAPTURE                          REF R9
       47 CAPTURE                          VAL R6
       48 NAMECALL                         R10 R10 K11 ["Connect"]
       50 CALL                             R10 2 1
       51 MOVE                             R9 R10
       52 CLOSEUPVALS                      R9
       53 JUMPIFEQKS                       R4 K0 [""] ; [+3]
       55 CLOSEUPVALS                      R4
       56 RETURN                           R4 1
       57 GETIMPORT                        R9 K13 [coroutine.yield]
       59 CALL                             R9 0 1
       60 MOVE                             R4 R9
       61 CLOSEUPVALS                      R4
       62 RETURN                           R4 1

PROTO_16:
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
       27 JUMPIFNOT                        R4 ; [+21]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K2 ["generationId"]
       31 GETUPVAL                         R5 5
       32 CALL                             R5 0 1
       33 JUMPIFNOT                        R5 ; [+8]
       34 GETUPVAL                         R5 6
       35 GETTABLEKS                       R5 R5 K4 ["getUniqueTag"]
       37 LOADK                            R6 K5 ["Prim"]
       38 MOVE                             R7 R4
       39 CALL                             R5 2 1
       40 MOVE                             R3 R5
       41 JUMP                             ; [+8]
       42 LOADK                            R5 K6 ["PrimitiveGen_%*"]
       43 MOVE                             R7 R4
       44 NAMECALL                         R5 R5 K7 ["format"]
       46 CALL                             R5 2 1
       47 MOVE                             R3 R5
       48 JUMP                             ; [+1]
       49 LOADNIL                          R3
       50 JUMPIFNOT                        R3 ; [+4]
       51 MOVE                             R6 R3
       52 NAMECALL                         R4 R2 K8 ["AddTag"]
       54 CALL                             R4 2 0
       55 GETUPVAL                         R4 7
       56 MOVE                             R5 R2
       57 GETUPVAL                         R6 8
       58 GETUPVAL                         R7 9
       59 MOVE                             R8 R3
       60 CALL                             R4 4 1
       61 RETURN                           R4 1

PROTO_17:
        0 GETTABLEKS                       R2 R1 K0 ["toolArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
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
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R1
       27 CALL                             R4 1 2
       28 GETTABLEKS                       R6 R2 K7 ["endRecording"]
       30 MOVE                             R7 R3
       31 CALL                             R6 1 0
       32 JUMPIF                           R4 ; [+7]
       33 DUPTABLE                         R6 K10 [{"success", "error"}]
       34 LOADB                            R7 0
       35 SETTABLEKS                       R7 R6 K8 ["success"]
       37 SETTABLEKS                       R5 R6 K9 ["error"]
       39 RETURN                           R6 1
       40 DUPTABLE                         R6 K12 [{"success", "resultName"}]
       41 LOADB                            R7 1
       42 SETTABLEKS                       R7 R6 K8 ["success"]
       44 SETTABLEKS                       R5 R6 K11 ["resultName"]
       46 RETURN                           R6 1

PROTO_18:
        0 DUPTABLE                         R1 K1 [{"success"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["success"]
        4 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["modelTag"]
        3 NAMECALL                         R2 R2 K1 ["GetTagged"]
        5 CALL                             R2 2 1
        6 LENGTH                           R3 R2
        7 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R1 K3 ["toolArgs"]
       12 GETTABLEKS                       R3 R3 K4 ["environment"]
       14 GETTABLEKS                       R4 R3 K5 ["selection"]
       16 GETTABLEKS                       R4 R4 K6 ["set"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

PROTO_20:
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
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K8 ["bridge"]
       30 GETTABLEKS                       R4 R4 K9 ["updateContentHeader"]
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

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R0 K1 ["generationId"]
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+8]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K2 ["getUniqueTag"]
       10 LOADK                            R6 K3 ["Prim"]
       11 MOVE                             R7 R4
       12 CALL                             R5 2 1
       13 MOVE                             R3 R5
       14 JUMP                             ; [+6]
       15 LOADK                            R5 K4 ["PrimitiveGen_%*"]
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R5 K5 ["format"]
       19 CALL                             R5 2 1
       20 MOVE                             R3 R5
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K6 ["observeTagChanges"]
       24 MOVE                             R5 R3
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R1
       31 CALL                             R4 2 0
       32 RETURN                           R0 0

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
       21 GETTABLEKS                       R4 R0 K11 ["Guest"]
       23 GETTABLEKS                       R4 R4 K12 ["Environment"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K13 ["Parent"]
       32 GETTABLEKS                       R5 R5 K14 ["PrimitiveGenBridgeTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R0 K15 ["Util"]
       39 GETTABLEKS                       R6 R6 K16 ["Tagging"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Util"]
       46 GETTABLEKS                       R7 R7 K17 ["TaskCollector"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Util"]
       53 GETTABLEKS                       R8 R8 K18 ["ToolUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R0 K19 ["Resources"]
       60 GETTABLEKS                       R9 R9 K20 ["Localization"]
       62 GETTABLEKS                       R9 R9 K21 ["Translator"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R0 K22 ["Features"]
       69 GETTABLEKS                       R10 R10 K23 ["Gen3dUtils"]
       71 GETTABLEKS                       R10 R10 K24 ["ViewportPreviewUtils"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K10 [require]
       76 GETTABLEKS                       R11 R0 K25 ["Flags"]
       78 GETTABLEKS                       R11 R11 K26 ["FFlagAssistantUseNewTags"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K10 [require]
       83 GETTABLEKS                       R12 R0 K25 ["Flags"]
       85 GETTABLEKS                       R12 R12 K27 ["FFlagDisableNewSmartSize"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K10 [require]
       90 GETTABLEKS                       R13 R0 K25 ["Flags"]
       92 GETTABLEKS                       R13 R13 K28 ["FFlagDisableOldSmartSize"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K10 [require]
       97 GETTABLEKS                       R14 R0 K25 ["Flags"]
       99 GETTABLEKS                       R14 R14 K29 ["FFlagPrimGenCarouselPreview"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K10 [require]
      104 GETTABLEKS                       R15 R0 K25 ["Flags"]
      106 GETTABLEKS                       R15 R15 K30 ["FStringProceduralScriptCapabilities"]
      108 CALL                             R14 1 1
      109 NEWTABLE                         R15 0 0
      111 LOADN                            R18 0
      112 LOADN                            R16 47
      113 LOADN                            R17 1
      114 FORNPREP                         R16
      115 DUPTABLE                         R21 K33 [{"azimuth", "elevation"}]
      116 MULK                             R23 R18 K35 [7.5]
      117 ADDK                             R22 R23 K34 [45]
      118 SETTABLEKS                       R22 R21 K31 ["azimuth"]
      120 LOADN                            R22 30
      121 SETTABLEKS                       R22 R21 K32 ["elevation"]
      123 FASTCALL2                        TABLE_INSERT R15 R21 ; [+4]
      125 MOVE                             R20 R15
      126 GETIMPORT                        R19 K38 [table.insert]
      128 CALL                             R19 2 0
      129 FORNLOOP                         R16
      130 DUPTABLE                         R16 K42 [{"smartWidth", "smartHeight", "smartDepth"}]
      131 LOADK                            R17 K43 ["parameters.Size.X"]
      132 SETTABLEKS                       R17 R16 K39 ["smartWidth"]
      134 LOADK                            R17 K44 ["parameters.Size.Y"]
      135 SETTABLEKS                       R17 R16 K40 ["smartHeight"]
      137 LOADK                            R17 K45 ["parameters.Size.Z"]
      138 SETTABLEKS                       R17 R16 K41 ["smartDepth"]
      140 DUPTABLE                         R17 K49 [{"SmartWidth", "SmartHeight", "SmartDepth"}]
      141 LOADK                            R18 K43 ["parameters.Size.X"]
      142 SETTABLEKS                       R18 R17 K46 ["SmartWidth"]
      144 LOADK                            R18 K44 ["parameters.Size.Y"]
      145 SETTABLEKS                       R18 R17 K47 ["SmartHeight"]
      147 LOADK                            R18 K45 ["parameters.Size.Z"]
      148 SETTABLEKS                       R18 R17 K48 ["SmartDepth"]
      150 DUPCLOSURE                       R18 K50 [PROTO_0]
      151 DUPCLOSURE                       R19 K51 [PROTO_1]
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R5
      154 DUPCLOSURE                       R20 K52 [PROTO_2]
      155 DUPCLOSURE                       R21 K53 [PROTO_3]
      156 DUPCLOSURE                       R22 K54 [PROTO_5]
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R21
      159 DUPCLOSURE                       R23 K55 [PROTO_7]
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R11
      164 DUPCLOSURE                       R24 K56 [PROTO_8]
      165 DUPCLOSURE                       R25 K57 [PROTO_9]
      166 CAPTURE                          VAL R14
      167 DUPCLOSURE                       R26 K58 [PROTO_10]
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R22
      172 CAPTURE                          VAL R25
      173 DUPCLOSURE                       R27 K59 [PROTO_15]
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R15
      178 DUPCLOSURE                       R28 K60 [PROTO_17]
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R24
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R26
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R5
      185 CAPTURE                          VAL R27
      186 DUPCLOSURE                       R29 K61 [PROTO_18]
      187 DUPCLOSURE                       R30 K62 [PROTO_19]
      188 CAPTURE                          VAL R1
      189 DUPCLOSURE                       R31 K63 [PROTO_21]
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R8
      194 DUPTABLE                         R32 K68 [{"addWorkspaceModelAsync", "pingAssetDmAsync", "selectModel", "listenToLinkChanges"}]
      195 SETTABLEKS                       R28 R32 K64 ["addWorkspaceModelAsync"]
      197 SETTABLEKS                       R29 R32 K65 ["pingAssetDmAsync"]
      199 SETTABLEKS                       R30 R32 K66 ["selectModel"]
      201 SETTABLEKS                       R31 R32 K67 ["listenToLinkChanges"]
      203 DUPTABLE                         R33 K70 [{"bridge"}]
      204 SETTABLEKS                       R32 R33 K69 ["bridge"]
      206 RETURN                           R33 1
