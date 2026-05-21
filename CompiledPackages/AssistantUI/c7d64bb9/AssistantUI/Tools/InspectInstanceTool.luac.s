PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 DUPTABLE                         R10 K3 [{"className", "path"}]
       10 GETTABLEKS                       R11 R7 K4 ["ClassName"]
       12 SETTABLEKS                       R11 R10 K1 ["className"]
       14 NAMECALL                         R11 R7 K5 ["GetFullName"]
       16 CALL                             R11 1 1
       17 SETTABLEKS                       R11 R10 K2 ["path"]
       19 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       21 MOVE                             R9 R2
       22 GETIMPORT                        R8 K8 [table.insert]
       24 CALL                             R8 2 0
       25 FORGLOOP                         R3 2 ; [-17]
       27 DUPTABLE                         R3 K12 [{"immediateChildren", "totalDescendants", "childrenCount"}]
       28 SETTABLEKS                       R2 R3 K9 ["immediateChildren"]
       30 NAMECALL                         R5 R0 K13 ["GetDescendants"]
       32 CALL                             R5 1 1
       33 LENGTH                           R4 R5
       34 SETTABLEKS                       R4 R3 K10 ["totalDescendants"]
       36 LENGTH                           R4 R1
       37 SETTABLEKS                       R4 R3 K11 ["childrenCount"]
       39 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getValueRepresentation"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETTABLEKS                       R2 R0 K2 ["GetAttributes"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 2
        6 JUMPIFNOT                        R1 ; [+6]
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETIMPORT                        R3 K4 [next]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 JUMPIF                           R3 ; [+2]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 NEWTABLE                         R3 0 0
       17 GETIMPORT                        R4 K6 [pairs]
       19 MOVE                             R5 R2
       20 CALL                             R4 1 3
       21 FORGPREP_NEXT                    R4
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K7 ["getValueRepresentation"]
       25 MOVE                             R10 R8
       26 GETUPVAL                         R11 1
       27 GETUPVAL                         R12 2
       28 CALL                             R9 3 1
       29 SETTABLE                         R9 R3 R7
       30 FORGLOOP                         R4 2 ; [-9]
       32 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getValueRepresentation"]
        3 MOVE                             R4 R1
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 CALL                             R3 3 1
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R4 K2 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K3 ["CFrame"] ; [+14]
       14 MOVE                             R5 R0
       15 LOADK                            R6 K4 [".Position"]
       16 CONCAT                           R4 R5 R6
       17 GETTABLEKS                       R5 R3 K5 ["Position"]
       19 SETTABLE                         R5 R2 R4
       20 MOVE                             R5 R0
       21 LOADK                            R6 K6 [".Rotation"]
       22 CONCAT                           R4 R5 R6
       23 GETTABLEKS                       R5 R3 K7 ["Rotation"]
       25 SETTABLE                         R5 R2 R4
       26 RETURN                           R0 0
       27 SETTABLE                         R3 R2 R0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetPropertyNames"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 NEWTABLE                         R1 0 0
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        7 GETIMPORT                        R2 K2 [pcall]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R1
       12 CALL                             R2 1 2
       13 JUMPIFNOT                        R2 ; [+1]
       14 JUMPIF                           R3 ; [+3]
       15 NEWTABLE                         R4 0 0
       17 RETURN                           R4 1
       18 NEWTABLE                         R4 0 0
       20 MOVE                             R5 R3
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 FORGPREP                         R5
       24 GETUPVAL                         R11 1
       25 GETTABLE                         R10 R11 R9
       26 JUMPIF                           R10 ; [+37]
       27 GETIMPORT                        R10 K2 [pcall]
       29 NEWCLOSURE                       R11 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R9
       32 CALL                             R10 1 2
       33 JUMPIFNOT                        R10 ; [+30]
       34 JUMPIFEQKNIL                     R11 ; [+29]
       36 GETUPVAL                         R12 2
       37 GETTABLEKS                       R12 R12 K3 ["getValueRepresentation"]
       39 MOVE                             R13 R11
       40 GETUPVAL                         R14 3
       41 GETUPVAL                         R15 4
       42 CALL                             R12 3 1
       43 FASTCALL1                        TYPEOF R11 ; [+3]
       44 MOVE                             R14 R11
       45 GETIMPORT                        R13 K5 [typeof]
       47 CALL                             R13 1 1
       48 JUMPIFNOTEQKS                    R13 K6 ["CFrame"] ; [+14]
       50 MOVE                             R14 R9
       51 LOADK                            R15 K7 [".Position"]
       52 CONCAT                           R13 R14 R15
       53 GETTABLEKS                       R14 R12 K8 ["Position"]
       55 SETTABLE                         R14 R4 R13
       56 MOVE                             R14 R9
       57 LOADK                            R15 K9 [".Rotation"]
       58 CONCAT                           R13 R14 R15
       59 GETTABLEKS                       R14 R12 K10 ["Rotation"]
       61 SETTABLE                         R14 R4 R13
       62 JUMP                             ; [+1]
       63 SETTABLE                         R12 R4 R9
       64 FORGLOOP                         R5 2 ; [-41]
       66 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["UniqueId"]
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R1
        5 CAPTURE                          VAL R0
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+1]
        8 LOADNIL                          R1
        9 DUPTABLE                         R3 K8 [{"name", "className", "path", "uniqueId", "properties", "children"}]
       10 GETTABLEKS                       R4 R0 K9 ["Name"]
       12 SETTABLEKS                       R4 R3 K2 ["name"]
       14 GETTABLEKS                       R4 R0 K10 ["ClassName"]
       16 SETTABLEKS                       R4 R3 K3 ["className"]
       18 NAMECALL                         R4 R0 K11 ["GetFullName"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K4 ["path"]
       23 SETTABLEKS                       R1 R3 K5 ["uniqueId"]
       25 GETUPVAL                         R4 0
       26 MOVE                             R5 R0
       27 CALL                             R4 1 1
       28 SETTABLEKS                       R4 R3 K6 ["properties"]
       30 GETUPVAL                         R4 1
       31 MOVE                             R5 R0
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K7 ["children"]
       35 GETUPVAL                         R4 2
       36 MOVE                             R5 R0
       37 CALL                             R4 1 1
       38 JUMPIFNOT                        R4 ; [+2]
       39 SETTABLEKS                       R4 R3 K12 ["attributes"]
       41 CLOSEUPVALS                      R1
       42 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+11]
        7 LOADK                            R4 K2 ["Error encoding JSON: %*"]
        8 FASTCALL1                        TOSTRING R2 ; [+3]
        9 MOVE                             R7 R2
       10 GETIMPORT                        R6 K4 [tostring]
       12 CALL                             R6 1 1
       13 NAMECALL                         R4 R4 K5 ["format"]
       15 CALL                             R4 2 1
       16 MOVE                             R3 R4
       17 RETURN                           R3 1
       18 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R1 R0 K0 ["lower"]
        3 CALL                             R1 1 1
        4 LOADN                            R3 1
        5 LOADN                            R4 5
        6 NAMECALL                         R1 R1 K1 ["sub"]
        8 CALL                             R1 3 1
        9 JUMPIFNOTEQKS                    R1 K2 ["game."] ; [+6]
       11 LOADN                            R3 6
       12 NAMECALL                         R1 R0 K1 ["sub"]
       14 CALL                             R1 2 1
       15 MOVE                             R0 R1
       16 NEWTABLE                         R1 0 1
       18 GETIMPORT                        R2 K4 [game]
       20 SETLIST                          R1 R2 1 [1]
       22 LOADK                            R4 K5 ["."]
       23 NAMECALL                         R2 R0 K6 ["split"]
       25 CALL                             R2 2 3
       26 FORGPREP                         R2
       27 NEWTABLE                         R7 0 0
       29 MOVE                             R8 R1
       30 LOADNIL                          R9
       31 LOADNIL                          R10
       32 FORGPREP                         R8
       33 NAMECALL                         R13 R12 K7 ["GetChildren"]
       35 CALL                             R13 1 3
       36 FORGPREP                         R13
       37 GETTABLEKS                       R18 R17 K8 ["Name"]
       39 NAMECALL                         R18 R18 K0 ["lower"]
       41 CALL                             R18 1 1
       42 NAMECALL                         R19 R6 K0 ["lower"]
       44 CALL                             R19 1 1
       45 JUMPIFNOTEQ                      R18 R19 ; [+8]
       47 FASTCALL2                        TABLE_INSERT R7 R17 ; [+5]
       49 MOVE                             R19 R7
       50 MOVE                             R20 R17
       51 GETIMPORT                        R18 K11 [table.insert]
       53 CALL                             R18 2 0
       54 FORGLOOP                         R13 2 ; [-18]
       56 FORGLOOP                         R8 2 ; [-24]
       58 MOVE                             R1 R7
       59 LENGTH                           R8 R1
       60 JUMPIFEQKN                       R8 K12 [0] ; [+3]
       62 FORGLOOP                         R2 2 ; [-36]
       64 RETURN                           R1 1

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+5]
        3 NEWTABLE                         R1 0 0
        5 LOADK                            R2 K1 ["Error: Path cannot be empty"]
        6 RETURN                           R1 2
        7 GETIMPORT                        R1 K3 [pcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+4]
       13 JUMPIFNOT                        R2 ; [+3]
       14 MOVE                             R3 R2
       15 LOADNIL                          R4
       16 RETURN                           R3 2
       17 NEWTABLE                         R3 0 0
       19 LOADK                            R5 K4 ["Error: Could not find instances at path '%*'"]
       20 MOVE                             R7 R0
       21 NAMECALL                         R5 R5 K5 ["format"]
       23 CALL                             R5 2 1
       24 MOVE                             R4 R5
       25 RETURN                           R3 2

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["path"]
        3 CALL                             R1 1 2
        4 JUMPIFNOT                        R2 ; [+4]
        5 DUPTABLE                         R3 K2 [{"text"}]
        6 SETTABLEKS                       R2 R3 K1 ["text"]
        8 RETURN                           R3 1
        9 LENGTH                           R3 R1
       10 JUMPIFNOTEQKN                    R3 K3 [0] ; [+12]
       12 DUPTABLE                         R3 K2 [{"text"}]
       13 LOADK                            R5 K4 ["Error: Could not find any instances at path '%*'"]
       14 GETTABLEKS                       R7 R0 K0 ["path"]
       16 NAMECALL                         R5 R5 K5 ["format"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 SETTABLEKS                       R4 R3 K1 ["text"]
       22 RETURN                           R3 1
       23 GETTABLEN                        R3 R1 1
       24 GETTABLEKS                       R3 R3 K6 ["Name"]
       26 LENGTH                           R4 R1
       27 JUMPIFNOTEQKN                    R4 K7 [1] ; [+29]
       29 GETUPVAL                         R4 1
       30 GETTABLEN                        R5 R1 1
       31 CALL                             R4 1 1
       32 DUPTABLE                         R5 K9 [{"text", "instanceName"}]
       33 GETIMPORT                        R7 K11 [pcall]
       35 NEWCLOSURE                       R8 P0
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R4
       38 CALL                             R7 1 2
       39 JUMPIF                           R7 ; [+11]
       40 LOADK                            R9 K12 ["Error encoding JSON: %*"]
       41 FASTCALL1                        TOSTRING R8 ; [+3]
       42 MOVE                             R12 R8
       43 GETIMPORT                        R11 K14 [tostring]
       45 CALL                             R11 1 1
       46 NAMECALL                         R9 R9 K5 ["format"]
       48 CALL                             R9 2 1
       49 MOVE                             R6 R9
       50 JUMP                             ; [+1]
       51 MOVE                             R6 R8
       52 SETTABLEKS                       R6 R5 K1 ["text"]
       54 SETTABLEKS                       R3 R5 K8 ["instanceName"]
       56 RETURN                           R5 1
       57 LENGTH                           R4 R1
       58 NEWTABLE                         R5 0 0
       60 LOADN                            R8 1
       61 GETUPVAL                         R11 3
       62 FASTCALL2                        MATH_MIN R4 R11 ; [+4]
       64 MOVE                             R10 R4
       65 GETIMPORT                        R9 K17 [math.min]
       67 CALL                             R9 2 1
       68 MOVE                             R6 R9
       69 LOADN                            R7 1
       70 FORNPREP                         R6
       71 GETUPVAL                         R11 1
       72 GETTABLE                         R12 R1 R8
       73 CALL                             R11 1 1
       74 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       76 MOVE                             R10 R5
       77 GETIMPORT                        R9 K20 [table.insert]
       79 CALL                             R9 2 0
       80 FORNLOOP                         R6
       81 LOADK                            R7 K21 ["Multiple instances found with path '%*'."]
       82 GETTABLEKS                       R9 R0 K0 ["path"]
       84 NAMECALL                         R7 R7 K5 ["format"]
       86 CALL                             R7 2 1
       87 MOVE                             R6 R7
       88 DUPTABLE                         R7 K27 [{"matches", "count", "totalFound", "note", "warning"}]
       89 SETTABLEKS                       R5 R7 K22 ["matches"]
       91 LENGTH                           R8 R5
       92 SETTABLEKS                       R8 R7 K23 ["count"]
       94 SETTABLEKS                       R4 R7 K24 ["totalFound"]
       96 GETUPVAL                         R9 3
       97 JUMPIFNOTLE                      R4 R9 ; [+9]
       99 LOADK                            R9 K28 ["%* All %* matches are included below."]
      100 MOVE                             R11 R6
      101 MOVE                             R12 R4
      102 NAMECALL                         R9 R9 K5 ["format"]
      104 CALL                             R9 3 1
      105 MOVE                             R8 R9
      106 JUMP                             ; [+1]
      107 MOVE                             R8 R6
      108 SETTABLEKS                       R8 R7 K25 ["note"]
      110 GETUPVAL                         R9 3
      111 JUMPIFNOTLT                      R9 R4 ; [+9]
      113 LOADK                            R9 K29 ["Found %* total matches, but only showing first %* due to output limits. Consider using a more specific path to narrow down results."]
      114 MOVE                             R11 R4
      115 GETUPVAL                         R12 3
      116 NAMECALL                         R9 R9 K5 ["format"]
      118 CALL                             R9 3 1
      119 MOVE                             R8 R9
      120 JUMP                             ; [+1]
      121 LOADNIL                          R8
      122 SETTABLEKS                       R8 R7 K26 ["warning"]
      124 DUPTABLE                         R8 K9 [{"text", "instanceName"}]
      125 GETIMPORT                        R10 K11 [pcall]
      127 NEWCLOSURE                       R11 P0
      128 CAPTURE                          UPVAL U2
      129 CAPTURE                          VAL R7
      130 CALL                             R10 1 2
      131 JUMPIF                           R10 ; [+11]
      132 LOADK                            R12 K12 ["Error encoding JSON: %*"]
      133 FASTCALL1                        TOSTRING R11 ; [+3]
      134 MOVE                             R15 R11
      135 GETIMPORT                        R14 K14 [tostring]
      137 CALL                             R14 1 1
      138 NAMECALL                         R12 R12 K5 ["format"]
      140 CALL                             R12 2 1
      141 MOVE                             R9 R12
      142 JUMP                             ; [+1]
      143 MOVE                             R9 R11
      144 SETTABLEKS                       R9 R8 K1 ["text"]
      146 SETTABLEKS                       R3 R8 K8 ["instanceName"]
      148 RETURN                           R8 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_15:
        0 LOADK                            R3 K0 ["."]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 LENGTH                           R4 R1
        5 GETTABLE                         R3 R1 R4
        6 OR                               R2 R3 R0
        7 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R4 R1 K0 ["text"]
        8 NAMECALL                         R2 R2 K1 ["addText"]
       10 CALL                             R2 2 1
       11 DUPTABLE                         R4 K3 [{"instanceName"}]
       12 GETTABLEKS                       R5 R1 K2 ["instanceName"]
       14 SETTABLEKS                       R5 R4 K2 ["instanceName"]
       16 NAMECALL                         R2 R2 K4 ["setStructuredContent"]
       18 CALL                             R2 2 1
       19 NAMECALL                         R2 R2 K5 ["build"]
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1

PROTO_17:
        0 DUPTABLE                         R0 K3 [{"type", "summary", "noExpand"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K5 ["InspectInstance"]
        8 LOADK                            R4 K6 ["Pending"]
        9 NAMECALL                         R1 R1 K7 ["getText"]
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K1 ["summary"]
       14 LOADB                            R1 1
       15 SETTABLEKS                       R1 R0 K2 ["noExpand"]
       17 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["InspectInstance"]
        2 LOADK                            R4 K1 ["Inspecting"]
        3 DUPTABLE                         R5 K3 [{"path"}]
        4 GETUPVAL                         R6 1
        5 SETTABLEKS                       R6 R5 K2 ["path"]
        7 NAMECALL                         R1 R1 K4 ["getText"]
        9 CALL                             R1 4 1
       10 SETTABLEKS                       R1 R0 K5 ["summary"]
       12 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R0 K1 ["input"]
        2 GETTABLEKS                       R3 R3 K2 ["path"]
        4 ORK                              R2 R3 K0 [""]
        5 LOADK                            R5 K3 ["."]
        6 NAMECALL                         R3 R2 K4 ["split"]
        8 CALL                             R3 2 1
        9 LENGTH                           R5 R3
       10 GETTABLE                         R4 R3 R5
       11 OR                               R1 R4 R2
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["InspectInstance"]
        2 LOADK                            R4 K1 ["Inspected"]
        3 DUPTABLE                         R5 K3 [{"path"}]
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K5 ["instanceName"]
        7 ORK                              R6 R7 K4 [""]
        8 SETTABLEKS                       R6 R5 K2 ["path"]
       10 NAMECALL                         R1 R1 K6 ["getText"]
       12 CALL                             R1 4 1
       13 SETTABLEKS                       R1 R0 K7 ["summary"]
       15 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["InspectInstanceTool_inspect"]
        3 DUPCLOSURE                       R5 K2 [PROTO_14]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 DUPCLOSURE                       R3 K4 [PROTO_15]
        9 NEWCLOSURE                       R4 P2
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K5 ["define"]
       15 CALL                             R5 0 1
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R7 R7 K6 ["InspectInstance"]
       19 NAMECALL                         R5 R5 K7 ["setName"]
       21 CALL                             R5 2 1
       22 LOADK                            R8 K8 ["Inspect a specific Roblox instance to get all its properties, attributes, and children summary.\nReturns detailed information about instances including all readable properties, custom attributes, \nand a comprehensive summary of immediate children and recursive child counts.\nIf multiple instances match the same path, all matches will be returned.\nUse this tool after using GameTree to explore specific instances in detail.\n\nSINGLE MATCH OUTPUT FORMAT:\n{\n  \"name\": \"MyPart\",\n  \"className\": \"Part\",\n  \"path\": \"Workspace.MyPart\",\n  \"uniqueId\": \"1234567890ABCDEF\",\n  \"properties\": {\n    \"Anchored\": true,\n    \"CanCollide\": true,\n    \"CFrame.Position\": \"0, 10, 0\",\n    \"CFrame.Rotation\": \"1, 0, 0, 0, 1, 0, 0, 0, 1\",\n    // ... all other readable properties\n  },\n  \"attributes\": {\n    \"CustomTag\": \"PlayerSpawn\",\n    \"SpawnDelay\": 5,\n    \"IsActive\": true\n  },\n  \"children\": {\n    \"immediateChildren\": [\n      {\n        \"className\": \"Part\",\n        \"path\": \"Workspace.MyPart.ChildPart\"\n      },\n      {\n        \"className\": \"Model\",\n        \"path\": \"Workspace.MyPart.ChildModel\"\n      }\n    ],\n    \"childrenCount\": 2,\n    \"totalDescendants\": 8\n  }\n}\n\nCHILDREN SUMMARY FIELDS:\n- immediateChildren: Array of direct children with className and path only (no name, childCount, or uniqueId)\n- childrenCount: Number of direct children\n- totalDescendants: Total count of all descendants (children, children's children, etc.)\n\nuniqueId is included for the main inspected instance when available. This is a unique identifier for each instance in the DataModel.\n\nMULTIPLE MATCHES OUTPUT FORMAT:\n{\n  \"matches\": [\n    { \n      \"name\": \"MyPart\", \n      \"className\": \"Part\", \n      \"path\": \"Workspace.MyPart\",\n      \"uniqueId\": \"RBX1234567890ABCDEF\",\n      \"properties\": {...}, \n      \"attributes\": {...},\n      \"children\": {...}\n    },\n    { \n      \"name\": \"MyPart\", \n      \"className\": \"MeshPart\", \n      \"path\": \"Workspace.MyPart\",\n      \"uniqueId\": \"RBX9876543210FEDCBA\",\n      \"properties\": {...}, \n      \"attributes\": {...},\n      \"children\": {...}\n    }\n  ],\n  \"count\": 2,\n  \"totalFound\": 2,\n  \"note\": \"Multiple instances found with path 'Workspace.MyPart'. All 2 matches are included below.\"\n}\n\nWHEN TOO MANY MATCHES (>"]
       23 GETUPVAL                         R9 4
       24 LOADK                            R10 K9 ["):\n{\n  \"matches\": [ /* first "]
       25 GETUPVAL                         R11 4
       26 LOADK                            R12 K10 [" matches with full details */ ],\n  \"count\": "]
       27 GETUPVAL                         R13 4
       28 LOADK                            R14 K11 [",\n  \"totalFound\": 45,\n  \"note\": \"Multiple instances found with path 'Workspace.Part'.\",\n  \"warning\": \"Found 45 total matches, but only showing first "]
       29 GETUPVAL                         R15 4
       30 LOADK                            R16 K12 [" due to output limits. Consider using a more specific path to narrow down results.\"\n}\n\nPATH SPECIFICATION:\n- Use dot notation: \"Workspace.Model.Part\"\n- Can include or omit \"game.\" prefix\n- Path must match instance hierarchy\n- If multiple instances have the same name at the same level, all will be returned\n- Maximum of "]
       31 GETUPVAL                         R17 4
       32 LOADK                            R18 K13 [" matches will be returned (with warning if more exist)\n\nEXAMPLES:\n- Inspect with children: InspectInstance(path: \"Workspace.Baseplate\")\n- Multiple matches: InspectInstance(path: \"Workspace.Part\") → Returns up to "]
       33 GETUPVAL                         R19 4
       34 LOADK                            R20 K14 [" Parts with children summary\n- Case-insensitive: InspectInstance(path: \"workspace.baseplate\")\n- Inspect script: InspectInstance(path: \"ServerScriptService.MainScript\")\n- Inspect GUI: InspectInstance(path: \"StarterGui.ScreenGui.Frame\")\n- With game prefix: InspectInstance(path: \"game.Workspace.Model\")\n\nCHILDREN SUMMARY USE CASES:\n- Understand instance hierarchy structure\n- Count total descendants for performance considerations\n- See immediate children for navigation purposes\n- Identify complex models with many nested children\n- Plan traversal strategies for large hierarchies\n"]
       35 CONCAT                           R7 R8 R20
       36 NAMECALL                         R5 R5 K15 ["setDescription"]
       38 CALL                             R5 2 1
       39 LOADK                            R7 K16 ["path"]
       40 DUPTABLE                         R8 K19 [{"type", "description"}]
       41 LOADK                            R9 K20 ["string"]
       42 SETTABLEKS                       R9 R8 K17 ["type"]
       44 LOADK                            R10 K21 ["Path to the instance(s) to inspect using dot notation (case-insensitive). Returns detailed properties, attributes, and children summary. If multiple instances match, up to %* will be returned with a warning if more exist. Example: 'Workspace.Model.Part' or 'workspace.model.part'"]
       45 GETUPVAL                         R12 4
       46 NAMECALL                         R10 R10 K22 ["format"]
       48 CALL                             R10 2 1
       49 MOVE                             R9 R10
       50 SETTABLEKS                       R9 R8 K18 ["description"]
       52 NAMECALL                         R5 R5 K23 ["addArgument"]
       54 CALL                             R5 3 1
       55 DUPTABLE                         R7 K29 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       56 LOADK                            R8 K30 ["Inspect Instance"]
       57 SETTABLEKS                       R8 R7 K24 ["title"]
       59 LOADB                            R8 1
       60 SETTABLEKS                       R8 R7 K25 ["readOnlyHint"]
       62 LOADB                            R8 0
       63 SETTABLEKS                       R8 R7 K26 ["destructiveHint"]
       65 LOADB                            R8 1
       66 SETTABLEKS                       R8 R7 K27 ["idempotentHint"]
       68 LOADB                            R8 0
       69 SETTABLEKS                       R8 R7 K28 ["openWorldHint"]
       71 NAMECALL                         R5 R5 K31 ["setAnnotations"]
       73 CALL                             R5 2 1
       74 MOVE                             R7 R4
       75 NAMECALL                         R5 R5 K32 ["setHandler"]
       77 CALL                             R5 2 1
       78 NAMECALL                         R5 R5 K33 ["build"]
       80 CALL                             R5 1 1
       81 DUPTABLE                         R6 K37 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       82 DUPCLOSURE                       R7 K38 [PROTO_17]
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          UPVAL U6
       85 SETTABLEKS                       R7 R6 K34 ["transformInitialContent"]
       87 DUPCLOSURE                       R7 K39 [PROTO_19]
       88 CAPTURE                          UPVAL U6
       89 SETTABLEKS                       R7 R6 K35 ["getTransformPreExecuteFn"]
       91 DUPCLOSURE                       R7 K40 [PROTO_21]
       92 CAPTURE                          UPVAL U6
       93 SETTABLEKS                       R7 R6 K36 ["getTransformResultFn"]
       95 DUPTABLE                         R7 K44 [{"definition", "contentWidgets", "streamTransform"}]
       96 SETTABLEKS                       R5 R7 K41 ["definition"]
       98 NEWTABLE                         R8 0 1
      100 GETUPVAL                         R9 5
      101 SETLIST                          R8 R9 1 [1]
      103 SETTABLEKS                       R8 R7 K42 ["contentWidgets"]
      105 SETTABLEKS                       R6 R7 K43 ["streamTransform"]
      107 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["ReflectionService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Components"]
       30 GETTABLEKS                       R5 R5 K14 ["ContentWidgets"]
       32 GETTABLEKS                       R5 R5 K15 ["SummarizedContentWidget"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R0 K16 ["Tools"]
       39 GETTABLEKS                       R6 R6 K17 ["ToolTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K18 ["Util"]
       46 GETTABLEKS                       R7 R7 K19 ["ToolUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K20 ["Resources"]
       53 GETTABLEKS                       R8 R8 K21 ["Localization"]
       55 GETTABLEKS                       R8 R8 K22 ["Translator"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R3 K18 ["Util"]
       60 GETTABLEKS                       R8 R8 K23 ["ToolBuilder"]
       62 GETTABLEKS                       R9 R3 K18 ["Util"]
       64 GETTABLEKS                       R9 R9 K24 ["ToolResult"]
       66 GETTABLEKS                       R10 R5 K25 ["ToolNames"]
       68 GETIMPORT                        R11 K10 [require]
       70 GETTABLEKS                       R12 R0 K26 ["Flags"]
       72 GETTABLEKS                       R12 R12 K27 ["FIntInspectInstanceMaxJsonLength"]
       74 CALL                             R11 1 1
       75 CALL                             R11 0 1
       76 GETIMPORT                        R12 K10 [require]
       78 GETTABLEKS                       R13 R0 K26 ["Flags"]
       80 GETTABLEKS                       R13 R13 K28 ["FIntInspectInstanceMaxMatches"]
       82 CALL                             R12 1 1
       83 CALL                             R12 0 1
       84 GETIMPORT                        R13 K10 [require]
       86 GETTABLEKS                       R14 R0 K26 ["Flags"]
       88 GETTABLEKS                       R14 R14 K29 ["FIntInspectInstanceMaxStringLength"]
       90 CALL                             R13 1 1
       91 CALL                             R13 0 1
       92 DUPCLOSURE                       R14 K30 [PROTO_0]
       93 DUPCLOSURE                       R15 K31 [PROTO_1]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R11
       97 DUPCLOSURE                       R16 K32 [PROTO_2]
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R11
      101 DUPTABLE                         R17 K36 [{"Parent", "ClassName", "Name", "DataModel"}]
      102 LOADB                            R18 1
      103 SETTABLEKS                       R18 R17 K11 ["Parent"]
      105 LOADB                            R18 1
      106 SETTABLEKS                       R18 R17 K33 ["ClassName"]
      108 LOADB                            R18 1
      109 SETTABLEKS                       R18 R17 K34 ["Name"]
      111 LOADB                            R18 1
      112 SETTABLEKS                       R18 R17 K35 ["DataModel"]
      114 DUPCLOSURE                       R18 K37 [PROTO_3]
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R11
      118 DUPCLOSURE                       R19 K38 [PROTO_6]
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R11
      124 DUPCLOSURE                       R20 K39 [PROTO_8]
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R16
      128 DUPCLOSURE                       R21 K40 [PROTO_10]
      129 CAPTURE                          VAL R1
      130 DUPCLOSURE                       R22 K41 [PROTO_12]
      131 DUPCLOSURE                       R23 K42 [PROTO_13]
      132 CAPTURE                          VAL R22
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R12
      136 DUPCLOSURE                       R24 K43 [PROTO_22]
      137 CAPTURE                          VAL R23
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R7
      144 RETURN                           R24 1
