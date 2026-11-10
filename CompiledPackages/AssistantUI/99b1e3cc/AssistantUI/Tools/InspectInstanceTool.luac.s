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
        6 JUMPIF                           R1 ; [+10]
        7 LOADK                            R3 K2 ["Error encoding JSON: %*"]
        8 FASTCALL1                        TOSTRING R2 ; [+3]
        9 MOVE                             R6 R2
       10 GETIMPORT                        R5 K4 [tostring]
       12 CALL                             R5 1 1
       13 NAMECALL                         R3 R3 K5 ["format"]
       15 CALL                             R3 2 1
       16 RETURN                           R3 1
       17 RETURN                           R2 1

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
       19 LOADK                            R4 K4 ["Error: Could not find instances at path '%*'"]
       20 MOVE                             R6 R0
       21 NAMECALL                         R4 R4 K5 ["format"]
       23 CALL                             R4 2 1
       24 RETURN                           R3 2

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["path"]
        3 CALL                             R1 1 2
        4 JUMPIFNOT                        R2 ; [+4]
        5 DUPTABLE                         R3 K2 [{"text"}]
        6 SETTABLEKS                       R2 R3 K1 ["text"]
        8 RETURN                           R3 1
        9 LENGTH                           R3 R1
       10 JUMPIFNOTEQKN                    R3 K3 [0] ; [+11]
       12 DUPTABLE                         R3 K2 [{"text"}]
       13 LOADK                            R4 K4 ["Error: Could not find any instances at path '%*'"]
       14 GETTABLEKS                       R6 R0 K0 ["path"]
       16 NAMECALL                         R4 R4 K5 ["format"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K1 ["text"]
       21 RETURN                           R3 1
       22 GETTABLEN                        R3 R1 1
       23 GETTABLEKS                       R3 R3 K6 ["Name"]
       25 LENGTH                           R4 R1
       26 JUMPIFNOTEQKN                    R4 K7 [1] ; [+29]
       28 GETUPVAL                         R4 1
       29 GETTABLEN                        R5 R1 1
       30 CALL                             R4 1 1
       31 DUPTABLE                         R5 K9 [{"text", "instanceName"}]
       32 GETIMPORT                        R7 K11 [pcall]
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R4
       37 CALL                             R7 1 2
       38 JUMPIF                           R7 ; [+11]
       39 LOADK                            R9 K12 ["Error encoding JSON: %*"]
       40 FASTCALL1                        TOSTRING R8 ; [+3]
       41 MOVE                             R12 R8
       42 GETIMPORT                        R11 K14 [tostring]
       44 CALL                             R11 1 1
       45 NAMECALL                         R9 R9 K5 ["format"]
       47 CALL                             R9 2 1
       48 MOVE                             R6 R9
       49 JUMP                             ; [+1]
       50 MOVE                             R6 R8
       51 SETTABLEKS                       R6 R5 K1 ["text"]
       53 SETTABLEKS                       R3 R5 K8 ["instanceName"]
       55 RETURN                           R5 1
       56 LENGTH                           R4 R1
       57 NEWTABLE                         R5 0 0
       59 LOADN                            R8 1
       60 GETUPVAL                         R11 3
       61 FASTCALL2                        MATH_MIN R4 R11 ; [+4]
       63 MOVE                             R10 R4
       64 GETIMPORT                        R9 K17 [math.min]
       66 CALL                             R9 2 1
       67 MOVE                             R6 R9
       68 LOADN                            R7 1
       69 FORNPREP                         R6
       70 GETUPVAL                         R11 1
       71 GETTABLE                         R12 R1 R8
       72 CALL                             R11 1 1
       73 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       75 MOVE                             R10 R5
       76 GETIMPORT                        R9 K20 [table.insert]
       78 CALL                             R9 2 0
       79 FORNLOOP                         R6
       80 LOADK                            R6 K21 ["Multiple instances found with path '%*'."]
       81 GETTABLEKS                       R8 R0 K0 ["path"]
       83 NAMECALL                         R6 R6 K5 ["format"]
       85 CALL                             R6 2 1
       86 DUPTABLE                         R7 K27 [{"matches", "count", "totalFound", "note", "warning"}]
       87 SETTABLEKS                       R5 R7 K22 ["matches"]
       89 LENGTH                           R8 R5
       90 SETTABLEKS                       R8 R7 K23 ["count"]
       92 SETTABLEKS                       R4 R7 K24 ["totalFound"]
       94 GETUPVAL                         R9 3
       95 JUMPIFNOTLE                      R4 R9 ; [+8]
       97 LOADK                            R8 K28 ["%* All %* matches are included below."]
       98 MOVE                             R10 R6
       99 MOVE                             R11 R4
      100 NAMECALL                         R8 R8 K5 ["format"]
      102 CALL                             R8 3 1
      103 JUMP                             ; [+1]
      104 MOVE                             R8 R6
      105 SETTABLEKS                       R8 R7 K25 ["note"]
      107 GETUPVAL                         R9 3
      108 JUMPIFNOTLT                      R9 R4 ; [+8]
      110 LOADK                            R8 K29 ["Found %* total matches, but only showing first %* due to output limits. Consider using a more specific path to narrow down results."]
      111 MOVE                             R10 R4
      112 GETUPVAL                         R11 3
      113 NAMECALL                         R8 R8 K5 ["format"]
      115 CALL                             R8 3 1
      116 JUMP                             ; [+1]
      117 LOADNIL                          R8
      118 SETTABLEKS                       R8 R7 K26 ["warning"]
      120 DUPTABLE                         R8 K9 [{"text", "instanceName"}]
      121 GETIMPORT                        R10 K11 [pcall]
      123 NEWCLOSURE                       R11 P0
      124 CAPTURE                          UPVAL U2
      125 CAPTURE                          VAL R7
      126 CALL                             R10 1 2
      127 JUMPIF                           R10 ; [+11]
      128 LOADK                            R12 K12 ["Error encoding JSON: %*"]
      129 FASTCALL1                        TOSTRING R11 ; [+3]
      130 MOVE                             R15 R11
      131 GETIMPORT                        R14 K14 [tostring]
      133 CALL                             R14 1 1
      134 NAMECALL                         R12 R12 K5 ["format"]
      136 CALL                             R12 2 1
      137 MOVE                             R9 R12
      138 JUMP                             ; [+1]
      139 MOVE                             R9 R11
      140 SETTABLEKS                       R9 R8 K1 ["text"]
      142 SETTABLEKS                       R3 R8 K8 ["instanceName"]
      144 RETURN                           R8 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_17:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseNewDMNetworking"]
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["FOCUSED"]
        9 MOVE                             R5 R0
       10 NAMECALL                         R2 R2 K2 ["InvokeAsync"]
       12 CALL                             R2 3 1
       13 MOVE                             R1 R2
       14 JUMP                             ; [+5]
       15 GETUPVAL                         R2 3
       16 LOADNIL                          R3
       17 MOVE                             R4 R0
       18 CALL                             R2 2 1
       19 MOVE                             R1 R2
       20 GETUPVAL                         R2 4
       21 CALL                             R2 0 1
       22 GETTABLEKS                       R4 R1 K3 ["text"]
       24 NAMECALL                         R2 R2 K4 ["addText"]
       26 CALL                             R2 2 1
       27 DUPTABLE                         R4 K6 [{"instanceName"}]
       28 GETTABLEKS                       R5 R1 K5 ["instanceName"]
       30 SETTABLEKS                       R5 R4 K5 ["instanceName"]
       32 NAMECALL                         R2 R2 K7 ["setStructuredContent"]
       34 CALL                             R2 2 1
       35 NAMECALL                         R2 R2 K8 ["build"]
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantUseNewDMNetworking"]
        9 JUMPIFNOT                        R5 ; [+35]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["invoke"]
       13 MOVE                             R6 R1
       14 LOADK                            R7 K4 ["InspectInstanceTool.inspect"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K5 ["new"]
       20 CALL                             R5 0 1
       21 NAMECALL                         R6 R1 K6 ["GetIdentity"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K7 ["Identity"]
       27 GETTABLEKS                       R7 R7 K8 ["Standalone"]
       29 JUMPIFEQ                         R6 R7 ; [+9]
       31 DUPCLOSURE                       R10 K9 [PROTO_14]
       32 CAPTURE                          UPVAL U4
       33 NAMECALL                         R8 R4 K10 ["Connect"]
       35 CALL                             R8 2 -1
       36 NAMECALL                         R6 R5 K11 ["Add"]
       38 CALL                             R6 -1 0
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R5
       41 NAMECALL                         R6 R2 K12 ["Once"]
       43 CALL                             R6 2 0
       44 JUMP                             ; [+9]
       45 GETTABLEKS                       R5 R0 K13 ["networkingOLD"]
       47 LOADK                            R8 K14 ["InspectInstanceTool_inspect"]
       48 DUPCLOSURE                       R9 K15 [PROTO_16]
       49 CAPTURE                          UPVAL U4
       50 NAMECALL                         R6 R5 K16 ["OnHostInvokeAsync"]
       52 CALL                             R6 3 1
       53 MOVE                             R3 R6
       54 NEWCLOSURE                       R5 P3
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          REF R4
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          REF R3
       59 CAPTURE                          UPVAL U5
       60 GETUPVAL                         R6 6
       61 GETTABLEKS                       R6 R6 K17 ["define"]
       63 CALL                             R6 0 1
       64 GETUPVAL                         R8 7
       65 GETTABLEKS                       R8 R8 K18 ["InspectInstance"]
       67 NAMECALL                         R6 R6 K19 ["setName"]
       69 CALL                             R6 2 1
       70 LOADK                            R9 K20 ["Inspect a specific Roblox instance to get all its properties, attributes, and children summary.\nReturns detailed information about instances including all readable properties, custom attributes, \nand a comprehensive summary of immediate children and recursive child counts.\nIf multiple instances match the same path, all matches will be returned.\nUse this tool after using GameTree to explore specific instances in detail.\n\nSINGLE MATCH OUTPUT FORMAT:\n{\n  \"name\": \"MyPart\",\n  \"className\": \"Part\",\n  \"path\": \"Workspace.MyPart\",\n  \"uniqueId\": \"1234567890ABCDEF\",\n  \"properties\": {\n    \"Anchored\": true,\n    \"CanCollide\": true,\n    \"CFrame.Position\": \"0, 10, 0\",\n    \"CFrame.Rotation\": \"1, 0, 0, 0, 1, 0, 0, 0, 1\",\n    // ... all other readable properties\n  },\n  \"attributes\": {\n    \"CustomTag\": \"PlayerSpawn\",\n    \"SpawnDelay\": 5,\n    \"IsActive\": true\n  },\n  \"children\": {\n    \"immediateChildren\": [\n      {\n        \"className\": \"Part\",\n        \"path\": \"Workspace.MyPart.ChildPart\"\n      },\n      {\n        \"className\": \"Model\",\n        \"path\": \"Workspace.MyPart.ChildModel\"\n      }\n    ],\n    \"childrenCount\": 2,\n    \"totalDescendants\": 8\n  }\n}\n\nCHILDREN SUMMARY FIELDS:\n- immediateChildren: Array of direct children with className and path only (no name, childCount, or uniqueId)\n- childrenCount: Number of direct children\n- totalDescendants: Total count of all descendants (children, children's children, etc.)\n\nuniqueId is included for the main inspected instance when available. This is a unique identifier for each instance in the DataModel.\n\nMULTIPLE MATCHES OUTPUT FORMAT:\n{\n  \"matches\": [\n    { \n      \"name\": \"MyPart\", \n      \"className\": \"Part\", \n      \"path\": \"Workspace.MyPart\",\n      \"uniqueId\": \"RBX1234567890ABCDEF\",\n      \"properties\": {...}, \n      \"attributes\": {...},\n      \"children\": {...}\n    },\n    { \n      \"name\": \"MyPart\", \n      \"className\": \"MeshPart\", \n      \"path\": \"Workspace.MyPart\",\n      \"uniqueId\": \"RBX9876543210FEDCBA\",\n      \"properties\": {...}, \n      \"attributes\": {...},\n      \"children\": {...}\n    }\n  ],\n  \"count\": 2,\n  \"totalFound\": 2,\n  \"note\": \"Multiple instances found with path 'Workspace.MyPart'. All 2 matches are included below.\"\n}\n\nWHEN TOO MANY MATCHES (>"]
       71 GETUPVAL                         R10 8
       72 LOADK                            R11 K21 ["):\n{\n  \"matches\": [ /* first "]
       73 GETUPVAL                         R12 8
       74 LOADK                            R13 K22 [" matches with full details */ ],\n  \"count\": "]
       75 GETUPVAL                         R14 8
       76 LOADK                            R15 K23 [",\n  \"totalFound\": 45,\n  \"note\": \"Multiple instances found with path 'Workspace.Part'.\",\n  \"warning\": \"Found 45 total matches, but only showing first "]
       77 GETUPVAL                         R16 8
       78 LOADK                            R17 K24 [" due to output limits. Consider using a more specific path to narrow down results.\"\n}\n\nPATH SPECIFICATION:\n- Use dot notation: \"Workspace.Model.Part\"\n- Can include or omit \"game.\" prefix\n- Path must match instance hierarchy\n- If multiple instances have the same name at the same level, all will be returned\n- Maximum of "]
       79 GETUPVAL                         R18 8
       80 LOADK                            R19 K25 [" matches will be returned (with warning if more exist)\n\nEXAMPLES:\n- Inspect with children: InspectInstance(path: \"Workspace.Baseplate\")\n- Multiple matches: InspectInstance(path: \"Workspace.Part\") → Returns up to "]
       81 GETUPVAL                         R20 8
       82 LOADK                            R21 K26 [" Parts with children summary\n- Case-insensitive: InspectInstance(path: \"workspace.baseplate\")\n- Inspect script: InspectInstance(path: \"ServerScriptService.MainScript\")\n- Inspect GUI: InspectInstance(path: \"StarterGui.ScreenGui.Frame\")\n- With game prefix: InspectInstance(path: \"game.Workspace.Model\")\n\nCHILDREN SUMMARY USE CASES:\n- Understand instance hierarchy structure\n- Count total descendants for performance considerations\n- See immediate children for navigation purposes\n- Identify complex models with many nested children\n- Plan traversal strategies for large hierarchies\n"]
       83 CONCAT                           R8 R9 R21
       84 NAMECALL                         R6 R6 K27 ["setDescription"]
       86 CALL                             R6 2 1
       87 LOADK                            R8 K28 ["path"]
       88 DUPTABLE                         R9 K32 [{["type"] = "string", ["description"]}]
       89 LOADK                            R10 K33 ["Path to the instance(s) to inspect using dot notation (case-insensitive). Returns detailed properties, attributes, and children summary. If multiple instances match, up to %* will be returned with a warning if more exist. Example: 'Workspace.Model.Part' or 'workspace.model.part'"]
       90 GETUPVAL                         R12 8
       91 NAMECALL                         R10 R10 K34 ["format"]
       93 CALL                             R10 2 1
       94 SETTABLEKS                       R10 R9 K31 ["description"]
       96 NAMECALL                         R6 R6 K35 ["addArgument"]
       98 CALL                             R6 3 1
       99 LOADK                            R8 K36 ["Inspect Instance"]
      100 NAMECALL                         R6 R6 K37 ["setTitle"]
      102 CALL                             R6 2 1
      103 DUPTABLE                         R8 K45 [{["title"] = "Inspect Instance", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      104 NAMECALL                         R6 R6 K46 ["setAnnotations"]
      106 CALL                             R6 2 1
      107 MOVE                             R8 R5
      108 NAMECALL                         R6 R6 K47 ["setHandler"]
      110 CALL                             R6 2 1
      111 NAMECALL                         R6 R6 K48 ["build"]
      113 CALL                             R6 1 1
      114 DUPTABLE                         R7 K50 [{"definition"}]
      115 SETTABLEKS                       R6 R7 K49 ["definition"]
      117 CLOSEUPVALS                      R3
      118 RETURN                           R7 1

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
       19 GETTABLEKS                       R3 R0 K9 ["Parent"]
       21 GETIMPORT                        R4 K11 [require]
       23 GETTABLEKS                       R5 R3 K12 ["Bin"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K11 [require]
       28 GETTABLEKS                       R6 R3 K13 ["DMNetworking"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K11 [require]
       33 GETTABLEKS                       R7 R3 K14 ["ModelContextProtocol"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K11 [require]
       38 GETTABLEKS                       R8 R0 K15 ["Flags"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K11 [require]
       43 GETTABLEKS                       R9 R0 K16 ["Tools"]
       45 GETTABLEKS                       R9 R9 K17 ["ToolTypes"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K11 [require]
       50 GETTABLEKS                       R10 R0 K18 ["Util"]
       52 GETTABLEKS                       R10 R10 K19 ["ToolUtils"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R5 K20 ["Remote"]
       57 GETTABLEKS                       R11 R6 K18 ["Util"]
       59 GETTABLEKS                       R11 R11 K21 ["ToolBuilder"]
       61 GETTABLEKS                       R12 R6 K18 ["Util"]
       63 GETTABLEKS                       R12 R12 K22 ["ToolResult"]
       65 GETTABLEKS                       R13 R8 K23 ["ToolNames"]
       67 GETTABLEKS                       R14 R7 K24 ["FIntInspectInstanceMaxJsonLength"]
       69 GETTABLEKS                       R15 R7 K25 ["FIntInspectInstanceMaxMatches"]
       71 GETTABLEKS                       R16 R7 K26 ["FIntInspectInstanceMaxStringLength"]
       73 DUPCLOSURE                       R17 K27 [PROTO_0]
       74 DUPCLOSURE                       R18 K28 [PROTO_1]
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R16
       77 CAPTURE                          VAL R14
       78 DUPCLOSURE                       R19 K29 [PROTO_2]
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R16
       81 CAPTURE                          VAL R14
       82 DUPTABLE                         R20 K34 [{["Parent"] = True, ["ClassName"] = True, ["Name"] = True, ["DataModel"] = True}]
       83 DUPCLOSURE                       R21 K35 [PROTO_3]
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R16
       86 CAPTURE                          VAL R14
       87 DUPCLOSURE                       R22 K36 [PROTO_6]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R20
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R14
       93 DUPCLOSURE                       R23 K37 [PROTO_8]
       94 CAPTURE                          VAL R22
       95 CAPTURE                          VAL R17
       96 CAPTURE                          VAL R19
       97 DUPCLOSURE                       R24 K38 [PROTO_10]
       98 CAPTURE                          VAL R1
       99 DUPCLOSURE                       R25 K39 [PROTO_12]
      100 DUPCLOSURE                       R26 K40 [PROTO_13]
      101 CAPTURE                          VAL R25
      102 CAPTURE                          VAL R23
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R15
      105 DUPCLOSURE                       R27 K41 [PROTO_18]
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R26
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R15
      115 RETURN                           R27 1
