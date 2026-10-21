PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["prefix"]
        2 LENGTH                           R3 R4
        3 GETTABLEKS                       R5 R1 K0 ["prefix"]
        5 LENGTH                           R4 R5
        6 JUMPIFLT                         R4 R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["valueType"]
        2 GETTABLEKS                       R3 R0 K1 ["type"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R4 R0 K1 ["type"]
        8 GETTABLE                         R2 R3 R4
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 JUMPIFEQKNIL                     R2 ; [+7]
       13 JUMPIFEQKNIL                     R1 ; [+5]
       15 GETUPVAL                         R4 1
       16 GETTABLE                         R3 R4 R1
       17 JUMPIFNOTEQKNIL                  R3 ; [+11]
       19 JUMPIFEQKNIL                     R1 ; [+5]
       21 JUMPIFEQKS                       R1 K2 [""] ; [+3]
       23 MOVE                             R3 R1
       24 RETURN                           R3 1
       25 GETTABLEKS                       R4 R0 K1 ["type"]
       27 ORK                              R3 R4 K3 ["N/A"]
       28 RETURN                           R3 1
       29 LOADK                            R3 K4 ["%*%*"]
       30 MOVE                             R5 R2
       31 MOVE                             R6 R1
       32 NAMECALL                         R3 R3 K5 ["format"]
       34 CALL                             R3 3 1
       35 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 JUMPIFNOTEQKS                    R1 K1 [""] ; [+5]
        4 GETIMPORT                        R1 K3 [error]
        6 LOADK                            R2 K4 ["Flag name cannot be empty"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R3 R0 K5 ["type"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIFNOTEQKNIL                  R1 ; [+10]
       14 GETIMPORT                        R2 K3 [error]
       16 LOADK                            R3 K6 ["Flag type %* cannot be represented as an override"]
       17 GETTABLEKS                       R5 R0 K5 ["type"]
       19 NAMECALL                         R3 R3 K7 ["format"]
       21 CALL                             R3 2 1
       22 CALL                             R2 1 0
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R4 R0 K8 ["valueType"]
       26 GETTABLE                         R2 R3 R4
       27 JUMPIFNOTEQKNIL                  R2 ; [+10]
       29 GETIMPORT                        R2 K3 [error]
       31 LOADK                            R3 K9 ["Invalid flag value type: %*"]
       32 GETTABLEKS                       R5 R0 K8 ["valueType"]
       34 NAMECALL                         R3 R3 K7 ["format"]
       36 CALL                             R3 2 1
       37 CALL                             R2 1 0
       38 LOADK                            R2 K10 ["%*%*%*"]
       39 MOVE                             R4 R1
       40 GETTABLEKS                       R5 R0 K8 ["valueType"]
       42 GETTABLEKS                       R6 R0 K0 ["name"]
       44 NAMECALL                         R2 R2 K7 ["format"]
       46 CALL                             R2 4 1
       47 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADN                            R8 1
        5 GETTABLEKS                       R10 R5 K0 ["prefix"]
        7 LENGTH                           R9 R10
        8 FASTCALL3                        STRING_SUB R0 R8 R9
       10 MOVE                             R7 R0
       11 GETIMPORT                        R6 K3 [string.sub]
       13 CALL                             R6 3 1
       14 GETTABLEKS                       R7 R5 K0 ["prefix"]
       16 JUMPIFNOTEQ                      R6 R7 ; [+16]
       18 GETTABLEKS                       R6 R5 K4 ["type"]
       20 GETTABLEKS                       R7 R5 K5 ["valueType"]
       22 GETTABLEKS                       R12 R5 K0 ["prefix"]
       24 LENGTH                           R11 R12
       25 ADDK                             R10 R11 K6 [1]
       26 FASTCALL2                        STRING_SUB R0 R10 ; [+4]
       28 MOVE                             R9 R0
       29 GETIMPORT                        R8 K3 [string.sub]
       31 CALL                             R8 2 1
       32 RETURN                           R6 3
       33 FORGLOOP                         R1 2 ; [-30]
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K7 ["Invalid"]
       38 LOADNIL                          R2
       39 MOVE                             R3 R0
       40 RETURN                           R1 3

PROTO_4:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%d+$"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 FASTCALL1                        TONUMBER R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K5 [tonumber]
       13 CALL                             R1 1 1
       14 JUMPIFEQKNIL                     R1 ; [+4]
       16 LOADN                            R2 255
       17 JUMPIFNOTLT                      R2 R1 ; [+3]
       19 LOADNIL                          R2
       20 RETURN                           R2 1
       21 RETURN                           R1 1

PROTO_5:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+21]
        7 LOADN                            R1 0
        8 JUMPIFLT                         R0 R1 ; [+7]
       10 LOADN                            R1 255
       11 JUMPIFLT                         R1 R0 ; [+4]
       13 MODK                             R1 R0 K3 [1]
       14 JUMPIFEQKN                       R1 K4 [0] ; [+3]
       16 LOADNIL                          R1
       17 RETURN                           R1 1
       18 DUPTABLE                         R1 K7 [{"severity", "channel"}]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K8 ["Warning"]
       22 SETTABLEKS                       R2 R1 K5 ["severity"]
       24 SETTABLEKS                       R0 R1 K6 ["channel"]
       26 RETURN                           R1 1
       27 FASTCALL1                        TYPE R0 ; [+3]
       28 MOVE                             R2 R0
       29 GETIMPORT                        R1 K1 [type]
       31 CALL                             R1 1 1
       32 JUMPIFEQKS                       R1 K9 ["string"] ; [+3]
       34 LOADNIL                          R1
       35 RETURN                           R1 1
       36 GETIMPORT                        R2 K12 [string.match]
       38 MOVE                             R3 R0
       39 LOADK                            R4 K13 ["^%s*(.-)%s*$"]
       40 CALL                             R2 2 1
       41 ORK                              R1 R2 K10 [""]
       42 GETIMPORT                        R2 K12 [string.match]
       44 MOVE                             R3 R1
       45 LOADK                            R4 K14 ["^(%a+)%s*,%s*(%d+)$"]
       46 CALL                             R2 2 2
       47 JUMPIFEQKNIL                     R2 ; [+39]
       49 JUMPIFEQKNIL                     R3 ; [+37]
       51 GETIMPORT                        R5 K12 [string.match]
       53 MOVE                             R6 R3
       54 LOADK                            R7 K15 ["^%d+$"]
       55 CALL                             R5 2 1
       56 JUMPIFNOTEQKNIL                  R5 ; [+3]
       58 LOADNIL                          R4
       59 JUMP                             ; [+13]
       60 FASTCALL1                        TONUMBER R3 ; [+3]
       61 MOVE                             R6 R3
       62 GETIMPORT                        R5 K17 [tonumber]
       64 CALL                             R5 1 1
       65 JUMPIFEQKNIL                     R5 ; [+4]
       67 LOADN                            R6 255
       68 JUMPIFNOTLT                      R6 R5 ; [+3]
       70 LOADNIL                          R4
       71 JUMP                             ; [+1]
       72 MOVE                             R4 R5
       73 GETUPVAL                         R6 0
       74 GETTABLE                         R5 R6 R2
       75 JUMPIFEQKNIL                     R5 ; [+3]
       77 JUMPIFNOTEQKNIL                  R4 ; [+3]
       79 LOADNIL                          R5
       80 RETURN                           R5 1
       81 DUPTABLE                         R5 K7 [{"severity", "channel"}]
       82 SETTABLEKS                       R2 R5 K5 ["severity"]
       84 SETTABLEKS                       R4 R5 K6 ["channel"]
       86 RETURN                           R5 1
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R4 R4 K18 ["None"]
       90 JUMPIFEQ                         R1 R4 ; [+9]
       92 GETUPVAL                         R5 0
       93 GETTABLE                         R4 R5 R1
       94 JUMPIFEQKNIL                     R4 ; [+5]
       96 DUPTABLE                         R4 K20 [{["severity"], ["channel"] = 6}]
       97 SETTABLEKS                       R1 R4 K5 ["severity"]
       99 RETURN                           R4 1
      100 GETIMPORT                        R5 K12 [string.match]
      102 MOVE                             R6 R1
      103 LOADK                            R7 K15 ["^%d+$"]
      104 CALL                             R5 2 1
      105 JUMPIFNOTEQKNIL                  R5 ; [+3]
      107 LOADNIL                          R4
      108 JUMP                             ; [+13]
      109 FASTCALL1                        TONUMBER R1 ; [+3]
      110 MOVE                             R6 R1
      111 GETIMPORT                        R5 K17 [tonumber]
      113 CALL                             R5 1 1
      114 JUMPIFEQKNIL                     R5 ; [+4]
      116 LOADN                            R6 255
      117 JUMPIFNOTLT                      R6 R5 ; [+3]
      119 LOADNIL                          R4
      120 JUMP                             ; [+1]
      121 MOVE                             R4 R5
      122 JUMPIFNOTEQKNIL                  R4 ; [+3]
      124 LOADNIL                          R5
      125 RETURN                           R5 1
      126 DUPTABLE                         R5 K7 [{"severity", "channel"}]
      127 GETUPVAL                         R6 0
      128 GETTABLEKS                       R6 R6 K8 ["Warning"]
      130 SETTABLEKS                       R6 R5 K5 ["severity"]
      132 SETTABLEKS                       R4 R5 K6 ["channel"]
      134 RETURN                           R5 1

PROTO_6:
        0 LOADK                            R2 K0 ["%*,%*"]
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["format"]
        5 CALL                             R2 3 1
        6 RETURN                           R2 1

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADK                            R2 K0 ["N/A"]
        3 RETURN                           R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["FLog"]
        7 JUMPIFNOTEQ                      R0 R3 ; [+5]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 JUMPIFNOTEQKNIL                  R2 ; [+7]
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R3 K3 [tostring]
       20 CALL                             R3 1 1
       21 RETURN                           R3 1
       22 GETTABLEKS                       R4 R2 K4 ["severity"]
       24 GETTABLEKS                       R5 R2 K5 ["channel"]
       26 LOADK                            R6 K6 ["%*,%*"]
       27 MOVE                             R8 R4
       28 MOVE                             R9 R5
       29 NAMECALL                         R6 R6 K7 ["format"]
       31 CALL                             R6 3 1
       32 MOVE                             R3 R6
       33 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlag"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+42]
        5 FASTCALL1                        TYPE R1 ; [+3]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K2 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K3 ["boolean"] ; [+2]
       12 RETURN                           R1 1
       13 GETIMPORT                        R2 K6 [string.lower]
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R4 R1
       17 GETIMPORT                        R3 K8 [tostring]
       19 CALL                             R3 1 1
       20 CALL                             R2 1 1
       21 JUMPIFEQKS                       R2 K9 ["true"] ; [+3]
       23 JUMPIFNOTEQKS                    R2 K10 ["1"] ; [+3]
       25 LOADB                            R3 1
       26 RETURN                           R3 1
       27 JUMPIFEQKS                       R2 K11 ["false"] ; [+3]
       29 JUMPIFNOTEQKS                    R2 K12 ["0"] ; [+3]
       31 LOADB                            R3 0
       32 RETURN                           R3 1
       33 GETIMPORT                        R3 K14 [error]
       35 LOADK                            R4 K15 ["Invalid boolean value for FFlag: %*"]
       36 FASTCALL1                        TOSTRING R1 ; [+3]
       37 MOVE                             R7 R1
       38 GETIMPORT                        R6 K8 [tostring]
       40 CALL                             R6 1 1
       41 NAMECALL                         R4 R4 K16 ["format"]
       43 CALL                             R4 2 1
       44 CALL                             R3 1 0
       45 JUMP                             ; [+73]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K17 ["FInt"]
       49 JUMPIFNOTEQ                      R0 R2 ; [+24]
       51 FASTCALL1                        TONUMBER R1 ; [+3]
       52 MOVE                             R3 R1
       53 GETIMPORT                        R2 K19 [tonumber]
       55 CALL                             R2 1 1
       56 JUMPIFEQKNIL                     R2 ; [+4]
       58 MODK                             R3 R2 K20 [1]
       59 JUMPIFEQKN                       R3 K21 [0] ; [+13]
       61 GETIMPORT                        R3 K14 [error]
       63 LOADK                            R4 K22 ["Invalid integer value for FInt: %*"]
       64 FASTCALL1                        TOSTRING R1 ; [+3]
       65 MOVE                             R7 R1
       66 GETIMPORT                        R6 K8 [tostring]
       68 CALL                             R6 1 1
       69 NAMECALL                         R4 R4 K16 ["format"]
       71 CALL                             R4 2 1
       72 CALL                             R3 1 0
       73 RETURN                           R2 1
       74 GETUPVAL                         R2 0
       75 GETTABLEKS                       R2 R2 K23 ["FLog"]
       77 JUMPIFNOTEQ                      R0 R2 ; [+30]
       79 GETUPVAL                         R2 1
       80 MOVE                             R3 R1
       81 CALL                             R2 1 1
       82 JUMPIFNOTEQKNIL                  R2 ; [+13]
       84 GETIMPORT                        R3 K14 [error]
       86 LOADK                            R4 K24 ["Invalid log value: %*"]
       87 FASTCALL1                        TOSTRING R1 ; [+3]
       88 MOVE                             R7 R1
       89 GETIMPORT                        R6 K8 [tostring]
       91 CALL                             R6 1 1
       92 NAMECALL                         R4 R4 K16 ["format"]
       94 CALL                             R4 2 1
       95 CALL                             R3 1 0
       96 GETTABLEKS                       R4 R2 K25 ["severity"]
       98 GETTABLEKS                       R5 R2 K26 ["channel"]
      100 LOADK                            R6 K27 ["%*,%*"]
      101 MOVE                             R8 R4
      102 MOVE                             R9 R5
      103 NAMECALL                         R6 R6 K16 ["format"]
      105 CALL                             R6 3 1
      106 MOVE                             R3 R6
      107 RETURN                           R3 1
      108 GETUPVAL                         R2 0
      109 GETTABLEKS                       R2 R2 K28 ["FString"]
      111 JUMPIFNOTEQ                      R0 R2 ; [+7]
      113 FASTCALL1                        TOSTRING R1 ; [+3]
      114 MOVE                             R3 R1
      115 GETIMPORT                        R2 K8 [tostring]
      117 CALL                             R2 1 1
      118 RETURN                           R2 1
      119 GETIMPORT                        R2 K14 [error]
      121 LOADK                            R3 K29 ["Invalid flag value type: %*"]
      122 MOVE                             R5 R0
      123 NAMECALL                         R3 R3 K16 ["format"]
      125 CALL                             R3 2 1
      126 CALL                             R2 1 0
      127 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlag"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 LOADK                            R1 K1 ["false"]
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["FString"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+3]
       12 LOADK                            R1 K3 [""]
       13 RETURN                           R1 1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K4 ["FLog"]
       17 JUMPIFNOTEQ                      R0 R1 ; [+7]
       19 LOADK                            R1 K5 ["Warning,%*"]
       20 LOADN                            R3 0
       21 NAMECALL                         R1 R1 K6 ["format"]
       23 CALL                             R1 2 1
       24 RETURN                           R1 1
       25 LOADK                            R1 K7 ["0"]
       26 RETURN                           R1 1

PROTO_10:
        0 GETIMPORT                        R2 K3 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K4 ["^%s*(.-)%s*$"]
        4 CALL                             R2 2 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_11:
        0 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 GETIMPORT                        R3 K3 [string.find]
        6 GETIMPORT                        R4 K5 [string.lower]
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 GETIMPORT                        R5 K5 [string.lower]
       12 MOVE                             R6 R1
       13 CALL                             R5 1 1
       14 LOADN                            R6 1
       15 LOADB                            R7 1
       16 CALL                             R3 4 1
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 RETURN                           R2 1

PROTO_12:
        0 LOADK                            R3 K0 ["[&<>\"']"]
        1 NEWTABLE                         R4 8 0
        3 LOADK                            R5 K1 ["&amp;"]
        4 SETTABLEKS                       R5 R4 K2 ["&"]
        6 LOADK                            R5 K3 ["&lt;"]
        7 SETTABLEKS                       R5 R4 K4 ["<"]
        9 LOADK                            R5 K5 ["&gt;"]
       10 SETTABLEKS                       R5 R4 K6 [">"]
       12 LOADK                            R5 K7 ["&quot;"]
       13 SETTABLEKS                       R5 R4 K8 ["\""]
       15 LOADK                            R5 K9 ["&apos;"]
       16 SETTABLEKS                       R5 R4 K10 ["'"]
       18 NAMECALL                         R1 R0 K11 ["gsub"]
       20 CALL                             R1 3 1
       21 RETURN                           R1 1

PROTO_13:
        0 DUPTABLE                         R0 K2 [{"name", "value"}]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K0 ["name"]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["valueType"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["value"]
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K1 ["value"]
       16 RETURN                           R0 1

PROTO_14:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETIMPORT                        R9 K1 [pcall]
       10 NEWCLOSURE                       R10 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R8
       13 CAPTURE                          UPVAL U1
       14 CALL                             R9 1 2
       15 JUMPIFNOT                        R9 ; [+6]
       16 GETTABLEKS                       R11 R10 K2 ["name"]
       18 GETTABLEKS                       R12 R10 K3 ["value"]
       20 SETTABLE                         R12 R2 R11
       21 JUMP                             ; [+23]
       22 LOADK                            R13 K4 ["%*: %*"]
       23 GETTABLEKS                       R15 R8 K2 ["name"]
       25 MOVE                             R16 R10
       26 NAMECALL                         R13 R13 K5 ["format"]
       28 CALL                             R13 3 1
       29 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       31 MOVE                             R12 R3
       32 GETIMPORT                        R11 K8 [table.insert]
       34 CALL                             R11 2 0
       35 JUMPIFNOT                        R1 ; [+9]
       36 GETTABLEKS                       R12 R8 K3 ["value"]
       38 JUMPIFNOTEQKNIL                  R12 ; [+3]
       40 LOADK                            R11 K9 ["nil"]
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R11 R8 K3 ["value"]
       44 SETTABLE                         R11 R2 R7
       45 FORGLOOP                         R4 2 ; [-38]
       47 RETURN                           R2 2

PROTO_15:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R3 R0 K2 ["name"]
        9 RETURN                           R3 1

PROTO_16:
        0 GETIMPORT                        R4 K1 [pcall]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 CALL                             R4 2 2
        5 JUMPIFNOT                        R4 ; [+2]
        6 MOVE                             R3 R5
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R3 R0 K2 ["name"]
       10 GETIMPORT                        R5 K1 [pcall]
       12 GETUPVAL                         R6 0
       13 MOVE                             R7 R1
       14 CALL                             R5 2 2
       15 JUMPIFNOT                        R5 ; [+2]
       16 MOVE                             R4 R6
       17 JUMP                             ; [+2]
       18 GETTABLEKS                       R4 R1 K2 ["name"]
       20 JUMPIFLT                         R3 R4 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R2 1

PROTO_17:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TYPEOF R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K1 [typeof]
       10 CALL                             R7 1 1
       11 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+32]
       13 GETTABLEKS                       R8 R6 K3 ["name"]
       15 FASTCALL1                        TYPEOF R8 ; [+2]
       16 GETIMPORT                        R7 K1 [typeof]
       18 CALL                             R7 1 1
       19 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+24]
       21 DUPTABLE                         R9 K8 [{"name", "type", "valueType", "default"}]
       22 GETTABLEKS                       R10 R6 K3 ["name"]
       24 SETTABLEKS                       R10 R9 K3 ["name"]
       26 GETTABLEKS                       R10 R6 K5 ["type"]
       28 SETTABLEKS                       R10 R9 K5 ["type"]
       30 GETTABLEKS                       R10 R6 K6 ["valueType"]
       32 SETTABLEKS                       R10 R9 K6 ["valueType"]
       34 GETTABLEKS                       R10 R6 K7 ["default"]
       36 SETTABLEKS                       R10 R9 K7 ["default"]
       38 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       40 MOVE                             R8 R1
       41 GETIMPORT                        R7 K10 [table.insert]
       43 CALL                             R7 2 0
       44 FORGLOOP                         R2 2 ; [-39]
       46 GETIMPORT                        R2 K12 [table.sort]
       48 MOVE                             R3 R1
       49 DUPCLOSURE                       R4 K13 [PROTO_16]
       50 CAPTURE                          UPVAL U0
       51 CALL                             R2 2 0
       52 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["id"]
        6 RETURN                           R1 1
        7 GETIMPORT                        R2 K2 [pcall]
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R0
       11 CALL                             R2 2 2
       12 JUMPIFNOT                        R2 ; [+2]
       13 MOVE                             R1 R3
       14 RETURN                           R1 1
       15 GETTABLEKS                       R1 R0 K3 ["name"]
       17 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Invalid"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+5]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["InvalidFlag"]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R2 R0 K3 ["valueType"]
       13 JUMPIFEQKNIL                     R2 ; [+5]
       15 GETTABLEKS                       R2 R0 K4 ["value"]
       17 JUMPIFNOTEQKNIL                  R2 ; [+8]
       19 JUMPIF                           R1 ; [+4]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K5 ["MissingFlag"]
       23 RETURN                           R2 1
       24 LOADNIL                          R2
       25 RETURN                           R2 1
       26 GETUPVAL                         R2 2
       27 NEWTABLE                         R3 0 1
       29 MOVE                             R4 R0
       30 SETLIST                          R3 R4 1 [1]
       32 CALL                             R2 1 2
       33 LENGTH                           R4 R3
       34 LOADN                            R5 0
       35 JUMPIFNOTLT                      R5 R4 ; [+5]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K6 ["InvalidValue"]
       40 RETURN                           R4 1
       41 JUMPIF                           R1 ; [+4]
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K5 ["MissingFlag"]
       45 RETURN                           R4 1
       46 LOADNIL                          R4
       47 RETURN                           R4 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Value"]
        3 JUMPIFNOTEQ                      R1 R3 ; [+17]
        5 GETTABLEKS                       R3 R0 K1 ["default"]
        7 JUMPIFNOTEQKNIL                  R3 ; [+3]
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 GETIMPORT                        R3 K4 [string.lower]
       13 GETTABLEKS                       R5 R0 K1 ["default"]
       15 FASTCALL1                        TOSTRING R5 ; [+2]
       16 GETIMPORT                        R4 K6 [tostring]
       18 CALL                             R4 1 1
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K7 ["Override"]
       24 JUMPIFNOTEQ                      R1 R3 ; [+37]
       26 GETTABLEKS                       R5 R0 K8 ["id"]
       28 JUMPIFEQKNIL                     R5 ; [+4]
       30 GETTABLEKS                       R4 R0 K8 ["id"]
       32 JUMP                             ; [+10]
       33 GETIMPORT                        R5 K10 [pcall]
       35 GETUPVAL                         R6 1
       36 MOVE                             R7 R0
       37 CALL                             R5 2 2
       38 JUMPIFNOT                        R5 ; [+2]
       39 MOVE                             R4 R6
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R4 R0 K11 ["name"]
       43 GETTABLE                         R3 R2 R4
       44 JUMPIFEQKNIL                     R3 ; [+5]
       46 GETTABLEKS                       R4 R3 K12 ["value"]
       48 JUMPIFNOTEQKNIL                  R4 ; [+3]
       50 LOADNIL                          R4
       51 RETURN                           R4 1
       52 GETIMPORT                        R4 K4 [string.lower]
       54 GETTABLEKS                       R6 R3 K12 ["value"]
       56 FASTCALL1                        TOSTRING R6 ; [+2]
       57 GETIMPORT                        R5 K6 [tostring]
       59 CALL                             R5 1 1
       60 CALL                             R4 1 -1
       61 RETURN                           R4 -1
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K13 ["Type"]
       65 JUMPIFNOTEQ                      R1 R3 ; [+41]
       67 GETIMPORT                        R3 K4 [string.lower]
       69 GETTABLEKS                       R5 R0 K14 ["valueType"]
       71 GETTABLEKS                       R7 R0 K15 ["type"]
       73 JUMPIFNOT                        R7 ; [+5]
       74 GETUPVAL                         R7 2
       75 GETTABLEKS                       R8 R0 K15 ["type"]
       77 GETTABLE                         R6 R7 R8
       78 JUMP                             ; [+1]
       79 LOADNIL                          R6
       80 JUMPIFEQKNIL                     R6 ; [+7]
       82 JUMPIFEQKNIL                     R5 ; [+5]
       84 GETUPVAL                         R8 3
       85 GETTABLE                         R7 R8 R5
       86 JUMPIFNOTEQKNIL                  R7 ; [+11]
       88 JUMPIFEQKNIL                     R5 ; [+5]
       90 JUMPIFEQKS                       R5 K16 [""] ; [+3]
       92 MOVE                             R4 R5
       93 JUMP                             ; [+11]
       94 GETTABLEKS                       R7 R0 K15 ["type"]
       96 ORK                              R4 R7 K17 ["N/A"]
       97 JUMP                             ; [+7]
       98 LOADK                            R7 K18 ["%*%*"]
       99 MOVE                             R9 R6
      100 MOVE                             R10 R5
      101 NAMECALL                         R7 R7 K19 ["format"]
      103 CALL                             R7 3 1
      104 MOVE                             R4 R7
      105 CALL                             R3 1 -1
      106 RETURN                           R3 -1
      107 GETIMPORT                        R3 K4 [string.lower]
      109 GETTABLEKS                       R4 R0 K11 ["name"]
      111 CALL                             R3 1 -1
      112 RETURN                           R3 -1

PROTO_21:
        0 GETIMPORT                        R1 K2 [string.lower]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["name"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K2 [string.lower]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["name"]
       11 CALL                             R2 1 1
       12 JUMPIFLT                         R1 R2 ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 RETURN                           R0 1

PROTO_22:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETUPVAL                         R6 0
        4 MOVE                             R7 R0
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 CALL                             R6 3 1
        8 GETUPVAL                         R7 0
        9 MOVE                             R8 R1
       10 MOVE                             R9 R2
       11 MOVE                             R10 R3
       12 CALL                             R7 3 1
       13 JUMPIFEQKNIL                     R6 ; [+3]
       15 JUMPIFNOTEQKNIL                  R7 ; [+25]
       17 JUMPIFNOTEQKNIL                  R6 ; [+18]
       19 JUMPIFNOTEQKNIL                  R7 ; [+16]
       21 GETIMPORT                        R9 K2 [string.lower]
       23 GETTABLEKS                       R10 R0 K3 ["name"]
       25 CALL                             R9 1 1
       26 GETIMPORT                        R10 K2 [string.lower]
       28 GETTABLEKS                       R11 R1 K3 ["name"]
       30 CALL                             R10 1 1
       31 JUMPIFLT                         R9 R10 ; [+2]
       33 LOADB                            R8 0 +1
       34 LOADB                            R8 1
       35 RETURN                           R8 1
       36 JUMPIFNOTEQKNIL                  R6 ; [+2]
       38 LOADB                            R8 0 +1
       39 LOADB                            R8 1
       40 RETURN                           R8 1
       41 FASTCALL1                        TONUMBER R6 ; [+3]
       42 MOVE                             R9 R6
       43 GETIMPORT                        R8 K5 [tonumber]
       45 CALL                             R8 1 1
       46 FASTCALL1                        TONUMBER R7 ; [+3]
       47 MOVE                             R10 R7
       48 GETIMPORT                        R9 K5 [tonumber]
       50 CALL                             R9 1 1
       51 JUMPIFNOTEQKNIL                  R8 ; [+2]
       53 LOADB                            R10 0 +1
       54 LOADB                            R10 1
       55 JUMPIFNOTEQKNIL                  R9 ; [+2]
       57 LOADB                            R11 0 +1
       58 LOADB                            R11 1
       59 JUMPIFEQ                         R10 R11 ; [+6]
       61 JUMPIFNOTEQKNIL                  R8 ; [+2]
       63 LOADB                            R10 0 +1
       64 LOADB                            R10 1
       65 RETURN                           R10 1
       66 JUMPIFEQKNIL                     R8 ; [+31]
       68 JUMPIFEQKNIL                     R9 ; [+29]
       70 JUMPIFNOTEQ                      R8 R9 ; [+16]
       72 GETIMPORT                        R11 K2 [string.lower]
       74 GETTABLEKS                       R12 R0 K3 ["name"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K2 [string.lower]
       79 GETTABLEKS                       R13 R1 K3 ["name"]
       81 CALL                             R12 1 1
       82 JUMPIFLT                         R11 R12 ; [+2]
       84 LOADB                            R10 0 +1
       85 LOADB                            R10 1
       86 RETURN                           R10 1
       87 JUMPIFNOT                        R4 ; [+5]
       88 JUMPIFLT                         R9 R8 ; [+2]
       90 LOADB                            R10 0 +1
       91 LOADB                            R10 1
       92 RETURN                           R10 1
       93 JUMPIFLT                         R8 R9 ; [+2]
       95 LOADB                            R10 0 +1
       96 LOADB                            R10 1
       97 RETURN                           R10 1
       98 JUMPIFNOTEQ                      R6 R7 ; [+16]
      100 GETIMPORT                        R11 K2 [string.lower]
      102 GETTABLEKS                       R12 R0 K3 ["name"]
      104 CALL                             R11 1 1
      105 GETIMPORT                        R12 K2 [string.lower]
      107 GETTABLEKS                       R13 R1 K3 ["name"]
      109 CALL                             R12 1 1
      110 JUMPIFLT                         R11 R12 ; [+2]
      112 LOADB                            R10 0 +1
      113 LOADB                            R10 1
      114 RETURN                           R10 1
      115 JUMPIFNOT                        R4 ; [+5]
      116 JUMPIFLT                         R7 R6 ; [+2]
      118 LOADB                            R10 0 +1
      119 LOADB                            R10 1
      120 RETURN                           R10 1
      121 JUMPIFLT                         R6 R7 ; [+2]
      123 LOADB                            R10 0 +1
      124 LOADB                            R10 1
      125 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["FlagType"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["FlagValueType"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["FLogValue"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K9 ["OverrideStatus"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K10 ["SortColumn"]
       31 CALL                             R5 1 1
       32 NEWTABLE                         R6 4 0
       34 GETTABLEKS                       R7 R1 K11 ["Static"]
       36 LOADK                            R8 K12 [""]
       37 SETTABLE                         R8 R6 R7
       38 GETTABLEKS                       R7 R1 K13 ["Dynamic"]
       40 LOADK                            R8 K14 ["D"]
       41 SETTABLE                         R8 R6 R7
       42 GETTABLEKS                       R7 R1 K15 ["Sync"]
       44 LOADK                            R8 K16 ["S"]
       45 SETTABLE                         R8 R6 R7
       46 NEWTABLE                         R7 0 0
       48 GETIMPORT                        R8 K18 [pairs]
       50 MOVE                             R9 R2
       51 CALL                             R8 1 3
       52 FORGPREP_NEXT                    R8
       53 GETIMPORT                        R13 K18 [pairs]
       55 MOVE                             R14 R6
       56 CALL                             R13 1 3
       57 FORGPREP_NEXT                    R13
       58 DUPTABLE                         R20 K22 [{"prefix", "type", "valueType"}]
       59 LOADK                            R21 K23 ["%*%*"]
       60 MOVE                             R23 R17
       61 MOVE                             R24 R12
       62 NAMECALL                         R21 R21 K24 ["format"]
       64 CALL                             R21 3 1
       65 SETTABLEKS                       R21 R20 K19 ["prefix"]
       67 SETTABLEKS                       R16 R20 K20 ["type"]
       69 SETTABLEKS                       R12 R20 K21 ["valueType"]
       71 FASTCALL2                        TABLE_INSERT R7 R20 ; [+4]
       73 MOVE                             R19 R7
       74 GETIMPORT                        R18 K27 [table.insert]
       76 CALL                             R18 2 0
       77 FORGLOOP                         R13 2 ; [-20]
       79 FORGLOOP                         R8 2 ; [-27]
       81 GETIMPORT                        R8 K29 [table.sort]
       83 MOVE                             R9 R7
       84 DUPCLOSURE                       R10 K30 [PROTO_0]
       85 CALL                             R8 2 0
       86 DUPCLOSURE                       R8 K31 [PROTO_1]
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R2
       89 DUPCLOSURE                       R9 K32 [PROTO_2]
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R2
       92 DUPCLOSURE                       R10 K33 [PROTO_3]
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R1
       95 DUPCLOSURE                       R11 K34 [PROTO_4]
       96 DUPCLOSURE                       R12 K35 [PROTO_5]
       97 CAPTURE                          VAL R3
       98 DUPCLOSURE                       R13 K36 [PROTO_6]
       99 DUPCLOSURE                       R14 K37 [PROTO_7]
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R12
      102 DUPCLOSURE                       R15 K38 [PROTO_8]
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R12
      105 DUPCLOSURE                       R16 K39 [PROTO_9]
      106 CAPTURE                          VAL R2
      107 DUPCLOSURE                       R17 K40 [PROTO_10]
      108 DUPCLOSURE                       R18 K41 [PROTO_11]
      109 DUPCLOSURE                       R19 K42 [PROTO_12]
      110 DUPCLOSURE                       R20 K43 [PROTO_14]
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R15
      113 DUPCLOSURE                       R21 K44 [PROTO_15]
      114 CAPTURE                          VAL R9
      115 DUPCLOSURE                       R22 K45 [PROTO_17]
      116 CAPTURE                          VAL R9
      117 DUPCLOSURE                       R23 K46 [PROTO_18]
      118 CAPTURE                          VAL R9
      119 DUPCLOSURE                       R24 K47 [PROTO_19]
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R20
      123 DUPCLOSURE                       R25 K48 [PROTO_20]
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R2
      128 DUPCLOSURE                       R26 K49 [PROTO_22]
      129 CAPTURE                          VAL R25
      130 DUPTABLE                         R27 K67 [{"FormatFlagType", "FormatFlagName", "ParseFlagName", "GetFlagId", "CoerceValue", "ParseLogValue", "FormatLogValue", "DisplayValue", "BlankOverrideValue", "Trim", "MatchesSearch", "EscapeRichText", "FormatOverrides", "NormalizeFlags", "GetOverrideStatus", "GetSortKey", "CompareFlags"}]
      131 SETTABLEKS                       R8 R27 K50 ["FormatFlagType"]
      133 SETTABLEKS                       R9 R27 K51 ["FormatFlagName"]
      135 SETTABLEKS                       R10 R27 K52 ["ParseFlagName"]
      137 SETTABLEKS                       R21 R27 K53 ["GetFlagId"]
      139 SETTABLEKS                       R15 R27 K54 ["CoerceValue"]
      141 SETTABLEKS                       R12 R27 K55 ["ParseLogValue"]
      143 SETTABLEKS                       R13 R27 K56 ["FormatLogValue"]
      145 SETTABLEKS                       R14 R27 K57 ["DisplayValue"]
      147 SETTABLEKS                       R16 R27 K58 ["BlankOverrideValue"]
      149 SETTABLEKS                       R17 R27 K59 ["Trim"]
      151 SETTABLEKS                       R18 R27 K60 ["MatchesSearch"]
      153 SETTABLEKS                       R19 R27 K61 ["EscapeRichText"]
      155 SETTABLEKS                       R20 R27 K62 ["FormatOverrides"]
      157 SETTABLEKS                       R22 R27 K63 ["NormalizeFlags"]
      159 SETTABLEKS                       R24 R27 K64 ["GetOverrideStatus"]
      161 SETTABLEKS                       R25 R27 K65 ["GetSortKey"]
      163 SETTABLEKS                       R26 R27 K66 ["CompareFlags"]
      165 RETURN                           R27 1
