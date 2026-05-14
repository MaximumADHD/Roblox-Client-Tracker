PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 FASTCALL2                        ASSERT R1 R2 ; [+5]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 GETIMPORT                        R3 K1 [assert]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 FASTCALL1                        TYPE R6 ; [+3]
        8 MOVE                             R9 R6
        9 GETIMPORT                        R8 K3 [type]
       11 CALL                             R8 1 1
       12 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+22]
       14 FASTCALL1                        GETMETATABLE R6 ; [+3]
       15 MOVE                             R9 R6
       16 GETIMPORT                        R8 K6 [getmetatable]
       18 CALL                             R8 1 1
       19 GETUPVAL                         R9 0
       20 JUMPIFNOTEQ                      R8 R9 ; [+14]
       22 FASTCALL1                        TYPE R7 ; [+3]
       23 MOVE                             R9 R7
       24 GETIMPORT                        R8 K3 [type]
       26 CALL                             R8 1 1
       27 JUMPIFEQKS                       R8 K4 ["table"] ; [+7]
       29 FASTCALL1                        TOSTRING R6 ; [+3]
       30 MOVE                             R9 R6
       31 GETIMPORT                        R8 K8 [tostring]
       33 CALL                             R8 1 1
       34 SETTABLE                         R7 R2 R8
       35 FORGLOOP                         R3 2 ; [-29]
       37 RETURN                           R2 1

PROTO_2:
        0 GETTABLE                         R4 R2 R1
        1 JUMPIF                           R4 ; [+57]
        2 LOADK                            R6 K0 ["&"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R8 R1
        5 GETIMPORT                        R7 K2 [tostring]
        7 CALL                             R7 1 1
        8 CONCAT                           R5 R6 R7
        9 MOVE                             R6 R2
       10 JUMPIFNOT                        R6 ; [+1]
       11 GETTABLE                         R6 R2 R3
       12 MOVE                             R7 R6
       13 JUMPIFNOT                        R7 ; [+1]
       14 GETTABLE                         R7 R6 R5
       15 MOVE                             R4 R7
       16 JUMPIFNOT                        R4 ; [+42]
       17 FASTCALL1                        TYPE R4 ; [+3]
       18 MOVE                             R8 R4
       19 GETIMPORT                        R7 K4 [type]
       21 CALL                             R7 1 1
       22 JUMPIFNOTEQKS                    R7 K5 ["table"] ; [+36]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K6 ["Dictionary"]
       27 GETTABLEKS                       R7 R7 K7 ["join"]
       29 MOVE                             R8 R6
       30 NEWTABLE                         R9 1 0
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R10 R10 K8 ["None"]
       35 SETTABLE                         R10 R9 R5
       36 CALL                             R7 2 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K6 ["Dictionary"]
       40 GETTABLEKS                       R8 R8 K7 ["join"]
       42 MOVE                             R9 R7
       43 MOVE                             R10 R4
       44 CALL                             R8 2 1
       45 MOVE                             R4 R8
       46 GETTABLE                         R9 R6 R5
       47 FASTCALL1                        GETMETATABLE R9 ; [+2]
       48 GETIMPORT                        R8 K10 [getmetatable]
       50 CALL                             R8 1 1
       51 FASTCALL2                        SETMETATABLE R4 R8 ; [+5]
       53 MOVE                             R10 R4
       54 MOVE                             R11 R8
       55 GETIMPORT                        R9 K12 [setmetatable]
       57 CALL                             R9 2 1
       58 MOVE                             R4 R9
       59 MOVE                             R6 R4
       60 LOADK                            R7 K13 ["Stylizer:__getClassStyle could not find a Style named '%s' for component `%s`"]
       61 MOVE                             R9 R1
       62 FASTCALL1                        TOSTRING R3 ; [+3]
       63 MOVE                             R11 R3
       64 GETIMPORT                        R10 K2 [tostring]
       66 CALL                             R10 1 1
       67 NAMECALL                         R7 R7 K14 ["format"]
       69 CALL                             R7 3 -1
       70 FASTCALL                         ASSERT ; [+2]
       71 GETIMPORT                        R5 K16 [assert]
       73 CALL                             R5 -1 0
       74 RETURN                           R4 1

PROTO_3:
        0 GETTABLEKS                       R5 R1 K0 ["themesList"]
        2 FASTCALL1                        TYPE R5 ; [+2]
        3 GETIMPORT                        R4 K2 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K3 ["table"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       12 LOADK                            R4 K4 ["Stylizer.__recalculateTheme expects themeProps to contain a table `themesList` when themeChangedConnection is enabled"]
       13 GETIMPORT                        R2 K6 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R2 R1 K7 ["getThemeName"]
       18 CALL                             R2 0 1
       19 GETTABLEKS                       R3 R0 K8 ["themeName"]
       21 JUMPIFNOTEQ                      R2 R3 ; [+2]
       23 RETURN                           R0 0
       24 SETTABLEKS                       R2 R0 K8 ["themeName"]
       26 JUMPIFNOT                        R1 ; [+15]
       27 GETTABLEKS                       R3 R1 K0 ["themesList"]
       29 JUMPIFNOT                        R3 ; [+12]
       30 GETTABLEKS                       R6 R1 K0 ["themesList"]
       32 GETTABLE                         R5 R6 R2
       33 NAMECALL                         R3 R0 K9 ["extend"]
       35 CALL                             R3 2 0
       36 GETTABLEKS                       R3 R0 K10 ["valuesChanged"]
       38 MOVE                             R5 R0
       39 NAMECALL                         R3 R3 K11 ["Fire"]
       41 CALL                             R3 2 0
       42 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["__recalculateTheme"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Stylizer.new expects initialStyles parameter to be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       26 LOADK                            R4 K6 ["Stylizer.new expects themeProps parameter to be a table"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 GETTABLEKS                       R5 R1 K7 ["getThemeName"]
       32 FASTCALL1                        TYPE R5 ; [+2]
       33 GETIMPORT                        R4 K1 [type]
       35 CALL                             R4 1 1
       36 JUMPIFEQKS                       R4 K8 ["function"] ; [+2]
       38 LOADB                            R3 0 +1
       39 LOADB                            R3 1
       40 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       42 LOADK                            R4 K9 ["Stylizer.new expects themeProps to contain a function `getThemeName`"]
       43 GETIMPORT                        R2 K5 [assert]
       45 CALL                             R2 2 0
       46 GETUPVAL                         R2 0
       47 MOVE                             R4 R0
       48 NAMECALL                         R2 R2 K10 ["getStyleKeysTable"]
       50 CALL                             R2 2 1
       51 GETUPVAL                         R3 1
       52 MOVE                             R4 R0
       53 CALL                             R3 1 1
       54 GETUPVAL                         R4 0
       55 MOVE                             R6 R3
       56 LOADNIL                          R7
       57 LOADNIL                          R8
       58 MOVE                             R9 R2
       59 NAMECALL                         R4 R4 K11 ["convertStyleKeys"]
       61 CALL                             R4 5 1
       62 MOVE                             R3 R4
       63 DUPTABLE                         R4 K16 [{"__calculatedStyle", "__rawStyle", "valuesChanged", "themeName"}]
       64 SETTABLEKS                       R3 R4 K12 ["__calculatedStyle"]
       66 SETTABLEKS                       R0 R4 K13 ["__rawStyle"]
       68 GETUPVAL                         R5 2
       69 GETTABLEKS                       R5 R5 K17 ["new"]
       71 CALL                             R5 0 1
       72 SETTABLEKS                       R5 R4 K14 ["valuesChanged"]
       74 GETTABLEKS                       R5 R1 K7 ["getThemeName"]
       76 CALL                             R5 0 1
       77 SETTABLEKS                       R5 R4 K15 ["themeName"]
       79 GETUPVAL                         R7 0
       80 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       82 MOVE                             R6 R4
       83 GETIMPORT                        R5 K19 [setmetatable]
       85 CALL                             R5 2 0
       86 GETTABLEKS                       R5 R1 K20 ["themeChangedConnection"]
       88 JUMPIFNOT                        R5 ; [+10]
       89 GETTABLEKS                       R5 R1 K20 ["themeChangedConnection"]
       91 NEWCLOSURE                       R7 P0
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R1
       94 NAMECALL                         R5 R5 K21 ["Connect"]
       96 CALL                             R5 2 1
       97 SETTABLEKS                       R5 R4 K20 ["themeChangedConnection"]
       99 RETURN                           R4 1

PROTO_6:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K1 [ipairs]
        3 NEWTABLE                         R2 0 0
        5 GETVARARGS                       R4 -1
        6 SETLIST                          R2 R4 -1 [1]
        8 CALL                             R1 1 3
        9 FORGPREP_INEXT                   R1
       10 GETUPVAL                         R6 0
       11 MOVE                             R7 R5
       12 CALL                             R6 1 1
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K2 ["Dictionary"]
       16 GETTABLEKS                       R7 R7 K3 ["join"]
       18 GETTABLEKS                       R8 R0 K4 ["__rawStyle"]
       20 MOVE                             R9 R6
       21 CALL                             R7 2 1
       22 MOVE                             R10 R7
       23 NAMECALL                         R8 R0 K5 ["getStyleKeysTable"]
       25 CALL                             R8 2 1
       26 GETUPVAL                         R9 0
       27 MOVE                             R10 R7
       28 CALL                             R9 1 1
       29 SETTABLEKS                       R9 R0 K4 ["__rawStyle"]
       31 GETUPVAL                         R9 2
       32 MOVE                             R11 R7
       33 LOADNIL                          R12
       34 LOADNIL                          R13
       35 MOVE                             R14 R8
       36 NAMECALL                         R9 R9 K6 ["convertStyleKeys"]
       38 CALL                             R9 5 1
       39 SETTABLEKS                       R9 R0 K7 ["__calculatedStyle"]
       41 FORGLOOP                         R1 2 [inext] ; [-32]
       43 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["valuesChanged"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["themeChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["themeChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        2 MOVE                             R6 R1
        3 LOADK                            R7 K0 ["Style:convertStyleKeys expects 't' parameter"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 FASTCALL1                        TYPEOF R3 ; [+3]
        8 MOVE                             R7 R3
        9 GETIMPORT                        R6 K4 [typeof]
       11 CALL                             R6 1 1
       12 JUMPIFEQKS                       R6 K5 ["table"] ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 LOADK                            R6 K6 ["Style:convertStyleKeys expects 'parent' parameter to be a table, but got a %s"]
       17 GETIMPORT                        R9 K7 [table]
       19 FASTCALL1                        TYPEOF R9 ; [+2]
       20 GETIMPORT                        R8 K4 [typeof]
       22 CALL                             R8 1 1
       23 NAMECALL                         R6 R6 K8 ["format"]
       25 CALL                             R6 2 1
       26 JUMPIFEQKNIL                     R3 ; [+8]
       28 FASTCALL2                        ASSERT R5 R6 ; [+5]
       30 MOVE                             R8 R5
       31 MOVE                             R9 R6
       32 GETIMPORT                        R7 K2 [assert]
       34 CALL                             R7 2 0
       35 FASTCALL1                        TYPEOF R4 ; [+3]
       36 MOVE                             R7 R4
       37 GETIMPORT                        R6 K4 [typeof]
       39 CALL                             R6 1 1
       40 JUMPIFEQKS                       R6 K5 ["table"] ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 LOADK                            R6 K9 ["Style:convertStyleKeys expects 'styleKeysTable' parameter to be a table, but got a %s"]
       45 FASTCALL1                        TYPEOF R4 ; [+3]
       46 MOVE                             R9 R4
       47 GETIMPORT                        R8 K4 [typeof]
       49 CALL                             R8 1 1
       50 NAMECALL                         R6 R6 K8 ["format"]
       52 CALL                             R6 2 1
       53 JUMPIFEQKNIL                     R4 ; [+8]
       55 FASTCALL2                        ASSERT R5 R6 ; [+5]
       57 MOVE                             R8 R5
       58 MOVE                             R9 R6
       59 GETIMPORT                        R7 K2 [assert]
       61 CALL                             R7 2 0
       62 LOADNIL                          R5
       63 JUMPIFNOT                        R3 ; [+8]
       64 DUPTABLE                         R6 K12 [{"__index", "__styleName"}]
       65 SETTABLEKS                       R3 R6 K10 ["__index"]
       67 ORK                              R7 R2 K13 ["[unnamed style]"]
       68 SETTABLEKS                       R7 R6 K11 ["__styleName"]
       70 MOVE                             R5 R6
       71 JUMP                             ; [+8]
       72 DUPTABLE                         R6 K12 [{"__index", "__styleName"}]
       73 GETUPVAL                         R7 0
       74 SETTABLEKS                       R7 R6 K10 ["__index"]
       76 ORK                              R7 R2 K14 ["[Root Style]"]
       77 SETTABLEKS                       R7 R6 K11 ["__styleName"]
       79 MOVE                             R5 R6
       80 FASTCALL2                        SETMETATABLE R1 R5 ; [+5]
       82 MOVE                             R7 R1
       83 MOVE                             R8 R5
       84 GETIMPORT                        R6 K16 [setmetatable]
       86 CALL                             R6 2 1
       87 GETIMPORT                        R7 K18 [pairs]
       89 MOVE                             R8 R1
       90 CALL                             R7 1 3
       91 FORGPREP_NEXT                    R7
       92 LOADNIL                          R12
       93 FASTCALL1                        TYPE R11 ; [+3]
       94 MOVE                             R14 R11
       95 GETIMPORT                        R13 K20 [type]
       97 CALL                             R13 1 1
       98 JUMPIFNOTEQKS                    R13 K5 ["table"] ; [+49]
      100 FASTCALL1                        GETMETATABLE R11 ; [+3]
      101 MOVE                             R14 R11
      102 GETIMPORT                        R13 K22 [getmetatable]
      104 CALL                             R13 1 1
      105 GETUPVAL                         R14 1
      106 JUMPIFNOTEQ                      R13 R14 ; [+24]
      108 JUMPIFNOT                        R3 ; [+2]
      109 GETTABLE                         R13 R3 R11
      110 JUMPIF                           R13 ; [+18]
      111 JUMPIFNOT                        R4 ; [+7]
      112 FASTCALL1                        TOSTRING R11 ; [+3]
      113 MOVE                             R15 R11
      114 GETIMPORT                        R14 K24 [tostring]
      116 CALL                             R14 1 1
      117 GETTABLE                         R13 R4 R14
      118 JUMPIF                           R13 ; [+10]
      119 GETIMPORT                        R13 K26 [error]
      121 LOADK                            R14 K27 ["StyleKey %s defines no value @ key %s"]
      122 GETTABLEKS                       R16 R11 K28 ["name"]
      124 MOVE                             R17 R10
      125 NAMECALL                         R14 R14 K8 ["format"]
      127 CALL                             R14 3 -1
      128 CALL                             R13 -1 1
      129 MOVE                             R12 R13
      130 JUMP                             ; [+45]
      131 GETTABLEKS                       R14 R11 K29 ["render"]
      133 FASTCALL1                        TYPE R14 ; [+2]
      134 GETIMPORT                        R13 K20 [type]
      136 CALL                             R13 1 1
      137 JUMPIFEQKS                       R13 K30 ["function"] ; [+38]
      139 MOVE                             R15 R11
      140 MOVE                             R16 R10
      141 MOVE                             R17 R6
      142 MOVE                             R18 R4
      143 NAMECALL                         R13 R0 K31 ["convertStyleKeys"]
      145 CALL                             R13 5 1
      146 MOVE                             R12 R13
      147 JUMP                             ; [+28]
      148 FASTCALL1                        TYPE R11 ; [+3]
      149 MOVE                             R14 R11
      150 GETIMPORT                        R13 K20 [type]
      152 CALL                             R13 1 1
      153 JUMPIFNOTEQKS                    R13 K30 ["function"] ; [+22]
      155 MOVE                             R13 R11
      156 MOVE                             R14 R6
      157 CALL                             R13 1 1
      158 JUMPIF                           R13 ; [+2]
      159 NEWTABLE                         R13 0 0
      161 FASTCALL1                        TYPE R13 ; [+3]
      162 MOVE                             R15 R13
      163 GETIMPORT                        R14 K20 [type]
      165 CALL                             R14 1 1
      166 JUMPIFNOTEQKS                    R14 K5 ["table"] ; [+9]
      168 MOVE                             R16 R13
      169 MOVE                             R17 R10
      170 MOVE                             R18 R6
      171 MOVE                             R19 R4
      172 NAMECALL                         R14 R0 K31 ["convertStyleKeys"]
      174 CALL                             R14 5 1
      175 MOVE                             R12 R14
      176 JUMPIFNOT                        R12 ; [+8]
      177 FASTCALL3                        RAWSET R6 R10 R12
      179 MOVE                             R14 R6
      180 MOVE                             R15 R10
      181 MOVE                             R16 R12
      182 GETIMPORT                        R13 K33 [rawset]
      184 CALL                             R13 3 0
      185 FORGLOOP                         R7 2 ; [-94]
      187 RETURN                           R6 1

PROTO_10:
        0 LOADNIL                          R1
        1 FASTCALL1                        GETMETATABLE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [getmetatable]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+29]
        7 GETTABLEKS                       R3 R2 K2 ["__styleName"]
        9 JUMPIFNOT                        R3 ; [+26]
       10 JUMPIFNOT                        R1 ; [+15]
       11 GETTABLEKS                       R7 R2 K2 ["__styleName"]
       13 FASTCALL1                        TOSTRING R7 ; [+2]
       14 GETIMPORT                        R6 K4 [tostring]
       16 CALL                             R6 1 1
       17 MOVE                             R3 R6
       18 LOADK                            R4 K5 ["-->"]
       19 FASTCALL1                        TOSTRING R1 ; [+3]
       20 MOVE                             R6 R1
       21 GETIMPORT                        R5 K4 [tostring]
       23 CALL                             R5 1 1
       24 CONCAT                           R1 R3 R5
       25 JUMP                             ; [+2]
       26 GETTABLEKS                       R1 R2 K2 ["__styleName"]
       28 GETTABLEKS                       R4 R2 K6 ["__index"]
       30 FASTCALL1                        GETMETATABLE R4 ; [+2]
       31 GETIMPORT                        R3 K1 [getmetatable]
       33 CALL                             R3 1 1
       34 MOVE                             R2 R3
       35 JUMPBACK                         ; [-30]
       36 ORK                              R3 R1 K7 [""]
       37 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 JUMPIF                           R3 ; [+2]
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R4 3
        7 NAMECALL                         R0 R0 K0 ["get"]
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETTABLEKS                       R0 R0 K0 ["valuesChanged"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R0 R0 K1 ["Connect"]
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useContext"]
        3 GETTABLEKS                       R5 R0 K1 ["Context"]
        5 CALL                             R4 1 1
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R3
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K2 ["useState"]
       14 MOVE                             R7 R5
       15 CALL                             R6 1 2
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K3 ["useEffect"]
       19 NEWCLOSURE                       R9 P1
       20 CAPTURE                          VAL R7
       21 CAPTURE                          VAL R5
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R10 0 3
       25 MOVE                             R11 R1
       26 MOVE                             R12 R3
       27 JUMPIFNOT                        R2 ; [+3]
       28 GETTABLEKS                       R13 R2 K4 ["Style"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R13
       32 SETLIST                          R10 R11 3 [1]
       34 CALL                             R8 2 0
       35 RETURN                           R6 1

PROTO_16:
        0 GETTABLEKS                       R4 R2 K0 ["Style"]
        2 GETTABLEKS                       R5 R0 K1 ["__calculatedStyle"]
        4 GETUPVAL                         R7 0
        5 GETTABLE                         R6 R7 R1
        6 JUMPIF                           R5 ; [+10]
        7 GETIMPORT                        R7 K3 [error]
        9 LOADK                            R9 K4 ["Style:getConsumerItem() is unable to find the Style in context of %*"]
       10 MOVE                             R11 R1
       11 NAMECALL                         R9 R9 K5 ["format"]
       13 CALL                             R9 2 1
       14 MOVE                             R8 R9
       15 CALL                             R7 1 0
       16 RETURN                           R0 1
       17 LOADNIL                          R7
       18 JUMPIFNOT                        R4 ; [+33]
       19 FASTCALL1                        TYPEOF R4 ; [+3]
       20 MOVE                             R9 R4
       21 GETIMPORT                        R8 K7 [typeof]
       23 CALL                             R8 1 1
       24 JUMPIFNOTEQKS                    R8 K8 ["table"] ; [+13]
       26 DUPTABLE                         R10 K10 [{"__index"}]
       27 GETUPVAL                         R11 1
       28 SETTABLEKS                       R11 R10 K9 ["__index"]
       30 FASTCALL2                        SETMETATABLE R4 R10 ; [+4]
       32 MOVE                             R9 R4
       33 GETIMPORT                        R8 K12 [setmetatable]
       35 CALL                             R8 2 1
       36 MOVE                             R7 R8
       37 JUMP                             ; [+14]
       38 FASTCALL1                        TYPEOF R4 ; [+3]
       39 MOVE                             R9 R4
       40 GETIMPORT                        R8 K7 [typeof]
       42 CALL                             R8 1 1
       43 JUMPIFNOTEQKS                    R8 K13 ["string"] ; [+8]
       45 MOVE                             R10 R4
       46 MOVE                             R11 R5
       47 MOVE                             R12 R6
       48 NAMECALL                         R8 R0 K14 ["__getClassStyle"]
       50 CALL                             R8 4 1
       51 MOVE                             R7 R8
       52 MOVE                             R8 R7
       53 JUMPIF                           R8 ; [+5]
       54 GETTABLE                         R8 R5 R6
       55 JUMPIF                           R8 ; [+3]
       56 MOVE                             R8 R5
       57 JUMPIF                           R8 ; [+1]
       58 MOVE                             R8 R0
       59 MOVE                             R7 R8
       60 JUMPIFNOT                        R3 ; [+2]
       61 GETTABLE                         R8 R7 R3
       62 JUMP                             ; [+1]
       63 LOADNIL                          R8
       64 JUMPIFNOT                        R3 ; [+37]
       65 JUMPIFNOT                        R8 ; [+36]
       66 DUPTABLE                         R11 K10 [{"__index"}]
       67 SETTABLEKS                       R7 R11 K9 ["__index"]
       69 FASTCALL2                        SETMETATABLE R8 R11 ; [+4]
       71 MOVE                             R10 R8
       72 GETIMPORT                        R9 K12 [setmetatable]
       74 CALL                             R9 2 0
       75 GETIMPORT                        R9 K16 [pairs]
       77 MOVE                             R10 R8
       78 CALL                             R9 1 3
       79 FORGPREP_NEXT                    R9
       80 FASTCALL1                        TYPEOF R13 ; [+3]
       81 MOVE                             R15 R13
       82 GETIMPORT                        R14 K7 [typeof]
       84 CALL                             R14 1 1
       85 JUMPIFNOTEQKS                    R14 K8 ["table"] ; [+13]
       87 GETTABLE                         R14 R7 R12
       88 JUMPIFNOT                        R14 ; [+10]
       89 DUPTABLE                         R16 K10 [{"__index"}]
       90 GETTABLE                         R17 R7 R12
       91 SETTABLEKS                       R17 R16 K9 ["__index"]
       93 FASTCALL2                        SETMETATABLE R13 R16 ; [+4]
       95 MOVE                             R15 R13
       96 GETIMPORT                        R14 K12 [setmetatable]
       98 CALL                             R14 2 0
       99 FORGLOOP                         R9 2 ; [-20]
      101 MOVE                             R7 R8
      102 RETURN                           R7 1

PROTO_17:
        0 GETTABLEKS                       R2 R1 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Style"]
        4 GETTABLEKS                       R3 R0 K2 ["__calculatedStyle"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R6 R1 K3 ["__componentName"]
        9 GETTABLE                         R4 R5 R6
       10 JUMPIF                           R3 ; [+11]
       11 LOADB                            R6 0
       12 LOADK                            R8 K4 ["Style:getConsumerItem() is unable to find the Style in context of "]
       13 GETTABLEKS                       R9 R1 K3 ["__componentName"]
       15 CONCAT                           R7 R8 R9
       16 FASTCALL2                        ASSERT R6 R7 ; [+3]
       18 GETIMPORT                        R5 K6 [assert]
       20 CALL                             R5 2 0
       21 RETURN                           R0 1
       22 LOADNIL                          R5
       23 JUMPIFNOT                        R2 ; [+33]
       24 FASTCALL1                        TYPE R2 ; [+3]
       25 MOVE                             R7 R2
       26 GETIMPORT                        R6 K8 [type]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K9 ["table"] ; [+13]
       31 DUPTABLE                         R8 K11 [{"__index"}]
       32 GETUPVAL                         R9 1
       33 SETTABLEKS                       R9 R8 K10 ["__index"]
       35 FASTCALL2                        SETMETATABLE R2 R8 ; [+4]
       37 MOVE                             R7 R2
       38 GETIMPORT                        R6 K13 [setmetatable]
       40 CALL                             R6 2 1
       41 MOVE                             R5 R6
       42 JUMP                             ; [+14]
       43 FASTCALL1                        TYPE R2 ; [+3]
       44 MOVE                             R7 R2
       45 GETIMPORT                        R6 K8 [type]
       47 CALL                             R6 1 1
       48 JUMPIFNOTEQKS                    R6 K14 ["string"] ; [+8]
       50 MOVE                             R8 R2
       51 MOVE                             R9 R3
       52 MOVE                             R10 R4
       53 NAMECALL                         R6 R0 K15 ["__getClassStyle"]
       55 CALL                             R6 4 1
       56 MOVE                             R5 R6
       57 MOVE                             R6 R5
       58 JUMPIF                           R6 ; [+5]
       59 GETTABLE                         R6 R3 R4
       60 JUMPIF                           R6 ; [+3]
       61 MOVE                             R6 R3
       62 JUMPIF                           R6 ; [+1]
       63 MOVE                             R6 R0
       64 MOVE                             R5 R6
       65 GETTABLEKS                       R7 R1 K16 ["state"]
       67 FASTCALL1                        GETMETATABLE R7 ; [+2]
       68 GETIMPORT                        R6 K18 [getmetatable]
       70 CALL                             R6 1 1
       71 MOVE                             R7 R6
       72 JUMPIFNOT                        R7 ; [+9]
       73 FASTCALL1                        TOSTRING R6 ; [+3]
       74 MOVE                             R9 R6
       75 GETIMPORT                        R8 K20 [tostring]
       77 CALL                             R8 1 1
       78 JUMPIFEQKS                       R8 K21 ["UninitializedState"] ; [+2]
       80 LOADB                            R7 0 +1
       81 LOADB                            R7 1
       82 GETTABLEKS                       R8 R1 K0 ["props"]
       84 GETTABLEKS                       R8 R8 K22 ["StyleModifier"]
       86 JUMPIF                           R8 ; [+7]
       87 JUMPIFNOT                        R7 ; [+2]
       88 LOADNIL                          R8
       89 JUMP                             ; [+4]
       90 GETTABLEKS                       R8 R1 K16 ["state"]
       92 GETTABLEKS                       R8 R8 K22 ["StyleModifier"]
       94 GETTABLE                         R9 R5 R8
       95 JUMPIFNOT                        R8 ; [+37]
       96 JUMPIFNOT                        R9 ; [+36]
       97 DUPTABLE                         R12 K11 [{"__index"}]
       98 SETTABLEKS                       R5 R12 K10 ["__index"]
      100 FASTCALL2                        SETMETATABLE R9 R12 ; [+4]
      102 MOVE                             R11 R9
      103 GETIMPORT                        R10 K13 [setmetatable]
      105 CALL                             R10 2 0
      106 GETIMPORT                        R10 K24 [pairs]
      108 MOVE                             R11 R9
      109 CALL                             R10 1 3
      110 FORGPREP_NEXT                    R10
      111 FASTCALL1                        TYPE R14 ; [+3]
      112 MOVE                             R16 R14
      113 GETIMPORT                        R15 K8 [type]
      115 CALL                             R15 1 1
      116 JUMPIFNOTEQKS                    R15 K9 ["table"] ; [+13]
      118 GETTABLE                         R15 R5 R13
      119 JUMPIFNOT                        R15 ; [+10]
      120 DUPTABLE                         R17 K11 [{"__index"}]
      121 GETTABLE                         R18 R5 R13
      122 SETTABLEKS                       R18 R17 K10 ["__index"]
      124 FASTCALL2                        SETMETATABLE R14 R17 ; [+4]
      126 MOVE                             R16 R14
      127 GETIMPORT                        R15 K13 [setmetatable]
      129 CALL                             R15 2 0
      130 FORGLOOP                         R10 2 ; [-20]
      132 MOVE                             R5 R9
      133 RETURN                           R5 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 NAMECALL                         R0 R0 K0 ["__recalculateTheme"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETTABLEKS                       R4 R1 K1 ["themeChangedConnection"]
        8 JUMPIFNOT                        R4 ; [+16]
        9 GETTABLEKS                       R4 R3 K1 ["themeChangedConnection"]
       11 NAMECALL                         R4 R4 K2 ["Disconnect"]
       13 CALL                             R4 1 0
       14 GETTABLEKS                       R4 R1 K1 ["themeChangedConnection"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R4 R4 K3 ["Connect"]
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K1 ["themeChangedConnection"]
       25 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Style"]
       20 GETTABLEKS                       R3 R3 K9 ["ComponentSymbols"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Style"]
       27 GETTABLEKS                       R4 R4 K10 ["StyleKey"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R5 R0 K2 ["UI"]
       34 GETTABLEKS                       R5 R5 K11 ["ContextServices"]
       36 GETTABLEKS                       R5 R5 K12 ["ContextItem"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K6 [require]
       41 GETTABLEKS                       R6 R0 K13 ["Util"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K14 ["deepCopy"]
       46 GETTABLEKS                       R7 R5 K15 ["React"]
       48 GETTABLEKS                       R8 R5 K16 ["Signal"]
       50 LOADK                            R11 K17 ["Stylizer"]
       51 NAMECALL                         R9 R4 K18 ["extend"]
       53 CALL                             R9 2 1
       54 DUPCLOSURE                       R10 K19 [PROTO_0]
       55 DUPCLOSURE                       R11 K20 [PROTO_1]
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R11 R9 K21 ["getStyleKeysTable"]
       59 DUPCLOSURE                       R11 K22 [PROTO_2]
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R11 R9 K23 ["__getClassStyle"]
       63 DUPCLOSURE                       R11 K24 [PROTO_3]
       64 SETTABLEKS                       R11 R9 K25 ["__recalculateTheme"]
       66 DUPCLOSURE                       R11 K26 [PROTO_5]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R8
       70 SETTABLEKS                       R11 R9 K27 ["new"]
       72 DUPCLOSURE                       R11 K28 [PROTO_6]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R9
       76 SETTABLEKS                       R11 R9 K18 ["extend"]
       78 DUPCLOSURE                       R11 K29 [PROTO_7]
       79 SETTABLEKS                       R11 R9 K30 ["getSignal"]
       81 DUPCLOSURE                       R11 K31 [PROTO_8]
       82 SETTABLEKS                       R11 R9 K32 ["destroy"]
       84 DUPCLOSURE                       R11 K33 [PROTO_9]
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R3
       87 SETTABLEKS                       R11 R9 K34 ["convertStyleKeys"]
       89 DUPCLOSURE                       R11 K35 [PROTO_10]
       90 SETTABLEKS                       R11 R9 K36 ["getPathString"]
       92 JUMPIFEQKS                       R7 K37 [""] ; [+10]
       94 DUPCLOSURE                       R11 K38 [PROTO_15]
       95 CAPTURE                          VAL R7
       96 SETTABLEKS                       R11 R9 K39 ["use"]
       98 DUPCLOSURE                       R11 K40 [PROTO_16]
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R9
      101 SETTABLEKS                       R11 R9 K41 ["get"]
      103 DUPCLOSURE                       R11 K42 [PROTO_17]
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R9
      106 SETTABLEKS                       R11 R9 K43 ["getConsumerItem"]
      108 DUPCLOSURE                       R11 K44 [PROTO_19]
      109 CAPTURE                          VAL R9
      110 SETTABLEKS                       R11 R9 K45 ["mock"]
      112 RETURN                           R9 1
