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
        0 DUPTABLE                         R2 K6 [{[1], ["root"], ["waitDelay"] = 0.2, ["waitTimeOut"] = 2}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["data"]
        5 SETTABLEKS                       R1 R2 K1 ["root"]
        7 GETUPVAL                         R5 0
        8 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K8 [setmetatable]
       13 CALL                             R3 2 0
       14 FASTCALL1                        TYPE R0 ; [+3]
       15 MOVE                             R4 R0
       16 GETIMPORT                        R3 K10 [type]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K11 ["string"] ; [+6]
       21 MOVE                             R5 R0
       22 NAMECALL                         R3 R2 K12 ["fromString"]
       24 CALL                             R3 2 0
       25 RETURN                           R2 1
       26 FASTCALL1                        TYPE R0 ; [+3]
       27 MOVE                             R4 R0
       28 GETIMPORT                        R3 K10 [type]
       30 CALL                             R3 1 1
       31 JUMPIFNOTEQKS                    R3 K13 ["userdata"] ; [+24]
       33 MOVE                             R3 R0
       34 JUMPIFNOT                        R3 ; [+42]
       35 GETTABLEKS                       R4 R3 K14 ["Name"]
       37 GETTABLEKS                       R5 R3 K15 ["ClassName"]
       39 JUMPIFNOTEQKS                    R5 K16 ["DataModel"] ; [+2]
       41 LOADK                            R4 K17 ["game"]
       42 GETTABLEKS                       R6 R2 K0 ["data"]
       44 LOADN                            R7 1
       45 DUPTABLE                         R8 K19 [{"name"}]
       46 SETTABLEKS                       R4 R8 K18 ["name"]
       48 FASTCALL                         TABLE_INSERT ; [+2]
       49 GETIMPORT                        R5 K22 [table.insert]
       51 CALL                             R5 3 0
       52 GETTABLEKS                       R3 R3 K23 ["Parent"]
       54 JUMPBACK                         ; [-21]
       55 RETURN                           R2 1
       56 FASTCALL1                        GETMETATABLE R0 ; [+3]
       57 MOVE                             R4 R0
       58 GETIMPORT                        R3 K25 [getmetatable]
       60 CALL                             R3 1 1
       61 GETTABLEKS                       R3 R3 K26 ["__type"]
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K26 ["__type"]
       66 JUMPIFNOTEQ                      R3 R4 ; [+5]
       68 NAMECALL                         R3 R0 K27 ["copy"]
       70 CALL                             R3 1 -1
       71 RETURN                           R3 -1
       72 GETIMPORT                        R3 K29 [error]
       74 LOADK                            R4 K30 ["unknown parameter "]
       75 MOVE                             R5 R0
       76 CALL                             R3 2 0
       77 RETURN                           R2 1

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
       97 JUMPIFEQKNIL                     R9 ; [+41]
       99 GETTABLE                         R11 R4 R8
      100 GETUPVAL                         R12 0
      101 GETTABLEKS                       R12 R12 K19 ["removeSlash"]
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
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R9 R9 K6 ["removeSlash"]
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
       65 GETUPVAL                         R15 1
       66 GETTABLEKS                       R15 R15 K6 ["removeSlash"]
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
       70 GETTABLEKS                       R6 R0 K6 ["data"]
       72 GETTABLE                         R5 R6 R4
       73 GETTABLEKS                       R5 R5 K7 ["name"]
       75 GETTABLEKS                       R7 R0 K6 ["data"]
       77 GETTABLE                         R6 R7 R4
       78 GETTABLEKS                       R6 R6 K13 ["filter"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["new"]
        4 LOADK                            R3 K4 ["TextButton"]
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["textButton"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["new"]
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
        6 DUPTABLE                         R2 K5 [{["Name"] = "Frame", ["Parent"]}]
        7 GETIMPORT                        R3 K7 [game]
        9 GETTABLEKS                       R3 R3 K8 ["Workspace"]
       11 GETTABLEKS                       R3 R3 K9 ["root"]
       13 SETTABLEKS                       R3 R2 K4 ["Parent"]
       15 NEWTABLE                         R3 0 2
       17 DUPTABLE                         R5 K12 [{["Text"] = "Button3"}]
       18 GETIMPORT                        R6 K15 [Instance.new]
       20 LOADK                            R7 K16 ["TextButton"]
       21 CALL                             R6 1 1
       22 JUMPIFNOT                        R5 ; [+8]
       23 GETIMPORT                        R7 K18 [pairs]
       25 MOVE                             R8 R5
       26 CALL                             R7 1 3
       27 FORGPREP_NEXT                    R7
       28 SETTABLE                         R11 R6 R10
       29 FORGLOOP                         R7 2 ; [-2]
       31 MOVE                             R4 R6
       32 DUPTABLE                         R6 K20 [{["Text"] = "Label3"}]
       33 GETIMPORT                        R7 K15 [Instance.new]
       35 LOADK                            R8 K21 ["TextLabel"]
       36 CALL                             R7 1 1
       37 JUMPIFNOT                        R6 ; [+8]
       38 GETIMPORT                        R8 K18 [pairs]
       40 MOVE                             R9 R6
       41 CALL                             R8 1 3
       42 FORGPREP_NEXT                    R8
       43 SETTABLE                         R12 R7 R11
       44 FORGLOOP                         R8 2 ; [-2]
       46 MOVE                             R5 R7
       47 SETLIST                          R3 R4 2 [1]
       49 CALL                             R0 3 0
       50 RETURN                           R0 0

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
        2 GETIMPORT                        R2 K2 [game]
        4 GETTABLEKS                       R2 R2 K3 ["Workspace"]
        6 LOADK                            R4 K4 ["root"]
        7 NAMECALL                         R2 R2 K5 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+169]
       12 GETUPVAL                         R2 0
       13 LOADK                            R3 K6 ["Folder"]
       14 DUPTABLE                         R4 K9 [{["Name"] = "root", ["Parent"]}]
       15 GETIMPORT                        R5 K2 [game]
       17 GETTABLEKS                       R5 R5 K3 ["Workspace"]
       19 SETTABLEKS                       R5 R4 K8 ["Parent"]
       21 NEWTABLE                         R5 0 3
       23 GETUPVAL                         R6 0
       24 LOADK                            R7 K10 ["Frame"]
       25 DUPTABLE                         R8 K11 [{["Name"] = "Frame"}]
       26 NEWTABLE                         R9 0 3
       28 DUPTABLE                         R11 K14 [{["Text"] = "Button1"}]
       29 GETIMPORT                        R12 K17 [Instance.new]
       31 LOADK                            R13 K18 ["TextButton"]
       32 CALL                             R12 1 1
       33 JUMPIFNOT                        R11 ; [+8]
       34 GETIMPORT                        R13 K20 [pairs]
       36 MOVE                             R14 R11
       37 CALL                             R13 1 3
       38 FORGPREP_NEXT                    R13
       39 SETTABLE                         R17 R12 R16
       40 FORGLOOP                         R13 2 ; [-2]
       42 MOVE                             R10 R12
       43 DUPTABLE                         R12 K22 [{["Text"] = "Label1"}]
       44 GETIMPORT                        R13 K17 [Instance.new]
       46 LOADK                            R14 K23 ["TextLabel"]
       47 CALL                             R13 1 1
       48 JUMPIFNOT                        R12 ; [+8]
       49 GETIMPORT                        R14 K20 [pairs]
       51 MOVE                             R15 R12
       52 CALL                             R14 1 3
       53 FORGPREP_NEXT                    R14
       54 SETTABLE                         R18 R13 R17
       55 FORGLOOP                         R14 2 ; [-2]
       57 MOVE                             R11 R13
       58 NEWTABLE                         R13 0 0
       60 GETIMPORT                        R14 K17 [Instance.new]
       62 LOADK                            R15 K24 ["ImageButton"]
       63 CALL                             R14 1 1
       64 JUMPIFNOT                        R13 ; [+8]
       65 GETIMPORT                        R15 K20 [pairs]
       67 MOVE                             R16 R13
       68 CALL                             R15 1 3
       69 FORGPREP_NEXT                    R15
       70 SETTABLE                         R19 R14 R18
       71 FORGLOOP                         R15 2 ; [-2]
       73 MOVE                             R12 R14
       74 SETLIST                          R9 R10 3 [1]
       76 CALL                             R6 3 1
       77 GETUPVAL                         R7 0
       78 LOADK                            R8 K10 ["Frame"]
       79 DUPTABLE                         R9 K11 [{["Name"] = "Frame"}]
       80 NEWTABLE                         R10 0 2
       82 DUPTABLE                         R12 K26 [{["Text"] = "Button2"}]
       83 GETIMPORT                        R13 K17 [Instance.new]
       85 LOADK                            R14 K18 ["TextButton"]
       86 CALL                             R13 1 1
       87 JUMPIFNOT                        R12 ; [+8]
       88 GETIMPORT                        R14 K20 [pairs]
       90 MOVE                             R15 R12
       91 CALL                             R14 1 3
       92 FORGPREP_NEXT                    R14
       93 SETTABLE                         R18 R13 R17
       94 FORGLOOP                         R14 2 ; [-2]
       96 MOVE                             R11 R13
       97 DUPTABLE                         R13 K28 [{["Text"] = "Label2"}]
       98 GETIMPORT                        R14 K17 [Instance.new]
      100 LOADK                            R15 K23 ["TextLabel"]
      101 CALL                             R14 1 1
      102 JUMPIFNOT                        R13 ; [+8]
      103 GETIMPORT                        R15 K20 [pairs]
      105 MOVE                             R16 R13
      106 CALL                             R15 1 3
      107 FORGPREP_NEXT                    R15
      108 SETTABLE                         R19 R14 R18
      109 FORGLOOP                         R15 2 ; [-2]
      111 MOVE                             R12 R14
      112 SETLIST                          R10 R11 2 [1]
      114 CALL                             R7 3 1
      115 GETUPVAL                         R8 0
      116 LOADK                            R9 K10 ["Frame"]
      117 DUPTABLE                         R10 K11 [{["Name"] = "Frame"}]
      118 NEWTABLE                         R11 0 3
      120 DUPTABLE                         R13 K30 [{["Text"] = "Label3"}]
      121 GETIMPORT                        R14 K17 [Instance.new]
      123 LOADK                            R15 K23 ["TextLabel"]
      124 CALL                             R14 1 1
      125 JUMPIFNOT                        R13 ; [+8]
      126 GETIMPORT                        R15 K20 [pairs]
      128 MOVE                             R16 R13
      129 CALL                             R15 1 3
      130 FORGPREP_NEXT                    R15
      131 SETTABLE                         R19 R14 R18
      132 FORGLOOP                         R15 2 ; [-2]
      134 MOVE                             R12 R14
      135 GETUPVAL                         R13 0
      136 LOADK                            R14 K10 ["Frame"]
      137 DUPTABLE                         R15 K32 [{["Name"] = "special chars !\"#$%&'()*+,-./:;<=>?@[]\\^_`{|}~"}]
      138 NEWTABLE                         R16 0 1
      140 DUPTABLE                         R18 K34 [{["Name"] = "TextButton3"}]
      141 GETIMPORT                        R19 K17 [Instance.new]
      143 LOADK                            R20 K18 ["TextButton"]
      144 CALL                             R19 1 1
      145 JUMPIFNOT                        R18 ; [+8]
      146 GETIMPORT                        R20 K20 [pairs]
      148 MOVE                             R21 R18
      149 CALL                             R20 1 3
      150 FORGPREP_NEXT                    R20
      151 SETTABLE                         R24 R19 R23
      152 FORGLOOP                         R20 2 ; [-2]
      154 MOVE                             R17 R19
      155 SETLIST                          R16 R17 1 [1]
      157 CALL                             R13 3 1
      158 DUPTABLE                         R15 K36 [{["Name"] = "SpecialCharLabel", ["Text"] = "special chars !\"#$%&'()*+,-./:;<=>?@[]\\^_`{|}~"}]
      159 GETIMPORT                        R16 K17 [Instance.new]
      161 LOADK                            R17 K23 ["TextLabel"]
      162 CALL                             R16 1 1
      163 JUMPIFNOT                        R15 ; [+8]
      164 GETIMPORT                        R17 K20 [pairs]
      166 MOVE                             R18 R15
      167 CALL                             R17 1 3
      168 FORGPREP_NEXT                    R17
      169 SETTABLE                         R21 R16 R20
      170 FORGLOOP                         R17 2 ; [-2]
      172 MOVE                             R14 R16
      173 SETLIST                          R11 R12 3 [1]
      175 CALL                             R8 3 1
      176 SETLIST                          R5 R6 3 [1]
      178 CALL                             R2 3 1
      179 MOVE                             R1 R2
      180 GETUPVAL                         R2 1
      181 GETTABLEKS                       R2 R2 K16 ["new"]
      183 LOADK                            R3 K37 ["game.Workspace.root.Frame"]
      184 CALL                             R2 1 1
      185 DUPCLOSURE                       R3 K38 [PROTO_39]
      186 CAPTURE                          UPVAL U1
      187 DUPCLOSURE                       R4 K39 [PROTO_40]
      188 MOVE                             R5 R4
      189 MOVE                             R6 R2
      190 DUPTABLE                         R7 K42 [{"textButton", "textLabel"}]
      191 GETUPVAL                         R8 1
      192 GETTABLEKS                       R8 R8 K16 ["new"]
      194 LOADK                            R9 K18 ["TextButton"]
      195 LOADNIL                          R10
      196 CALL                             R8 2 1
      197 SETTABLEKS                       R8 R7 K40 ["textButton"]
      199 GETUPVAL                         R8 1
      200 GETTABLEKS                       R8 R8 K16 ["new"]
      202 LOADK                            R9 K23 ["TextLabel"]
      203 LOADNIL                          R10
      204 CALL                             R8 2 1
      205 SETTABLEKS                       R8 R7 K41 ["textLabel"]
      207 GETTABLEKS                       R7 R7 K40 ["textButton"]
      209 LOADK                            R8 K12 ["Text"]
      210 LOADK                            R9 K25 ["Button2"]
      211 CALL                             R5 4 1
      212 GETIMPORT                        R6 K44 [print]
      214 LOADK                            R7 K45 ["createSearch:"]
      215 NAMECALL                         R8 R5 K46 ["toString"]
      217 CALL                             R8 1 -1
      218 CALL                             R6 -1 0
      219 NAMECALL                         R6 R5 K47 ["waitForFirstInstance"]
      221 CALL                             R6 1 1
      222 FASTCALL1                        ASSERT R6 ; [+3]
      223 MOVE                             R8 R6
      224 GETIMPORT                        R7 K49 [assert]
      226 CALL                             R7 1 0
      227 DUPTABLE                         R7 K42 [{"textButton", "textLabel"}]
      228 GETUPVAL                         R8 1
      229 GETTABLEKS                       R8 R8 K16 ["new"]
      231 LOADK                            R9 K18 ["TextButton"]
      232 MOVE                             R10 R6
      233 CALL                             R8 2 1
      234 SETTABLEKS                       R8 R7 K40 ["textButton"]
      236 GETUPVAL                         R8 1
      237 GETTABLEKS                       R8 R8 K16 ["new"]
      239 LOADK                            R9 K23 ["TextLabel"]
      240 MOVE                             R10 R6
      241 CALL                             R8 2 1
      242 SETTABLEKS                       R8 R7 K41 ["textLabel"]
      244 GETTABLEKS                       R8 R7 K41 ["textLabel"]
      246 NAMECALL                         R8 R8 K47 ["waitForFirstInstance"]
      248 CALL                             R8 1 1
      249 GETTABLEKS                       R11 R8 K12 ["Text"]
      251 JUMPIFEQKS                       R11 K27 ["Label2"] ; [+2]
      253 LOADB                            R10 0 +1
      254 LOADB                            R10 1
      255 FASTCALL1                        ASSERT R10 ; [+2]
      256 GETIMPORT                        R9 K49 [assert]
      258 CALL                             R9 1 0
      259 GETIMPORT                        R9 K44 [print]
      261 LOADK                            R10 K50 ["relative path test"]
      262 CALL                             R9 1 0
      263 GETUPVAL                         R9 1
      264 GETTABLEKS                       R9 R9 K16 ["new"]
      266 LOADK                            R10 K51 ["game.Workspace.root.Frame[.TextButton.Text = Button2]"]
      267 CALL                             R9 1 1
      268 NAMECALL                         R10 R9 K52 ["getFirstInstance"]
      270 CALL                             R10 1 1
      271 FASTCALL1                        ASSERT R10 ; [+3]
      272 MOVE                             R12 R10
      273 GETIMPORT                        R11 K49 [assert]
      275 CALL                             R11 1 0
      276 GETUPVAL                         R11 1
      277 GETTABLEKS                       R11 R11 K16 ["new"]
      279 LOADK                            R12 K18 ["TextButton"]
      280 MOVE                             R13 R10
      281 CALL                             R11 2 1
      282 NAMECALL                         R12 R11 K52 ["getFirstInstance"]
      284 CALL                             R12 1 1
      285 GETTABLEKS                       R15 R12 K12 ["Text"]
      287 JUMPIFEQKS                       R15 K25 ["Button2"] ; [+2]
      289 LOADB                            R14 0 +1
      290 LOADB                            R14 1
      291 FASTCALL1                        ASSERT R14 ; [+2]
      292 GETIMPORT                        R13 K49 [assert]
      294 CALL                             R13 1 0
      295 GETUPVAL                         R13 1
      296 GETTABLEKS                       R13 R13 K16 ["new"]
      298 LOADK                            R14 K53 ["game.Workspace.root.Frame[.TextButton.Text = Button2, .ClassName = Frame].TextLabel"]
      299 CALL                             R13 1 1
      300 NAMECALL                         R14 R13 K52 ["getFirstInstance"]
      302 CALL                             R14 1 1
      303 GETTABLEKS                       R17 R14 K12 ["Text"]
      305 JUMPIFEQKS                       R17 K27 ["Label2"] ; [+2]
      307 LOADB                            R16 0 +1
      308 LOADB                            R16 1
      309 FASTCALL1                        ASSERT R16 ; [+2]
      310 GETIMPORT                        R15 K49 [assert]
      312 CALL                             R15 1 0
      313 GETUPVAL                         R15 1
      314 GETTABLEKS                       R15 R15 K16 ["new"]
      316 MOVE                             R16 R14
      317 CALL                             R15 1 1
      318 NAMECALL                         R15 R15 K46 ["toString"]
      320 CALL                             R15 1 1
      321 JUMPIFEQKS                       R15 K54 ["game.Workspace.root.Frame.TextLabel"] ; [+2]
      323 LOADB                            R17 0 +1
      324 LOADB                            R17 1
      325 FASTCALL1                        ASSERT R17 ; [+2]
      326 GETIMPORT                        R16 K49 [assert]
      328 CALL                             R16 1 0
      329 GETUPVAL                         R16 1
      330 GETTABLEKS                       R16 R16 K16 ["new"]
      332 LOADK                            R17 K55 ["game.Workspace.root.Frame[.special chars !\"#$%&'()*+\\,-\\./:;<\\=>?@\\[\\]\\\\^_`{|}~.TextButton3.Name = TextButton3].TextLabel"]
      333 CALL                             R16 1 1
      334 NAMECALL                         R19 R16 K46 ["toString"]
      336 CALL                             R19 1 1
      337 JUMPIFEQKS                       R19 K55 ["game.Workspace.root.Frame[.special chars !\"#$%&'()*+\\,-\\./:;<\\=>?@\\[\\]\\\\^_`{|}~.TextButton3.Name = TextButton3].TextLabel"] ; [+2]
      339 LOADB                            R18 0 +1
      340 LOADB                            R18 1
      341 FASTCALL1                        ASSERT R18 ; [+2]
      342 GETIMPORT                        R17 K49 [assert]
      344 CALL                             R17 1 0
      345 NAMECALL                         R17 R16 K52 ["getFirstInstance"]
      347 CALL                             R17 1 1
      348 GETTABLEKS                       R20 R17 K12 ["Text"]
      350 JUMPIFEQKS                       R20 K29 ["Label3"] ; [+2]
      352 LOADB                            R19 0 +1
      353 LOADB                            R19 1
      354 FASTCALL1                        ASSERT R19 ; [+2]
      355 GETIMPORT                        R18 K49 [assert]
      357 CALL                             R18 1 0
      358 GETUPVAL                         R18 1
      359 GETTABLEKS                       R18 R18 K16 ["new"]
      361 LOADK                            R19 K56 ["game.Workspace.root.Frame[.SpecialCharLabel.Text = special chars !\"#$%&'()*+\\,-\\./:;<\\=>?@\\[\\]\\\\^_`{|}~].TextLabel"]
      362 CALL                             R18 1 1
      363 NAMECALL                         R21 R18 K46 ["toString"]
      365 CALL                             R21 1 1
      366 JUMPIFEQKS                       R21 K56 ["game.Workspace.root.Frame[.SpecialCharLabel.Text = special chars !\"#$%&'()*+\\,-\\./:;<\\=>?@\\[\\]\\\\^_`{|}~].TextLabel"] ; [+2]
      368 LOADB                            R20 0 +1
      369 LOADB                            R20 1
      370 FASTCALL1                        ASSERT R20 ; [+2]
      371 GETIMPORT                        R19 K49 [assert]
      373 CALL                             R19 1 0
      374 NAMECALL                         R19 R18 K52 ["getFirstInstance"]
      376 CALL                             R19 1 1
      377 GETTABLEKS                       R22 R19 K12 ["Text"]
      379 JUMPIFEQKS                       R22 K29 ["Label3"] ; [+2]
      381 LOADB                            R21 0 +1
      382 LOADB                            R21 1
      383 FASTCALL1                        ASSERT R21 ; [+2]
      384 GETIMPORT                        R20 K49 [assert]
      386 CALL                             R20 1 0
      387 GETUPVAL                         R20 1
      388 GETTABLEKS                       R20 R20 K16 ["new"]
      390 LOADK                            R21 K57 ["game.Workspace.root.Frame.special chars !\"#$%&'()*+\\,-\\./:;<\\=>?@\\[\\]\\\\^_`{|}~.TextButton3"]
      391 CALL                             R20 1 1
      392 NAMECALL                         R21 R20 K46 ["toString"]
      394 CALL                             R21 1 1
      395 JUMPIFEQKS                       R21 K57 ["game.Workspace.root.Frame.special chars !\"#$%&'()*+\\,-\\./:;<\\=>?@\\[\\]\\\\^_`{|}~.TextButton3"] ; [+2]
      397 LOADB                            R23 0 +1
      398 LOADB                            R23 1
      399 FASTCALL1                        ASSERT R23 ; [+2]
      400 GETIMPORT                        R22 K49 [assert]
      402 CALL                             R22 1 0
      403 NAMECALL                         R22 R20 K52 ["getFirstInstance"]
      405 CALL                             R22 1 1
      406 GETTABLEKS                       R25 R22 K7 ["Name"]
      408 JUMPIFEQKS                       R25 K33 ["TextButton3"] ; [+2]
      410 LOADB                            R24 0 +1
      411 LOADB                            R24 1
      412 FASTCALL1                        ASSERT R24 ; [+2]
      413 GETIMPORT                        R23 K49 [assert]
      415 CALL                             R23 1 0
      416 GETUPVAL                         R23 1
      417 GETTABLEKS                       R23 R23 K16 ["new"]
      419 LOADK                            R24 K58 ["game.Workspace.root"]
      420 CALL                             R23 1 1
      421 GETUPVAL                         R24 1
      422 GETTABLEKS                       R24 R24 K16 ["new"]
      424 LOADK                            R25 K53 ["game.Workspace.root.Frame[.TextButton.Text = Button2, .ClassName = Frame].TextLabel"]
      425 CALL                             R24 1 1
      426 MOVE                             R27 R23
      427 NAMECALL                         R25 R24 K59 ["relative"]
      429 CALL                             R25 2 1
      430 NAMECALL                         R26 R25 K60 ["clearFilter"]
      432 CALL                             R26 1 0
      433 GETIMPORT                        R26 K44 [print]
      435 LOADK                            R27 K61 ["testing getFirstInstance()"]
      436 CALL                             R26 1 0
      437 GETIMPORT                        R26 K44 [print]
      439 NAMECALL                         R27 R24 K46 ["toString"]
      441 CALL                             R27 1 -1
      442 CALL                             R26 -1 0
      443 NAMECALL                         R26 R24 K52 ["getFirstInstance"]
      445 CALL                             R26 1 1
      446 GETTABLEKS                       R29 R26 K12 ["Text"]
      448 JUMPIFEQKS                       R29 K27 ["Label2"] ; [+2]
      450 LOADB                            R28 0 +1
      451 LOADB                            R28 1
      452 FASTCALL1                        ASSERT R28 ; [+2]
      453 GETIMPORT                        R27 K49 [assert]
      455 CALL                             R27 1 0
      456 GETIMPORT                        R27 K44 [print]
      458 LOADK                            R28 K62 ["testing wildcard *"]
      459 CALL                             R27 1 0
      460 GETUPVAL                         R27 1
      461 GETTABLEKS                       R27 R27 K16 ["new"]
      463 LOADK                            R28 K63 ["game.Workspace.root.*[.TextButton.Text = Button2].TextLabel"]
      464 CALL                             R27 1 1
      465 MOVE                             R24 R27
      466 NAMECALL                         R27 R24 K52 ["getFirstInstance"]
      468 CALL                             R27 1 1
      469 MOVE                             R26 R27
      470 GETTABLEKS                       R29 R26 K12 ["Text"]
      472 JUMPIFEQKS                       R29 K27 ["Label2"] ; [+2]
      474 LOADB                            R28 0 +1
      475 LOADB                            R28 1
      476 FASTCALL1                        ASSERT R28 ; [+2]
      477 GETIMPORT                        R27 K49 [assert]
      479 CALL                             R27 1 0
      480 GETUPVAL                         R27 1
      481 GETTABLEKS                       R27 R27 K16 ["new"]
      483 LOADK                            R28 K64 ["game.Workspace.root.*[.ImageButton.Name = *].TextLabel"]
      484 CALL                             R27 1 1
      485 MOVE                             R24 R27
      486 NAMECALL                         R27 R24 K52 ["getFirstInstance"]
      488 CALL                             R27 1 1
      489 MOVE                             R26 R27
      490 GETTABLEKS                       R29 R26 K12 ["Text"]
      492 JUMPIFEQKS                       R29 K21 ["Label1"] ; [+2]
      494 LOADB                            R28 0 +1
      495 LOADB                            R28 1
      496 FASTCALL1                        ASSERT R28 ; [+2]
      497 GETIMPORT                        R27 K49 [assert]
      499 CALL                             R27 1 0
      500 LOADNIL                          R27
      501 GETIMPORT                        R28 K44 [print]
      503 LOADK                            R29 K65 ["testing timeout waitForNInstances() "]
      504 CALL                             R28 1 0
      505 GETUPVAL                         R28 1
      506 GETTABLEKS                       R28 R28 K16 ["new"]
      508 LOADK                            R29 K54 ["game.Workspace.root.Frame.TextLabel"]
      509 CALL                             R28 1 1
      510 MOVE                             R24 R28
      511 GETIMPORT                        R28 K67 [tick]
      513 CALL                             R28 0 1
      514 MOVE                             R27 R28
      515 LOADN                            R30 2
      516 NAMECALL                         R28 R24 K68 ["setWait"]
      518 CALL                             R28 2 1
      519 LOADN                            R30 5
      520 NAMECALL                         R28 R28 K69 ["waitForNInstances"]
      522 CALL                             R28 2 2
      523 GETIMPORT                        R33 K67 [tick]
      525 CALL                             R33 0 1
      526 SUB                              R32 R33 R27
      527 SUBK                             R34 R32 K70 [2]
      528 FASTCALL1                        MATH_ABS R34 ; [+2]
      529 GETIMPORT                        R33 K73 [math.abs]
      531 CALL                             R33 1 1
      532 LOADK                            R34 K74 [0.5]
      533 JUMPIFLE                         R33 R34 ; [+2]
      535 LOADB                            R31 0 +1
      536 LOADB                            R31 1
      537 FASTCALL1                        ASSERT R31 ; [+2]
      538 GETIMPORT                        R30 K49 [assert]
      540 CALL                             R30 1 0
      541 JUMPIFEQKB                       R29 FALSE ; [+2]
      543 LOADB                            R31 0 +1
      544 LOADB                            R31 1
      545 FASTCALL1                        ASSERT R31 ; [+2]
      546 GETIMPORT                        R30 K49 [assert]
      548 CALL                             R30 1 0
      549 GETIMPORT                        R30 K44 [print]
      551 LOADK                            R31 K75 ["testing normal waitForNInstances() "]
      552 CALL                             R30 1 0
      553 GETIMPORT                        R30 K67 [tick]
      555 CALL                             R30 0 1
      556 MOVE                             R27 R30
      557 GETIMPORT                        R30 K77 [spawn]
      559 DUPCLOSURE                       R31 K78 [PROTO_41]
      560 CAPTURE                          UPVAL U0
      561 CALL                             R30 1 0
      562 LOADN                            R32 5
      563 NAMECALL                         R30 R24 K68 ["setWait"]
      565 CALL                             R30 2 1
      566 LOADN                            R32 5
      567 NAMECALL                         R30 R30 K69 ["waitForNInstances"]
      569 CALL                             R30 2 1
      570 GETIMPORT                        R34 K67 [tick]
      572 CALL                             R34 0 1
      573 SUB                              R33 R34 R27
      574 SUBK                             R35 R33 K70 [2]
      575 FASTCALL1                        MATH_ABS R35 ; [+2]
      576 GETIMPORT                        R34 K73 [math.abs]
      578 CALL                             R34 1 1
      579 LOADK                            R35 K74 [0.5]
      580 JUMPIFLE                         R34 R35 ; [+2]
      582 LOADB                            R32 0 +1
      583 LOADB                            R32 1
      584 FASTCALL1                        ASSERT R32 ; [+2]
      585 GETIMPORT                        R31 K49 [assert]
      587 CALL                             R31 1 0
      588 LENGTH                           R33 R30
      589 LOADN                            R34 5
      590 JUMPIFLE                         R34 R33 ; [+2]
      592 LOADB                            R32 0 +1
      593 LOADB                            R32 1
      594 FASTCALL1                        ASSERT R32 ; [+2]
      595 GETIMPORT                        R31 K49 [assert]
      597 CALL                             R31 1 0
      598 GETIMPORT                        R31 K44 [print]
      600 LOADK                            R32 K79 ["testing  getFirstInstance() "]
      601 CALL                             R31 1 0
      602 GETUPVAL                         R31 1
      603 GETTABLEKS                       R31 R31 K16 ["new"]
      605 LOADK                            R32 K80 ["game.Workspace.root.Frame[.TextButton.Text = Button3]"]
      606 CALL                             R31 1 1
      607 MOVE                             R24 R31
      608 NAMECALL                         R31 R24 K52 ["getFirstInstance"]
      610 CALL                             R31 1 1
      611 MOVE                             R26 R31
      612 GETTABLEKS                       R33 R26 K18 ["TextButton"]
      614 GETTABLEKS                       R33 R33 K12 ["Text"]
      616 JUMPIFEQKS                       R33 K81 ["Button3"] ; [+2]
      618 LOADB                            R32 0 +1
      619 LOADB                            R32 1
      620 FASTCALL1                        ASSERT R32 ; [+2]
      621 GETIMPORT                        R31 K49 [assert]
      623 CALL                             R31 1 0
      624 GETIMPORT                        R31 K44 [print]
      626 LOADK                            R32 K82 ["testing timeout waitForDisappear() "]
      627 CALL                             R31 1 0
      628 GETIMPORT                        R31 K67 [tick]
      630 CALL                             R31 0 1
      631 MOVE                             R27 R31
      632 LOADN                            R33 2
      633 NAMECALL                         R31 R24 K68 ["setWait"]
      635 CALL                             R31 2 1
      636 NAMECALL                         R31 R31 K83 ["waitForDisappear"]
      638 CALL                             R31 1 1
      639 JUMPIFEQKB                       R31 FALSE ; [+2]
      641 LOADB                            R33 0 +1
      642 LOADB                            R33 1
      643 FASTCALL1                        ASSERT R33 ; [+2]
      644 GETIMPORT                        R32 K49 [assert]
      646 CALL                             R32 1 0
      647 GETIMPORT                        R35 K67 [tick]
      649 CALL                             R35 0 1
      650 SUB                              R34 R35 R27
      651 SUBK                             R36 R34 K70 [2]
      652 FASTCALL1                        MATH_ABS R36 ; [+2]
      653 GETIMPORT                        R35 K73 [math.abs]
      655 CALL                             R35 1 1
      656 LOADK                            R36 K74 [0.5]
      657 JUMPIFLE                         R35 R36 ; [+2]
      659 LOADB                            R33 0 +1
      660 LOADB                            R33 1
      661 FASTCALL1                        ASSERT R33 ; [+2]
      662 GETIMPORT                        R32 K49 [assert]
      664 CALL                             R32 1 0
      665 GETIMPORT                        R32 K44 [print]
      667 LOADK                            R33 K84 ["testing normal waitForDisappear() "]
      668 CALL                             R32 1 0
      669 GETIMPORT                        R32 K67 [tick]
      671 CALL                             R32 0 1
      672 MOVE                             R27 R32
      673 GETIMPORT                        R32 K77 [spawn]
      675 NEWCLOSURE                       R33 P4
      676 CAPTURE                          REF R26
      677 CALL                             R32 1 0
      678 LOADN                            R34 5
      679 NAMECALL                         R32 R24 K68 ["setWait"]
      681 CALL                             R32 2 1
      682 NAMECALL                         R32 R32 K83 ["waitForDisappear"]
      684 CALL                             R32 1 1
      685 GETIMPORT                        R36 K67 [tick]
      687 CALL                             R36 0 1
      688 SUB                              R35 R36 R27
      689 SUBK                             R37 R35 K70 [2]
      690 FASTCALL1                        MATH_ABS R37 ; [+2]
      691 GETIMPORT                        R36 K73 [math.abs]
      693 CALL                             R36 1 1
      694 LOADK                            R37 K74 [0.5]
      695 JUMPIFLE                         R36 R37 ; [+2]
      697 LOADB                            R34 0 +1
      698 LOADB                            R34 1
      699 FASTCALL1                        ASSERT R34 ; [+2]
      700 GETIMPORT                        R33 K49 [assert]
      702 CALL                             R33 1 0
      703 JUMPIFEQKB                       R32 TRUE ; [+2]
      705 LOADB                            R34 0 +1
      706 LOADB                            R34 1
      707 FASTCALL1                        ASSERT R34 ; [+2]
      708 GETIMPORT                        R33 K49 [assert]
      710 CALL                             R33 1 0
      711 GETIMPORT                        R33 K44 [print]
      713 LOADK                            R34 K85 ["test finised"]
      714 CALL                             R33 1 0
      715 CLOSEUPVALS                      R26
      716 RETURN                           R0 0

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
