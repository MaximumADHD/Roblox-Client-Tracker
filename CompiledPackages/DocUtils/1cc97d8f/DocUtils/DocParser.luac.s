PROTO_0:
        0 GETIMPORT                        R0 K1 [script]
        2 GETTABLEKS                       R0 R0 K2 ["Source"]
        4 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R3 K3 [{[1] = , ["script"] = }]
        1 GETUPVAL                         R4 0
        2 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        4 GETIMPORT                        R2 K5 [setmetatable]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R3 R1 K6 ["Name"]
        9 LOADK                            R5 K7 ["(%w+)%.story"]
       10 NAMECALL                         R3 R3 K8 ["match"]
       12 CALL                             R3 2 1
       13 JUMPIFNOTEQKNIL                  R3 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 JUMPIF                           R4 ; [+2]
       18 GETTABLEKS                       R3 R1 K6 ["Name"]
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       26 LOADK                            R7 K9 ["Component name cannot be nil in this codepath"]
       27 GETIMPORT                        R5 K11 [assert]
       29 CALL                             R5 2 0
       30 FASTCALL1                        TOSTRING R0 ; [+3]
       31 MOVE                             R6 R0
       32 GETIMPORT                        R5 K13 [tostring]
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R2 K0 ["name"]
       37 JUMPIFNOT                        R4 ; [+95]
       38 GETUPVAL                         R5 1
       39 JUMPIF                           R5 ; [+1]
       40 RETURN                           R2 1
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K14 ["findFileInstanceForImport"]
       44 MOVE                             R6 R1
       45 MOVE                             R7 R3
       46 CALL                             R5 2 1
       47 JUMPIFNOTEQKNIL                  R5 ; [+24]
       49 GETTABLEKS                       R8 R1 K15 ["Parent"]
       51 JUMPIFNOTEQKNIL                  R8 ; [+2]
       53 LOADB                            R7 0 +1
       54 LOADB                            R7 1
       55 FASTCALL2K                       ASSERT R7 K16 ; [+4]
       57 LOADK                            R8 K16 ["Story file cannot be orphaned"]
       58 GETIMPORT                        R6 K11 [assert]
       60 CALL                             R6 2 0
       61 GETTABLEKS                       R6 R1 K15 ["Parent"]
       63 GETTABLEKS                       R3 R6 K6 ["Name"]
       65 GETUPVAL                         R6 2
       66 GETTABLEKS                       R6 R6 K14 ["findFileInstanceForImport"]
       68 MOVE                             R7 R1
       69 MOVE                             R8 R3
       70 CALL                             R6 2 1
       71 MOVE                             R5 R6
       72 JUMPIFNOTEQKNIL                  R5 ; [+9]
       74 GETIMPORT                        R6 K18 [print]
       76 LOADK                            R8 K19 ["😞 Unable to find component file associated with "]
       77 GETTABLEKS                       R9 R1 K6 ["Name"]
       79 CONCAT                           R7 R8 R9
       80 CALL                             R6 1 0
       81 RETURN                           R2 1
       82 GETUPVAL                         R6 0
       83 GETTABLEKS                       R6 R6 K20 ["_type"]
       85 MOVE                             R7 R5
       86 CALL                             R6 1 1
       87 JUMPIFNOTEQKS                    R6 K21 ["table"] ; [+12]
       89 GETIMPORT                        R6 K18 [print]
       91 LOADK                            R8 K22 ["🪑 Found table "]
       92 GETTABLEKS                       R9 R5 K6 ["Name"]
       94 LOADK                            R10 K23 [" instead of instance for "]
       95 GETTABLEKS                       R11 R1 K6 ["Name"]
       97 CONCAT                           R7 R8 R11
       98 CALL                             R6 1 0
       99 RETURN                           R2 1
      100 LOADK                            R8 K24 ["Folder"]
      101 NAMECALL                         R6 R5 K25 ["IsA"]
      103 CALL                             R6 2 1
      104 JUMPIFNOT                        R6 ; [+20]
      105 MOVE                             R8 R3
      106 NAMECALL                         R6 R5 K26 ["FindFirstChild"]
      108 CALL                             R6 2 1
      109 JUMPIFNOTEQKNIL                  R6 ; [+14]
      111 GETIMPORT                        R7 K18 [print]
      113 LOADK                            R9 K27 ["📁 Found folder "]
      114 NAMECALL                         R13 R5 K28 ["GetFullName"]
      116 CALL                             R13 1 1
      117 MOVE                             R10 R13
      118 LOADK                            R11 K23 [" instead of instance for "]
      119 GETTABLEKS                       R12 R1 K6 ["Name"]
      121 CONCAT                           R8 R9 R12
      122 CALL                             R7 1 0
      123 JUMP                             ; [+1]
      124 MOVE                             R5 R6
      125 LOADK                            R8 K29 ["ModuleScript"]
      126 NAMECALL                         R6 R5 K25 ["IsA"]
      128 CALL                             R6 2 1
      129 JUMPIFNOT                        R6 ; [+5]
      130 SETTABLEKS                       R5 R2 K2 ["script"]
      132 RETURN                           R2 1
      133 SETTABLEKS                       R1 R2 K2 ["script"]
      135 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R1 K4 [{[1] = , ["Inherits"] = , ["Typechecking"] = }]
        1 GETTABLEKS                       R2 R0 K5 ["script"]
        3 JUMPIFEQKNIL                     R2 ; [+3]
        5 GETUPVAL                         R3 0
        6 JUMPIF                           R3 ; [+1]
        7 RETURN                           R1 1
        8 GETTABLEKS                       R3 R2 K6 ["Source"]
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 GETIMPORT                        R6 K9 [string.find]
       14 MOVE                             R7 R3
       15 LOADK                            R8 K10 ["t%.s?t?r?i?c?t?[iI]nterface"]
       16 CALL                             R6 2 1
       17 JUMPIFNOT                        R6 ; [+13]
       18 LOADK                            R4 K11 [".validateProps%s+=%s+t%.s?t?r?i?c?t?[iI]nterface%(%{\n(.-)\n%}%)"]
       19 GETTABLEKS                       R6 R2 K12 ["Name"]
       21 LOADK                            R7 K13 ["%.defaultProps"]
       22 LOADK                            R8 K14 ["%s+=%s+%{\n(.-)\n%}"]
       23 CONCAT                           R5 R6 R8
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K15 ["Typecheckers"]
       27 GETTABLEKS                       R6 R6 K16 ["T"]
       29 SETTABLEKS                       R6 R1 K3 ["Typechecking"]
       31 LOADK                            R7 K17 ["local function "]
       32 GETTABLEKS                       R8 R2 K12 ["Name"]
       34 LOADK                            R9 K18 ["%(%w-[pP]rops: (%w+)"]
       35 CONCAT                           R6 R7 R9
       36 GETIMPORT                        R7 K20 [string.match]
       38 MOVE                             R8 R3
       39 MOVE                             R9 R6
       40 CALL                             R7 2 1
       41 JUMPIFNOT                        R7 ; [+24]
       42 LOADK                            R8 K21 ["type%s+"]
       43 MOVE                             R9 R7
       44 LOADK                            R10 K14 ["%s+=%s+%{\n(.-)\n%}"]
       45 CONCAT                           R4 R8 R10
       46 GETIMPORT                        R8 K9 [string.find]
       48 MOVE                             R9 R3
       49 MOVE                             R11 R4
       50 LOADK                            R12 K22 [" %& (.-)\n"]
       51 CONCAT                           R10 R11 R12
       52 CALL                             R8 2 1
       53 JUMPIFNOT                        R8 ; [+3]
       54 MOVE                             R8 R4
       55 LOADK                            R9 K22 [" %& (.-)\n"]
       56 CONCAT                           R4 R8 R9
       57 LOADK                            R5 K23 ["defaultProps:?%s*%w*%s+=%s+%{\n(.-)\n%}"]
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R8 R8 K15 ["Typecheckers"]
       61 GETTABLEKS                       R8 R8 K24 ["Luau"]
       63 SETTABLEKS                       R8 R1 K3 ["Typechecking"]
       65 JUMP                             ; [+10]
       66 JUMPIFNOTEQKNIL                  R4 ; [+9]
       68 GETIMPORT                        R8 K26 [print]
       70 LOADK                            R10 K27 ["📝 Unable to find props definition in "]
       71 GETTABLEKS                       R11 R2 K12 ["Name"]
       73 CONCAT                           R9 R10 R11
       74 CALL                             R8 1 0
       75 RETURN                           R1 1
       76 GETIMPORT                        R8 K20 [string.match]
       78 MOVE                             R9 R3
       79 MOVE                             R10 R4
       80 CALL                             R8 2 2
       81 JUMPIF                           R8 ; [+40]
       82 JUMPIFNOT                        R7 ; [+39]
       83 GETTABLEKS                       R10 R2 K28 ["Parent"]
       85 JUMPIFNOT                        R10 ; [+36]
       86 GETTABLEKS                       R10 R2 K28 ["Parent"]
       88 LOADK                            R12 K29 ["Types"]
       89 NAMECALL                         R10 R10 K30 ["FindFirstChild"]
       91 CALL                             R10 2 1
       92 JUMPIFNOT                        R10 ; [+29]
       93 LOADK                            R13 K31 ["ModuleScript"]
       94 NAMECALL                         R11 R10 K32 ["IsA"]
       96 CALL                             R11 2 1
       97 JUMPIFNOT                        R11 ; [+24]
       98 GETTABLEKS                       R11 R10 K6 ["Source"]
      100 LOADK                            R13 K33 ["export type "]
      101 MOVE                             R14 R7
      102 LOADK                            R15 K14 ["%s+=%s+%{\n(.-)\n%}"]
      103 CONCAT                           R12 R13 R15
      104 GETIMPORT                        R13 K9 [string.find]
      106 MOVE                             R14 R11
      107 MOVE                             R16 R12
      108 LOADK                            R17 K22 [" %& (.-)\n"]
      109 CONCAT                           R15 R16 R17
      110 CALL                             R13 2 1
      111 JUMPIFNOT                        R13 ; [+3]
      112 MOVE                             R13 R12
      113 LOADK                            R14 K22 [" %& (.-)\n"]
      114 CONCAT                           R12 R13 R14
      115 GETIMPORT                        R13 K20 [string.match]
      117 MOVE                             R14 R11
      118 MOVE                             R15 R12
      119 CALL                             R13 2 2
      120 MOVE                             R8 R13
      121 MOVE                             R9 R14
      122 GETIMPORT                        R10 K20 [string.match]
      124 MOVE                             R11 R3
      125 MOVE                             R12 R5
      126 CALL                             R10 2 1
      127 GETTABLEKS                       R11 R1 K3 ["Typechecking"]
      129 JUMPIFNOT                        R11 ; [+1]
      130 JUMPIF                           R8 ; [+8]
      131 GETIMPORT                        R11 K26 [print]
      133 LOADK                            R13 K34 ["💔 Couldn't find props for "]
      134 GETTABLEKS                       R14 R2 K12 ["Name"]
      136 CONCAT                           R12 R13 R14
      137 CALL                             R11 1 0
      138 JUMP                             ; [+10]
      139 GETUPVAL                         R11 2
      140 GETTABLEKS                       R11 R11 K35 ["parseProps"]
      142 GETTABLEKS                       R12 R1 K3 ["Typechecking"]
      144 MOVE                             R13 R8
      145 MOVE                             R14 R10
      146 CALL                             R11 3 1
      147 SETTABLEKS                       R11 R1 K0 ["Props"]
      149 JUMPIFNOT                        R9 ; [+7]
      150 GETIMPORT                        R11 K37 [string.split]
      152 MOVE                             R12 R9
      153 LOADK                            R13 K38 [" & "]
      154 CALL                             R11 2 1
      155 SETTABLEKS                       R11 R1 K2 ["Inherits"]
      157 NEWTABLE                         R11 0 0
      159 GETIMPORT                        R12 K40 [string.gmatch]
      161 MOVE                             R13 R3
      162 LOADK                            R14 K41 ["R[oe]act%.createElement%(%s*([%w%.]+)%s*,"]
      163 CALL                             R12 2 3
      164 FORGPREP                         R12
      165 LOADB                            R17 1
      166 SETTABLE                         R17 R11 R15
      167 FORGLOOP                         R12 1 ; [-3]
      169 GETUPVAL                         R12 3
      170 GETTABLEKS                       R12 R12 K42 ["Dictionary"]
      172 GETTABLEKS                       R12 R12 K43 ["keys"]
      174 MOVE                             R13 R11
      175 CALL                             R12 1 1
      176 SETTABLEKS                       R12 R1 K44 ["Components"]
      178 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Types"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["FileUtils"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["PropParser"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K3 [script]
       30 GETTABLEKS                       R3 R3 K4 ["Parent"]
       32 GETTABLEKS                       R3 R3 K4 ["Parent"]
       34 GETIMPORT                        R4 K1 [require]
       36 GETTABLEKS                       R5 R3 K8 ["Cryo"]
       38 CALL                             R4 1 1
       39 NEWTABLE                         R5 4 0
       41 SETTABLEKS                       R5 R5 K9 ["__index"]
       43 GETIMPORT                        R6 K11 [pcall]
       45 DUPCLOSURE                       R7 K12 [PROTO_0]
       46 CALL                             R6 1 2
       47 JUMPIF                           R6 ; [+4]
       48 GETIMPORT                        R8 K14 [warn]
       50 LOADK                            R9 K15 ["🔌 DocParser is being used in a mode that cannot access script source. Features relying on access to plugin source may not function as expected."]
       51 CALL                             R8 1 0
       52 DUPCLOSURE                       R8 K16 [PROTO_1]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R8 R5 K17 ["new"]
       58 DUPCLOSURE                       R8 K18 [PROTO_2]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R8 R5 K19 ["parse"]
       65 DUPCLOSURE                       R8 K20 [PROTO_3]
       66 SETTABLEKS                       R8 R5 K21 ["_type"]
       68 RETURN                           R5 1
