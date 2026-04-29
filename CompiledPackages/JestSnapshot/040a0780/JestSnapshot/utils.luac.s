PROTO_0:
        0 LOADK                            R0 K0 ["-- Jest Roblox Snapshot v1, http://roblox.github.io/jest-roblox-internal/snapshot-testing"]
        1 RETURN                           R0 1

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+14]
        2 LOADB                            R1 0
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K1 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["isArray"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 NOT                              R1 R2
       16 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R3 R0
        1 LOADK                            R4 K0 [" "]
        2 MOVE                             R5 R1
        3 CONCAT                           R2 R3 R5
        4 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R3 K0 [" %d+$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+6]
        5 GETIMPORT                        R1 K3 [error]
        7 GETUPVAL                         R2 0
        8 LOADK                            R3 K4 ["Snapshot keys must end with a number."]
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 0
       11 LOADK                            R3 K0 [" %d+$"]
       12 LOADK                            R4 K5 [""]
       13 NAMECALL                         R1 R0 K6 ["gsub"]
       15 CALL                             R1 3 -1
       16 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETIMPORT                        R0 K1 [require]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 1
        6 SETUPVAL                         R0 1
        7 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 LOADB                            R3 0
        3 GETIMPORT                        R4 K1 [pcall]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          REF R2
        8 CALL                             R4 1 0
        9 LOADB                            R4 1
       10 JUMPIFEQKS                       R1 K2 ["all"] ; [+5]
       12 JUMPIFEQKS                       R1 K3 ["new"] ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 DUPTABLE                         R4 K6 [{"data", "dirty"}]
       17 SETTABLEKS                       R2 R4 K4 ["data"]
       19 SETTABLEKS                       R3 R4 K5 ["dirty"]
       21 CLOSEUPVALS                      R2
       22 RETURN                           R4 1

PROTO_6:
        0 LOADK                            R3 K0 ["\n"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 LOADK                            R2 K0 ["\n"]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K0 ["\n"]
        8 CONCAT                           R1 R2 R4
        9 RETURN                           R1 1
       10 RETURN                           R0 1

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["len"]
        2 CALL                             R1 1 1
        3 LOADN                            R2 2
        4 JUMPIFNOTLT                      R2 R1 ; [+21]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["startsWith"]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K2 ["\n"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+13]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K3 ["endsWith"]
       16 MOVE                             R2 R0
       17 LOADK                            R3 K2 ["\n"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+6]
       20 LOADN                            R3 2
       21 LOADN                            R4 254
       22 NAMECALL                         R1 R0 K4 ["sub"]
       24 CALL                             R1 3 -1
       25 RETURN                           R1 -1
       26 RETURN                           R0 1

PROTO_8:
        0 ORK                              R1 R1 K0 [2]
        1 MOVE                             R3 R2
        2 JUMPIF                           R3 ; [+2]
        3 NEWTABLE                         R3 0 0
        5 MOVE                             R2 R3
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R0
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R6 R7 K1 ["assign"]
       12 DUPTABLE                         R7 K6 [{"escapeRegex", "indent", "plugins", "printFunctionName"}]
       13 LOADB                            R8 1
       14 SETTABLEKS                       R8 R7 K2 ["escapeRegex"]
       16 SETTABLEKS                       R1 R7 K3 ["indent"]
       18 GETUPVAL                         R8 3
       19 CALL                             R8 0 1
       20 SETTABLEKS                       R8 R7 K4 ["plugins"]
       22 LOADB                            R8 0
       23 SETTABLEKS                       R8 R7 K5 ["printFunctionName"]
       25 MOVE                             R8 R2
       26 CALL                             R6 2 -1
       27 CALL                             R4 -1 -1
       28 CALL                             R3 -1 -1
       29 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K4 [{"escapeRegex", "min", "plugins", "printFunctionName"}]
        3 LOADB                            R4 1
        4 SETTABLEKS                       R4 R3 K0 ["escapeRegex"]
        6 LOADB                            R4 1
        7 SETTABLEKS                       R4 R3 K1 ["min"]
        9 GETUPVAL                         R4 1
       10 CALL                             R4 0 1
       11 SETTABLEKS                       R4 R3 K2 ["plugins"]
       13 LOADB                            R4 0
       14 SETTABLEKS                       R4 R3 K3 ["printFunctionName"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_10:
        0 LOADN                            R3 2
        1 LOADN                            R4 254
        2 FASTCALL3                        STRING_SUB R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [string.sub]
        7 CALL                             R1 3 1
        8 MOVE                             R0 R1
        9 GETIMPORT                        R1 K4 [string.gsub]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K5 ["\\\\"]
       13 LOADK                            R4 K6 ["\\"]
       14 CALL                             R1 3 1
       15 MOVE                             R0 R1
       16 GETIMPORT                        R1 K4 [string.gsub]
       18 MOVE                             R2 R0
       19 LOADK                            R3 K7 ["\\\""]
       20 LOADK                            R4 K8 ["\""]
       21 CALL                             R1 3 1
       22 MOVE                             R0 R1
       23 RETURN                           R0 1

PROTO_11:
        0 RETURN                           R0 1

PROTO_12:
        0 LOADK                            R2 K0 ["[=[\n"]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K1 ["]=]"]
        3 CONCAT                           R1 R2 R4
        4 RETURN                           R1 1

PROTO_13:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["\r\n"]
        4 LOADK                            R4 K4 ["\n"]
        5 CALL                             R1 3 1
        6 MOVE                             R0 R1
        7 GETIMPORT                        R1 K2 [string.gsub]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 ["\r"]
       11 LOADK                            R4 K4 ["\n"]
       12 CALL                             R1 3 1
       13 RETURN                           R1 1

PROTO_14:
        0 LOADK                            R1 K0 ["%03d%s"]
        1 FASTCALL1                        STRING_LEN R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K3 [string.len]
        5 CALL                             R3 1 1
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K4 ["format"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_15:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 LOADK                            R5 K2 ["%d+"]
        6 GETUPVAL                         R6 0
        7 NAMECALL                         R3 R3 K3 ["gsub"]
        9 CALL                             R3 3 1
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R4 K1 [tostring]
       14 CALL                             R4 1 1
       15 LOADK                            R6 K2 ["%d+"]
       16 GETUPVAL                         R7 0
       17 NAMECALL                         R4 R4 K3 ["gsub"]
       19 CALL                             R4 3 1
       20 JUMPIFLT                         R3 R4 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R2 1

PROTO_16:
        0 DUPCLOSURE                       R1 K0 [PROTO_14]
        1 GETIMPORT                        R2 K3 [table.sort]
        3 MOVE                             R3 R0
        4 DUPCLOSURE                       R4 K4 [PROTO_15]
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 0
        7 RETURN                           R0 1

PROTO_17:
        0 NEWTABLE                         R2 0 2
        2 LOADK                            R3 K0 ["-- Jest Roblox Snapshot v1, http://roblox.github.io/jest-roblox-internal/snapshot-testing"]
        3 LOADK                            R4 K1 ["local exports = {}"]
        4 SETLIST                          R2 R3 2 [1]
        6 GETIMPORT                        R3 K3 [ipairs]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K4 ["keys"]
       11 MOVE                             R7 R0
       12 CALL                             R6 1 1
       13 DUPCLOSURE                       R7 K5 [PROTO_14]
       14 GETIMPORT                        R8 K8 [table.sort]
       16 MOVE                             R9 R6
       17 DUPCLOSURE                       R10 K9 [PROTO_15]
       18 CAPTURE                          VAL R7
       19 CALL                             R8 2 0
       20 MOVE                             R4 R6
       21 CALL                             R3 1 3
       22 FORGPREP_INEXT                   R3
       23 LOADK                            R11 K10 ["exports[ [=["]
       24 MOVE                             R12 R7
       25 LOADK                            R13 K11 ["]=] ] = "]
       26 GETUPVAL                         R16 1
       27 GETTABLE                         R17 R0 R7
       28 CALL                             R16 1 1
       29 LOADK                            R17 K12 ["[=[\n"]
       30 MOVE                             R18 R16
       31 LOADK                            R19 K13 ["]=]"]
       32 CONCAT                           R14 R17 R19
       33 LOADK                            R15 K14 ["\n"]
       34 CONCAT                           R10 R11 R15
       35 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       37 MOVE                             R9 R2
       38 GETIMPORT                        R8 K16 [table.insert]
       40 CALL                             R8 2 0
       41 FORGLOOP                         R3 2 [inext] ; [-19]
       43 FASTCALL2K                       TABLE_INSERT R2 K17 ; [+5]
       45 MOVE                             R4 R2
       46 LOADK                            R5 K17 ["return exports"]
       47 GETIMPORT                        R3 K16 [table.insert]
       49 CALL                             R3 2 0
       50 GETUPVAL                         R3 2
       51 JUMPIF                           R3 ; [+6]
       52 GETIMPORT                        R3 K19 [error]
       54 GETUPVAL                         R4 3
       55 LOADK                            R5 K20 ["Attempting to save snapshots in an environment where FileSystemService is inaccessible."]
       56 CALL                             R4 1 -1
       57 CALL                             R3 -1 0
       58 GETUPVAL                         R3 4
       59 MOVE                             R4 R1
       60 CALL                             R3 1 0
       61 GETUPVAL                         R3 2
       62 MOVE                             R5 R1
       63 GETIMPORT                        R9 K22 [table.concat]
       65 MOVE                             R10 R2
       66 LOADK                            R11 K14 ["\n"]
       67 CALL                             R9 2 1
       68 MOVE                             R7 R9
       69 LOADK                            R8 K14 ["\n"]
       70 CONCAT                           R6 R7 R8
       71 NAMECALL                         R3 R3 K23 ["WriteFile"]
       73 CALL                             R3 3 0
       74 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+6]
        2 GETIMPORT                        R1 K1 [error]
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K2 ["Attempting to save snapshots in an environment where FileSystemService is inaccessible."]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 0
        8 GETUPVAL                         R1 0
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K3 ["IsRegularFile"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+8]
       14 GETIMPORT                        R1 K1 [error]
       16 GETUPVAL                         R2 1
       17 MOVE                             R4 R0
       18 LOADK                            R5 K4 [" is not a path to a .snap.lua file"]
       19 CONCAT                           R3 R4 R5
       20 CALL                             R2 1 -1
       21 CALL                             R1 -1 0
       22 GETUPVAL                         R1 0
       23 MOVE                             R3 R0
       24 NAMECALL                         R1 R1 K5 ["Remove"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["from"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K2 [ipairs]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 3
        9 FORGPREP_INEXT                   R3
       10 GETTABLE                         R8 R2 R6
       11 GETUPVAL                         R10 0
       12 GETTABLEKS                       R9 R10 K3 ["isArray"]
       14 GETTABLE                         R10 R0 R6
       15 CALL                             R9 1 1
       16 JUMPIFNOT                        R9 ; [+6]
       17 GETUPVAL                         R9 1
       18 GETTABLE                         R10 R0 R6
       19 MOVE                             R11 R7
       20 CALL                             R9 2 1
       21 SETTABLE                         R9 R2 R6
       22 JUMP                             ; [+24]
       23 MOVE                             R9 R8
       24 JUMPIFNOT                        R9 ; [+14]
       25 LOADB                            R9 0
       26 FASTCALL1                        TYPEOF R8 ; [+3]
       27 MOVE                             R11 R8
       28 GETIMPORT                        R10 K5 [typeof]
       30 CALL                             R10 1 1
       31 JUMPIFNOTEQKS                    R10 K6 ["table"] ; [+7]
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R10 R11 K3 ["isArray"]
       36 MOVE                             R11 R8
       37 CALL                             R10 1 1
       38 NOT                              R9 R10
       39 JUMPIFNOT                        R9 ; [+6]
       40 GETUPVAL                         R9 2
       41 GETTABLE                         R10 R0 R6
       42 MOVE                             R11 R7
       43 CALL                             R9 2 1
       44 SETTABLE                         R9 R2 R6
       45 JUMP                             ; [+1]
       46 SETTABLE                         R7 R2 R6
       47 FORGLOOP                         R3 2 [inext] ; [-38]
       49 RETURN                           R2 1

PROTO_20:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+14]
        2 LOADB                            R2 0
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K1 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+7]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["isArray"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 NOT                              R2 R3
       16 JUMPIFNOT                        R2 ; [+90]
       17 MOVE                             R2 R1
       18 JUMPIFNOT                        R2 ; [+14]
       19 LOADB                            R2 0
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K1 [typeof]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+7]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K3 ["isArray"]
       30 MOVE                             R4 R1
       31 CALL                             R3 1 1
       32 NOT                              R2 R3
       33 JUMPIFNOT                        R2 ; [+73]
       34 GETIMPORT                        R2 K5 [table.clone]
       36 MOVE                             R3 R0
       37 CALL                             R2 1 1
       38 GETIMPORT                        R3 K7 [pairs]
       40 MOVE                             R4 R1
       41 CALL                             R3 1 3
       42 FORGPREP_NEXT                    R3
       43 GETTABLE                         R9 R1 R6
       44 MOVE                             R8 R9
       45 JUMPIFNOT                        R8 ; [+14]
       46 LOADB                            R8 0
       47 FASTCALL1                        TYPEOF R9 ; [+3]
       48 MOVE                             R11 R9
       49 GETIMPORT                        R10 K1 [typeof]
       51 CALL                             R10 1 1
       52 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+7]
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R10 R11 K3 ["isArray"]
       57 MOVE                             R11 R9
       58 CALL                             R10 1 1
       59 NOT                              R8 R10
       60 JUMPIFNOT                        R8 ; [+22]
       61 GETTABLE                         R9 R1 R6
       62 GETTABLEKS                       R8 R9 K8 ["$$typeof"]
       64 JUMPIF                           R8 ; [+18]
       65 GETTABLE                         R8 R0 R6
       66 JUMPIF                           R8 ; [+10]
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R8 R9 K9 ["assign"]
       70 MOVE                             R9 R2
       71 NEWTABLE                         R10 1 0
       73 GETTABLE                         R11 R1 R6
       74 SETTABLE                         R11 R10 R6
       75 CALL                             R8 2 0
       76 JUMP                             ; [+27]
       77 GETUPVAL                         R8 2
       78 GETTABLE                         R9 R0 R6
       79 GETTABLE                         R10 R1 R6
       80 CALL                             R8 2 1
       81 SETTABLE                         R8 R2 R6
       82 JUMP                             ; [+21]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R8 R9 K3 ["isArray"]
       86 GETTABLE                         R9 R1 R6
       87 CALL                             R8 1 1
       88 JUMPIFNOT                        R8 ; [+6]
       89 GETUPVAL                         R8 3
       90 GETTABLE                         R9 R0 R6
       91 GETTABLE                         R10 R1 R6
       92 CALL                             R8 2 1
       93 SETTABLE                         R8 R2 R6
       94 JUMP                             ; [+9]
       95 GETUPVAL                         R9 1
       96 GETTABLEKS                       R8 R9 K9 ["assign"]
       98 MOVE                             R9 R2
       99 NEWTABLE                         R10 1 0
      101 GETTABLE                         R11 R1 R6
      102 SETTABLE                         R11 R10 R6
      103 CALL                             R8 2 0
      104 FORGLOOP                         R3 2 ; [-62]
      106 RETURN                           R2 1
      107 GETUPVAL                         R3 0
      108 GETTABLEKS                       R2 R3 K3 ["isArray"]
      110 MOVE                             R3 R0
      111 CALL                             R2 1 1
      112 JUMPIFNOT                        R2 ; [+11]
      113 GETUPVAL                         R3 0
      114 GETTABLEKS                       R2 R3 K3 ["isArray"]
      116 MOVE                             R3 R1
      117 CALL                             R2 1 1
      118 JUMPIFNOT                        R2 ; [+5]
      119 GETUPVAL                         R2 3
      120 MOVE                             R3 R0
      121 MOVE                             R4 R1
      122 CALL                             R2 2 1
      123 RETURN                           R2 1
      124 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["RobloxShared"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["getDataModelService"]
       14 MOVE                             R4 R3
       15 LOADK                            R5 K7 ["FileSystemService"]
       16 CALL                             R4 1 1
       17 GETIMPORT                        R5 K4 [require]
       19 GETTABLEKS                       R6 R1 K8 ["LuauPolyfill"]
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R6 R5 K9 ["Array"]
       24 GETTABLEKS                       R7 R5 K10 ["Error"]
       26 GETTABLEKS                       R8 R5 K11 ["Object"]
       28 GETTABLEKS                       R9 R5 K12 ["String"]
       30 GETIMPORT                        R10 K4 [require]
       32 GETTABLEKS                       R11 R1 K13 ["PrettyFormat"]
       34 CALL                             R10 1 1
       35 GETIMPORT                        R11 K4 [require]
       37 GETTABLEKS                       R12 R0 K13 ["PrettyFormat"]
       39 CALL                             R11 1 1
       40 GETTABLEKS                       R12 R10 K14 ["format"]
       42 GETIMPORT                        R14 K4 [require]
       44 GETTABLEKS                       R15 R0 K15 ["plugins"]
       46 CALL                             R14 1 1
       47 GETTABLEKS                       R13 R14 K16 ["getSerializers"]
       49 GETIMPORT                        R14 K4 [require]
       51 GETTABLEKS                       R15 R0 K17 ["types"]
       53 CALL                             R14 1 1
       54 LOADNIL                          R15
       55 LOADNIL                          R16
       56 DUPCLOSURE                       R17 K18 [PROTO_0]
       57 DUPCLOSURE                       R18 K19 [PROTO_1]
       58 CAPTURE                          VAL R6
       59 DUPCLOSURE                       R19 K20 [PROTO_2]
       60 DUPCLOSURE                       R20 K21 [PROTO_3]
       61 CAPTURE                          VAL R7
       62 DUPCLOSURE                       R21 K22 [PROTO_5]
       63 DUPCLOSURE                       R22 K23 [PROTO_6]
       64 DUPCLOSURE                       R23 K24 [PROTO_7]
       65 CAPTURE                          VAL R9
       66 NEWCLOSURE                       R24 P7
       67 CAPTURE                          REF R15
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R13
       71 DUPCLOSURE                       R25 K25 [PROTO_9]
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R13
       74 DUPCLOSURE                       R26 K26 [PROTO_10]
       75 DUPCLOSURE                       R27 K27 [PROTO_11]
       76 DUPCLOSURE                       R28 K28 [PROTO_12]
       77 GETTABLEKS                       R29 R2 K29 ["ensureDirectoryExists"]
       79 DUPCLOSURE                       R15 K30 [PROTO_13]
       80 DUPCLOSURE                       R30 K31 [PROTO_16]
       81 NEWCLOSURE                       R31 P14
       82 CAPTURE                          VAL R8
       83 CAPTURE                          REF R15
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R29
       87 DUPCLOSURE                       R32 K32 [PROTO_18]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R7
       90 NEWCLOSURE                       R33 P16
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R33
       93 CAPTURE                          REF R16
       94 NEWCLOSURE                       R16 P17
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R8
       97 CAPTURE                          REF R16
       98 CAPTURE                          VAL R33
       99 DUPTABLE                         R34 K45 [{"testNameToKey", "keyToTestName", "getSnapshotData", "addExtraLineBreaks", "removeExtraLineBreaks", "serialize", "minify", "deserializeString", "escapeBacktickString", "saveSnapshotFile", "deepMerge", "removeSnapshotFile"}]
      100 SETTABLEKS                       R19 R34 K33 ["testNameToKey"]
      102 SETTABLEKS                       R20 R34 K34 ["keyToTestName"]
      104 SETTABLEKS                       R21 R34 K35 ["getSnapshotData"]
      106 SETTABLEKS                       R22 R34 K36 ["addExtraLineBreaks"]
      108 SETTABLEKS                       R23 R34 K37 ["removeExtraLineBreaks"]
      110 SETTABLEKS                       R24 R34 K38 ["serialize"]
      112 SETTABLEKS                       R25 R34 K39 ["minify"]
      114 SETTABLEKS                       R26 R34 K40 ["deserializeString"]
      116 SETTABLEKS                       R27 R34 K41 ["escapeBacktickString"]
      118 SETTABLEKS                       R31 R34 K42 ["saveSnapshotFile"]
      120 SETTABLEKS                       R16 R34 K43 ["deepMerge"]
      122 SETTABLEKS                       R32 R34 K44 ["removeSnapshotFile"]
      124 CLOSEUPVALS                      R15
      125 RETURN                           R34 1
