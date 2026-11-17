PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagSkipExternalToolsNoDebugMode"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R4 1
        5 GETTABLE                         R3 R4 R0
        6 NOT                              R2 R3
        7 JUMPIFNOT                        R2 ; [+2]
        8 MOVE                             R2 R1
        9 CALL                             R2 0 1
       10 RETURN                           R2 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R1 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R9 R7 K0 ["name"]
       12 GETTABLE                         R8 R1 R9
       13 JUMPIFNOT                        R8 ; [+7]
       14 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       16 MOVE                             R9 R2
       17 MOVE                             R10 R7
       18 GETIMPORT                        R8 K3 [table.insert]
       20 CALL                             R8 2 0
       21 FORGLOOP                         R3 2 ; [-12]
       23 RETURN                           R2 1

PROTO_3:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 1
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 LOADB                            R8 1
        9 SETTABLE                         R8 R2 R7
       10 FORGLOOP                         R3 2 ; [-3]
       12 NEWTABLE                         R3 0 0
       14 MOVE                             R4 R0
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETTABLEKS                       R10 R8 K0 ["name"]
       20 GETTABLE                         R9 R2 R10
       21 JUMPIF                           R9 ; [+7]
       22 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       24 MOVE                             R10 R3
       25 MOVE                             R11 R8
       26 GETIMPORT                        R9 K3 [table.insert]
       28 CALL                             R9 2 0
       29 FORGLOOP                         R4 2 ; [-12]
       31 RETURN                           R3 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K4 [table.move]
        6 MOVE                             R4 R1
        7 LOADN                            R5 1
        8 LENGTH                           R6 R1
        9 LENGTH                           R8 R2
       10 ADDK                             R7 R8 K5 [1]
       11 MOVE                             R8 R2
       12 CALL                             R3 5 0
       13 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLE                         R8 R2 R7
        9 JUMPIFNOTEQKNIL                  R8 ; [+3]
       11 LOADB                            R8 1
       12 SETTABLE                         R8 R2 R7
       13 FORGLOOP                         R3 2 ; [-6]
       15 RETURN                           R2 1

PROTO_6:
        0 JUMPIF                           R1 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 LOADB                            R8 1
       11 SETTABLE                         R8 R2 R7
       12 FORGLOOP                         R3 2 ; [-3]
       14 GETUPVAL                         R3 0
       15 MOVE                             R4 R0
       16 MOVE                             R5 R2
       17 CALL                             R3 2 1
       18 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDefinitions"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R9 R6 K1 ["name"]
       13 GETTABLE                         R7 R8 R9
       14 GETTABLEKS                       R7 R7 K2 ["external"]
       16 JUMPIFNOT                        R7 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R6
       21 GETIMPORT                        R7 K5 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-15]
       26 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDefinitions"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R9 R6 K1 ["name"]
       13 GETTABLE                         R7 R8 R9
       14 GETTABLEKS                       R7 R7 K2 ["internal"]
       16 JUMPIFNOT                        R7 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R6
       21 GETIMPORT                        R7 K5 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-15]
       26 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["checkAndGetTargetDataModel"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["args"]
        6 GETTABLEKS                       R1 R1 K2 ["datamodel_type"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 DUPTABLE                         R6 K3 [{"name", "args", "meta"}]
        4 SETTABLEKS                       R0 R6 K0 ["name"]
        6 SETTABLEKS                       R1 R6 K1 ["args"]
        8 SETTABLEKS                       R2 R6 K2 ["meta"]
       10 CALL                             R4 2 -1
       11 CALL                             R3 -1 -1
       12 RETURN                           R3 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["isInternal"]
        2 JUMPIFNOT                        R1 ; [+24]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R0 K1 ["name"]
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOT                        R1 ; [+19]
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 1
       10 LOADK                            R3 K2 ["Tool is not available: %*"]
       11 GETTABLEKS                       R5 R0 K1 ["name"]
       13 NAMECALL                         R3 R3 K3 ["format"]
       15 CALL                             R3 2 1
       16 NAMECALL                         R1 R1 K4 ["addText"]
       18 CALL                             R1 2 1
       19 LOADB                            R3 1
       20 NAMECALL                         R1 R1 K5 ["setError"]
       22 CALL                             R1 2 1
       23 NAMECALL                         R1 R1 K6 ["build"]
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K7 ["FFlagFixTargetIsNotReachable"]
       30 JUMPIFNOT                        R1 ; [+30]
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R3 R0 K1 ["name"]
       34 GETTABLE                         R1 R2 R3
       35 JUMPIF                           R1 ; [+25]
       36 GETUPVAL                         R1 4
       37 GETTABLEKS                       R1 R1 K8 ["getFocusedDataModelType"]
       39 CALL                             R1 0 1
       40 GETUPVAL                         R2 5
       41 GETTABLEKS                       R2 R2 K9 ["Types"]
       43 GETTABLEKS                       R2 R2 K10 ["Unknown"]
       45 JUMPIFNOTEQ                      R1 R2 ; [+15]
       47 GETUPVAL                         R2 1
       48 CALL                             R2 0 1
       49 LOADK                            R4 K11 ["Place is not open"]
       50 NAMECALL                         R2 R2 K4 ["addText"]
       52 CALL                             R2 2 1
       53 LOADB                            R4 1
       54 NAMECALL                         R2 R2 K5 ["setError"]
       56 CALL                             R2 2 1
       57 NAMECALL                         R2 R2 K6 ["build"]
       59 CALL                             R2 1 -1
       60 RETURN                           R2 -1
       61 GETUPVAL                         R2 6
       62 GETTABLEKS                       R2 R2 K12 ["getHandler"]
       64 GETTABLEKS                       R3 R0 K1 ["name"]
       66 FASTPCALL                        pcall 2 ; [+2]
       67 GETIMPORT                        R1 K14 [pcall]
       69 CALL                             R1 2 2
       70 JUMPIF                           R1 ; [+44]
       71 LOADB                            R3 0
       72 GETTABLEKS                       R4 R0 K1 ["name"]
       74 GETUPVAL                         R5 7
       75 GETTABLEKS                       R5 R5 K15 ["ListRobloxStudios"]
       77 JUMPIFNOTEQ                      R4 R5 ; [+5]
       79 GETUPVAL                         R4 2
       80 GETTABLEKS                       R4 R4 K16 ["FFlagAssistantMcpListStudiosTool"]
       82 NOT                              R3 R4
       83 JUMPIF                           R3 ; [+12]
       84 GETIMPORT                        R4 K18 [warn]
       86 LOADK                            R5 K19 ["[startMcpHost] Failed to get handler for tool:"]
       87 GETTABLEKS                       R6 R0 K1 ["name"]
       89 LOADK                            R7 K20 [":"]
       90 FASTCALL1                        TOSTRING R2 ; [+3]
       91 MOVE                             R9 R2
       92 GETIMPORT                        R8 K22 [tostring]
       94 CALL                             R8 1 1
       95 CALL                             R4 4 0
       96 GETUPVAL                         R4 1
       97 CALL                             R4 0 1
       98 LOADK                            R6 K23 ["Tool handler not found: %*"]
       99 GETTABLEKS                       R8 R0 K1 ["name"]
      101 NAMECALL                         R6 R6 K3 ["format"]
      103 CALL                             R6 2 1
      104 NAMECALL                         R4 R4 K4 ["addText"]
      106 CALL                             R4 2 1
      107 LOADB                            R6 1
      108 NAMECALL                         R4 R4 K5 ["setError"]
      110 CALL                             R4 2 1
      111 NAMECALL                         R4 R4 K6 ["build"]
      113 CALL                             R4 1 -1
      114 RETURN                           R4 -1
      115 GETTABLEKS                       R3 R0 K24 ["meta"]
      117 GETUPVAL                         R4 8
      118 GETTABLEKS                       R4 R4 K25 ["getToolAvailableDataModelTypes"]
      120 GETTABLEKS                       R5 R0 K1 ["name"]
      122 CALL                             R4 1 1
      123 NEWCLOSURE                       R6 P0
      124 CAPTURE                          UPVAL U9
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R4
      127 CAPTURE                          REF R3
      128 FASTPCALL                        pcall 1 ; [+2]
      129 GETIMPORT                        R5 K14 [pcall]
      131 CALL                             R5 1 2
      132 JUMPIF                           R5 ; [+19]
      133 GETUPVAL                         R7 1
      134 CALL                             R7 0 1
      135 FASTCALL1                        TOSTRING R6 ; [+3]
      136 MOVE                             R10 R6
      137 GETIMPORT                        R9 K22 [tostring]
      139 CALL                             R9 1 1
      140 NAMECALL                         R7 R7 K4 ["addText"]
      142 CALL                             R7 2 1
      143 LOADB                            R9 1
      144 NAMECALL                         R7 R7 K5 ["setError"]
      146 CALL                             R7 2 1
      147 NAMECALL                         R7 R7 K6 ["build"]
      149 CALL                             R7 1 -1
      150 CLOSEUPVALS                      R3
      151 RETURN                           R7 -1
      152 MOVE                             R7 R3
      153 JUMPIF                           R7 ; [+2]
      154 NEWTABLE                         R7 0 0
      156 SETTABLEKS                       R6 R7 K26 ["targetDataModel"]
      158 MOVE                             R3 R7
      159 GETUPVAL                         R8 10
      160 GETTABLEKS                       R9 R0 K27 ["extra"]
      162 DUPTABLE                         R10 K30 [{"listTools", "callTool"}]
      163 GETTABLEKS                       R11 R0 K28 ["listTools"]
      165 SETTABLEKS                       R11 R10 K28 ["listTools"]
      167 NEWCLOSURE                       R11 P1
      168 CAPTURE                          UPVAL U11
      169 CAPTURE                          UPVAL U10
      170 CAPTURE                          VAL R0
      171 SETTABLEKS                       R11 R10 K29 ["callTool"]
      173 CALL                             R8 2 1
      174 GETUPVAL                         R9 12
      175 GETTABLEKS                       R9 R9 K31 ["tryRunAsync"]
      177 DUPTABLE                         R10 K35 [{"toolName", "handler", "args", "meta", "extra"}]
      178 GETTABLEKS                       R11 R0 K1 ["name"]
      180 SETTABLEKS                       R11 R10 K32 ["toolName"]
      182 SETTABLEKS                       R2 R10 K33 ["handler"]
      184 GETTABLEKS                       R11 R0 K34 ["args"]
      186 SETTABLEKS                       R11 R10 K34 ["args"]
      188 SETTABLEKS                       R3 R10 K24 ["meta"]
      190 SETTABLEKS                       R8 R10 K27 ["extra"]
      192 CALL                             R9 1 1
      193 JUMPIFNOT                        R9 ; [+2]
      194 CLOSEUPVALS                      R3
      195 RETURN                           R9 1
      196 MOVE                             R11 R2
      197 GETTABLEKS                       R12 R0 K34 ["args"]
      199 MOVE                             R13 R3
      200 MOVE                             R14 R8
      201 FASTPCALL                        pcall 4 ; [+2]
      202 GETIMPORT                        R10 K14 [pcall]
      204 CALL                             R10 4 2
      205 JUMPIF                           R10 ; [+31]
      206 GETIMPORT                        R12 K18 [warn]
      208 LOADK                            R13 K36 ["[startMcpHost] Tool handler error for"]
      209 GETTABLEKS                       R14 R0 K1 ["name"]
      211 LOADK                            R15 K20 [":"]
      212 FASTCALL1                        TOSTRING R11 ; [+3]
      213 MOVE                             R17 R11
      214 GETIMPORT                        R16 K22 [tostring]
      216 CALL                             R16 1 1
      217 CALL                             R12 4 0
      218 GETUPVAL                         R12 1
      219 CALL                             R12 0 1
      220 FASTCALL1                        TOSTRING R11 ; [+3]
      221 MOVE                             R15 R11
      222 GETIMPORT                        R14 K22 [tostring]
      224 CALL                             R14 1 1
      225 NAMECALL                         R12 R12 K4 ["addText"]
      227 CALL                             R12 2 1
      228 LOADB                            R14 1
      229 NAMECALL                         R12 R12 K5 ["setError"]
      231 CALL                             R12 2 1
      232 NAMECALL                         R12 R12 K6 ["build"]
      234 CALL                             R12 1 -1
      235 CLOSEUPVALS                      R3
      236 RETURN                           R12 -1
      237 CLOSEUPVALS                      R3
      238 RETURN                           R11 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["getToolAvailableDataModelTypes"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 LENGTH                           R3 R2
        9 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
       11 RETURN                           R0 1
       12 NEWTABLE                         R3 0 0
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K3 ["get"]
       17 CALL                             R4 0 1
       18 GETTABLEKS                       R4 R4 K4 ["hasInternalPermission"]
       20 CALL                             R4 0 1
       21 MOVE                             R5 R2
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 GETUPVAL                         R10 2
       26 GETTABLEKS                       R10 R10 K5 ["Types"]
       28 GETTABLEKS                       R10 R10 K6 ["Standalone"]
       30 JUMPIFNOTEQ                      R9 R10 ; [+2]
       32 JUMPIFNOT                        R4 ; [+7]
       33 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       35 MOVE                             R11 R3
       36 MOVE                             R12 R9
       37 GETIMPORT                        R10 K9 [table.insert]
       39 CALL                             R10 2 0
       40 FORGLOOP                         R5 2 ; [-16]
       42 LENGTH                           R5 R3
       43 JUMPIFNOTEQKN                    R5 K2 [0] ; [+2]
       45 RETURN                           R0 1
       46 GETUPVAL                         R5 3
       47 MOVE                             R6 R0
       48 DUPTABLE                         R7 K14 [{[1] = "datamodel_type", ["required"] = True, ["schema"]}]
       49 DUPTABLE                         R8 K19 [{["type"] = "string", ["enum"], ["description"]}]
       50 SETTABLEKS                       R3 R8 K17 ["enum"]
       52 LOADK                            R9 K20 ["The target datamodel to operate on, the tool can only be performed in those datamodel types. call %* to get current available datamodel types. if the target datamodel is not available in current mode, consider using %* to switch to the desired mode and then use the tools. This is a required argument."]
       53 GETUPVAL                         R11 4
       54 GETTABLEKS                       R11 R11 K21 ["GetStudioState"]
       56 GETUPVAL                         R12 4
       57 GETTABLEKS                       R12 R12 K22 ["StartStopPlay"]
       59 NAMECALL                         R9 R9 K23 ["format"]
       61 CALL                             R9 3 1
       62 SETTABLEKS                       R9 R8 K18 ["description"]
       64 SETTABLEKS                       R8 R7 K13 ["schema"]
       66 CALL                             R5 2 -1
       67 RETURN                           R5 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ListRobloxStudios"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 DUPTABLE                         R3 K6 [{[1] = "studio_id", ["required"] = True, ["schema"]}]
       11 DUPTABLE                         R4 K10 [{["type"] = "string", ["description"]}]
       12 LOADK                            R5 K11 ["Selects Roblox Studio instance, use the %* tool to get available instances"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K1 ["ListRobloxStudios"]
       16 NAMECALL                         R5 R5 K12 ["format"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K9 ["description"]
       21 SETTABLEKS                       R4 R3 K5 ["schema"]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

PROTO_14:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R2 R0 K0 ["studio_id"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+4]
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 RETURN                           R2 2
        9 GETTABLEKS                       R2 R0 K0 ["studio_id"]
       11 JUMPIFEQ                         R2 R1 ; [+16]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K1 ["reject"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K2 ["newMcpError"]
       20 LOADN                            R5 -32010
       21 LOADK                            R6 K3 ["Client proxy is out of date, restart to update"]
       22 DUPTABLE                         R7 K5 [{"studioSessionId"}]
       23 SETTABLEKS                       R1 R7 K4 ["studioSessionId"]
       25 CALL                             R4 3 -1
       26 CALL                             R3 -1 -1
       27 RETURN                           R2 -1
       28 GETIMPORT                        R2 K8 [table.clone]
       30 MOVE                             R3 R0
       31 CALL                             R2 1 1
       32 LOADNIL                          R3
       33 SETTABLEKS                       R3 R2 K0 ["studio_id"]
       35 MOVE                             R3 R2
       36 LOADNIL                          R4
       37 RETURN                           R3 2

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantLogUnifiedActivitySessionId"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["get"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R2 R2 K2 ["reportMcpToolCallAsync"]
       12 MOVE                             R3 R0
       13 FASTPCALL                        pcall 2 ; [+2]
       14 GETIMPORT                        R1 K4 [pcall]
       16 CALL                             R1 2 2
       17 JUMPIFNOT                        R1 ; [+2]
       18 MOVE                             R3 R2
       19 RETURN                           R3 1
       20 LOADNIL                          R3
       21 RETURN                           R3 1

PROTO_16:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["getToolGetDescriptionFunction"]
        7 GETTABLEKS                       R8 R6 K1 ["name"]
        9 CALL                             R7 1 1
       10 JUMPIFNOT                        R7 ; [+13]
       11 MOVE                             R8 R7
       12 MOVE                             R9 R1
       13 CALL                             R8 1 1
       14 JUMPIFNOT                        R8 ; [+9]
       15 FASTCALL1                        TYPEOF R8 ; [+3]
       16 MOVE                             R10 R8
       17 GETIMPORT                        R9 K3 [typeof]
       19 CALL                             R9 1 1
       20 JUMPIFNOTEQKS                    R9 K4 ["string"] ; [+3]
       22 SETTABLEKS                       R8 R6 K5 ["description"]
       24 FORGLOOP                         R2 2 ; [-21]
       26 RETURN                           R0 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 1
        5 GETTABLEKS                       R2 R0 K1 ["content"]
        7 FASTCALL1                        TYPEOF R2 ; [+2]
        8 GETIMPORT                        R1 K3 [typeof]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+35]
       13 GETTABLEKS                       R1 R0 K1 ["content"]
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 FASTCALL1                        TYPEOF R5 ; [+3]
       19 MOVE                             R7 R5
       20 GETIMPORT                        R6 K3 [typeof]
       22 CALL                             R6 1 1
       23 JUMPIFNOTEQKS                    R6 K4 ["table"] ; [+21]
       25 GETTABLEKS                       R6 R5 K5 ["type"]
       27 JUMPIFNOTEQKS                    R6 K6 ["text"] ; [+17]
       29 GETTABLEKS                       R7 R5 K6 ["text"]
       31 FASTCALL1                        TYPEOF R7 ; [+2]
       32 GETIMPORT                        R6 K3 [typeof]
       34 CALL                             R6 1 1
       35 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+9]
       37 GETTABLEKS                       R6 R5 K6 ["text"]
       39 JUMPIFEQKS                       R6 K8 [""] ; [+5]
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R0 K0 ["structuredContent"]
       44 RETURN                           R0 1
       45 FORGLOOP                         R1 2 ; [-28]
       47 RETURN                           R0 1

PROTO_18:
        0 JUMPIF                           R0 ; [+6]
        1 DUPTABLE                         R1 K1 [{"tools"}]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K0 ["tools"]
        6 RETURN                           R1 1
        7 LOADNIL                          R1
        8 GETTABLEKS                       R2 R0 K2 ["useInternalToolDefinitions"]
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETUPVAL                         R2 0
       12 CALL                             R2 0 1
       13 MOVE                             R1 R2
       14 JUMP                             ; [+5]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K3 ["getDefinitions"]
       18 CALL                             R2 0 1
       19 MOVE                             R1 R2
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K4 ["FFlagDebugAssistantEval"]
       23 JUMPIFNOT                        R2 ; [+13]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K5 ["getIsEvaluationRunning"]
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+8]
       29 GETUPVAL                         R2 4
       30 MOVE                             R3 R1
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K6 ["getDisabledTools"]
       34 CALL                             R4 0 -1
       35 CALL                             R2 -1 1
       36 MOVE                             R1 R2
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K7 ["FFlagAssistantFixToolDisappear"]
       40 JUMPIFNOT                        R2 ; [+35]
       41 GETTABLEKS                       R2 R0 K8 ["includeDisabledTools"]
       43 JUMPIF                           R2 ; [+32]
       44 GETUPVAL                         R2 5
       45 JUMPIFNOT                        R2 ; [+30]
       46 GETTABLEKS                       R3 R0 K9 ["isSubagent"]
       48 JUMPIFNOT                        R3 ; [+21]
       49 GETUPVAL                         R3 5
       50 GETUPVAL                         R4 6
       51 GETTABLEKS                       R4 R4 K10 ["SubagentOnlyTools"]
       53 GETIMPORT                        R5 K13 [table.clone]
       55 MOVE                             R6 R3
       56 CALL                             R5 1 1
       57 MOVE                             R2 R5
       58 MOVE                             R5 R4
       59 LOADNIL                          R6
       60 LOADNIL                          R7
       61 FORGPREP                         R5
       62 GETTABLE                         R10 R2 R9
       63 JUMPIFNOTEQKNIL                  R10 ; [+3]
       65 LOADB                            R10 1
       66 SETTABLE                         R10 R2 R9
       67 FORGLOOP                         R5 2 ; [-6]
       69 JUMP                             ; [+1]
       70 GETUPVAL                         R2 5
       71 GETUPVAL                         R3 7
       72 MOVE                             R4 R1
       73 MOVE                             R5 R2
       74 CALL                             R3 2 1
       75 MOVE                             R1 R3
       76 GETTABLEKS                       R2 R0 K14 ["assistantMode"]
       78 JUMPIFNOT                        R2 ; [+33]
       79 GETUPVAL                         R3 6
       80 GETTABLEKS                       R3 R3 K15 ["AssistantModeToolsAllowlist"]
       82 GETTABLEKS                       R4 R0 K14 ["assistantMode"]
       84 GETTABLE                         R2 R3 R4
       85 GETTABLEKS                       R3 R0 K9 ["isSubagent"]
       87 JUMPIFNOT                        R3 ; [+19]
       88 JUMPIFNOT                        R2 ; [+18]
       89 MOVE                             R3 R2
       90 GETUPVAL                         R4 6
       91 GETTABLEKS                       R4 R4 K10 ["SubagentOnlyTools"]
       93 GETIMPORT                        R5 K13 [table.clone]
       95 MOVE                             R6 R3
       96 CALL                             R5 1 1
       97 MOVE                             R2 R5
       98 GETIMPORT                        R5 K17 [table.move]
      100 MOVE                             R6 R4
      101 LOADN                            R7 1
      102 LENGTH                           R8 R4
      103 LENGTH                           R10 R2
      104 ADDK                             R9 R10 K18 [1]
      105 MOVE                             R10 R2
      106 CALL                             R5 5 0
      107 GETUPVAL                         R3 8
      108 MOVE                             R4 R1
      109 MOVE                             R5 R2
      110 CALL                             R3 2 1
      111 MOVE                             R1 R3
      112 GETUPVAL                         R2 2
      113 GETTABLEKS                       R2 R2 K19 ["FFlagAssistantMultiPlayerAgents"]
      115 JUMPIFNOT                        R2 ; [+27]
      116 GETTABLEKS                       R2 R0 K20 ["isMultiPlayerClientAgent"]
      118 JUMPIFNOT                        R2 ; [+24]
      119 GETUPVAL                         R2 8
      120 MOVE                             R3 R1
      121 GETUPVAL                         R4 6
      122 GETTABLEKS                       R4 R4 K21 ["MultiPlayerTestTools"]
      124 CALL                             R2 2 1
      125 MOVE                             R1 R2
      126 GETTABLEKS                       R2 R0 K22 ["isMultiPlayerClientAgentRunning"]
      128 JUMPIF                           R2 ; [+14]
      129 GETUPVAL                         R2 4
      130 MOVE                             R3 R1
      131 NEWTABLE                         R4 0 2
      133 GETUPVAL                         R5 9
      134 GETTABLEKS                       R5 R5 K23 ["MultiPlayerAgentsCommunication"]
      136 GETUPVAL                         R6 9
      137 GETTABLEKS                       R6 R6 K24 ["WaitForMultiPlayerAgentsCommunication"]
      139 SETLIST                          R4 R5 2 [1]
      141 CALL                             R2 2 1
      142 MOVE                             R1 R2
      143 NEWTABLE                         R2 0 0
      145 MOVE                             R3 R1
      146 LOADNIL                          R4
      147 LOADNIL                          R5
      148 FORGPREP                         R3
      149 GETUPVAL                         R8 10
      150 MOVE                             R9 R7
      151 CALL                             R8 1 1
      152 GETUPVAL                         R9 11
      153 GETTABLEKS                       R9 R9 K25 ["patchDefinitionWithAsyncArg"]
      155 MOVE                             R10 R8
      156 CALL                             R9 1 1
      157 MOVE                             R8 R9
      158 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
      160 MOVE                             R10 R2
      161 MOVE                             R11 R8
      162 GETIMPORT                        R9 K27 [table.insert]
      164 CALL                             R9 2 0
      165 FORGLOOP                         R3 2 ; [-17]
      167 MOVE                             R1 R2
      168 GETUPVAL                         R3 12
      169 MOVE                             R4 R1
      170 DUPTABLE                         R5 K31 [{["internal"] = True, ["useScreenCaptureSubagent"]}]
      171 GETTABLEKS                       R7 R0 K2 ["useInternalToolDefinitions"]
      173 JUMPIFNOT                        R7 ; [+2]
      174 LOADB                            R6 1
      175 JUMP                             ; [+1]
      176 LOADB                            R6 0
      177 SETTABLEKS                       R6 R5 K30 ["useScreenCaptureSubagent"]
      179 CALL                             R3 2 0
      180 DUPTABLE                         R3 K1 [{"tools"}]
      181 SETTABLEKS                       R1 R3 K0 ["tools"]
      183 RETURN                           R3 1

PROTO_19:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R2 K2 ["pong from "]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_serverInfo"]
        5 GETTABLEKS                       R3 R3 K4 ["name"]
        7 CONCAT                           R1 R2 R3
        8 SETTABLEKS                       R1 R0 K0 ["message"]
       10 RETURN                           R0 1

PROTO_20:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["params"]
        3 JUMPIFNOT                        R3 ; [+9]
        4 GETTABLEKS                       R3 R0 K0 ["params"]
        6 GETTABLEKS                       R3 R3 K1 ["_meta"]
        8 JUMPIFNOT                        R3 ; [+4]
        9 GETTABLEKS                       R3 R0 K0 ["params"]
       11 GETTABLEKS                       R2 R3 K1 ["_meta"]
       13 JUMPIF                           R2 ; [+2]
       14 NEWTABLE                         R2 0 0
       16 LOADB                            R3 1
       17 SETTABLEKS                       R3 R2 K2 ["isInternal"]
       19 GETUPVAL                         R3 0
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 RETURN                           R3 1

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected params to be present in tools/call request"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["name"]
       11 MOVE                             R5 R3
       12 JUMPIFNOT                        R5 ; [+9]
       13 FASTCALL1                        TYPEOF R3 ; [+3]
       14 MOVE                             R7 R3
       15 GETIMPORT                        R6 K6 [typeof]
       17 CALL                             R6 1 1
       18 JUMPIFEQKS                       R6 K7 ["string"] ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       24 LOADK                            R6 K8 ["Expected tool name to be a string"]
       25 GETIMPORT                        R4 K3 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R4 0
       29 DUPTABLE                         R5 K15 [{["name"], ["args"], ["meta"], ["extra"], ["listTools"], ["isInternal"] = True}]
       30 SETTABLEKS                       R3 R5 K4 ["name"]
       32 GETTABLEKS                       R6 R2 K16 ["arguments"]
       34 SETTABLEKS                       R6 R5 K9 ["args"]
       36 GETTABLEKS                       R6 R2 K17 ["_meta"]
       38 SETTABLEKS                       R6 R5 K10 ["meta"]
       40 SETTABLEKS                       R1 R5 K11 ["extra"]
       42 GETUPVAL                         R6 1
       43 SETTABLEKS                       R6 R5 K12 ["listTools"]
       45 CALL                             R4 1 1
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R5 R5 K18 ["FFlagDebugLogAssistantUI"]
       49 JUMPIFNOT                        R5 ; [+33]
       50 GETIMPORT                        R5 K20 [print]
       52 LOADK                            R6 K21 ["TOOL CALL FINISHED: %*"]
       53 MOVE                             R8 R3
       54 NAMECALL                         R6 R6 K22 ["format"]
       56 CALL                             R6 2 1
       57 CALL                             R5 1 0
       58 GETIMPORT                        R5 K20 [print]
       60 LOADK                            R6 K23 ["Args: %*"]
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R8 R8 K24 ["toString"]
       64 GETTABLEKS                       R9 R2 K16 ["arguments"]
       66 CALL                             R8 1 1
       67 NAMECALL                         R6 R6 K22 ["format"]
       69 CALL                             R6 2 1
       70 CALL                             R5 1 0
       71 GETIMPORT                        R5 K20 [print]
       73 LOADK                            R6 K25 ["Result: %*"]
       74 GETUPVAL                         R8 3
       75 GETTABLEKS                       R8 R8 K24 ["toString"]
       77 MOVE                             R9 R4
       78 CALL                             R8 1 1
       79 NAMECALL                         R6 R6 K22 ["format"]
       81 CALL                             R6 2 1
       82 CALL                             R5 1 0
       83 RETURN                           R4 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K5 [{["name"] = "RobloxStudio", ["version"] = "0.1.0"}]
        4 GETUPVAL                         R2 1
        5 CALL                             R0 2 1
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          UPVAL U13
       19 CAPTURE                          UPVAL U14
       20 DUPTABLE                         R4 K8 [{["method"] = "ping"}]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R0
       23 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       25 CALL                             R2 3 0
       26 DUPTABLE                         R4 K11 [{["method"] = "tools/list"}]
       27 NEWCLOSURE                       R5 P2
       28 CAPTURE                          VAL R1
       29 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       31 CALL                             R2 3 0
       32 DUPTABLE                         R4 K13 [{["method"] = "tools/call"}]
       33 NEWCLOSURE                       R5 P3
       34 CAPTURE                          UPVAL U15
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U16
       38 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       40 CALL                             R2 3 0
       41 RETURN                           R0 1

PROTO_23:
        0 GETGLOBAL                        R1 K0 ["getBuiltinServer"]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["registerServer"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R1 K2 ["connect"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["_oninitialize"]
        5 CALL                             R2 3 1
        6 GETTABLEKS                       R3 R2 K1 ["_meta"]
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 SETTABLEKS                       R3 R2 K1 ["_meta"]
       13 GETTABLEKS                       R3 R2 K1 ["_meta"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K2 ["get"]
       18 CALL                             R4 0 1
       19 GETTABLEKS                       R4 R4 K3 ["getStudioSessionId"]
       21 CALL                             R4 0 1
       22 SETTABLEKS                       R4 R3 K4 ["studioSessionId"]
       24 RETURN                           R2 1

PROTO_25:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R1 K2 ["pong from %*"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_serverInfo"]
        5 GETTABLEKS                       R3 R3 K4 ["name"]
        7 NAMECALL                         R1 R1 K5 ["format"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["message"]
       12 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["receiveRecord"]
        3 GETTABLEKS                       R2 R0 K1 ["params"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["receiveExecution"]
        3 GETTABLEKS                       R2 R0 K1 ["params"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["receiveSharingChange"]
        3 GETTABLEKS                       R2 R0 K1 ["params"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{[1] = False, ["useScreenCaptureSubagent"] = False}]
        5 CALL                             R1 2 0
        6 NEWTABLE                         R1 0 0
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETUPVAL                         R7 2
       13 MOVE                             R8 R6
       14 CALL                             R7 1 1
       15 GETUPVAL                         R8 3
       16 GETTABLEKS                       R8 R8 K4 ["patchDefinitionWithAsyncArg"]
       18 MOVE                             R9 R7
       19 CALL                             R8 1 1
       20 MOVE                             R7 R8
       21 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       23 MOVE                             R9 R1
       24 MOVE                             R10 R7
       25 GETIMPORT                        R8 K7 [table.insert]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R2 2 ; [-17]
       30 MOVE                             R0 R1
       31 GETUPVAL                         R2 4
       32 GETTABLEKS                       R2 R2 K8 ["FFlagAssistantMcpStudioIdRouting"]
       34 JUMPIFNOT                        R2 ; [+17]
       35 NEWTABLE                         R2 0 0
       37 MOVE                             R3 R0
       38 LOADNIL                          R4
       39 LOADNIL                          R5
       40 FORGPREP                         R3
       41 MOVE                             R9 R2
       42 GETUPVAL                         R10 5
       43 MOVE                             R11 R7
       44 CALL                             R10 1 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R8 K7 [table.insert]
       48 CALL                             R8 -1 0
       49 FORGLOOP                         R3 2 ; [-9]
       51 MOVE                             R0 R2
       52 DUPTABLE                         R2 K10 [{"tools"}]
       53 SETTABLEKS                       R0 R2 K9 ["tools"]
       55 RETURN                           R2 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected params to be present in tools/call request"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["_meta"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K5 ["isThirdPartyRequest"]
       17 GETTABLEKS                       R4 R2 K6 ["name"]
       19 MOVE                             R6 R4
       20 JUMPIFNOT                        R6 ; [+9]
       21 FASTCALL1                        TYPEOF R4 ; [+3]
       22 MOVE                             R8 R4
       23 GETIMPORT                        R7 K8 [typeof]
       25 CALL                             R7 1 1
       26 JUMPIFEQKS                       R7 K9 ["string"] ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       32 LOADK                            R7 K10 ["Expected tool name to be a string"]
       33 GETIMPORT                        R5 K3 [assert]
       35 CALL                             R5 2 0
       36 GETTABLEKS                       R5 R2 K11 ["arguments"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K12 ["get"]
       41 CALL                             R6 0 1
       42 GETTABLEKS                       R6 R6 K13 ["EventLogger"]
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K14 ["FFlagAssistantMcpStudioIdRouting"]
       47 JUMPIFNOT                        R7 ; [+13]
       48 GETUPVAL                         R7 2
       49 MOVE                             R8 R5
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K12 ["get"]
       53 CALL                             R9 0 1
       54 GETTABLEKS                       R9 R9 K15 ["getStudioSessionId"]
       56 CALL                             R9 0 -1
       57 CALL                             R7 -1 2
       58 JUMPIFNOT                        R8 ; [+1]
       59 RETURN                           R8 1
       60 MOVE                             R5 R7
       61 GETUPVAL                         R7 3
       62 LOADB                            R9 0
       63 NAMECALL                         R7 R7 K16 ["GenerateGUID"]
       65 CALL                             R7 2 1
       66 GETUPVAL                         R8 3
       67 LOADB                            R10 0
       68 NAMECALL                         R8 R8 K16 ["GenerateGUID"]
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R3 K17 ["toolId"]
       73 GETUPVAL                         R10 1
       74 GETTABLEKS                       R10 R10 K18 ["FFlagAssistantLogUnifiedActivitySessionId"]
       76 JUMPIF                           R10 ; [+2]
       77 LOADNIL                          R9
       78 JUMP                             ; [+15]
       79 GETUPVAL                         R11 0
       80 GETTABLEKS                       R11 R11 K12 ["get"]
       82 CALL                             R11 0 1
       83 GETTABLEKS                       R11 R11 K19 ["reportMcpToolCallAsync"]
       85 LOADB                            R12 0
       86 FASTPCALL                        pcall 2 ; [+2]
       87 GETIMPORT                        R10 K21 [pcall]
       89 CALL                             R10 2 2
       90 JUMPIFNOT                        R10 ; [+2]
       91 MOVE                             R9 R11
       92 JUMP                             ; [+1]
       93 LOADNIL                          R9
       94 GETTABLEKS                       R10 R6 K22 ["logToolStarted"]
       96 DUPTABLE                         R11 K32 [{["messageGuid"], ["sessionId"], ["toolId"], ["toolName"], ["clientName"], ["isThirdPartyRequest"] = True, ["isSlashCommand"] = False, ["input"], ["unifiedActivitySessionId"]}]
       97 SETTABLEKS                       R7 R11 K23 ["messageGuid"]
       99 GETUPVAL                         R13 4
      100 ORK                              R12 R13 K33 [""]
      101 SETTABLEKS                       R12 R11 K24 ["sessionId"]
      103 SETTABLEKS                       R8 R11 K17 ["toolId"]
      105 SETTABLEKS                       R4 R11 K25 ["toolName"]
      107 GETTABLEKS                       R12 R3 K34 ["client_name"]
      109 SETTABLEKS                       R12 R11 K26 ["clientName"]
      111 SETTABLEKS                       R5 R11 K30 ["input"]
      113 SETTABLEKS                       R9 R11 K31 ["unifiedActivitySessionId"]
      115 CALL                             R10 1 0
      116 GETUPVAL                         R10 5
      117 GETTABLEKS                       R10 R10 K35 ["getTimestampMilliseconds"]
      119 CALL                             R10 0 1
      120 LOADNIL                          R11
      121 GETUPVAL                         R13 6
      122 GETUPVAL                         R12 1
      123 GETTABLEKS                       R12 R12 K36 ["FFlagSkipExternalToolsNoDebugMode"]
      125 JUMPIFNOT                        R12 ; [+7]
      126 GETUPVAL                         R15 7
      127 GETTABLE                         R14 R15 R4
      128 NOT                              R12 R14
      129 JUMPIFNOT                        R12 ; [+3]
      130 MOVE                             R14 R13
      131 CALL                             R14 0 1
      132 MOVE                             R12 R14
      133 JUMPIFNOT                        R12 ; [+10]
      134 DUPTABLE                         R12 K39 [{["isError"] = True, ["content"]}]
      135 NEWTABLE                         R13 0 1
      137 DUPTABLE                         R14 K43 [{["type"] = "text", ["text"] = "Tool calls are not allowed while in Play mode."}]
      138 SETLIST                          R13 R14 1 [1]
      140 SETTABLEKS                       R13 R12 K38 ["content"]
      142 MOVE                             R11 R12
      143 JUMP                             ; [+85]
      144 GETUPVAL                         R12 1
      145 GETTABLEKS                       R12 R12 K44 ["FFlagAssistantMcpCapturePerTurn"]
      147 JUMPIFNOT                        R12 ; [+66]
      148 GETUPVAL                         R13 8
      149 DUPTABLE                         R14 K49 [{"name", "args", "meta", "extra", "listTools"}]
      150 SETTABLEKS                       R4 R14 K6 ["name"]
      152 SETTABLEKS                       R5 R14 K45 ["args"]
      154 SETTABLEKS                       R3 R14 K46 ["meta"]
      156 SETTABLEKS                       R1 R14 K47 ["extra"]
      158 GETUPVAL                         R15 9
      159 SETTABLEKS                       R15 R14 K48 ["listTools"]
      161 FASTPCALL                        pcall 2 ; [+2]
      162 GETIMPORT                        R12 K21 [pcall]
      164 CALL                             R12 2 2
      165 GETUPVAL                         R14 10
      166 GETTABLEKS                       R14 R14 K50 ["recordStudioToolExecution"]
      168 DUPTABLE                         R15 K54 [{"callId", "toolId", "toolName", "args", "result", "errorMessage"}]
      169 GETTABLEKS                       R18 R3 K55 ["roblox_call_id"]
      171 FASTCALL1                        TYPEOF R18 ; [+2]
      172 GETIMPORT                        R17 K8 [typeof]
      174 CALL                             R17 1 1
      175 JUMPIFNOTEQKS                    R17 K9 ["string"] ; [+4]
      177 GETTABLEKS                       R16 R3 K55 ["roblox_call_id"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R16
      181 SETTABLEKS                       R16 R15 K51 ["callId"]
      183 SETTABLEKS                       R8 R15 K17 ["toolId"]
      185 SETTABLEKS                       R4 R15 K25 ["toolName"]
      187 SETTABLEKS                       R5 R15 K45 ["args"]
      189 JUMPIFNOT                        R12 ; [+2]
      190 MOVE                             R16 R13
      191 JUMP                             ; [+1]
      192 LOADNIL                          R16
      193 SETTABLEKS                       R16 R15 K52 ["result"]
      195 JUMPIFNOT                        R12 ; [+2]
      196 LOADNIL                          R16
      197 JUMP                             ; [+5]
      198 FASTCALL1                        TOSTRING R13 ; [+3]
      199 MOVE                             R17 R13
      200 GETIMPORT                        R16 K57 [tostring]
      202 CALL                             R16 1 1
      203 SETTABLEKS                       R16 R15 K53 ["errorMessage"]
      205 CALL                             R14 1 0
      206 JUMPIF                           R12 ; [+5]
      207 GETIMPORT                        R14 K59 [error]
      209 MOVE                             R15 R13
      210 LOADN                            R16 0
      211 CALL                             R14 2 0
      212 MOVE                             R11 R13
      213 JUMP                             ; [+15]
      214 GETUPVAL                         R12 8
      215 DUPTABLE                         R13 K49 [{"name", "args", "meta", "extra", "listTools"}]
      216 SETTABLEKS                       R4 R13 K6 ["name"]
      218 SETTABLEKS                       R5 R13 K45 ["args"]
      220 SETTABLEKS                       R3 R13 K46 ["meta"]
      222 SETTABLEKS                       R1 R13 K47 ["extra"]
      224 GETUPVAL                         R14 9
      225 SETTABLEKS                       R14 R13 K48 ["listTools"]
      227 CALL                             R12 1 1
      228 MOVE                             R11 R12
      229 GETUPVAL                         R12 5
      230 GETTABLEKS                       R12 R12 K35 ["getTimestampMilliseconds"]
      232 CALL                             R12 0 1
      233 GETIMPORT                        R13 K62 [task.spawn]
      235 GETUPVAL                         R14 11
      236 LOADB                            R15 1
      237 CALL                             R13 2 0
      238 GETTABLEKS                       R13 R6 K63 ["logToolEnded"]
      240 DUPTABLE                         R14 K68 [{["messageGuid"], ["toolId"], ["toolName"], ["startTime"], ["startTimeAfterConfirmation"], ["endTime"], ["isError"], ["clientName"], ["isThirdPartyRequest"] = True, ["isSlashCommand"] = False, ["toolResultContent"], ["unifiedActivitySessionId"]}]
      241 SETTABLEKS                       R7 R14 K23 ["messageGuid"]
      243 SETTABLEKS                       R8 R14 K17 ["toolId"]
      245 SETTABLEKS                       R4 R14 K25 ["toolName"]
      247 SETTABLEKS                       R10 R14 K64 ["startTime"]
      249 SETTABLEKS                       R10 R14 K65 ["startTimeAfterConfirmation"]
      251 SETTABLEKS                       R12 R14 K66 ["endTime"]
      253 GETTABLEKS                       R16 R11 K37 ["isError"]
      255 ORK                              R15 R16 K29 [False]
      256 SETTABLEKS                       R15 R14 K37 ["isError"]
      258 GETTABLEKS                       R15 R3 K34 ["client_name"]
      260 SETTABLEKS                       R15 R14 K26 ["clientName"]
      262 GETTABLEKS                       R15 R11 K38 ["content"]
      264 SETTABLEKS                       R15 R14 K67 ["toolResultContent"]
      266 SETTABLEKS                       R9 R14 K31 ["unifiedActivitySessionId"]
      268 CALL                             R13 1 0
      269 GETUPVAL                         R13 12
      270 MOVE                             R14 R11
      271 CALL                             R13 1 1
      272 MOVE                             R11 R13
      273 RETURN                           R11 1

PROTO_32:
        0 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sendNotification"]
        3 DUPTABLE                         R3 K4 [{"jsonrpc", "method", "params"}]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K5 ["JSONRPC_VERSION"]
        7 SETTABLEKS                       R4 R3 K1 ["jsonrpc"]
        9 SETTABLEKS                       R0 R3 K2 ["method"]
       11 SETTABLEKS                       R1 R3 K3 ["params"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R4 K6 [PROTO_32]
       15 NAMECALL                         R2 R2 K7 ["catch"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isActive"]
        3 NAMECALL                         R0 R0 K1 ["get"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+12]
        7 GETUPVAL                         R0 1
        8 LOADN                            R2 0
        9 NAMECALL                         R0 R0 K2 ["set"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 2
       13 NEWTABLE                         R2 0 0
       15 NAMECALL                         R0 R0 K2 ["set"]
       17 CALL                             R0 2 0
       18 JUMP                             ; [+46]
       19 GETUPVAL                         R0 3
       20 NAMECALL                         R0 R0 K3 ["ping"]
       22 CALL                             R0 1 1
       23 NAMECALL                         R0 R0 K4 ["await"]
       25 CALL                             R0 1 2
       26 JUMPIFNOT                        R0 ; [+27]
       27 JUMPIFNOT                        R1 ; [+26]
       28 GETTABLEKS                       R2 R1 K5 ["_meta"]
       30 JUMPIFNOT                        R2 ; [+23]
       31 GETTABLEKS                       R2 R1 K5 ["_meta"]
       33 GETTABLEKS                       R2 R2 K6 ["clients"]
       35 JUMPIFNOT                        R2 ; [+18]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R5 R1 K5 ["_meta"]
       39 GETTABLEKS                       R5 R5 K6 ["clients"]
       41 LENGTH                           R4 R5
       42 NAMECALL                         R2 R2 K2 ["set"]
       44 CALL                             R2 2 0
       45 GETUPVAL                         R2 2
       46 GETTABLEKS                       R4 R1 K5 ["_meta"]
       48 GETTABLEKS                       R4 R4 K6 ["clients"]
       50 NAMECALL                         R2 R2 K2 ["set"]
       52 CALL                             R2 2 0
       53 JUMP                             ; [+11]
       54 GETUPVAL                         R2 1
       55 LOADN                            R4 0
       56 NAMECALL                         R2 R2 K2 ["set"]
       58 CALL                             R2 2 0
       59 GETUPVAL                         R2 2
       60 NEWTABLE                         R4 0 0
       62 NAMECALL                         R2 R2 K2 ["set"]
       64 CALL                             R2 2 0
       65 GETIMPORT                        R0 K9 [task.wait]
       67 LOADN                            R1 5
       68 CALL                             R0 1 0
       69 JUMPBACK                         ; [-70]
       70 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R1 R1 K1 ["EventLogger"]
        6 GETTABLEKS                       R2 R1 K2 ["logExternalServerConnected"]
        8 DUPTABLE                         R3 K4 [{"sessionId"}]
        9 GETUPVAL                         R5 1
       10 ORK                              R4 R5 K5 [""]
       11 SETTABLEKS                       R4 R3 K3 ["sessionId"]
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K6 ["FFlagAssistantMcpCapturePerTurn"]
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K7 ["setNotifier"]
       21 GETUPVAL                         R3 4
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 5
       24 JUMPIF                           R2 ; [+9]
       25 GETIMPORT                        R2 K10 [task.spawn]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          UPVAL U9
       32 CALL                             R2 1 1
       33 SETUPVAL                         R2 5
       34 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["connect"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantMcpCapturePerTurn"]
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["clearNotifier"]
       11 GETUPVAL                         R1 3
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 JUMPIFNOT                        R0 ; [+9]
       15 GETIMPORT                        R1 K5 [task.cancel]
       17 GETUPVAL                         R2 4
       18 FASTPCALL                        pcall 2 ; [+2]
       19 GETIMPORT                        R0 K7 [pcall]
       21 CALL                             R0 2 0
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 4
       24 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R2 R0 K0 ["transport"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["new"]
        5 DUPTABLE                         R4 K6 [{["name"] = "RobloxStudio", ["version"] = "0.1.0"}]
        6 GETUPVAL                         R5 1
        7 CALL                             R3 2 1
        8 GETTABLEKS                       R4 R2 K7 ["sessionId"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K1 ["new"]
       13 LOADN                            R6 0
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K1 ["new"]
       18 NEWTABLE                         R7 0 0
       20 CALL                             R6 1 1
       21 LOADNIL                          R7
       22 DUPTABLE                         R10 K10 [{["method"] = "initialize"}]
       23 NEWCLOSURE                       R11 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       28 CALL                             R8 3 0
       29 DUPTABLE                         R10 K13 [{["method"] = "ping"}]
       30 NEWCLOSURE                       R11 P1
       31 CAPTURE                          VAL R3
       32 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       34 CALL                             R8 3 0
       35 GETUPVAL                         R8 4
       36 GETTABLEKS                       R8 R8 K14 ["FFlagAssistantMcpCapturePerTurn"]
       38 JUMPIFNOT                        R8 ; [+33]
       39 DUPTABLE                         R10 K15 [{"method"}]
       40 GETUPVAL                         R11 5
       41 GETTABLEKS                       R11 R11 K16 ["CAPTURE_RECORD_METHOD"]
       43 SETTABLEKS                       R11 R10 K8 ["method"]
       45 DUPCLOSURE                       R11 K17 [PROTO_26]
       46 CAPTURE                          UPVAL U5
       47 NAMECALL                         R8 R3 K18 ["setNotificationHandler"]
       49 CALL                             R8 3 0
       50 DUPTABLE                         R10 K15 [{"method"}]
       51 GETUPVAL                         R11 5
       52 GETTABLEKS                       R11 R11 K19 ["CAPTURE_EXECUTION_METHOD"]
       54 SETTABLEKS                       R11 R10 K8 ["method"]
       56 DUPCLOSURE                       R11 K20 [PROTO_27]
       57 CAPTURE                          UPVAL U5
       58 NAMECALL                         R8 R3 K18 ["setNotificationHandler"]
       60 CALL                             R8 3 0
       61 DUPTABLE                         R10 K15 [{"method"}]
       62 GETUPVAL                         R11 5
       63 GETTABLEKS                       R11 R11 K21 ["CAPTURE_SHARING_METHOD"]
       65 SETTABLEKS                       R11 R10 K8 ["method"]
       67 DUPCLOSURE                       R11 K22 [PROTO_28]
       68 CAPTURE                          UPVAL U5
       69 NAMECALL                         R8 R3 K18 ["setNotificationHandler"]
       71 CALL                             R8 3 0
       72 DUPCLOSURE                       R8 K23 [PROTO_29]
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          UPVAL U9
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          UPVAL U10
       79 DUPTABLE                         R11 K25 [{["method"] = "tools/list"}]
       80 DUPCLOSURE                       R12 K26 [PROTO_30]
       81 CAPTURE                          VAL R8
       82 NAMECALL                         R9 R3 K11 ["setRequestHandler"]
       84 CALL                             R9 3 0
       85 DUPTABLE                         R11 K28 [{["method"] = "tools/call"}]
       86 NEWCLOSURE                       R12 P7
       87 CAPTURE                          UPVAL U3
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          UPVAL U11
       90 CAPTURE                          UPVAL U12
       91 CAPTURE                          VAL R4
       92 CAPTURE                          UPVAL U13
       93 CAPTURE                          VAL R1
       94 CAPTURE                          UPVAL U14
       95 CAPTURE                          UPVAL U15
       96 CAPTURE                          VAL R8
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          UPVAL U16
       99 CAPTURE                          UPVAL U17
      100 NAMECALL                         R9 R3 K11 ["setRequestHandler"]
      102 CALL                             R9 3 0
      103 NEWCLOSURE                       R9 P8
      104 CAPTURE                          VAL R2
      105 CAPTURE                          UPVAL U18
      106 GETTABLEKS                       R10 R3 K29 ["onServerInitialized"]
      108 NEWCLOSURE                       R12 P9
      109 CAPTURE                          UPVAL U3
      110 CAPTURE                          VAL R4
      111 CAPTURE                          UPVAL U4
      112 CAPTURE                          UPVAL U5
      113 CAPTURE                          VAL R9
      114 CAPTURE                          REF R7
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R3
      119 NAMECALL                         R10 R10 K30 ["Connect"]
      121 CALL                             R10 2 1
      122 GETUPVAL                         R11 19
      123 GETTABLEKS                       R11 R11 K31 ["registerServer"]
      125 MOVE                             R12 R3
      126 CALL                             R11 1 0
      127 DUPTABLE                         R11 K37 [{"promise", "server", "connectionCountObservable", "activeConnectionsObservable", "destructor"}]
      128 GETUPVAL                         R13 4
      129 GETTABLEKS                       R13 R13 K38 ["FFlagAssistantExternalMCPRetryOnStartFailure"]
      131 JUMPIFNOT                        R13 ; [+8]
      132 GETUPVAL                         R12 20
      133 GETTABLEKS                       R12 R12 K39 ["try"]
      135 NEWCLOSURE                       R13 P10
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R2
      138 CALL                             R12 1 1
      139 JUMP                             ; [+4]
      140 MOVE                             R14 R2
      141 NAMECALL                         R12 R3 K40 ["connect"]
      143 CALL                             R12 2 1
      144 SETTABLEKS                       R12 R11 K32 ["promise"]
      146 SETTABLEKS                       R3 R11 K33 ["server"]
      148 SETTABLEKS                       R5 R11 K34 ["connectionCountObservable"]
      150 SETTABLEKS                       R6 R11 K35 ["activeConnectionsObservable"]
      152 NEWCLOSURE                       R12 P11
      153 CAPTURE                          VAL R10
      154 CAPTURE                          UPVAL U4
      155 CAPTURE                          UPVAL U5
      156 CAPTURE                          VAL R9
      157 CAPTURE                          REF R7
      158 SETTABLEKS                       R12 R11 K36 ["destructor"]
      160 CLOSEUPVALS                      R7
      161 RETURN                           R11 1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADK                            R1 K1 ["Client->Side"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["new"]
        8 LOADK                            R2 K2 ["Server<-Side"]
        9 CALL                             R1 1 1
       10 MOVE                             R4 R1
       11 LOADB                            R5 0
       12 NAMECALL                         R2 R0 K3 ["bindPeer"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 2

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.WebStreamClientType.RawStream]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K4 ["CreateWebStreamClientInternal"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        4 SETTABLEKS                       R1 R0 K1 ["ALL_LOGGING_ENABLED"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K2 ["setStreamingClientCreationFunc"]
        9 DUPCLOSURE                       R1 K3 [PROTO_40]
       10 CAPTURE                          UPVAL U3
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["setMCPDestructing"]
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["FFlagMCPAssistantManagementMenu"]
       11 JUMPIFNOT                        R0 ; [+5]
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K2 ["close"]
       15 CALL                             R0 1 0
       16 JUMP                             ; [+4]
       17 GETUPVAL                         R0 4
       18 NAMECALL                         R0 R0 K2 ["close"]
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 5
       22 NAMECALL                         R0 R0 K2 ["close"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagMCPAssistantManagementMenu"]
        3 JUMPIFNOT                        R2 ; [+65]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["get"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["getIntegrationsAsync"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 MOVE                             R4 R3
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 GETTABLEKS                       R9 R8 K3 ["disabled"]
       19 JUMPIF                           R9 ; [+47]
       20 GETUPVAL                         R9 3
       21 GETTABLEKS                       R11 R8 K4 ["label"]
       23 GETTABLEKS                       R12 R8 K5 ["url"]
       25 NAMECALL                         R9 R9 K6 ["getOrCreateAuthorizer"]
       27 CALL                             R9 3 1
       28 LOADNIL                          R10
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R11 R11 K7 ["FFlagAssistantUseVariantHttpTransport"]
       32 JUMPIFNOT                        R11 ; [+9]
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R11 R11 K8 ["new"]
       36 GETTABLEKS                       R12 R8 K5 ["url"]
       38 MOVE                             R13 R9
       39 CALL                             R11 2 1
       40 MOVE                             R10 R11
       41 JUMP                             ; [+8]
       42 GETUPVAL                         R11 5
       43 GETTABLEKS                       R11 R11 K8 ["new"]
       45 GETTABLEKS                       R12 R8 K5 ["url"]
       47 MOVE                             R13 R9
       48 CALL                             R11 2 1
       49 MOVE                             R10 R11
       50 DUPTABLE                         R11 K12 [{"identifier", "transport", "clientOptions"}]
       51 GETTABLEKS                       R12 R8 K4 ["label"]
       53 SETTABLEKS                       R12 R11 K9 ["identifier"]
       55 GETTABLEKS                       R12 R10 K10 ["transport"]
       57 SETTABLEKS                       R12 R11 K10 ["transport"]
       59 GETUPVAL                         R12 6
       60 SETTABLEKS                       R12 R11 K11 ["clientOptions"]
       62 GETUPVAL                         R12 7
       63 MOVE                             R14 R11
       64 NAMECALL                         R12 R12 K13 ["addClient"]
       66 CALL                             R12 2 0
       67 FORGLOOP                         R4 2 ; [-51]
       69 GETUPVAL                         R2 7
       70 NAMECALL                         R2 R2 K14 ["connectAll"]
       72 CALL                             R2 1 1
       73 NAMECALL                         R2 R2 K15 ["await"]
       75 CALL                             R2 1 2
       76 JUMPIF                           R2 ; [+28]
       77 GETUPVAL                         R4 8
       78 CALL                             R4 0 1
       79 JUMPIFNOT                        R4 ; [+5]
       80 GETUPVAL                         R4 9
       81 GETTABLEKS                       R4 R4 K16 ["setMCPDestructing"]
       83 LOADB                            R5 1
       84 CALL                             R4 1 0
       85 GETUPVAL                         R4 0
       86 GETTABLEKS                       R4 R4 K0 ["FFlagMCPAssistantManagementMenu"]
       88 JUMPIFNOT                        R4 ; [+5]
       89 GETUPVAL                         R4 7
       90 NAMECALL                         R4 R4 K17 ["close"]
       92 CALL                             R4 1 0
       93 JUMP                             ; [+4]
       94 GETUPVAL                         R4 10
       95 NAMECALL                         R4 R4 K17 ["close"]
       97 CALL                             R4 1 0
       98 GETUPVAL                         R4 11
       99 NAMECALL                         R4 R4 K17 ["close"]
      101 CALL                             R4 1 0
      102 MOVE                             R4 R1
      103 MOVE                             R5 R3
      104 CALL                             R4 1 0
      105 GETUPVAL                         R4 0
      106 GETTABLEKS                       R4 R4 K18 ["FFlagDebugAssistantEval"]
      108 JUMPIFNOT                        R4 ; [+5]
      109 GETUPVAL                         R4 12
      110 GETTABLEKS                       R4 R4 K19 ["setMcpClient"]
      112 GETUPVAL                         R5 7
      113 CALL                             R4 1 0
      114 MOVE                             R4 R0
      115 GETUPVAL                         R5 7
      116 CALL                             R4 1 0
      117 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 LOADK                            R5 K1 ["Client->Side"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K0 ["new"]
        8 LOADK                            R6 K2 ["Server<-Side"]
        9 CALL                             R5 1 1
       10 MOVE                             R8 R5
       11 LOADB                            R9 0
       12 NAMECALL                         R6 R4 K3 ["bindPeer"]
       14 CALL                             R6 3 0
       15 MOVE                             R2 R4
       16 MOVE                             R3 R5
       17 GETGLOBAL                        R4 K4 ["startLocalServer"]
       19 GETTABLEKS                       R5 R3 K5 ["transport"]
       21 CALL                             R4 1 1
       22 NAMECALL                         R4 R4 K6 ["await"]
       24 CALL                             R4 1 2
       25 JUMPIF                           R4 ; [+6]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K7 ["reject"]
       29 LOADK                            R7 K8 ["Failed to start local MCP server"]
       30 CALL                             R6 1 -1
       31 RETURN                           R6 -1
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K0 ["new"]
       35 DUPTABLE                         R7 K11 [{"name", "version"}]
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K12 ["MCP_CLIENT_IDENTIFIER"]
       39 SETTABLEKS                       R8 R7 K9 ["name"]
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R8 R8 K13 ["JSONRPC_VERSION"]
       44 SETTABLEKS                       R8 R7 K10 ["version"]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 5
       48 CALL                             R7 0 1
       49 JUMPIFNOT                        R7 ; [+5]
       50 GETUPVAL                         R7 6
       51 GETTABLEKS                       R7 R7 K14 ["setMCPDestructing"]
       53 LOADB                            R8 0
       54 CALL                             R7 1 0
       55 NEWCLOSURE                       R7 P0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 MOVE                             R10 R7
       63 NAMECALL                         R8 R0 K15 ["Connect"]
       65 CALL                             R8 2 0
       66 DUPTABLE                         R8 K20 [{["identifier"], ["transport"], ["clientOptions"], ["useStaticToolNames"] = True}]
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K12 ["MCP_CLIENT_IDENTIFIER"]
       70 SETTABLEKS                       R9 R8 K16 ["identifier"]
       72 GETTABLEKS                       R9 R2 K5 ["transport"]
       74 SETTABLEKS                       R9 R8 K5 ["transport"]
       76 GETUPVAL                         R9 8
       77 SETTABLEKS                       R9 R8 K17 ["clientOptions"]
       79 MOVE                             R11 R8
       80 NAMECALL                         R9 R6 K21 ["addClient"]
       82 CALL                             R9 2 0
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K0 ["new"]
       86 NEWCLOSURE                       R10 P1
       87 CAPTURE                          UPVAL U7
       88 CAPTURE                          UPVAL U9
       89 CAPTURE                          UPVAL U10
       90 CAPTURE                          VAL R1
       91 CAPTURE                          UPVAL U11
       92 CAPTURE                          UPVAL U12
       93 CAPTURE                          UPVAL U8
       94 CAPTURE                          VAL R6
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R3
       99 CAPTURE                          UPVAL U13
      100 CALL                             R9 1 -1
      101 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["EvalDriver"]
       33 GETTABLEKS                       R5 R5 K15 ["EvalUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K13 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Flags"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K10 ["Packages"]
       47 GETTABLEKS                       R7 R7 K17 ["LuauPolyfill"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K13 ["Src"]
       54 GETTABLEKS                       R8 R8 K18 ["Host"]
       56 GETTABLEKS                       R8 R8 K19 ["McpCapture"]
       58 GETTABLEKS                       R8 R8 K20 ["McpCaptureController"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R0 K10 ["Packages"]
       65 GETTABLEKS                       R9 R9 K21 ["ModelContextProtocol"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R0 K13 ["Src"]
       72 GETTABLEKS                       R10 R10 K22 ["Util"]
       74 GETTABLEKS                       R10 R10 K23 ["StudioState"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K9 [require]
       79 GETTABLEKS                       R11 R0 K13 ["Src"]
       81 GETTABLEKS                       R11 R11 K22 ["Util"]
       83 GETTABLEKS                       R11 R11 K24 ["StudioTools"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R12 R0 K13 ["Src"]
       90 GETTABLEKS                       R12 R12 K25 ["Types"]
       92 CALL                             R11 1 1
       93 GETTABLEKS                       R12 R2 K26 ["ACPUtils"]
       95 GETTABLEKS                       R13 R2 K27 ["Utils"]
       97 GETTABLEKS                       R13 R13 K28 ["AsyncToolRunner"]
       99 GETTABLEKS                       R14 R2 K27 ["Utils"]
      101 GETTABLEKS                       R14 R14 K29 ["patchToolDefinition"]
      103 GETTABLEKS                       R15 R8 K22 ["Util"]
      105 GETTABLEKS                       R15 R15 K30 ["ToolResult"]
      107 GETTABLEKS                       R16 R2 K27 ["Utils"]
      109 GETTABLEKS                       R16 R16 K31 ["DataModelType"]
      111 GETTABLEKS                       R17 R2 K27 ["Utils"]
      113 GETTABLEKS                       R17 R17 K32 ["EvalController"]
      115 GETTABLEKS                       R18 R2 K33 ["UIToolRegistry"]
      117 GETTABLEKS                       R19 R2 K34 ["FlagUtils"]
      119 GETTABLEKS                       R19 R19 K35 ["getIsAssistantUseRemoteService"]
      121 GETTABLEKS                       R19 R19 K36 ["get"]
      123 GETTABLEKS                       R20 R2 K27 ["Utils"]
      125 GETTABLEKS                       R20 R20 K37 ["Tools"]
      127 GETTABLEKS                       R21 R8 K22 ["Util"]
      129 GETTABLEKS                       R21 R21 K38 ["Logging"]
      131 GETTABLEKS                       R22 R8 K25 ["Types"]
      133 GETTABLEKS                       R23 R8 K39 ["MultiplexedClient"]
      135 GETTABLEKS                       R24 R8 K22 ["Util"]
      137 GETTABLEKS                       R24 R24 K40 ["Observable"]
      139 GETTABLEKS                       R25 R8 K41 ["PeerTransport"]
      141 GETTABLEKS                       R26 R8 K42 ["Promise"]
      143 GETTABLEKS                       R27 R8 K43 ["Server"]
      145 GETTABLEKS                       R28 R8 K44 ["ServerRegistry"]
      147 GETTABLEKS                       R29 R8 K45 ["StreamableHttpClient"]
      149 GETTABLEKS                       R29 R29 K46 ["StreamableHttpClientTransport"]
      151 GETTABLEKS                       R30 R8 K47 ["ToolRegistry"]
      153 GETTABLEKS                       R31 R2 K48 ["IntegrationManagement"]
      155 GETTABLEKS                       R31 R31 K49 ["IntegrationManager"]
      157 GETTABLEKS                       R32 R2 K50 ["Guest"]
      159 GETTABLEKS                       R32 R32 K51 ["Environment"]
      161 GETTABLEKS                       R33 R8 K45 ["StreamableHttpClient"]
      163 GETTABLEKS                       R33 R33 K52 ["StreamingClientFactory"]
      165 GETTABLEKS                       R34 R8 K53 ["HttpVariantClientTransport"]
      167 GETTABLEKS                       R34 R34 K53 ["HttpVariantClientTransport"]
      169 GETTABLEKS                       R35 R2 K27 ["Utils"]
      171 GETTABLEKS                       R35 R35 K54 ["MultiDataModelToolUtil"]
      173 GETTABLEKS                       R36 R2 K27 ["Utils"]
      175 GETTABLEKS                       R36 R36 K55 ["Time"]
      177 GETTABLEKS                       R37 R2 K37 ["Tools"]
      179 GETTABLEKS                       R37 R37 K56 ["ToolTypes"]
      181 GETTABLEKS                       R37 R37 K57 ["ToolNames"]
      183 GETTABLEKS                       R38 R3 K58 ["join"]
      185 DUPTABLE                         R39 K60 [{"capabilities"}]
      186 DUPTABLE                         R40 K64 [{"experimental", "roots", "sampling"}]
      187 GETTABLEKS                       R41 R22 K65 ["emptyObject"]
      189 CALL                             R41 0 1
      190 SETTABLEKS                       R41 R40 K61 ["experimental"]
      192 GETTABLEKS                       R41 R22 K65 ["emptyObject"]
      194 CALL                             R41 0 1
      195 SETTABLEKS                       R41 R40 K62 ["roots"]
      197 GETTABLEKS                       R41 R22 K65 ["emptyObject"]
      199 CALL                             R41 0 1
      200 SETTABLEKS                       R41 R40 K63 ["sampling"]
      202 SETTABLEKS                       R40 R39 K59 ["capabilities"]
      204 DUPTABLE                         R40 K60 [{"capabilities"}]
      205 DUPTABLE                         R41 K69 [{"prompts", "resources", "tools"}]
      206 GETTABLEKS                       R42 R22 K65 ["emptyObject"]
      208 CALL                             R42 0 1
      209 SETTABLEKS                       R42 R41 K66 ["prompts"]
      211 GETTABLEKS                       R42 R22 K65 ["emptyObject"]
      213 CALL                             R42 0 1
      214 SETTABLEKS                       R42 R41 K67 ["resources"]
      216 DUPTABLE                         R42 K72 [{["listChanged"] = True}]
      217 SETTABLEKS                       R42 R41 K68 ["tools"]
      219 SETTABLEKS                       R41 R40 K59 ["capabilities"]
      221 GETIMPORT                        R41 K75 [table.freeze]
      223 NEWTABLE                         R42 64 0
      225 GETTABLEKS                       R43 R37 K76 ["OpenPlugin"]
      227 DUPTABLE                         R44 K79 [{"internal", "external"}]
      228 GETTABLEKS                       R45 R5 K80 ["FFlagAssistantActivatePluginTool"]
      230 SETTABLEKS                       R45 R44 K77 ["internal"]
      232 GETTABLEKS                       R45 R5 K80 ["FFlagAssistantActivatePluginTool"]
      234 SETTABLEKS                       R45 R44 K78 ["external"]
      236 SETTABLE                         R44 R42 R43
      237 GETTABLEKS                       R43 R37 K81 ["ListPluginActions"]
      239 DUPTABLE                         R44 K79 [{"internal", "external"}]
      240 GETTABLEKS                       R45 R5 K80 ["FFlagAssistantActivatePluginTool"]
      242 SETTABLEKS                       R45 R44 K77 ["internal"]
      244 GETTABLEKS                       R45 R5 K80 ["FFlagAssistantActivatePluginTool"]
      246 SETTABLEKS                       R45 R44 K78 ["external"]
      248 SETTABLE                         R44 R42 R43
      249 GETTABLEKS                       R43 R37 K82 ["AnimationGen"]
      251 DUPTABLE                         R44 K83 [{["internal"] = True, ["external"]}]
      252 GETTABLEKS                       R45 R5 K84 ["FFlagAssistantAnimationGenEnableExternalMCP"]
      254 SETTABLEKS                       R45 R44 K78 ["external"]
      256 SETTABLE                         R44 R42 R43
      257 GETTABLEKS                       R43 R37 K85 ["AskInput"]
      259 DUPTABLE                         R44 K87 [{["internal"] = True, ["external"] = False}]
      260 SETTABLE                         R44 R42 R43
      261 GETTABLEKS                       R43 R37 K88 ["AssetInsert"]
      263 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      264 SETTABLE                         R44 R42 R43
      265 GETTABLEKS                       R43 R37 K90 ["AssetQuality"]
      267 DUPTABLE                         R44 K79 [{"internal", "external"}]
      268 GETTABLEKS                       R45 R5 K91 ["FFlagAssistantAssetQualityTool"]
      270 SETTABLEKS                       R45 R44 K77 ["internal"]
      272 GETTABLEKS                       R45 R5 K91 ["FFlagAssistantAssetQualityTool"]
      274 SETTABLEKS                       R45 R44 K78 ["external"]
      276 SETTABLE                         R44 R42 R43
      277 GETTABLEKS                       R43 R37 K92 ["AssetSearch"]
      279 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      280 SETTABLE                         R44 R42 R43
      281 GETTABLEKS                       R43 R37 K93 ["AvatarAutoSetup"]
      283 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      284 SETTABLE                         R44 R42 R43
      285 GETTABLEKS                       R43 R37 K94 ["AvatarGen"]
      287 DUPTABLE                         R44 K79 [{"internal", "external"}]
      288 GETTABLEKS                       R45 R5 K95 ["FFlagAssistantAvatarGenTool"]
      290 SETTABLEKS                       R45 R44 K77 ["internal"]
      292 GETTABLEKS                       R45 R5 K95 ["FFlagAssistantAvatarGenTool"]
      294 SETTABLEKS                       R45 R44 K78 ["external"]
      296 SETTABLE                         R44 R42 R43
      297 GETTABLEKS                       R43 R37 K96 ["CapturePluginGui"]
      299 DUPTABLE                         R44 K97 [{["internal"] = False, ["external"]}]
      300 GETTABLEKS                       R45 R5 K98 ["FFlagAssistantListPluginGuisTool"]
      302 JUMPIFNOT                        R45 ; [+2]
      303 GETTABLEKS                       R45 R5 K99 ["FFlagAssistantCapturePluginGuiTool"]
      305 SETTABLEKS                       R45 R44 K78 ["external"]
      307 SETTABLE                         R44 R42 R43
      308 GETTABLEKS                       R43 R37 K100 ["CharacterNavigation"]
      310 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      311 SETTABLE                         R44 R42 R43
      312 GETTABLEKS                       R43 R37 K101 ["CompleteTodoItems"]
      314 DUPTABLE                         R44 K87 [{["internal"] = True, ["external"] = False}]
      315 SETTABLE                         R44 R42 R43
      316 GETTABLEKS                       R43 R37 K102 ["CreateSkill"]
      318 DUPTABLE                         R44 K83 [{["internal"] = True, ["external"]}]
      319 GETTABLEKS                       R45 R5 K103 ["FFlagAssistantMcpListSkillsTool"]
      321 SETTABLEKS                       R45 R44 K78 ["external"]
      323 SETTABLE                         R44 R42 R43
      324 GETTABLEKS                       R43 R37 K104 ["EditSkill"]
      326 DUPTABLE                         R44 K83 [{["internal"] = True, ["external"]}]
      327 GETTABLEKS                       R45 R5 K103 ["FFlagAssistantMcpListSkillsTool"]
      329 SETTABLEKS                       R45 R44 K78 ["external"]
      331 SETTABLE                         R44 R42 R43
      332 GETTABLEKS                       R43 R37 K105 ["ExecuteLuau"]
      334 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      335 SETTABLE                         R44 R42 R43
      336 GETTABLEKS                       R43 R37 K106 ["FileSearch"]
      338 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      339 SETTABLE                         R44 R42 R43
      340 GETTABLEKS                       R43 R37 K107 ["FinalizePlan"]
      342 DUPTABLE                         R44 K87 [{["internal"] = True, ["external"] = False}]
      343 SETTABLE                         R44 R42 R43
      344 GETTABLEKS                       R43 R37 K108 ["FromHistory"]
      346 DUPTABLE                         R44 K87 [{["internal"] = True, ["external"] = False}]
      347 SETTABLE                         R44 R42 R43
      348 GETTABLEKS                       R43 R37 K109 ["GameTree"]
      350 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      351 SETTABLE                         R44 R42 R43
      352 GETTABLEKS                       R43 R37 K110 ["GenerateScene"]
      354 DUPTABLE                         R44 K79 [{"internal", "external"}]
      355 GETTABLEKS                       R45 R5 K111 ["FFlagAssistantGenerateLayoutTool"]
      357 SETTABLEKS                       R45 R44 K77 ["internal"]
      359 GETTABLEKS                       R45 R5 K111 ["FFlagAssistantGenerateLayoutTool"]
      361 SETTABLEKS                       R45 R44 K78 ["external"]
      363 SETTABLE                         R44 R42 R43
      364 GETTABLEKS                       R43 R37 K112 ["GetConsoleOutput"]
      366 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      367 SETTABLE                         R44 R42 R43
      368 GETTABLEKS                       R43 R37 K113 ["GetStudioState"]
      370 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      371 SETTABLE                         R44 R42 R43
      372 GETTABLEKS                       R43 R37 K114 ["GrepSearch"]
      374 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      375 SETTABLE                         R44 R42 R43
      376 GETTABLEKS                       R43 R37 K115 ["HttpGet"]
      378 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      379 SETTABLE                         R44 R42 R43
      380 GETTABLEKS                       R43 R37 K116 ["InspectInstance"]
      382 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      383 SETTABLE                         R44 R42 R43
      384 GETTABLEKS                       R43 R37 K117 ["JobWait"]
      386 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      387 SETTABLE                         R44 R42 R43
      388 GETTABLEKS                       R43 R37 K118 ["ListPlace"]
      390 DUPTABLE                         R44 K97 [{["internal"] = False, ["external"]}]
      391 GETTABLEKS                       R45 R5 K119 ["FFlagAssistantMcpListPlaceTool"]
      393 SETTABLEKS                       R45 R44 K78 ["external"]
      395 SETTABLE                         R44 R42 R43
      396 GETTABLEKS                       R43 R37 K120 ["ListPluginGuis"]
      398 DUPTABLE                         R44 K79 [{"internal", "external"}]
      399 GETTABLEKS                       R45 R5 K98 ["FFlagAssistantListPluginGuisTool"]
      401 SETTABLEKS                       R45 R44 K77 ["internal"]
      403 GETTABLEKS                       R45 R5 K98 ["FFlagAssistantListPluginGuisTool"]
      405 SETTABLEKS                       R45 R44 K78 ["external"]
      407 SETTABLE                         R44 R42 R43
      408 GETTABLEKS                       R43 R37 K121 ["ListRobloxStudios"]
      410 DUPTABLE                         R44 K97 [{["internal"] = False, ["external"]}]
      411 GETTABLEKS                       R45 R5 K122 ["FFlagAssistantMcpListStudiosTool"]
      413 SETTABLEKS                       R45 R44 K78 ["external"]
      415 SETTABLE                         R44 R42 R43
      416 GETTABLEKS                       R43 R37 K123 ["ListSkills"]
      418 DUPTABLE                         R44 K97 [{["internal"] = False, ["external"]}]
      419 GETTABLEKS                       R45 R5 K103 ["FFlagAssistantMcpListSkillsTool"]
      421 SETTABLEKS                       R45 R44 K78 ["external"]
      423 SETTABLE                         R44 R42 R43
      424 GETTABLEKS                       R43 R37 K124 ["MaterialGen"]
      426 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      427 SETTABLE                         R44 R42 R43
      428 GETTABLEKS                       R43 R37 K125 ["MeshGen"]
      430 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      431 SETTABLE                         R44 R42 R43
      432 GETTABLEKS                       R43 R37 K126 ["MultiEdit"]
      434 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      435 SETTABLE                         R44 R42 R43
      436 GETTABLEKS                       R43 R37 K127 ["MultiPlayerAgentsCommunication"]
      438 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      439 SETTABLE                         R44 R42 R43
      440 GETTABLEKS                       R43 R37 K128 ["OpenCloudInvoke"]
      442 DUPTABLE                         R44 K97 [{["internal"] = False, ["external"]}]
      443 GETTABLEKS                       R45 R5 K129 ["FFlagAssistantOpenCloudInvokeTool"]
      445 JUMPIFNOT                        R45 ; [+2]
      446 GETTABLEKS                       R45 R5 K130 ["EngineFeatureAssistantExecuteLuauArguments"]
      448 SETTABLEKS                       R45 R44 K78 ["external"]
      450 SETTABLE                         R44 R42 R43
      451 GETTABLEKS                       R43 R37 K131 ["PlaytestLook"]
      453 DUPTABLE                         R44 K87 [{["internal"] = True, ["external"] = False}]
      454 SETTABLE                         R44 R42 R43
      455 GETTABLEKS                       R43 R37 K132 ["PrimitiveGen"]
      457 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      458 SETTABLE                         R44 R42 R43
      459 GETTABLEKS                       R43 R37 K133 ["QuestionAnswer"]
      461 DUPTABLE                         R44 K87 [{["internal"] = True, ["external"] = False}]
      462 SETTABLE                         R44 R42 R43
      463 GETTABLEKS                       R43 R37 K134 ["ReadFile"]
      465 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      466 SETTABLE                         R44 R42 R43
      467 GETTABLEKS                       R43 R37 K135 ["SavePlace"]
      469 DUPTABLE                         R44 K79 [{"internal", "external"}]
      470 GETTABLEKS                       R45 R5 K136 ["FFlagAssistantSavePlaceTool"]
      472 SETTABLEKS                       R45 R44 K77 ["internal"]
      474 GETTABLEKS                       R45 R5 K136 ["FFlagAssistantSavePlaceTool"]
      476 SETTABLEKS                       R45 R44 K78 ["external"]
      478 SETTABLE                         R44 R42 R43
      479 GETTABLEKS                       R43 R37 K137 ["ScreenCapture"]
      481 DUPTABLE                         R44 K138 [{["internal"] = False, ["external"] = True}]
      482 SETTABLE                         R44 R42 R43
      483 GETTABLEKS                       R43 R37 K139 ["SegmentMesh"]
      485 DUPTABLE                         R44 K79 [{"internal", "external"}]
      486 GETTABLEKS                       R45 R5 K140 ["FFlagAssistantSegmentMeshTool"]
      488 SETTABLEKS                       R45 R44 K77 ["internal"]
      490 GETTABLEKS                       R45 R5 K140 ["FFlagAssistantSegmentMeshTool"]
      492 SETTABLEKS                       R45 R44 K78 ["external"]
      494 SETTABLE                         R44 R42 R43
      495 GETTABLEKS                       R43 R37 K141 ["Skill"]
      497 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      498 SETTABLE                         R44 R42 R43
      499 GETTABLEKS                       R43 R37 K142 ["StartMultiPlayerAgents"]
      501 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      502 SETTABLE                         R44 R42 R43
      503 GETTABLEKS                       R43 R37 K143 ["StartStopPlay"]
      505 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      506 SETTABLE                         R44 R42 R43
      507 GETTABLEKS                       R43 R37 K144 ["StopMultiPlayerAgents"]
      509 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      510 SETTABLE                         R44 R42 R43
      511 GETTABLEKS                       R43 R37 K145 ["StoreImage"]
      513 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      514 SETTABLE                         R44 R42 R43
      515 GETTABLEKS                       R43 R37 K146 ["Subagent"]
      517 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      518 SETTABLE                         R44 R42 R43
      519 GETTABLEKS                       R43 R37 K147 ["SubmitFeedback"]
      521 DUPTABLE                         R44 K97 [{["internal"] = False, ["external"]}]
      522 GETTABLEKS                       R45 R5 K148 ["FFlagAssistantMcpSubmitFeedbackTool"]
      524 SETTABLEKS                       R45 R44 K78 ["external"]
      526 SETTABLE                         R44 R42 R43
      527 GETTABLEKS                       R43 R37 K149 ["TextureGen"]
      529 DUPTABLE                         R44 K79 [{"internal", "external"}]
      530 GETTABLEKS                       R45 R5 K150 ["FFlagAssistantTextureGenTool"]
      532 SETTABLEKS                       R45 R44 K77 ["internal"]
      534 GETTABLEKS                       R45 R5 K150 ["FFlagAssistantTextureGenTool"]
      536 SETTABLEKS                       R45 R44 K78 ["external"]
      538 SETTABLE                         R44 R42 R43
      539 GETTABLEKS                       R43 R37 K151 ["UpdatePlan"]
      541 DUPTABLE                         R44 K87 [{["internal"] = True, ["external"] = False}]
      542 SETTABLE                         R44 R42 R43
      543 GETTABLEKS                       R43 R37 K152 ["UploadImage"]
      545 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      546 SETTABLE                         R44 R42 R43
      547 GETTABLEKS                       R43 R37 K153 ["UserKeyboardInput"]
      549 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      550 SETTABLE                         R44 R42 R43
      551 GETTABLEKS                       R43 R37 K154 ["UserMouseInput"]
      553 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      554 SETTABLE                         R44 R42 R43
      555 GETTABLEKS                       R43 R37 K155 ["VideoCapture"]
      557 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      558 SETTABLE                         R44 R42 R43
      559 GETTABLEKS                       R43 R37 K156 ["WaitForMultiPlayerAgentsCommunication"]
      561 DUPTABLE                         R44 K89 [{["internal"] = True, ["external"] = True}]
      562 SETTABLE                         R44 R42 R43
      563 CALL                             R41 1 1
      564 GETIMPORT                        R42 K75 [table.freeze]
      566 NEWTABLE                         R43 2 0
      568 GETTABLEKS                       R44 R37 K128 ["OpenCloudInvoke"]
      570 LOADB                            R45 1
      571 SETTABLE                         R45 R43 R44
      572 GETTABLEKS                       R44 R37 K147 ["SubmitFeedback"]
      574 LOADB                            R45 1
      575 SETTABLE                         R45 R43 R44
      576 CALL                             R42 1 1
      577 GETIMPORT                        R43 K75 [table.freeze]
      579 NEWTABLE                         R44 4 0
      581 GETTABLEKS                       R45 R37 K118 ["ListPlace"]
      583 LOADB                            R46 1
      584 SETTABLE                         R46 R44 R45
      585 GETTABLEKS                       R45 R37 K121 ["ListRobloxStudios"]
      587 LOADB                            R46 1
      588 SETTABLE                         R46 R44 R45
      589 GETTABLEKS                       R45 R37 K147 ["SubmitFeedback"]
      591 LOADB                            R46 1
      592 SETTABLE                         R46 R44 R45
      593 CALL                             R43 1 1
      594 GETIMPORT                        R44 K75 [table.freeze]
      596 NEWTABLE                         R45 2 0
      598 GETTABLEKS                       R46 R37 K121 ["ListRobloxStudios"]
      600 LOADB                            R47 1
      601 SETTABLE                         R47 R45 R46
      602 GETTABLEKS                       R46 R37 K147 ["SubmitFeedback"]
      604 LOADB                            R47 1
      605 SETTABLE                         R47 R45 R46
      606 CALL                             R44 1 1
      607 DUPCLOSURE                       R45 K157 [PROTO_0]
      608 CAPTURE                          VAL R5
      609 CAPTURE                          VAL R44
      610 LOADNIL                          R46
      611 NEWCLOSURE                       R47 P1
      612 CAPTURE                          REF R46
      613 DUPCLOSURE                       R48 K158 [PROTO_2]
      614 DUPCLOSURE                       R49 K159 [PROTO_3]
      615 DUPCLOSURE                       R50 K160 [PROTO_4]
      616 DUPCLOSURE                       R51 K161 [PROTO_5]
      617 DUPCLOSURE                       R52 K162 [PROTO_6]
      618 CAPTURE                          VAL R48
      619 DUPCLOSURE                       R53 K163 [PROTO_7]
      620 CAPTURE                          VAL R30
      621 CAPTURE                          VAL R41
      622 DUPCLOSURE                       R54 K164 [PROTO_8]
      623 CAPTURE                          VAL R30
      624 CAPTURE                          VAL R41
      625 DUPCLOSURE                       R55 K165 [PROTO_11]
      626 CAPTURE                          VAL R42
      627 CAPTURE                          VAL R15
      628 CAPTURE                          VAL R5
      629 CAPTURE                          VAL R43
      630 CAPTURE                          VAL R9
      631 CAPTURE                          VAL R16
      632 CAPTURE                          VAL R30
      633 CAPTURE                          VAL R37
      634 CAPTURE                          VAL R18
      635 CAPTURE                          VAL R35
      636 CAPTURE                          VAL R38
      637 CAPTURE                          VAL R55
      638 CAPTURE                          VAL R13
      639 DUPCLOSURE                       R56 K166 [PROTO_12]
      640 CAPTURE                          VAL R18
      641 CAPTURE                          VAL R32
      642 CAPTURE                          VAL R16
      643 CAPTURE                          VAL R14
      644 CAPTURE                          VAL R37
      645 DUPCLOSURE                       R57 K167 [PROTO_13]
      646 CAPTURE                          VAL R37
      647 CAPTURE                          VAL R14
      648 DUPCLOSURE                       R58 K168 [PROTO_14]
      649 CAPTURE                          VAL R26
      650 CAPTURE                          VAL R22
      651 DUPCLOSURE                       R59 K169 [PROTO_15]
      652 CAPTURE                          VAL R5
      653 CAPTURE                          VAL R32
      654 DUPCLOSURE                       R60 K170 [PROTO_16]
      655 CAPTURE                          VAL R18
      656 DUPCLOSURE                       R61 K171 [PROTO_17]
      657 NEWCLOSURE                       R62 P16
      658 CAPTURE                          VAL R27
      659 CAPTURE                          VAL R40
      660 CAPTURE                          VAL R54
      661 CAPTURE                          VAL R30
      662 CAPTURE                          VAL R5
      663 CAPTURE                          VAL R17
      664 CAPTURE                          VAL R49
      665 CAPTURE                          REF R46
      666 CAPTURE                          VAL R10
      667 CAPTURE                          VAL R48
      668 CAPTURE                          VAL R52
      669 CAPTURE                          VAL R37
      670 CAPTURE                          VAL R56
      671 CAPTURE                          VAL R13
      672 CAPTURE                          VAL R60
      673 CAPTURE                          VAL R55
      674 CAPTURE                          VAL R20
      675 SETGLOBAL                        R62 K172 ["getBuiltinServer"]
      677 DUPCLOSURE                       R62 K173 [PROTO_23]
      678 CAPTURE                          VAL R28
      679 SETGLOBAL                        R62 K174 ["startLocalServer"]
      681 DUPCLOSURE                       R62 K175 [PROTO_38]
      682 CAPTURE                          VAL R27
      683 CAPTURE                          VAL R40
      684 CAPTURE                          VAL R24
      685 CAPTURE                          VAL R32
      686 CAPTURE                          VAL R5
      687 CAPTURE                          VAL R7
      688 CAPTURE                          VAL R53
      689 CAPTURE                          VAL R60
      690 CAPTURE                          VAL R56
      691 CAPTURE                          VAL R13
      692 CAPTURE                          VAL R57
      693 CAPTURE                          VAL R58
      694 CAPTURE                          VAL R1
      695 CAPTURE                          VAL R36
      696 CAPTURE                          VAL R44
      697 CAPTURE                          VAL R55
      698 CAPTURE                          VAL R59
      699 CAPTURE                          VAL R61
      700 CAPTURE                          VAL R22
      701 CAPTURE                          VAL R28
      702 CAPTURE                          VAL R26
      703 SETGLOBAL                        R62 K176 ["startExternalServer"]
      705 DUPCLOSURE                       R62 K177 [PROTO_39]
      706 CAPTURE                          VAL R25
      707 DUPCLOSURE                       R63 K178 [PROTO_41]
      708 CAPTURE                          VAL R21
      709 CAPTURE                          VAL R5
      710 CAPTURE                          VAL R33
      711 CAPTURE                          VAL R1
      712 DUPCLOSURE                       R64 K179 [PROTO_44]
      713 CAPTURE                          VAL R25
      714 CAPTURE                          VAL R26
      715 CAPTURE                          VAL R23
      716 CAPTURE                          VAL R11
      717 CAPTURE                          VAL R22
      718 CAPTURE                          VAL R19
      719 CAPTURE                          VAL R12
      720 CAPTURE                          VAL R5
      721 CAPTURE                          VAL R39
      722 CAPTURE                          VAL R32
      723 CAPTURE                          VAL R31
      724 CAPTURE                          VAL R34
      725 CAPTURE                          VAL R29
      726 CAPTURE                          VAL R4
      727 DUPTABLE                         R65 K191 [{["promiseMcpHost"], ["configureModelContextProtocol"], ["startLocalServer"], ["startExternalServer"], ["setToolEnabledStates"], ["TOOL_AVAILABILITY"], ["callTool"], ["isBlockedInPlayMode"], ["patchToolDefinitionWithStudioId"], ["resolveStudioIdToolCall"], ["reportMcpToolCall"], ["STUDIO_SESSION_MISMATCH_CODE"] = -32010}]
      728 SETTABLEKS                       R64 R65 K180 ["promiseMcpHost"]
      730 SETTABLEKS                       R63 R65 K181 ["configureModelContextProtocol"]
      732 GETGLOBAL                        R66 K174 ["startLocalServer"]
      734 SETTABLEKS                       R66 R65 K174 ["startLocalServer"]
      736 GETGLOBAL                        R66 K176 ["startExternalServer"]
      738 SETTABLEKS                       R66 R65 K176 ["startExternalServer"]
      740 SETTABLEKS                       R47 R65 K182 ["setToolEnabledStates"]
      742 SETTABLEKS                       R41 R65 K183 ["TOOL_AVAILABILITY"]
      744 SETTABLEKS                       R55 R65 K184 ["callTool"]
      746 SETTABLEKS                       R45 R65 K185 ["isBlockedInPlayMode"]
      748 SETTABLEKS                       R57 R65 K186 ["patchToolDefinitionWithStudioId"]
      750 SETTABLEKS                       R58 R65 K187 ["resolveStudioIdToolCall"]
      752 SETTABLEKS                       R59 R65 K188 ["reportMcpToolCall"]
      754 CLOSEUPVALS                      R46
      755 RETURN                           R65 1
