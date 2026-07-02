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
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["dispatch"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K0 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 DUPTABLE                         R3 K2 [{"PaneSizes"}]
       11 SETTABLEKS                       R0 R3 K1 ["PaneSizes"]
       13 NAMECALL                         R1 R1 K0 ["setState"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["dispatch"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETUPVAL                         R2 0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R2 R2 K1 ["setState"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R1 K2 ["dispatch"]
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R0
       17 CALL                             R3 1 -1
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0

PROTO_14:
        0 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_14]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["selectItem"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["buildTree"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["props"]
        9 GETTABLEKS                       R2 R2 K3 ["Source"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["props"]
       14 GETTABLEKS                       R3 R3 K4 ["Localization"]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K5 ["items"]
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K0 ["state"]
       22 GETUPVAL                         R1 2
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K0 ["state"]
       26 GETTABLEKS                       R3 R3 K5 ["items"]
       28 NAMECALL                         R1 R1 K6 ["updatePaths"]
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K5 ["items"]
       33 NEWTABLE                         R0 0 0
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K0 ["state"]
       38 GETTABLEKS                       R1 R1 K5 ["items"]
       40 LOADNIL                          R2
       41 LOADNIL                          R3
       42 FORGPREP                         R1
       43 GETTABLEKS                       R6 R5 K7 ["Id"]
       45 LOADB                            R7 1
       46 SETTABLE                         R7 R0 R6
       47 FORGLOOP                         R1 2 ; [-5]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K2 ["props"]
       52 GETTABLEKS                       R1 R1 K8 ["dispatch"]
       54 GETUPVAL                         R2 3
       55 MOVE                             R3 R0
       56 CALL                             R2 1 -1
       57 CALL                             R1 -1 0
       58 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R1 K4 [{"IsDirty", "PaneSizes", "SearchTerm", "table"}]
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADNIL                          R2
        4 JUMP                             ; [+1]
        5 LOADN                            R2 0
        6 SETTABLEKS                       R2 R1 K0 ["IsDirty"]
        8 NEWTABLE                         R2 0 2
       10 GETIMPORT                        R3 K7 [UDim.new]
       12 LOADN                            R4 0
       13 LOADN                            R5 200
       14 CALL                             R3 2 1
       15 GETIMPORT                        R4 K7 [UDim.new]
       17 LOADN                            R5 1
       18 LOADN                            R6 -200
       19 CALL                             R4 2 -1
       20 SETLIST                          R2 R3 -1 [1]
       22 SETTABLEKS                       R2 R1 K1 ["PaneSizes"]
       24 GETUPVAL                         R3 0
       25 JUMPIFNOT                        R3 ; [+2]
       26 LOADNIL                          R2
       27 JUMP                             ; [+1]
       28 LOADK                            R2 K8 [""]
       29 SETTABLEKS                       R2 R1 K2 ["SearchTerm"]
       31 DUPTABLE                         R2 K13 [{"Columns", "Expansion", "Selection", "Items"}]
       32 GETUPVAL                         R3 1
       33 GETUPVAL                         R4 2
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R3 R2 K9 ["Columns"]
       37 GETUPVAL                         R4 0
       38 JUMPIFNOT                        R4 ; [+12]
       39 NEWTABLE                         R3 4 0
       41 LOADB                            R4 1
       42 SETTABLEKS                       R4 R3 K14 ["StyleSheets"]
       44 LOADB                            R4 1
       45 SETTABLEKS                       R4 R3 K15 ["Themes"]
       47 LOADB                            R4 1
       48 SETTABLEKS                       R4 R3 K16 ["Tokens"]
       50 JUMP                             ; [+2]
       51 NEWTABLE                         R3 0 0
       53 SETTABLEKS                       R3 R2 K10 ["Expansion"]
       55 NEWTABLE                         R3 0 0
       57 SETTABLEKS                       R3 R2 K11 ["Selection"]
       59 NEWTABLE                         R3 0 0
       61 SETTABLEKS                       R3 R2 K12 ["Items"]
       63 SETTABLEKS                       R2 R1 K3 ["table"]
       65 SETTABLEKS                       R1 R0 K17 ["state"]
       67 GETUPVAL                         R1 0
       68 JUMPIFNOT                        R1 ; [+3]
       69 LOADN                            R1 -1
       70 SETTABLEKS                       R1 R0 K18 ["lastUpdate"]
       72 NEWCLOSURE                       R1 P0
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          UPVAL U4
       76 CAPTURE                          UPVAL U5
       77 CAPTURE                          UPVAL U6
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          UPVAL U9
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          UPVAL U11
       83 CAPTURE                          UPVAL U12
       84 CAPTURE                          UPVAL U13
       85 CAPTURE                          UPVAL U14
       86 SETTABLEKS                       R1 R0 K19 ["showContextMenuForItem"]
       88 NEWCLOSURE                       R1 P1
       89 CAPTURE                          UPVAL U8
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R1 R0 K20 ["onAction"]
       93 GETUPVAL                         R2 15
       94 JUMPIFNOT                        R2 ; [+5]
       95 GETUPVAL                         R2 16
       96 JUMPIFNOT                        R2 ; [+3]
       97 NEWCLOSURE                       R1 P2
       98 CAPTURE                          VAL R0
       99 JUMP                             ; [+1]
      100 DUPCLOSURE                       R1 K21 [PROTO_4]
      101 SETTABLEKS                       R1 R0 K22 ["onRightClick"]
      103 NEWCLOSURE                       R1 P4
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U17
      106 SETTABLEKS                       R1 R0 K23 ["onSearch"]
      108 NEWCLOSURE                       R1 P5
      109 CAPTURE                          UPVAL U0
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R1 R0 K24 ["onPaneSizesChanged"]
      113 GETUPVAL                         R1 8
      114 MOVE                             R3 R0
      115 LOADK                            R4 K3 ["table"]
      116 NAMECALL                         R1 R1 K25 ["getStateAdaptor"]
      118 CALL                             R1 3 1
      119 SETTABLEKS                       R1 R0 K26 ["adaptor"]
      121 GETUPVAL                         R1 8
      122 GETTABLEKS                       R3 R0 K26 ["adaptor"]
      124 NAMECALL                         R1 R1 K27 ["getCallbacks"]
      126 CALL                             R1 2 1
      127 SETTABLEKS                       R1 R0 K28 ["tableCallbacks"]
      129 NEWCLOSURE                       R1 P6
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U18
      132 SETTABLEKS                       R1 R0 K29 ["selectItem"]
      134 NEWCLOSURE                       R1 P7
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U8
      137 SETTABLEKS                       R1 R0 K30 ["onCellPressed"]
      139 NEWCLOSURE                       R1 P8
      140 CAPTURE                          VAL R0
      141 CAPTURE                          UPVAL U8
      142 CAPTURE                          UPVAL U5
      143 CAPTURE                          UPVAL U19
      144 CAPTURE                          UPVAL U20
      145 CAPTURE                          UPVAL U1
      146 SETTABLEKS                       R1 R0 K31 ["onDoubleClick"]
      148 GETTABLEKS                       R1 R0 K28 ["tableCallbacks"]
      150 NEWCLOSURE                       R2 P9
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U0
      153 CAPTURE                          UPVAL U20
      154 CAPTURE                          UPVAL U21
      155 SETTABLEKS                       R2 R1 K32 ["OnExpansionChange"]
      157 GETTABLEKS                       R1 R0 K28 ["tableCallbacks"]
      159 NEWCLOSURE                       R2 P10
      160 CAPTURE                          UPVAL U22
      161 CAPTURE                          VAL R0
      162 SETTABLEKS                       R2 R1 K33 ["OnSelectionChange"]
      164 GETUPVAL                         R1 0
      165 JUMPIFNOT                        R1 ; [+13]
      166 NEWCLOSURE                       R1 P11
      167 CAPTURE                          VAL R0
      168 CAPTURE                          UPVAL U23
      169 CAPTURE                          UPVAL U8
      170 CAPTURE                          UPVAL U20
      171 SETTABLEKS                       R1 R0 K34 ["updateItems"]
      173 GETTABLEKS                       R1 R0 K34 ["updateItems"]
      175 LOADB                            R2 1
      176 LOADB                            R3 1
      177 CALL                             R1 2 0
      178 RETURN                           R0 0
      179 NEWCLOSURE                       R1 P12
      180 CAPTURE                          VAL R0
      181 CAPTURE                          UPVAL U23
      182 CAPTURE                          UPVAL U8
      183 CAPTURE                          UPVAL U21
      184 SETTABLEKS                       R1 R0 K35 ["setInitialExpansionState"]
      186 GETTABLEKS                       R1 R0 K35 ["setInitialExpansionState"]
      188 CALL                             R1 0 0
      189 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R1 K0 ["table"]
        6 GETTABLEKS                       R2 R2 K1 ["Expansion"]
        8 GETTABLEKS                       R3 R1 K0 ["table"]
       10 GETTABLEKS                       R3 R3 K2 ["Items"]
       12 GETTABLEKS                       R4 R1 K0 ["table"]
       14 GETTABLEKS                       R4 R4 K3 ["Selection"]
       16 LOADB                            R5 0
       17 GETTABLEKS                       R6 R0 K4 ["SearchTerm"]
       19 GETTABLEKS                       R7 R1 K4 ["SearchTerm"]
       21 JUMPIFEQ                         R6 R7 ; [+7]
       23 GETTABLEKS                       R6 R0 K4 ["SearchTerm"]
       25 JUMPIFEQKS                       R6 K5 [""] ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 GETTABLEKS                       R6 R0 K6 ["IsDirty"]
       31 JUMPIFNOTEQKN                    R6 K7 [0] ; [+6]
       33 GETTABLEKS                       R6 R1 K6 ["IsDirty"]
       35 LOADN                            R7 0
       36 JUMPIFLT                         R7 R6 ; [+9]
       38 JUMPIF                           R5 ; [+7]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R7 R1 K0 ["table"]
       42 GETTABLEKS                       R7 R7 K2 ["Items"]
       44 CALL                             R6 1 1
       45 JUMPIFNOT                        R6 ; [+15]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K8 ["buildTree"]
       49 GETTABLEKS                       R7 R0 K9 ["Source"]
       51 GETTABLEKS                       R8 R0 K10 ["Localization"]
       53 CALL                             R6 2 1
       54 MOVE                             R3 R6
       55 GETUPVAL                         R6 3
       56 MOVE                             R8 R3
       57 NAMECALL                         R6 R6 K11 ["updatePaths"]
       59 CALL                             R6 2 1
       60 MOVE                             R3 R6
       61 GETUPVAL                         R6 4
       62 MOVE                             R7 R1
       63 DUPTABLE                         R8 K12 [{"IsDirty", "SearchTerm", "table"}]
       64 GETTABLEKS                       R9 R0 K6 ["IsDirty"]
       66 SETTABLEKS                       R9 R8 K6 ["IsDirty"]
       68 GETTABLEKS                       R9 R0 K4 ["SearchTerm"]
       70 SETTABLEKS                       R9 R8 K4 ["SearchTerm"]
       72 GETUPVAL                         R9 4
       73 GETTABLEKS                       R10 R1 K0 ["table"]
       75 DUPTABLE                         R11 K13 [{"Items", "Expansion", "Selection"}]
       76 SETTABLEKS                       R3 R11 K2 ["Items"]
       78 SETTABLEKS                       R2 R11 K1 ["Expansion"]
       80 SETTABLEKS                       R4 R11 K3 ["Selection"]
       82 CALL                             R9 2 1
       83 SETTABLEKS                       R9 R8 K0 ["table"]
       85 CALL                             R6 2 -1
       86 RETURN                           R6 -1

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R4 K2 ["table"]
        6 GETTABLEKS                       R4 R4 K3 ["Items"]
        8 GETUPVAL                         R5 0
        9 JUMPIFNOT                        R5 ; [+29]
       10 LOADB                            R5 1
       11 GETTABLEKS                       R6 R3 K4 ["IsDirty"]
       13 GETTABLEKS                       R7 R0 K5 ["lastUpdate"]
       15 JUMPIFLT                         R7 R6 ; [+9]
       17 GETTABLEKS                       R6 R1 K6 ["Source"]
       19 GETTABLEKS                       R7 R3 K6 ["Source"]
       21 JUMPIFNOTEQ                      R6 R7 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 GETTABLEKS                       R7 R3 K7 ["SelectedItemId"]
       27 GETTABLEKS                       R8 R1 K7 ["SelectedItemId"]
       29 JUMPIFNOTEQ                      R7 R8 ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 GETTABLEKS                       R7 R0 K8 ["updateItems"]
       35 MOVE                             R8 R5
       36 MOVE                             R9 R6
       37 CALL                             R7 2 0
       38 RETURN                           R0 0
       39 GETTABLEKS                       R5 R0 K0 ["props"]
       41 GETTABLEKS                       R5 R5 K7 ["SelectedItemId"]
       43 JUMPIFNOT                        R5 ; [+40]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K9 ["None"]
       47 JUMPIFEQ                         R5 R6 ; [+36]
       49 GETTABLEKS                       R6 R1 K7 ["SelectedItemId"]
       51 JUMPIFEQ                         R5 R6 ; [+32]
       53 GETUPVAL                         R6 2
       54 MOVE                             R8 R4
       55 MOVE                             R9 R5
       56 NAMECALL                         R6 R6 K10 ["findItemById"]
       58 CALL                             R6 3 1
       59 JUMPIFNOT                        R6 ; [+24]
       60 GETTABLEKS                       R7 R0 K0 ["props"]
       62 GETTABLEKS                       R7 R7 K11 ["ExpandedItems"]
       64 GETUPVAL                         R8 2
       65 MOVE                             R10 R4
       66 GETTABLEKS                       R11 R6 K12 ["Path"]
       68 NAMECALL                         R8 R8 K13 ["expandAncestors"]
       70 CALL                             R8 3 1
       71 GETUPVAL                         R9 3
       72 MOVE                             R10 R7
       73 MOVE                             R11 R8
       74 CALL                             R9 2 1
       75 MOVE                             R7 R9
       76 GETTABLEKS                       R9 R0 K0 ["props"]
       78 GETTABLEKS                       R9 R9 K14 ["dispatch"]
       80 GETUPVAL                         R10 4
       81 MOVE                             R11 R7
       82 CALL                             R10 1 -1
       83 CALL                             R9 -1 0
       84 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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
       20 GETUPVAL                         R6 1
       21 JUMPIFNOT                        R6 ; [+5]
       22 GETTABLEKS                       R5 R2 K2 ["table"]
       24 GETTABLEKS                       R5 R5 K6 ["Expansion"]
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R5 R1 K7 ["ExpandedItems"]
       29 GETTABLEKS                       R6 R1 K8 ["SearchTerm"]
       31 JUMPIFNOT                        R6 ; [+8]
       32 GETTABLEKS                       R8 R1 K8 ["SearchTerm"]
       34 LENGTH                           R7 R8
       35 LOADN                            R8 0
       36 JUMPIFLT                         R8 R7 ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 JUMPIFNOT                        R6 ; [+20]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K9 ["applySearch"]
       44 MOVE                             R8 R3
       45 GETTABLEKS                       R9 R1 K8 ["SearchTerm"]
       47 CALL                             R7 2 1
       48 MOVE                             R3 R7
       49 GETUPVAL                         R7 1
       50 JUMPIFNOT                        R7 ; [+4]
       51 GETUPVAL                         R7 3
       52 MOVE                             R8 R5
       53 CALL                             R7 1 1
       54 MOVE                             R5 R7
       55 GETUPVAL                         R7 0
       56 MOVE                             R9 R3
       57 MOVE                             R10 R5
       58 NAMECALL                         R7 R7 K10 ["expandAll"]
       60 CALL                             R7 3 0
       61 GETTABLEKS                       R8 R1 K4 ["SelectedItemId"]
       63 JUMPIFNOT                        R8 ; [+7]
       64 NEWTABLE                         R7 1 0
       66 GETTABLEKS                       R8 R1 K4 ["SelectedItemId"]
       68 LOADB                            R9 1
       69 SETTABLE                         R9 R7 R8
       70 JUMP                             ; [+2]
       71 NEWTABLE                         R7 0 0
       73 GETUPVAL                         R8 4
       74 GETTABLEKS                       R8 R8 K11 ["createElement"]
       76 GETUPVAL                         R9 5
       77 NEWTABLE                         R10 2 0
       79 GETUPVAL                         R12 6
       80 JUMPIFNOT                        R12 ; [+2]
       81 LOADK                            R11 K12 ["Left"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R11
       84 SETTABLEKS                       R11 R10 K13 ["key"]
       86 GETUPVAL                         R11 4
       87 GETTABLEKS                       R11 R11 K14 ["Tag"]
       89 LOADK                            R12 K15 ["X-Column"]
       90 SETTABLE                         R12 R10 R11
       91 DUPTABLE                         R11 K19 [{"SearchInput", "LeftItems", "Source"}]
       92 GETUPVAL                         R12 4
       93 GETTABLEKS                       R12 R12 K11 ["createElement"]
       95 GETUPVAL                         R13 7
       96 NEWTABLE                         R14 8 0
       98 LOADN                            R15 1
       99 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
      101 GETTABLEKS                       R15 R0 K21 ["onSearch"]
      103 SETTABLEKS                       R15 R14 K22 ["OnTextChanged"]
      105 GETTABLEKS                       R15 R1 K23 ["Localization"]
      107 LOADK                            R17 K24 ["Control"]
      108 LOADK                            R18 K25 ["SearchPlaceholder"]
      109 NAMECALL                         R15 R15 K26 ["getText"]
      111 CALL                             R15 3 1
      112 SETTABLEKS                       R15 R14 K27 ["PlaceholderText"]
      114 LOADB                            R15 1
      115 SETTABLEKS                       R15 R14 K28 ["ShowSearchIcon"]
      117 LOADB                            R15 0
      118 SETTABLEKS                       R15 R14 K29 ["ShowSearchButton"]
      120 GETTABLEKS                       R16 R2 K30 ["PaneSizes"]
      122 GETTABLEN                        R15 R16 1
      123 SETTABLEKS                       R15 R14 K31 ["Width"]
      125 GETUPVAL                         R15 4
      126 GETTABLEKS                       R15 R15 K14 ["Tag"]
      128 LOADK                            R16 K16 ["SearchInput"]
      129 SETTABLE                         R16 R14 R15
      130 CALL                             R12 2 1
      131 SETTABLEKS                       R12 R11 K16 ["SearchInput"]
      133 GETUPVAL                         R12 4
      134 GETTABLEKS                       R12 R12 K11 ["createElement"]
      136 GETUPVAL                         R13 8
      137 GETUPVAL                         R14 9
      138 NEWTABLE                         R15 32 0
      140 GETTABLEKS                       R16 R2 K2 ["table"]
      142 GETTABLEKS                       R16 R16 K32 ["Columns"]
      144 SETTABLEKS                       R16 R15 K32 ["Columns"]
      146 LOADB                            R16 1
      147 SETTABLEKS                       R16 R15 K33 ["ClampSize"]
      149 SETTABLEKS                       R5 R15 K6 ["Expansion"]
      151 LOADB                            R16 1
      152 SETTABLEKS                       R16 R15 K34 ["FullSpanEmphasis"]
      154 GETUPVAL                         R16 10
      155 GETTABLEKS                       R16 R16 K35 ["getTableRowId"]
      157 SETTABLEKS                       R16 R15 K36 ["GetItemId"]
      159 GETUPVAL                         R16 10
      160 GETTABLEKS                       R16 R16 K37 ["getRowChildren"]
      162 SETTABLEKS                       R16 R15 K38 ["GetChildren"]
      164 GETTABLEKS                       R16 R0 K39 ["onAction"]
      166 SETTABLEKS                       R16 R15 K40 ["OnCellAction"]
      168 NEWCLOSURE                       R16 P0
      169 CAPTURE                          UPVAL U11
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R0
      173 SETTABLEKS                       R16 R15 K41 ["OnCellEdited"]
      175 GETTABLEKS                       R16 R0 K42 ["onDoubleClick"]
      177 SETTABLEKS                       R16 R15 K43 ["OnCellDoubleClick"]
      179 GETTABLEKS                       R16 R0 K44 ["onCellPressed"]
      181 SETTABLEKS                       R16 R15 K45 ["OnCellPressed"]
      183 LOADN                            R16 2
      184 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      186 GETTABLEKS                       R16 R0 K46 ["onRightClick"]
      188 SETTABLEKS                       R16 R15 K47 ["RightClick"]
      190 SETTABLEKS                       R3 R15 K48 ["RootItems"]
      192 GETUPVAL                         R16 12
      193 SETTABLEKS                       R16 R15 K49 ["RowHeight"]
      195 LOADB                            R16 1
      196 SETTABLEKS                       R16 R15 K50 ["Scroll"]
      198 DUPTABLE                         R16 K52 [{"VerticalScrollBarInset"}]
      199 GETIMPORT                        R17 K56 [Enum.ScrollBarInset.ScrollBar]
      201 SETTABLEKS                       R17 R16 K51 ["VerticalScrollBarInset"]
      203 SETTABLEKS                       R16 R15 K57 ["ScrollProps"]
      205 SETTABLEKS                       R7 R15 K58 ["Selection"]
      207 LOADB                            R16 0
      208 SETTABLEKS                       R16 R15 K59 ["ShowHeader"]
      210 LOADB                            R16 1
      211 SETTABLEKS                       R16 R15 K60 ["UseScale"]
      213 LOADK                            R16 K61 ["compact"]
      214 SETTABLEKS                       R16 R15 K62 ["Variant"]
      216 GETUPVAL                         R16 4
      217 GETTABLEKS                       R16 R16 K14 ["Tag"]
      219 LOADK                            R17 K63 ["FlexFill LeftItems compact"]
      220 SETTABLE                         R17 R15 R16
      221 GETTABLEKS                       R16 R0 K64 ["tableCallbacks"]
      223 CALL                             R14 2 -1
      224 CALL                             R12 -1 1
      225 SETTABLEKS                       R12 R11 K17 ["LeftItems"]
      227 GETUPVAL                         R12 4
      228 GETTABLEKS                       R12 R12 K11 ["createElement"]
      230 GETUPVAL                         R13 13
      231 DUPTABLE                         R14 K66 [{["LayoutOrder"] = 3}]
      232 CALL                             R12 2 1
      233 SETTABLEKS                       R12 R11 K18 ["Source"]
      235 CALL                             R8 3 1
      236 LOADNIL                          R9
      237 JUMPIFNOT                        R4 ; [+156]
      238 GETTABLEKS                       R10 R4 K67 ["Instance"]
      240 JUMPIFNOT                        R10 ; [+24]
      241 LOADK                            R13 K68 ["StyleRule"]
      242 NAMECALL                         R11 R10 K69 ["IsA"]
      244 CALL                             R11 2 1
      245 JUMPIFNOT                        R11 ; [+19]
      246 GETUPVAL                         R11 4
      247 GETTABLEKS                       R11 R11 K11 ["createElement"]
      249 GETUPVAL                         R12 14
      250 DUPTABLE                         R13 K70 [{"key", "StyleRule"}]
      251 GETUPVAL                         R15 6
      252 JUMPIFNOT                        R15 ; [+2]
      253 LOADK                            R14 K71 ["Right"]
      254 JUMP                             ; [+1]
      255 LOADNIL                          R14
      256 SETTABLEKS                       R14 R13 K13 ["key"]
      258 GETTABLEKS                       R14 R4 K67 ["Instance"]
      260 SETTABLEKS                       R14 R13 K68 ["StyleRule"]
      262 CALL                             R11 2 1
      263 MOVE                             R9 R11
      264 JUMP                             ; [+129]
      265 GETUPVAL                         R11 15
      266 JUMPIFNOT                        R11 ; [+37]
      267 JUMPIFNOT                        R10 ; [+36]
      268 LOADK                            R13 K72 ["Folder"]
      269 NAMECALL                         R11 R10 K69 ["IsA"]
      271 CALL                             R11 2 1
      272 JUMPIFNOT                        R11 ; [+31]
      273 GETUPVAL                         R11 16
      274 JUMPIFNOT                        R11 ; [+12]
      275 GETUPVAL                         R11 17
      276 GETTABLEKS                       R11 R11 K73 ["isUnderPath"]
      278 GETTABLEKS                       R12 R4 K74 ["Path"]
      280 GETUPVAL                         R13 17
      281 GETTABLEKS                       R13 R13 K75 ["PATHS"]
      283 GETTABLEKS                       R13 R13 K76 ["THEMES"]
      285 CALL                             R11 2 1
      286 JUMPIF                           R11 ; [+17]
      287 GETUPVAL                         R11 4
      288 GETTABLEKS                       R11 R11 K11 ["createElement"]
      290 GETUPVAL                         R12 18
      291 DUPTABLE                         R13 K77 [{"key", "Folder"}]
      292 GETUPVAL                         R15 6
      293 JUMPIFNOT                        R15 ; [+2]
      294 LOADK                            R14 K71 ["Right"]
      295 JUMP                             ; [+1]
      296 LOADNIL                          R14
      297 SETTABLEKS                       R14 R13 K13 ["key"]
      299 SETTABLEKS                       R10 R13 K72 ["Folder"]
      301 CALL                             R11 2 1
      302 MOVE                             R9 R11
      303 JUMP                             ; [+90]
      304 JUMPIFNOT                        R10 ; [+24]
      305 LOADK                            R13 K78 ["StyleSheet"]
      306 NAMECALL                         R11 R10 K69 ["IsA"]
      308 CALL                             R11 2 1
      309 JUMPIFNOT                        R11 ; [+19]
      310 GETUPVAL                         R11 4
      311 GETTABLEKS                       R11 R11 K11 ["createElement"]
      313 GETUPVAL                         R12 19
      314 DUPTABLE                         R13 K79 [{"key", "StyleSheet"}]
      315 GETUPVAL                         R15 6
      316 JUMPIFNOT                        R15 ; [+2]
      317 LOADK                            R14 K71 ["Right"]
      318 JUMP                             ; [+1]
      319 LOADNIL                          R14
      320 SETTABLEKS                       R14 R13 K13 ["key"]
      322 GETTABLEKS                       R14 R4 K67 ["Instance"]
      324 SETTABLEKS                       R14 R13 K78 ["StyleSheet"]
      326 CALL                             R11 2 1
      327 MOVE                             R9 R11
      328 JUMP                             ; [+65]
      329 GETTABLEKS                       R11 R4 K80 ["Name"]
      331 GETTABLEKS                       R11 R11 K81 ["Value"]
      333 JUMPIFEQKS                       R11 K82 ["Themes"] ; [+60]
      335 GETUPVAL                         R11 17
      336 GETTABLEKS                       R11 R11 K73 ["isUnderPath"]
      338 GETTABLEKS                       R12 R4 K74 ["Path"]
      340 GETUPVAL                         R13 17
      341 GETTABLEKS                       R13 R13 K75 ["PATHS"]
      343 GETTABLEKS                       R13 R13 K76 ["THEMES"]
      345 CALL                             R11 2 1
      346 JUMPIFNOT                        R11 ; [+47]
      347 GETUPVAL                         R11 20
      348 JUMPIFNOT                        R11 ; [+29]
      349 JUMPIFNOT                        R4 ; [+44]
      350 GETUPVAL                         R11 21
      351 GETTABLEKS                       R12 R4 K83 ["Children"]
      353 DUPCLOSURE                       R13 K84 [PROTO_26]
      354 CALL                             R11 2 1
      355 GETUPVAL                         R12 4
      356 GETTABLEKS                       R12 R12 K11 ["createElement"]
      358 GETUPVAL                         R13 22
      359 DUPTABLE                         R14 K87 [{"key", "ThemeSheets", "Title"}]
      360 GETUPVAL                         R16 6
      361 JUMPIFNOT                        R16 ; [+2]
      362 LOADK                            R15 K71 ["Right"]
      363 JUMP                             ; [+1]
      364 LOADNIL                          R15
      365 SETTABLEKS                       R15 R14 K13 ["key"]
      367 SETTABLEKS                       R11 R14 K85 ["ThemeSheets"]
      369 GETTABLEKS                       R15 R4 K80 ["Name"]
      371 GETTABLEKS                       R15 R15 K81 ["Value"]
      373 SETTABLEKS                       R15 R14 K86 ["Title"]
      375 CALL                             R12 2 1
      376 MOVE                             R9 R12
      377 JUMP                             ; [+16]
      378 GETUPVAL                         R11 4
      379 GETTABLEKS                       R11 R11 K11 ["createElement"]
      381 GETUPVAL                         R12 22
      382 DUPTABLE                         R13 K89 [{"key", "RootItem_DEPRECATED"}]
      383 GETUPVAL                         R15 6
      384 JUMPIFNOT                        R15 ; [+2]
      385 LOADK                            R14 K71 ["Right"]
      386 JUMP                             ; [+1]
      387 LOADNIL                          R14
      388 SETTABLEKS                       R14 R13 K13 ["key"]
      390 SETTABLEKS                       R4 R13 K88 ["RootItem_DEPRECATED"]
      392 CALL                             R11 2 1
      393 MOVE                             R9 R11
      394 GETUPVAL                         R10 4
      395 GETTABLEKS                       R10 R10 K11 ["createElement"]
      397 GETUPVAL                         R11 5
      398 NEWTABLE                         R12 0 0
      400 DUPTABLE                         R13 K91 [{"Divider"}]
      401 GETUPVAL                         R14 4
      402 GETTABLEKS                       R14 R14 K11 ["createElement"]
      404 GETUPVAL                         R15 23
      405 DUPTABLE                         R16 K97 [{["ClampSize"] = True, ["UseDeficit"] = True, ["MinSizes"], ["OnSizesChange"], ["Sizes"]}]
      406 GETUPVAL                         R18 1
      407 JUMPIFNOT                        R18 ; [+2]
      408 GETUPVAL                         R17 24
      409 JUMP                             ; [+14]
      410 NEWTABLE                         R17 0 2
      412 GETIMPORT                        R18 K100 [UDim.new]
      414 LOADN                            R19 0
      415 LOADN                            R20 10
      416 CALL                             R18 2 1
      417 GETIMPORT                        R19 K100 [UDim.new]
      419 LOADN                            R20 0
      420 LOADN                            R21 100
      421 CALL                             R19 2 -1
      422 SETLIST                          R17 R18 -1 [1]
      424 SETTABLEKS                       R17 R16 K94 ["MinSizes"]
      426 GETTABLEKS                       R17 R0 K101 ["onPaneSizesChanged"]
      428 SETTABLEKS                       R17 R16 K95 ["OnSizesChange"]
      430 GETTABLEKS                       R17 R2 K30 ["PaneSizes"]
      432 SETTABLEKS                       R17 R16 K96 ["Sizes"]
      434 NEWTABLE                         R17 0 2
      436 MOVE                             R18 R8
      437 MOVE                             R19 R9
      438 SETLIST                          R17 R18 2 [1]
      440 CALL                             R14 3 1
      441 SETTABLEKS                       R14 R13 K90 ["Divider"]
      443 CALL                             R10 3 -1
      444 RETURN                           R10 -1

PROTO_28:
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
       64 GETTABLEKS                       R10 R10 K18 ["SetItemsExpanded"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K4 [require]
       69 GETTABLEKS                       R11 R7 K16 ["Window"]
       71 GETTABLEKS                       R11 R11 K19 ["SetSearch"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R11 R0 K14 ["Src"]
       76 GETTABLEKS                       R11 R11 K5 ["Thunks"]
       78 GETIMPORT                        R12 K4 [require]
       80 GETTABLEKS                       R13 R11 K6 ["ContextMenu"]
       82 GETTABLEKS                       R13 R13 K20 ["ShowFolderMenu"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K4 [require]
       87 GETTABLEKS                       R14 R11 K6 ["ContextMenu"]
       89 GETTABLEKS                       R14 R14 K21 ["ShowStyleSheetCategoryMenu"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K4 [require]
       94 GETTABLEKS                       R15 R11 K6 ["ContextMenu"]
       96 GETTABLEKS                       R15 R15 K22 ["ShowNewStyleRuleMenu"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K4 [require]
      101 GETTABLEKS                       R16 R11 K6 ["ContextMenu"]
      103 GETTABLEKS                       R16 R16 K23 ["ShowStyleRuleMenu"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K4 [require]
      108 GETTABLEKS                       R17 R11 K6 ["ContextMenu"]
      110 GETTABLEKS                       R17 R17 K24 ["ShowStyleSheetMenu"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K4 [require]
      115 GETTABLEKS                       R18 R11 K6 ["ContextMenu"]
      117 GETTABLEKS                       R18 R18 K25 ["ShowThemeCategoryMenu"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K4 [require]
      122 GETTABLEKS                       R19 R11 K6 ["ContextMenu"]
      124 GETTABLEKS                       R19 R19 K26 ["ShowThemeOtherMenu"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K4 [require]
      129 GETTABLEKS                       R20 R11 K6 ["ContextMenu"]
      131 GETTABLEKS                       R20 R20 K27 ["ShowTokenCategoryMenu"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K4 [require]
      136 GETTABLEKS                       R21 R11 K6 ["ContextMenu"]
      138 GETTABLEKS                       R21 R21 K28 ["ShowUiElementsMenu"]
      140 CALL                             R20 1 1
      141 GETTABLEKS                       R21 R4 K29 ["UI"]
      143 GETTABLEKS                       R22 R21 K30 ["Pane"]
      145 GETTABLEKS                       R23 R21 K31 ["SearchBar"]
      147 GETTABLEKS                       R24 R21 K32 ["SplitPane"]
      149 GETTABLEKS                       R25 R21 K33 ["TreeTable"]
      151 GETIMPORT                        R26 K4 [require]
      153 GETTABLEKS                       R27 R0 K14 ["Src"]
      155 GETTABLEKS                       R27 R27 K34 ["Util"]
      157 GETTABLEKS                       R27 R27 K35 ["DesignHelpers"]
      159 CALL                             R26 1 1
      160 GETIMPORT                        R27 K4 [require]
      162 GETTABLEKS                       R28 R0 K14 ["Src"]
      164 GETTABLEKS                       R28 R28 K34 ["Util"]
      166 GETTABLEKS                       R28 R28 K36 ["StyleQueryHelpers"]
      168 CALL                             R27 1 1
      169 GETIMPORT                        R28 K4 [require]
      171 GETTABLEKS                       R29 R0 K14 ["Src"]
      173 GETTABLEKS                       R29 R29 K34 ["Util"]
      175 GETTABLEKS                       R29 R29 K37 ["TreeTableHelpers"]
      177 CALL                             R28 1 1
      178 GETIMPORT                        R29 K4 [require]
      180 GETTABLEKS                       R30 R0 K14 ["Src"]
      182 GETTABLEKS                       R30 R30 K34 ["Util"]
      184 GETTABLEKS                       R30 R30 K38 ["mapDispatchToProps"]
      186 CALL                             R29 1 1
      187 GETIMPORT                        R30 K4 [require]
      189 GETTABLEKS                       R31 R0 K14 ["Src"]
      191 GETTABLEKS                       R31 R31 K39 ["Components"]
      193 GETTABLEKS                       R31 R31 K40 ["SourceSelect"]
      195 CALL                             R30 1 1
      196 GETIMPORT                        R31 K4 [require]
      198 GETTABLEKS                       R32 R0 K14 ["Src"]
      200 GETTABLEKS                       R32 R32 K39 ["Components"]
      202 GETTABLEKS                       R32 R32 K41 ["StyleRuleView"]
      204 CALL                             R31 1 1
      205 GETIMPORT                        R32 K4 [require]
      207 GETTABLEKS                       R33 R0 K14 ["Src"]
      209 GETTABLEKS                       R33 R33 K39 ["Components"]
      211 GETTABLEKS                       R33 R33 K42 ["StyleSheetView"]
      213 CALL                             R32 1 1
      214 GETIMPORT                        R33 K4 [require]
      216 GETTABLEKS                       R34 R0 K14 ["Src"]
      218 GETTABLEKS                       R34 R34 K39 ["Components"]
      220 GETTABLEKS                       R34 R34 K43 ["ThemesView"]
      222 CALL                             R33 1 1
      223 GETIMPORT                        R34 K4 [require]
      225 GETTABLEKS                       R35 R0 K14 ["Src"]
      227 GETTABLEKS                       R35 R35 K39 ["Components"]
      229 GETTABLEKS                       R35 R35 K44 ["FolderView"]
      231 CALL                             R34 1 1
      232 GETIMPORT                        R35 K4 [require]
      234 GETTABLEKS                       R36 R0 K14 ["Src"]
      236 GETTABLEKS                       R36 R36 K34 ["Util"]
      238 GETTABLEKS                       R36 R36 K45 ["isEmptyTable"]
      240 CALL                             R35 1 1
      241 GETIMPORT                        R36 K4 [require]
      243 GETTABLEKS                       R37 R0 K14 ["Src"]
      245 GETTABLEKS                       R37 R37 K46 ["Flags"]
      247 GETTABLEKS                       R37 R37 K47 ["getFFlagStyleEditorThemesCrash"]
      249 CALL                             R36 1 1
      250 CALL                             R36 0 1
      251 GETIMPORT                        R37 K4 [require]
      253 GETTABLEKS                       R38 R0 K14 ["Src"]
      255 GETTABLEKS                       R38 R38 K46 ["Flags"]
      257 GETTABLEKS                       R38 R38 K48 ["getFFlagStyleEditorFixWarnings"]
      259 CALL                             R37 1 1
      260 CALL                             R37 0 1
      261 GETIMPORT                        R38 K4 [require]
      263 GETTABLEKS                       R39 R0 K14 ["Src"]
      265 GETTABLEKS                       R39 R39 K46 ["Flags"]
      267 GETTABLEKS                       R39 R39 K49 ["getFFlagStyleEditorNewRuleRenameFix"]
      269 CALL                             R38 1 1
      270 CALL                             R38 0 1
      271 GETIMPORT                        R39 K4 [require]
      273 GETTABLEKS                       R40 R0 K14 ["Src"]
      275 GETTABLEKS                       R40 R40 K46 ["Flags"]
      277 GETTABLEKS                       R40 R40 K50 ["getFFlagStyleQuery"]
      279 CALL                             R39 1 1
      280 CALL                             R39 0 1
      281 GETIMPORT                        R40 K4 [require]
      283 GETTABLEKS                       R41 R0 K14 ["Src"]
      285 GETTABLEKS                       R41 R41 K46 ["Flags"]
      287 GETTABLEKS                       R41 R41 K51 ["getFFlagStyleEditorFixThemeFolderView"]
      289 CALL                             R40 1 1
      290 CALL                             R40 0 1
      291 GETIMPORT                        R41 K4 [require]
      293 GETTABLEKS                       R42 R0 K14 ["Src"]
      295 GETTABLEKS                       R42 R42 K46 ["Flags"]
      297 GETTABLEKS                       R42 R42 K52 ["getFFlagStyleEditorRightClick"]
      299 CALL                             R41 1 1
      300 CALL                             R41 0 1
      301 GETTABLEKS                       R42 R4 K53 ["SharedFlags"]
      303 GETTABLEKS                       R42 R42 K54 ["getFFlagDevFrameworkFixTreeTableRightClick"]
      305 CALL                             R42 0 1
      306 GETIMPORT                        R43 K4 [require]
      308 GETTABLEKS                       R44 R0 K14 ["Src"]
      310 GETTABLEKS                       R44 R44 K55 ["Types"]
      312 CALL                             R43 1 1
      313 GETIMPORT                        R44 K4 [require]
      315 GETTABLEKS                       R45 R0 K14 ["Src"]
      317 GETTABLEKS                       R45 R45 K56 ["Reducers"]
      319 GETTABLEKS                       R45 R45 K57 ["RootReducer"]
      321 CALL                             R44 1 1
      322 GETIMPORT                        R45 K4 [require]
      324 GETTABLEKS                       R46 R0 K8 ["Packages"]
      326 GETTABLEKS                       R46 R46 K58 ["Dash"]
      328 CALL                             R45 1 1
      329 GETTABLEKS                       R46 R45 K59 ["copy"]
      331 GETTABLEKS                       R47 R45 K60 ["collectArray"]
      333 GETTABLEKS                       R48 R45 K61 ["join"]
      335 GETTABLEKS                       R49 R45 K62 ["mapOne"]
      337 GETIMPORT                        R50 K4 [require]
      339 GETTABLEKS                       R51 R0 K14 ["Src"]
      341 GETTABLEKS                       R51 R51 K63 ["Resources"]
      343 GETTABLEKS                       R51 R51 K64 ["PluginStyles"]
      345 CALL                             R50 1 1
      346 LOADK                            R53 K65 ["RowHeight"]
      347 NAMECALL                         R51 R50 K66 ["GetAttribute"]
      349 CALL                             R51 2 1
      350 GETIMPORT                        R52 K4 [require]
      352 GETIMPORT                        R53 K1 [script]
      354 GETTABLEKS                       R53 R53 K67 ["Tree"]
      356 CALL                             R52 1 1
      357 GETIMPORT                        R53 K4 [require]
      359 GETIMPORT                        R54 K1 [script]
      361 GETTABLEKS                       R54 R54 K68 ["onEdited"]
      363 CALL                             R53 1 1
      364 NEWTABLE                         R54 0 1
      366 DUPTABLE                         R55 K72 [{["Name"] = "Name", ["Key"] = "Name", ["Width"]}]
      367 GETIMPORT                        R56 K75 [UDim.new]
      369 LOADN                            R57 1
      370 LOADN                            R58 0
      371 CALL                             R56 2 1
      372 SETTABLEKS                       R56 R55 K71 ["Width"]
      374 SETLIST                          R54 R55 1 [1]
      376 NEWTABLE                         R55 0 2
      378 GETIMPORT                        R56 K75 [UDim.new]
      380 LOADN                            R57 0
      381 LOADN                            R58 10
      382 CALL                             R56 2 1
      383 GETIMPORT                        R57 K75 [UDim.new]
      385 LOADN                            R58 0
      386 LOADN                            R59 100
      387 CALL                             R57 2 -1
      388 SETLIST                          R55 R56 -1 [1]
      390 GETTABLEKS                       R56 R52 K76 ["EditTree"]
      392 GETTABLEKS                       R57 R2 K77 ["PureComponent"]
      394 LOADK                            R59 K78 ["MainPage"]
      395 NAMECALL                         R57 R57 K79 ["extend"]
      397 CALL                             R57 2 1
      398 DUPCLOSURE                       R58 K80 [PROTO_19]
      399 CAPTURE                          VAL R38
      400 CAPTURE                          VAL R46
      401 CAPTURE                          VAL R54
      402 CAPTURE                          VAL R15
      403 CAPTURE                          VAL R16
      404 CAPTURE                          VAL R39
      405 CAPTURE                          VAL R12
      406 CAPTURE                          VAL R1
      407 CAPTURE                          VAL R56
      408 CAPTURE                          VAL R20
      409 CAPTURE                          VAL R13
      410 CAPTURE                          VAL R17
      411 CAPTURE                          VAL R19
      412 CAPTURE                          VAL R14
      413 CAPTURE                          VAL R18
      414 CAPTURE                          VAL R41
      415 CAPTURE                          VAL R42
      416 CAPTURE                          VAL R10
      417 CAPTURE                          VAL R8
      418 CAPTURE                          VAL R27
      419 CAPTURE                          VAL R48
      420 CAPTURE                          VAL R9
      421 CAPTURE                          VAL R49
      422 CAPTURE                          VAL R52
      423 SETTABLEKS                       R58 R57 K81 ["init"]
      425 NEWCLOSURE                       R58 P1
      426 CAPTURE                          VAL R47
      427 CAPTURE                          VAL R46
      428 CAPTURE                          REF R57
      429 SETTABLEKS                       R58 R57 K82 ["applySearch"]
      431 DUPCLOSURE                       R58 K83 [PROTO_23]
      432 CAPTURE                          VAL R38
      433 CAPTURE                          VAL R35
      434 CAPTURE                          VAL R52
      435 CAPTURE                          VAL R56
      436 CAPTURE                          VAL R48
      437 SETTABLEKS                       R58 R57 K84 ["getDerivedStateFromProps"]
      439 DUPCLOSURE                       R58 K85 [PROTO_24]
      440 CAPTURE                          VAL R38
      441 CAPTURE                          VAL R45
      442 CAPTURE                          VAL R56
      443 CAPTURE                          VAL R48
      444 CAPTURE                          VAL R9
      445 SETTABLEKS                       R58 R57 K86 ["didUpdate"]
      447 NEWCLOSURE                       R58 P4
      448 CAPTURE                          VAL R56
      449 CAPTURE                          VAL R38
      450 CAPTURE                          REF R57
      451 CAPTURE                          VAL R46
      452 CAPTURE                          VAL R2
      453 CAPTURE                          VAL R22
      454 CAPTURE                          VAL R37
      455 CAPTURE                          VAL R23
      456 CAPTURE                          VAL R25
      457 CAPTURE                          VAL R48
      458 CAPTURE                          VAL R28
      459 CAPTURE                          VAL R53
      460 CAPTURE                          VAL R51
      461 CAPTURE                          VAL R30
      462 CAPTURE                          VAL R31
      463 CAPTURE                          VAL R39
      464 CAPTURE                          VAL R40
      465 CAPTURE                          VAL R26
      466 CAPTURE                          VAL R34
      467 CAPTURE                          VAL R32
      468 CAPTURE                          VAL R36
      469 CAPTURE                          VAL R47
      470 CAPTURE                          VAL R33
      471 CAPTURE                          VAL R24
      472 CAPTURE                          VAL R55
      473 SETTABLEKS                       R58 R57 K87 ["render"]
      475 MOVE                             R58 R6
      476 DUPTABLE                         R59 K90 [{"Localization", "Plugin"}]
      477 GETTABLEKS                       R60 R5 K88 ["Localization"]
      479 SETTABLEKS                       R60 R59 K88 ["Localization"]
      481 GETTABLEKS                       R60 R5 K89 ["Plugin"]
      483 SETTABLEKS                       R60 R59 K89 ["Plugin"]
      485 CALL                             R58 1 1
      486 MOVE                             R59 R57
      487 CALL                             R58 1 1
      488 MOVE                             R57 R58
      489 GETTABLEKS                       R58 R3 K91 ["connect"]
      491 DUPCLOSURE                       R59 K92 [PROTO_28]
      492 MOVE                             R60 R29
      493 CALL                             R58 2 1
      494 MOVE                             R59 R57
      495 CALL                             R58 1 -1
      496 CLOSEUPVALS                      R57
      497 RETURN                           R58 -1
