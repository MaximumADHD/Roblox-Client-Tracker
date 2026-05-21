PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 NAMECALL                         R5 R0 K0 ["len"]
        5 CALL                             R5 1 1
        6 MOVE                             R2 R5
        7 LOADN                            R3 1
        8 FORNPREP                         R2
        9 MOVE                             R7 R4
       10 MOVE                             R8 R4
       11 NAMECALL                         R5 R0 K1 ["sub"]
       13 CALL                             R5 3 1
       14 GETUPVAL                         R7 0
       15 GETTABLE                         R6 R7 R5
       16 JUMPIFNOT                        R6 ; [+7]
       17 FASTCALL2K                       TABLE_INSERT R1 K2 ; [+5]
       19 MOVE                             R7 R1
       20 LOADK                            R8 K2 ["\\"]
       21 GETIMPORT                        R6 K5 [table.insert]
       23 CALL                             R6 2 0
       24 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       26 MOVE                             R7 R1
       27 MOVE                             R8 R5
       28 GETIMPORT                        R6 K5 [table.insert]
       30 CALL                             R6 2 0
       31 FORNLOOP                         R2
       32 GETIMPORT                        R2 K7 [table.concat]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 -1
       36 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 LOADB                            R2 0
        3 LOADN                            R5 1
        4 NAMECALL                         R6 R0 K0 ["len"]
        6 CALL                             R6 1 1
        7 MOVE                             R3 R6
        8 LOADN                            R4 1
        9 FORNPREP                         R3
       10 MOVE                             R8 R5
       11 MOVE                             R9 R5
       12 NAMECALL                         R6 R0 K1 ["sub"]
       14 CALL                             R6 3 1
       15 JUMPIFNOTEQKS                    R6 K2 ["\\"] ; [+5]
       17 JUMPIFNOTEQKB                    R2 FALSE ; [+3]
       19 LOADB                            R2 1
       20 JUMP                             ; [+10]
       21 JUMPIFNOTEQKB                    R2 TRUE ; [+2]
       23 LOADB                            R2 0
       24 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       26 MOVE                             R8 R1
       27 MOVE                             R9 R6
       28 GETIMPORT                        R7 K5 [table.insert]
       30 CALL                             R7 2 0
       31 FORNLOOP                         R3
       32 GETIMPORT                        R3 K7 [table.concat]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 -1
       36 RETURN                           R3 -1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFEQKNIL                     R0 ; [+3]
        4 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        6 RETURN                           R2 1
        7 LOADB                            R3 0
        8 LOADN                            R4 1
        9 LOADN                            R7 1
       10 NAMECALL                         R8 R0 K1 ["len"]
       12 CALL                             R8 1 1
       13 MOVE                             R5 R8
       14 LOADN                            R6 1
       15 FORNPREP                         R5
       16 MOVE                             R10 R7
       17 MOVE                             R11 R7
       18 NAMECALL                         R8 R0 K2 ["sub"]
       20 CALL                             R8 3 1
       21 JUMPIFNOTEQKS                    R8 K3 ["\\"] ; [+5]
       23 JUMPIFNOTEQKB                    R3 FALSE ; [+3]
       25 LOADB                            R3 1
       26 JUMP                             ; [+18]
       27 JUMPIFNOTEQKB                    R3 TRUE ; [+3]
       29 LOADB                            R3 0
       30 JUMP                             ; [+14]
       31 JUMPIFNOTEQ                      R8 R1 ; [+13]
       33 MOVE                             R13 R4
       34 SUBK                             R14 R7 K4 [1]
       35 NAMECALL                         R11 R0 K2 ["sub"]
       37 CALL                             R11 3 1
       38 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       40 MOVE                             R10 R2
       41 GETIMPORT                        R9 K7 [table.insert]
       43 CALL                             R9 2 0
       44 ADDK                             R4 R7 K4 [1]
       45 FORNLOOP                         R5
       46 MOVE                             R9 R4
       47 NAMECALL                         R10 R0 K1 ["len"]
       49 CALL                             R10 1 -1
       50 NAMECALL                         R7 R0 K2 ["sub"]
       52 CALL                             R7 -1 1
       53 FASTCALL2                        TABLE_INSERT R2 R7 ; [+4]
       55 MOVE                             R6 R2
       56 GETIMPORT                        R5 K7 [table.insert]
       58 CALL                             R5 2 0
       59 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 FASTCALL1                        TYPE R6 ; [+3]
        8 MOVE                             R8 R6
        9 GETIMPORT                        R7 K3 [type]
       11 CALL                             R7 1 1
       12 JUMPIFNOTEQKS                    R7 K4 ["table"] ; [+6]
       14 GETUPVAL                         R7 0
       15 MOVE                             R8 R6
       16 CALL                             R7 1 1
       17 SETTABLE                         R7 R1 R5
       18 JUMP                             ; [+1]
       19 SETTABLE                         R6 R1 R5
       20 FORGLOOP                         R2 2 ; [-14]
       22 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R2 K4 [{"data", "root", "waitDelay", "waitTimeOut"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["data"]
        5 SETTABLEKS                       R1 R2 K1 ["root"]
        7 LOADK                            R3 K5 [0.2]
        8 SETTABLEKS                       R3 R2 K2 ["waitDelay"]
       10 LOADN                            R3 2
       11 SETTABLEKS                       R3 R2 K3 ["waitTimeOut"]
       13 GETUPVAL                         R5 0
       14 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K7 [setmetatable]
       19 CALL                             R3 2 0
       20 FASTCALL1                        TYPE R0 ; [+3]
       21 MOVE                             R4 R0
       22 GETIMPORT                        R3 K9 [type]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKS                    R3 K10 ["string"] ; [+6]
       27 MOVE                             R5 R0
       28 NAMECALL                         R3 R2 K11 ["fromString"]
       30 CALL                             R3 2 0
       31 RETURN                           R2 1
       32 FASTCALL1                        TYPE R0 ; [+3]
       33 MOVE                             R4 R0
       34 GETIMPORT                        R3 K9 [type]
       36 CALL                             R3 1 1
       37 JUMPIFNOTEQKS                    R3 K12 ["userdata"] ; [+24]
       39 MOVE                             R3 R0
       40 JUMPIFNOT                        R3 ; [+51]
       41 GETTABLEKS                       R4 R3 K13 ["Name"]
       43 GETTABLEKS                       R5 R3 K14 ["ClassName"]
       45 JUMPIFNOTEQKS                    R5 K15 ["DataModel"] ; [+2]
       47 LOADK                            R4 K16 ["game"]
       48 GETTABLEKS                       R6 R2 K0 ["data"]
       50 LOADN                            R7 1
       51 DUPTABLE                         R8 K18 [{"name"}]
       52 SETTABLEKS                       R4 R8 K17 ["name"]
       54 FASTCALL                         TABLE_INSERT ; [+2]
       55 GETIMPORT                        R5 K21 [table.insert]
       57 CALL                             R5 3 0
       58 GETTABLEKS                       R3 R3 K22 ["Parent"]
       60 JUMPBACK                         ; [-21]
       61 RETURN                           R2 1
       62 FASTCALL1                        TYPE R0 ; [+3]
       63 MOVE                             R4 R0
       64 GETIMPORT                        R3 K9 [type]
       66 CALL                             R3 1 1
       67 JUMPIFNOTEQKS                    R3 K19 ["table"] ; [+12]
       69 GETTABLEKS                       R3 R0 K23 ["__type"]
       71 GETUPVAL                         R4 0
       72 GETTABLEKS                       R4 R4 K23 ["__type"]
       74 JUMPIFNOTEQ                      R3 R4 ; [+5]
       76 NAMECALL                         R3 R0 K24 ["copy"]
       78 CALL                             R3 1 -1
       79 RETURN                           R3 -1
       80 GETIMPORT                        R3 K26 [error]
       82 GETIMPORT                        R4 K28 [string.format]
       84 LOADK                            R5 K29 ["unknown parameter %s"]
       85 FASTCALL1                        TOSTRING R0 ; [+3]
       86 MOVE                             R7 R0
       87 GETIMPORT                        R6 K31 [tostring]
       89 CALL                             R6 1 1
       90 CALL                             R4 2 -1
       91 CALL                             R3 -1 0
       92 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["data"]
        2 LENGTH                           R1 R2
        3 RETURN                           R1 1

PROTO_6:
        0 NAMECALL                         R3 R0 K0 ["size"]
        2 CALL                             R3 1 1
        3 JUMPIFNOTLT                      R3 R1 ; [+5]
        5 GETIMPORT                        R3 K2 [error]
        7 LOADK                            R4 K3 ["bad index"]
        8 CALL                             R3 1 0
        9 GETTABLEKS                       R4 R0 K4 ["data"]
       11 GETTABLE                         R3 R4 R1
       12 GETTABLEKS                       R3 R3 K5 ["filter"]
       14 JUMPIF                           R3 ; [+2]
       15 NEWTABLE                         R3 0 0
       17 NEWTABLE                         R4 0 0
       19 GETIMPORT                        R5 K7 [ipairs]
       21 MOVE                             R6 R3
       22 CALL                             R5 1 3
       23 FORGPREP_INEXT                   R5
       24 GETTABLEKS                       R10 R9 K8 ["key"]
       26 GETTABLEKS                       R11 R9 K9 ["value"]
       28 SETTABLE                         R11 R4 R10
       29 FORGLOOP                         R5 2 [inext] ; [-6]
       31 JUMPIFNOT                        R2 ; [+16]
       32 GETIMPORT                        R5 K7 [ipairs]
       34 MOVE                             R6 R2
       35 CALL                             R5 1 3
       36 FORGPREP_INEXT                   R5
       37 GETTABLEKS                       R10 R9 K8 ["key"]
       39 GETTABLEKS                       R12 R9 K9 ["value"]
       41 FASTCALL1                        TOSTRING R12 ; [+2]
       42 GETIMPORT                        R11 K11 [tostring]
       44 CALL                             R11 1 1
       45 SETTABLE                         R11 R4 R10
       46 FORGLOOP                         R5 2 [inext] ; [-10]
       48 NEWTABLE                         R5 0 0
       50 GETIMPORT                        R6 K13 [pairs]
       52 MOVE                             R7 R4
       53 CALL                             R6 1 3
       54 FORGPREP_NEXT                    R6
       55 DUPTABLE                         R13 K14 [{"key", "value"}]
       56 SETTABLEKS                       R9 R13 K8 ["key"]
       58 SETTABLEKS                       R10 R13 K9 ["value"]
       60 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       62 MOVE                             R12 R5
       63 GETIMPORT                        R11 K17 [table.insert]
       65 CALL                             R11 2 0
       66 FORGLOOP                         R6 2 ; [-12]
       68 GETTABLEKS                       R7 R0 K4 ["data"]
       70 GETTABLE                         R6 R7 R1
       71 SETTABLEKS                       R5 R6 K5 ["filter"]
       73 RETURN                           R0 1

PROTO_7:
        0 LOADB                            R2 0
        1 LOADB                            R3 0
        2 NEWTABLE                         R4 0 0
        4 LOADN                            R5 1
        5 MOVE                             R6 R1
        6 LOADK                            R7 K0 ["."]
        7 CONCAT                           R1 R6 R7
        8 LOADN                            R8 1
        9 NAMECALL                         R9 R1 K1 ["len"]
       11 CALL                             R9 1 1
       12 MOVE                             R6 R9
       13 LOADN                            R7 1
       14 FORNPREP                         R6
       15 MOVE                             R11 R8
       16 MOVE                             R12 R8
       17 NAMECALL                         R9 R1 K2 ["sub"]
       19 CALL                             R9 3 1
       20 JUMPIFNOTEQKS                    R9 K3 ["\\"] ; [+5]
       22 JUMPIFNOTEQKB                    R3 FALSE ; [+3]
       24 LOADB                            R3 1
       25 JUMP                             ; [+45]
       26 JUMPIFNOTEQKB                    R3 TRUE ; [+3]
       28 LOADB                            R3 0
       29 JUMP                             ; [+41]
       30 JUMPIFNOTEQKS                    R9 K0 ["."] ; [+18]
       32 JUMPIF                           R2 ; [+38]
       33 DUPTABLE                         R12 K5 [{"name"}]
       34 MOVE                             R15 R5
       35 SUBK                             R16 R8 K6 [1]
       36 NAMECALL                         R13 R1 K2 ["sub"]
       38 CALL                             R13 3 1
       39 SETTABLEKS                       R13 R12 K4 ["name"]
       41 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       43 MOVE                             R11 R4
       44 GETIMPORT                        R10 K9 [table.insert]
       46 CALL                             R10 2 0
       47 ADDK                             R5 R8 K6 [1]
       48 JUMP                             ; [+22]
       49 JUMPIFNOTEQKS                    R9 K10 ["["] ; [+11]
       51 JUMPIFNOTEQKB                    R2 TRUE ; [+7]
       53 GETIMPORT                        R10 K12 [error]
       55 LOADK                            R12 K13 ["no nested bracket allowed: "]
       56 MOVE                             R13 R1
       57 CONCAT                           R11 R12 R13
       58 CALL                             R10 1 0
       59 LOADB                            R2 1
       60 JUMP                             ; [+10]
       61 JUMPIFNOTEQKS                    R9 K14 ["]"] ; [+9]
       63 JUMPIF                           R2 ; [+6]
       64 GETIMPORT                        R10 K12 [error]
       66 LOADK                            R12 K15 ["unbalanced brackets: "]
       67 MOVE                             R13 R1
       68 CONCAT                           R11 R12 R13
       69 CALL                             R10 1 0
       70 LOADB                            R2 0
       71 FORNLOOP                         R6
       72 JUMPIFNOTEQKB                    R2 TRUE ; [+7]
       74 GETIMPORT                        R6 K12 [error]
       76 LOADK                            R8 K15 ["unbalanced brackets: "]
       77 MOVE                             R9 R1
       78 CONCAT                           R7 R8 R9
       79 CALL                             R6 1 0
       80 LOADN                            R8 1
       81 LENGTH                           R6 R4
       82 LOADN                            R7 1
       83 FORNPREP                         R6
       84 GETTABLE                         R9 R4 R8
       85 GETTABLEKS                       R9 R9 K4 ["name"]
       87 LOADK                            R11 K16 ["%s*(.*[^\\])%[(.*[^\\])%]%s*"]
       88 NAMECALL                         R9 R9 K17 ["match"]
       90 CALL                             R9 2 2
       91 JUMPIFNOTEQKNIL                  R9 ; [+5]
       93 LOADK                            R10 K18 [""]
       94 GETTABLE                         R11 R4 R8
       95 GETTABLEKS                       R9 R11 K4 ["name"]
       97 JUMPIFEQKNIL                     R9 ; [+44]
       99 JUMPIFEQKNIL                     R10 ; [+42]
      101 GETTABLE                         R11 R4 R8
      102 GETUPVAL                         R12 0
      103 GETTABLEKS                       R12 R12 K19 ["removeSlash"]
      105 MOVE                             R13 R9
      106 CALL                             R12 1 1
      107 SETTABLEKS                       R12 R11 K4 ["name"]
      109 GETUPVAL                         R11 1
      110 MOVE                             R12 R10
      111 LOADK                            R13 K20 [","]
      112 CALL                             R11 2 1
      113 NEWTABLE                         R12 0 0
      115 GETIMPORT                        R13 K22 [ipairs]
      117 MOVE                             R14 R11
      118 CALL                             R13 1 3
      119 FORGPREP_INEXT                   R13
      120 LOADK                            R20 K23 ["^%s*(.-[^\\])%s*=%s*(.-)%s*$"]
      121 NAMECALL                         R18 R17 K17 ["match"]
      123 CALL                             R18 2 2
      124 JUMPIFNOT                        R18 ; [+12]
      125 JUMPIFNOT                        R19 ; [+11]
      126 DUPTABLE                         R22 K26 [{"key", "value"}]
      127 SETTABLEKS                       R18 R22 K24 ["key"]
      129 SETTABLEKS                       R19 R22 K25 ["value"]
      131 FASTCALL2                        TABLE_INSERT R12 R22 ; [+4]
      133 MOVE                             R21 R12
      134 GETIMPORT                        R20 K9 [table.insert]
      136 CALL                             R20 2 0
      137 FORGLOOP                         R13 2 [inext] ; [-18]
      139 GETTABLE                         R13 R4 R8
      140 SETTABLEKS                       R12 R13 K27 ["filter"]
      142 FORNLOOP                         R6
      143 SETTABLEKS                       R4 R0 K28 ["data"]
      145 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 1
        4 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K1 [setmetatable]
        9 CALL                             R2 2 0
       10 RETURN                           R1 1

PROTO_9:
        0 NAMECALL                         R1 R0 K0 ["copy"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["data"]
        5 LENGTH                           R2 R3
        6 LOADN                            R3 1
        7 JUMPIFNOTLE                      R2 R3 ; [+2]
        9 RETURN                           R1 1
       10 GETIMPORT                        R2 K4 [table.remove]
       12 GETTABLEKS                       R3 R1 K1 ["data"]
       14 GETTABLEKS                       R5 R1 K1 ["data"]
       16 LENGTH                           R4 R5
       17 CALL                             R2 2 0
       18 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["addSlash"]
        3 GETTABLEKS                       R3 R1 K1 ["name"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R1 K2 ["filter"]
        8 JUMPIFNOT                        R3 ; [+38]
        9 GETTABLEKS                       R4 R1 K2 ["filter"]
       11 LENGTH                           R3 R4
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R3 ; [+33]
       15 NEWTABLE                         R3 0 0
       17 GETIMPORT                        R4 K4 [ipairs]
       19 GETTABLEKS                       R5 R1 K2 ["filter"]
       21 CALL                             R4 1 3
       22 FORGPREP_INEXT                   R4
       23 GETTABLEKS                       R12 R8 K5 ["key"]
       25 LOADK                            R13 K6 [" = "]
       26 GETTABLEKS                       R14 R8 K7 ["value"]
       28 CONCAT                           R11 R12 R14
       29 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       31 MOVE                             R10 R3
       32 GETIMPORT                        R9 K10 [table.insert]
       34 CALL                             R9 2 0
       35 FORGLOOP                         R4 2 [inext] ; [-13]
       37 MOVE                             R4 R2
       38 LOADK                            R5 K11 ["["]
       39 GETIMPORT                        R8 K13 [table.concat]
       41 MOVE                             R9 R3
       42 LOADK                            R10 K14 [", "]
       43 CALL                             R8 2 1
       44 MOVE                             R6 R8
       45 LOADK                            R7 K15 ["]"]
       46 CONCAT                           R2 R4 R7
       47 RETURN                           R2 1

PROTO_11:
        0 JUMPIFNOTEQKNIL                  R1 ; [+26]
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [ipairs]
        6 GETTABLEKS                       R4 R0 K2 ["data"]
        8 CALL                             R3 1 3
        9 FORGPREP_INEXT                   R3
       10 MOVE                             R9 R2
       11 MOVE                             R12 R7
       12 NAMECALL                         R10 R0 K3 ["_itemToString"]
       14 CALL                             R10 2 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R8 K6 [table.insert]
       18 CALL                             R8 -1 0
       19 FORGLOOP                         R3 2 [inext] ; [-10]
       21 GETIMPORT                        R3 K8 [table.concat]
       23 MOVE                             R4 R2
       24 LOADK                            R5 K9 ["."]
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1
       27 FASTCALL1                        TYPE R1 ; [+3]
       28 MOVE                             R3 R1
       29 GETIMPORT                        R2 K11 [type]
       31 CALL                             R2 1 1
       32 JUMPIFNOTEQKS                    R2 K12 ["number"] ; [+28]
       34 LOADN                            R2 0
       35 JUMPIFNOTLT                      R1 R2 ; [+6]
       37 NAMECALL                         R3 R0 K14 ["size"]
       39 CALL                             R3 1 1
       40 ADD                              R2 R3 R1
       41 ADDK                             R1 R2 K13 [1]
       42 NAMECALL                         R2 R0 K14 ["size"]
       44 CALL                             R2 1 1
       45 JUMPIFLT                         R2 R1 ; [+4]
       47 LOADN                            R2 1
       48 JUMPIFNOTLT                      R1 R2 ; [+5]
       50 GETIMPORT                        R2 K16 [error]
       52 LOADK                            R3 K17 ["invalid index"]
       53 CALL                             R2 1 0
       54 GETTABLEKS                       R5 R0 K2 ["data"]
       56 GETTABLE                         R4 R5 R1
       57 NAMECALL                         R2 R0 K3 ["_itemToString"]
       59 CALL                             R2 2 -1
       60 RETURN                           R2 -1
       61 FASTCALL1                        TYPE R1 ; [+3]
       62 MOVE                             R3 R1
       63 GETIMPORT                        R2 K11 [type]
       65 CALL                             R2 1 1
       66 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+6]
       68 MOVE                             R4 R1
       69 NAMECALL                         R2 R0 K3 ["_itemToString"]
       71 CALL                             R2 2 -1
       72 RETURN                           R2 -1
       73 GETIMPORT                        R2 K16 [error]
       75 LOADK                            R3 K18 ["Unsupported argument to `XPath:toString()`"]
       76 CALL                             R2 1 0
       77 RETURN                           R0 0

PROTO_12:
        0 MOVE                             R5 R0
        1 NAMECALL                         R3 R1 K0 ["relative"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_13:
        0 NAMECALL                         R2 R0 K0 ["size"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R1 K1 ["data"]
        5 LENGTH                           R3 R4
        6 JUMPIFNOTLT                      R2 R3 ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 NAMECALL                         R2 R1 K2 ["copy"]
       12 CALL                             R2 1 1
       13 NAMECALL                         R3 R0 K2 ["copy"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R5 R2 K1 ["data"]
       18 LENGTH                           R4 R5
       19 LOADN                            R5 0
       20 JUMPIFNOTLT                      R5 R4 ; [+28]
       22 GETTABLEKS                       R5 R2 K1 ["data"]
       24 GETTABLEN                        R4 R5 1
       25 GETTABLEKS                       R4 R4 K3 ["name"]
       27 GETTABLEKS                       R6 R3 K1 ["data"]
       29 GETTABLEN                        R5 R6 1
       30 GETTABLEKS                       R5 R5 K3 ["name"]
       32 JUMPIFEQ                         R4 R5 ; [+3]
       34 LOADNIL                          R4
       35 RETURN                           R4 1
       36 GETIMPORT                        R4 K6 [table.remove]
       38 GETTABLEKS                       R5 R2 K1 ["data"]
       40 LOADN                            R6 1
       41 CALL                             R4 2 0
       42 GETIMPORT                        R4 K6 [table.remove]
       44 GETTABLEKS                       R5 R3 K1 ["data"]
       46 LOADN                            R6 1
       47 CALL                             R4 2 0
       48 JUMPBACK                         ; [-33]
       49 RETURN                           R3 1

PROTO_14:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+7]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["new"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 MOVE                             R1 R2
       13 NAMECALL                         R2 R0 K4 ["copy"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [ipairs]
       18 GETTABLEKS                       R4 R1 K7 ["data"]
       20 CALL                             R3 1 3
       21 FORGPREP_INEXT                   R3
       22 GETTABLEKS                       R9 R2 K7 ["data"]
       24 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       26 MOVE                             R10 R7
       27 GETIMPORT                        R8 K10 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 [inext] ; [-9]
       32 RETURN                           R2 1

PROTO_15:
        0 LOADN                            R3 1
        1 NAMECALL                         R4 R0 K0 ["size"]
        3 CALL                             R4 1 1
        4 MOVE                             R1 R4
        5 LOADN                            R2 1
        6 FORNPREP                         R1
        7 GETTABLEKS                       R5 R0 K1 ["data"]
        9 GETTABLE                         R4 R5 R3
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K2 ["filter"]
       13 FORNLOOP                         R1
       14 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_17:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+2]
        7 MOVE                             R4 R3
        8 RETURN                           R4 1
        9 LOADNIL                          R4
       10 RETURN                           R4 1

PROTO_18:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [tostring]
        4 CALL                             R2 1 1
        5 MOVE                             R0 R2
        6 FASTCALL1                        TOSTRING R1 ; [+3]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K1 [tostring]
       10 CALL                             R2 1 1
       11 MOVE                             R1 R2
       12 LOADB                            R2 1
       13 JUMPIFEQKS                       R1 K2 ["*"] ; [+5]
       15 JUMPIFEQ                         R0 R1 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_19:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 0 0
        5 GETIMPORT                        R4 K2 [ipairs]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 3
        9 FORGPREP_INEXT                   R4
       10 GETIMPORT                        R11 K4 [pcall]
       12 LOADK                            R13 K5 ["Name"]
       13 NEWCLOSURE                       R12 P0
       14 CAPTURE                          VAL R8
       15 CAPTURE                          VAL R13
       16 CALL                             R11 1 2
       17 JUMPIFNOT                        R11 ; [+2]
       18 MOVE                             R10 R12
       19 JUMP                             ; [+1]
       20 LOADNIL                          R10
       21 MOVE                             R11 R1
       22 FASTCALL1                        TOSTRING R10 ; [+3]
       23 MOVE                             R13 R10
       24 GETIMPORT                        R12 K7 [tostring]
       26 CALL                             R12 1 1
       27 MOVE                             R10 R12
       28 FASTCALL1                        TOSTRING R11 ; [+3]
       29 MOVE                             R13 R11
       30 GETIMPORT                        R12 K7 [tostring]
       32 CALL                             R12 1 1
       33 MOVE                             R11 R12
       34 LOADB                            R9 1
       35 JUMPIFEQKS                       R11 K8 ["*"] ; [+5]
       37 JUMPIFEQ                         R10 R11 ; [+2]
       39 LOADB                            R9 0 +1
       40 LOADB                            R9 1
       41 JUMPIFNOT                        R9 ; [+7]
       42 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       44 MOVE                             R10 R3
       45 MOVE                             R11 R8
       46 GETIMPORT                        R9 K11 [table.insert]
       48 CALL                             R9 2 0
       49 FORGLOOP                         R4 2 [inext] ; [-40]
       51 LENGTH                           R4 R3
       52 JUMPIFNOTEQKN                    R4 K12 [0] ; [+19]
       54 GETIMPORT                        R5 K4 [pcall]
       56 NEWCLOSURE                       R6 P0
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 CALL                             R5 1 2
       60 JUMPIFNOT                        R5 ; [+2]
       61 MOVE                             R4 R6
       62 JUMP                             ; [+1]
       63 LOADNIL                          R4
       64 JUMPIFNOT                        R4 ; [+7]
       65 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       67 MOVE                             R6 R3
       68 MOVE                             R7 R4
       69 GETIMPORT                        R5 K11 [table.insert]
       71 CALL                             R5 2 0
       72 RETURN                           R3 1

PROTO_20:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 GETUPVAL                         R8 0
        8 MOVE                             R9 R7
        9 MOVE                             R10 R1
       10 CALL                             R8 2 1
       11 GETIMPORT                        R9 K1 [ipairs]
       13 MOVE                             R10 R8
       14 CALL                             R9 1 3
       15 FORGPREP_INEXT                   R9
       16 FASTCALL2                        TABLE_INSERT R2 R13 ; [+5]
       18 MOVE                             R15 R2
       19 MOVE                             R16 R13
       20 GETIMPORT                        R14 K4 [table.insert]
       22 CALL                             R14 2 0
       23 FORGLOOP                         R9 2 [inext] ; [-8]
       25 FORGLOOP                         R3 2 [inext] ; [-19]
       27 RETURN                           R2 1

PROTO_21:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 GETUPVAL                         R7 0
        6 MOVE                             R8 R0
        7 MOVE                             R9 R6
        8 CALL                             R7 2 1
        9 MOVE                             R0 R7
       10 FORGLOOP                         R2 2 [inext] ; [-6]
       12 RETURN                           R0 1

PROTO_22:
        0 GETTABLEKS                       R2 R1 K0 ["key"]
        2 LOADK                            R5 K1 ["^%.?(.*[^\\])%.(%w-)$"]
        3 NAMECALL                         R3 R2 K2 ["match"]
        5 CALL                             R3 2 2
        6 JUMPIFNOTEQKNIL                  R4 ; [+7]
        8 LOADK                            R3 K3 [""]
        9 LOADK                            R7 K4 ["^%.?(%w-)$"]
       10 NAMECALL                         R5 R2 K2 ["match"]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 JUMPIFEQKNIL                     R4 ; [+81]
       16 GETUPVAL                         R5 0
       17 MOVE                             R6 R3
       18 LOADK                            R7 K5 ["."]
       19 CALL                             R5 2 1
       20 LOADN                            R8 1
       21 LENGTH                           R6 R5
       22 LOADN                            R7 1
       23 FORNPREP                         R6
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K6 ["removeSlash"]
       27 GETTABLE                         R10 R5 R8
       28 CALL                             R9 1 1
       29 SETTABLE                         R9 R5 R8
       30 FORNLOOP                         R6
       31 NEWTABLE                         R7 0 1
       33 MOVE                             R8 R0
       34 SETLIST                          R7 R8 1 [1]
       36 GETIMPORT                        R8 K8 [ipairs]
       38 MOVE                             R9 R5
       39 CALL                             R8 1 3
       40 FORGPREP_INEXT                   R8
       41 GETUPVAL                         R13 2
       42 MOVE                             R14 R7
       43 MOVE                             R15 R12
       44 CALL                             R13 2 1
       45 MOVE                             R7 R13
       46 FORGLOOP                         R8 2 [inext] ; [-6]
       48 MOVE                             R6 R7
       49 GETIMPORT                        R7 K8 [ipairs]
       51 MOVE                             R8 R6
       52 CALL                             R7 1 3
       53 FORGPREP_INEXT                   R7
       54 MOVE                             R13 R4
       55 GETIMPORT                        R14 K10 [pcall]
       57 NEWCLOSURE                       R15 P0
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R13
       60 CALL                             R14 1 2
       61 JUMPIFNOT                        R14 ; [+2]
       62 MOVE                             R12 R15
       63 JUMP                             ; [+1]
       64 LOADNIL                          R12
       65 MOVE                             R14 R12
       66 GETUPVAL                         R15 1
       67 GETTABLEKS                       R15 R15 K6 ["removeSlash"]
       69 GETTABLEKS                       R16 R1 K11 ["value"]
       71 CALL                             R15 1 1
       72 FASTCALL1                        TOSTRING R14 ; [+3]
       73 MOVE                             R17 R14
       74 GETIMPORT                        R16 K13 [tostring]
       76 CALL                             R16 1 1
       77 MOVE                             R14 R16
       78 FASTCALL1                        TOSTRING R15 ; [+3]
       79 MOVE                             R17 R15
       80 GETIMPORT                        R16 K13 [tostring]
       82 CALL                             R16 1 1
       83 MOVE                             R15 R16
       84 LOADB                            R13 1
       85 JUMPIFEQKS                       R15 K14 ["*"] ; [+5]
       87 JUMPIFEQ                         R14 R15 ; [+2]
       89 LOADB                            R13 0 +1
       90 LOADB                            R13 1
       91 JUMPIFNOT                        R13 ; [+2]
       92 LOADB                            R13 1
       93 RETURN                           R13 1
       94 FORGLOOP                         R7 2 [inext] ; [-41]
       96 LOADB                            R5 0
       97 RETURN                           R5 1

PROTO_23:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 GETUPVAL                         R7 0
        6 MOVE                             R8 R0
        7 MOVE                             R9 R6
        8 CALL                             R7 2 1
        9 JUMPIF                           R7 ; [+2]
       10 LOADB                            R7 0
       11 RETURN                           R7 1
       12 FORGLOOP                         R2 2 [inext] ; [-8]
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_24:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 RETURN                           R0 1
        3 NEWTABLE                         R2 0 0
        5 GETIMPORT                        R3 K1 [ipairs]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 3
        9 FORGPREP_INEXT                   R3
       10 GETUPVAL                         R8 0
       11 MOVE                             R9 R7
       12 MOVE                             R10 R1
       13 CALL                             R8 2 1
       14 JUMPIFNOT                        R8 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       17 MOVE                             R9 R2
       18 MOVE                             R10 R7
       19 GETIMPORT                        R8 K4 [table.insert]
       21 CALL                             R8 2 0
       22 FORGLOOP                         R3 2 [inext] ; [-13]
       24 RETURN                           R2 1

PROTO_25:
        0 NAMECALL                         R1 R0 K0 ["getInstances"]
        2 CALL                             R1 1 1
        3 LENGTH                           R2 R1
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETTABLEN                        R2 R1 1
        9 RETURN                           R2 1

PROTO_26:
        0 NAMECALL                         R1 R0 K0 ["size"]
        2 CALL                             R1 1 1
        3 LOADN                            R2 1
        4 JUMPIFNOTLT                      R1 R2 ; [+11]
        6 GETIMPORT                        R1 K2 [error]
        8 LOADK                            R3 K3 ["instance "]
        9 NAMECALL                         R6 R0 K4 ["toString"]
       11 CALL                             R6 1 1
       12 MOVE                             R4 R6
       13 LOADK                            R5 K5 [" does not exist"]
       14 CONCAT                           R2 R3 R5
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 GETTABLEKS                       R3 R0 K6 ["data"]
       19 GETTABLEN                        R2 R3 1
       20 GETTABLEKS                       R2 R2 K7 ["name"]
       22 JUMPIFNOTEQKS                    R2 K8 ["game"] ; [+4]
       24 GETIMPORT                        R1 K9 [game]
       26 JUMP                             ; [+9]
       27 JUMPIFNOTEQKS                    R2 K10 ["PluginGuiService"] ; [+8]
       29 GETIMPORT                        R3 K9 [game]
       31 LOADK                            R5 K10 ["PluginGuiService"]
       32 NAMECALL                         R3 R3 K11 ["GetService"]
       34 CALL                             R3 2 1
       35 MOVE                             R1 R3
       36 GETTABLEKS                       R3 R0 K12 ["root"]
       38 JUMPIFNOTEQKNIL                  R3 ; [+13]
       40 JUMPIFNOTEQKNIL                  R1 ; [+11]
       42 GETIMPORT                        R3 K2 [error]
       44 LOADK                            R5 K3 ["instance "]
       45 NAMECALL                         R8 R0 K4 ["toString"]
       47 CALL                             R8 1 1
       48 MOVE                             R6 R8
       49 LOADK                            R7 K5 [" does not exist"]
       50 CONCAT                           R4 R5 R7
       51 CALL                             R3 1 0
       52 NEWTABLE                         R3 0 1
       54 GETTABLEKS                       R5 R0 K12 ["root"]
       56 JUMPIFNOT                        R5 ; [+3]
       57 GETTABLEKS                       R4 R0 K12 ["root"]
       59 JUMP                             ; [+1]
       60 MOVE                             R4 R1
       61 SETLIST                          R3 R4 1 [1]
       63 GETTABLEKS                       R5 R0 K12 ["root"]
       65 JUMPIFNOT                        R5 ; [+2]
       66 LOADN                            R4 1
       67 JUMP                             ; [+1]
       68 LOADN                            R4 2
       69 NAMECALL                         R5 R0 K0 ["size"]
       71 CALL                             R5 1 1
       72 JUMPIFNOTLE                      R4 R5 ; [+28]
       74 GETTABLEKS                       R6 R0 K6 ["data"]
       76 GETTABLE                         R5 R6 R4
       77 GETTABLEKS                       R5 R5 K7 ["name"]
       79 GETTABLEKS                       R7 R0 K6 ["data"]
       81 GETTABLE                         R6 R7 R4
       82 GETTABLEKS                       R6 R6 K13 ["filter"]
       84 GETUPVAL                         R7 0
       85 MOVE                             R8 R3
       86 MOVE                             R9 R5
       87 CALL                             R7 2 1
       88 GETUPVAL                         R8 1
       89 MOVE                             R9 R7
       90 MOVE                             R10 R6
       91 CALL                             R8 2 1
       92 MOVE                             R3 R8
       93 LENGTH                           R8 R3
       94 JUMPIFNOTEQKN                    R8 K14 [0] ; [+4]
       96 MOVE                             R8 R3
       97 SUBK                             R9 R4 K15 [1]
       98 RETURN                           R8 2
       99 ADDK                             R4 R4 K15 [1]
      100 JUMPBACK                         ; [-32]
      101 MOVE                             R5 R3
      102 SUBK                             R6 R4 K15 [1]
      103 RETURN                           R5 2

PROTO_27:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 GETTABLEKS                       R3 R0 K0 ["waitDelay"]
        4 SETTABLEKS                       R3 R0 K0 ["waitDelay"]
        6 MOVE                             R3 R1
        7 JUMPIF                           R3 ; [+2]
        8 GETTABLEKS                       R3 R0 K1 ["waitTimeOut"]
       10 SETTABLEKS                       R3 R0 K1 ["waitTimeOut"]
       12 RETURN                           R0 1

PROTO_28:
        0 MOVE                             R5 R3
        1 JUMPIF                           R5 ; [+2]
        2 GETTABLEKS                       R5 R0 K0 ["waitDelay"]
        4 MOVE                             R3 R5
        5 MOVE                             R5 R4
        6 JUMPIF                           R5 ; [+2]
        7 GETTABLEKS                       R5 R0 K1 ["waitTimeOut"]
        9 MOVE                             R4 R5
       10 FASTCALL1                        ASSERT R4 ; [+3]
       11 MOVE                             R6 R4
       12 GETIMPORT                        R5 K3 [assert]
       14 CALL                             R5 1 0
       15 GETIMPORT                        R5 K6 [os.clock]
       17 CALL                             R5 0 1
       18 ADD                              R4 R5 R4
       19 MOVE                             R5 R1
       20 CALL                             R5 0 1
       21 MOVE                             R6 R2
       22 MOVE                             R7 R5
       23 CALL                             R6 1 1
       24 JUMPIFNOT                        R6 ; [+3]
       25 MOVE                             R6 R5
       26 LOADB                            R7 1
       27 RETURN                           R6 2
       28 GETIMPORT                        R6 K9 [task.wait]
       30 MOVE                             R7 R3
       31 CALL                             R6 1 0
       32 GETIMPORT                        R6 K6 [os.clock]
       34 CALL                             R6 0 1
       35 JUMPIFNOTLT                      R4 R6 ; [+4]
       37 MOVE                             R6 R5
       38 LOADB                            R7 0
       39 RETURN                           R6 2
       40 JUMPBACK                         ; [-22]
       41 RETURN                           R0 0

PROTO_29:
        0 LOADN                            R3 1
        1 NAMECALL                         R1 R0 K0 ["waitForNInstances"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+7]
        6 LENGTH                           R2 R1
        7 LOADN                            R3 0
        8 JUMPIFNOTLT                      R3 R2 ; [+3]
       10 GETTABLEN                        R2 R1 1
       11 RETURN                           R2 1
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getInstances"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_31:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["function"] ; [+5]
        7 GETIMPORT                        R2 K4 [error]
        9 LOADK                            R3 K5 ["arg #1 should be a function"]
       10 CALL                             R2 1 0
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 MOVE                             R5 R1
       14 NAMECALL                         R2 R0 K6 ["waitFor"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1

PROTO_32:
        0 LENGTH                           R2 R0
        1 JUMPIFEQKN                       R2 K0 [0] ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_33:
        0 DUPCLOSURE                       R3 K0 [PROTO_32]
        1 NAMECALL                         R1 R0 K1 ["waitForInstances"]
        3 CALL                             R1 2 2
        4 JUMPIFEQKB                       R2 TRUE ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 RETURN                           R3 1

PROTO_34:
        0 LENGTH                           R2 R0
        1 GETUPVAL                         R3 0
        2 JUMPIFLE                         R3 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_35:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 NAMECALL                         R2 R0 K0 ["waitForInstances"]
        4 CALL                             R2 2 2
        5 MOVE                             R4 R2
        6 JUMPIF                           R4 ; [+2]
        7 NEWTABLE                         R4 0 0
        9 MOVE                             R5 R3
       10 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"__type"}]
        2 LOADK                            R1 K2 ["XPath"]
        3 SETTABLEKS                       R1 R0 K0 ["__type"]
        5 SETTABLEKS                       R0 R0 K3 ["__index"]
        7 NEWTABLE                         R1 0 0
        9 LOADN                            R4 1
       10 LOADN                            R2 6
       11 LOADN                            R3 1
       12 FORNPREP                         R2
       13 LOADK                            R5 K4 ["\\.=[],"]
       14 MOVE                             R7 R4
       15 MOVE                             R8 R4
       16 NAMECALL                         R5 R5 K5 ["sub"]
       18 CALL                             R5 3 1
       19 LOADB                            R6 1
       20 SETTABLE                         R6 R1 R5
       21 FORNLOOP                         R2
       22 DUPCLOSURE                       R2 K6 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R2 R0 K7 ["addSlash"]
       26 DUPCLOSURE                       R2 K8 [PROTO_1]
       27 SETTABLEKS                       R2 R0 K9 ["removeSlash"]
       29 DUPCLOSURE                       R2 K10 [PROTO_2]
       30 DUPCLOSURE                       R3 K11 [PROTO_3]
       31 CAPTURE                          VAL R3
       32 DUPCLOSURE                       R4 K12 [PROTO_4]
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R4 R0 K13 ["new"]
       36 DUPCLOSURE                       R4 K14 [PROTO_5]
       37 SETTABLEKS                       R4 R0 K15 ["size"]
       39 DUPCLOSURE                       R4 K16 [PROTO_6]
       40 SETTABLEKS                       R4 R0 K17 ["mergeFilter"]
       42 DUPCLOSURE                       R4 K18 [PROTO_7]
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R4 R0 K19 ["fromString"]
       47 DUPCLOSURE                       R4 K20 [PROTO_8]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R4 R0 K21 ["copy"]
       52 DUPCLOSURE                       R4 K22 [PROTO_9]
       53 SETTABLEKS                       R4 R0 K23 ["parent"]
       55 DUPCLOSURE                       R4 K24 [PROTO_10]
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R4 R0 K25 ["_itemToString"]
       59 DUPCLOSURE                       R4 K26 [PROTO_11]
       60 SETTABLEKS                       R4 R0 K27 ["toString"]
       62 DUPCLOSURE                       R4 K28 [PROTO_12]
       63 SETTABLEKS                       R4 R0 K29 ["hasChild"]
       65 DUPCLOSURE                       R4 K30 [PROTO_13]
       66 SETTABLEKS                       R4 R0 K31 ["relative"]
       68 DUPCLOSURE                       R4 K32 [PROTO_14]
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R4 R0 K33 ["cat"]
       72 DUPCLOSURE                       R4 K34 [PROTO_15]
       73 SETTABLEKS                       R4 R0 K35 ["clearFilter"]
       75 DUPCLOSURE                       R4 K36 [PROTO_17]
       76 DUPCLOSURE                       R5 K37 [PROTO_18]
       77 DUPCLOSURE                       R6 K38 [PROTO_19]
       78 DUPCLOSURE                       R7 K39 [PROTO_20]
       79 CAPTURE                          VAL R6
       80 DUPCLOSURE                       R8 K40 [PROTO_21]
       81 CAPTURE                          VAL R7
       82 DUPCLOSURE                       R9 K41 [PROTO_22]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R7
       86 DUPCLOSURE                       R10 K42 [PROTO_23]
       87 CAPTURE                          VAL R9
       88 DUPCLOSURE                       R11 K43 [PROTO_24]
       89 CAPTURE                          VAL R10
       90 DUPCLOSURE                       R12 K44 [PROTO_25]
       91 SETTABLEKS                       R12 R0 K45 ["getFirstInstance"]
       93 DUPCLOSURE                       R12 K46 [PROTO_26]
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R11
       96 SETTABLEKS                       R12 R0 K47 ["getInstances"]
       98 DUPCLOSURE                       R12 K48 [PROTO_27]
       99 SETTABLEKS                       R12 R0 K49 ["setWait"]
      101 DUPCLOSURE                       R12 K50 [PROTO_28]
      102 SETTABLEKS                       R12 R0 K51 ["waitFor"]
      104 DUPCLOSURE                       R12 K52 [PROTO_29]
      105 SETTABLEKS                       R12 R0 K53 ["waitForFirstInstance"]
      107 DUPCLOSURE                       R12 K54 [PROTO_31]
      108 SETTABLEKS                       R12 R0 K55 ["waitForInstances"]
      110 DUPCLOSURE                       R12 K56 [PROTO_33]
      111 SETTABLEKS                       R12 R0 K57 ["waitForDisappear"]
      113 DUPCLOSURE                       R12 K58 [PROTO_35]
      114 SETTABLEKS                       R12 R0 K59 ["waitForNInstances"]
      116 RETURN                           R0 1
