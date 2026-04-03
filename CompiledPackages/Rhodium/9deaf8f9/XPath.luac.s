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
       40 JUMPIFNOT                        R3 ; [+42]
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
       62 FASTCALL1                        GETMETATABLE R0 ; [+3]
       63 MOVE                             R5 R0
       64 GETIMPORT                        R4 K24 [getmetatable]
       66 CALL                             R4 1 1
       67 GETTABLEKS                       R3 R4 K25 ["__type"]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R4 R5 K25 ["__type"]
       72 JUMPIFNOTEQ                      R3 R4 ; [+5]
       74 NAMECALL                         R3 R0 K26 ["copy"]
       76 CALL                             R3 1 -1
       77 RETURN                           R3 -1
       78 GETIMPORT                        R3 K28 [error]
       80 LOADK                            R4 K29 ["unknown parameter "]
       81 MOVE                             R5 R0
       82 CALL                             R3 2 0
       83 RETURN                           R2 1

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
        9 GETTABLEKS                       R5 R0 K4 ["data"]
       11 GETTABLE                         R4 R5 R1
       12 GETTABLEKS                       R3 R4 K5 ["filter"]
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
       84 GETTABLE                         R10 R4 R8
       85 GETTABLEKS                       R9 R10 K4 ["name"]
       87 LOADK                            R11 K16 ["%s*(.*[^\\])%[(.*[^\\])%]%s*"]
       88 NAMECALL                         R9 R9 K17 ["match"]
       90 CALL                             R9 2 2
       91 JUMPIFNOTEQKNIL                  R9 ; [+5]
       93 LOADK                            R10 K18 [""]
       94 GETTABLE                         R11 R4 R8
       95 GETTABLEKS                       R9 R11 K4 ["name"]
       97 JUMPIFEQKNIL                     R9 ; [+41]
       99 GETTABLE                         R11 R4 R8
      100 GETUPVAL                         R13 0
      101 GETTABLEKS                       R12 R13 K19 ["removeSlash"]
      103 MOVE                             R13 R9
      104 CALL                             R12 1 1
      105 SETTABLEKS                       R12 R11 K4 ["name"]
      107 GETUPVAL                         R11 1
      108 MOVE                             R12 R10
      109 LOADK                            R13 K20 [","]
      110 CALL                             R11 2 1
      111 NEWTABLE                         R12 0 0
      113 GETIMPORT                        R13 K22 [ipairs]
      115 MOVE                             R14 R11
      116 CALL                             R13 1 3
      117 FORGPREP_INEXT                   R13
      118 LOADK                            R20 K23 ["^%s*(.-[^\\])%s*=%s*(.-)%s*$"]
      119 NAMECALL                         R18 R17 K17 ["match"]
      121 CALL                             R18 2 2
      122 JUMPIFNOT                        R18 ; [+11]
      123 DUPTABLE                         R22 K26 [{"key", "value"}]
      124 SETTABLEKS                       R18 R22 K24 ["key"]
      126 SETTABLEKS                       R19 R22 K25 ["value"]
      128 FASTCALL2                        TABLE_INSERT R12 R22 ; [+4]
      130 MOVE                             R21 R12
      131 GETIMPORT                        R20 K9 [table.insert]
      133 CALL                             R20 2 0
      134 FORGLOOP                         R13 2 [inext] ; [-17]
      136 GETTABLE                         R13 R4 R8
      137 SETTABLEKS                       R12 R13 K27 ["filter"]
      139 FORNLOOP                         R6
      140 SETTABLEKS                       R4 R0 K28 ["data"]
      142 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["addSlash"]
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
       73 RETURN                           R0 0

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
       22 GETTABLEKS                       R6 R2 K1 ["data"]
       24 GETTABLEN                        R5 R6 1
       25 GETTABLEKS                       R4 R5 K3 ["name"]
       27 GETTABLEKS                       R7 R3 K1 ["data"]
       29 GETTABLEN                        R6 R7 1
       30 GETTABLEKS                       R5 R6 K3 ["name"]
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
        0 NAMECALL                         R2 R0 K0 ["copy"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K2 [ipairs]
        5 GETTABLEKS                       R4 R1 K3 ["data"]
        7 CALL                             R3 1 3
        8 FORGPREP_INEXT                   R3
        9 GETTABLEKS                       R9 R2 K3 ["data"]
       11 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       13 MOVE                             R10 R7
       14 GETIMPORT                        R8 K6 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 [inext] ; [-9]
       19 RETURN                           R2 1

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
        6 JUMPIFNOTEQKB                    R2 TRUE ; [+3]
        8 MOVE                             R4 R3
        9 JUMPIF                           R4 ; [+1]
       10 LOADNIL                          R4
       11 RETURN                           R4 1

PROTO_18:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K1 [tostring]
        9 CALL                             R4 1 1
       10 JUMPIFEQ                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_19:
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

PROTO_20:
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
       17 JUMPIFNOTEQKB                    R11 TRUE ; [+3]
       19 MOVE                             R10 R12
       20 JUMPIF                           R10 ; [+1]
       21 LOADNIL                          R10
       22 MOVE                             R11 R1
       23 FASTCALL1                        TOSTRING R10 ; [+3]
       24 MOVE                             R13 R10
       25 GETIMPORT                        R12 K7 [tostring]
       27 CALL                             R12 1 1
       28 MOVE                             R10 R12
       29 FASTCALL1                        TOSTRING R11 ; [+3]
       30 MOVE                             R13 R11
       31 GETIMPORT                        R12 K7 [tostring]
       33 CALL                             R12 1 1
       34 MOVE                             R11 R12
       35 LOADB                            R9 1
       36 JUMPIFEQKS                       R11 K8 ["*"] ; [+5]
       38 JUMPIFEQ                         R10 R11 ; [+2]
       40 LOADB                            R9 0 +1
       41 LOADB                            R9 1
       42 JUMPIFNOT                        R9 ; [+7]
       43 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       45 MOVE                             R10 R3
       46 MOVE                             R11 R8
       47 GETIMPORT                        R9 K11 [table.insert]
       49 CALL                             R9 2 0
       50 FORGLOOP                         R4 2 [inext] ; [-41]
       52 LENGTH                           R4 R3
       53 JUMPIFNOTEQKN                    R4 K12 [0] ; [+20]
       55 GETIMPORT                        R5 K4 [pcall]
       57 NEWCLOSURE                       R6 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R1
       60 CALL                             R5 1 2
       61 JUMPIFNOTEQKB                    R5 TRUE ; [+3]
       63 MOVE                             R4 R6
       64 JUMPIF                           R4 ; [+1]
       65 LOADNIL                          R4
       66 JUMPIFNOT                        R4 ; [+7]
       67 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       69 MOVE                             R6 R3
       70 MOVE                             R7 R4
       71 GETIMPORT                        R5 K11 [table.insert]
       73 CALL                             R5 2 0
       74 RETURN                           R3 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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
       14 GETUPVAL                         R5 0
       15 MOVE                             R6 R3
       16 LOADK                            R7 K5 ["."]
       17 CALL                             R5 2 1
       18 LOADN                            R8 1
       19 LENGTH                           R6 R5
       20 LOADN                            R7 1
       21 FORNPREP                         R6
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R9 R10 K6 ["removeSlash"]
       25 GETTABLE                         R10 R5 R8
       26 CALL                             R9 1 1
       27 SETTABLE                         R9 R5 R8
       28 FORNLOOP                         R6
       29 NEWTABLE                         R7 0 1
       31 MOVE                             R8 R0
       32 SETLIST                          R7 R8 1 [1]
       34 GETIMPORT                        R8 K8 [ipairs]
       36 MOVE                             R9 R5
       37 CALL                             R8 1 3
       38 FORGPREP_INEXT                   R8
       39 GETUPVAL                         R13 2
       40 MOVE                             R14 R7
       41 MOVE                             R15 R12
       42 CALL                             R13 2 1
       43 MOVE                             R7 R13
       44 FORGLOOP                         R8 2 [inext] ; [-6]
       46 MOVE                             R6 R7
       47 GETIMPORT                        R7 K8 [ipairs]
       49 MOVE                             R8 R6
       50 CALL                             R7 1 3
       51 FORGPREP_INEXT                   R7
       52 MOVE                             R13 R4
       53 GETIMPORT                        R14 K10 [pcall]
       55 NEWCLOSURE                       R15 P0
       56 CAPTURE                          VAL R11
       57 CAPTURE                          VAL R13
       58 CALL                             R14 1 2
       59 JUMPIFNOTEQKB                    R14 TRUE ; [+3]
       61 MOVE                             R12 R15
       62 JUMPIF                           R12 ; [+1]
       63 LOADNIL                          R12
       64 MOVE                             R14 R12
       65 GETUPVAL                         R16 1
       66 GETTABLEKS                       R15 R16 K6 ["removeSlash"]
       68 GETTABLEKS                       R16 R1 K11 ["value"]
       70 CALL                             R15 1 1
       71 FASTCALL1                        TOSTRING R14 ; [+3]
       72 MOVE                             R17 R14
       73 GETIMPORT                        R16 K13 [tostring]
       75 CALL                             R16 1 1
       76 MOVE                             R14 R16
       77 FASTCALL1                        TOSTRING R15 ; [+3]
       78 MOVE                             R17 R15
       79 GETIMPORT                        R16 K13 [tostring]
       81 CALL                             R16 1 1
       82 MOVE                             R15 R16
       83 LOADB                            R13 1
       84 JUMPIFEQKS                       R15 K14 ["*"] ; [+5]
       86 JUMPIFEQ                         R14 R15 ; [+2]
       88 LOADB                            R13 0 +1
       89 LOADB                            R13 1
       90 JUMPIFNOT                        R13 ; [+2]
       91 LOADB                            R13 1
       92 RETURN                           R13 1
       93 FORGLOOP                         R7 2 [inext] ; [-42]
       95 LOADB                            R7 0
       96 RETURN                           R7 1

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 NAMECALL                         R1 R0 K0 ["getInstances"]
        2 CALL                             R1 1 1
        3 LENGTH                           R2 R1
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETTABLEN                        R2 R1 1
        9 RETURN                           R2 1

PROTO_27:
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
       17 GETTABLEKS                       R4 R0 K6 ["data"]
       19 GETTABLEN                        R3 R4 1
       20 GETTABLEKS                       R2 R3 K7 ["name"]
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
       56 OR                               R4 R5 R1
       57 SETLIST                          R3 R4 1 [1]
       59 GETTABLEKS                       R5 R0 K12 ["root"]
       61 JUMPIFNOT                        R5 ; [+2]
       62 LOADN                            R4 1
       63 JUMP                             ; [+1]
       64 LOADN                            R4 2
       65 NAMECALL                         R5 R0 K0 ["size"]
       67 CALL                             R5 1 1
       68 JUMPIFNOTLE                      R4 R5 ; [+28]
       70 GETTABLEKS                       R7 R0 K6 ["data"]
       72 GETTABLE                         R6 R7 R4
       73 GETTABLEKS                       R5 R6 K7 ["name"]
       75 GETTABLEKS                       R8 R0 K6 ["data"]
       77 GETTABLE                         R7 R8 R4
       78 GETTABLEKS                       R6 R7 K13 ["filter"]
       80 GETUPVAL                         R7 0
       81 MOVE                             R8 R3
       82 MOVE                             R9 R5
       83 CALL                             R7 2 1
       84 GETUPVAL                         R8 1
       85 MOVE                             R9 R7
       86 MOVE                             R10 R6
       87 CALL                             R8 2 1
       88 MOVE                             R3 R8
       89 LENGTH                           R8 R3
       90 JUMPIFNOTEQKN                    R8 K14 [0] ; [+4]
       92 MOVE                             R8 R3
       93 SUBK                             R9 R4 K15 [1]
       94 RETURN                           R8 2
       95 ADDK                             R4 R4 K15 [1]
       96 JUMPBACK                         ; [-32]
       97 MOVE                             R5 R3
       98 SUBK                             R6 R4 K15 [1]
       99 RETURN                           R5 2

PROTO_28:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 GETTABLEKS                       R3 R0 K0 ["waitDelay"]
        4 SETTABLEKS                       R3 R0 K0 ["waitDelay"]
        6 MOVE                             R3 R1
        7 JUMPIF                           R3 ; [+2]
        8 GETTABLEKS                       R3 R0 K1 ["waitTimeOut"]
       10 SETTABLEKS                       R3 R0 K1 ["waitTimeOut"]
       12 RETURN                           R0 1

PROTO_29:
        0 MOVE                             R5 R3
        1 JUMPIF                           R5 ; [+2]
        2 GETTABLEKS                       R5 R0 K0 ["waitDelay"]
        4 MOVE                             R3 R5
        5 MOVE                             R5 R4
        6 JUMPIF                           R5 ; [+2]
        7 GETTABLEKS                       R5 R0 K1 ["waitTimeOut"]
        9 MOVE                             R4 R5
       10 GETIMPORT                        R5 K3 [tick]
       12 CALL                             R5 0 1
       13 ADD                              R4 R5 R4
       14 MOVE                             R5 R1
       15 CALL                             R5 0 1
       16 MOVE                             R6 R2
       17 MOVE                             R7 R5
       18 CALL                             R6 1 1
       19 JUMPIFNOT                        R6 ; [+3]
       20 MOVE                             R6 R5
       21 LOADB                            R7 1
       22 RETURN                           R6 2
       23 GETIMPORT                        R6 K5 [wait]
       25 MOVE                             R7 R3
       26 CALL                             R6 1 0
       27 GETIMPORT                        R6 K3 [tick]
       29 CALL                             R6 0 1
       30 JUMPIFNOTLT                      R4 R6 ; [+4]
       32 MOVE                             R6 R5
       33 LOADB                            R7 0
       34 RETURN                           R6 2
       35 JUMPBACK                         ; [-22]
       36 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getInstances"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_32:
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

PROTO_33:
        0 LENGTH                           R2 R0
        1 JUMPIFEQKN                       R2 K0 [0] ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_34:
        0 DUPCLOSURE                       R3 K0 [PROTO_33]
        1 NAMECALL                         R1 R0 K1 ["waitForInstances"]
        3 CALL                             R1 2 2
        4 JUMPIFEQKB                       R2 TRUE ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 RETURN                           R3 1

PROTO_35:
        0 LENGTH                           R2 R0
        1 GETUPVAL                         R3 0
        2 JUMPIFLE                         R3 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_36:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 NAMECALL                         R2 R0 K0 ["waitForInstances"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_37:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 JUMPIFNOT                        R2 ; [+9]
        5 GETIMPORT                        R4 K4 [ipairs]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 3
        9 FORGPREP_INEXT                   R4
       10 SETTABLEKS                       R3 R8 K5 ["Parent"]
       12 FORGLOOP                         R4 2 [inext] ; [-3]
       14 JUMPIFNOT                        R1 ; [+8]
       15 GETIMPORT                        R4 K7 [pairs]
       17 MOVE                             R5 R1
       18 CALL                             R4 1 3
       19 FORGPREP_NEXT                    R4
       20 SETTABLE                         R8 R3 R7
       21 FORGLOOP                         R4 2 ; [-2]
       23 RETURN                           R3 1

PROTO_38:
        0 SUB                              R5 R0 R1
        1 FASTCALL1                        MATH_ABS R5 ; [+2]
        2 GETIMPORT                        R4 K2 [math.abs]
        4 CALL                             R4 1 1
        5 JUMPIFLE                         R4 R2 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 RETURN                           R3 1

PROTO_39:
        0 DUPTABLE                         R1 K2 [{"textButton", "textLabel"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["new"]
        4 LOADK                            R3 K4 ["TextButton"]
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["textButton"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["new"]
       12 LOADK                            R3 K5 ["TextLabel"]
       13 MOVE                             R4 R0
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K1 ["textLabel"]
       17 RETURN                           R1 1

PROTO_40:
        0 NAMECALL                         R4 R0 K0 ["copy"]
        2 CALL                             R4 1 1
        3 NEWTABLE                         R5 0 1
        5 DUPTABLE                         R6 K3 [{"key", "value"}]
        6 LOADK                            R8 K4 ["."]
        7 NAMECALL                         R12 R1 K5 ["toString"]
        9 CALL                             R12 1 1
       10 MOVE                             R9 R12
       11 LOADK                            R10 K4 ["."]
       12 MOVE                             R11 R2
       13 CONCAT                           R7 R8 R11
       14 SETTABLEKS                       R7 R6 K1 ["key"]
       16 SETTABLEKS                       R3 R6 K2 ["value"]
       18 SETLIST                          R5 R6 1 [1]
       20 NAMECALL                         R8 R4 K6 ["size"]
       22 CALL                             R8 1 1
       23 MOVE                             R9 R5
       24 NAMECALL                         R6 R4 K7 ["mergeFilter"]
       26 CALL                             R6 3 0
       27 RETURN                           R4 1

PROTO_41:
        0 GETIMPORT                        R0 K1 [wait]
        2 LOADN                            R1 2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 LOADK                            R1 K2 ["Frame"]
        6 DUPTABLE                         R2 K5 [{"Name", "Parent"}]
        7 LOADK                            R3 K2 ["Frame"]
        8 SETTABLEKS                       R3 R2 K3 ["Name"]
       10 GETIMPORT                        R5 K7 [game]
       12 GETTABLEKS                       R4 R5 K8 ["Workspace"]
       14 GETTABLEKS                       R3 R4 K9 ["root"]
       16 SETTABLEKS                       R3 R2 K4 ["Parent"]
       18 NEWTABLE                         R3 0 2
       20 DUPTABLE                         R5 K11 [{"Text"}]
       21 LOADK                            R6 K12 ["Button3"]
       22 SETTABLEKS                       R6 R5 K10 ["Text"]
       24 GETIMPORT                        R6 K15 [Instance.new]
       26 LOADK                            R7 K16 ["TextButton"]
       27 CALL                             R6 1 1
       28 JUMPIFNOT                        R5 ; [+8]
       29 GETIMPORT                        R7 K18 [pairs]
       31 MOVE                             R8 R5
       32 CALL                             R7 1 3
       33 FORGPREP_NEXT                    R7
       34 SETTABLE                         R11 R6 R10
       35 FORGLOOP                         R7 2 ; [-2]
       37 MOVE                             R4 R6
       38 DUPTABLE                         R6 K11 [{"Text"}]
       39 LOADK                            R7 K19 ["Label3"]
       40 SETTABLEKS                       R7 R6 K10 ["Text"]
       42 GETIMPORT                        R7 K15 [Instance.new]
       44 LOADK                            R8 K20 ["TextLabel"]
       45 CALL                             R7 1 1
       46 JUMPIFNOT                        R6 ; [+8]
       47 GETIMPORT                        R8 K18 [pairs]
       49 MOVE                             R9 R6
       50 CALL                             R8 1 3
       51 FORGPREP_NEXT                    R8
       52 SETTABLE                         R12 R7 R11
       53 FORGLOOP                         R8 2 ; [-2]
       55 MOVE                             R5 R7
       56 SETLIST                          R3 R4 2 [1]
       58 CALL                             R0 3 0
       59 RETURN                           R0 0

PROTO_42:
        0 GETIMPORT                        R0 K1 [wait]
        2 LOADN                            R1 2
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K2 ["Destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_43:
        0 DUPCLOSURE                       R0 K0 [PROTO_38]
        1 LOADNIL                          R1
        2 GETIMPORT                        R3 K2 [game]
        4 GETTABLEKS                       R2 R3 K3 ["Workspace"]
        6 LOADK                            R4 K4 ["root"]
        7 NAMECALL                         R2 R2 K5 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+208]
       12 GETUPVAL                         R2 0
       13 LOADK                            R3 K6 ["Folder"]
       14 DUPTABLE                         R4 K9 [{"Name", "Parent"}]
       15 LOADK                            R5 K4 ["root"]
       16 SETTABLEKS                       R5 R4 K7 ["Name"]
       18 GETIMPORT                        R6 K2 [game]
       20 GETTABLEKS                       R5 R6 K3 ["Workspace"]
       22 SETTABLEKS                       R5 R4 K8 ["Parent"]
       24 NEWTABLE                         R5 0 3
       26 GETUPVAL                         R6 0
       27 LOADK                            R7 K10 ["Frame"]
       28 DUPTABLE                         R8 K11 [{"Name"}]
       29 LOADK                            R9 K10 ["Frame"]
       30 SETTABLEKS                       R9 R8 K7 ["Name"]
       32 NEWTABLE                         R9 0 3
       34 DUPTABLE                         R11 K13 [{"Text"}]
       35 LOADK                            R12 K14 ["Button1"]
       36 SETTABLEKS                       R12 R11 K12 ["Text"]
       38 GETIMPORT                        R12 K17 [Instance.new]
       40 LOADK                            R13 K18 ["TextButton"]
       41 CALL                             R12 1 1
       42 JUMPIFNOT                        R11 ; [+8]
       43 GETIMPORT                        R13 K20 [pairs]
       45 MOVE                             R14 R11
       46 CALL                             R13 1 3
       47 FORGPREP_NEXT                    R13
       48 SETTABLE                         R17 R12 R16
       49 FORGLOOP                         R13 2 ; [-2]
       51 MOVE                             R10 R12
       52 DUPTABLE                         R12 K13 [{"Text"}]
       53 LOADK                            R13 K21 ["Label1"]
       54 SETTABLEKS                       R13 R12 K12 ["Text"]
       56 GETIMPORT                        R13 K17 [Instance.new]
       58 LOADK                            R14 K22 ["TextLabel"]
       59 CALL                             R13 1 1
       60 JUMPIFNOT                        R12 ; [+8]
       61 GETIMPORT                        R14 K20 [pairs]
       63 MOVE                             R15 R12
       64 CALL                             R14 1 3
       65 FORGPREP_NEXT                    R14
       66 SETTABLE                         R18 R13 R17
       67 FORGLOOP                         R14 2 ; [-2]
       69 MOVE                             R11 R13
       70 NEWTABLE                         R13 0 0
       72 GETIMPORT                        R14 K17 [Instance.new]
       74 LOADK                            R15 K23 ["ImageButton"]
       75 CALL                             R14 1 1
       76 JUMPIFNOT                        R13 ; [+8]
       77 GETIMPORT                        R15 K20 [pairs]
       79 MOVE                             R16 R13
       80 CALL                             R15 1 3
       81 FORGPREP_NEXT                    R15
       82 SETTABLE                         R19 R14 R18
       83 FORGLOOP                         R15 2 ; [-2]
       85 MOVE                             R12 R14
       86 SETLIST                          R9 R10 3 [1]
       88 CALL                             R6 3 1
       89 GETUPVAL                         R7 0
       90 LOADK                            R8 K10 ["Frame"]
       91 DUPTABLE                         R9 K11 [{"Name"}]
       92 LOADK                            R10 K10 ["Frame"]
       93 SETTABLEKS                       R10 R9 K7 ["Name"]
       95 NEWTABLE                         R10 0 2
       97 DUPTABLE                         R12 K13 [{"Text"}]
       98 LOADK                            R13 K24 ["Button2"]
       99 SETTABLEKS                       R13 R12 K12 ["Text"]
      101 GETIMPORT                        R13 K17 [Instance.new]
      103 LOADK                            R14 K18 ["TextButton"]
      104 CALL                             R13 1 1
      105 JUMPIFNOT                        R12 ; [+8]
      106 GETIMPORT                        R14 K20 [pairs]
      108 MOVE                             R15 R12
      109 CALL                             R14 1 3
      110 FORGPREP_NEXT                    R14
      111 SETTABLE                         R18 R13 R17
      112 FORGLOOP                         R14 2 ; [-2]
      114 MOVE                             R11 R13
      115 DUPTABLE                         R13 K13 [{"Text"}]
      116 LOADK                            R14 K25 ["Label2"]
      117 SETTABLEKS                       R14 R13 K12 ["Text"]
      119 GETIMPORT                        R14 K17 [Instance.new]
      121 LOADK                            R15 K22 ["TextLabel"]
      122 CALL                             R14 1 1
      123 JUMPIFNOT                        R13 ; [+8]
      124 GETIMPORT                        R15 K20 [pairs]
      126 MOVE                             R16 R13
      127 CALL                             R15 1 3
      128 FORGPREP_NEXT                    R15
      129 SETTABLE                         R19 R14 R18
      130 FORGLOOP                         R15 2 ; [-2]
      132 MOVE                             R12 R14
      133 SETLIST                          R10 R11 2 [1]
      135 CALL                             R7 3 1
      136 GETUPVAL                         R8 0
      137 LOADK                            R9 K10 ["Frame"]
      138 DUPTABLE                         R10 K11 [{"Name"}]
      139 LOADK                            R11 K10 ["Frame"]
      140 SETTABLEKS                       R11 R10 K7 ["Name"]
      142 NEWTABLE                         R11 0 3
      144 DUPTABLE                         R13 K13 [{"Text"}]
      145 LOADK                            R14 K26 ["Label3"]
      146 SETTABLEKS                       R14 R13 K12 ["Text"]
      148 GETIMPORT                        R14 K17 [Instance.new]
      150 LOADK                            R15 K22 ["TextLabel"]
      151 CALL                             R14 1 1
      152 JUMPIFNOT                        R13 ; [+8]
      153 GETIMPORT                        R15 K20 [pairs]
      155 MOVE                             R16 R13
      156 CALL                             R15 1 3
      157 FORGPREP_NEXT                    R15
      158 SETTABLE                         R19 R14 R18
      159 FORGLOOP                         R15 2 ; [-2]
      161 MOVE                             R12 R14
      162 GETUPVAL                         R13 0
      163 LOADK                            R14 K10 ["Frame"]
      164 DUPTABLE                         R15 K11 [{"Name"}]
      165 LOADK                            R16 K27 ["special chars !\"#$%&'()*+,-./:;<=>?@[]\\^_`{|}~"]
      166 SETTABLEKS                       R16 R15 K7 ["Name"]
      168 NEWTABLE                         R16 0 1
      170 DUPTABLE                         R18 K11 [{"Name"}]
      171 LOADK                            R19 K28 ["TextButton3"]
      172 SETTABLEKS                       R19 R18 K7 ["Name"]
      174 GETIMPORT                        R19 K17 [Instance.new]
      176 LOADK                            R20 K18 ["TextButton"]
      177 CALL                             R19 1 1
      178 JUMPIFNOT                        R18 ; [+8]
      179 GETIMPORT                        R20 K20 [pairs]
      181 MOVE                             R21 R18
      182 CALL                             R20 1 3
      183 FORGPREP_NEXT                    R20
      184 SETTABLE                         R24 R19 R23
      185 FORGLOOP                         R20 2 ; [-2]
      187 MOVE                             R17 R19
      188 SETLIST                          R16 R17 1 [1]
      190 CALL                             R13 3 1
      191 DUPTABLE                         R15 K29 [{"Name", "Text"}]
      192 LOADK                            R16 K30 ["SpecialCharLabel"]
      193 SETTABLEKS                       R16 R15 K7 ["Name"]
      195 LOADK                            R16 K27 ["special chars !\"#$%&'()*+,-./:;<=>?@[]\\^_`{|}~"]
      196 SETTABLEKS                       R16 R15 K12 ["Text"]
      198 GETIMPORT                        R16 K17 [Instance.new]
      200 LOADK                            R17 K22 ["TextLabel"]
      201 CALL                             R16 1 1
      202 JUMPIFNOT                        R15 ; [+8]
      203 GETIMPORT                        R17 K20 [pairs]
      205 MOVE                             R18 R15
      206 CALL                             R17 1 3
      207 FORGPREP_NEXT                    R17
      208 SETTABLE                         R21 R16 R20
      209 FORGLOOP                         R17 2 ; [-2]
      211 MOVE                             R14 R16
      212 SETLIST                          R11 R12 3 [1]
      214 CALL                             R8 3 1
      215 SETLIST                          R5 R6 3 [1]
      217 CALL                             R2 3 1
      218 MOVE                             R1 R2
      219 GETUPVAL                         R3 1
      220 GETTABLEKS                       R2 R3 K16 ["new"]
      222 LOADK                            R3 K31 ["game.Workspace.root.Frame"]
      223 CALL                             R2 1 1
      224 DUPCLOSURE                       R3 K32 [PROTO_39]
      225 CAPTURE                          UPVAL U1
      226 DUPCLOSURE                       R4 K33 [PROTO_40]
      227 MOVE                             R5 R4
      228 MOVE                             R6 R2
      229 DUPTABLE                         R8 K36 [{"textButton", "textLabel"}]
      230 GETUPVAL                         R10 1
      231 GETTABLEKS                       R9 R10 K16 ["new"]
      233 LOADK                            R10 K18 ["TextButton"]
      234 LOADNIL                          R11
      235 CALL                             R9 2 1
      236 SETTABLEKS                       R9 R8 K34 ["textButton"]
      238 GETUPVAL                         R10 1
      239 GETTABLEKS                       R9 R10 K16 ["new"]
      241 LOADK                            R10 K22 ["TextLabel"]
      242 LOADNIL                          R11
      243 CALL                             R9 2 1
      244 SETTABLEKS                       R9 R8 K35 ["textLabel"]
      246 GETTABLEKS                       R7 R8 K34 ["textButton"]
      248 LOADK                            R8 K12 ["Text"]
      249 LOADK                            R9 K24 ["Button2"]
      250 CALL                             R5 4 1
      251 GETIMPORT                        R6 K38 [print]
      253 LOADK                            R7 K39 ["createSearch:"]
      254 NAMECALL                         R8 R5 K40 ["toString"]
      256 CALL                             R8 1 -1
      257 CALL                             R6 -1 0
      258 NAMECALL                         R6 R5 K41 ["waitForFirstInstance"]
      260 CALL                             R6 1 1
      261 FASTCALL1                        ASSERT R6 ; [+3]
      262 MOVE                             R8 R6
      263 GETIMPORT                        R7 K43 [assert]
      265 CALL                             R7 1 0
      266 DUPTABLE                         R7 K36 [{"textButton", "textLabel"}]
      267 GETUPVAL                         R9 1
      268 GETTABLEKS                       R8 R9 K16 ["new"]
      270 LOADK                            R9 K18 ["TextButton"]
      271 MOVE                             R10 R6
      272 CALL                             R8 2 1
      273 SETTABLEKS                       R8 R7 K34 ["textButton"]
      275 GETUPVAL                         R9 1
      276 GETTABLEKS                       R8 R9 K16 ["new"]
      278 LOADK                            R9 K22 ["TextLabel"]
      279 MOVE                             R10 R6
      280 CALL                             R8 2 1
      281 SETTABLEKS                       R8 R7 K35 ["textLabel"]
      283 GETTABLEKS                       R8 R7 K35 ["textLabel"]
      285 NAMECALL                         R8 R8 K41 ["waitForFirstInstance"]
      287 CALL                             R8 1 1
      288 GETTABLEKS                       R11 R8 K12 ["Text"]
      290 JUMPIFEQKS                       R11 K25 ["Label2"] ; [+2]
      292 LOADB                            R10 0 +1
      293 LOADB                            R10 1
      294 FASTCALL1                        ASSERT R10 ; [+2]
      295 GETIMPORT                        R9 K43 [assert]
      297 CALL                             R9 1 0
      298 GETIMPORT                        R9 K38 [print]
      300 LOADK                            R10 K44 ["relative path test"]
      301 CALL                             R9 1 0
      302 GETUPVAL                         R10 1
      303 GETTABLEKS                       R9 R10 K16 ["new"]
      305 LOADK                            R10 K45 ["game.Workspace.root.Frame[.TextButton.Text = Button2]"]
      306 CALL                             R9 1 1
      307 NAMECALL                         R10 R9 K46 ["getFirstInstance"]
      309 CALL                             R10 1 1
      310 FASTCALL1                        ASSERT R10 ; [+3]
      311 MOVE                             R12 R10
      312 GETIMPORT                        R11 K43 [assert]
      314 CALL                             R11 1 0
      315 GETUPVAL                         R12 1
      316 GETTABLEKS                       R11 R12 K16 ["new"]
      318 LOADK                            R12 K18 ["TextButton"]
      319 MOVE                             R13 R10
      320 CALL                             R11 2 1
      321 NAMECALL                         R12 R11 K46 ["getFirstInstance"]
      323 CALL                             R12 1 1
      324 GETTABLEKS                       R15 R12 K12 ["Text"]
      326 JUMPIFEQKS                       R15 K24 ["Button2"] ; [+2]
      328 LOADB                            R14 0 +1
      329 LOADB                            R14 1
      330 FASTCALL1                        ASSERT R14 ; [+2]
      331 GETIMPORT                        R13 K43 [assert]
      333 CALL                             R13 1 0
      334 GETUPVAL                         R14 1
      335 GETTABLEKS                       R13 R14 K16 ["new"]
      337 LOADK                            R14 K47 ["game.Workspace.root.Frame[.TextButton.Text = Button2, .ClassName = Frame].TextLabel"]
      338 CALL                             R13 1 1
      339 NAMECALL                         R14 R13 K46 ["getFirstInstance"]
      341 CALL                             R14 1 1
      342 GETTABLEKS                       R17 R14 K12 ["Text"]
      344 JUMPIFEQKS                       R17 K25 ["Label2"] ; [+2]
      346 LOADB                            R16 0 +1
      347 LOADB                            R16 1
      348 FASTCALL1                        ASSERT R16 ; [+2]
      349 GETIMPORT                        R15 K43 [assert]
      351 CALL                             R15 1 0
      352 GETUPVAL                         R16 1
      353 GETTABLEKS                       R15 R16 K16 ["new"]
      355 MOVE                             R16 R14
      356 CALL                             R15 1 1
      357 NAMECALL                         R15 R15 K40 ["toString"]
      359 CALL                             R15 1 1
      360 JUMPIFEQKS                       R15 K48 ["game.Workspace.root.Frame.TextLabel"] ; [+2]
      362 LOADB                            R17 0 +1
      363 LOADB                            R17 1
      364 FASTCALL1                        ASSERT R17 ; [+2]
      365 GETIMPORT                        R16 K43 [assert]
      367 CALL                             R16 1 0
      368 GETUPVAL                         R17 1
      369 GETTABLEKS                       R16 R17 K16 ["new"]
      371 LOADK                            R17 K49 ["game.Workspace.root.Frame[.special chars !\"#$%&'()*+\\,-\\./:;<\\=>?@\\[\\]\\\\^_`{|}~.TextButton3.Name = TextButton3].TextLabel"]
      372 CALL                             R16 1 1
      373 NAMECALL                         R19 R16 K40 ["toString"]
      375 CALL                             R19 1 1
      376 JUMPIFEQKS                       R19 K49 ["game.Workspace.root.Frame[.special chars !\"#$%&'()*+\\,-\\./:;<\\=>?@\\[\\]\\\\^_`{|}~.TextButton3.Name = TextButton3].TextLabel"] ; [+2]
      378 LOADB                            R18 0 +1
      379 LOADB                            R18 1
      380 FASTCALL1                        ASSERT R18 ; [+2]
      381 GETIMPORT                        R17 K43 [assert]
      383 CALL                             R17 1 0
      384 NAMECALL                         R17 R16 K46 ["getFirstInstance"]
      386 CALL                             R17 1 1
      387 GETTABLEKS                       R20 R17 K12 ["Text"]
      389 JUMPIFEQKS                       R20 K26 ["Label3"] ; [+2]
      391 LOADB                            R19 0 +1
      392 LOADB                            R19 1
      393 FASTCALL1                        ASSERT R19 ; [+2]
      394 GETIMPORT                        R18 K43 [assert]
      396 CALL                             R18 1 0
      397 GETUPVAL                         R19 1
      398 GETTABLEKS                       R18 R19 K16 ["new"]
      400 LOADK                            R19 K50 ["game.Workspace.root.Frame[.SpecialCharLabel.Text = special chars !\"#$%&'()*+\\,-\\./:;<\\=>?@\\[\\]\\\\^_`{|}~].TextLabel"]
      401 CALL                             R18 1 1
      402 NAMECALL                         R21 R18 K40 ["toString"]
      404 CALL                             R21 1 1
      405 JUMPIFEQKS                       R21 K50 ["game.Workspace.root.Frame[.SpecialCharLabel.Text = special chars !\"#$%&'()*+\\,-\\./:;<\\=>?@\\[\\]\\\\^_`{|}~].TextLabel"] ; [+2]
      407 LOADB                            R20 0 +1
      408 LOADB                            R20 1
      409 FASTCALL1                        ASSERT R20 ; [+2]
      410 GETIMPORT                        R19 K43 [assert]
      412 CALL                             R19 1 0
      413 NAMECALL                         R19 R18 K46 ["getFirstInstance"]
      415 CALL                             R19 1 1
      416 GETTABLEKS                       R22 R19 K12 ["Text"]
      418 JUMPIFEQKS                       R22 K26 ["Label3"] ; [+2]
      420 LOADB                            R21 0 +1
      421 LOADB                            R21 1
      422 FASTCALL1                        ASSERT R21 ; [+2]
      423 GETIMPORT                        R20 K43 [assert]
      425 CALL                             R20 1 0
      426 GETUPVAL                         R21 1
      427 GETTABLEKS                       R20 R21 K16 ["new"]
      429 LOADK                            R21 K51 ["game.Workspace.root.Frame.special chars !\"#$%&'()*+\\,-\\./:;<\\=>?@\\[\\]\\\\^_`{|}~.TextButton3"]
      430 CALL                             R20 1 1
      431 NAMECALL                         R21 R20 K40 ["toString"]
      433 CALL                             R21 1 1
      434 JUMPIFEQKS                       R21 K51 ["game.Workspace.root.Frame.special chars !\"#$%&'()*+\\,-\\./:;<\\=>?@\\[\\]\\\\^_`{|}~.TextButton3"] ; [+2]
      436 LOADB                            R23 0 +1
      437 LOADB                            R23 1
      438 FASTCALL1                        ASSERT R23 ; [+2]
      439 GETIMPORT                        R22 K43 [assert]
      441 CALL                             R22 1 0
      442 NAMECALL                         R22 R20 K46 ["getFirstInstance"]
      444 CALL                             R22 1 1
      445 GETTABLEKS                       R25 R22 K7 ["Name"]
      447 JUMPIFEQKS                       R25 K28 ["TextButton3"] ; [+2]
      449 LOADB                            R24 0 +1
      450 LOADB                            R24 1
      451 FASTCALL1                        ASSERT R24 ; [+2]
      452 GETIMPORT                        R23 K43 [assert]
      454 CALL                             R23 1 0
      455 GETUPVAL                         R24 1
      456 GETTABLEKS                       R23 R24 K16 ["new"]
      458 LOADK                            R24 K52 ["game.Workspace.root"]
      459 CALL                             R23 1 1
      460 GETUPVAL                         R25 1
      461 GETTABLEKS                       R24 R25 K16 ["new"]
      463 LOADK                            R25 K47 ["game.Workspace.root.Frame[.TextButton.Text = Button2, .ClassName = Frame].TextLabel"]
      464 CALL                             R24 1 1
      465 MOVE                             R27 R23
      466 NAMECALL                         R25 R24 K53 ["relative"]
      468 CALL                             R25 2 1
      469 NAMECALL                         R26 R25 K54 ["clearFilter"]
      471 CALL                             R26 1 0
      472 GETIMPORT                        R26 K38 [print]
      474 LOADK                            R27 K55 ["testing getFirstInstance()"]
      475 CALL                             R26 1 0
      476 GETIMPORT                        R26 K38 [print]
      478 NAMECALL                         R27 R24 K40 ["toString"]
      480 CALL                             R27 1 -1
      481 CALL                             R26 -1 0
      482 NAMECALL                         R26 R24 K46 ["getFirstInstance"]
      484 CALL                             R26 1 1
      485 GETTABLEKS                       R29 R26 K12 ["Text"]
      487 JUMPIFEQKS                       R29 K25 ["Label2"] ; [+2]
      489 LOADB                            R28 0 +1
      490 LOADB                            R28 1
      491 FASTCALL1                        ASSERT R28 ; [+2]
      492 GETIMPORT                        R27 K43 [assert]
      494 CALL                             R27 1 0
      495 GETIMPORT                        R27 K38 [print]
      497 LOADK                            R28 K56 ["testing wildcard *"]
      498 CALL                             R27 1 0
      499 GETUPVAL                         R28 1
      500 GETTABLEKS                       R27 R28 K16 ["new"]
      502 LOADK                            R28 K57 ["game.Workspace.root.*[.TextButton.Text = Button2].TextLabel"]
      503 CALL                             R27 1 1
      504 MOVE                             R24 R27
      505 NAMECALL                         R27 R24 K46 ["getFirstInstance"]
      507 CALL                             R27 1 1
      508 MOVE                             R26 R27
      509 GETTABLEKS                       R29 R26 K12 ["Text"]
      511 JUMPIFEQKS                       R29 K25 ["Label2"] ; [+2]
      513 LOADB                            R28 0 +1
      514 LOADB                            R28 1
      515 FASTCALL1                        ASSERT R28 ; [+2]
      516 GETIMPORT                        R27 K43 [assert]
      518 CALL                             R27 1 0
      519 GETUPVAL                         R28 1
      520 GETTABLEKS                       R27 R28 K16 ["new"]
      522 LOADK                            R28 K58 ["game.Workspace.root.*[.ImageButton.Name = *].TextLabel"]
      523 CALL                             R27 1 1
      524 MOVE                             R24 R27
      525 NAMECALL                         R27 R24 K46 ["getFirstInstance"]
      527 CALL                             R27 1 1
      528 MOVE                             R26 R27
      529 GETTABLEKS                       R29 R26 K12 ["Text"]
      531 JUMPIFEQKS                       R29 K21 ["Label1"] ; [+2]
      533 LOADB                            R28 0 +1
      534 LOADB                            R28 1
      535 FASTCALL1                        ASSERT R28 ; [+2]
      536 GETIMPORT                        R27 K43 [assert]
      538 CALL                             R27 1 0
      539 LOADNIL                          R27
      540 GETIMPORT                        R28 K38 [print]
      542 LOADK                            R29 K59 ["testing timeout waitForNInstances() "]
      543 CALL                             R28 1 0
      544 GETUPVAL                         R29 1
      545 GETTABLEKS                       R28 R29 K16 ["new"]
      547 LOADK                            R29 K48 ["game.Workspace.root.Frame.TextLabel"]
      548 CALL                             R28 1 1
      549 MOVE                             R24 R28
      550 GETIMPORT                        R28 K61 [tick]
      552 CALL                             R28 0 1
      553 MOVE                             R27 R28
      554 LOADN                            R30 2
      555 NAMECALL                         R28 R24 K62 ["setWait"]
      557 CALL                             R28 2 1
      558 LOADN                            R30 5
      559 NAMECALL                         R28 R28 K63 ["waitForNInstances"]
      561 CALL                             R28 2 2
      562 GETIMPORT                        R33 K61 [tick]
      564 CALL                             R33 0 1
      565 SUB                              R32 R33 R27
      566 SUBK                             R34 R32 K64 [2]
      567 FASTCALL1                        MATH_ABS R34 ; [+2]
      568 GETIMPORT                        R33 K67 [math.abs]
      570 CALL                             R33 1 1
      571 LOADK                            R34 K68 [0.5]
      572 JUMPIFLE                         R33 R34 ; [+2]
      574 LOADB                            R31 0 +1
      575 LOADB                            R31 1
      576 FASTCALL1                        ASSERT R31 ; [+2]
      577 GETIMPORT                        R30 K43 [assert]
      579 CALL                             R30 1 0
      580 JUMPIFEQKB                       R29 FALSE ; [+2]
      582 LOADB                            R31 0 +1
      583 LOADB                            R31 1
      584 FASTCALL1                        ASSERT R31 ; [+2]
      585 GETIMPORT                        R30 K43 [assert]
      587 CALL                             R30 1 0
      588 GETIMPORT                        R30 K38 [print]
      590 LOADK                            R31 K69 ["testing normal waitForNInstances() "]
      591 CALL                             R30 1 0
      592 GETIMPORT                        R30 K61 [tick]
      594 CALL                             R30 0 1
      595 MOVE                             R27 R30
      596 GETIMPORT                        R30 K71 [spawn]
      598 DUPCLOSURE                       R31 K72 [PROTO_41]
      599 CAPTURE                          UPVAL U0
      600 CALL                             R30 1 0
      601 LOADN                            R32 5
      602 NAMECALL                         R30 R24 K62 ["setWait"]
      604 CALL                             R30 2 1
      605 LOADN                            R32 5
      606 NAMECALL                         R30 R30 K63 ["waitForNInstances"]
      608 CALL                             R30 2 1
      609 GETIMPORT                        R34 K61 [tick]
      611 CALL                             R34 0 1
      612 SUB                              R33 R34 R27
      613 SUBK                             R35 R33 K64 [2]
      614 FASTCALL1                        MATH_ABS R35 ; [+2]
      615 GETIMPORT                        R34 K67 [math.abs]
      617 CALL                             R34 1 1
      618 LOADK                            R35 K68 [0.5]
      619 JUMPIFLE                         R34 R35 ; [+2]
      621 LOADB                            R32 0 +1
      622 LOADB                            R32 1
      623 FASTCALL1                        ASSERT R32 ; [+2]
      624 GETIMPORT                        R31 K43 [assert]
      626 CALL                             R31 1 0
      627 LENGTH                           R33 R30
      628 LOADN                            R34 5
      629 JUMPIFLE                         R34 R33 ; [+2]
      631 LOADB                            R32 0 +1
      632 LOADB                            R32 1
      633 FASTCALL1                        ASSERT R32 ; [+2]
      634 GETIMPORT                        R31 K43 [assert]
      636 CALL                             R31 1 0
      637 GETIMPORT                        R31 K38 [print]
      639 LOADK                            R32 K73 ["testing  getFirstInstance() "]
      640 CALL                             R31 1 0
      641 GETUPVAL                         R32 1
      642 GETTABLEKS                       R31 R32 K16 ["new"]
      644 LOADK                            R32 K74 ["game.Workspace.root.Frame[.TextButton.Text = Button3]"]
      645 CALL                             R31 1 1
      646 MOVE                             R24 R31
      647 NAMECALL                         R31 R24 K46 ["getFirstInstance"]
      649 CALL                             R31 1 1
      650 MOVE                             R26 R31
      651 GETTABLEKS                       R34 R26 K18 ["TextButton"]
      653 GETTABLEKS                       R33 R34 K12 ["Text"]
      655 JUMPIFEQKS                       R33 K75 ["Button3"] ; [+2]
      657 LOADB                            R32 0 +1
      658 LOADB                            R32 1
      659 FASTCALL1                        ASSERT R32 ; [+2]
      660 GETIMPORT                        R31 K43 [assert]
      662 CALL                             R31 1 0
      663 GETIMPORT                        R31 K38 [print]
      665 LOADK                            R32 K76 ["testing timeout waitForDisappear() "]
      666 CALL                             R31 1 0
      667 GETIMPORT                        R31 K61 [tick]
      669 CALL                             R31 0 1
      670 MOVE                             R27 R31
      671 LOADN                            R33 2
      672 NAMECALL                         R31 R24 K62 ["setWait"]
      674 CALL                             R31 2 1
      675 NAMECALL                         R31 R31 K77 ["waitForDisappear"]
      677 CALL                             R31 1 1
      678 JUMPIFEQKB                       R31 FALSE ; [+2]
      680 LOADB                            R33 0 +1
      681 LOADB                            R33 1
      682 FASTCALL1                        ASSERT R33 ; [+2]
      683 GETIMPORT                        R32 K43 [assert]
      685 CALL                             R32 1 0
      686 GETIMPORT                        R35 K61 [tick]
      688 CALL                             R35 0 1
      689 SUB                              R34 R35 R27
      690 SUBK                             R36 R34 K64 [2]
      691 FASTCALL1                        MATH_ABS R36 ; [+2]
      692 GETIMPORT                        R35 K67 [math.abs]
      694 CALL                             R35 1 1
      695 LOADK                            R36 K68 [0.5]
      696 JUMPIFLE                         R35 R36 ; [+2]
      698 LOADB                            R33 0 +1
      699 LOADB                            R33 1
      700 FASTCALL1                        ASSERT R33 ; [+2]
      701 GETIMPORT                        R32 K43 [assert]
      703 CALL                             R32 1 0
      704 GETIMPORT                        R32 K38 [print]
      706 LOADK                            R33 K78 ["testing normal waitForDisappear() "]
      707 CALL                             R32 1 0
      708 GETIMPORT                        R32 K61 [tick]
      710 CALL                             R32 0 1
      711 MOVE                             R27 R32
      712 GETIMPORT                        R32 K71 [spawn]
      714 NEWCLOSURE                       R33 P4
      715 CAPTURE                          REF R26
      716 CALL                             R32 1 0
      717 LOADN                            R34 5
      718 NAMECALL                         R32 R24 K62 ["setWait"]
      720 CALL                             R32 2 1
      721 NAMECALL                         R32 R32 K77 ["waitForDisappear"]
      723 CALL                             R32 1 1
      724 GETIMPORT                        R36 K61 [tick]
      726 CALL                             R36 0 1
      727 SUB                              R35 R36 R27
      728 SUBK                             R37 R35 K64 [2]
      729 FASTCALL1                        MATH_ABS R37 ; [+2]
      730 GETIMPORT                        R36 K67 [math.abs]
      732 CALL                             R36 1 1
      733 LOADK                            R37 K68 [0.5]
      734 JUMPIFLE                         R36 R37 ; [+2]
      736 LOADB                            R34 0 +1
      737 LOADB                            R34 1
      738 FASTCALL1                        ASSERT R34 ; [+2]
      739 GETIMPORT                        R33 K43 [assert]
      741 CALL                             R33 1 0
      742 JUMPIFEQKB                       R32 TRUE ; [+2]
      744 LOADB                            R34 0 +1
      745 LOADB                            R34 1
      746 FASTCALL1                        ASSERT R34 ; [+2]
      747 GETIMPORT                        R33 K43 [assert]
      749 CALL                             R33 1 0
      750 GETIMPORT                        R33 K38 [print]
      752 LOADK                            R34 K79 ["test finised"]
      753 CALL                             R33 1 0
      754 CLOSEUPVALS                      R26
      755 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 LOADK                            R1 K1 ["XPath"]
        6 SETTABLEKS                       R1 R0 K2 ["__type"]
        8 NEWTABLE                         R1 0 0
       10 LOADN                            R4 1
       11 LOADN                            R2 6
       12 LOADN                            R3 1
       13 FORNPREP                         R2
       14 LOADK                            R5 K3 ["\\.=[],"]
       15 MOVE                             R7 R4
       16 MOVE                             R8 R4
       17 NAMECALL                         R5 R5 K4 ["sub"]
       19 CALL                             R5 3 1
       20 LOADB                            R6 1
       21 SETTABLE                         R6 R1 R5
       22 FORNLOOP                         R2
       23 DUPCLOSURE                       R2 K5 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R2 R0 K6 ["addSlash"]
       27 DUPCLOSURE                       R2 K7 [PROTO_1]
       28 SETTABLEKS                       R2 R0 K8 ["removeSlash"]
       30 DUPCLOSURE                       R2 K9 [PROTO_2]
       31 DUPCLOSURE                       R3 K10 [PROTO_3]
       32 CAPTURE                          VAL R3
       33 DUPCLOSURE                       R4 K11 [PROTO_4]
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R4 R0 K12 ["new"]
       37 DUPCLOSURE                       R4 K13 [PROTO_5]
       38 SETTABLEKS                       R4 R0 K14 ["size"]
       40 DUPCLOSURE                       R4 K15 [PROTO_6]
       41 SETTABLEKS                       R4 R0 K16 ["mergeFilter"]
       43 DUPCLOSURE                       R4 K17 [PROTO_7]
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R4 R0 K18 ["fromString"]
       48 DUPCLOSURE                       R4 K19 [PROTO_8]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R4 R0 K20 ["copy"]
       53 DUPCLOSURE                       R4 K21 [PROTO_9]
       54 SETTABLEKS                       R4 R0 K22 ["parent"]
       56 DUPCLOSURE                       R4 K23 [PROTO_10]
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R4 R0 K24 ["_itemToString"]
       60 DUPCLOSURE                       R4 K25 [PROTO_11]
       61 SETTABLEKS                       R4 R0 K26 ["toString"]
       63 DUPCLOSURE                       R4 K27 [PROTO_12]
       64 SETTABLEKS                       R4 R0 K28 ["hasChild"]
       66 DUPCLOSURE                       R4 K29 [PROTO_13]
       67 SETTABLEKS                       R4 R0 K30 ["relative"]
       69 DUPCLOSURE                       R4 K31 [PROTO_14]
       70 SETTABLEKS                       R4 R0 K32 ["cat"]
       72 DUPCLOSURE                       R4 K33 [PROTO_15]
       73 SETTABLEKS                       R4 R0 K34 ["clearFilter"]
       75 DUPCLOSURE                       R4 K35 [PROTO_17]
       76 DUPCLOSURE                       R5 K36 [PROTO_18]
       77 DUPCLOSURE                       R6 K37 [PROTO_19]
       78 DUPCLOSURE                       R7 K38 [PROTO_20]
       79 DUPCLOSURE                       R8 K39 [PROTO_21]
       80 CAPTURE                          VAL R7
       81 DUPCLOSURE                       R9 K40 [PROTO_22]
       82 CAPTURE                          VAL R8
       83 DUPCLOSURE                       R10 K41 [PROTO_23]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R8
       87 DUPCLOSURE                       R11 K42 [PROTO_24]
       88 CAPTURE                          VAL R10
       89 DUPCLOSURE                       R12 K43 [PROTO_25]
       90 CAPTURE                          VAL R11
       91 DUPCLOSURE                       R13 K44 [PROTO_26]
       92 SETTABLEKS                       R13 R0 K45 ["getFirstInstance"]
       94 DUPCLOSURE                       R13 K46 [PROTO_27]
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R12
       97 SETTABLEKS                       R13 R0 K47 ["getInstances"]
       99 DUPCLOSURE                       R13 K48 [PROTO_28]
      100 SETTABLEKS                       R13 R0 K49 ["setWait"]
      102 DUPCLOSURE                       R13 K50 [PROTO_29]
      103 SETTABLEKS                       R13 R0 K51 ["waitFor"]
      105 DUPCLOSURE                       R13 K52 [PROTO_30]
      106 SETTABLEKS                       R13 R0 K53 ["waitForFirstInstance"]
      108 DUPCLOSURE                       R13 K54 [PROTO_32]
      109 SETTABLEKS                       R13 R0 K55 ["waitForInstances"]
      111 DUPCLOSURE                       R13 K56 [PROTO_34]
      112 SETTABLEKS                       R13 R0 K57 ["waitForDisappear"]
      114 DUPCLOSURE                       R13 K58 [PROTO_36]
      115 SETTABLEKS                       R13 R0 K59 ["waitForNInstances"]
      117 DUPCLOSURE                       R13 K60 [PROTO_37]
      118 DUPCLOSURE                       R14 K61 [PROTO_43]
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R0
      121 RETURN                           R0 1
