PROTO_0:
        0 GETIMPORT                        R1 K1 [script]
        2 GETTABLEKS                       R0 R1 K2 ["Source"]
        4 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R3 K2 [{"name", "script"}]
        1 LOADNIL                          R4
        2 SETTABLEKS                       R4 R3 K0 ["name"]
        4 LOADNIL                          R4
        5 SETTABLEKS                       R4 R3 K1 ["script"]
        7 GETUPVAL                         R4 0
        8 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       10 GETIMPORT                        R2 K4 [setmetatable]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R3 R1 K5 ["Name"]
       15 LOADK                            R5 K6 ["(%w+)%.story"]
       16 NAMECALL                         R3 R3 K7 ["match"]
       18 CALL                             R3 2 1
       19 JUMPIFNOTEQKNIL                  R3 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 JUMPIF                           R4 ; [+2]
       24 GETTABLEKS                       R3 R1 K5 ["Name"]
       26 JUMPIFNOTEQKNIL                  R3 ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       32 LOADK                            R7 K8 ["Component name cannot be nil in this codepath"]
       33 GETIMPORT                        R5 K10 [assert]
       35 CALL                             R5 2 0
       36 FASTCALL1                        TOSTRING R0 ; [+3]
       37 MOVE                             R6 R0
       38 GETIMPORT                        R5 K12 [tostring]
       40 CALL                             R5 1 1
       41 SETTABLEKS                       R5 R2 K0 ["name"]
       43 JUMPIFNOT                        R4 ; [+95]
       44 GETUPVAL                         R5 1
       45 JUMPIF                           R5 ; [+1]
       46 RETURN                           R2 1
       47 GETUPVAL                         R6 2
       48 GETTABLEKS                       R5 R6 K13 ["findFileInstanceForImport"]
       50 MOVE                             R6 R1
       51 MOVE                             R7 R3
       52 CALL                             R5 2 1
       53 JUMPIFNOTEQKNIL                  R5 ; [+24]
       55 GETTABLEKS                       R8 R1 K14 ["Parent"]
       57 JUMPIFNOTEQKNIL                  R8 ; [+2]
       59 LOADB                            R7 0 +1
       60 LOADB                            R7 1
       61 FASTCALL2K                       ASSERT R7 K15 ; [+4]
       63 LOADK                            R8 K15 ["Story file cannot be orphaned"]
       64 GETIMPORT                        R6 K10 [assert]
       66 CALL                             R6 2 0
       67 GETTABLEKS                       R6 R1 K14 ["Parent"]
       69 GETTABLEKS                       R3 R6 K5 ["Name"]
       71 GETUPVAL                         R7 2
       72 GETTABLEKS                       R6 R7 K13 ["findFileInstanceForImport"]
       74 MOVE                             R7 R1
       75 MOVE                             R8 R3
       76 CALL                             R6 2 1
       77 MOVE                             R5 R6
       78 JUMPIFNOTEQKNIL                  R5 ; [+9]
       80 GETIMPORT                        R6 K17 [print]
       82 LOADK                            R8 K18 ["😞 Unable to find component file associated with "]
       83 GETTABLEKS                       R9 R1 K5 ["Name"]
       85 CONCAT                           R7 R8 R9
       86 CALL                             R6 1 0
       87 RETURN                           R2 1
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R6 R7 K19 ["_type"]
       91 MOVE                             R7 R5
       92 CALL                             R6 1 1
       93 JUMPIFNOTEQKS                    R6 K20 ["table"] ; [+12]
       95 GETIMPORT                        R6 K17 [print]
       97 LOADK                            R8 K21 ["🪑 Found table "]
       98 GETTABLEKS                       R9 R5 K5 ["Name"]
      100 LOADK                            R10 K22 [" instead of instance for "]
      101 GETTABLEKS                       R11 R1 K5 ["Name"]
      103 CONCAT                           R7 R8 R11
      104 CALL                             R6 1 0
      105 RETURN                           R2 1
      106 LOADK                            R8 K23 ["Folder"]
      107 NAMECALL                         R6 R5 K24 ["IsA"]
      109 CALL                             R6 2 1
      110 JUMPIFNOT                        R6 ; [+20]
      111 MOVE                             R8 R3
      112 NAMECALL                         R6 R5 K25 ["FindFirstChild"]
      114 CALL                             R6 2 1
      115 JUMPIFNOTEQKNIL                  R6 ; [+14]
      117 GETIMPORT                        R7 K17 [print]
      119 LOADK                            R9 K26 ["📁 Found folder "]
      120 NAMECALL                         R13 R5 K27 ["GetFullName"]
      122 CALL                             R13 1 1
      123 MOVE                             R10 R13
      124 LOADK                            R11 K22 [" instead of instance for "]
      125 GETTABLEKS                       R12 R1 K5 ["Name"]
      127 CONCAT                           R8 R9 R12
      128 CALL                             R7 1 0
      129 JUMP                             ; [+1]
      130 MOVE                             R5 R6
      131 LOADK                            R8 K28 ["ModuleScript"]
      132 NAMECALL                         R6 R5 K24 ["IsA"]
      134 CALL                             R6 2 1
      135 JUMPIFNOT                        R6 ; [+5]
      136 SETTABLEKS                       R5 R2 K1 ["script"]
      138 RETURN                           R2 1
      139 SETTABLEKS                       R1 R2 K1 ["script"]
      141 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R1 K3 [{"Props", "Inherits", "Typechecking"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["Props"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["Inherits"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K2 ["Typechecking"]
       10 GETTABLEKS                       R2 R0 K4 ["script"]
       12 JUMPIFEQKNIL                     R2 ; [+3]
       14 GETUPVAL                         R3 0
       15 JUMPIF                           R3 ; [+1]
       16 RETURN                           R1 1
       17 GETTABLEKS                       R3 R2 K5 ["Source"]
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 GETIMPORT                        R6 K8 [string.find]
       23 MOVE                             R7 R3
       24 LOADK                            R8 K9 ["t%.s?t?r?i?c?t?[iI]nterface"]
       25 CALL                             R6 2 1
       26 JUMPIFNOT                        R6 ; [+13]
       27 LOADK                            R4 K10 [".validateProps%s+=%s+t%.s?t?r?i?c?t?[iI]nterface%(%{\n(.-)\n%}%)"]
       28 GETTABLEKS                       R6 R2 K11 ["Name"]
       30 LOADK                            R7 K12 ["%.defaultProps"]
       31 LOADK                            R8 K13 ["%s+=%s+%{\n(.-)\n%}"]
       32 CONCAT                           R5 R6 R8
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R7 R8 K14 ["Typecheckers"]
       36 GETTABLEKS                       R6 R7 K15 ["T"]
       38 SETTABLEKS                       R6 R1 K2 ["Typechecking"]
       40 LOADK                            R7 K16 ["local function "]
       41 GETTABLEKS                       R8 R2 K11 ["Name"]
       43 LOADK                            R9 K17 ["%(%w-[pP]rops: (%w+)"]
       44 CONCAT                           R6 R7 R9
       45 GETIMPORT                        R7 K19 [string.match]
       47 MOVE                             R8 R3
       48 MOVE                             R9 R6
       49 CALL                             R7 2 1
       50 JUMPIFNOT                        R7 ; [+24]
       51 LOADK                            R8 K20 ["type%s+"]
       52 MOVE                             R9 R7
       53 LOADK                            R10 K13 ["%s+=%s+%{\n(.-)\n%}"]
       54 CONCAT                           R4 R8 R10
       55 GETIMPORT                        R8 K8 [string.find]
       57 MOVE                             R9 R3
       58 MOVE                             R11 R4
       59 LOADK                            R12 K21 [" %& (.-)\n"]
       60 CONCAT                           R10 R11 R12
       61 CALL                             R8 2 1
       62 JUMPIFNOT                        R8 ; [+3]
       63 MOVE                             R8 R4
       64 LOADK                            R9 K21 [" %& (.-)\n"]
       65 CONCAT                           R4 R8 R9
       66 LOADK                            R5 K22 ["defaultProps:?%s*%w*%s+=%s+%{\n(.-)\n%}"]
       67 GETUPVAL                         R10 1
       68 GETTABLEKS                       R9 R10 K14 ["Typecheckers"]
       70 GETTABLEKS                       R8 R9 K23 ["Luau"]
       72 SETTABLEKS                       R8 R1 K2 ["Typechecking"]
       74 JUMP                             ; [+10]
       75 JUMPIFNOTEQKNIL                  R4 ; [+9]
       77 GETIMPORT                        R8 K25 [print]
       79 LOADK                            R10 K26 ["📝 Unable to find props definition in "]
       80 GETTABLEKS                       R11 R2 K11 ["Name"]
       82 CONCAT                           R9 R10 R11
       83 CALL                             R8 1 0
       84 RETURN                           R1 1
       85 GETIMPORT                        R8 K19 [string.match]
       87 MOVE                             R9 R3
       88 MOVE                             R10 R4
       89 CALL                             R8 2 2
       90 GETIMPORT                        R10 K19 [string.match]
       92 MOVE                             R11 R3
       93 MOVE                             R12 R5
       94 CALL                             R10 2 1
       95 GETTABLEKS                       R11 R1 K2 ["Typechecking"]
       97 JUMPIFNOT                        R11 ; [+1]
       98 JUMPIF                           R8 ; [+8]
       99 GETIMPORT                        R11 K25 [print]
      101 LOADK                            R13 K27 ["💔 Couldn't find props for "]
      102 GETTABLEKS                       R14 R2 K11 ["Name"]
      104 CONCAT                           R12 R13 R14
      105 CALL                             R11 1 0
      106 JUMP                             ; [+10]
      107 GETUPVAL                         R12 2
      108 GETTABLEKS                       R11 R12 K28 ["parseProps"]
      110 GETTABLEKS                       R12 R1 K2 ["Typechecking"]
      112 MOVE                             R13 R8
      113 MOVE                             R14 R10
      114 CALL                             R11 3 1
      115 SETTABLEKS                       R11 R1 K0 ["Props"]
      117 JUMPIFNOT                        R9 ; [+7]
      118 GETIMPORT                        R11 K30 [string.split]
      120 MOVE                             R12 R9
      121 LOADK                            R13 K31 [" & "]
      122 CALL                             R11 2 1
      123 SETTABLEKS                       R11 R1 K1 ["Inherits"]
      125 NEWTABLE                         R11 0 0
      127 GETIMPORT                        R12 K33 [string.gmatch]
      129 MOVE                             R13 R3
      130 LOADK                            R14 K34 ["R[oe]act%.createElement%(%s*([%w%.]+)%s*,"]
      131 CALL                             R12 2 3
      132 FORGPREP                         R12
      133 LOADB                            R17 1
      134 SETTABLE                         R17 R11 R15
      135 FORGLOOP                         R12 1 ; [-3]
      137 GETUPVAL                         R14 3
      138 GETTABLEKS                       R13 R14 K35 ["Dictionary"]
      140 GETTABLEKS                       R12 R13 K36 ["keys"]
      142 MOVE                             R13 R11
      143 CALL                             R12 1 1
      144 SETTABLEKS                       R12 R1 K37 ["Components"]
      146 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Types"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["FileUtils"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["PropParser"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R5 K3 [script]
       30 GETTABLEKS                       R4 R5 K4 ["Parent"]
       32 GETTABLEKS                       R3 R4 K4 ["Parent"]
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
