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
       58 JUMPIFNOT                        R16 ; [+136]
       59 GETTABLE                         R18 R9 R16
       60 JUMPIF                           R18 ; [+134]
       61 LOADB                            R18 1
       62 SETTABLE                         R18 R9 R16
       63 GETUPVAL                         R19 0
       64 GETTABLE                         R18 R19 R16
       65 JUMPIFNOT                        R18 ; [+17]
       66 GETUPVAL                         R18 1
       67 CALL                             R18 0 1
       68 JUMPIF                           R18 ; [+14]
       69 JUMPIFNOT                        R17 ; [+125]
       70 LOADK                            R21 K20 ["^%s*(.-)%s*$"]
       71 NAMECALL                         R19 R17 K13 ["match"]
       73 CALL                             R19 2 -1
       74 FASTCALL                         TONUMBER ; [+2]
       75 GETIMPORT                        R18 K22 [tonumber]
       77 CALL                             R18 -1 1
       78 JUMPIFNOT                        R18 ; [+116]
       79 GETTABLEKS                       R19 R5 K10 ["smartSizeDefaults"]
       81 SETTABLE                         R18 R19 R16
       82 JUMP                             ; [+112]
       83 GETUPVAL                         R19 2
       84 GETTABLE                         R18 R19 R16
       85 JUMPIFNOT                        R18 ; [+17]
       86 GETUPVAL                         R18 3
       87 CALL                             R18 0 1
       88 JUMPIF                           R18 ; [+14]
       89 JUMPIFNOT                        R17 ; [+105]
       90 LOADK                            R21 K20 ["^%s*(.-)%s*$"]
       91 NAMECALL                         R19 R17 K13 ["match"]
       93 CALL                             R19 2 -1
       94 FASTCALL                         TONUMBER ; [+2]
       95 GETIMPORT                        R18 K22 [tonumber]
       97 CALL                             R18 -1 1
       98 JUMPIFNOT                        R18 ; [+96]
       99 GETTABLEKS                       R19 R5 K10 ["smartSizeDefaults"]
      101 SETTABLE                         R18 R19 R16
      102 JUMP                             ; [+92]
      103 LOADK                            R18 K23 ["any"]
      104 JUMPIFNOT                        R17 ; [+5]
      105 LOADK                            R21 K20 ["^%s*(.-)%s*$"]
      106 NAMECALL                         R19 R17 K13 ["match"]
      108 CALL                             R19 2 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R19
      111 JUMPIFNOT                        R19 ; [+70]
      112 LOADK                            R22 K24 ["^Color3"]
      113 NAMECALL                         R20 R19 K13 ["match"]
      115 CALL                             R20 2 1
      116 JUMPIFNOT                        R20 ; [+2]
      117 LOADK                            R18 K25 ["Color3"]
      118 JUMP                             ; [+49]
      119 LOADK                            R22 K26 ["^Vector3"]
      120 NAMECALL                         R20 R19 K13 ["match"]
      122 CALL                             R20 2 1
      123 JUMPIFNOT                        R20 ; [+2]
      124 LOADK                            R18 K27 ["Vector3"]
      125 JUMP                             ; [+42]
      126 LOADK                            R22 K28 ["^CFrame"]
      127 NAMECALL                         R20 R19 K13 ["match"]
      129 CALL                             R20 2 1
      130 JUMPIFNOT                        R20 ; [+2]
      131 LOADK                            R18 K29 ["CFrame"]
      132 JUMP                             ; [+35]
      133 LOADK                            R22 K30 ["^%-?%d"]
      134 NAMECALL                         R20 R19 K13 ["match"]
      136 CALL                             R20 2 1
      137 JUMPIF                           R20 ; [+5]
      138 LOADK                            R22 K31 ["^math%."]
      139 NAMECALL                         R20 R19 K13 ["match"]
      141 CALL                             R20 2 1
      142 JUMPIFNOT                        R20 ; [+2]
      143 LOADK                            R18 K32 ["number"]
      144 JUMP                             ; [+23]
      145 LOADK                            R22 K33 ["^\""]
      146 NAMECALL                         R20 R19 K13 ["match"]
      148 CALL                             R20 2 1
      149 JUMPIFNOT                        R20 ; [+2]
      150 LOADK                            R18 K34 ["string"]
      151 JUMP                             ; [+16]
      152 JUMPIFEQKS                       R19 K35 ["true"] ; [+3]
      154 JUMPIFNOTEQKS                    R19 K36 ["false"] ; [+3]
      156 LOADK                            R18 K37 ["boolean"]
      157 JUMP                             ; [+10]
      158 GETIMPORT                        R20 K39 [warn]
      160 LOADK                            R22 K40 ["[PrimitiveGen] Unknown luau type from value: %*, defaulting %* to any"]
      161 MOVE                             R24 R19
      162 MOVE                             R25 R16
      163 NAMECALL                         R22 R22 K5 ["format"]
      165 CALL                             R22 3 1
      166 MOVE                             R21 R22
      167 CALL                             R20 1 0
      168 GETTABLEKS                       R21 R5 K9 ["extractedAttributes"]
      170 DUPTABLE                         R22 K44 [{"name", "defaultValueStr", "luauType"}]
      171 SETTABLEKS                       R16 R22 K41 ["name"]
      173 SETTABLEKS                       R19 R22 K42 ["defaultValueStr"]
      175 SETTABLEKS                       R18 R22 K43 ["luauType"]
      177 FASTCALL2                        TABLE_INSERT R21 R22 ; [+3]
      179 GETIMPORT                        R20 K46 [table.insert]
      181 CALL                             R20 2 0
      182 LOADK                            R23 K47 ["\t\t%*: %*?,"]
      183 MOVE                             R25 R16
      184 MOVE                             R26 R18
      185 NAMECALL                         R23 R23 K5 ["format"]
      187 CALL                             R23 3 1
      188 MOVE                             R22 R23
      189 FASTCALL2                        TABLE_INSERT R8 R22 ; [+4]
      191 MOVE                             R21 R8
      192 GETIMPORT                        R20 K46 [table.insert]
      194 CALL                             R20 2 0
      195 FORGLOOP                         R10 1 ; [-151]
      197 LOADK                            R12 K15 ["SO%.getAttribute(%b())"]
      198 DUPCLOSURE                       R13 K48 [PROTO_6]
      199 CAPTURE                          UPVAL U3
      200 CAPTURE                          UPVAL U2
      201 CAPTURE                          UPVAL U1
      202 CAPTURE                          UPVAL U0
      203 NAMECALL                         R10 R0 K49 ["gsub"]
      205 CALL                             R10 3 1
      206 GETIMPORT                        R11 K3 [table.concat]
      208 MOVE                             R12 R8
      209 LOADK                            R13 K4 ["\n"]
      210 CALL                             R11 2 1
      211 LOADK                            R13 K50 ["type Parameters = {\n\tSize: Vector3,\n\tAttributes: {\n%*\n\t},\n}"]
      212 MOVE                             R15 R11
      213 NAMECALL                         R13 R13 K5 ["format"]
      215 CALL                             R13 2 1
      216 MOVE                             R12 R13
      217 JUMPIFNOT                        R6 ; [+32]
      218 GETIMPORT                        R13 K3 [table.concat]
      220 NEWTABLE                         R14 0 3
      222 LOADK                            R15 K51 ["-- Fix orientation of the model"]
      223 LOADK                            R17 K52 ["%*.WorldPivot = CFrame.identity"]
      224 MOVE                             R19 R6
      225 NAMECALL                         R17 R17 K5 ["format"]
      227 CALL                             R17 2 1
      228 MOVE                             R16 R17
      229 LOADK                            R17 K6 [""]
      230 SETLIST                          R14 R15 3 [1]
      232 LOADK                            R15 K4 ["\n"]
      233 CALL                             R13 2 1
      234 LOADK                            R17 K53 ["(local%%s+%*%%s*=%%s*GP%%.model%%b())"]
      235 MOVE                             R19 R6
      236 NAMECALL                         R17 R17 K5 ["format"]
      238 CALL                             R17 2 1
      239 MOVE                             R16 R17
      240 LOADK                            R18 K54 ["%%1%*"]
      241 MOVE                             R20 R13
      242 NAMECALL                         R18 R18 K5 ["format"]
      244 CALL                             R18 2 1
      245 MOVE                             R17 R18
      246 NAMECALL                         R14 R10 K49 ["gsub"]
      248 CALL                             R14 3 1
      249 MOVE                             R10 R14
      250 LOADK                            R15 K55 ["%s*return%s+[%w_]+%s*$"]
      251 LOADK                            R16 K6 [""]
      252 NAMECALL                         R13 R10 K49 ["gsub"]
      254 CALL                             R13 3 1
      255 MOVE                             R10 R13
      256 JUMPIFNOT                        R6 ; [+8]
      257 MOVE                             R13 R10
      258 LOADK                            R15 K56 ["\n\n%*.Parent = targetContainer"]
      259 MOVE                             R17 R6
      260 NAMECALL                         R15 R15 K5 ["format"]
      262 CALL                             R15 2 1
      263 MOVE                             R14 R15
      264 CONCAT                           R10 R13 R14
      265 NEWTABLE                         R13 0 0
      267 GETIMPORT                        R14 K58 [string.split]
      269 MOVE                             R15 R10
      270 LOADK                            R16 K4 ["\n"]
      271 CALL                             R14 2 3
      272 FORGPREP                         R14
      273 LOADK                            R22 K59 ["\t%*"]
      274 MOVE                             R24 R18
      275 NAMECALL                         R22 R22 K5 ["format"]
      277 CALL                             R22 2 1
      278 MOVE                             R21 R22
      279 FASTCALL2                        TABLE_INSERT R13 R21 ; [+4]
      281 MOVE                             R20 R13
      282 GETIMPORT                        R19 K46 [table.insert]
      284 CALL                             R19 2 0
      285 FORGLOOP                         R14 2 ; [-13]
      287 GETIMPORT                        R14 K3 [table.concat]
      289 MOVE                             R15 R13
      290 LOADK                            R16 K4 ["\n"]
      291 CALL                             R14 2 1
      292 GETIMPORT                        R15 K3 [table.concat]
      294 NEWTABLE                         R16 0 16
      296 LOADK                            R17 K60 ["--!strict"]
      297 LOADK                            R19 K61 ["-- generationId: %*"]
      298 ORK                              R21 R2 K62 ["unknown"]
      299 NAMECALL                         R19 R19 K5 ["format"]
      301 CALL                             R19 2 1
      302 MOVE                             R18 R19
      303 MOVE                             R19 R4
      304 LOADK                            R21 K63 ["local %* = {}"]
      305 GETTABLEKS                       R23 R5 K8 ["objectName"]
      307 NAMECALL                         R21 R21 K5 ["format"]
      309 CALL                             R21 2 1
      310 MOVE                             R20 R21
      311 LOADK                            R21 K6 [""]
      312 MOVE                             R22 R12
      313 LOADK                            R23 K64 ["local startTime = 0\nlocal timerThread : thread = task.spawn(function()\nwhile true do\n\tif not script:IsDescendantOf(game) then\n\t\tstartTime = 0\n\t\treturn\n\tend\n\tif startTime > 0 then\n\t\tlocal elapsed = tick() - startTime\n\t\tprint(\"[ProceduralModel] \" .. script:GetFullName() .. \" rendering... \" .. string.format(\"%.0f\", elapsed) .. \" seconds\")\n\tend\n\ttask.wait(3)\nend\nend)\nscript.Destroying:Connect(function()\n\ttask.cancel(timerThread)\nend)\n"]
      314 LOADK                            R25 K65 ["%*.OnGenerate = function(parameters: Parameters, targetContainer: Instance)"]
      315 GETTABLEKS                       R27 R5 K8 ["objectName"]
      317 NAMECALL                         R25 R25 K5 ["format"]
      319 CALL                             R25 2 1
      320 MOVE                             R24 R25
      321 LOADK                            R25 K66 ["\t-- Timer setup\n\tstartTime = tick()\n"]
      322 MOVE                             R26 R14
      323 LOADK                            R27 K67 ["\t-- reposition\n\tfor _, part in targetContainer:GetDescendants() do\n\t\tif part:IsA(\"BasePart\") then\n\t\t\tpart.CFrame -= Vector3.yAxis * parameters.Size.Y / 2\n\t\tend\n\tend\n\tfor _, model in targetContainer:GetDescendants() do\n\t\tif model:IsA(\"Model\") then\n\t\t\tmodel.WorldPivot -= Vector3.yAxis * parameters.Size.Y / 2\n\t\tend\n\tend\n"]
      324 LOADK                            R28 K68 ["\t-- Stop timer when generation completes\n\tlocal timeElapsed = tick() - startTime\n\tstartTime = 0\n\tif timeElapsed > 3 and script:IsDescendantOf(game) then\n\t\tprint(\"[ProceduralModel] \" .. script:GetFullName() .. \" rendering completed\")\n\tend\n"]
      325 LOADK                            R29 K69 ["end"]
      326 LOADK                            R30 K6 [""]
      327 LOADK                            R32 K70 ["return %*"]
      328 GETTABLEKS                       R34 R5 K8 ["objectName"]
      330 NAMECALL                         R32 R32 K5 ["format"]
      332 CALL                             R32 2 1
      333 MOVE                             R31 R32
      334 LOADK                            R32 K6 [""]
      335 SETLIST                          R16 R17 16 [1]
      337 LOADK                            R17 K4 ["\n"]
      338 CALL                             R15 2 1
      339 SETTABLEKS                       R15 R5 K7 ["moduleSource"]
      341 RETURN                           R5 1

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
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["reportGeneratedInstanceDeleted"]
        5 DUPTABLE                         R1 K4 [{"generationId", "secondsSinceInsertion"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["generationId"]
        9 GETIMPORT                        R3 K7 [os.clock]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 2
       13 SUB                              R2 R3 R4
       14 SETTABLEKS                       R2 R1 K3 ["secondsSinceInsertion"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETIMPORT                        R0 K2 [pcall]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_18:
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
       56 CALL                             R4 0 1
       57 JUMPIFNOT                        R4 ; [+23]
       58 GETUPVAL                         R4 1
       59 GETTABLEKS                       R4 R4 K2 ["generationId"]
       61 JUMPIFNOT                        R4 ; [+19]
       62 GETUPVAL                         R4 1
       63 GETTABLEKS                       R4 R4 K2 ["generationId"]
       65 GETIMPORT                        R5 K11 [os.clock]
       67 CALL                             R5 0 1
       68 LOADNIL                          R6
       69 GETTABLEKS                       R7 R2 K12 ["Destroying"]
       71 NEWCLOSURE                       R9 P0
       72 CAPTURE                          REF R6
       73 CAPTURE                          UPVAL U8
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 NAMECALL                         R7 R7 K13 ["Connect"]
       78 CALL                             R7 2 1
       79 MOVE                             R6 R7
       80 CLOSEUPVALS                      R6
       81 GETUPVAL                         R4 9
       82 MOVE                             R5 R2
       83 GETUPVAL                         R6 10
       84 GETUPVAL                         R7 8
       85 MOVE                             R8 R3
       86 CALL                             R4 4 1
       87 RETURN                           R4 1

PROTO_19:
        0 GETTABLEKS                       R2 R1 K0 ["initArgs"]
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
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          VAL R3
       28 CALL                             R4 1 2
       29 GETTABLEKS                       R6 R2 K7 ["endRecording"]
       31 MOVE                             R7 R3
       32 CALL                             R6 1 0
       33 JUMPIF                           R4 ; [+4]
       34 DUPTABLE                         R6 K11 [{["success"] = False, ["error"]}]
       35 SETTABLEKS                       R5 R6 K10 ["error"]
       37 RETURN                           R6 1
       38 DUPTABLE                         R6 K14 [{["success"] = True, ["resultName"]}]
       39 SETTABLEKS                       R5 R6 K13 ["resultName"]
       41 RETURN                           R6 1

PROTO_20:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["modelTag"]
        3 NAMECALL                         R2 R2 K1 ["GetTagged"]
        5 CALL                             R2 2 1
        6 LENGTH                           R3 R2
        7 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R1 K3 ["initArgs"]
       12 GETTABLEKS                       R3 R3 K4 ["environment"]
       14 GETTABLEKS                       R4 R3 K5 ["selection"]
       16 GETTABLEKS                       R4 R4 K6 ["set"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
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
       78 GETTABLEKS                       R11 R11 K26 ["FFlagAssistantGen3DTelemetryV2"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K10 [require]
       83 GETTABLEKS                       R12 R0 K25 ["Flags"]
       85 GETTABLEKS                       R12 R12 K27 ["FFlagAssistantUseNewTags"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K10 [require]
       90 GETTABLEKS                       R13 R0 K25 ["Flags"]
       92 GETTABLEKS                       R13 R13 K28 ["FFlagDisableNewSmartSize"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K10 [require]
       97 GETTABLEKS                       R14 R0 K25 ["Flags"]
       99 GETTABLEKS                       R14 R14 K29 ["FFlagDisableOldSmartSize"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K10 [require]
      104 GETTABLEKS                       R15 R0 K25 ["Flags"]
      106 GETTABLEKS                       R15 R15 K30 ["FFlagPrimGenCarouselPreview"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K10 [require]
      111 GETTABLEKS                       R16 R0 K25 ["Flags"]
      113 GETTABLEKS                       R16 R16 K31 ["FStringProceduralScriptCapabilities"]
      115 CALL                             R15 1 1
      116 NEWTABLE                         R16 0 0
      118 LOADN                            R19 0
      119 LOADN                            R17 47
      120 LOADN                            R18 1
      121 FORNPREP                         R17
      122 DUPTABLE                         R22 K35 [{["azimuth"], ["elevation"] = 30}]
      123 MULK                             R24 R19 K37 [7.5]
      124 ADDK                             R23 R24 K36 [45]
      125 SETTABLEKS                       R23 R22 K32 ["azimuth"]
      127 FASTCALL2                        TABLE_INSERT R16 R22 ; [+4]
      129 MOVE                             R21 R16
      130 GETIMPORT                        R20 K40 [table.insert]
      132 CALL                             R20 2 0
      133 FORNLOOP                         R17
      134 DUPTABLE                         R17 K47 [{["smartWidth"] = "parameters.Size.X", ["smartHeight"] = "parameters.Size.Y", ["smartDepth"] = "parameters.Size.Z"}]
      135 DUPTABLE                         R18 K51 [{["SmartWidth"] = "parameters.Size.X", ["SmartHeight"] = "parameters.Size.Y", ["SmartDepth"] = "parameters.Size.Z"}]
      136 DUPCLOSURE                       R19 K52 [PROTO_0]
      137 DUPCLOSURE                       R20 K53 [PROTO_1]
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R5
      140 DUPCLOSURE                       R21 K54 [PROTO_2]
      141 DUPCLOSURE                       R22 K55 [PROTO_3]
      142 DUPCLOSURE                       R23 K56 [PROTO_5]
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R22
      145 DUPCLOSURE                       R24 K57 [PROTO_7]
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R12
      150 DUPCLOSURE                       R25 K58 [PROTO_8]
      151 DUPCLOSURE                       R26 K59 [PROTO_9]
      152 CAPTURE                          VAL R15
      153 DUPCLOSURE                       R27 K60 [PROTO_10]
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R26
      159 DUPCLOSURE                       R28 K61 [PROTO_15]
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R16
      164 DUPCLOSURE                       R29 K62 [PROTO_19]
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R25
      167 CAPTURE                          VAL R24
      168 CAPTURE                          VAL R27
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R28
      173 DUPCLOSURE                       R30 K63 [PROTO_20]
      174 DUPCLOSURE                       R31 K64 [PROTO_21]
      175 CAPTURE                          VAL R1
      176 DUPCLOSURE                       R32 K65 [PROTO_23]
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R5
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R8
      181 DUPTABLE                         R33 K70 [{"addWorkspaceModelAsync", "pingAssetDmAsync", "selectModel", "listenToLinkChanges"}]
      182 SETTABLEKS                       R29 R33 K66 ["addWorkspaceModelAsync"]
      184 SETTABLEKS                       R30 R33 K67 ["pingAssetDmAsync"]
      186 SETTABLEKS                       R31 R33 K68 ["selectModel"]
      188 SETTABLEKS                       R32 R33 K69 ["listenToLinkChanges"]
      190 DUPTABLE                         R34 K72 [{"bridge"}]
      191 SETTABLEKS                       R33 R34 K71 ["bridge"]
      193 RETURN                           R34 1
