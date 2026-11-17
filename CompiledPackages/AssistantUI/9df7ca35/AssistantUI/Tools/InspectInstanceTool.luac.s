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
        0 GETTABLEKS                       R2 R0 K0 ["GetAttributes"]
        2 MOVE                             R3 R0
        3 FASTPCALL                        pcall 2 ; [+2]
        4 GETIMPORT                        R1 K2 [pcall]
        6 CALL                             R1 2 2
        7 JUMPIFNOT                        R1 ; [+6]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETIMPORT                        R3 K4 [next]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 NEWTABLE                         R3 0 0
       18 GETIMPORT                        R4 K6 [pairs]
       20 MOVE                             R5 R2
       21 CALL                             R4 1 3
       22 FORGPREP_NEXT                    R4
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K7 ["getValueRepresentation"]
       26 MOVE                             R10 R8
       27 GETUPVAL                         R11 1
       28 GETUPVAL                         R12 2
       29 CALL                             R9 3 1
       30 SETTABLE                         R9 R3 R7
       31 FORGLOOP                         R4 2 ; [-9]
       33 RETURN                           R3 1

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
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R1
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R2 K2 [pcall]
       13 CALL                             R2 1 2
       14 JUMPIFNOT                        R2 ; [+1]
       15 JUMPIF                           R3 ; [+3]
       16 NEWTABLE                         R4 0 0
       18 RETURN                           R4 1
       19 NEWTABLE                         R4 0 0
       21 MOVE                             R5 R3
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETUPVAL                         R11 1
       26 GETTABLE                         R10 R11 R9
       27 JUMPIF                           R10 ; [+38]
       28 NEWCLOSURE                       R11 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R9
       31 FASTPCALL                        pcall 1 ; [+2]
       32 GETIMPORT                        R10 K2 [pcall]
       34 CALL                             R10 1 2
       35 JUMPIFNOT                        R10 ; [+30]
       36 JUMPIFEQKNIL                     R11 ; [+29]
       38 GETUPVAL                         R12 2
       39 GETTABLEKS                       R12 R12 K3 ["getValueRepresentation"]
       41 MOVE                             R13 R11
       42 GETUPVAL                         R14 3
       43 GETUPVAL                         R15 4
       44 CALL                             R12 3 1
       45 FASTCALL1                        TYPEOF R11 ; [+3]
       46 MOVE                             R14 R11
       47 GETIMPORT                        R13 K5 [typeof]
       49 CALL                             R13 1 1
       50 JUMPIFNOTEQKS                    R13 K6 ["CFrame"] ; [+14]
       52 MOVE                             R14 R9
       53 LOADK                            R15 K7 [".Position"]
       54 CONCAT                           R13 R14 R15
       55 GETTABLEKS                       R14 R12 K8 ["Position"]
       57 SETTABLE                         R14 R4 R13
       58 MOVE                             R14 R9
       59 LOADK                            R15 K9 [".Rotation"]
       60 CONCAT                           R13 R14 R15
       61 GETTABLEKS                       R14 R12 K10 ["Rotation"]
       63 SETTABLE                         R14 R4 R13
       64 JUMP                             ; [+1]
       65 SETTABLE                         R12 R4 R9
       66 FORGLOOP                         R5 2 ; [-42]
       68 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["UniqueId"]
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          VAL R0
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R2 K1 [pcall]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 LOADNIL                          R1
       10 DUPTABLE                         R3 K8 [{"name", "className", "path", "uniqueId", "properties", "children"}]
       11 GETTABLEKS                       R4 R0 K9 ["Name"]
       13 SETTABLEKS                       R4 R3 K2 ["name"]
       15 GETTABLEKS                       R4 R0 K10 ["ClassName"]
       17 SETTABLEKS                       R4 R3 K3 ["className"]
       19 NAMECALL                         R4 R0 K11 ["GetFullName"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R4 R3 K4 ["path"]
       24 SETTABLEKS                       R1 R3 K5 ["uniqueId"]
       26 GETUPVAL                         R4 0
       27 MOVE                             R5 R0
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K6 ["properties"]
       31 GETUPVAL                         R4 1
       32 MOVE                             R5 R0
       33 CALL                             R4 1 1
       34 SETTABLEKS                       R4 R3 K7 ["children"]
       36 GETUPVAL                         R4 2
       37 MOVE                             R5 R0
       38 CALL                             R4 1 1
       39 JUMPIFNOT                        R4 ; [+2]
       40 SETTABLEKS                       R4 R3 K12 ["attributes"]
       42 CLOSEUPVALS                      R1
       43 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_10:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+10]
        8 LOADK                            R3 K2 ["Error encoding JSON: %*"]
        9 FASTCALL1                        TOSTRING R2 ; [+3]
       10 MOVE                             R6 R2
       11 GETIMPORT                        R5 K4 [tostring]
       13 CALL                             R5 1 1
       14 NAMECALL                         R3 R3 K5 ["format"]
       16 CALL                             R3 2 1
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
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 FASTPCALL                        pcall 1 ; [+2]
       10 GETIMPORT                        R1 K3 [pcall]
       12 CALL                             R1 1 2
       13 JUMPIFNOT                        R1 ; [+4]
       14 JUMPIFNOT                        R2 ; [+3]
       15 MOVE                             R3 R2
       16 LOADNIL                          R4
       17 RETURN                           R3 2
       18 NEWTABLE                         R3 0 0
       20 LOADK                            R4 K4 ["Error: Could not find instances at path '%*'"]
       21 MOVE                             R6 R0
       22 NAMECALL                         R4 R4 K5 ["format"]
       24 CALL                             R4 2 1
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
       26 JUMPIFNOTEQKN                    R4 K7 [1] ; [+30]
       28 GETUPVAL                         R4 1
       29 GETTABLEN                        R5 R1 1
       30 CALL                             R4 1 1
       31 DUPTABLE                         R5 K9 [{"text", "instanceName"}]
       32 NEWCLOSURE                       R8 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R4
       35 FASTPCALL                        pcall 1 ; [+2]
       36 GETIMPORT                        R7 K11 [pcall]
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
       81 LOADK                            R6 K21 ["Multiple instances found with path '%*'."]
       82 GETTABLEKS                       R8 R0 K0 ["path"]
       84 NAMECALL                         R6 R6 K5 ["format"]
       86 CALL                             R6 2 1
       87 DUPTABLE                         R7 K27 [{"matches", "count", "totalFound", "note", "warning"}]
       88 SETTABLEKS                       R5 R7 K22 ["matches"]
       90 LENGTH                           R8 R5
       91 SETTABLEKS                       R8 R7 K23 ["count"]
       93 SETTABLEKS                       R4 R7 K24 ["totalFound"]
       95 GETUPVAL                         R9 3
       96 JUMPIFNOTLE                      R4 R9 ; [+8]
       98 LOADK                            R8 K28 ["%* All %* matches are included below."]
       99 MOVE                             R10 R6
      100 MOVE                             R11 R4
      101 NAMECALL                         R8 R8 K5 ["format"]
      103 CALL                             R8 3 1
      104 JUMP                             ; [+1]
      105 MOVE                             R8 R6
      106 SETTABLEKS                       R8 R7 K25 ["note"]
      108 GETUPVAL                         R9 3
      109 JUMPIFNOTLT                      R9 R4 ; [+8]
      111 LOADK                            R8 K29 ["Found %* total matches, but only showing first %* due to output limits. Consider using a more specific path to narrow down results."]
      112 MOVE                             R10 R4
      113 GETUPVAL                         R11 3
      114 NAMECALL                         R8 R8 K5 ["format"]
      116 CALL                             R8 3 1
      117 JUMP                             ; [+1]
      118 LOADNIL                          R8
      119 SETTABLEKS                       R8 R7 K26 ["warning"]
      121 DUPTABLE                         R8 K9 [{"text", "instanceName"}]
      122 NEWCLOSURE                       R11 P0
      123 CAPTURE                          UPVAL U2
      124 CAPTURE                          VAL R7
      125 FASTPCALL                        pcall 1 ; [+2]
      126 GETIMPORT                        R10 K11 [pcall]
      128 CALL                             R10 1 2
      129 JUMPIF                           R10 ; [+11]
      130 LOADK                            R12 K12 ["Error encoding JSON: %*"]
      131 FASTCALL1                        TOSTRING R11 ; [+3]
      132 MOVE                             R15 R11
      133 GETIMPORT                        R14 K14 [tostring]
      135 CALL                             R14 1 1
      136 NAMECALL                         R12 R12 K5 ["format"]
      138 CALL                             R12 2 1
      139 MOVE                             R9 R12
      140 JUMP                             ; [+1]
      141 MOVE                             R9 R11
      142 SETTABLEKS                       R9 R8 K1 ["text"]
      144 SETTABLEKS                       R3 R8 K8 ["instanceName"]
      146 RETURN                           R8 1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["FOCUSED"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R4 R1 K2 ["text"]
       12 NAMECALL                         R2 R2 K3 ["addText"]
       14 CALL                             R2 2 1
       15 DUPTABLE                         R4 K5 [{"instanceName"}]
       16 GETTABLEKS                       R5 R1 K4 ["instanceName"]
       18 SETTABLEKS                       R5 R4 K4 ["instanceName"]
       20 NAMECALL                         R2 R2 K6 ["setStructuredContent"]
       22 CALL                             R2 2 1
       23 NAMECALL                         R2 R2 K7 ["build"]
       25 CALL                             R2 1 -1
       26 RETURN                           R2 -1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["invoke"]
        7 MOVE                             R4 R1
        8 LOADK                            R5 K3 ["InspectInstanceTool.inspect"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["new"]
       13 CALL                             R4 0 1
       14 NAMECALL                         R5 R1 K5 ["GetIdentity"]
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K6 ["Identity"]
       20 GETTABLEKS                       R6 R6 K7 ["Standalone"]
       22 JUMPIFEQ                         R5 R6 ; [+9]
       24 DUPCLOSURE                       R9 K8 [PROTO_14]
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R7 R3 K9 ["Connect"]
       28 CALL                             R7 2 -1
       29 NAMECALL                         R5 R4 K10 ["Add"]
       31 CALL                             R5 -1 0
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R4
       34 NAMECALL                         R5 R2 K11 ["Once"]
       36 CALL                             R5 2 0
       37 NEWCLOSURE                       R5 P2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U4
       41 GETUPVAL                         R6 5
       42 GETTABLEKS                       R6 R6 K12 ["define"]
       44 CALL                             R6 0 1
       45 GETUPVAL                         R8 6
       46 GETTABLEKS                       R8 R8 K13 ["InspectInstance"]
       48 NAMECALL                         R6 R6 K14 ["setName"]
       50 CALL                             R6 2 1
       51 LOADK                            R9 K15 ["Inspect a specific Roblox instance to get all its properties, attributes, and children summary.\nReturns detailed information about instances including all readable properties, custom attributes, \nand a comprehensive summary of immediate children and recursive child counts.\nIf multiple instances match the same path, all matches will be returned.\nUse this tool after using GameTree to explore specific instances in detail.\n\nSINGLE MATCH OUTPUT FORMAT:\n{\n  \"name\": \"MyPart\",\n  \"className\": \"Part\",\n  \"path\": \"Workspace.MyPart\",\n  \"uniqueId\": \"1234567890ABCDEF\",\n  \"properties\": {\n    \"Anchored\": true,\n    \"CanCollide\": true,\n    \"CFrame.Position\": \"0, 10, 0\",\n    \"CFrame.Rotation\": \"1, 0, 0, 0, 1, 0, 0, 0, 1\",\n    // ... all other readable properties\n  },\n  \"attributes\": {\n    \"CustomTag\": \"PlayerSpawn\",\n    \"SpawnDelay\": 5,\n    \"IsActive\": true\n  },\n  \"children\": {\n    \"immediateChildren\": [\n      {\n        \"className\": \"Part\",\n        \"path\": \"Workspace.MyPart.ChildPart\"\n      },\n      {\n        \"className\": \"Model\",\n        \"path\": \"Workspace.MyPart.ChildModel\"\n      }\n    ],\n    \"childrenCount\": 2,\n    \"totalDescendants\": 8\n  }\n}\n\nCHILDREN SUMMARY FIELDS:\n- immediateChildren: Array of direct children with className and path only (no name, childCount, or uniqueId)\n- childrenCount: Number of direct children\n- totalDescendants: Total count of all descendants (children, children's children, etc.)\n\nuniqueId is included for the main inspected instance when available. This is a unique identifier for each instance in the DataModel.\n\nMULTIPLE MATCHES OUTPUT FORMAT:\n{\n  \"matches\": [\n    { \n      \"name\": \"MyPart\", \n      \"className\": \"Part\", \n      \"path\": \"Workspace.MyPart\",\n      \"uniqueId\": \"RBX1234567890ABCDEF\",\n      \"properties\": {...}, \n      \"attributes\": {...},\n      \"children\": {...}\n    },\n    { \n      \"name\": \"MyPart\", \n      \"className\": \"MeshPart\", \n      \"path\": \"Workspace.MyPart\",\n      \"uniqueId\": \"RBX9876543210FEDCBA\",\n      \"properties\": {...}, \n      \"attributes\": {...},\n      \"children\": {...}\n    }\n  ],\n  \"count\": 2,\n  \"totalFound\": 2,\n  \"note\": \"Multiple instances found with path 'Workspace.MyPart'. All 2 matches are included below.\"\n}\n\nWHEN TOO MANY MATCHES (>"]
       52 GETUPVAL                         R10 7
       53 LOADK                            R11 K16 ["):\n{\n  \"matches\": [ /* first "]
       54 GETUPVAL                         R12 7
       55 LOADK                            R13 K17 [" matches with full details */ ],\n  \"count\": "]
       56 GETUPVAL                         R14 7
       57 LOADK                            R15 K18 [",\n  \"totalFound\": 45,\n  \"note\": \"Multiple instances found with path 'Workspace.Part'.\",\n  \"warning\": \"Found 45 total matches, but only showing first "]
       58 GETUPVAL                         R16 7
       59 LOADK                            R17 K19 [" due to output limits. Consider using a more specific path to narrow down results.\"\n}\n\nPATH SPECIFICATION:\n- Use dot notation: \"Workspace.Model.Part\"\n- Can include or omit \"game.\" prefix\n- Path must match instance hierarchy\n- If multiple instances have the same name at the same level, all will be returned\n- Maximum of "]
       60 GETUPVAL                         R18 7
       61 LOADK                            R19 K20 [" matches will be returned (with warning if more exist)\n\nEXAMPLES:\n- Inspect with children: InspectInstance(path: \"Workspace.Baseplate\")\n- Multiple matches: InspectInstance(path: \"Workspace.Part\") → Returns up to "]
       62 GETUPVAL                         R20 7
       63 LOADK                            R21 K21 [" Parts with children summary\n- Case-insensitive: InspectInstance(path: \"workspace.baseplate\")\n- Inspect script: InspectInstance(path: \"ServerScriptService.MainScript\")\n- Inspect GUI: InspectInstance(path: \"StarterGui.ScreenGui.Frame\")\n- With game prefix: InspectInstance(path: \"game.Workspace.Model\")\n\nCHILDREN SUMMARY USE CASES:\n- Understand instance hierarchy structure\n- Count total descendants for performance considerations\n- See immediate children for navigation purposes\n- Identify complex models with many nested children\n- Plan traversal strategies for large hierarchies\n"]
       64 CONCAT                           R8 R9 R21
       65 NAMECALL                         R6 R6 K22 ["setDescription"]
       67 CALL                             R6 2 1
       68 LOADK                            R8 K23 ["path"]
       69 DUPTABLE                         R9 K27 [{["type"] = "string", ["description"]}]
       70 LOADK                            R10 K28 ["Path to the instance(s) to inspect using dot notation (case-insensitive). Returns detailed properties, attributes, and children summary. If multiple instances match, up to %* will be returned with a warning if more exist. Example: 'Workspace.Model.Part' or 'workspace.model.part'"]
       71 GETUPVAL                         R12 7
       72 NAMECALL                         R10 R10 K29 ["format"]
       74 CALL                             R10 2 1
       75 SETTABLEKS                       R10 R9 K26 ["description"]
       77 NAMECALL                         R6 R6 K30 ["addArgument"]
       79 CALL                             R6 3 1
       80 LOADK                            R8 K31 ["Inspect Instance"]
       81 NAMECALL                         R6 R6 K32 ["setTitle"]
       83 CALL                             R6 2 1
       84 DUPTABLE                         R8 K40 [{["title"] = "Inspect Instance", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       85 NAMECALL                         R6 R6 K41 ["setAnnotations"]
       87 CALL                             R6 2 1
       88 MOVE                             R8 R5
       89 NAMECALL                         R6 R6 K42 ["setHandler"]
       91 CALL                             R6 2 1
       92 NAMECALL                         R6 R6 K43 ["build"]
       94 CALL                             R6 1 1
       95 DUPTABLE                         R7 K45 [{"definition"}]
       96 SETTABLEKS                       R6 R7 K44 ["definition"]
       98 RETURN                           R7 1

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
      105 DUPCLOSURE                       R27 K41 [PROTO_17]
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R26
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R15
      114 RETURN                           R27 1
