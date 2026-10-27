PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["FileSystemService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+2]
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+1]
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R0 K0 ["-- Jest Roblox Snapshot v1, http://roblox.github.io/jest-roblox/snapshot-testing"]
        1 RETURN                           R0 1

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+14]
        2 LOADB                            R1 0
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K1 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+7]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["isArray"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 NOT                              R1 R2
       16 RETURN                           R1 1

PROTO_4:
        0 MOVE                             R3 R0
        1 LOADK                            R4 K0 [" "]
        2 MOVE                             R5 R1
        3 CONCAT                           R2 R3 R5
        4 RETURN                           R2 1

PROTO_5:
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

PROTO_6:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 1
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 LOADB                            R3 0
        3 GETIMPORT                        R4 K1 [pcall]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          REF R2
        7 CAPTURE                          VAL R0
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

PROTO_8:
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

PROTO_9:
        0 NAMECALL                         R1 R0 K0 ["len"]
        2 CALL                             R1 1 1
        3 LOADN                            R2 2
        4 JUMPIFNOTLT                      R2 R1 ; [+21]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["startsWith"]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K2 ["\n"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+13]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K3 ["endsWith"]
       16 MOVE                             R2 R0
       17 LOADK                            R3 K2 ["\n"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+6]
       20 LOADN                            R3 2
       21 LOADN                            R4 -2
       22 NAMECALL                         R1 R0 K4 ["sub"]
       24 CALL                             R1 3 -1
       25 RETURN                           R1 -1
       26 RETURN                           R0 1

PROTO_10:
        0 ORK                              R1 R1 K0 [2]
        1 MOVE                             R3 R2
        2 JUMPIF                           R3 ; [+2]
        3 NEWTABLE                         R3 0 0
        5 MOVE                             R2 R3
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R0
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K1 ["assign"]
       12 DUPTABLE                         R7 K8 [{["escapeRegex"] = True, ["indent"], ["plugins"], ["printFunctionName"] = False}]
       13 SETTABLEKS                       R1 R7 K4 ["indent"]
       15 GETUPVAL                         R8 3
       16 CALL                             R8 0 1
       17 SETTABLEKS                       R8 R7 K5 ["plugins"]
       19 MOVE                             R8 R2
       20 CALL                             R6 2 -1
       21 CALL                             R4 -1 -1
       22 CALL                             R3 -1 -1
       23 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K6 [{[1] = True, ["min"] = True, ["plugins"], ["printFunctionName"] = False}]
        3 GETUPVAL                         R4 1
        4 CALL                             R4 0 1
        5 SETTABLEKS                       R4 R3 K3 ["plugins"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_12:
        0 LOADN                            R3 2
        1 LOADN                            R4 -2
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

PROTO_13:
        0 RETURN                           R0 1

PROTO_14:
        0 LOADK                            R2 K0 ["[=[\n"]
        1 MOVE                             R3 R0
        2 LOADK                            R4 K1 ["]=]"]
        3 CONCAT                           R1 R2 R4
        4 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["Exists"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R0 R0 K1 ["CreateDirectories"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_16:
        0 LOADK                            R3 K0 ["/"]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 GETIMPORT                        R2 K4 [table.pack]
        6 LOADN                            R5 1
        7 LENGTH                           R7 R1
        8 SUBK                             R6 R7 K5 [1]
        9 FASTCALL3                        TABLE_UNPACK R1 R5 R6
       11 MOVE                             R4 R1
       12 GETIMPORT                        R3 K7 [table.unpack]
       14 CALL                             R3 3 -1
       15 CALL                             R2 -1 1
       16 MOVE                             R1 R2
       17 GETIMPORT                        R2 K9 [table.concat]
       19 MOVE                             R3 R1
       20 LOADK                            R4 K0 ["/"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K11 [pcall]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R2
       27 CALL                             R3 1 2
       28 JUMPIF                           R3 ; [+9]
       29 LOADK                            R7 K12 ["Error%(13%): Access Denied%. Path is outside of sandbox%."]
       30 NAMECALL                         R5 R4 K13 ["find"]
       32 CALL                             R5 2 1
       33 JUMPIFNOT                        R5 ; [+4]
       34 GETIMPORT                        R5 K15 [error]
       36 LOADK                            R6 K16 ["Provided path is invalid: you likely need to provide a different argument to --fs.readwrite.\nYou may need to pass in `--fs.readwrite=$PWD`"]
       37 CALL                             R5 1 0
       38 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 LOADK                            R1 K0 ["%03d%s"]
        1 FASTCALL1                        STRING_LEN R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K3 [string.len]
        5 CALL                             R3 1 1
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K4 ["format"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_19:
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

PROTO_20:
        0 DUPCLOSURE                       R1 K0 [PROTO_18]
        1 GETIMPORT                        R2 K3 [table.sort]
        3 MOVE                             R3 R0
        4 DUPCLOSURE                       R4 K4 [PROTO_19]
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 0
        7 RETURN                           R0 1

PROTO_21:
        0 NEWTABLE                         R2 0 2
        2 LOADK                            R3 K0 ["-- Jest Roblox Snapshot v1, http://roblox.github.io/jest-roblox/snapshot-testing"]
        3 LOADK                            R4 K1 ["local exports = {}"]
        4 SETLIST                          R2 R3 2 [1]
        6 GETIMPORT                        R3 K3 [ipairs]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K4 ["keys"]
       11 MOVE                             R7 R0
       12 CALL                             R6 1 1
       13 DUPCLOSURE                       R7 K5 [PROTO_18]
       14 GETIMPORT                        R8 K8 [table.sort]
       16 MOVE                             R9 R6
       17 DUPCLOSURE                       R10 K9 [PROTO_19]
       18 CAPTURE                          VAL R7
       19 CALL                             R8 2 0
       20 MOVE                             R4 R6
       21 CALL                             R3 1 3
       22 FORGPREP_INEXT                   R3
       23 LOADK                            R11 K10 ["exports[ [=["]
       24 MOVE                             R12 R7
       25 LOADK                            R13 K11 ["]=] ] = "]
       26 GETUPVAL                         R15 1
       27 GETTABLE                         R16 R0 R7
       28 CALL                             R15 1 1
       29 LOADK                            R16 K12 ["[=[\n"]
       30 MOVE                             R17 R15
       31 LOADK                            R18 K13 ["]=]"]
       32 CONCAT                           R14 R16 R18
       33 CONCAT                           R10 R11 R14
       34 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       36 MOVE                             R9 R2
       37 GETIMPORT                        R8 K15 [table.insert]
       39 CALL                             R8 2 0
       40 FORGLOOP                         R3 2 [inext] ; [-18]
       42 FASTCALL2K                       TABLE_INSERT R2 K16 ; [+5]
       44 MOVE                             R4 R2
       45 LOADK                            R5 K16 ["return exports"]
       46 GETIMPORT                        R3 K15 [table.insert]
       48 CALL                             R3 2 0
       49 GETUPVAL                         R3 2
       50 JUMPIFNOTEQKNIL                  R3 ; [+11]
       52 GETIMPORT                        R5 K19 [pcall]
       54 DUPCLOSURE                       R6 K20 [PROTO_0]
       55 CALL                             R5 1 2
       56 JUMPIFNOT                        R5 ; [+2]
       57 MOVE                             R4 R6
       58 JUMPIF                           R4 ; [+1]
       59 LOADNIL                          R4
       60 ORK                              R3 R4 K17 [False]
       61 SETUPVAL                         R3 2
       62 GETUPVAL                         R3 2
       63 JUMPIF                           R3 ; [+6]
       64 GETIMPORT                        R3 K22 [error]
       66 GETUPVAL                         R4 3
       67 LOADK                            R5 K23 ["Attempting to save snapshots in an environment where FileSystemService is inaccessible."]
       68 CALL                             R4 1 -1
       69 CALL                             R3 -1 0
       70 GETUPVAL                         R3 4
       71 MOVE                             R4 R1
       72 CALL                             R3 1 0
       73 GETUPVAL                         R3 2
       74 MOVE                             R5 R1
       75 GETIMPORT                        R6 K25 [table.concat]
       77 MOVE                             R7 R2
       78 LOADK                            R8 K26 ["\n\n"]
       79 CALL                             R6 2 -1
       80 NAMECALL                         R3 R3 K27 ["WriteFile"]
       82 CALL                             R3 -1 0
       83 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["from"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K2 [ipairs]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 3
        9 FORGPREP_INEXT                   R3
       10 GETTABLE                         R8 R2 R6
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R9 R9 K3 ["isArray"]
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
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K3 ["isArray"]
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

PROTO_23:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+14]
        2 LOADB                            R2 0
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K1 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["isArray"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 NOT                              R2 R3
       16 JUMPIFNOT                        R2 ; [+96]
       17 MOVE                             R2 R1
       18 JUMPIFNOT                        R2 ; [+14]
       19 LOADB                            R2 0
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R3 K1 [typeof]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+7]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K3 ["isArray"]
       30 MOVE                             R4 R1
       31 CALL                             R3 1 1
       32 NOT                              R2 R3
       33 JUMPIFNOT                        R2 ; [+79]
       34 NEWTABLE                         R2 0 0
       36 GETIMPORT                        R3 K5 [pairs]
       38 MOVE                             R4 R0
       39 CALL                             R3 1 3
       40 FORGPREP_NEXT                    R3
       41 SETTABLE                         R7 R2 R6
       42 FORGLOOP                         R3 2 ; [-2]
       44 GETIMPORT                        R3 K5 [pairs]
       46 MOVE                             R4 R1
       47 CALL                             R3 1 3
       48 FORGPREP_NEXT                    R3
       49 GETTABLE                         R9 R1 R6
       50 MOVE                             R8 R9
       51 JUMPIFNOT                        R8 ; [+14]
       52 LOADB                            R8 0
       53 FASTCALL1                        TYPEOF R9 ; [+3]
       54 MOVE                             R11 R9
       55 GETIMPORT                        R10 K1 [typeof]
       57 CALL                             R10 1 1
       58 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+7]
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R10 R10 K3 ["isArray"]
       63 MOVE                             R11 R9
       64 CALL                             R10 1 1
       65 NOT                              R8 R10
       66 JUMPIFNOT                        R8 ; [+22]
       67 GETTABLE                         R9 R1 R6
       68 GETTABLEKS                       R8 R9 K6 ["$$typeof"]
       70 JUMPIF                           R8 ; [+18]
       71 GETTABLE                         R8 R0 R6
       72 JUMPIF                           R8 ; [+10]
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K7 ["assign"]
       76 MOVE                             R9 R2
       77 NEWTABLE                         R10 1 0
       79 GETTABLE                         R11 R1 R6
       80 SETTABLE                         R11 R10 R6
       81 CALL                             R8 2 0
       82 JUMP                             ; [+27]
       83 GETUPVAL                         R8 2
       84 GETTABLE                         R9 R0 R6
       85 GETTABLE                         R10 R1 R6
       86 CALL                             R8 2 1
       87 SETTABLE                         R8 R2 R6
       88 JUMP                             ; [+21]
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R8 R8 K3 ["isArray"]
       92 GETTABLE                         R9 R1 R6
       93 CALL                             R8 1 1
       94 JUMPIFNOT                        R8 ; [+6]
       95 GETUPVAL                         R8 3
       96 GETTABLE                         R9 R0 R6
       97 GETTABLE                         R10 R1 R6
       98 CALL                             R8 2 1
       99 SETTABLE                         R8 R2 R6
      100 JUMP                             ; [+9]
      101 GETUPVAL                         R8 1
      102 GETTABLEKS                       R8 R8 K7 ["assign"]
      104 MOVE                             R9 R2
      105 NEWTABLE                         R10 1 0
      107 GETTABLE                         R11 R1 R6
      108 SETTABLE                         R11 R10 R6
      109 CALL                             R8 2 0
      110 FORGLOOP                         R3 2 ; [-62]
      112 RETURN                           R2 1
      113 GETUPVAL                         R2 0
      114 GETTABLEKS                       R2 R2 K3 ["isArray"]
      116 MOVE                             R3 R0
      117 CALL                             R2 1 1
      118 JUMPIFNOT                        R2 ; [+11]
      119 GETUPVAL                         R2 0
      120 GETTABLEKS                       R2 R2 K3 ["isArray"]
      122 MOVE                             R3 R1
      123 CALL                             R2 1 1
      124 JUMPIFNOT                        R2 ; [+5]
      125 GETUPVAL                         R2 3
      126 MOVE                             R3 R0
      127 MOVE                             R4 R1
      128 CALL                             R2 2 1
      129 RETURN                           R2 1
      130 RETURN                           R0 1

PROTO_24:
        0 ORK                              R2 R1 K0 [0]
        1 LOADN                            R6 1
        2 LOADN                            R7 1
        3 FASTCALL3                        STRING_SUB R0 R6 R7
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K3 [string.sub]
        8 CALL                             R4 3 1
        9 JUMPIFEQKS                       R4 K4 ["/"] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 NEWTABLE                         R4 0 0
       15 GETIMPORT                        R5 K6 [string.gmatch]
       17 MOVE                             R6 R0
       18 LOADK                            R7 K7 ["[^\\/][^\\/]*"]
       19 CALL                             R5 2 3
       20 FORGPREP                         R5
       21 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       23 MOVE                             R11 R4
       24 MOVE                             R12 R8
       25 GETIMPORT                        R10 K10 [table.insert]
       27 CALL                             R10 2 0
       28 FORGLOOP                         R5 1 ; [-8]
       30 LOADN                            R5 0
       31 JUMPIFNOTLT                      R5 R2 ; [+15]
       33 NEWTABLE                         R5 0 1
       35 LOADN                            R8 1
       36 LENGTH                           R10 R4
       37 SUB                              R9 R10 R2
       38 FASTCALL3                        TABLE_UNPACK R4 R8 R9
       40 MOVE                             R7 R4
       41 GETIMPORT                        R6 K12 [table.unpack]
       43 CALL                             R6 3 -1
       44 SETLIST                          R5 R6 -1 [1]
       46 MOVE                             R4 R5
       47 JUMPIFNOT                        R3 ; [+8]
       48 LOADK                            R6 K4 ["/"]
       49 GETIMPORT                        R7 K14 [table.concat]
       51 MOVE                             R8 R4
       52 LOADK                            R9 K4 ["/"]
       53 CALL                             R7 2 1
       54 CONCAT                           R5 R6 R7
       55 RETURN                           R5 1
       56 GETIMPORT                        R5 K14 [table.concat]
       58 MOVE                             R6 R4
       59 LOADK                            R7 K15 ["\\"]
       60 CALL                             R5 2 -1
       61 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 DUPCLOSURE                       R2 K3 [PROTO_1]
        8 LOADNIL                          R3
        9 GETIMPORT                        R4 K5 [require]
       11 GETTABLEKS                       R5 R1 K6 ["LuauPolyfill"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R5 R4 K7 ["Array"]
       16 GETTABLEKS                       R6 R4 K8 ["Error"]
       18 GETTABLEKS                       R7 R4 K9 ["Object"]
       20 GETTABLEKS                       R8 R4 K10 ["String"]
       22 GETIMPORT                        R9 K5 [require]
       24 GETTABLEKS                       R10 R1 K11 ["PrettyFormat"]
       26 CALL                             R9 1 1
       27 GETIMPORT                        R10 K5 [require]
       29 GETTABLEKS                       R11 R0 K11 ["PrettyFormat"]
       31 CALL                             R10 1 1
       32 GETTABLEKS                       R11 R9 K12 ["format"]
       34 GETIMPORT                        R12 K5 [require]
       36 GETTABLEKS                       R13 R0 K13 ["plugins"]
       38 CALL                             R12 1 1
       39 GETTABLEKS                       R12 R12 K14 ["getSerializers"]
       41 GETIMPORT                        R13 K5 [require]
       43 GETTABLEKS                       R14 R0 K15 ["types"]
       45 CALL                             R13 1 1
       46 LOADNIL                          R14
       47 LOADNIL                          R15
       48 DUPCLOSURE                       R16 K16 [PROTO_2]
       49 DUPCLOSURE                       R17 K17 [PROTO_3]
       50 CAPTURE                          VAL R5
       51 DUPCLOSURE                       R18 K18 [PROTO_4]
       52 DUPCLOSURE                       R19 K19 [PROTO_5]
       53 CAPTURE                          VAL R6
       54 DUPCLOSURE                       R20 K20 [PROTO_7]
       55 DUPCLOSURE                       R21 K21 [PROTO_8]
       56 DUPCLOSURE                       R22 K22 [PROTO_9]
       57 CAPTURE                          VAL R8
       58 NEWCLOSURE                       R23 P8
       59 CAPTURE                          REF R14
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R12
       63 DUPCLOSURE                       R24 K23 [PROTO_11]
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R12
       66 DUPCLOSURE                       R25 K24 [PROTO_12]
       67 DUPCLOSURE                       R26 K25 [PROTO_13]
       68 DUPCLOSURE                       R27 K26 [PROTO_14]
       69 NEWCLOSURE                       R28 P13
       70 CAPTURE                          REF R3
       71 DUPCLOSURE                       R14 K27 [PROTO_17]
       72 DUPCLOSURE                       R29 K28 [PROTO_20]
       73 NEWCLOSURE                       R30 P16
       74 CAPTURE                          VAL R7
       75 CAPTURE                          REF R14
       76 CAPTURE                          REF R3
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R28
       79 NEWCLOSURE                       R31 P17
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R31
       82 CAPTURE                          REF R15
       83 NEWCLOSURE                       R15 P18
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R7
       86 CAPTURE                          REF R15
       87 CAPTURE                          VAL R31
       88 DUPCLOSURE                       R32 K29 [PROTO_24]
       89 DUPTABLE                         R33 K42 [{"testNameToKey", "keyToTestName", "getSnapshotData", "addExtraLineBreaks", "removeExtraLineBreaks", "serialize", "minify", "deserializeString", "escapeBacktickString", "saveSnapshotFile", "deepMerge", "robloxGetParent"}]
       90 SETTABLEKS                       R18 R33 K30 ["testNameToKey"]
       92 SETTABLEKS                       R19 R33 K31 ["keyToTestName"]
       94 SETTABLEKS                       R20 R33 K32 ["getSnapshotData"]
       96 SETTABLEKS                       R21 R33 K33 ["addExtraLineBreaks"]
       98 SETTABLEKS                       R22 R33 K34 ["removeExtraLineBreaks"]
      100 SETTABLEKS                       R23 R33 K35 ["serialize"]
      102 SETTABLEKS                       R24 R33 K36 ["minify"]
      104 SETTABLEKS                       R25 R33 K37 ["deserializeString"]
      106 SETTABLEKS                       R26 R33 K38 ["escapeBacktickString"]
      108 SETTABLEKS                       R30 R33 K39 ["saveSnapshotFile"]
      110 SETTABLEKS                       R15 R33 K40 ["deepMerge"]
      112 SETTABLEKS                       R32 R33 K41 ["robloxGetParent"]
      114 CLOSEUPVALS                      R3
      115 RETURN                           R33 1
