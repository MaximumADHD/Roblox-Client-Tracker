PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["_name"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K0 ["_tabs"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K1 ["_tabIndex"]
        8 GETTABLE                         R4 R5 R6
        9 GETTABLEKS                       R4 R4 K2 ["ToolRegistry"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R0
       13 CALL                             R3 2 -1
       14 NAMECALL                         R1 R1 K3 ["setToolIndex"]
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["_tabRegistry"]
        4 GETTABLE                         R3 R4 R0
        5 NAMECALL                         R1 R1 K1 ["setTabIndex"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_name"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["_tabRegistry"]
        3 GETTABLE                         R2 R3 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["_tabs"]
        8 GETTABLE                         R4 R5 R2
        9 GETTABLEKS                       R4 R4 K2 ["ToolRegistry"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R1
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 0
       15 MOVE                             R6 R2
       16 MOVE                             R7 R3
       17 NAMECALL                         R4 R4 K3 ["setTabAndToolIndex"]
       19 CALL                             R4 3 0
       20 RETURN                           R0 0

PROTO_5:
        0 JUMPIF                           R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["getTool"]
        4 CALL                             R1 1 1
        5 NAMECALL                         R1 R1 K1 ["reportAnalytics"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R7 K4 [{"_mocking", "OnToolChanged", "OnToolIndexChanged", "OnTabIndexChanged"}]
        1 SETTABLEKS                       R5 R7 K0 ["_mocking"]
        3 GETUPVAL                         R8 0
        4 GETTABLEKS                       R8 R8 K5 ["new"]
        6 CALL                             R8 0 1
        7 SETTABLEKS                       R8 R7 K1 ["OnToolChanged"]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R8 R8 K5 ["new"]
       12 CALL                             R8 0 1
       13 SETTABLEKS                       R8 R7 K2 ["OnToolIndexChanged"]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K5 ["new"]
       18 CALL                             R8 0 1
       19 SETTABLEKS                       R8 R7 K3 ["OnTabIndexChanged"]
       21 GETUPVAL                         R8 1
       22 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
       24 GETIMPORT                        R6 K7 [setmetatable]
       26 CALL                             R6 2 1
       27 NEWTABLE                         R7 0 0
       29 NEWTABLE                         R8 0 0
       31 GETUPVAL                         R9 2
       32 LOADNIL                          R10
       33 LOADNIL                          R11
       34 FORGPREP                         R9
       35 NAMECALL                         R14 R13 K5 ["new"]
       37 CALL                             R14 1 1
       38 DUPTABLE                         R17 K14 [{"Analytics", "Localization", "PluginController", "ShortcutController", "Stylizer", "ToolController"}]
       39 SETTABLEKS                       R2 R17 K8 ["Analytics"]
       41 SETTABLEKS                       R3 R17 K9 ["Localization"]
       43 SETTABLEKS                       R0 R17 K10 ["PluginController"]
       45 SETTABLEKS                       R1 R17 K11 ["ShortcutController"]
       47 SETTABLEKS                       R4 R17 K12 ["Stylizer"]
       49 DUPTABLE                         R18 K18 [{"selectTool", "selectTab", "selectTabAndTool"}]
       50 NEWCLOSURE                       R19 P0
       51 CAPTURE                          VAL R6
       52 CAPTURE                          UPVAL U3
       53 SETTABLEKS                       R19 R18 K15 ["selectTool"]
       55 NEWCLOSURE                       R19 P1
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R19 R18 K16 ["selectTab"]
       59 NEWCLOSURE                       R19 P2
       60 CAPTURE                          VAL R6
       61 CAPTURE                          UPVAL U3
       62 SETTABLEKS                       R19 R18 K17 ["selectTabAndTool"]
       64 SETTABLEKS                       R18 R17 K13 ["ToolController"]
       66 DUPTABLE                         R18 K24 [{"ChangeHistoryService", "CoreGui", "Selection", "SmoothVoxelsUpgraderService", "Terrain"}]
       67 GETIMPORT                        R19 K26 [game]
       69 LOADK                            R21 K19 ["ChangeHistoryService"]
       70 NAMECALL                         R19 R19 K27 ["GetService"]
       72 CALL                             R19 2 1
       73 SETTABLEKS                       R19 R18 K19 ["ChangeHistoryService"]
       75 GETIMPORT                        R19 K26 [game]
       77 LOADK                            R21 K20 ["CoreGui"]
       78 NAMECALL                         R19 R19 K27 ["GetService"]
       80 CALL                             R19 2 1
       81 SETTABLEKS                       R19 R18 K20 ["CoreGui"]
       83 GETIMPORT                        R19 K26 [game]
       85 LOADK                            R21 K21 ["Selection"]
       86 NAMECALL                         R19 R19 K27 ["GetService"]
       88 CALL                             R19 2 1
       89 SETTABLEKS                       R19 R18 K21 ["Selection"]
       91 GETUPVAL                         R20 4
       92 CALL                             R20 0 1
       93 JUMPIFNOT                        R20 ; [+7]
       94 GETIMPORT                        R19 K26 [game]
       96 LOADK                            R21 K22 ["SmoothVoxelsUpgraderService"]
       97 NAMECALL                         R19 R19 K27 ["GetService"]
       99 CALL                             R19 2 1
      100 JUMP                             ; [+1]
      101 LOADNIL                          R19
      102 SETTABLEKS                       R19 R18 K22 ["SmoothVoxelsUpgraderService"]
      104 GETIMPORT                        R19 K26 [game]
      106 LOADK                            R21 K28 ["Workspace"]
      107 NAMECALL                         R19 R19 K27 ["GetService"]
      109 CALL                             R19 2 1
      110 LOADK                            R21 K23 ["Terrain"]
      111 NAMECALL                         R19 R19 K29 ["FindFirstChildOfClass"]
      113 CALL                             R19 2 1
      114 SETTABLEKS                       R19 R18 K23 ["Terrain"]
      116 NAMECALL                         R15 R14 K30 ["init"]
      118 CALL                             R15 3 0
      119 NAMECALL                         R15 R14 K31 ["getCategory"]
      121 CALL                             R15 1 1
      122 GETUPVAL                         R16 5
      123 GETTABLEKS                       R16 R16 K32 ["None"]
      125 JUMPIFNOTEQ                      R15 R16 ; [+12]
      127 GETTABLEKS                       R16 R6 K33 ["_emptyTool"]
      129 JUMPIFNOT                        R16 ; [+5]
      130 LOADK                            R17 K34 ["Cannot have more than one empty tool."]
      131 FASTCALL1                        ASSERT R17 ; [+2]
      132 GETIMPORT                        R16 K36 [assert]
      134 CALL                             R16 1 0
      135 SETTABLEKS                       R14 R6 K33 ["_emptyTool"]
      137 JUMP                             ; [+53]
      138 GETTABLE                         R16 R7 R15
      139 JUMPIF                           R16 ; [+30]
      140 LENGTH                           R17 R8
      141 ADDK                             R16 R17 K37 [1]
      142 DUPTABLE                         R19 K43 [{"Key", "Label", "ToolIndex", "ToolRegistry", "Toolbar"}]
      143 SETTABLEKS                       R16 R19 K38 ["Key"]
      145 LOADK                            R22 K44 ["Tabs"]
      146 MOVE                             R23 R15
      147 NAMECALL                         R20 R3 K45 ["getText"]
      149 CALL                             R20 3 1
      150 SETTABLEKS                       R20 R19 K39 ["Label"]
      152 LOADN                            R20 1
      153 SETTABLEKS                       R20 R19 K40 ["ToolIndex"]
      155 NEWTABLE                         R20 0 0
      157 SETTABLEKS                       R20 R19 K41 ["ToolRegistry"]
      159 NEWTABLE                         R20 0 0
      161 SETTABLEKS                       R20 R19 K42 ["Toolbar"]
      163 FASTCALL2                        TABLE_INSERT R8 R19 ; [+4]
      165 MOVE                             R18 R8
      166 GETIMPORT                        R17 K48 [table.insert]
      168 CALL                             R17 2 0
      169 SETTABLE                         R16 R7 R15
      170 GETTABLE                         R18 R7 R15
      171 GETTABLE                         R17 R8 R18
      172 GETTABLEKS                       R17 R17 K41 ["ToolRegistry"]
      174 FASTCALL2                        TABLE_INSERT R17 R14 ; [+4]
      176 MOVE                             R18 R14
      177 GETIMPORT                        R16 K48 [table.insert]
      179 CALL                             R16 2 0
      180 GETTABLE                         R18 R7 R15
      181 GETTABLE                         R17 R8 R18
      182 GETTABLEKS                       R17 R17 K42 ["Toolbar"]
      184 NAMECALL                         R18 R14 K49 ["getTile"]
      186 CALL                             R18 1 -1
      187 FASTCALL                         TABLE_INSERT ; [+2]
      188 GETIMPORT                        R16 K48 [table.insert]
      190 CALL                             R16 -1 0
      191 FORGLOOP                         R9 2 ; [-157]
      193 SETTABLEKS                       R7 R6 K50 ["_tabRegistry"]
      195 SETTABLEKS                       R8 R6 K51 ["_tabs"]
      197 LOADN                            R9 1
      198 SETTABLEKS                       R9 R6 K52 ["_tabIndex"]
      200 LOADB                            R9 1
      201 SETTABLEKS                       R9 R6 K53 ["_useEmptyTool"]
      203 GETTABLEKS                       R9 R0 K54 ["Activation"]
      205 NEWCLOSURE                       R11 P3
      206 CAPTURE                          VAL R6
      207 NAMECALL                         R9 R9 K55 ["Connect"]
      209 CALL                             R9 2 1
      210 SETTABLEKS                       R9 R6 K56 ["_focusedConnection"]
      212 RETURN                           R6 1

PROTO_7:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["new"]
        3 MOVE                             R6 R0
        4 JUMPIF                           R6 ; [+4]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K1 ["mock"]
        8 CALL                             R6 0 1
        9 MOVE                             R7 R1
       10 JUMPIF                           R7 ; [+4]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R7 R7 K1 ["mock"]
       14 CALL                             R7 0 1
       15 MOVE                             R8 R2
       16 JUMPIF                           R8 ; [+6]
       17 GETUPVAL                         R8 3
       18 GETTABLEKS                       R8 R8 K2 ["Analytics"]
       20 GETTABLEKS                       R8 R8 K1 ["mock"]
       22 CALL                             R8 0 1
       23 MOVE                             R9 R3
       24 JUMPIF                           R9 ; [+6]
       25 GETUPVAL                         R9 3
       26 GETTABLEKS                       R9 R9 K3 ["Localization"]
       28 GETTABLEKS                       R9 R9 K1 ["mock"]
       30 CALL                             R9 0 1
       31 MOVE                             R10 R4
       32 LOADB                            R11 1
       33 CALL                             R5 6 -1
       34 RETURN                           R5 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_focusedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_tabs"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_tabIndex"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_tabs"]
        2 GETTABLEKS                       R3 R0 K1 ["_tabIndex"]
        4 GETTABLE                         R1 R2 R3
        5 GETTABLEKS                       R1 R1 K2 ["Toolbar"]
        7 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_useEmptyTool"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADN                            R1 255
        4 RETURN                           R1 1
        5 GETTABLEKS                       R2 R0 K1 ["_tabs"]
        7 GETTABLEKS                       R3 R0 K2 ["_tabIndex"]
        9 GETTABLE                         R1 R2 R3
       10 GETTABLEKS                       R1 R1 K3 ["ToolIndex"]
       12 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_tabs"]
        2 GETTABLEKS                       R3 R0 K1 ["_tabIndex"]
        4 GETTABLE                         R1 R2 R3
        5 GETTABLEKS                       R3 R0 K2 ["_useEmptyTool"]
        7 JUMPIFNOT                        R3 ; [+3]
        8 GETTABLEKS                       R2 R0 K3 ["_emptyTool"]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R3 R1 K4 ["ToolRegistry"]
       13 GETTABLEKS                       R4 R1 K5 ["ToolIndex"]
       15 GETTABLE                         R2 R3 R4
       16 JUMPIF                           R2 ; [+4]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K6 ["empty"]
       20 CALL                             R2 0 1
       21 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["_tabs"]
        2 GETTABLEKS                       R4 R0 K1 ["_tabIndex"]
        4 GETTABLE                         R2 R3 R4
        5 GETTABLEKS                       R6 R2 K2 ["ToolRegistry"]
        7 LENGTH                           R5 R6
        8 JUMPIFLE                         R1 R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 FASTCALL1                        ASSERT R4 ; [+2]
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 1 0
       16 GETTABLEKS                       R3 R2 K5 ["ToolIndex"]
       18 JUMPIFNOTEQ                      R1 R3 ; [+34]
       20 GETTABLEKS                       R3 R0 K6 ["_useEmptyTool"]
       22 JUMPIF                           R3 ; [+30]
       23 GETTABLEKS                       R4 R2 K2 ["ToolRegistry"]
       25 GETTABLEKS                       R5 R2 K5 ["ToolIndex"]
       27 GETTABLE                         R3 R4 R5
       28 NAMECALL                         R3 R3 K7 ["deactivate"]
       30 CALL                             R3 1 0
       31 LOADB                            R3 1
       32 SETTABLEKS                       R3 R0 K6 ["_useEmptyTool"]
       34 GETTABLEKS                       R3 R0 K8 ["_emptyTool"]
       36 NAMECALL                         R3 R3 K9 ["activate"]
       38 CALL                             R3 1 0
       39 GETTABLEKS                       R3 R0 K10 ["OnToolIndexChanged"]
       41 LOADN                            R5 255
       42 NAMECALL                         R3 R3 K11 ["Fire"]
       44 CALL                             R3 2 0
       45 GETTABLEKS                       R3 R0 K12 ["OnToolChanged"]
       47 GETTABLEKS                       R5 R0 K8 ["_emptyTool"]
       49 NAMECALL                         R3 R3 K11 ["Fire"]
       51 CALL                             R3 2 0
       52 RETURN                           R0 0
       53 GETTABLEKS                       R3 R0 K6 ["_useEmptyTool"]
       55 JUMPIFNOT                        R3 ; [+9]
       56 LOADB                            R3 0
       57 SETTABLEKS                       R3 R0 K6 ["_useEmptyTool"]
       59 GETTABLEKS                       R3 R0 K8 ["_emptyTool"]
       61 NAMECALL                         R3 R3 K7 ["deactivate"]
       63 CALL                             R3 1 0
       64 JUMP                             ; [+8]
       65 GETTABLEKS                       R4 R2 K2 ["ToolRegistry"]
       67 GETTABLEKS                       R5 R2 K5 ["ToolIndex"]
       69 GETTABLE                         R3 R4 R5
       70 NAMECALL                         R3 R3 K7 ["deactivate"]
       72 CALL                             R3 1 0
       73 SETTABLEKS                       R1 R2 K5 ["ToolIndex"]
       75 GETTABLEKS                       R4 R2 K2 ["ToolRegistry"]
       77 GETTABLEKS                       R5 R2 K5 ["ToolIndex"]
       79 GETTABLE                         R3 R4 R5
       80 NAMECALL                         R3 R3 K9 ["activate"]
       82 CALL                             R3 1 0
       83 GETTABLEKS                       R3 R0 K10 ["OnToolIndexChanged"]
       85 MOVE                             R5 R1
       86 NAMECALL                         R3 R3 K11 ["Fire"]
       88 CALL                             R3 2 0
       89 GETTABLEKS                       R3 R0 K12 ["OnToolChanged"]
       91 GETTABLEKS                       R6 R2 K2 ["ToolRegistry"]
       93 GETTABLEKS                       R7 R2 K5 ["ToolIndex"]
       95 GETTABLE                         R5 R6 R7
       96 NAMECALL                         R3 R3 K11 ["Fire"]
       98 CALL                             R3 2 0
       99 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_tabs"]
        2 GETTABLEKS                       R4 R0 K1 ["_tabIndex"]
        4 GETTABLE                         R2 R3 R4
        5 GETTABLEKS                       R3 R0 K2 ["_useEmptyTool"]
        7 JUMPIF                           R3 ; [+8]
        8 GETTABLEKS                       R4 R2 K3 ["ToolRegistry"]
       10 GETTABLEKS                       R5 R2 K4 ["ToolIndex"]
       12 GETTABLE                         R3 R4 R5
       13 NAMECALL                         R3 R3 K5 ["deactivate"]
       15 CALL                             R3 1 0
       16 SETTABLEKS                       R1 R0 K1 ["_tabIndex"]
       18 GETTABLEKS                       R3 R0 K0 ["_tabs"]
       20 GETTABLEKS                       R4 R0 K1 ["_tabIndex"]
       22 GETTABLE                         R2 R3 R4
       23 GETTABLEKS                       R3 R0 K2 ["_useEmptyTool"]
       25 JUMPIF                           R3 ; [+8]
       26 GETTABLEKS                       R4 R2 K3 ["ToolRegistry"]
       28 GETTABLEKS                       R5 R2 K4 ["ToolIndex"]
       30 GETTABLE                         R3 R4 R5
       31 NAMECALL                         R3 R3 K6 ["activate"]
       33 CALL                             R3 1 0
       34 GETTABLEKS                       R3 R0 K7 ["OnTabIndexChanged"]
       36 MOVE                             R5 R1
       37 NAMECALL                         R3 R3 K8 ["Fire"]
       39 CALL                             R3 2 0
       40 GETTABLEKS                       R3 R0 K2 ["_useEmptyTool"]
       42 JUMPIFNOT                        R3 ; [+14]
       43 GETTABLEKS                       R3 R0 K9 ["OnToolIndexChanged"]
       45 LOADN                            R5 255
       46 NAMECALL                         R3 R3 K8 ["Fire"]
       48 CALL                             R3 2 0
       49 GETTABLEKS                       R3 R0 K10 ["OnToolChanged"]
       51 GETTABLEKS                       R5 R0 K11 ["_emptyTool"]
       53 NAMECALL                         R3 R3 K8 ["Fire"]
       55 CALL                             R3 2 0
       56 RETURN                           R0 0
       57 GETTABLEKS                       R3 R0 K9 ["OnToolIndexChanged"]
       59 GETTABLEKS                       R5 R2 K4 ["ToolIndex"]
       61 NAMECALL                         R3 R3 K8 ["Fire"]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R3 R0 K10 ["OnToolChanged"]
       66 GETTABLEKS                       R6 R2 K3 ["ToolRegistry"]
       68 GETTABLEKS                       R7 R2 K4 ["ToolIndex"]
       70 GETTABLE                         R5 R6 R7
       71 NAMECALL                         R3 R3 K8 ["Fire"]
       73 CALL                             R3 2 0
       74 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R4 R0 K0 ["_tabs"]
        2 GETTABLEKS                       R5 R0 K1 ["_tabIndex"]
        4 GETTABLE                         R3 R4 R5
        5 GETTABLEKS                       R4 R3 K2 ["ToolIndex"]
        7 JUMPIFNOTEQ                      R2 R4 ; [+38]
        9 GETTABLEKS                       R4 R0 K1 ["_tabIndex"]
       11 JUMPIFNOTEQ                      R4 R1 ; [+34]
       13 GETTABLEKS                       R4 R0 K3 ["_useEmptyTool"]
       15 JUMPIF                           R4 ; [+30]
       16 GETTABLEKS                       R5 R3 K4 ["ToolRegistry"]
       18 GETTABLEKS                       R6 R3 K2 ["ToolIndex"]
       20 GETTABLE                         R4 R5 R6
       21 NAMECALL                         R4 R4 K5 ["deactivate"]
       23 CALL                             R4 1 0
       24 LOADB                            R4 1
       25 SETTABLEKS                       R4 R0 K3 ["_useEmptyTool"]
       27 GETTABLEKS                       R4 R0 K6 ["_emptyTool"]
       29 NAMECALL                         R4 R4 K7 ["activate"]
       31 CALL                             R4 1 0
       32 GETTABLEKS                       R4 R0 K8 ["OnToolIndexChanged"]
       34 LOADN                            R6 255
       35 NAMECALL                         R4 R4 K9 ["Fire"]
       37 CALL                             R4 2 0
       38 GETTABLEKS                       R4 R0 K10 ["OnToolChanged"]
       40 GETTABLEKS                       R6 R0 K6 ["_emptyTool"]
       42 NAMECALL                         R4 R4 K9 ["Fire"]
       44 CALL                             R4 2 0
       45 RETURN                           R0 0
       46 GETTABLEKS                       R4 R0 K3 ["_useEmptyTool"]
       48 JUMPIFNOT                        R4 ; [+9]
       49 LOADB                            R4 0
       50 SETTABLEKS                       R4 R0 K3 ["_useEmptyTool"]
       52 GETTABLEKS                       R4 R0 K6 ["_emptyTool"]
       54 NAMECALL                         R4 R4 K5 ["deactivate"]
       56 CALL                             R4 1 0
       57 JUMP                             ; [+8]
       58 GETTABLEKS                       R5 R3 K4 ["ToolRegistry"]
       60 GETTABLEKS                       R6 R3 K2 ["ToolIndex"]
       62 GETTABLE                         R4 R5 R6
       63 NAMECALL                         R4 R4 K5 ["deactivate"]
       65 CALL                             R4 1 0
       66 GETTABLEKS                       R4 R3 K2 ["ToolIndex"]
       68 JUMPIFNOTEQ                      R2 R4 ; [+4]
       70 LOADB                            R4 1
       71 SETTABLEKS                       R4 R0 K3 ["_useEmptyTool"]
       73 LOADB                            R4 0
       74 SETTABLEKS                       R4 R0 K3 ["_useEmptyTool"]
       76 SETTABLEKS                       R1 R0 K1 ["_tabIndex"]
       78 GETTABLEKS                       R4 R0 K0 ["_tabs"]
       80 GETTABLEKS                       R5 R0 K1 ["_tabIndex"]
       82 GETTABLE                         R3 R4 R5
       83 SETTABLEKS                       R2 R3 K2 ["ToolIndex"]
       85 GETTABLEKS                       R5 R3 K4 ["ToolRegistry"]
       87 GETTABLEKS                       R6 R3 K2 ["ToolIndex"]
       89 GETTABLE                         R4 R5 R6
       90 NAMECALL                         R4 R4 K7 ["activate"]
       92 CALL                             R4 1 0
       93 GETTABLEKS                       R4 R0 K11 ["OnTabIndexChanged"]
       95 MOVE                             R6 R1
       96 NAMECALL                         R4 R4 K9 ["Fire"]
       98 CALL                             R4 2 0
       99 GETTABLEKS                       R4 R0 K8 ["OnToolIndexChanged"]
      101 GETTABLEKS                       R6 R3 K2 ["ToolIndex"]
      103 NAMECALL                         R4 R4 K9 ["Fire"]
      105 CALL                             R4 2 0
      106 GETTABLEKS                       R4 R0 K10 ["OnToolChanged"]
      108 GETTABLEKS                       R7 R3 K4 ["ToolRegistry"]
      110 GETTABLEKS                       R8 R3 K2 ["ToolIndex"]
      112 GETTABLE                         R6 R7 R8
      113 NAMECALL                         R4 R4 K9 ["Fire"]
      115 CALL                             R4 2 0
      116 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["_name"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R4 R0 K0 ["_tabRegistry"]
        2 GETTABLE                         R3 R4 R1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R6 R0 K1 ["_tabs"]
        6 GETTABLE                         R5 R6 R3
        7 GETTABLEKS                       R5 R5 K2 ["ToolRegistry"]
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R2
       11 CALL                             R4 2 1
       12 MOVE                             R7 R3
       13 MOVE                             R8 R4
       14 NAMECALL                         R5 R0 K3 ["setTabAndToolIndex"]
       16 CALL                             R5 3 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["ContextItem"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Tools"]
       31 GETTABLEKS                       R6 R6 K13 ["BaseTool"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R2 K14 ["Util"]
       36 GETTABLEKS                       R7 R6 K15 ["Signal"]
       38 GETTABLEKS                       R8 R1 K16 ["findIndex"]
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R10 R0 K11 ["Src"]
       44 GETTABLEKS                       R10 R10 K12 ["Tools"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R0 K11 ["Src"]
       51 GETTABLEKS                       R11 R11 K17 ["Types"]
       53 CALL                             R10 1 1
       54 GETTABLEKS                       R11 R10 K18 ["Tab"]
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R13 R0 K11 ["Src"]
       60 GETTABLEKS                       R13 R13 K19 ["Controllers"]
       62 GETTABLEKS                       R13 R13 K20 ["PluginController"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETTABLEKS                       R14 R0 K11 ["Src"]
       69 GETTABLEKS                       R14 R14 K19 ["Controllers"]
       71 GETTABLEKS                       R14 R14 K21 ["ShortcutController"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R0 K11 ["Src"]
       78 GETTABLEKS                       R15 R15 K22 ["Flags"]
       80 GETTABLEKS                       R15 R15 K23 ["getFFlagSmoothVoxels_Tooling"]
       82 CALL                             R14 1 1
       83 LOADK                            R17 K24 ["ToolController"]
       84 NAMECALL                         R15 R4 K25 ["extend"]
       86 CALL                             R15 2 1
       87 DUPCLOSURE                       R16 K26 [PROTO_6]
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R11
       94 SETTABLEKS                       R16 R15 K27 ["new"]
       96 DUPCLOSURE                       R16 K28 [PROTO_7]
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R3
      101 SETTABLEKS                       R16 R15 K29 ["mock"]
      103 DUPCLOSURE                       R16 K30 [PROTO_8]
      104 SETTABLEKS                       R16 R15 K31 ["destroy"]
      106 DUPCLOSURE                       R16 K32 [PROTO_9]
      107 SETTABLEKS                       R16 R15 K33 ["getTabs"]
      109 DUPCLOSURE                       R16 K34 [PROTO_10]
      110 SETTABLEKS                       R16 R15 K35 ["getTabIndex"]
      112 DUPCLOSURE                       R16 K36 [PROTO_11]
      113 SETTABLEKS                       R16 R15 K37 ["getToolbar"]
      115 DUPCLOSURE                       R16 K38 [PROTO_12]
      116 SETTABLEKS                       R16 R15 K39 ["getToolIndex"]
      118 DUPCLOSURE                       R16 K40 [PROTO_13]
      119 CAPTURE                          VAL R5
      120 SETTABLEKS                       R16 R15 K41 ["getTool"]
      122 DUPCLOSURE                       R16 K42 [PROTO_14]
      123 SETTABLEKS                       R16 R15 K43 ["setToolIndex"]
      125 DUPCLOSURE                       R16 K44 [PROTO_15]
      126 SETTABLEKS                       R16 R15 K45 ["setTabIndex"]
      128 DUPCLOSURE                       R16 K46 [PROTO_16]
      129 SETTABLEKS                       R16 R15 K47 ["setTabAndToolIndex"]
      131 DUPCLOSURE                       R16 K48 [PROTO_18]
      132 CAPTURE                          VAL R8
      133 SETTABLEKS                       R16 R15 K49 ["selectTabAndTool"]
      135 RETURN                           R15 1
