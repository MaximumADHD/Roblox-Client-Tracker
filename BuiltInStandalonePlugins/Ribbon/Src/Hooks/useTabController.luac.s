PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUri"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 NEWTABLE                         R2 0 8
        7 DUPTABLE                         R3 K4 [{"Id", "Text", "ReserveCheckmarkSpace"}]
        8 LOADK                            R4 K5 ["Hide"]
        9 SETTABLEKS                       R4 R3 K1 ["Id"]
       11 GETUPVAL                         R4 2
       12 LOADK                            R6 K6 ["Plugin"]
       13 LOADK                            R7 K7 ["Tab_Hide"]
       14 NAMECALL                         R4 R4 K8 ["getText"]
       16 CALL                             R4 3 1
       17 SETTABLEKS                       R4 R3 K2 ["Text"]
       19 LOADB                            R4 1
       20 SETTABLEKS                       R4 R3 K3 ["ReserveCheckmarkSpace"]
       22 DUPTABLE                         R4 K4 [{"Id", "Text", "ReserveCheckmarkSpace"}]
       23 LOADK                            R5 K9 ["Duplicate"]
       24 SETTABLEKS                       R5 R4 K1 ["Id"]
       26 GETUPVAL                         R5 2
       27 LOADK                            R7 K6 ["Plugin"]
       28 LOADK                            R8 K10 ["Tab_Duplicate"]
       29 NAMECALL                         R5 R5 K8 ["getText"]
       31 CALL                             R5 3 1
       32 SETTABLEKS                       R5 R4 K2 ["Text"]
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K3 ["ReserveCheckmarkSpace"]
       37 DUPTABLE                         R5 K12 [{"Id", "Type"}]
       38 LOADK                            R6 K13 ["Separator"]
       39 SETTABLEKS                       R6 R5 K1 ["Id"]
       41 LOADK                            R6 K13 ["Separator"]
       42 SETTABLEKS                       R6 R5 K11 ["Type"]
       44 DUPTABLE                         R6 K15 [{"Id", "Action", "ReserveCheckmarkSpace"}]
       45 LOADK                            R7 K16 ["ManageTabs"]
       46 SETTABLEKS                       R7 R6 K1 ["Id"]
       48 GETUPVAL                         R7 3
       49 GETTABLEKS                       R7 R7 K17 ["join"]
       51 MOVE                             R8 R0
       52 DUPTABLE                         R9 K20 [{"Category", "ItemId"}]
       53 LOADK                            R10 K21 ["Actions"]
       54 SETTABLEKS                       R10 R9 K18 ["Category"]
       56 LOADK                            R10 K16 ["ManageTabs"]
       57 SETTABLEKS                       R10 R9 K19 ["ItemId"]
       59 CALL                             R7 2 1
       60 SETTABLEKS                       R7 R6 K14 ["Action"]
       62 LOADB                            R7 1
       63 SETTABLEKS                       R7 R6 K3 ["ReserveCheckmarkSpace"]
       65 DUPTABLE                         R7 K12 [{"Id", "Type"}]
       66 LOADK                            R8 K13 ["Separator"]
       67 SETTABLEKS                       R8 R7 K1 ["Id"]
       69 LOADK                            R8 K13 ["Separator"]
       70 SETTABLEKS                       R8 R7 K11 ["Type"]
       72 DUPTABLE                         R8 K15 [{"Id", "Action", "ReserveCheckmarkSpace"}]
       73 LOADK                            R9 K22 ["DockUndockRibbon"]
       74 SETTABLEKS                       R9 R8 K1 ["Id"]
       76 GETUPVAL                         R9 3
       77 GETTABLEKS                       R9 R9 K17 ["join"]
       79 MOVE                             R10 R0
       80 DUPTABLE                         R11 K20 [{"Category", "ItemId"}]
       81 LOADK                            R12 K21 ["Actions"]
       82 SETTABLEKS                       R12 R11 K18 ["Category"]
       84 LOADK                            R12 K22 ["DockUndockRibbon"]
       85 SETTABLEKS                       R12 R11 K19 ["ItemId"]
       87 CALL                             R9 2 1
       88 SETTABLEKS                       R9 R8 K14 ["Action"]
       90 LOADB                            R9 1
       91 SETTABLEKS                       R9 R8 K3 ["ReserveCheckmarkSpace"]
       93 DUPTABLE                         R9 K15 [{"Id", "Action", "ReserveCheckmarkSpace"}]
       94 LOADK                            R10 K23 ["CompactDensity"]
       95 SETTABLEKS                       R10 R9 K1 ["Id"]
       97 GETUPVAL                         R10 3
       98 GETTABLEKS                       R10 R10 K17 ["join"]
      100 MOVE                             R11 R0
      101 DUPTABLE                         R12 K20 [{"Category", "ItemId"}]
      102 LOADK                            R13 K21 ["Actions"]
      103 SETTABLEKS                       R13 R12 K18 ["Category"]
      105 LOADK                            R13 K23 ["CompactDensity"]
      106 SETTABLEKS                       R13 R12 K19 ["ItemId"]
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K14 ["Action"]
      111 LOADB                            R10 1
      112 SETTABLEKS                       R10 R9 K3 ["ReserveCheckmarkSpace"]
      114 DUPTABLE                         R10 K15 [{"Id", "Action", "ReserveCheckmarkSpace"}]
      115 LOADK                            R11 K24 ["ShowHideLabels"]
      116 SETTABLEKS                       R11 R10 K1 ["Id"]
      118 GETUPVAL                         R11 3
      119 GETTABLEKS                       R11 R11 K17 ["join"]
      121 MOVE                             R12 R0
      122 DUPTABLE                         R13 K20 [{"Category", "ItemId"}]
      123 LOADK                            R14 K21 ["Actions"]
      124 SETTABLEKS                       R14 R13 K18 ["Category"]
      126 LOADK                            R14 K24 ["ShowHideLabels"]
      127 SETTABLEKS                       R14 R13 K19 ["ItemId"]
      129 CALL                             R11 2 1
      130 SETTABLEKS                       R11 R10 K14 ["Action"]
      132 LOADB                            R11 1
      133 SETTABLEKS                       R11 R10 K3 ["ReserveCheckmarkSpace"]
      135 SETLIST                          R2 R3 8 [1]
      137 CALL                             R1 1 -1
      138 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUri"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 NEWTABLE                         R2 0 10
        7 DUPTABLE                         R3 K4 [{"Id", "Text", "ReserveCheckmarkSpace"}]
        8 LOADK                            R4 K5 ["Rename"]
        9 SETTABLEKS                       R4 R3 K1 ["Id"]
       11 GETUPVAL                         R4 2
       12 LOADK                            R6 K6 ["Plugin"]
       13 LOADK                            R7 K7 ["Tab_Rename"]
       14 NAMECALL                         R4 R4 K8 ["getText"]
       16 CALL                             R4 3 1
       17 SETTABLEKS                       R4 R3 K2 ["Text"]
       19 LOADB                            R4 1
       20 SETTABLEKS                       R4 R3 K3 ["ReserveCheckmarkSpace"]
       22 GETUPVAL                         R5 3
       23 GETTABLEN                        R4 R5 1
       24 GETUPVAL                         R6 3
       25 GETTABLEN                        R5 R6 2
       26 DUPTABLE                         R6 K4 [{"Id", "Text", "ReserveCheckmarkSpace"}]
       27 LOADK                            R7 K9 ["Delete"]
       28 SETTABLEKS                       R7 R6 K1 ["Id"]
       30 GETUPVAL                         R7 2
       31 LOADK                            R9 K6 ["Plugin"]
       32 LOADK                            R10 K10 ["Tab_Delete"]
       33 NAMECALL                         R7 R7 K8 ["getText"]
       35 CALL                             R7 3 1
       36 SETTABLEKS                       R7 R6 K2 ["Text"]
       38 LOADB                            R7 1
       39 SETTABLEKS                       R7 R6 K3 ["ReserveCheckmarkSpace"]
       41 DUPTABLE                         R7 K12 [{"Id", "Type"}]
       42 LOADK                            R8 K13 ["Separator"]
       43 SETTABLEKS                       R8 R7 K1 ["Id"]
       45 LOADK                            R8 K13 ["Separator"]
       46 SETTABLEKS                       R8 R7 K11 ["Type"]
       48 DUPTABLE                         R8 K15 [{"Id", "Action", "ReserveCheckmarkSpace"}]
       49 LOADK                            R9 K16 ["ManageTabs"]
       50 SETTABLEKS                       R9 R8 K1 ["Id"]
       52 GETUPVAL                         R9 4
       53 GETTABLEKS                       R9 R9 K17 ["join"]
       55 MOVE                             R10 R0
       56 DUPTABLE                         R11 K20 [{"Category", "ItemId"}]
       57 LOADK                            R12 K21 ["Actions"]
       58 SETTABLEKS                       R12 R11 K18 ["Category"]
       60 LOADK                            R12 K16 ["ManageTabs"]
       61 SETTABLEKS                       R12 R11 K19 ["ItemId"]
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K14 ["Action"]
       66 LOADB                            R9 1
       67 SETTABLEKS                       R9 R8 K3 ["ReserveCheckmarkSpace"]
       69 DUPTABLE                         R9 K12 [{"Id", "Type"}]
       70 LOADK                            R10 K13 ["Separator"]
       71 SETTABLEKS                       R10 R9 K1 ["Id"]
       73 LOADK                            R10 K13 ["Separator"]
       74 SETTABLEKS                       R10 R9 K11 ["Type"]
       76 DUPTABLE                         R10 K15 [{"Id", "Action", "ReserveCheckmarkSpace"}]
       77 LOADK                            R11 K22 ["DockUndockRibbon"]
       78 SETTABLEKS                       R11 R10 K1 ["Id"]
       80 GETUPVAL                         R11 4
       81 GETTABLEKS                       R11 R11 K17 ["join"]
       83 MOVE                             R12 R0
       84 DUPTABLE                         R13 K20 [{"Category", "ItemId"}]
       85 LOADK                            R14 K21 ["Actions"]
       86 SETTABLEKS                       R14 R13 K18 ["Category"]
       88 LOADK                            R14 K22 ["DockUndockRibbon"]
       89 SETTABLEKS                       R14 R13 K19 ["ItemId"]
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K14 ["Action"]
       94 LOADB                            R11 1
       95 SETTABLEKS                       R11 R10 K3 ["ReserveCheckmarkSpace"]
       97 DUPTABLE                         R11 K15 [{"Id", "Action", "ReserveCheckmarkSpace"}]
       98 LOADK                            R12 K23 ["CompactDensity"]
       99 SETTABLEKS                       R12 R11 K1 ["Id"]
      101 GETUPVAL                         R12 4
      102 GETTABLEKS                       R12 R12 K17 ["join"]
      104 MOVE                             R13 R0
      105 DUPTABLE                         R14 K20 [{"Category", "ItemId"}]
      106 LOADK                            R15 K21 ["Actions"]
      107 SETTABLEKS                       R15 R14 K18 ["Category"]
      109 LOADK                            R15 K23 ["CompactDensity"]
      110 SETTABLEKS                       R15 R14 K19 ["ItemId"]
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R11 K14 ["Action"]
      115 LOADB                            R12 1
      116 SETTABLEKS                       R12 R11 K3 ["ReserveCheckmarkSpace"]
      118 DUPTABLE                         R12 K15 [{"Id", "Action", "ReserveCheckmarkSpace"}]
      119 LOADK                            R13 K24 ["ShowHideLabels"]
      120 SETTABLEKS                       R13 R12 K1 ["Id"]
      122 GETUPVAL                         R13 4
      123 GETTABLEKS                       R13 R13 K17 ["join"]
      125 MOVE                             R14 R0
      126 DUPTABLE                         R15 K20 [{"Category", "ItemId"}]
      127 LOADK                            R16 K21 ["Actions"]
      128 SETTABLEKS                       R16 R15 K18 ["Category"]
      130 LOADK                            R16 K24 ["ShowHideLabels"]
      131 SETTABLEKS                       R16 R15 K19 ["ItemId"]
      133 CALL                             R13 2 1
      134 SETTABLEKS                       R13 R12 K14 ["Action"]
      136 LOADB                            R13 1
      137 SETTABLEKS                       R13 R12 K3 ["ReserveCheckmarkSpace"]
      139 SETLIST                          R2 R3 10 [1]
      141 CALL                             R1 1 -1
      142 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R3 R2 K0 ["Id"]
        2 JUMPIFNOTEQKS                    R3 K1 ["Hide"] ; [+14]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 JUMPIF                           R3 ; [+5]
        8 GETIMPORT                        R3 K3 [warn]
       10 LOADK                            R4 K4 ["Cannot toggle visibility of this tab"]
       11 CALL                             R3 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R0
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R2 K0 ["Id"]
       19 JUMPIFNOTEQKS                    R3 K5 ["Rename"] ; [+39]
       21 GETUPVAL                         R3 2
       22 MOVE                             R4 R0
       23 CALL                             R3 1 1
       24 JUMPIF                           R3 ; [+5]
       25 GETIMPORT                        R3 K3 [warn]
       27 LOADK                            R4 K6 ["Cannot rename this tab"]
       28 CALL                             R3 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R3 3
       31 MOVE                             R4 R0
       32 CALL                             R3 1 0
       33 GETUPVAL                         R3 4
       34 NAMECALL                         R3 R3 K7 ["GetUri"]
       36 CALL                             R3 1 1
       37 GETUPVAL                         R4 5
       38 GETTABLEKS                       R4 R4 K8 ["join"]
       40 MOVE                             R5 R3
       41 DUPTABLE                         R6 K11 [{"Category", "ItemId"}]
       42 LOADK                            R7 K12 ["Panels"]
       43 SETTABLEKS                       R7 R6 K9 ["Category"]
       45 LOADK                            R7 K13 ["Floating"]
       46 SETTABLEKS                       R7 R6 K10 ["ItemId"]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R5 4
       50 LOADK                            R7 K12 ["Panels"]
       51 NAMECALL                         R5 R5 K14 ["GetPluginComponent"]
       53 CALL                             R5 2 1
       54 MOVE                             R8 R4
       55 NAMECALL                         R6 R5 K15 ["HideAsync"]
       57 CALL                             R6 2 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R3 R2 K0 ["Id"]
       61 JUMPIFNOTEQKS                    R3 K16 ["Duplicate"] ; [+18]
       63 GETUPVAL                         R3 6
       64 MOVE                             R4 R0
       65 CALL                             R3 1 1
       66 JUMPIF                           R3 ; [+5]
       67 GETIMPORT                        R3 K3 [warn]
       69 LOADK                            R4 K17 ["Cannot duplicate this tab"]
       70 CALL                             R3 1 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R3 7
       73 MOVE                             R4 R0
       74 MOVE                             R5 R1
       75 GETUPVAL                         R6 8
       76 MOVE                             R7 R0
       77 CALL                             R6 1 -1
       78 CALL                             R3 -1 0
       79 RETURN                           R0 0
       80 GETTABLEKS                       R3 R2 K0 ["Id"]
       82 JUMPIFNOTEQKS                    R3 K18 ["Delete"] ; [+15]
       84 GETUPVAL                         R3 9
       85 MOVE                             R4 R0
       86 CALL                             R3 1 1
       87 JUMPIF                           R3 ; [+5]
       88 GETIMPORT                        R3 K3 [warn]
       90 LOADK                            R4 K19 ["Cannot delete this tab"]
       91 CALL                             R3 1 0
       92 RETURN                           R0 0
       93 GETUPVAL                         R3 10
       94 SETTABLEKS                       R0 R3 K20 ["current"]
       96 GETUPVAL                         R3 11
       97 CALL                             R3 0 0
       98 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+5]
        4 GETIMPORT                        R2 K1 [warn]
        6 LOADK                            R3 K2 ["Cannot rename this tab"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0
        9 LOADN                            R4 1
       10 LOADN                            R5 30
       11 FASTCALL3                        STRING_SUB R1 R4 R5
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K5 [string.sub]
       16 CALL                             R2 3 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R4 R0 K6 ["Filename"]
       20 MOVE                             R5 R2
       21 CALL                             R3 2 0
       22 GETUPVAL                         R3 2
       23 LOADNIL                          R4
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 0
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K0 ["Visible"]
        9 JUMPIFNOT                        R7 ; [+6]
       10 ADDK                             R1 R1 K1 [1]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R8 R6 K2 ["Identifier"]
       14 CALL                             R7 1 1
       15 SETTABLE                         R1 R0 R7
       16 FORGLOOP                         R2 2 ; [-10]
       18 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R3 K0 ["Plugin"]
        3 LOADK                            R4 K1 ["Tab_Untitled"]
        4 NAMECALL                         R1 R1 K2 ["getText"]
        6 CALL                             R1 3 -1
        7 CALL                             R0 -1 1
        8 GETUPVAL                         R1 2
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETUPVAL                         R3 2
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 3
       14 DUPTABLE                         R4 K2 [{"Identifier", "VisibleTabIndex"}]
       15 SETTABLEKS                       R0 R4 K0 ["Identifier"]
       17 GETUPVAL                         R6 4
       18 GETUPVAL                         R7 5
       19 MOVE                             R8 R0
       20 CALL                             R7 1 1
       21 GETTABLE                         R5 R6 R7
       22 SETTABLEKS                       R5 R4 K1 ["VisibleTabIndex"]
       24 MOVE                             R5 R1
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["child"]
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 LOADB                            R5 0
       12 LOADNIL                          R6
       13 LOADB                            R7 0
       14 GETUPVAL                         R8 3
       15 JUMPIFEQKNIL                     R8 ; [+18]
       17 LOADB                            R7 0
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R8 R8 K1 ["Type"]
       21 GETTABLEKS                       R9 R0 K1 ["Type"]
       23 JUMPIFNOTEQ                      R8 R9 ; [+10]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K2 ["Filename"]
       28 GETTABLEKS                       R9 R0 K2 ["Filename"]
       30 JUMPIFEQ                         R8 R9 ; [+2]
       32 LOADB                            R7 0 +1
       33 LOADB                            R7 1
       34 GETUPVAL                         R8 4
       35 MOVE                             R9 R0
       36 CALL                             R8 1 1
       37 JUMPIFNOT                        R8 ; [+20]
       38 LOADK                            R3 K3 ["+"]
       39 DUPTABLE                         R8 K6 [{"Title", "Text"}]
       40 GETUPVAL                         R9 5
       41 LOADK                            R11 K4 ["Title"]
       42 LOADK                            R12 K7 ["AddNewTab"]
       43 NAMECALL                         R9 R9 K8 ["getText"]
       45 CALL                             R9 3 1
       46 SETTABLEKS                       R9 R8 K4 ["Title"]
       48 GETUPVAL                         R9 5
       49 LOADK                            R11 K9 ["Tooltip"]
       50 LOADK                            R12 K7 ["AddNewTab"]
       51 NAMECALL                         R9 R9 K8 ["getText"]
       53 CALL                             R9 3 1
       54 SETTABLEKS                       R9 R8 K5 ["Text"]
       56 MOVE                             R4 R8
       57 JUMP                             ; [+31]
       58 GETUPVAL                         R8 6
       59 GETTABLE                         R3 R8 R1
       60 LOADB                            R8 0
       61 GETUPVAL                         R9 7
       62 JUMPIFEQKNIL                     R9 ; [+18]
       64 LOADB                            R8 0
       65 GETUPVAL                         R9 7
       66 GETTABLEKS                       R9 R9 K1 ["Type"]
       68 GETTABLEKS                       R10 R0 K1 ["Type"]
       70 JUMPIFNOTEQ                      R9 R10 ; [+10]
       72 GETUPVAL                         R9 7
       73 GETTABLEKS                       R9 R9 K2 ["Filename"]
       75 GETTABLEKS                       R10 R0 K2 ["Filename"]
       77 JUMPIFEQ                         R9 R10 ; [+2]
       79 LOADB                            R8 0 +1
       80 LOADB                            R8 1
       81 MOVE                             R5 R8
       82 GETTABLEKS                       R8 R0 K1 ["Type"]
       84 JUMPIFNOTEQKS                    R8 K10 ["BuiltIn"] ; [+3]
       86 GETUPVAL                         R6 8
       87 JUMP                             ; [+1]
       88 GETUPVAL                         R6 9
       89 DUPTABLE                         R8 K18 [{"Uri", "Text", "Tooltip", "Selected", "OnSelected", "ContextMenuItems", "OnContextMenuItemSelected", "Editing", "OnEditCommitted"}]
       90 SETTABLEKS                       R2 R8 K11 ["Uri"]
       92 SETTABLEKS                       R3 R8 K5 ["Text"]
       94 SETTABLEKS                       R4 R8 K9 ["Tooltip"]
       96 SETTABLEKS                       R5 R8 K12 ["Selected"]
       98 NEWCLOSURE                       R9 P0
       99 CAPTURE                          UPVAL U10
      100 CAPTURE                          VAL R0
      101 SETTABLEKS                       R9 R8 K13 ["OnSelected"]
      103 SETTABLEKS                       R6 R8 K14 ["ContextMenuItems"]
      105 NEWCLOSURE                       R9 P1
      106 CAPTURE                          UPVAL U11
      107 CAPTURE                          VAL R0
      108 CAPTURE                          REF R3
      109 SETTABLEKS                       R9 R8 K15 ["OnContextMenuItemSelected"]
      111 SETTABLEKS                       R7 R8 K16 ["Editing"]
      113 NEWCLOSURE                       R9 P2
      114 CAPTURE                          UPVAL U12
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R9 R8 K17 ["OnEditCommitted"]
      118 CLOSEUPVALS                      R3
      119 RETURN                           R8 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"GetTabProps", "OnOverflowMenuAddTab"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["GetTabProps"]
        5 GETUPVAL                         R2 2
        6 SETTABLEKS                       R2 R1 K1 ["OnOverflowMenuAddTab"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["use"]
        7 CALL                             R3 0 1
        8 NAMECALL                         R3 R3 K1 ["get"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 3
       14 GETUPVAL                         R6 4
       15 CALL                             R5 1 1
       16 GETTABLEKS                       R6 R5 K2 ["Definition"]
       18 GETTABLEKS                       R7 R6 K3 ["Layout"]
       20 GETTABLEKS                       R7 R7 K4 ["TabLayout"]
       22 GETTABLEKS                       R8 R5 K5 ["AddTab"]
       24 GETTABLEKS                       R9 R5 K6 ["DeleteTab"]
       26 GETTABLEKS                       R10 R5 K7 ["DuplicateTab"]
       28 GETTABLEKS                       R11 R5 K8 ["RenameTab"]
       30 GETTABLEKS                       R12 R5 K9 ["SelectTab"]
       32 GETTABLEKS                       R13 R5 K10 ["ToggleTabVisibility"]
       34 GETUPVAL                         R14 5
       35 LOADNIL                          R15
       36 CALL                             R14 1 1
       37 GETUPVAL                         R15 6
       38 DUPTABLE                         R16 K18 [{"Intent", "Title", "ToolDialog", "Modal", "Heading", "ActionPrimary", "ActionSecondary"}]
       39 LOADK                            R17 K19 ["Destructive"]
       40 SETTABLEKS                       R17 R16 K11 ["Intent"]
       42 LOADK                            R19 K20 ["Plugin"]
       43 LOADK                            R20 K21 ["DeleteTab_Title"]
       44 NAMECALL                         R17 R2 K22 ["getText"]
       46 CALL                             R17 3 1
       47 SETTABLEKS                       R17 R16 K12 ["Title"]
       49 LOADB                            R17 1
       50 SETTABLEKS                       R17 R16 K13 ["ToolDialog"]
       52 LOADB                            R17 1
       53 SETTABLEKS                       R17 R16 K14 ["Modal"]
       55 LOADK                            R19 K20 ["Plugin"]
       56 LOADK                            R20 K23 ["DeleteTab_Text"]
       57 NAMECALL                         R17 R2 K22 ["getText"]
       59 CALL                             R17 3 1
       60 SETTABLEKS                       R17 R16 K15 ["Heading"]
       62 GETUPVAL                         R17 7
       63 GETTABLEKS                       R17 R17 K24 ["join"]
       65 GETUPVAL                         R18 8
       66 GETTABLEKS                       R18 R18 K25 ["OK"]
       68 DUPTABLE                         R19 K27 [{"OnActivated"}]
       69 NEWCLOSURE                       R20 P0
       70 CAPTURE                          VAL R14
       71 CAPTURE                          VAL R9
       72 SETTABLEKS                       R20 R19 K26 ["OnActivated"]
       74 CALL                             R17 2 1
       75 SETTABLEKS                       R17 R16 K16 ["ActionPrimary"]
       77 GETUPVAL                         R17 8
       78 GETTABLEKS                       R17 R17 K28 ["CANCEL"]
       80 SETTABLEKS                       R17 R16 K17 ["ActionSecondary"]
       82 CALL                             R15 1 1
       83 GETUPVAL                         R16 9
       84 CALL                             R16 0 1
       85 GETUPVAL                         R17 10
       86 NEWCLOSURE                       R18 P1
       87 CAPTURE                          VAL R3
       88 CAPTURE                          UPVAL U11
       89 CAPTURE                          VAL R2
       90 CAPTURE                          UPVAL U12
       91 NEWTABLE                         R19 0 1
       93 GETTABLEKS                       R20 R2 K29 ["locale"]
       95 SETLIST                          R19 R20 1 [1]
       97 CALL                             R17 2 1
       98 GETUPVAL                         R18 10
       99 NEWCLOSURE                       R19 P2
      100 CAPTURE                          VAL R3
      101 CAPTURE                          UPVAL U11
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R17
      104 CAPTURE                          UPVAL U12
      105 NEWTABLE                         R20 0 2
      107 GETTABLEKS                       R21 R2 K29 ["locale"]
      109 MOVE                             R22 R17
      110 SETLIST                          R20 R21 2 [1]
      112 CALL                             R18 2 1
      113 GETUPVAL                         R19 13
      114 LOADNIL                          R20
      115 CALL                             R19 1 2
      116 GETUPVAL                         R21 14
      117 NEWCLOSURE                       R22 P3
      118 CAPTURE                          UPVAL U15
      119 CAPTURE                          VAL R13
      120 CAPTURE                          UPVAL U16
      121 CAPTURE                          VAL R20
      122 CAPTURE                          VAL R3
      123 CAPTURE                          UPVAL U12
      124 CAPTURE                          UPVAL U17
      125 CAPTURE                          VAL R10
      126 CAPTURE                          UPVAL U18
      127 CAPTURE                          UPVAL U19
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R15
      130 NEWTABLE                         R23 0 5
      132 MOVE                             R24 R13
      133 MOVE                             R25 R20
      134 MOVE                             R26 R10
      135 MOVE                             R27 R9
      136 MOVE                             R28 R15
      137 SETLIST                          R23 R24 5 [1]
      139 CALL                             R21 2 1
      140 GETUPVAL                         R22 14
      141 NEWCLOSURE                       R23 P4
      142 CAPTURE                          UPVAL U16
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R20
      145 NEWTABLE                         R24 0 3
      147 MOVE                             R25 R8
      148 MOVE                             R26 R11
      149 MOVE                             R27 R20
      150 SETLIST                          R24 R25 3 [1]
      152 CALL                             R22 2 1
      153 GETUPVAL                         R23 10
      154 NEWCLOSURE                       R24 P5
      155 CAPTURE                          VAL R7
      156 CAPTURE                          UPVAL U20
      157 NEWTABLE                         R25 0 1
      159 MOVE                             R26 R7
      160 SETLIST                          R25 R26 1 [1]
      162 CALL                             R23 2 1
      163 GETUPVAL                         R24 14
      164 NEWCLOSURE                       R25 P6
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R20
      168 NEWTABLE                         R26 0 3
      170 MOVE                             R27 R8
      171 GETTABLEKS                       R28 R2 K29 ["locale"]
      173 MOVE                             R29 R20
      174 SETLIST                          R26 R27 3 [1]
      176 CALL                             R24 2 1
      177 GETUPVAL                         R25 14
      178 NEWCLOSURE                       R26 P7
      179 CAPTURE                          UPVAL U21
      180 CAPTURE                          VAL R24
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R23
      184 CAPTURE                          UPVAL U20
      185 NEWTABLE                         R27 0 4
      187 MOVE                             R28 R24
      188 MOVE                             R29 R1
      189 MOVE                             R30 R12
      190 MOVE                             R31 R23
      191 SETLIST                          R27 R28 4 [1]
      193 CALL                             R25 2 1
      194 GETUPVAL                         R26 14
      195 NEWCLOSURE                       R27 P8
      196 CAPTURE                          UPVAL U20
      197 CAPTURE                          UPVAL U12
      198 CAPTURE                          VAL R0
      199 CAPTURE                          VAL R19
      200 CAPTURE                          UPVAL U21
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R16
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R22
      209 NEWTABLE                         R28 0 9
      211 MOVE                             R29 R0
      212 MOVE                             R30 R19
      213 MOVE                             R31 R16
      214 MOVE                             R32 R4
      215 MOVE                             R33 R17
      216 MOVE                             R34 R18
      217 MOVE                             R35 R25
      218 MOVE                             R36 R21
      219 MOVE                             R37 R22
      220 SETLIST                          R28 R29 9 [1]
      222 CALL                             R26 2 1
      223 GETUPVAL                         R27 10
      224 NEWCLOSURE                       R28 P9
      225 CAPTURE                          UPVAL U11
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R24
      228 NEWTABLE                         R29 0 1
      230 MOVE                             R30 R26
      231 SETLIST                          R29 R30 1 [1]
      233 CALL                             R27 2 1
      234 RETURN                           R27 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["RibbonDefinition"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["Util"]
       39 GETTABLEKS                       R5 R5 K14 ["StudioUri"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R7 K15 ["Components"]
       47 GETTABLEKS                       R7 R7 K16 ["Tab"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R8 K13 ["Util"]
       56 GETTABLEKS                       R8 R8 K17 ["TabTraits"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K9 ["Src"]
       63 GETTABLEKS                       R9 R9 K13 ["Util"]
       65 GETTABLEKS                       R9 R9 K18 ["controlsIdentifierToString"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K9 ["Src"]
       72 GETTABLEKS                       R10 R10 K13 ["Util"]
       74 GETTABLEKS                       R10 R10 K19 ["deepFreeze"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R0 K9 ["Src"]
       81 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       83 GETTABLEKS                       R11 R11 K21 ["useActiveTabIdentifier"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K9 ["Src"]
       90 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       92 GETTABLEKS                       R12 R12 K22 ["useLocalizedTabNames"]
       94 CALL                             R11 1 1
       95 GETTABLEKS                       R12 R1 K23 ["UI"]
       97 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       99 GETTABLEKS                       R12 R12 K24 ["useDialog"]
      101 GETTABLEKS                       R13 R1 K13 ["Util"]
      103 GETTABLEKS                       R13 R13 K25 ["DialogAction"]
      105 GETIMPORT                        R14 K5 [require]
      107 GETTABLEKS                       R15 R0 K6 ["Packages"]
      109 GETTABLEKS                       R15 R15 K26 ["Dash"]
      111 CALL                             R14 1 1
      112 GETTABLEKS                       R15 R1 K27 ["ContextServices"]
      114 GETTABLEKS                       R15 R15 K28 ["Localization"]
      116 GETTABLEKS                       R16 R1 K27 ["ContextServices"]
      118 GETTABLEKS                       R16 R16 K29 ["Plugin"]
      120 GETTABLEKS                       R17 R7 K30 ["hasToggleableVisibility"]
      122 GETTABLEKS                       R18 R7 K31 ["isAddButton"]
      124 GETTABLEKS                       R19 R7 K32 ["isDeletable"]
      126 GETTABLEKS                       R20 R7 K33 ["isDuplicable"]
      128 GETTABLEKS                       R21 R7 K34 ["isRenamable"]
      130 GETTABLEKS                       R22 R7 K35 ["shouldCopyCustomTools"]
      132 GETTABLEKS                       R23 R2 K36 ["useCallback"]
      134 GETTABLEKS                       R24 R2 K37 ["useContext"]
      136 GETTABLEKS                       R25 R2 K38 ["useMemo"]
      138 GETTABLEKS                       R26 R2 K39 ["useState"]
      140 GETTABLEKS                       R27 R2 K40 ["useRef"]
      142 DUPCLOSURE                       R28 K41 [PROTO_13]
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R24
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R27
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R25
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R26
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R18
      165 RETURN                           R28 1
