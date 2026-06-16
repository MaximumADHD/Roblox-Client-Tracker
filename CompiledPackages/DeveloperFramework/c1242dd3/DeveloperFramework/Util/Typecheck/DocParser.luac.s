PROTO_0:
        0 DUPTABLE                         R2 K3 [{"name", "script", "line"}]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K5 [tostring]
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K0 ["name"]
        8 SETTABLEKS                       R1 R2 K1 ["script"]
       10 LOADN                            R3 1
       11 SETTABLEKS                       R3 R2 K2 ["line"]
       13 GETUPVAL                         R5 0
       14 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K7 [setmetatable]
       19 CALL                             R3 2 0
       20 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["script"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["instanceIsA"]
        5 LOADK                            R4 K2 ["LuaSourceContainer"]
        6 CALL                             R3 1 1
        7 MOVE                             R4 R1
        8 CALL                             R3 1 -1
        9 FASTCALL                         ASSERT ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 -1 0
       13 GETTABLEKS                       R2 R1 K5 ["Source"]
       15 LOADK                            R5 K6 ["]]"]
       16 NAMECALL                         R3 R2 K7 ["find"]
       18 CALL                             R3 2 1
       19 MOVE                             R6 R3
       20 LOADK                            R7 K8 ["DocParser:parse expects a block comment at the beginning of the file."]
       21 NAMECALL                         R4 R0 K9 ["__assert"]
       23 CALL                             R4 3 0
       24 LOADK                            R6 K10 ["^%-%-"]
       25 NAMECALL                         R4 R2 K7 ["find"]
       27 CALL                             R4 2 1
       28 JUMPIFEQKN                       R4 K11 [1] ; [+2]
       30 LOADB                            R7 0 +1
       31 LOADB                            R7 1
       32 LOADK                            R8 K8 ["DocParser:parse expects a block comment at the beginning of the file."]
       33 NAMECALL                         R5 R0 K9 ["__assert"]
       35 CALL                             R5 3 0
       36 LOADN                            R7 6
       37 SUBK                             R8 R3 K12 [3]
       38 NAMECALL                         R5 R2 K13 ["sub"]
       40 CALL                             R5 3 1
       41 LOADK                            R7 K14 ["%*%%.defaultProps%%s*=%%s*%%{\n(.-)\n%%}"]
       42 GETTABLEKS                       R9 R1 K15 ["Name"]
       44 NAMECALL                         R7 R7 K16 ["format"]
       46 CALL                             R7 2 1
       47 MOVE                             R6 R7
       48 GETIMPORT                        R7 K19 [string.match]
       50 MOVE                             R8 R2
       51 MOVE                             R9 R6
       52 CALL                             R7 2 1
       53 JUMPIFNOT                        R7 ; [+3]
       54 MOVE                             R8 R7
       55 LOADK                            R9 K20 ["\n"]
       56 CONCAT                           R7 R8 R9
       57 MOVE                             R10 R5
       58 MOVE                             R11 R7
       59 NAMECALL                         R8 R0 K21 ["parseComments"]
       61 CALL                             R8 3 -1
       62 RETURN                           R8 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["script"]
        2 GETTABLEKS                       R2 R1 K1 ["Source"]
        4 GETIMPORT                        R3 K4 [string.match]
        6 MOVE                             R4 R2
        7 LOADK                            R6 K5 ["%*%%.defaultProps%%s*=%%s*%%{\n(.-)\n%%}"]
        8 GETTABLEKS                       R8 R1 K6 ["Name"]
       10 NAMECALL                         R6 R6 K7 ["format"]
       12 CALL                             R6 2 1
       13 MOVE                             R5 R6
       14 CALL                             R3 2 1
       15 GETIMPORT                        R4 K4 [string.match]
       17 MOVE                             R5 R2
       18 LOADK                            R6 K8 ["export%stype%sProps[%b<>]?%s*=%s*%{\n(.-)\n%}"]
       19 CALL                             R4 2 1
       20 JUMPIFNOT                        R4 ; [+18]
       21 GETUPVAL                         R5 0
       22 JUMPIFNOT                        R5 ; [+16]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K9 ["PropParser"]
       26 GETTABLEKS                       R5 R5 K10 ["parseProps"]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K11 ["DocTypes"]
       31 GETTABLEKS                       R6 R6 K12 ["Typecheckers"]
       33 GETTABLEKS                       R6 R6 K13 ["Luau"]
       35 MOVE                             R7 R4
       36 MOVE                             R8 R3
       37 CALL                             R5 3 -1
       38 RETURN                           R5 -1
       39 NEWTABLE                         R5 0 0
       41 RETURN                           R5 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["script"]
        2 GETTABLEKS                       R2 R1 K1 ["Source"]
        4 GETIMPORT                        R3 K4 [string.match]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K5 ["export%stype%sStyle[%b<>]?%s*=%s*%{\n(.-)\n%}"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+17]
       10 GETUPVAL                         R4 0
       11 JUMPIFNOT                        R4 ; [+15]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K6 ["PropParser"]
       15 GETTABLEKS                       R4 R4 K7 ["parseProps"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K8 ["DocTypes"]
       20 GETTABLEKS                       R5 R5 K9 ["Typecheckers"]
       22 GETTABLEKS                       R5 R5 K10 ["Luau"]
       24 MOVE                             R6 R3
       25 CALL                             R4 2 -1
       26 RETURN                           R4 -1
       27 LOADNIL                          R4
       28 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["script"]
        2 GETTABLEKS                       R2 R1 K1 ["Source"]
        4 NEWTABLE                         R3 0 0
        6 GETIMPORT                        R4 K4 [string.gmatch]
        8 MOVE                             R5 R2
        9 LOADK                            R6 K5 ["R[oe]act%.createElement%(%s*([%w%.]+)%s*,"]
       10 CALL                             R4 2 3
       11 FORGPREP                         R4
       12 LOADB                            R9 1
       13 SETTABLE                         R9 R3 R7
       14 FORGLOOP                         R4 1 ; [-3]
       16 GETIMPORT                        R4 K7 [next]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 1
       20 JUMPIFNOT                        R4 ; [+6]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K8 ["keys"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 -1
       26 RETURN                           R4 -1
       27 LOADNIL                          R4
       28 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["string"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 -1 0
        9 DUPTABLE                         R3 K6 [{"Props", "Style", "Summary"}]
       10 NEWTABLE                         R4 0 0
       12 SETTABLEKS                       R4 R3 K3 ["Props"]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K4 ["Style"]
       18 LOADNIL                          R4
       19 SETTABLEKS                       R4 R3 K5 ["Summary"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K5 ["Summary"]
       24 LOADK                            R7 K7 ["\r"]
       25 LOADK                            R8 K8 [""]
       26 NAMECALL                         R5 R1 K9 ["gsub"]
       28 CALL                             R5 3 1
       29 LOADK                            R7 K10 ["\n"]
       30 NAMECALL                         R5 R5 K11 ["split"]
       32 CALL                             R5 2 1
       33 GETIMPORT                        R6 K13 [ipairs]
       35 MOVE                             R7 R5
       36 CALL                             R6 1 3
       37 FORGPREP_INEXT                   R6
       38 ADDK                             R11 R9 K14 [1]
       39 SETTABLEKS                       R11 R0 K15 ["line"]
       41 LOADN                            R11 0
       42 GETIMPORT                        R12 K17 [string.gmatch]
       44 MOVE                             R13 R10
       45 LOADK                            R14 K18 ["\t"]
       46 CALL                             R12 2 3
       47 FORGPREP                         R12
       48 ADDK                             R11 R11 K14 [1]
       49 FORGLOOP                         R12 1 ; [-2]
       51 ADDK                             R14 R11 K14 [1]
       52 NAMECALL                         R12 R10 K19 ["sub"]
       54 CALL                             R12 2 1
       55 JUMPIFNOTEQKS                    R12 K20 ["Required Props:"] ; [+5]
       57 GETUPVAL                         R13 1
       58 GETTABLEKS                       R4 R13 K21 ["Required"]
       60 JUMP                             ; [+113]
       61 JUMPIFNOTEQKS                    R12 K22 ["Optional Props:"] ; [+5]
       63 GETUPVAL                         R13 1
       64 GETTABLEKS                       R4 R13 K23 ["Optional"]
       66 JUMP                             ; [+107]
       67 JUMPIFNOTEQKS                    R12 K24 ["Style Values:"] ; [+5]
       69 GETUPVAL                         R13 1
       70 GETTABLEKS                       R4 R13 K4 ["Style"]
       72 JUMP                             ; [+101]
       73 JUMPIFNOTEQKN                    R11 K14 [1] ; [+12]
       75 LOADK                            R15 K25 [":"]
       76 NAMECALL                         R13 R12 K26 ["find"]
       78 CALL                             R13 2 1
       79 JUMPIFNOT                        R13 ; [+6]
       80 LOADB                            R15 0
       81 GETUPVAL                         R16 2
       82 NAMECALL                         R13 R0 K27 ["__assert"]
       84 CALL                             R13 3 0
       85 JUMP                             ; [+88]
       86 GETUPVAL                         R13 1
       87 GETTABLEKS                       R13 R13 K5 ["Summary"]
       89 JUMPIFNOTEQ                      R4 R13 ; [+40]
       91 LENGTH                           R13 R12
       92 LOADN                            R14 0
       93 JUMPIFNOTLT                      R14 R13 ; [+36]
       95 LOADB                            R16 0
       96 JUMPIFNOTEQKN                    R11 K28 [2] ; [+5]
       98 LOADK                            R18 K25 [":"]
       99 NAMECALL                         R16 R12 K26 ["find"]
      101 CALL                             R16 2 1
      102 NOT                              R15 R16
      103 LOADK                            R16 K29 ["DocParser:parse expects a header before prop definitions."]
      104 NAMECALL                         R13 R0 K27 ["__assert"]
      106 CALL                             R13 3 0
      107 JUMPIFEQKN                       R11 K14 [1] ; [+2]
      109 LOADB                            R15 0 +1
      110 LOADB                            R15 1
      111 LOADK                            R16 K30 ["DocParser:parse expects 1 tab for headers, 2 tabs for prop definitions, and 3 tabs for multilined prop comments."]
      112 NAMECALL                         R13 R0 K27 ["__assert"]
      114 CALL                             R13 3 0
      115 GETTABLEKS                       R14 R3 K5 ["Summary"]
      117 JUMPIFNOT                        R14 ; [+8]
      118 GETIMPORT                        R13 K32 [string.format]
      120 LOADK                            R14 K33 ["%s\n%s"]
      121 GETTABLEKS                       R15 R3 K5 ["Summary"]
      123 MOVE                             R16 R12
      124 CALL                             R13 3 1
      125 JUMPIF                           R13 ; [+1]
      126 MOVE                             R13 R12
      127 SETTABLEKS                       R13 R3 K5 ["Summary"]
      129 JUMP                             ; [+44]
      130 GETUPVAL                         R13 1
      131 GETTABLEKS                       R13 R13 K21 ["Required"]
      133 JUMPIFNOTEQ                      R4 R13 ; [+11]
      135 GETTABLEKS                       R15 R3 K3 ["Props"]
      137 MOVE                             R16 R2
      138 MOVE                             R17 R11
      139 MOVE                             R18 R12
      140 LOADB                            R19 0
      141 NAMECALL                         R13 R0 K34 ["__parseProp"]
      143 CALL                             R13 6 0
      144 JUMP                             ; [+29]
      145 GETUPVAL                         R13 1
      146 GETTABLEKS                       R13 R13 K23 ["Optional"]
      148 JUMPIFNOTEQ                      R4 R13 ; [+11]
      150 GETTABLEKS                       R15 R3 K3 ["Props"]
      152 MOVE                             R16 R2
      153 MOVE                             R17 R11
      154 MOVE                             R18 R12
      155 LOADB                            R19 1
      156 NAMECALL                         R13 R0 K34 ["__parseProp"]
      158 CALL                             R13 6 0
      159 JUMP                             ; [+14]
      160 GETUPVAL                         R13 1
      161 GETTABLEKS                       R13 R13 K4 ["Style"]
      163 JUMPIFNOTEQ                      R4 R13 ; [+10]
      165 GETTABLEKS                       R15 R3 K4 ["Style"]
      167 MOVE                             R16 R2
      168 MOVE                             R17 R11
      169 MOVE                             R18 R12
      170 LOADB                            R19 1
      171 NAMECALL                         R13 R0 K34 ["__parseProp"]
      173 CALL                             R13 6 0
      174 FORGLOOP                         R6 2 [inext] ; [-137]
      176 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["strictInterface"]
        3 DUPTABLE                         R3 K4 [{"Summary", "Props", "Style"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K5 ["optional"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K6 ["string"]
       10 CALL                             R4 1 1
       11 SETTABLEKS                       R4 R3 K1 ["Summary"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K7 ["table"]
       16 SETTABLEKS                       R4 R3 K2 ["Props"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K7 ["table"]
       21 SETTABLEKS                       R4 R3 K3 ["Style"]
       23 CALL                             R2 1 1
       24 MOVE                             R3 R0
       25 CALL                             R2 1 -1
       26 FASTCALL                         ASSERT ; [+2]
       27 GETIMPORT                        R1 K9 [assert]
       29 CALL                             R1 -1 0
       30 NEWTABLE                         R1 4 0
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K10 ["Children"]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K5 ["optional"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K7 ["table"]
       41 CALL                             R3 1 1
       42 SETTABLE                         R3 R1 R2
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K11 ["Ref"]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K5 ["optional"]
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K12 ["RoactRef"]
       52 CALL                             R3 1 1
       53 SETTABLE                         R3 R1 R2
       54 GETUPVAL                         R2 1
       55 GETTABLEKS                       R2 R2 K13 ["Change"]
       57 GETTABLEKS                       R2 R2 K14 ["AbsoluteSize"]
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R3 R3 K5 ["optional"]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K15 ["callback"]
       65 CALL                             R3 1 1
       66 SETTABLE                         R3 R1 R2
       67 GETUPVAL                         R2 3
       68 JUMPIFNOT                        R2 ; [+11]
       69 GETUPVAL                         R2 4
       70 GETTABLEKS                       R2 R2 K16 ["Tag"]
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K5 ["optional"]
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R4 R4 K6 ["string"]
       78 CALL                             R3 1 1
       79 SETTABLE                         R3 R1 R2
       80 NEWTABLE                         R2 0 0
       82 GETIMPORT                        R3 K18 [pairs]
       84 GETTABLEKS                       R4 R0 K2 ["Props"]
       86 CALL                             R3 1 3
       87 FORGPREP_NEXT                    R3
       88 GETUPVAL                         R8 5
       89 GETTABLEKS                       R8 R8 K19 ["__addCheckForProp"]
       91 MOVE                             R9 R1
       92 MOVE                             R10 R7
       93 CALL                             R8 2 0
       94 FORGLOOP                         R3 2 ; [-7]
       96 GETIMPORT                        R3 K18 [pairs]
       98 GETTABLEKS                       R4 R0 K3 ["Style"]
      100 CALL                             R3 1 3
      101 FORGPREP_NEXT                    R3
      102 GETUPVAL                         R8 5
      103 GETTABLEKS                       R8 R8 K19 ["__addCheckForProp"]
      105 MOVE                             R9 R2
      106 MOVE                             R10 R7
      107 CALL                             R8 2 0
      108 FORGLOOP                         R3 2 ; [-7]
      110 GETUPVAL                         R3 0
      111 GETTABLEKS                       R3 R3 K0 ["strictInterface"]
      113 MOVE                             R4 R1
      114 CALL                             R3 1 1
      115 GETIMPORT                        R5 K21 [next]
      117 MOVE                             R6 R2
      118 CALL                             R5 1 1
      119 JUMPIFNOT                        R5 ; [+6]
      120 GETUPVAL                         R4 0
      121 GETTABLEKS                       R4 R4 K22 ["interface"]
      123 MOVE                             R5 R2
      124 CALL                             R4 1 1
      125 JUMPIF                           R4 ; [+1]
      126 LOADNIL                          R4
      127 RETURN                           R3 2

PROTO_7:
        0 JUMPIF                           R1 ; [+14]
        1 LOADB                            R4 0
        2 LOADK                            R5 K0 ["%s\n%s.lua, line %d"]
        3 MOVE                             R7 R2
        4 GETTABLEKS                       R8 R0 K1 ["name"]
        6 GETTABLEKS                       R9 R0 K2 ["line"]
        8 NAMECALL                         R5 R5 K3 ["format"]
       10 CALL                             R5 4 -1
       11 FASTCALL                         ASSERT ; [+2]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 -1 0
       15 RETURN                           R0 0

PROTO_8:
        0 LENGTH                           R6 R4
        1 LOADN                            R7 0
        2 JUMPIFNOTLT                      R7 R6 ; [+91]
        4 JUMPIFNOTEQKN                    R3 K0 [2] ; [+63]
        6 LOADK                            R8 K1 [":"]
        7 NAMECALL                         R6 R4 K2 ["find"]
        9 CALL                             R6 2 1
       10 MOVE                             R9 R6
       11 LOADK                            R10 K3 ["DocParser:parse expects `typename Propname: comment` format for prop definitions."]
       12 NAMECALL                         R7 R0 K4 ["__assert"]
       14 CALL                             R7 3 0
       15 LOADN                            R9 1
       16 SUBK                             R10 R6 K5 [1]
       17 NAMECALL                         R7 R4 K6 ["sub"]
       19 CALL                             R7 3 1
       20 LOADK                            R10 K7 [" "]
       21 NAMECALL                         R8 R7 K8 ["split"]
       23 CALL                             R8 2 1
       24 LENGTH                           R12 R8
       25 JUMPIFEQKN                       R12 K0 [2] ; [+2]
       27 LOADB                            R11 0 +1
       28 LOADB                            R11 1
       29 LOADK                            R12 K3 ["DocParser:parse expects `typename Propname: comment` format for prop definitions."]
       30 NAMECALL                         R9 R0 K4 ["__assert"]
       32 CALL                             R9 3 0
       33 GETTABLEN                        R9 R8 2
       34 GETTABLEN                        R10 R8 1
       35 ADDK                             R13 R6 K0 [2]
       36 NAMECALL                         R11 R4 K6 ["sub"]
       38 CALL                             R11 2 1
       39 LOADNIL                          R12
       40 JUMPIFNOT                        R5 ; [+9]
       41 JUMPIFNOT                        R2 ; [+8]
       42 GETIMPORT                        R13 K11 [string.match]
       44 MOVE                             R14 R2
       45 MOVE                             R16 R9
       46 LOADK                            R17 K12 ["%s=%s([^\n]-),\n"]
       47 CONCAT                           R15 R16 R17
       48 CALL                             R13 2 1
       49 MOVE                             R12 R13
       50 DUPTABLE                         R15 K18 [{"Name", "Type", "IsOptional", "Default", "Comment"}]
       51 SETTABLEKS                       R9 R15 K13 ["Name"]
       53 SETTABLEKS                       R10 R15 K14 ["Type"]
       55 SETTABLEKS                       R5 R15 K15 ["IsOptional"]
       57 SETTABLEKS                       R12 R15 K16 ["Default"]
       59 SETTABLEKS                       R11 R15 K17 ["Comment"]
       61 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       63 MOVE                             R14 R1
       64 GETIMPORT                        R13 K21 [table.insert]
       66 CALL                             R13 2 0
       67 RETURN                           R0 0
       68 LOADN                            R6 2
       69 JUMPIFNOTLT                      R6 R3 ; [+19]
       71 LENGTH                           R7 R1
       72 GETTABLE                         R6 R1 R7
       73 GETTABLEKS                       R6 R6 K17 ["Comment"]
       75 LENGTH                           R8 R1
       76 GETTABLE                         R7 R1 R8
       77 JUMPIFNOT                        R6 ; [+7]
       78 GETIMPORT                        R8 K23 [string.format]
       80 LOADK                            R9 K24 ["%s\n%s"]
       81 MOVE                             R10 R6
       82 MOVE                             R11 R4
       83 CALL                             R8 3 1
       84 JUMPIF                           R8 ; [+1]
       85 MOVE                             R8 R4
       86 SETTABLEKS                       R8 R7 K17 ["Comment"]
       88 RETURN                           R0 0
       89 LOADB                            R8 0
       90 LOADK                            R9 K25 ["DocParser:parse expects 1 tab for headers, 2 tabs for prop definitions, and 3 tabs for multilined prop comments."]
       91 NAMECALL                         R6 R0 K4 ["__assert"]
       93 CALL                             R6 3 0
       94 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["Name"]
        2 GETTABLEKS                       R3 R1 K1 ["Type"]
        4 GETTABLEKS                       R4 R1 K2 ["IsOptional"]
        6 GETTABLE                         R5 R0 R2
        7 LOADNIL                          R6
        8 GETIMPORT                        R7 K5 [string.find]
       10 MOVE                             R8 R3
       11 LOADK                            R9 K6 ["Enum"]
       12 CALL                             R7 2 1
       13 GETIMPORT                        R8 K5 [string.find]
       15 MOVE                             R9 R3
       16 LOADK                            R10 K7 ["array["]
       17 LOADNIL                          R11
       18 LOADB                            R12 1
       19 CALL                             R8 4 1
       20 JUMPIFNOT                        R7 ; [+13]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K8 ["enum"]
       24 GETIMPORT                        R11 K9 [Enum]
       26 ADDK                             R14 R7 K10 [5]
       27 NAMECALL                         R12 R3 K11 ["sub"]
       29 CALL                             R12 2 1
       30 GETTABLE                         R10 R11 R12
       31 CALL                             R9 1 1
       32 MOVE                             R6 R9
       33 JUMP                             ; [+25]
       34 JUMPIFNOT                        R8 ; [+18]
       35 GETUPVAL                         R10 0
       36 ADDK                             R13 R8 K12 [6]
       37 NAMECALL                         R15 R3 K14 ["len"]
       39 CALL                             R15 1 1
       40 SUBK                             R14 R15 K13 [1]
       41 NAMECALL                         R11 R3 K11 ["sub"]
       43 CALL                             R11 3 1
       44 GETTABLE                         R9 R10 R11
       45 JUMPIFNOT                        R9 ; [+13]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K15 ["array"]
       49 MOVE                             R11 R9
       50 CALL                             R10 1 1
       51 MOVE                             R6 R10
       52 JUMP                             ; [+6]
       53 GETUPVAL                         R10 1
       54 GETTABLE                         R9 R10 R3
       55 JUMPIF                           R9 ; [+2]
       56 GETUPVAL                         R10 0
       57 GETTABLE                         R9 R10 R3
       58 MOVE                             R6 R9
       59 MOVE                             R10 R6
       60 GETIMPORT                        R11 K17 [string.format]
       62 LOADK                            R12 K18 ["`%s` is not a valid t type."]
       63 MOVE                             R13 R3
       64 CALL                             R11 2 -1
       65 FASTCALL                         ASSERT ; [+2]
       66 GETIMPORT                        R9 K20 [assert]
       68 CALL                             R9 -1 0
       69 JUMPIFNOT                        R4 ; [+6]
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K21 ["optional"]
       73 MOVE                             R10 R6
       74 CALL                             R9 1 1
       75 MOVE                             R6 R9
       76 LOADN                            R11 1
       77 LOADN                            R12 6
       78 NAMECALL                         R9 R2 K11 ["sub"]
       80 CALL                             R9 3 1
       81 JUMPIFNOTEQKS                    R9 K22 ["Roact."] ; [+38]
       83 LOADN                            R11 7
       84 LOADN                            R12 13
       85 NAMECALL                         R9 R2 K11 ["sub"]
       87 CALL                             R9 3 1
       88 JUMPIFNOTEQKS                    R9 K23 ["Change."] ; [+10]
       90 GETUPVAL                         R9 2
       91 GETTABLEKS                       R9 R9 K24 ["Change"]
       93 LOADN                            R12 14
       94 NAMECALL                         R10 R2 K11 ["sub"]
       96 CALL                             R10 2 1
       97 GETTABLE                         R2 R9 R10
       98 JUMP                             ; [+21]
       99 LOADN                            R11 7
      100 LOADN                            R12 12
      101 NAMECALL                         R9 R2 K11 ["sub"]
      103 CALL                             R9 3 1
      104 JUMPIFNOTEQKS                    R9 K25 ["Event."] ; [+10]
      106 GETUPVAL                         R9 2
      107 GETTABLEKS                       R9 R9 K26 ["Event"]
      109 LOADN                            R12 13
      110 NAMECALL                         R10 R2 K11 ["sub"]
      112 CALL                             R10 2 1
      113 GETTABLE                         R2 R9 R10
      114 JUMP                             ; [+5]
      115 JUMPIFNOTEQKS                    R2 K27 ["Roact.Ref"] ; [+4]
      117 GETUPVAL                         R9 2
      118 GETTABLEKS                       R2 R9 K28 ["Ref"]
      120 JUMPIFEQKNIL                     R5 ; [+9]
      122 GETUPVAL                         R9 0
      123 GETTABLEKS                       R9 R9 K29 ["union"]
      125 MOVE                             R10 R5
      126 MOVE                             R11 R6
      127 CALL                             R9 2 1
      128 SETTABLE                         R9 R0 R2
      129 RETURN                           R0 0
      130 SETTABLE                         R6 R0 R2
      131 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Util"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["Util"]
       20 GETTABLEKS                       R3 R3 K8 ["Symbol"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K4 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["Dash"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R0 K4 ["Parent"]
       32 LOADK                            R7 K10 ["DocUtils"]
       33 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       35 CALL                             R5 2 1
       36 JUMPIFNOT                        R5 ; [+8]
       37 GETIMPORT                        R4 K6 [require]
       39 GETTABLEKS                       R5 R0 K4 ["Parent"]
       41 GETTABLEKS                       R5 R5 K10 ["DocUtils"]
       43 CALL                             R4 1 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R4
       46 GETIMPORT                        R5 K6 [require]
       48 GETIMPORT                        R6 K1 [script]
       50 GETTABLEKS                       R6 R6 K4 ["Parent"]
       52 GETTABLEKS                       R6 R6 K12 ["FrameworkTypes"]
       54 CALL                             R5 1 1
       55 GETTABLEKS                       R7 R0 K4 ["Parent"]
       57 LOADK                            R9 K13 ["React"]
       58 NAMECALL                         R7 R7 K11 ["FindFirstChild"]
       60 CALL                             R7 2 1
       61 JUMPIFNOT                        R7 ; [+8]
       62 GETIMPORT                        R6 K6 [require]
       64 GETTABLEKS                       R7 R0 K4 ["Parent"]
       66 GETTABLEKS                       R7 R7 K13 ["React"]
       68 CALL                             R6 1 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R6
       71 JUMPIFNOT                        R6 ; [+7]
       72 GETTABLEKS                       R8 R6 K14 ["Tag"]
       74 JUMPIFNOTEQKNIL                  R8 ; [+2]
       76 LOADB                            R7 0 +1
       77 LOADB                            R7 1
       78 JUMP                             ; [+1]
       79 LOADB                            R7 0
       80 GETIMPORT                        R8 K6 [require]
       82 GETIMPORT                        R9 K1 [script]
       84 GETTABLEKS                       R9 R9 K4 ["Parent"]
       86 GETTABLEKS                       R9 R9 K15 ["t"]
       88 CALL                             R8 1 1
       89 GETIMPORT                        R9 K18 [string.format]
       91 LOADK                            R10 K19 ["DocParser:parse expects headers to equal `%s`, `%s`, or `%s` only."]
       92 LOADK                            R11 K20 ["Required Props:"]
       93 LOADK                            R12 K21 ["Optional Props:"]
       94 LOADK                            R13 K22 ["Style Values:"]
       95 CALL                             R9 4 1
       96 DUPTABLE                         R10 K27 [{"Summary", "Required", "Optional", "Style"}]
       97 GETTABLEKS                       R11 R2 K28 ["named"]
       99 LOADK                            R12 K23 ["Summary"]
      100 CALL                             R11 1 1
      101 SETTABLEKS                       R11 R10 K23 ["Summary"]
      103 GETTABLEKS                       R11 R2 K28 ["named"]
      105 LOADK                            R12 K24 ["Required"]
      106 CALL                             R11 1 1
      107 SETTABLEKS                       R11 R10 K24 ["Required"]
      109 GETTABLEKS                       R11 R2 K28 ["named"]
      111 LOADK                            R12 K25 ["Optional"]
      112 CALL                             R11 1 1
      113 SETTABLEKS                       R11 R10 K25 ["Optional"]
      115 GETTABLEKS                       R11 R2 K28 ["named"]
      117 LOADK                            R12 K26 ["Style"]
      118 CALL                             R11 1 1
      119 SETTABLEKS                       R11 R10 K26 ["Style"]
      121 NEWTABLE                         R11 16 0
      123 SETTABLEKS                       R11 R11 K29 ["__index"]
      125 DUPCLOSURE                       R12 K30 [PROTO_0]
      126 CAPTURE                          VAL R11
      127 SETTABLEKS                       R12 R11 K31 ["new"]
      129 DUPCLOSURE                       R12 K32 [PROTO_1]
      130 CAPTURE                          VAL R8
      131 SETTABLEKS                       R12 R11 K33 ["parse"]
      133 DUPCLOSURE                       R12 K34 [PROTO_2]
      134 CAPTURE                          VAL R4
      135 SETTABLEKS                       R12 R11 K35 ["parseProps"]
      137 DUPCLOSURE                       R12 K36 [PROTO_3]
      138 CAPTURE                          VAL R4
      139 SETTABLEKS                       R12 R11 K37 ["parseStyle"]
      141 DUPCLOSURE                       R12 K38 [PROTO_4]
      142 CAPTURE                          VAL R3
      143 SETTABLEKS                       R12 R11 K39 ["parseDependencies"]
      145 DUPCLOSURE                       R12 K40 [PROTO_5]
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R9
      149 SETTABLEKS                       R12 R11 K41 ["parseComments"]
      151 DUPCLOSURE                       R12 K42 [PROTO_6]
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R11
      158 SETTABLEKS                       R12 R11 K43 ["toInterface"]
      160 DUPCLOSURE                       R12 K44 [PROTO_7]
      161 SETTABLEKS                       R12 R11 K45 ["__assert"]
      163 DUPCLOSURE                       R12 K46 [PROTO_8]
      164 SETTABLEKS                       R12 R11 K47 ["__parseProp"]
      166 DUPCLOSURE                       R12 K48 [PROTO_9]
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R1
      170 SETTABLEKS                       R12 R11 K49 ["__addCheckForProp"]
      172 RETURN                           R11 1
