PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDoubleClick"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Path"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["Name"]
        5 GETTABLEKS                       R2 R2 K2 ["Value"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 GETTABLEKS                       R4 R0 K3 ["Instance"]
       12 JUMPIFNOT                        R4 ; [+60]
       13 GETTABLEKS                       R4 R0 K3 ["Instance"]
       15 LOADK                            R6 K4 ["StyleRule"]
       16 NAMECALL                         R4 R4 K5 ["IsA"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R4 ; [+10]
       20 GETTABLEKS                       R4 R1 K6 ["dispatch"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R6 R0 K3 ["Instance"]
       25 MOVE                             R7 R3
       26 LOADB                            R8 1
       27 CALL                             R5 3 -1
       28 CALL                             R4 -1 0
       29 RETURN                           R0 0
       30 GETTABLEKS                       R4 R0 K3 ["Instance"]
       32 LOADK                            R6 K7 ["StyleSheet"]
       33 NAMECALL                         R4 R4 K5 ["IsA"]
       35 CALL                             R4 2 1
       36 JUMPIFNOT                        R4 ; [+9]
       37 GETTABLEKS                       R4 R1 K6 ["dispatch"]
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R6 R0 K3 ["Instance"]
       42 MOVE                             R7 R3
       43 CALL                             R5 2 -1
       44 CALL                             R4 -1 0
       45 RETURN                           R0 0
       46 GETTABLEKS                       R4 R0 K3 ["Instance"]
       48 LOADK                            R6 K8 ["Folder"]
       49 NAMECALL                         R4 R4 K5 ["IsA"]
       51 CALL                             R4 2 1
       52 JUMPIFNOT                        R4 ; [+122]
       53 GETUPVAL                         R4 3
       54 JUMPIFNOT                        R4 ; [+9]
       55 GETTABLEKS                       R4 R1 K6 ["dispatch"]
       57 GETUPVAL                         R5 4
       58 GETTABLEKS                       R6 R0 K3 ["Instance"]
       60 LOADB                            R7 1
       61 CALL                             R5 2 -1
       62 CALL                             R4 -1 0
       63 RETURN                           R0 0
       64 GETTABLEKS                       R4 R1 K6 ["dispatch"]
       66 GETUPVAL                         R5 5
       67 GETTABLEKS                       R6 R0 K3 ["Instance"]
       69 MOVE                             R7 R3
       70 CALL                             R5 2 -1
       71 CALL                             R4 -1 0
       72 RETURN                           R0 0
       73 GETUPVAL                         R4 6
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K9 ["state"]
       77 GETTABLEKS                       R6 R6 K10 ["table"]
       79 GETTABLEKS                       R6 R6 K11 ["Items"]
       81 MOVE                             R7 R0
       82 NAMECALL                         R4 R4 K12 ["getParent"]
       84 CALL                             R4 3 1
       85 JUMPIFNOTEQKS                    R2 K13 ["UI Elements"] ; [+9]
       87 GETTABLEKS                       R5 R1 K6 ["dispatch"]
       89 GETUPVAL                         R6 7
       90 GETTABLEKS                       R7 R4 K3 ["Instance"]
       92 CALL                             R6 1 -1
       93 CALL                             R5 -1 0
       94 RETURN                           R0 0
       95 JUMPIFNOTEQKS                    R2 K14 ["StyleSheets"] ; [+7]
       97 GETTABLEKS                       R5 R1 K6 ["dispatch"]
       99 GETUPVAL                         R6 8
      100 CALL                             R6 0 -1
      101 CALL                             R5 -1 0
      102 RETURN                           R0 0
      103 JUMPIFNOTEQKS                    R2 K15 ["Themes"] ; [+7]
      105 GETTABLEKS                       R5 R1 K6 ["dispatch"]
      107 GETUPVAL                         R6 9
      108 CALL                             R6 0 -1
      109 CALL                             R5 -1 0
      110 RETURN                           R0 0
      111 JUMPIFNOTEQKS                    R2 K16 ["Tokens"] ; [+7]
      113 GETTABLEKS                       R5 R1 K6 ["dispatch"]
      115 GETUPVAL                         R6 10
      116 CALL                             R6 0 -1
      117 CALL                             R5 -1 0
      118 RETURN                           R0 0
      119 GETTABLEKS                       R5 R4 K3 ["Instance"]
      121 JUMPIFNOT                        R5 ; [+48]
      122 GETTABLEKS                       R5 R4 K3 ["Instance"]
      124 LOADK                            R7 K7 ["StyleSheet"]
      125 NAMECALL                         R5 R5 K5 ["IsA"]
      127 CALL                             R5 2 1
      128 JUMPIFNOT                        R5 ; [+41]
      129 GETTABLEKS                       R5 R0 K1 ["Name"]
      131 GETTABLEKS                       R5 R5 K2 ["Value"]
      133 JUMPIFNOTEQKS                    R5 K17 ["Tags"] ; [+10]
      135 GETTABLEKS                       R5 R1 K6 ["dispatch"]
      137 GETUPVAL                         R6 11
      138 GETTABLEKS                       R7 R4 K3 ["Instance"]
      140 LOADK                            R8 K18 [".Tag"]
      141 CALL                             R6 2 -1
      142 CALL                             R5 -1 0
      143 RETURN                           R0 0
      144 GETTABLEKS                       R5 R0 K1 ["Name"]
      146 GETTABLEKS                       R5 R5 K2 ["Value"]
      148 JUMPIFNOTEQKS                    R5 K19 ["Queries"] ; [+12]
      150 GETUPVAL                         R5 3
      151 JUMPIFNOT                        R5 ; [+9]
      152 GETTABLEKS                       R5 R1 K6 ["dispatch"]
      154 GETUPVAL                         R6 11
      155 GETTABLEKS                       R7 R4 K3 ["Instance"]
      157 LOADK                            R8 K20 ["@Query"]
      158 CALL                             R6 2 -1
      159 CALL                             R5 -1 0
      160 RETURN                           R0 0
      161 GETTABLEKS                       R5 R1 K6 ["dispatch"]
      163 GETUPVAL                         R6 11
      164 GETTABLEKS                       R7 R4 K3 ["Instance"]
      166 LOADK                            R8 K21 ["#Name"]
      167 CALL                             R6 2 -1
      168 CALL                             R5 -1 0
      169 RETURN                           R0 0
      170 GETTABLEKS                       R5 R1 K6 ["dispatch"]
      172 GETUPVAL                         R6 12
      173 CALL                             R6 0 -1
      174 CALL                             R5 -1 0
      175 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["Menu"] ; [+20]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["state"]
        6 GETTABLEKS                       R4 R4 K2 ["table"]
        8 GETTABLEKS                       R4 R4 K3 ["Items"]
       10 MOVE                             R5 R1
       11 NAMECALL                         R2 R2 K4 ["getChild"]
       13 CALL                             R2 3 1
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["showContextMenuForItem"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["showContextMenuForItem"]
        3 GETTABLEKS                       R3 R0 K1 ["item"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["dispatch"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["PaneSizes"]
        2 GETTABLEN                        R1 R2 1
        3 GETUPVAL                         R3 0
        4 GETTABLEN                        R2 R3 1
        5 JUMPIFNOTEQ                      R1 R2 ; [+8]
        7 GETTABLEKS                       R2 R0 K0 ["PaneSizes"]
        9 GETTABLEN                        R1 R2 2
       10 GETUPVAL                         R3 0
       11 GETTABLEN                        R2 R3 2
       12 JUMPIFEQ                         R1 R2 ; [+6]
       14 DUPTABLE                         R1 K1 [{"PaneSizes"}]
       15 GETUPVAL                         R2 0
       16 SETTABLEKS                       R2 R1 K0 ["PaneSizes"]
       18 RETURN                           R1 1
       19 LOADNIL                          R1
       20 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["dispatch"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R4 R1 K1 ["table"]
        6 GETTABLEKS                       R4 R4 K2 ["Items"]
        8 MOVE                             R5 R0
        9 NAMECALL                         R2 R2 K3 ["getChild"]
       11 CALL                             R2 3 1
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["selectItem"]
       17 GETTABLEKS                       R4 R2 K5 ["Id"]
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["Items"]
        3 GETUPVAL                         R4 1
        4 NAMECALL                         R1 R1 K1 ["getChild"]
        6 CALL                             R1 3 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K2 ["Instance"]
       10 JUMPIF                           R2 ; [+2]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 2
       14 JUMPIFNOT                        R2 ; [+17]
       15 GETTABLEKS                       R2 R1 K2 ["Instance"]
       17 LOADK                            R4 K3 ["Folder"]
       18 NAMECALL                         R2 R2 K4 ["IsA"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+10]
       22 GETTABLEKS                       R2 R1 K5 ["Name"]
       24 GETTABLEKS                       R2 R2 K6 ["Value"]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K7 ["FolderName"]
       29 JUMPIFNOTEQ                      R2 R3 ; [+2]
       31 RETURN                           R0 0
       32 DUPTABLE                         R2 K9 [{"Schema", "Value"}]
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R4 R1 K5 ["Name"]
       36 GETTABLEKS                       R4 R4 K8 ["Schema"]
       38 DUPTABLE                         R5 K12 [{["Editing"] = True}]
       39 CALL                             R3 2 1
       40 SETTABLEKS                       R3 R2 K8 ["Schema"]
       42 GETTABLEKS                       R4 R1 K2 ["Instance"]
       44 LOADK                            R6 K13 ["StyleRule"]
       45 NAMECALL                         R4 R4 K4 ["IsA"]
       47 CALL                             R4 2 1
       48 JUMPIFNOT                        R4 ; [+5]
       49 GETTABLEKS                       R3 R1 K2 ["Instance"]
       51 GETTABLEKS                       R3 R3 K14 ["Selector"]
       53 JUMP                             ; [+4]
       54 GETTABLEKS                       R3 R1 K2 ["Instance"]
       56 GETTABLEKS                       R3 R3 K5 ["Name"]
       58 SETTABLEKS                       R3 R2 K6 ["Value"]
       60 GETUPVAL                         R3 0
       61 MOVE                             R5 R0
       62 MOVE                             R6 R2
       63 GETUPVAL                         R7 1
       64 LOADN                            R8 1
       65 NAMECALL                         R3 R3 K15 ["updateCell"]
       67 CALL                             R3 5 1
       68 MOVE                             R0 R3
       69 GETUPVAL                         R3 5
       70 GETTABLEKS                       R4 R0 K0 ["Items"]
       72 CALL                             R3 1 1
       73 SETTABLEKS                       R3 R0 K0 ["Items"]
       75 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["adaptor"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K1 [{"table"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["table"]
        4 DUPTABLE                         R4 K3 [{"Expansion"}]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R6 R0 K0 ["table"]
        8 GETTABLEKS                       R6 R6 K2 ["Expansion"]
       10 GETUPVAL                         R7 1
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K2 ["Expansion"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K0 ["table"]
       17 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_13]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["selectItem"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["table"]
        2 GETTABLEKS                       R1 R1 K1 ["Expansion"]
        4 GETTABLEKS                       R2 R0 K0 ["table"]
        6 GETTABLEKS                       R2 R2 K2 ["Items"]
        8 GETUPVAL                         R3 0
        9 JUMPIFNOT                        R3 ; [+23]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["buildTree"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K4 ["Source"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K5 ["Localization"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 GETUPVAL                         R3 3
       22 MOVE                             R5 R2
       23 NAMECALL                         R3 R3 K6 ["updatePaths"]
       25 CALL                             R3 2 1
       26 MOVE                             R2 R3
       27 GETUPVAL                         R3 4
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K7 ["IsDirty"]
       31 SETTABLEKS                       R4 R3 K8 ["lastUpdate"]
       33 GETUPVAL                         R3 5
       34 JUMPIF                           R3 ; [+2]
       35 GETUPVAL                         R3 0
       36 JUMPIFNOT                        R3 ; [+21]
       37 GETUPVAL                         R3 3
       38 MOVE                             R5 R2
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K9 ["SelectedItemId"]
       42 NAMECALL                         R3 R3 K10 ["findItemById"]
       44 CALL                             R3 3 1
       45 JUMPIFNOT                        R3 ; [+12]
       46 GETUPVAL                         R4 3
       47 MOVE                             R6 R2
       48 GETTABLEKS                       R7 R3 K11 ["Path"]
       50 NAMECALL                         R4 R4 K12 ["expandAncestors"]
       52 CALL                             R4 3 1
       53 GETUPVAL                         R5 6
       54 MOVE                             R6 R1
       55 MOVE                             R7 R4
       56 CALL                             R5 2 1
       57 MOVE                             R1 R5
       58 GETTABLEKS                       R3 R0 K0 ["table"]
       60 GETTABLEKS                       R3 R3 K2 ["Items"]
       62 JUMPIFNOTEQ                      R2 R3 ; [+7]
       64 GETTABLEKS                       R3 R0 K0 ["table"]
       66 GETTABLEKS                       R3 R3 K1 ["Expansion"]
       68 JUMPIFEQ                         R1 R3 ; [+14]
       70 DUPTABLE                         R3 K13 [{"table"}]
       71 GETUPVAL                         R4 6
       72 GETTABLEKS                       R5 R0 K0 ["table"]
       74 DUPTABLE                         R6 K14 [{"Items", "Expansion"}]
       75 SETTABLEKS                       R2 R6 K2 ["Items"]
       77 SETTABLEKS                       R1 R6 K1 ["Expansion"]
       79 CALL                             R4 2 1
       80 SETTABLEKS                       R4 R3 K0 ["table"]
       82 RETURN                           R3 1
       83 LOADNIL                          R3
       84 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R3 R3 K1 ["setState"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K2 [{"PaneSizes", "table"}]
        1 NEWTABLE                         R2 0 2
        3 GETIMPORT                        R3 K5 [UDim.new]
        5 LOADN                            R4 0
        6 LOADN                            R5 200
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K5 [UDim.new]
       10 LOADN                            R5 1
       11 LOADN                            R6 -200
       12 CALL                             R4 2 -1
       13 SETLIST                          R2 R3 -1 [1]
       15 SETTABLEKS                       R2 R1 K0 ["PaneSizes"]
       17 DUPTABLE                         R2 K10 [{"Columns", "Expansion", "Selection", "Items"}]
       18 GETUPVAL                         R3 0
       19 GETUPVAL                         R4 1
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K6 ["Columns"]
       23 NEWTABLE                         R3 4 0
       25 LOADB                            R4 1
       26 SETTABLEKS                       R4 R3 K11 ["StyleSheets"]
       28 LOADB                            R4 1
       29 SETTABLEKS                       R4 R3 K12 ["Themes"]
       31 LOADB                            R4 1
       32 SETTABLEKS                       R4 R3 K13 ["Tokens"]
       34 SETTABLEKS                       R3 R2 K7 ["Expansion"]
       36 NEWTABLE                         R3 0 0
       38 SETTABLEKS                       R3 R2 K8 ["Selection"]
       40 NEWTABLE                         R3 0 0
       42 SETTABLEKS                       R3 R2 K9 ["Items"]
       44 SETTABLEKS                       R2 R1 K1 ["table"]
       46 SETTABLEKS                       R1 R0 K14 ["state"]
       48 LOADN                            R1 -1
       49 SETTABLEKS                       R1 R0 K15 ["lastUpdate"]
       51 NEWCLOSURE                       R1 P0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          UPVAL U8
       60 CAPTURE                          UPVAL U9
       61 CAPTURE                          UPVAL U10
       62 CAPTURE                          UPVAL U11
       63 CAPTURE                          UPVAL U12
       64 CAPTURE                          UPVAL U13
       65 SETTABLEKS                       R1 R0 K16 ["showContextMenuForItem"]
       67 NEWCLOSURE                       R1 P1
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R1 R0 K17 ["onAction"]
       72 NEWCLOSURE                       R1 P2
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R1 R0 K18 ["onRightClick"]
       76 NEWCLOSURE                       R1 P3
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U14
       79 SETTABLEKS                       R1 R0 K19 ["onSearch"]
       81 NEWCLOSURE                       R1 P4
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R1 R0 K20 ["onPaneSizesChanged"]
       85 GETUPVAL                         R1 7
       86 MOVE                             R3 R0
       87 LOADK                            R4 K1 ["table"]
       88 NAMECALL                         R1 R1 K21 ["getStateAdaptor"]
       90 CALL                             R1 3 1
       91 SETTABLEKS                       R1 R0 K22 ["adaptor"]
       93 GETUPVAL                         R1 7
       94 GETTABLEKS                       R3 R0 K22 ["adaptor"]
       96 NAMECALL                         R1 R1 K23 ["getCallbacks"]
       98 CALL                             R1 2 1
       99 SETTABLEKS                       R1 R0 K24 ["tableCallbacks"]
      101 NEWCLOSURE                       R1 P5
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U15
      104 SETTABLEKS                       R1 R0 K25 ["selectItem"]
      106 NEWCLOSURE                       R1 P6
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U7
      109 SETTABLEKS                       R1 R0 K26 ["onCellPressed"]
      111 NEWCLOSURE                       R1 P7
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U7
      114 CAPTURE                          UPVAL U4
      115 CAPTURE                          UPVAL U16
      116 CAPTURE                          UPVAL U17
      117 CAPTURE                          UPVAL U0
      118 SETTABLEKS                       R1 R0 K27 ["onDoubleClick"]
      120 GETTABLEKS                       R1 R0 K24 ["tableCallbacks"]
      122 NEWCLOSURE                       R2 P8
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U17
      125 SETTABLEKS                       R2 R1 K28 ["OnExpansionChange"]
      127 GETTABLEKS                       R1 R0 K24 ["tableCallbacks"]
      129 NEWCLOSURE                       R2 P9
      130 CAPTURE                          UPVAL U18
      131 CAPTURE                          VAL R0
      132 SETTABLEKS                       R2 R1 K29 ["OnSelectionChange"]
      134 NEWCLOSURE                       R1 P10
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U19
      137 CAPTURE                          UPVAL U7
      138 CAPTURE                          UPVAL U17
      139 SETTABLEKS                       R1 R0 K30 ["updateItems"]
      141 GETTABLEKS                       R1 R0 K30 ["updateItems"]
      143 LOADB                            R2 1
      144 LOADB                            R3 1
      145 CALL                             R1 2 0
      146 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R0 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Children"]
        4 LENGTH                           R1 R2
        5 LOADN                            R2 0
        6 JUMPIFLT                         R2 R1 ; [+16]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K1 ["Name"]
       11 GETTABLEKS                       R0 R0 K2 ["Value"]
       13 NAMECALL                         R0 R0 K3 ["lower"]
       15 CALL                             R0 1 1
       16 GETUPVAL                         R2 1
       17 NAMECALL                         R2 R2 K3 ["lower"]
       19 CALL                             R2 1 -1
       20 NAMECALL                         R0 R0 K4 ["match"]
       22 CALL                             R0 -1 1
       23 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["applySearch"]
        6 GETTABLEKS                       R4 R2 K1 ["Children"]
        8 GETUPVAL                         R5 2
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K1 ["Children"]
       12 GETIMPORT                        R3 K3 [pcall]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U2
       17 CALL                             R3 1 2
       18 JUMPIFNOT                        R3 ; [+2]
       19 JUMPIFNOT                        R4 ; [+1]
       20 RETURN                           R2 1
       21 LOADNIL                          R5
       22 RETURN                           R5 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 LOADB                            R4 1
        3 GETTABLEKS                       R5 R3 K1 ["IsDirty"]
        5 GETTABLEKS                       R6 R0 K2 ["lastUpdate"]
        7 JUMPIFLT                         R6 R5 ; [+9]
        9 GETTABLEKS                       R5 R1 K3 ["Source"]
       11 GETTABLEKS                       R6 R3 K3 ["Source"]
       13 JUMPIFNOTEQ                      R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 GETTABLEKS                       R6 R3 K4 ["SelectedItemId"]
       19 GETTABLEKS                       R7 R1 K4 ["SelectedItemId"]
       21 JUMPIFNOTEQ                      R6 R7 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 GETTABLEKS                       R6 R0 K5 ["updateItems"]
       27 MOVE                             R7 R4
       28 MOVE                             R8 R5
       29 CALL                             R6 2 0
       30 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K5 [{"tableItems", "dispatch", "setState", "newValue", "path"}]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K6 ["table"]
        5 GETTABLEKS                       R5 R5 K7 ["Items"]
        7 SETTABLEKS                       R5 R4 K0 ["tableItems"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K1 ["dispatch"]
       12 SETTABLEKS                       R5 R4 K1 ["dispatch"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K8 ["adaptor"]
       17 SETTABLEKS                       R5 R4 K2 ["setState"]
       19 SETTABLEKS                       R0 R4 K3 ["newValue"]
       21 SETTABLEKS                       R1 R4 K4 ["path"]
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_23:
        0 JUMPIFNOT                        R1 ; [+13]
        1 GETTABLEKS                       R2 R1 K0 ["Instance"]
        3 JUMPIFNOT                        R2 ; [+10]
        4 GETTABLEKS                       R2 R1 K0 ["Instance"]
        6 LOADK                            R4 K1 ["StyleSheet"]
        7 NAMECALL                         R2 R2 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+3]
       11 GETTABLEKS                       R2 R1 K0 ["Instance"]
       13 RETURN                           R2 1
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["table"]
        6 GETTABLEKS                       R3 R3 K3 ["Items"]
        8 GETTABLEKS                       R5 R1 K4 ["SelectedItemId"]
       10 JUMPIFNOT                        R5 ; [+8]
       11 GETUPVAL                         R4 0
       12 MOVE                             R6 R3
       13 GETTABLEKS                       R7 R1 K4 ["SelectedItemId"]
       15 NAMECALL                         R4 R4 K5 ["findItemById"]
       17 CALL                             R4 3 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R4
       20 GETTABLEKS                       R5 R2 K2 ["table"]
       22 GETTABLEKS                       R5 R5 K6 ["Expansion"]
       24 GETTABLEKS                       R6 R1 K7 ["SearchTerm"]
       26 JUMPIFNOT                        R6 ; [+8]
       27 GETTABLEKS                       R8 R1 K7 ["SearchTerm"]
       29 LENGTH                           R7 R8
       30 LOADN                            R8 0
       31 JUMPIFLT                         R8 R7 ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 JUMPIFNOT                        R6 ; [+18]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K8 ["applySearch"]
       39 MOVE                             R8 R3
       40 GETTABLEKS                       R9 R1 K7 ["SearchTerm"]
       42 CALL                             R7 2 1
       43 MOVE                             R3 R7
       44 GETUPVAL                         R7 2
       45 MOVE                             R8 R5
       46 CALL                             R7 1 1
       47 MOVE                             R5 R7
       48 GETUPVAL                         R7 0
       49 MOVE                             R9 R3
       50 MOVE                             R10 R5
       51 NAMECALL                         R7 R7 K9 ["expandAll"]
       53 CALL                             R7 3 0
       54 GETTABLEKS                       R8 R1 K4 ["SelectedItemId"]
       56 JUMPIFNOT                        R8 ; [+7]
       57 NEWTABLE                         R7 1 0
       59 GETTABLEKS                       R8 R1 K4 ["SelectedItemId"]
       61 LOADB                            R9 1
       62 SETTABLE                         R9 R7 R8
       63 JUMP                             ; [+2]
       64 NEWTABLE                         R7 0 0
       66 GETUPVAL                         R8 3
       67 GETTABLEKS                       R8 R8 K10 ["createElement"]
       69 GETUPVAL                         R9 4
       70 NEWTABLE                         R10 2 0
       72 GETUPVAL                         R12 5
       73 JUMPIFNOT                        R12 ; [+2]
       74 LOADK                            R11 K11 ["Left"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R11
       77 SETTABLEKS                       R11 R10 K12 ["key"]
       79 GETUPVAL                         R11 3
       80 GETTABLEKS                       R11 R11 K13 ["Tag"]
       82 LOADK                            R12 K14 ["X-Column"]
       83 SETTABLE                         R12 R10 R11
       84 DUPTABLE                         R11 K18 [{"SearchInput", "LeftItems", "Source"}]
       85 GETUPVAL                         R12 3
       86 GETTABLEKS                       R12 R12 K10 ["createElement"]
       88 GETUPVAL                         R13 6
       89 NEWTABLE                         R14 8 0
       91 LOADN                            R15 1
       92 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
       94 GETTABLEKS                       R15 R0 K20 ["onSearch"]
       96 SETTABLEKS                       R15 R14 K21 ["OnTextChanged"]
       98 GETTABLEKS                       R15 R1 K22 ["Localization"]
      100 LOADK                            R17 K23 ["Control"]
      101 LOADK                            R18 K24 ["SearchPlaceholder"]
      102 NAMECALL                         R15 R15 K25 ["getText"]
      104 CALL                             R15 3 1
      105 SETTABLEKS                       R15 R14 K26 ["PlaceholderText"]
      107 LOADB                            R15 1
      108 SETTABLEKS                       R15 R14 K27 ["ShowSearchIcon"]
      110 LOADB                            R15 0
      111 SETTABLEKS                       R15 R14 K28 ["ShowSearchButton"]
      113 GETTABLEKS                       R16 R2 K29 ["PaneSizes"]
      115 GETTABLEN                        R15 R16 1
      116 SETTABLEKS                       R15 R14 K30 ["Width"]
      118 GETUPVAL                         R15 3
      119 GETTABLEKS                       R15 R15 K13 ["Tag"]
      121 LOADK                            R16 K15 ["SearchInput"]
      122 SETTABLE                         R16 R14 R15
      123 CALL                             R12 2 1
      124 SETTABLEKS                       R12 R11 K15 ["SearchInput"]
      126 GETUPVAL                         R12 3
      127 GETTABLEKS                       R12 R12 K10 ["createElement"]
      129 GETUPVAL                         R13 7
      130 GETUPVAL                         R14 8
      131 NEWTABLE                         R15 32 0
      133 GETTABLEKS                       R16 R2 K2 ["table"]
      135 GETTABLEKS                       R16 R16 K31 ["Columns"]
      137 SETTABLEKS                       R16 R15 K31 ["Columns"]
      139 LOADB                            R16 1
      140 SETTABLEKS                       R16 R15 K32 ["ClampSize"]
      142 SETTABLEKS                       R5 R15 K6 ["Expansion"]
      144 LOADB                            R16 1
      145 SETTABLEKS                       R16 R15 K33 ["FullSpanEmphasis"]
      147 GETUPVAL                         R16 9
      148 GETTABLEKS                       R16 R16 K34 ["getTableRowId"]
      150 SETTABLEKS                       R16 R15 K35 ["GetItemId"]
      152 GETUPVAL                         R16 9
      153 GETTABLEKS                       R16 R16 K36 ["getRowChildren"]
      155 SETTABLEKS                       R16 R15 K37 ["GetChildren"]
      157 GETTABLEKS                       R16 R0 K38 ["onAction"]
      159 SETTABLEKS                       R16 R15 K39 ["OnCellAction"]
      161 NEWCLOSURE                       R16 P0
      162 CAPTURE                          UPVAL U10
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R16 R15 K40 ["OnCellEdited"]
      168 GETTABLEKS                       R16 R0 K41 ["onDoubleClick"]
      170 SETTABLEKS                       R16 R15 K42 ["OnCellDoubleClick"]
      172 GETTABLEKS                       R16 R0 K43 ["onCellPressed"]
      174 SETTABLEKS                       R16 R15 K44 ["OnCellPressed"]
      176 LOADN                            R16 2
      177 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      179 GETTABLEKS                       R16 R0 K45 ["onRightClick"]
      181 SETTABLEKS                       R16 R15 K46 ["RightClick"]
      183 SETTABLEKS                       R3 R15 K47 ["RootItems"]
      185 GETUPVAL                         R16 11
      186 SETTABLEKS                       R16 R15 K48 ["RowHeight"]
      188 LOADB                            R16 1
      189 SETTABLEKS                       R16 R15 K49 ["Scroll"]
      191 DUPTABLE                         R16 K51 [{"VerticalScrollBarInset"}]
      192 GETIMPORT                        R17 K55 [Enum.ScrollBarInset.ScrollBar]
      194 SETTABLEKS                       R17 R16 K50 ["VerticalScrollBarInset"]
      196 SETTABLEKS                       R16 R15 K56 ["ScrollProps"]
      198 SETTABLEKS                       R7 R15 K57 ["Selection"]
      200 LOADB                            R16 0
      201 SETTABLEKS                       R16 R15 K58 ["ShowHeader"]
      203 LOADB                            R16 1
      204 SETTABLEKS                       R16 R15 K59 ["UseScale"]
      206 LOADK                            R16 K60 ["compact"]
      207 SETTABLEKS                       R16 R15 K61 ["Variant"]
      209 GETUPVAL                         R16 3
      210 GETTABLEKS                       R16 R16 K13 ["Tag"]
      212 LOADK                            R17 K62 ["FlexFill LeftItems compact"]
      213 SETTABLE                         R17 R15 R16
      214 GETTABLEKS                       R16 R0 K63 ["tableCallbacks"]
      216 CALL                             R14 2 -1
      217 CALL                             R12 -1 1
      218 SETTABLEKS                       R12 R11 K16 ["LeftItems"]
      220 GETUPVAL                         R12 3
      221 GETTABLEKS                       R12 R12 K10 ["createElement"]
      223 GETUPVAL                         R13 12
      224 DUPTABLE                         R14 K65 [{["LayoutOrder"] = 3}]
      225 CALL                             R12 2 1
      226 SETTABLEKS                       R12 R11 K17 ["Source"]
      228 CALL                             R8 3 1
      229 LOADNIL                          R9
      230 JUMPIFNOT                        R4 ; [+156]
      231 GETTABLEKS                       R10 R4 K66 ["Instance"]
      233 JUMPIFNOT                        R10 ; [+24]
      234 LOADK                            R13 K67 ["StyleRule"]
      235 NAMECALL                         R11 R10 K68 ["IsA"]
      237 CALL                             R11 2 1
      238 JUMPIFNOT                        R11 ; [+19]
      239 GETUPVAL                         R11 3
      240 GETTABLEKS                       R11 R11 K10 ["createElement"]
      242 GETUPVAL                         R12 13
      243 DUPTABLE                         R13 K69 [{"key", "StyleRule"}]
      244 GETUPVAL                         R15 5
      245 JUMPIFNOT                        R15 ; [+2]
      246 LOADK                            R14 K70 ["Right"]
      247 JUMP                             ; [+1]
      248 LOADNIL                          R14
      249 SETTABLEKS                       R14 R13 K12 ["key"]
      251 GETTABLEKS                       R14 R4 K66 ["Instance"]
      253 SETTABLEKS                       R14 R13 K67 ["StyleRule"]
      255 CALL                             R11 2 1
      256 MOVE                             R9 R11
      257 JUMP                             ; [+129]
      258 GETUPVAL                         R11 14
      259 JUMPIFNOT                        R11 ; [+37]
      260 JUMPIFNOT                        R10 ; [+36]
      261 LOADK                            R13 K71 ["Folder"]
      262 NAMECALL                         R11 R10 K68 ["IsA"]
      264 CALL                             R11 2 1
      265 JUMPIFNOT                        R11 ; [+31]
      266 GETUPVAL                         R11 15
      267 JUMPIFNOT                        R11 ; [+12]
      268 GETUPVAL                         R11 16
      269 GETTABLEKS                       R11 R11 K72 ["isUnderPath"]
      271 GETTABLEKS                       R12 R4 K73 ["Path"]
      273 GETUPVAL                         R13 16
      274 GETTABLEKS                       R13 R13 K74 ["PATHS"]
      276 GETTABLEKS                       R13 R13 K75 ["THEMES"]
      278 CALL                             R11 2 1
      279 JUMPIF                           R11 ; [+17]
      280 GETUPVAL                         R11 3
      281 GETTABLEKS                       R11 R11 K10 ["createElement"]
      283 GETUPVAL                         R12 17
      284 DUPTABLE                         R13 K76 [{"key", "Folder"}]
      285 GETUPVAL                         R15 5
      286 JUMPIFNOT                        R15 ; [+2]
      287 LOADK                            R14 K70 ["Right"]
      288 JUMP                             ; [+1]
      289 LOADNIL                          R14
      290 SETTABLEKS                       R14 R13 K12 ["key"]
      292 SETTABLEKS                       R10 R13 K71 ["Folder"]
      294 CALL                             R11 2 1
      295 MOVE                             R9 R11
      296 JUMP                             ; [+90]
      297 JUMPIFNOT                        R10 ; [+24]
      298 LOADK                            R13 K77 ["StyleSheet"]
      299 NAMECALL                         R11 R10 K68 ["IsA"]
      301 CALL                             R11 2 1
      302 JUMPIFNOT                        R11 ; [+19]
      303 GETUPVAL                         R11 3
      304 GETTABLEKS                       R11 R11 K10 ["createElement"]
      306 GETUPVAL                         R12 18
      307 DUPTABLE                         R13 K78 [{"key", "StyleSheet"}]
      308 GETUPVAL                         R15 5
      309 JUMPIFNOT                        R15 ; [+2]
      310 LOADK                            R14 K70 ["Right"]
      311 JUMP                             ; [+1]
      312 LOADNIL                          R14
      313 SETTABLEKS                       R14 R13 K12 ["key"]
      315 GETTABLEKS                       R14 R4 K66 ["Instance"]
      317 SETTABLEKS                       R14 R13 K77 ["StyleSheet"]
      319 CALL                             R11 2 1
      320 MOVE                             R9 R11
      321 JUMP                             ; [+65]
      322 GETTABLEKS                       R11 R4 K79 ["Name"]
      324 GETTABLEKS                       R11 R11 K80 ["Value"]
      326 JUMPIFEQKS                       R11 K81 ["Themes"] ; [+60]
      328 GETUPVAL                         R11 16
      329 GETTABLEKS                       R11 R11 K72 ["isUnderPath"]
      331 GETTABLEKS                       R12 R4 K73 ["Path"]
      333 GETUPVAL                         R13 16
      334 GETTABLEKS                       R13 R13 K74 ["PATHS"]
      336 GETTABLEKS                       R13 R13 K75 ["THEMES"]
      338 CALL                             R11 2 1
      339 JUMPIFNOT                        R11 ; [+47]
      340 GETUPVAL                         R11 19
      341 JUMPIFNOT                        R11 ; [+29]
      342 JUMPIFNOT                        R4 ; [+44]
      343 GETUPVAL                         R11 20
      344 GETTABLEKS                       R12 R4 K82 ["Children"]
      346 DUPCLOSURE                       R13 K83 [PROTO_23]
      347 CALL                             R11 2 1
      348 GETUPVAL                         R12 3
      349 GETTABLEKS                       R12 R12 K10 ["createElement"]
      351 GETUPVAL                         R13 21
      352 DUPTABLE                         R14 K86 [{"key", "ThemeSheets", "Title"}]
      353 GETUPVAL                         R16 5
      354 JUMPIFNOT                        R16 ; [+2]
      355 LOADK                            R15 K70 ["Right"]
      356 JUMP                             ; [+1]
      357 LOADNIL                          R15
      358 SETTABLEKS                       R15 R14 K12 ["key"]
      360 SETTABLEKS                       R11 R14 K84 ["ThemeSheets"]
      362 GETTABLEKS                       R15 R4 K79 ["Name"]
      364 GETTABLEKS                       R15 R15 K80 ["Value"]
      366 SETTABLEKS                       R15 R14 K85 ["Title"]
      368 CALL                             R12 2 1
      369 MOVE                             R9 R12
      370 JUMP                             ; [+16]
      371 GETUPVAL                         R11 3
      372 GETTABLEKS                       R11 R11 K10 ["createElement"]
      374 GETUPVAL                         R12 21
      375 DUPTABLE                         R13 K88 [{"key", "RootItem_DEPRECATED"}]
      376 GETUPVAL                         R15 5
      377 JUMPIFNOT                        R15 ; [+2]
      378 LOADK                            R14 K70 ["Right"]
      379 JUMP                             ; [+1]
      380 LOADNIL                          R14
      381 SETTABLEKS                       R14 R13 K12 ["key"]
      383 SETTABLEKS                       R4 R13 K87 ["RootItem_DEPRECATED"]
      385 CALL                             R11 2 1
      386 MOVE                             R9 R11
      387 GETUPVAL                         R10 3
      388 GETTABLEKS                       R10 R10 K10 ["createElement"]
      390 GETUPVAL                         R11 4
      391 NEWTABLE                         R12 0 0
      393 DUPTABLE                         R13 K90 [{"Divider"}]
      394 GETUPVAL                         R14 3
      395 GETTABLEKS                       R14 R14 K10 ["createElement"]
      397 GETUPVAL                         R15 22
      398 DUPTABLE                         R16 K96 [{["ClampSize"] = True, ["UseDeficit"] = True, ["MinSizes"], ["OnSizesChange"], ["Sizes"]}]
      399 GETUPVAL                         R17 23
      400 SETTABLEKS                       R17 R16 K93 ["MinSizes"]
      402 GETTABLEKS                       R17 R0 K97 ["onPaneSizesChanged"]
      404 SETTABLEKS                       R17 R16 K94 ["OnSizesChange"]
      406 GETTABLEKS                       R17 R2 K29 ["PaneSizes"]
      408 SETTABLEKS                       R17 R16 K95 ["Sizes"]
      410 NEWTABLE                         R17 0 2
      412 MOVE                             R18 R8
      413 MOVE                             R19 R9
      414 SETLIST                          R17 R18 2 [1]
      416 CALL                             R14 3 1
      417 SETTABLEKS                       R14 R13 K89 ["Divider"]
      419 CALL                             R10 3 -1
      420 RETURN                           R10 -1

PROTO_25:
        0 DUPTABLE                         R1 K5 [{"IsDirty", "Source", "SearchTerm", "SelectedItemId", "ExpandedItems"}]
        1 GETTABLEKS                       R2 R0 K6 ["Window"]
        3 GETTABLEKS                       R2 R2 K0 ["IsDirty"]
        5 SETTABLEKS                       R2 R1 K0 ["IsDirty"]
        7 GETTABLEKS                       R2 R0 K6 ["Window"]
        9 GETTABLEKS                       R2 R2 K1 ["Source"]
       11 SETTABLEKS                       R2 R1 K1 ["Source"]
       13 GETTABLEKS                       R2 R0 K6 ["Window"]
       15 GETTABLEKS                       R2 R2 K2 ["SearchTerm"]
       17 SETTABLEKS                       R2 R1 K2 ["SearchTerm"]
       19 GETTABLEKS                       R2 R0 K6 ["Window"]
       21 GETTABLEKS                       R2 R2 K3 ["SelectedItemId"]
       23 SETTABLEKS                       R2 R1 K3 ["SelectedItemId"]
       25 GETTABLEKS                       R2 R0 K6 ["Window"]
       27 GETTABLEKS                       R2 R2 K4 ["ExpandedItems"]
       29 SETTABLEKS                       R2 R1 K4 ["ExpandedItems"]
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETIMPORT                        R2 K1 [script]
       13 GETTABLEKS                       R2 R2 K2 ["Parent"]
       15 GETTABLEKS                       R2 R2 K2 ["Parent"]
       17 GETTABLEKS                       R2 R2 K5 ["Thunks"]
       19 GETTABLEKS                       R2 R2 K6 ["ContextMenu"]
       21 GETTABLEKS                       R2 R2 K7 ["DEPRECATED_ShowThemeFolderMenu"]
       23 CALL                             R1 1 1
       24 GETIMPORT                        R2 K4 [require]
       26 GETTABLEKS                       R3 R0 K8 ["Packages"]
       28 GETTABLEKS                       R3 R3 K9 ["React"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R4 R0 K8 ["Packages"]
       35 GETTABLEKS                       R4 R4 K10 ["RoactRodux"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K8 ["Packages"]
       42 GETTABLEKS                       R5 R5 K11 ["Framework"]
       44 CALL                             R4 1 1
       45 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       47 GETTABLEKS                       R6 R5 K13 ["withContext"]
       49 GETTABLEKS                       R7 R0 K14 ["Src"]
       51 GETTABLEKS                       R7 R7 K15 ["Actions"]
       53 GETIMPORT                        R8 K4 [require]
       55 GETTABLEKS                       R9 R7 K16 ["Window"]
       57 GETTABLEKS                       R9 R9 K17 ["SelectItem"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K4 [require]
       62 GETTABLEKS                       R10 R7 K16 ["Window"]
       64 GETTABLEKS                       R10 R10 K18 ["SetSearch"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R0 K14 ["Src"]
       69 GETTABLEKS                       R10 R10 K5 ["Thunks"]
       71 GETIMPORT                        R11 K4 [require]
       73 GETTABLEKS                       R12 R10 K6 ["ContextMenu"]
       75 GETTABLEKS                       R12 R12 K19 ["ShowFolderMenu"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETTABLEKS                       R13 R10 K6 ["ContextMenu"]
       82 GETTABLEKS                       R13 R13 K20 ["ShowStyleSheetCategoryMenu"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K4 [require]
       87 GETTABLEKS                       R14 R10 K6 ["ContextMenu"]
       89 GETTABLEKS                       R14 R14 K21 ["ShowNewStyleRuleMenu"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K4 [require]
       94 GETTABLEKS                       R15 R10 K6 ["ContextMenu"]
       96 GETTABLEKS                       R15 R15 K22 ["ShowStyleRuleMenu"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K4 [require]
      101 GETTABLEKS                       R16 R10 K6 ["ContextMenu"]
      103 GETTABLEKS                       R16 R16 K23 ["ShowStyleSheetMenu"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K4 [require]
      108 GETTABLEKS                       R17 R10 K6 ["ContextMenu"]
      110 GETTABLEKS                       R17 R17 K24 ["ShowThemeCategoryMenu"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K4 [require]
      115 GETTABLEKS                       R18 R10 K6 ["ContextMenu"]
      117 GETTABLEKS                       R18 R18 K25 ["ShowThemeOtherMenu"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K4 [require]
      122 GETTABLEKS                       R19 R10 K6 ["ContextMenu"]
      124 GETTABLEKS                       R19 R19 K26 ["ShowTokenCategoryMenu"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K4 [require]
      129 GETTABLEKS                       R20 R10 K6 ["ContextMenu"]
      131 GETTABLEKS                       R20 R20 K27 ["ShowUiElementsMenu"]
      133 CALL                             R19 1 1
      134 GETTABLEKS                       R20 R4 K28 ["UI"]
      136 GETTABLEKS                       R21 R20 K29 ["Pane"]
      138 GETTABLEKS                       R22 R20 K30 ["SearchBar"]
      140 GETTABLEKS                       R23 R20 K31 ["SplitPane"]
      142 GETTABLEKS                       R24 R20 K32 ["TreeTable"]
      144 GETIMPORT                        R25 K4 [require]
      146 GETTABLEKS                       R26 R0 K14 ["Src"]
      148 GETTABLEKS                       R26 R26 K33 ["Util"]
      150 GETTABLEKS                       R26 R26 K34 ["DesignHelpers"]
      152 CALL                             R25 1 1
      153 GETIMPORT                        R26 K4 [require]
      155 GETTABLEKS                       R27 R0 K14 ["Src"]
      157 GETTABLEKS                       R27 R27 K33 ["Util"]
      159 GETTABLEKS                       R27 R27 K35 ["StyleQueryHelpers"]
      161 CALL                             R26 1 1
      162 GETIMPORT                        R27 K4 [require]
      164 GETTABLEKS                       R28 R0 K14 ["Src"]
      166 GETTABLEKS                       R28 R28 K33 ["Util"]
      168 GETTABLEKS                       R28 R28 K36 ["TreeTableHelpers"]
      170 CALL                             R27 1 1
      171 GETIMPORT                        R28 K4 [require]
      173 GETTABLEKS                       R29 R0 K14 ["Src"]
      175 GETTABLEKS                       R29 R29 K33 ["Util"]
      177 GETTABLEKS                       R29 R29 K37 ["mapDispatchToProps"]
      179 CALL                             R28 1 1
      180 GETIMPORT                        R29 K4 [require]
      182 GETTABLEKS                       R30 R0 K14 ["Src"]
      184 GETTABLEKS                       R30 R30 K38 ["Components"]
      186 GETTABLEKS                       R30 R30 K39 ["SourceSelect"]
      188 CALL                             R29 1 1
      189 GETIMPORT                        R30 K4 [require]
      191 GETTABLEKS                       R31 R0 K14 ["Src"]
      193 GETTABLEKS                       R31 R31 K38 ["Components"]
      195 GETTABLEKS                       R31 R31 K40 ["StyleRuleView"]
      197 CALL                             R30 1 1
      198 GETIMPORT                        R31 K4 [require]
      200 GETTABLEKS                       R32 R0 K14 ["Src"]
      202 GETTABLEKS                       R32 R32 K38 ["Components"]
      204 GETTABLEKS                       R32 R32 K41 ["StyleSheetView"]
      206 CALL                             R31 1 1
      207 GETIMPORT                        R32 K4 [require]
      209 GETTABLEKS                       R33 R0 K14 ["Src"]
      211 GETTABLEKS                       R33 R33 K38 ["Components"]
      213 GETTABLEKS                       R33 R33 K42 ["ThemesView"]
      215 CALL                             R32 1 1
      216 GETIMPORT                        R33 K4 [require]
      218 GETTABLEKS                       R34 R0 K14 ["Src"]
      220 GETTABLEKS                       R34 R34 K38 ["Components"]
      222 GETTABLEKS                       R34 R34 K43 ["FolderView"]
      224 CALL                             R33 1 1
      225 GETIMPORT                        R34 K4 [require]
      227 GETTABLEKS                       R35 R0 K14 ["Src"]
      229 GETTABLEKS                       R35 R35 K44 ["Flags"]
      231 GETTABLEKS                       R35 R35 K45 ["getFFlagStyleEditorThemesCrash"]
      233 CALL                             R34 1 1
      234 CALL                             R34 0 1
      235 GETIMPORT                        R35 K4 [require]
      237 GETTABLEKS                       R36 R0 K14 ["Src"]
      239 GETTABLEKS                       R36 R36 K44 ["Flags"]
      241 GETTABLEKS                       R36 R36 K46 ["getFFlagStyleEditorFixWarnings"]
      243 CALL                             R35 1 1
      244 CALL                             R35 0 1
      245 GETIMPORT                        R36 K4 [require]
      247 GETTABLEKS                       R37 R0 K14 ["Src"]
      249 GETTABLEKS                       R37 R37 K44 ["Flags"]
      251 GETTABLEKS                       R37 R37 K47 ["getFFlagStyleQuery"]
      253 CALL                             R36 1 1
      254 CALL                             R36 0 1
      255 GETIMPORT                        R37 K4 [require]
      257 GETTABLEKS                       R38 R0 K14 ["Src"]
      259 GETTABLEKS                       R38 R38 K44 ["Flags"]
      261 GETTABLEKS                       R38 R38 K48 ["getFFlagStyleEditorFixThemeFolderView"]
      263 CALL                             R37 1 1
      264 CALL                             R37 0 1
      265 GETIMPORT                        R38 K4 [require]
      267 GETTABLEKS                       R39 R0 K14 ["Src"]
      269 GETTABLEKS                       R39 R39 K49 ["Types"]
      271 CALL                             R38 1 1
      272 GETIMPORT                        R39 K4 [require]
      274 GETTABLEKS                       R40 R0 K14 ["Src"]
      276 GETTABLEKS                       R40 R40 K50 ["Reducers"]
      278 GETTABLEKS                       R40 R40 K51 ["RootReducer"]
      280 CALL                             R39 1 1
      281 GETIMPORT                        R40 K4 [require]
      283 GETTABLEKS                       R41 R0 K8 ["Packages"]
      285 GETTABLEKS                       R41 R41 K52 ["Dash"]
      287 CALL                             R40 1 1
      288 GETTABLEKS                       R41 R40 K53 ["copy"]
      290 GETTABLEKS                       R42 R40 K54 ["collectArray"]
      292 GETTABLEKS                       R43 R40 K55 ["join"]
      294 GETTABLEKS                       R44 R40 K56 ["mapOne"]
      296 GETIMPORT                        R45 K4 [require]
      298 GETTABLEKS                       R46 R0 K14 ["Src"]
      300 GETTABLEKS                       R46 R46 K57 ["Resources"]
      302 GETTABLEKS                       R46 R46 K58 ["PluginStyles"]
      304 CALL                             R45 1 1
      305 LOADK                            R48 K59 ["RowHeight"]
      306 NAMECALL                         R46 R45 K60 ["GetAttribute"]
      308 CALL                             R46 2 1
      309 GETIMPORT                        R47 K4 [require]
      311 GETIMPORT                        R48 K1 [script]
      313 GETTABLEKS                       R48 R48 K61 ["Tree"]
      315 CALL                             R47 1 1
      316 GETIMPORT                        R48 K4 [require]
      318 GETIMPORT                        R49 K1 [script]
      320 GETTABLEKS                       R49 R49 K62 ["onEdited"]
      322 CALL                             R48 1 1
      323 NEWTABLE                         R49 0 1
      325 DUPTABLE                         R50 K66 [{["Name"] = "Name", ["Key"] = "Name", ["Width"]}]
      326 GETIMPORT                        R51 K69 [UDim.new]
      328 LOADN                            R52 1
      329 LOADN                            R53 0
      330 CALL                             R51 2 1
      331 SETTABLEKS                       R51 R50 K65 ["Width"]
      333 SETLIST                          R49 R50 1 [1]
      335 NEWTABLE                         R50 0 2
      337 GETIMPORT                        R51 K69 [UDim.new]
      339 LOADN                            R52 0
      340 LOADN                            R53 10
      341 CALL                             R51 2 1
      342 GETIMPORT                        R52 K69 [UDim.new]
      344 LOADN                            R53 0
      345 LOADN                            R54 100
      346 CALL                             R52 2 -1
      347 SETLIST                          R50 R51 -1 [1]
      349 GETTABLEKS                       R51 R47 K70 ["EditTree"]
      351 GETTABLEKS                       R52 R2 K71 ["PureComponent"]
      353 LOADK                            R54 K72 ["MainPage"]
      354 NAMECALL                         R52 R52 K73 ["extend"]
      356 CALL                             R52 2 1
      357 DUPCLOSURE                       R53 K74 [PROTO_17]
      358 CAPTURE                          VAL R41
      359 CAPTURE                          VAL R49
      360 CAPTURE                          VAL R14
      361 CAPTURE                          VAL R15
      362 CAPTURE                          VAL R36
      363 CAPTURE                          VAL R11
      364 CAPTURE                          VAL R1
      365 CAPTURE                          VAL R51
      366 CAPTURE                          VAL R19
      367 CAPTURE                          VAL R12
      368 CAPTURE                          VAL R16
      369 CAPTURE                          VAL R18
      370 CAPTURE                          VAL R13
      371 CAPTURE                          VAL R17
      372 CAPTURE                          VAL R9
      373 CAPTURE                          VAL R8
      374 CAPTURE                          VAL R26
      375 CAPTURE                          VAL R43
      376 CAPTURE                          VAL R44
      377 CAPTURE                          VAL R47
      378 SETTABLEKS                       R53 R52 K75 ["init"]
      380 NEWCLOSURE                       R53 P1
      381 CAPTURE                          VAL R42
      382 CAPTURE                          VAL R41
      383 CAPTURE                          REF R52
      384 SETTABLEKS                       R53 R52 K76 ["applySearch"]
      386 DUPCLOSURE                       R53 K77 [PROTO_21]
      387 SETTABLEKS                       R53 R52 K78 ["didUpdate"]
      389 NEWCLOSURE                       R53 P3
      390 CAPTURE                          VAL R51
      391 CAPTURE                          REF R52
      392 CAPTURE                          VAL R41
      393 CAPTURE                          VAL R2
      394 CAPTURE                          VAL R21
      395 CAPTURE                          VAL R35
      396 CAPTURE                          VAL R22
      397 CAPTURE                          VAL R24
      398 CAPTURE                          VAL R43
      399 CAPTURE                          VAL R27
      400 CAPTURE                          VAL R48
      401 CAPTURE                          VAL R46
      402 CAPTURE                          VAL R29
      403 CAPTURE                          VAL R30
      404 CAPTURE                          VAL R36
      405 CAPTURE                          VAL R37
      406 CAPTURE                          VAL R25
      407 CAPTURE                          VAL R33
      408 CAPTURE                          VAL R31
      409 CAPTURE                          VAL R34
      410 CAPTURE                          VAL R42
      411 CAPTURE                          VAL R32
      412 CAPTURE                          VAL R23
      413 CAPTURE                          VAL R50
      414 SETTABLEKS                       R53 R52 K79 ["render"]
      416 MOVE                             R53 R6
      417 DUPTABLE                         R54 K82 [{"Localization", "Plugin"}]
      418 GETTABLEKS                       R55 R5 K80 ["Localization"]
      420 SETTABLEKS                       R55 R54 K80 ["Localization"]
      422 GETTABLEKS                       R55 R5 K81 ["Plugin"]
      424 SETTABLEKS                       R55 R54 K81 ["Plugin"]
      426 CALL                             R53 1 1
      427 MOVE                             R54 R52
      428 CALL                             R53 1 1
      429 MOVE                             R52 R53
      430 GETTABLEKS                       R53 R3 K83 ["connect"]
      432 DUPCLOSURE                       R54 K84 [PROTO_25]
      433 MOVE                             R55 R28
      434 CALL                             R53 2 1
      435 MOVE                             R54 R52
      436 CALL                             R53 1 -1
      437 CLOSEUPVALS                      R52
      438 RETURN                           R53 -1
