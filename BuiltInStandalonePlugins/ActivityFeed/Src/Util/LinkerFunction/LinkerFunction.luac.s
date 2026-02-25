PROTO_0:
        0 GETIMPORT                        R1 K2 [string.split]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["://"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+23]
        6 LENGTH                           R2 R1
        7 JUMPIFNOTEQKN                    R2 K4 [2] ; [+21]
        9 NEWTABLE                         R2 0 0
       11 GETIMPORT                        R3 K6 [string.gmatch]
       13 GETTABLEN                        R4 R1 2
       14 LOADK                            R5 K7 ["([^/]+)"]
       15 CALL                             R3 2 3
       16 FORGPREP                         R3
       17 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       19 MOVE                             R9 R2
       20 MOVE                             R10 R6
       21 GETIMPORT                        R8 K10 [table.insert]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 1 ; [-8]
       26 GETTABLEN                        R3 R1 1
       27 MOVE                             R4 R2
       28 RETURN                           R3 2
       29 MOVE                             R2 R0
       30 LOADNIL                          R3
       31 RETURN                           R2 2

PROTO_1:
        0 GETGLOBAL                        R3 K0 ["splitUrl"]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 2
        4 JUMPIFEQKS                       R3 K1 ["http"] ; [+8]
        6 JUMPIFEQKS                       R3 K2 ["https"] ; [+6]
        8 JUMPIFEQKNIL                     R4 ; [+4]
       10 LENGTH                           R5 R4
       11 JUMPIFNOTEQKN                    R5 K3 [0] ; [+12]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K4 ["GetService"]
       16 LOADK                            R6 K5 ["GuiService"]
       17 CALL                             R5 1 1
       18 MOVE                             R7 R0
       19 MOVE                             R8 R2
       20 NAMECALL                         R5 R5 K6 ["OpenBrowserWindow"]
       22 CALL                             R5 3 0
       23 RETURN                           R0 0
       24 JUMPIFNOTEQKS                    R3 K7 ["explorer"] ; [+48]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K4 ["GetService"]
       29 LOADK                            R6 K8 ["UniqueIdLookupService"]
       30 MOVE                             R7 R2
       31 CALL                             R5 2 1
       32 GETTABLEN                        R7 R4 1
       33 NAMECALL                         R5 R5 K9 ["GetInstanceByRfc4122String"]
       35 CALL                             R5 2 1
       36 JUMPIFNOTEQKNIL                  R5 ; [+6]
       38 JUMPIFEQKNIL                     R1 ; [+117]
       40 MOVE                             R6 R1
       41 CALL                             R6 0 0
       42 RETURN                           R0 0
       43 NEWTABLE                         R6 0 0
       45 FASTCALL2                        TABLE_INSERT R6 R5 ; [+5]
       47 MOVE                             R8 R6
       48 MOVE                             R9 R5
       49 GETIMPORT                        R7 K12 [table.insert]
       51 CALL                             R7 2 0
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K4 ["GetService"]
       55 LOADK                            R8 K13 ["TutorialService"]
       56 MOVE                             R9 R2
       57 CALL                             R7 2 1
       58 LOADK                            R9 K14 ["Explorer"]
       59 NAMECALL                         R7 R7 K15 ["ShowWidgets"]
       61 CALL                             R7 2 0
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R7 R8 K4 ["GetService"]
       65 LOADK                            R8 K16 ["Selection"]
       66 MOVE                             R9 R2
       67 CALL                             R7 2 1
       68 MOVE                             R9 R6
       69 NAMECALL                         R7 R7 K17 ["Set"]
       71 CALL                             R7 2 0
       72 RETURN                           R0 0
       73 JUMPIFNOTEQKS                    R3 K18 ["packageexplorer"] ; [+73]
       75 GETTABLEN                        R6 R4 1
       76 FASTCALL1                        TONUMBER R6 ; [+2]
       77 GETIMPORT                        R5 K20 [tonumber]
       79 CALL                             R5 1 1
       80 JUMPIFEQKNIL                     R5 ; [+66]
       82 LOADK                            R6 K21 ["rbxassetid://"]
       83 GETTABLEN                        R7 R4 1
       84 CONCAT                           R5 R6 R7
       85 GETIMPORT                        R6 K23 [game]
       87 NAMECALL                         R6 R6 K24 ["GetDescendants"]
       89 CALL                             R6 1 1
       90 LOADNIL                          R7
       91 GETIMPORT                        R8 K26 [pairs]
       93 MOVE                             R9 R6
       94 CALL                             R8 1 3
       95 FORGPREP_NEXT                    R8
       96 LOADK                            R15 K27 ["PackageLink"]
       97 NAMECALL                         R13 R12 K28 ["IsA"]
       99 CALL                             R13 2 1
      100 JUMPIFNOT                        R13 ; [+7]
      101 GETTABLEKS                       R13 R12 K29 ["PackageId"]
      103 JUMPIFNOTEQ                      R13 R5 ; [+4]
      105 GETTABLEKS                       R7 R12 K30 ["Parent"]
      107 JUMP                             ; [+2]
      108 FORGLOOP                         R8 2 ; [-13]
      110 JUMPIFNOTEQKNIL                  R7 ; [+6]
      112 JUMPIFEQKNIL                     R1 ; [+43]
      114 MOVE                             R8 R1
      115 CALL                             R8 0 0
      116 RETURN                           R0 0
      117 NEWTABLE                         R8 0 0
      119 FASTCALL2                        TABLE_INSERT R8 R7 ; [+5]
      121 MOVE                             R10 R8
      122 MOVE                             R11 R7
      123 GETIMPORT                        R9 K12 [table.insert]
      125 CALL                             R9 2 0
      126 GETUPVAL                         R10 0
      127 GETTABLEKS                       R9 R10 K4 ["GetService"]
      129 LOADK                            R10 K13 ["TutorialService"]
      130 MOVE                             R11 R2
      131 CALL                             R9 2 1
      132 LOADK                            R11 K14 ["Explorer"]
      133 NAMECALL                         R9 R9 K15 ["ShowWidgets"]
      135 CALL                             R9 2 0
      136 GETUPVAL                         R10 0
      137 GETTABLEKS                       R9 R10 K4 ["GetService"]
      139 LOADK                            R10 K16 ["Selection"]
      140 MOVE                             R11 R2
      141 CALL                             R9 2 1
      142 MOVE                             R11 R8
      143 NAMECALL                         R9 R9 K17 ["Set"]
      145 CALL                             R9 2 0
      146 RETURN                           R0 0
      147 JUMPIFNOTEQKS                    R3 K31 ["packageversion"] ; [+8]
      149 GETTABLEN                        R6 R4 1
      150 FASTCALL1                        TONUMBER R6 ; [+2]
      151 GETIMPORT                        R5 K20 [tonumber]
      153 CALL                             R5 1 1
      154 JUMPIFEQKNIL                     R5 ; [+1]
      156 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["LinkerServiceController"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K9 [{"PluginId", "Category", "ItemId"}]
       11 LOADK                            R2 K10 ["Explorer"]
       12 SETTABLEKS                       R2 R1 K6 ["PluginId"]
       14 LOADK                            R2 K11 ["Widgets"]
       15 SETTABLEKS                       R2 R1 K7 ["Category"]
       17 LOADK                            R2 K12 ["Main"]
       18 SETTABLEKS                       R2 R1 K8 ["ItemId"]
       20 DUPCLOSURE                       R2 K13 [PROTO_0]
       21 SETGLOBAL                        R2 K14 ["splitUrl"]
       23 DUPCLOSURE                       R2 K15 [PROTO_1]
       24 CAPTURE                          VAL R0
       25 RETURN                           R2 1
