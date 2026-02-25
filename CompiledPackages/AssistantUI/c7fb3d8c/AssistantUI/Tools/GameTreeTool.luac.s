PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["instance_type"]
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETTABLEKS                       R2 R1 K0 ["instance_type"]
        5 JUMPIFEQKS                       R2 K1 [""] ; [+9]
        7 GETTABLEKS                       R4 R1 K0 ["instance_type"]
        9 NAMECALL                         R2 R0 K2 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIF                           R2 ; [+2]
       13 LOADB                            R2 0
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R1 K3 ["keywords"]
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETTABLEKS                       R2 R1 K3 ["keywords"]
       20 JUMPIFNOTEQKS                    R2 K1 [""] ; [+3]
       22 LOADB                            R2 1
       23 RETURN                           R2 1
       24 GETTABLEKS                       R2 R0 K4 ["Name"]
       26 NAMECALL                         R2 R2 K5 ["lower"]
       28 CALL                             R2 1 1
       29 GETTABLEKS                       R3 R1 K3 ["keywords"]
       31 LOADK                            R5 K6 ["[^,%s]+"]
       32 NAMECALL                         R3 R3 K7 ["gmatch"]
       34 CALL                             R3 2 3
       35 FORGPREP                         R3
       36 NAMECALL                         R10 R6 K5 ["lower"]
       38 CALL                             R10 1 1
       39 LOADN                            R11 1
       40 LOADB                            R12 1
       41 NAMECALL                         R8 R2 K8 ["find"]
       43 CALL                             R8 4 1
       44 JUMPIFNOT                        R8 ; [+2]
       45 LOADB                            R8 1
       46 RETURN                           R8 1
       47 FORGLOOP                         R3 1 ; [-12]
       49 LOADB                            R3 0
       50 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isPathExcluded"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 LOADN                            R2 0
        1 NAMECALL                         R3 R0 K0 ["GetChildren"]
        3 CALL                             R3 1 3
        4 FORGPREP                         R3
        5 GETUPVAL                         R8 0
        6 MOVE                             R9 R7
        7 MOVE                             R10 R1
        8 CALL                             R8 2 1
        9 JUMPIFNOT                        R8 ; [+1]
       10 ADDK                             R2 R2 K1 [1]
       11 FORGLOOP                         R3 2 ; [-7]
       13 RETURN                           R2 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 1
        3 LENGTH                           R2 R1
        4 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
        6 LOADK                            R2 K2 [""]
        7 RETURN                           R2 1
        8 NEWTABLE                         R2 0 0
       10 MOVE                             R3 R1
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R8 R7 K3 ["ClassName"]
       16 GETTABLEKS                       R12 R7 K3 ["ClassName"]
       18 GETTABLE                         R11 R2 R12
       19 ORK                              R10 R11 K1 [0]
       20 ADDK                             R9 R10 K4 [1]
       21 SETTABLE                         R9 R2 R8
       22 FORGLOOP                         R3 2 ; [-9]
       24 NEWTABLE                         R3 0 0
       26 GETIMPORT                        R4 K6 [pairs]
       28 MOVE                             R5 R2
       29 CALL                             R4 1 3
       30 FORGPREP_NEXT                    R4
       31 LOADK                            R12 K7 ["%* %*"]
       32 MOVE                             R14 R8
       33 MOVE                             R15 R7
       34 NAMECALL                         R12 R12 K8 ["format"]
       36 CALL                             R12 3 1
       37 MOVE                             R11 R12
       38 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       40 MOVE                             R10 R3
       41 GETIMPORT                        R9 K11 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 ; [-14]
       46 GETIMPORT                        R4 K13 [table.sort]
       48 MOVE                             R5 R3
       49 CALL                             R4 1 0
       50 LOADK                            R5 K14 ["%* children (%*)"]
       51 LENGTH                           R7 R1
       52 GETIMPORT                        R8 K16 [table.concat]
       54 MOVE                             R9 R3
       55 LOADK                            R10 K17 [", "]
       56 CALL                             R8 2 1
       57 NAMECALL                         R5 R5 K8 ["format"]
       59 CALL                             R5 3 1
       60 MOVE                             R4 R5
       61 RETURN                           R4 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R4 0
        3 GETTABLEKS                       R5 R1 K0 ["head_limit"]
        5 JUMPIF                           R5 ; [+1]
        6 GETUPVAL                         R5 0
        7 NEWTABLE                         R6 0 1
        9 DUPTABLE                         R7 K3 [{"instance", "depth"}]
       10 SETTABLEKS                       R0 R7 K1 ["instance"]
       12 LOADN                            R8 0
       13 SETTABLEKS                       R8 R7 K2 ["depth"]
       15 SETLIST                          R6 R7 1 [1]
       17 LENGTH                           R7 R6
       18 LOADN                            R8 0
       19 JUMPIFNOTLT                      R8 R7 ; [+109]
       21 JUMPIFNOTLT                      R4 R5 ; [+107]
       23 GETIMPORT                        R7 K6 [table.remove]
       25 MOVE                             R8 R6
       26 LOADN                            R9 1
       27 CALL                             R7 2 1
       28 GETTABLEKS                       R8 R7 K1 ["instance"]
       30 GETTABLEKS                       R9 R7 K2 ["depth"]
       32 NAMECALL                         R10 R8 K7 ["GetFullName"]
       34 CALL                             R10 1 1
       35 GETUPVAL                         R13 1
       36 GETTABLEKS                       R12 R13 K8 ["isPathExcluded"]
       38 MOVE                             R13 R10
       39 CALL                             R12 1 1
       40 NOT                              R11 R12
       41 JUMPIFNOT                        R11 ; [+86]
       42 NAMECALL                         R11 R8 K9 ["GetChildren"]
       44 CALL                             R11 1 1
       45 GETUPVAL                         R12 2
       46 MOVE                             R13 R8
       47 MOVE                             R14 R1
       48 CALL                             R12 2 1
       49 JUMPIFNOT                        R12 ; [+48]
       50 DUPTABLE                         R13 K14 [{"name", "className", "fullPath", "parentName"}]
       51 GETTABLEKS                       R14 R8 K15 ["Name"]
       53 SETTABLEKS                       R14 R13 K10 ["name"]
       55 GETTABLEKS                       R14 R8 K16 ["ClassName"]
       57 SETTABLEKS                       R14 R13 K11 ["className"]
       59 SETTABLEKS                       R10 R13 K12 ["fullPath"]
       61 GETTABLEKS                       R14 R8 K17 ["Parent"]
       63 JUMPIFNOT                        R14 ; [+4]
       64 GETTABLEKS                       R15 R8 K17 ["Parent"]
       66 GETTABLEKS                       R14 R15 K15 ["Name"]
       68 SETTABLEKS                       R14 R13 K13 ["parentName"]
       70 JUMPIFNOTLE                      R2 R9 ; [+19]
       72 LENGTH                           R14 R11
       73 LOADN                            R15 0
       74 JUMPIFNOTLT                      R15 R14 ; [+15]
       76 GETUPVAL                         R14 3
       77 MOVE                             R15 R8
       78 CALL                             R14 1 1
       79 SETTABLEKS                       R14 R13 K18 ["childSummary"]
       81 GETUPVAL                         R14 4
       82 MOVE                             R15 R8
       83 MOVE                             R16 R1
       84 CALL                             R14 2 1
       85 LOADN                            R15 0
       86 JUMPIFNOTLT                      R15 R14 ; [+3]
       88 SETTABLEKS                       R14 R13 K19 ["unexploredChildCount"]
       90 FASTCALL2                        TABLE_INSERT R3 R13 ; [+5]
       92 MOVE                             R15 R3
       93 MOVE                             R16 R13
       94 GETIMPORT                        R14 K21 [table.insert]
       96 CALL                             R14 2 0
       97 ADDK                             R4 R4 K22 [1]
       98 JUMPIFNOTLT                      R9 R2 ; [+29]
      100 MOVE                             R13 R11
      101 LOADNIL                          R14
      102 LOADNIL                          R15
      103 FORGPREP                         R13
      104 NAMECALL                         R18 R17 K7 ["GetFullName"]
      106 CALL                             R18 1 1
      107 GETUPVAL                         R21 1
      108 GETTABLEKS                       R20 R21 K8 ["isPathExcluded"]
      110 MOVE                             R21 R18
      111 CALL                             R20 1 1
      112 NOT                              R19 R20
      113 JUMPIFNOT                        R19 ; [+12]
      114 DUPTABLE                         R21 K3 [{"instance", "depth"}]
      115 SETTABLEKS                       R17 R21 K1 ["instance"]
      117 ADDK                             R22 R9 K22 [1]
      118 SETTABLEKS                       R22 R21 K2 ["depth"]
      120 FASTCALL2                        TABLE_INSERT R6 R21 ; [+4]
      122 MOVE                             R20 R6
      123 GETIMPORT                        R19 K21 [table.insert]
      125 CALL                             R19 2 0
      126 FORGLOOP                         R13 2 ; [-23]
      128 JUMPBACK                         ; [-112]
      129 RETURN                           R3 2

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["keywords"]
        4 JUMPIFNOT                        R2 ; [+13]
        5 LOADK                            R5 K1 ["keywords '%*'"]
        6 GETTABLEKS                       R7 R0 K0 ["keywords"]
        8 NAMECALL                         R5 R5 K2 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K5 [table.insert]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R2 R0 K6 ["instance_type"]
       20 JUMPIFNOT                        R2 ; [+13]
       21 LOADK                            R5 K7 ["type '%*'"]
       22 GETTABLEKS                       R7 R0 K6 ["instance_type"]
       24 NAMECALL                         R5 R5 K2 ["format"]
       26 CALL                             R5 2 1
       27 MOVE                             R4 R5
       28 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       30 MOVE                             R3 R1
       31 GETIMPORT                        R2 K5 [table.insert]
       33 CALL                             R2 2 0
       34 GETTABLEKS                       R2 R0 K8 ["path"]
       36 JUMPIFNOT                        R2 ; [+17]
       37 GETTABLEKS                       R2 R0 K8 ["path"]
       39 JUMPIFEQKS                       R2 K9 [""] ; [+14]
       41 LOADK                            R5 K10 ["path '%*'"]
       42 GETTABLEKS                       R7 R0 K8 ["path"]
       44 NAMECALL                         R5 R5 K2 ["format"]
       46 CALL                             R5 2 1
       47 MOVE                             R4 R5
       48 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       50 MOVE                             R3 R1
       51 GETIMPORT                        R2 K5 [table.insert]
       53 CALL                             R2 2 0
       54 LENGTH                           R3 R1
       55 LOADN                            R4 0
       56 JUMPIFNOTLT                      R4 R3 ; [+7]
       58 GETIMPORT                        R2 K12 [table.concat]
       60 MOVE                             R3 R1
       61 LOADK                            R4 K13 [", "]
       62 CALL                             R2 2 1
       63 JUMPIF                           R2 ; [+1]
       64 LOADK                            R2 K14 ["the specified filters"]
       65 RETURN                           R2 1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+5]
        3 GETIMPORT                        R1 K2 [game]
        5 LOADNIL                          R2
        6 RETURN                           R1 2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K3 ["findInstance"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 MOVE                             R2 R1
       14 LOADNIL                          R3
       15 RETURN                           R2 2
       16 LOADNIL                          R2
       17 LOADK                            R4 K4 ["Could not find instance at path '%*'"]
       18 MOVE                             R6 R0
       19 NAMECALL                         R4 R4 K5 ["format"]
       21 CALL                             R4 2 1
       22 MOVE                             R3 R4
       23 RETURN                           R2 2

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["max_depth"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R4 1
        5 FASTCALL2                        MATH_MIN R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K3 [math.min]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 1
       12 JUMPIFLT                         R4 R1 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 GETTABLEKS                       R6 R0 K4 ["path"]
       18 JUMPIFNOT                        R6 ; [+2]
       19 JUMPIFNOTEQKS                    R6 K5 [""] ; [+5]
       21 GETIMPORT                        R4 K7 [game]
       23 LOADNIL                          R5
       24 JUMP                             ; [+16]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R7 R8 K8 ["findInstance"]
       28 MOVE                             R8 R6
       29 CALL                             R7 1 1
       30 JUMPIFNOT                        R7 ; [+3]
       31 MOVE                             R4 R7
       32 LOADNIL                          R5
       33 JUMP                             ; [+7]
       34 LOADNIL                          R4
       35 LOADK                            R8 K9 ["Could not find instance at path '%*'"]
       36 MOVE                             R10 R6
       37 NAMECALL                         R8 R8 K10 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R5 R8
       41 JUMPIFNOT                        R5 ; [+7]
       42 LOADK                            R7 K11 ["Error: %*"]
       43 MOVE                             R9 R5
       44 NAMECALL                         R7 R7 K10 ["format"]
       46 CALL                             R7 2 1
       47 MOVE                             R6 R7
       48 RETURN                           R6 1
       49 FASTCALL2K                       ASSERT R4 K12 ; [+5]
       51 MOVE                             R7 R4
       52 LOADK                            R8 K12 ["startInstance should not be nil if err is nil"]
       53 GETIMPORT                        R6 K14 [assert]
       55 CALL                             R6 2 0
       56 GETUPVAL                         R6 3
       57 MOVE                             R7 R4
       58 MOVE                             R8 R0
       59 MOVE                             R9 R2
       60 CALL                             R6 3 2
       61 LENGTH                           R8 R6
       62 JUMPIFNOTEQKN                    R8 K15 [0] ; [+11]
       64 GETUPVAL                         R8 4
       65 MOVE                             R9 R0
       66 CALL                             R8 1 1
       67 LOADK                            R10 K16 ["No instances found matching %*"]
       68 MOVE                             R12 R8
       69 NAMECALL                         R10 R10 K10 ["format"]
       71 CALL                             R10 2 1
       72 MOVE                             R9 R10
       73 RETURN                           R9 1
       74 GETIMPORT                        R8 K18 [pcall]
       76 NEWCLOSURE                       R9 P0
       77 CAPTURE                          UPVAL U5
       78 CAPTURE                          VAL R6
       79 CALL                             R8 1 2
       80 JUMPIF                           R8 ; [+11]
       81 LOADK                            R11 K19 ["Error encoding JSON: %*"]
       82 FASTCALL1                        TOSTRING R9 ; [+3]
       83 MOVE                             R14 R9
       84 GETIMPORT                        R13 K21 [tostring]
       86 CALL                             R13 1 1
       87 NAMECALL                         R11 R11 K10 ["format"]
       89 CALL                             R11 2 1
       90 MOVE                             R10 R11
       91 RETURN                           R10 1
       92 GETTABLEKS                       R10 R0 K22 ["head_limit"]
       94 JUMPIF                           R10 ; [+1]
       95 GETUPVAL                         R10 6
       96 JUMPIFNOTLT                      R7 R10 ; [+3]
       98 JUMPIF                           R3 ; [+1]
       99 RETURN                           R9 1
      100 NEWTABLE                         R11 0 0
      102 JUMPIFNOTLE                      R10 R7 ; [+13]
      104 LOADK                            R15 K23 ["Note: Output limited to %* nodes (results truncated)"]
      105 MOVE                             R17 R10
      106 NAMECALL                         R15 R15 K10 ["format"]
      108 CALL                             R15 2 1
      109 MOVE                             R14 R15
      110 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      112 MOVE                             R13 R11
      113 GETIMPORT                        R12 K26 [table.insert]
      115 CALL                             R12 2 0
      116 JUMPIFNOT                        R3 ; [+13]
      117 LOADK                            R15 K27 ["Note: Max depth capped at %* (requested %*)"]
      118 GETUPVAL                         R17 1
      119 MOVE                             R18 R1
      120 NAMECALL                         R15 R15 K10 ["format"]
      122 CALL                             R15 3 1
      123 MOVE                             R14 R15
      124 FASTCALL2                        TABLE_INSERT R11 R14 ; [+4]
      126 MOVE                             R13 R11
      127 GETIMPORT                        R12 K26 [table.insert]
      129 CALL                             R12 2 0
      130 GETIMPORT                        R16 K29 [table.concat]
      132 MOVE                             R17 R11
      133 LOADK                            R18 K30 ["\n"]
      134 CALL                             R16 2 1
      135 MOVE                             R13 R16
      136 LOADK                            R14 K31 ["\n\n"]
      137 MOVE                             R15 R9
      138 CONCAT                           R12 R13 R15
      139 RETURN                           R12 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K0 ["addText"]
        9 CALL                             R2 2 1
       10 NAMECALL                         R2 R2 K1 ["build"]
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["GameTreeTool_explore"]
        3 DUPCLOSURE                       R5 K2 [PROTO_9]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K4 ["define"]
       14 CALL                             R4 0 1
       15 LOADK                            R6 K5 ["game_tree"]
       16 NAMECALL                         R4 R4 K6 ["setName"]
       18 CALL                             R4 2 1
       19 LOADK                            R7 K7 ["Explore the Roblox game hierarchy tree with flat JSON output.\nReturns an array of JSON objects representing instances in the Data Model, showing names, paths, and relationships.\nUse optional filters to narrow down results by path, instance type, or keywords.\nFor detailed inspection of a specific instance's properties and attributes, use the Inspect Instance tool.\n\nOUTPUT FORMAT:\nArray of objects with:\n{\n  \"name\": \"InstanceName\",\n  \"className\": \"Part\", \n  \"fullPath\": \"Workspace.Folder.InstanceName\",\n  \"parentName\": \"Folder\",\n  \"childSummary\": \"5 children (3 Part, 2 Script)\",  // Present if depth limit reached and children exist\n  \"unexploredChildCount\": 5  // Present if depth limit reached with matching children\n}\n\nDEPTH LIMITING:\n- Default max_depth: "]
       20 GETUPVAL                         R8 3
       21 LOADK                            R9 K8 [" levels from start point (absolute traversal depth)\n- Absolute max: "]
       22 GETUPVAL                         R10 4
       23 LOADK                            R11 K9 [" levels\n- max_depth limits how deep into the hierarchy we traverse, regardless of filters\n- Beyond max_depth, children are summarized with counts by class type\n- Nodes at depth limit show: \"unexploredChildCount\" and \"childSummary\"\n\nEXAMPLES:\n- Full tree ("]
       24 GETUPVAL                         R12 3
       25 LOADK                            R13 K10 [" levels): GameTree()\n- Workspace only: GameTree(path: \"Workspace\")\n- ServerScriptService: GameTree(path: \"ServerScriptService\")\n- All base scripts: GameTree(instance_type: \"BaseScript\")\n- All parts: GameTree(instance_type: \"Part\")\n- By keywords: GameTree(keywords: \"player, character\")\n- Deep exploration: GameTree(max_depth: 6)\n- Specific path: GameTree(path: \"Workspace.Models\")\n- Combined filters: GameTree(path: \"Workspace\", instance_type: \"Part\", keywords: \"red\")\n- Increase output: GameTree(head_limit: 1000, max_depth: 5)\n"]
       26 CONCAT                           R6 R7 R13
       27 NAMECALL                         R4 R4 K11 ["setDescription"]
       29 CALL                             R4 2 1
       30 LOADK                            R6 K12 ["path"]
       31 DUPTABLE                         R7 K15 [{"type", "description"}]
       32 LOADK                            R8 K16 ["string"]
       33 SETTABLEKS                       R8 R7 K13 ["type"]
       35 LOADK                            R8 K17 ["Start exploration from this path. Examples: 'Workspace', 'ServerScriptService', 'Workspace.Models'. Path is case-sensitive."]
       36 SETTABLEKS                       R8 R7 K14 ["description"]
       38 NAMECALL                         R4 R4 K18 ["addOptionalArgument"]
       40 CALL                             R4 3 1
       41 LOADK                            R6 K19 ["instance_type"]
       42 DUPTABLE                         R7 K15 [{"type", "description"}]
       43 LOADK                            R8 K16 ["string"]
       44 SETTABLEKS                       R8 R7 K13 ["type"]
       46 LOADK                            R8 K20 ["Filter by ClassName using IsA() check. Examples: 'BasePart', 'BaseScript', 'GuiObject', 'Model', 'Folder'. Case sensitive."]
       47 SETTABLEKS                       R8 R7 K14 ["description"]
       49 NAMECALL                         R4 R4 K18 ["addOptionalArgument"]
       51 CALL                             R4 3 1
       52 LOADK                            R6 K21 ["keywords"]
       53 DUPTABLE                         R7 K15 [{"type", "description"}]
       54 LOADK                            R8 K16 ["string"]
       55 SETTABLEKS                       R8 R7 K13 ["type"]
       57 LOADK                            R8 K22 ["Filter by instance name keywords (case-insensitive). Separate multiple keywords with commas or spaces. Instance name must contain at least one keyword. Examples: 'player', 'red, blue', 'button door'"]
       58 SETTABLEKS                       R8 R7 K14 ["description"]
       60 NAMECALL                         R4 R4 K18 ["addOptionalArgument"]
       62 CALL                             R4 3 1
       63 LOADK                            R6 K23 ["max_depth"]
       64 DUPTABLE                         R7 K15 [{"type", "description"}]
       65 LOADK                            R8 K24 ["number"]
       66 SETTABLEKS                       R8 R7 K13 ["type"]
       68 LOADK                            R9 K25 ["Maximum absolute depth to traverse from start point. Default: %*, Absolute max: %*. Limits how deep we explore in the hierarchy regardless of filters. Beyond this depth, children are summarized instead of expanded."]
       69 GETUPVAL                         R11 3
       70 GETUPVAL                         R12 4
       71 NAMECALL                         R9 R9 K26 ["format"]
       73 CALL                             R9 3 1
       74 MOVE                             R8 R9
       75 SETTABLEKS                       R8 R7 K14 ["description"]
       77 NAMECALL                         R4 R4 K18 ["addOptionalArgument"]
       79 CALL                             R4 3 1
       80 LOADK                            R6 K27 ["head_limit"]
       81 DUPTABLE                         R7 K15 [{"type", "description"}]
       82 LOADK                            R8 K24 ["number"]
       83 SETTABLEKS                       R8 R7 K13 ["type"]
       85 LOADK                            R9 K28 ["Maximum number of results to return. Default: %*. Prevents overwhelming output for large trees."]
       86 GETUPVAL                         R11 5
       87 NAMECALL                         R9 R9 K26 ["format"]
       89 CALL                             R9 2 1
       90 MOVE                             R8 R9
       91 SETTABLEKS                       R8 R7 K14 ["description"]
       93 NAMECALL                         R4 R4 K18 ["addOptionalArgument"]
       95 CALL                             R4 3 1
       96 MOVE                             R6 R3
       97 NAMECALL                         R4 R4 K29 ["setHandler"]
       99 CALL                             R4 2 1
      100 NAMECALL                         R4 R4 K30 ["build"]
      102 CALL                             R4 1 1
      103 DUPTABLE                         R5 K32 [{"definition"}]
      104 SETTABLEKS                       R4 R5 K31 ["definition"]
      106 RETURN                           R5 1

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
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["ModelContextProtocol"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Tools"]
       24 GETTABLEKS                       R4 R5 K13 ["ToolTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K14 ["Util"]
       31 GETTABLEKS                       R5 R6 K15 ["ToolUtils"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R6 R2 K14 ["Util"]
       36 GETTABLEKS                       R5 R6 K16 ["ToolBuilder"]
       38 GETTABLEKS                       R7 R2 K14 ["Util"]
       40 GETTABLEKS                       R6 R7 K17 ["ToolResult"]
       42 GETIMPORT                        R7 K9 [require]
       44 GETTABLEKS                       R9 R0 K18 ["Flags"]
       46 GETTABLEKS                       R8 R9 K19 ["FIntGameTreeDefaultHeadLimit"]
       48 CALL                             R7 1 1
       49 CALL                             R7 0 1
       50 GETIMPORT                        R8 K9 [require]
       52 GETTABLEKS                       R10 R0 K18 ["Flags"]
       54 GETTABLEKS                       R9 R10 K20 ["FIntGameTreeDefaultMaxDepth"]
       56 CALL                             R8 1 1
       57 CALL                             R8 0 1
       58 GETIMPORT                        R9 K9 [require]
       60 GETTABLEKS                       R11 R0 K18 ["Flags"]
       62 GETTABLEKS                       R10 R11 K21 ["FIntGameTreeMaxAbsoluteDepth"]
       64 CALL                             R9 1 1
       65 CALL                             R9 0 1
       66 DUPCLOSURE                       R10 K22 [PROTO_0]
       67 DUPCLOSURE                       R11 K23 [PROTO_1]
       68 CAPTURE                          VAL R4
       69 DUPCLOSURE                       R12 K24 [PROTO_2]
       70 CAPTURE                          VAL R10
       71 DUPCLOSURE                       R13 K25 [PROTO_3]
       72 DUPCLOSURE                       R14 K26 [PROTO_4]
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R12
       78 DUPCLOSURE                       R15 K27 [PROTO_5]
       79 DUPCLOSURE                       R16 K28 [PROTO_6]
       80 CAPTURE                          VAL R4
       81 DUPCLOSURE                       R17 K29 [PROTO_8]
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R15
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R7
       89 DUPCLOSURE                       R18 K30 [PROTO_11]
       90 CAPTURE                          VAL R17
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R7
       96 RETURN                           R18 1
