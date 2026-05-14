PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDoubleClick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Menu"] ; [+187]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["state"]
        9 GETTABLEKS                       R5 R5 K3 ["table"]
       11 GETTABLEKS                       R5 R5 K4 ["Items"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R3 K5 ["getChild"]
       16 CALL                             R3 3 1
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R4 R3 K6 ["Name"]
       21 GETTABLEKS                       R4 R4 K7 ["Value"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R1
       26 GETTABLEKS                       R6 R3 K8 ["Instance"]
       28 JUMPIFNOT                        R6 ; [+60]
       29 GETTABLEKS                       R6 R3 K8 ["Instance"]
       31 LOADK                            R8 K9 ["StyleRule"]
       32 NAMECALL                         R6 R6 K10 ["IsA"]
       34 CALL                             R6 2 1
       35 JUMPIFNOT                        R6 ; [+10]
       36 GETTABLEKS                       R6 R2 K11 ["dispatch"]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R8 R3 K8 ["Instance"]
       41 MOVE                             R9 R5
       42 LOADB                            R10 1
       43 CALL                             R7 3 -1
       44 CALL                             R6 -1 0
       45 RETURN                           R0 0
       46 GETTABLEKS                       R6 R3 K8 ["Instance"]
       48 LOADK                            R8 K12 ["StyleSheet"]
       49 NAMECALL                         R6 R6 K10 ["IsA"]
       51 CALL                             R6 2 1
       52 JUMPIFNOT                        R6 ; [+9]
       53 GETTABLEKS                       R6 R2 K11 ["dispatch"]
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R8 R3 K8 ["Instance"]
       58 MOVE                             R9 R5
       59 CALL                             R7 2 -1
       60 CALL                             R6 -1 0
       61 RETURN                           R0 0
       62 GETTABLEKS                       R6 R3 K8 ["Instance"]
       64 LOADK                            R8 K13 ["Folder"]
       65 NAMECALL                         R6 R6 K10 ["IsA"]
       67 CALL                             R6 2 1
       68 JUMPIFNOT                        R6 ; [+122]
       69 GETUPVAL                         R6 4
       70 JUMPIFNOT                        R6 ; [+9]
       71 GETTABLEKS                       R6 R2 K11 ["dispatch"]
       73 GETUPVAL                         R7 5
       74 GETTABLEKS                       R8 R3 K8 ["Instance"]
       76 LOADB                            R9 1
       77 CALL                             R7 2 -1
       78 CALL                             R6 -1 0
       79 RETURN                           R0 0
       80 GETTABLEKS                       R6 R2 K11 ["dispatch"]
       82 GETUPVAL                         R7 6
       83 GETTABLEKS                       R8 R3 K8 ["Instance"]
       85 MOVE                             R9 R5
       86 CALL                             R7 2 -1
       87 CALL                             R6 -1 0
       88 RETURN                           R0 0
       89 GETUPVAL                         R6 1
       90 GETUPVAL                         R8 0
       91 GETTABLEKS                       R8 R8 K2 ["state"]
       93 GETTABLEKS                       R8 R8 K3 ["table"]
       95 GETTABLEKS                       R8 R8 K4 ["Items"]
       97 MOVE                             R9 R3
       98 NAMECALL                         R6 R6 K14 ["getParent"]
      100 CALL                             R6 3 1
      101 JUMPIFNOTEQKS                    R4 K15 ["UI Elements"] ; [+9]
      103 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      105 GETUPVAL                         R8 7
      106 GETTABLEKS                       R9 R6 K8 ["Instance"]
      108 CALL                             R8 1 -1
      109 CALL                             R7 -1 0
      110 RETURN                           R0 0
      111 JUMPIFNOTEQKS                    R4 K16 ["StyleSheets"] ; [+7]
      113 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      115 GETUPVAL                         R8 8
      116 CALL                             R8 0 -1
      117 CALL                             R7 -1 0
      118 RETURN                           R0 0
      119 JUMPIFNOTEQKS                    R4 K17 ["Themes"] ; [+7]
      121 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      123 GETUPVAL                         R8 9
      124 CALL                             R8 0 -1
      125 CALL                             R7 -1 0
      126 RETURN                           R0 0
      127 JUMPIFNOTEQKS                    R4 K18 ["Tokens"] ; [+7]
      129 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      131 GETUPVAL                         R8 10
      132 CALL                             R8 0 -1
      133 CALL                             R7 -1 0
      134 RETURN                           R0 0
      135 GETTABLEKS                       R7 R6 K8 ["Instance"]
      137 JUMPIFNOT                        R7 ; [+48]
      138 GETTABLEKS                       R7 R6 K8 ["Instance"]
      140 LOADK                            R9 K12 ["StyleSheet"]
      141 NAMECALL                         R7 R7 K10 ["IsA"]
      143 CALL                             R7 2 1
      144 JUMPIFNOT                        R7 ; [+41]
      145 GETTABLEKS                       R7 R3 K6 ["Name"]
      147 GETTABLEKS                       R7 R7 K7 ["Value"]
      149 JUMPIFNOTEQKS                    R7 K19 ["Tags"] ; [+10]
      151 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      153 GETUPVAL                         R8 11
      154 GETTABLEKS                       R9 R6 K8 ["Instance"]
      156 LOADK                            R10 K20 [".Tag"]
      157 CALL                             R8 2 -1
      158 CALL                             R7 -1 0
      159 RETURN                           R0 0
      160 GETTABLEKS                       R7 R3 K6 ["Name"]
      162 GETTABLEKS                       R7 R7 K7 ["Value"]
      164 JUMPIFNOTEQKS                    R7 K21 ["Queries"] ; [+12]
      166 GETUPVAL                         R7 4
      167 JUMPIFNOT                        R7 ; [+9]
      168 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      170 GETUPVAL                         R8 11
      171 GETTABLEKS                       R9 R6 K8 ["Instance"]
      173 LOADK                            R10 K22 ["@Query"]
      174 CALL                             R8 2 -1
      175 CALL                             R7 -1 0
      176 RETURN                           R0 0
      177 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      179 GETUPVAL                         R8 11
      180 GETTABLEKS                       R9 R6 K8 ["Instance"]
      182 LOADK                            R10 K23 ["#Name"]
      183 CALL                             R8 2 -1
      184 CALL                             R7 -1 0
      185 RETURN                           R0 0
      186 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      188 GETUPVAL                         R8 12
      189 CALL                             R8 0 -1
      190 CALL                             R7 -1 0
      191 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["dispatch"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["dispatch"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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
       38 DUPTABLE                         R5 K11 [{"Editing"}]
       39 LOADB                            R6 1
       40 SETTABLEKS                       R6 R5 K10 ["Editing"]
       42 CALL                             R3 2 1
       43 SETTABLEKS                       R3 R2 K8 ["Schema"]
       45 GETTABLEKS                       R4 R1 K2 ["Instance"]
       47 LOADK                            R6 K12 ["StyleRule"]
       48 NAMECALL                         R4 R4 K4 ["IsA"]
       50 CALL                             R4 2 1
       51 JUMPIFNOT                        R4 ; [+5]
       52 GETTABLEKS                       R3 R1 K2 ["Instance"]
       54 GETTABLEKS                       R3 R3 K13 ["Selector"]
       56 JUMP                             ; [+4]
       57 GETTABLEKS                       R3 R1 K2 ["Instance"]
       59 GETTABLEKS                       R3 R3 K5 ["Name"]
       61 SETTABLEKS                       R3 R2 K6 ["Value"]
       63 GETUPVAL                         R3 0
       64 MOVE                             R5 R0
       65 MOVE                             R6 R2
       66 GETUPVAL                         R7 1
       67 LOADN                            R8 1
       68 NAMECALL                         R3 R3 K14 ["updateCell"]
       70 CALL                             R3 5 1
       71 MOVE                             R0 R3
       72 GETUPVAL                         R3 5
       73 GETTABLEKS                       R4 R0 K0 ["Items"]
       75 CALL                             R3 1 1
       76 SETTABLEKS                       R3 R0 K0 ["Items"]
       78 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_12]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["selectItem"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["table"]
        2 GETTABLEKS                       R1 R1 K1 ["Expansion"]
        4 GETTABLEKS                       R2 R0 K0 ["table"]
        6 GETTABLEKS                       R2 R2 K2 ["Items"]
        8 GETUPVAL                         R3 0
        9 JUMPIFNOT                        R3 ; [+39]
       10 GETUPVAL                         R3 1
       11 JUMPIFNOT                        R3 ; [+12]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K3 ["buildTree"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K4 ["Source"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K5 ["Localization"]
       21 CALL                             R3 2 1
       22 MOVE                             R2 R3
       23 JUMP                             ; [+13]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K6 ["DEPRECATED_buildTree"]
       27 NEWTABLE                         R4 0 1
       29 GETUPVAL                         R5 4
       30 SETLIST                          R4 R5 1 [1]
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R5 R5 K5 ["Localization"]
       35 CALL                             R3 2 1
       36 MOVE                             R2 R3
       37 GETUPVAL                         R3 5
       38 MOVE                             R5 R2
       39 NAMECALL                         R3 R3 K7 ["updatePaths"]
       41 CALL                             R3 2 1
       42 MOVE                             R2 R3
       43 GETUPVAL                         R3 6
       44 GETUPVAL                         R4 3
       45 GETTABLEKS                       R4 R4 K8 ["IsDirty"]
       47 SETTABLEKS                       R4 R3 K9 ["lastUpdate"]
       49 GETUPVAL                         R3 7
       50 JUMPIF                           R3 ; [+2]
       51 GETUPVAL                         R3 0
       52 JUMPIFNOT                        R3 ; [+21]
       53 GETUPVAL                         R3 5
       54 MOVE                             R5 R2
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K10 ["SelectedItemId"]
       58 NAMECALL                         R3 R3 K11 ["findItemById"]
       60 CALL                             R3 3 1
       61 JUMPIFNOT                        R3 ; [+12]
       62 GETUPVAL                         R4 5
       63 MOVE                             R6 R2
       64 GETTABLEKS                       R7 R3 K12 ["Path"]
       66 NAMECALL                         R4 R4 K13 ["expandAncestors"]
       68 CALL                             R4 3 1
       69 GETUPVAL                         R5 8
       70 MOVE                             R6 R1
       71 MOVE                             R7 R4
       72 CALL                             R5 2 1
       73 MOVE                             R1 R5
       74 GETTABLEKS                       R3 R0 K0 ["table"]
       76 GETTABLEKS                       R3 R3 K2 ["Items"]
       78 JUMPIFNOTEQ                      R2 R3 ; [+7]
       80 GETTABLEKS                       R3 R0 K0 ["table"]
       82 GETTABLEKS                       R3 R3 K1 ["Expansion"]
       84 JUMPIFEQ                         R1 R3 ; [+14]
       86 DUPTABLE                         R3 K14 [{"table"}]
       87 GETUPVAL                         R4 8
       88 GETTABLEKS                       R5 R0 K0 ["table"]
       90 DUPTABLE                         R6 K15 [{"Items", "Expansion"}]
       91 SETTABLEKS                       R2 R6 K2 ["Items"]
       93 SETTABLEKS                       R1 R6 K1 ["Expansion"]
       95 CALL                             R4 2 1
       96 SETTABLEKS                       R4 R3 K0 ["table"]
       98 RETURN                           R3 1
       99 LOADNIL                          R3
      100 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U5
       14 NAMECALL                         R3 R3 K1 ["setState"]
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+20]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["state"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["buildTree"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["props"]
       11 GETTABLEKS                       R2 R2 K3 ["Source"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["props"]
       16 GETTABLEKS                       R3 R3 K4 ["Localization"]
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K5 ["items"]
       21 JUMP                             ; [+19]
       22 GETUPVAL                         R0 1
       23 GETTABLEKS                       R0 R0 K0 ["state"]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K6 ["DEPRECATED_buildTree"]
       28 NEWTABLE                         R2 0 1
       30 GETUPVAL                         R3 3
       31 SETLIST                          R2 R3 1 [1]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K2 ["props"]
       36 GETTABLEKS                       R3 R3 K4 ["Localization"]
       38 CALL                             R1 2 1
       39 SETTABLEKS                       R1 R0 K5 ["items"]
       41 GETUPVAL                         R0 1
       42 GETTABLEKS                       R0 R0 K0 ["state"]
       44 GETUPVAL                         R1 4
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K0 ["state"]
       48 GETTABLEKS                       R3 R3 K5 ["items"]
       50 NAMECALL                         R1 R1 K7 ["updatePaths"]
       52 CALL                             R1 2 1
       53 SETTABLEKS                       R1 R0 K5 ["items"]
       55 NEWTABLE                         R0 0 0
       57 GETUPVAL                         R1 1
       58 GETTABLEKS                       R1 R1 K0 ["state"]
       60 GETTABLEKS                       R1 R1 K5 ["items"]
       62 LOADNIL                          R2
       63 LOADNIL                          R3
       64 FORGPREP                         R1
       65 GETTABLEKS                       R6 R5 K8 ["Id"]
       67 LOADB                            R7 1
       68 SETTABLE                         R7 R0 R6
       69 FORGLOOP                         R1 2 ; [-5]
       71 GETUPVAL                         R1 1
       72 GETTABLEKS                       R1 R1 K2 ["props"]
       74 GETTABLEKS                       R1 R1 K9 ["dispatch"]
       76 GETUPVAL                         R2 5
       77 MOVE                             R3 R0
       78 CALL                             R2 1 -1
       79 CALL                             R1 -1 0
       80 RETURN                           R0 0

PROTO_17:
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
       18 LOADN                            R6 56
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
       69 LOADN                            R1 255
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
       86 SETTABLEKS                       R1 R0 K19 ["onAction"]
       88 DUPCLOSURE                       R1 K20 [PROTO_2]
       89 SETTABLEKS                       R1 R0 K21 ["onRightClick"]
       91 NEWCLOSURE                       R1 P2
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U15
       94 SETTABLEKS                       R1 R0 K22 ["onSearch"]
       96 NEWCLOSURE                       R1 P3
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R1 R0 K23 ["onPaneSizesChanged"]
      101 GETUPVAL                         R1 3
      102 MOVE                             R3 R0
      103 LOADK                            R4 K3 ["table"]
      104 NAMECALL                         R1 R1 K24 ["getStateAdaptor"]
      106 CALL                             R1 3 1
      107 SETTABLEKS                       R1 R0 K25 ["adaptor"]
      109 GETUPVAL                         R1 3
      110 GETTABLEKS                       R3 R0 K25 ["adaptor"]
      112 NAMECALL                         R1 R1 K26 ["getCallbacks"]
      114 CALL                             R1 2 1
      115 SETTABLEKS                       R1 R0 K27 ["tableCallbacks"]
      117 NEWCLOSURE                       R1 P4
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U16
      120 SETTABLEKS                       R1 R0 K28 ["selectItem"]
      122 NEWCLOSURE                       R1 P5
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U3
      125 SETTABLEKS                       R1 R0 K29 ["onCellPressed"]
      127 NEWCLOSURE                       R1 P6
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          UPVAL U6
      131 CAPTURE                          UPVAL U17
      132 CAPTURE                          UPVAL U18
      133 CAPTURE                          UPVAL U1
      134 SETTABLEKS                       R1 R0 K30 ["onDoubleClick"]
      136 GETTABLEKS                       R1 R0 K27 ["tableCallbacks"]
      138 NEWCLOSURE                       R2 P7
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U0
      141 CAPTURE                          UPVAL U18
      142 CAPTURE                          UPVAL U19
      143 SETTABLEKS                       R2 R1 K31 ["OnExpansionChange"]
      145 GETTABLEKS                       R1 R0 K27 ["tableCallbacks"]
      147 NEWCLOSURE                       R2 P8
      148 CAPTURE                          UPVAL U20
      149 CAPTURE                          VAL R0
      150 SETTABLEKS                       R2 R1 K32 ["OnSelectionChange"]
      152 GETUPVAL                         R1 0
      153 JUMPIFNOT                        R1 ; [+15]
      154 NEWCLOSURE                       R1 P9
      155 CAPTURE                          VAL R0
      156 CAPTURE                          UPVAL U21
      157 CAPTURE                          UPVAL U22
      158 CAPTURE                          UPVAL U23
      159 CAPTURE                          UPVAL U3
      160 CAPTURE                          UPVAL U18
      161 SETTABLEKS                       R1 R0 K33 ["updateItems"]
      163 GETTABLEKS                       R1 R0 K33 ["updateItems"]
      165 LOADB                            R2 1
      166 LOADB                            R3 1
      167 CALL                             R1 2 0
      168 RETURN                           R0 0
      169 NEWCLOSURE                       R1 P10
      170 CAPTURE                          UPVAL U21
      171 CAPTURE                          VAL R0
      172 CAPTURE                          UPVAL U22
      173 CAPTURE                          UPVAL U23
      174 CAPTURE                          UPVAL U3
      175 CAPTURE                          UPVAL U19
      176 SETTABLEKS                       R1 R0 K34 ["setInitialExpansionState"]
      178 GETTABLEKS                       R1 R0 K34 ["setInitialExpansionState"]
      180 CALL                             R1 0 0
      181 RETURN                           R0 0

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
        7 GETUPVAL                         R4 3
        8 JUMPIFNOT                        R4 ; [+2]
        9 MOVE                             R3 R2
       10 RETURN                           R3 1
       11 GETUPVAL                         R3 4
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R3 K0 ["updatePaths"]
       15 CALL                             R3 2 1
       16 RETURN                           R3 1

PROTO_21:
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
       45 JUMPIFNOT                        R6 ; [+30]
       46 GETUPVAL                         R6 2
       47 JUMPIFNOT                        R6 ; [+10]
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R6 R6 K8 ["buildTree"]
       51 GETTABLEKS                       R7 R0 K9 ["Source"]
       53 GETTABLEKS                       R8 R0 K10 ["Localization"]
       55 CALL                             R6 2 1
       56 MOVE                             R3 R6
       57 JUMP                             ; [+12]
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R6 R6 K11 ["DEPRECATED_buildTree"]
       61 NEWTABLE                         R7 0 1
       63 GETUPVAL                         R8 4
       64 SETLIST                          R7 R8 1 [1]
       66 GETTABLEKS                       R8 R0 K10 ["Localization"]
       68 CALL                             R6 2 1
       69 MOVE                             R3 R6
       70 GETUPVAL                         R6 5
       71 MOVE                             R8 R3
       72 NAMECALL                         R6 R6 K12 ["updatePaths"]
       74 CALL                             R6 2 1
       75 MOVE                             R3 R6
       76 GETUPVAL                         R6 6
       77 MOVE                             R7 R1
       78 DUPTABLE                         R8 K13 [{"IsDirty", "SearchTerm", "table"}]
       79 GETTABLEKS                       R9 R0 K6 ["IsDirty"]
       81 SETTABLEKS                       R9 R8 K6 ["IsDirty"]
       83 GETTABLEKS                       R9 R0 K4 ["SearchTerm"]
       85 SETTABLEKS                       R9 R8 K4 ["SearchTerm"]
       87 GETUPVAL                         R9 6
       88 GETTABLEKS                       R10 R1 K0 ["table"]
       90 DUPTABLE                         R11 K14 [{"Items", "Expansion", "Selection"}]
       91 SETTABLEKS                       R3 R11 K2 ["Items"]
       93 SETTABLEKS                       R2 R11 K1 ["Expansion"]
       95 SETTABLEKS                       R4 R11 K3 ["Selection"]
       97 CALL                             R9 2 1
       98 SETTABLEKS                       R9 R8 K0 ["table"]
      100 CALL                             R6 2 -1
      101 RETURN                           R6 -1

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R4 K2 ["table"]
        6 GETTABLEKS                       R4 R4 K3 ["Items"]
        8 GETUPVAL                         R5 0
        9 JUMPIFNOT                        R5 ; [+40]
       10 GETUPVAL                         R6 1
       11 JUMPIFNOT                        R6 ; [+16]
       12 LOADB                            R5 1
       13 GETTABLEKS                       R6 R3 K4 ["IsDirty"]
       15 GETTABLEKS                       R7 R0 K5 ["lastUpdate"]
       17 JUMPIFLT                         R7 R6 ; [+18]
       19 GETTABLEKS                       R6 R1 K6 ["Source"]
       21 GETTABLEKS                       R7 R3 K6 ["Source"]
       23 JUMPIFNOTEQ                      R6 R7 ; [+2]
       25 LOADB                            R5 0 +1
       26 LOADB                            R5 1
       27 JUMP                             ; [+8]
       28 GETTABLEKS                       R6 R3 K4 ["IsDirty"]
       30 GETTABLEKS                       R7 R0 K5 ["lastUpdate"]
       32 JUMPIFLT                         R7 R6 ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 GETTABLEKS                       R7 R3 K7 ["SelectedItemId"]
       38 GETTABLEKS                       R8 R1 K7 ["SelectedItemId"]
       40 JUMPIFNOTEQ                      R7 R8 ; [+2]
       42 LOADB                            R6 0 +1
       43 LOADB                            R6 1
       44 GETTABLEKS                       R7 R0 K8 ["updateItems"]
       46 MOVE                             R8 R5
       47 MOVE                             R9 R6
       48 CALL                             R7 2 0
       49 RETURN                           R0 0
       50 GETTABLEKS                       R5 R0 K0 ["props"]
       52 GETTABLEKS                       R5 R5 K7 ["SelectedItemId"]
       54 JUMPIFNOT                        R5 ; [+40]
       55 GETUPVAL                         R6 2
       56 GETTABLEKS                       R6 R6 K9 ["None"]
       58 JUMPIFEQ                         R5 R6 ; [+36]
       60 GETTABLEKS                       R6 R1 K7 ["SelectedItemId"]
       62 JUMPIFEQ                         R5 R6 ; [+32]
       64 GETUPVAL                         R6 3
       65 MOVE                             R8 R4
       66 MOVE                             R9 R5
       67 NAMECALL                         R6 R6 K10 ["findItemById"]
       69 CALL                             R6 3 1
       70 JUMPIFNOT                        R6 ; [+24]
       71 GETTABLEKS                       R7 R0 K0 ["props"]
       73 GETTABLEKS                       R7 R7 K11 ["ExpandedItems"]
       75 GETUPVAL                         R8 3
       76 MOVE                             R10 R4
       77 GETTABLEKS                       R11 R6 K12 ["Path"]
       79 NAMECALL                         R8 R8 K13 ["expandAncestors"]
       81 CALL                             R8 3 1
       82 GETUPVAL                         R9 4
       83 MOVE                             R10 R7
       84 MOVE                             R11 R8
       85 CALL                             R9 2 1
       86 MOVE                             R7 R9
       87 GETTABLEKS                       R9 R0 K0 ["props"]
       89 GETTABLEKS                       R9 R9 K14 ["dispatch"]
       91 GETUPVAL                         R10 5
       92 MOVE                             R11 R7
       93 CALL                             R10 1 -1
       94 CALL                             R9 -1 0
       95 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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
       73 GETUPVAL                         R9 4
       74 JUMPIFNOT                        R9 ; [+2]
       75 LOADNIL                          R8
       76 JUMP                             ; [+7]
       77 GETUPVAL                         R10 5
       78 GETUPVAL                         R11 6
       79 ADD                              R9 R10 R11
       80 LOADN                            R11 2
       81 GETUPVAL                         R12 7
       82 MUL                              R10 R11 R12
       83 ADD                              R8 R9 R10
       84 GETUPVAL                         R9 8
       85 GETTABLEKS                       R9 R9 K11 ["createElement"]
       87 GETUPVAL                         R10 9
       88 NEWTABLE                         R11 2 0
       90 GETUPVAL                         R13 10
       91 JUMPIFNOT                        R13 ; [+2]
       92 LOADK                            R12 K12 ["Left"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R12
       95 SETTABLEKS                       R12 R11 K13 ["key"]
       97 GETUPVAL                         R12 8
       98 GETTABLEKS                       R12 R12 K14 ["Tag"]
      100 GETUPVAL                         R14 4
      101 JUMPIFNOT                        R14 ; [+2]
      102 LOADK                            R13 K15 ["X-Column"]
      103 JUMP                             ; [+1]
      104 LOADK                            R13 K16 ["X-ColumnS"]
      105 SETTABLE                         R13 R11 R12
      106 DUPTABLE                         R12 K20 [{"SearchInput", "LeftItems", "Source"}]
      107 GETUPVAL                         R13 8
      108 GETTABLEKS                       R13 R13 K11 ["createElement"]
      110 GETUPVAL                         R14 11
      111 NEWTABLE                         R15 8 0
      113 LOADN                            R16 1
      114 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      116 GETTABLEKS                       R16 R0 K22 ["onSearch"]
      118 SETTABLEKS                       R16 R15 K23 ["OnTextChanged"]
      120 GETTABLEKS                       R16 R1 K24 ["Localization"]
      122 LOADK                            R18 K25 ["Control"]
      123 LOADK                            R19 K26 ["SearchPlaceholder"]
      124 NAMECALL                         R16 R16 K27 ["getText"]
      126 CALL                             R16 3 1
      127 SETTABLEKS                       R16 R15 K28 ["PlaceholderText"]
      129 LOADB                            R16 1
      130 SETTABLEKS                       R16 R15 K29 ["ShowSearchIcon"]
      132 LOADB                            R16 0
      133 SETTABLEKS                       R16 R15 K30 ["ShowSearchButton"]
      135 GETTABLEKS                       R17 R2 K31 ["PaneSizes"]
      137 GETTABLEN                        R16 R17 1
      138 SETTABLEKS                       R16 R15 K32 ["Width"]
      140 GETUPVAL                         R16 8
      141 GETTABLEKS                       R16 R16 K14 ["Tag"]
      143 LOADK                            R17 K17 ["SearchInput"]
      144 SETTABLE                         R17 R15 R16
      145 CALL                             R13 2 1
      146 SETTABLEKS                       R13 R12 K17 ["SearchInput"]
      148 GETUPVAL                         R13 8
      149 GETTABLEKS                       R13 R13 K11 ["createElement"]
      151 GETUPVAL                         R14 12
      152 GETUPVAL                         R15 13
      153 NEWTABLE                         R16 32 0
      155 GETTABLEKS                       R17 R2 K2 ["table"]
      157 GETTABLEKS                       R17 R17 K33 ["Columns"]
      159 SETTABLEKS                       R17 R16 K33 ["Columns"]
      161 LOADB                            R17 1
      162 SETTABLEKS                       R17 R16 K34 ["ClampSize"]
      164 SETTABLEKS                       R5 R16 K6 ["Expansion"]
      166 LOADB                            R17 1
      167 SETTABLEKS                       R17 R16 K35 ["FullSpanEmphasis"]
      169 GETUPVAL                         R17 14
      170 GETTABLEKS                       R17 R17 K36 ["getTableRowId"]
      172 SETTABLEKS                       R17 R16 K37 ["GetItemId"]
      174 GETUPVAL                         R17 14
      175 GETTABLEKS                       R17 R17 K38 ["getRowChildren"]
      177 SETTABLEKS                       R17 R16 K39 ["GetChildren"]
      179 GETTABLEKS                       R17 R0 K40 ["onAction"]
      181 SETTABLEKS                       R17 R16 K41 ["OnCellAction"]
      183 NEWCLOSURE                       R17 P0
      184 CAPTURE                          UPVAL U15
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R0
      188 SETTABLEKS                       R17 R16 K42 ["OnCellEdited"]
      190 GETTABLEKS                       R17 R0 K43 ["onDoubleClick"]
      192 SETTABLEKS                       R17 R16 K44 ["OnCellDoubleClick"]
      194 GETTABLEKS                       R17 R0 K45 ["onCellPressed"]
      196 SETTABLEKS                       R17 R16 K46 ["OnCellPressed"]
      198 LOADN                            R17 2
      199 SETTABLEKS                       R17 R16 K21 ["LayoutOrder"]
      201 GETTABLEKS                       R17 R0 K47 ["onRightClick"]
      203 SETTABLEKS                       R17 R16 K48 ["RightClick"]
      205 SETTABLEKS                       R3 R16 K49 ["RootItems"]
      207 GETUPVAL                         R17 16
      208 SETTABLEKS                       R17 R16 K50 ["RowHeight"]
      210 LOADB                            R17 1
      211 SETTABLEKS                       R17 R16 K51 ["Scroll"]
      213 DUPTABLE                         R17 K53 [{"VerticalScrollBarInset"}]
      214 GETIMPORT                        R18 K57 [Enum.ScrollBarInset.ScrollBar]
      216 SETTABLEKS                       R18 R17 K52 ["VerticalScrollBarInset"]
      218 SETTABLEKS                       R17 R16 K58 ["ScrollProps"]
      220 SETTABLEKS                       R7 R16 K59 ["Selection"]
      222 LOADB                            R17 0
      223 SETTABLEKS                       R17 R16 K60 ["ShowHeader"]
      225 GETUPVAL                         R18 4
      226 JUMPIFNOT                        R18 ; [+2]
      227 LOADNIL                          R17
      228 JUMP                             ; [+7]
      229 GETIMPORT                        R17 K63 [UDim2.new]
      231 LOADN                            R18 1
      232 LOADN                            R19 0
      233 LOADN                            R20 1
      234 MINUS                            R21 R8
      235 CALL                             R17 4 1
      236 SETTABLEKS                       R17 R16 K64 ["Size"]
      238 LOADB                            R17 1
      239 SETTABLEKS                       R17 R16 K65 ["UseScale"]
      241 LOADK                            R17 K66 ["compact"]
      242 SETTABLEKS                       R17 R16 K67 ["Variant"]
      244 GETUPVAL                         R17 8
      245 GETTABLEKS                       R17 R17 K14 ["Tag"]
      247 GETUPVAL                         R19 4
      248 JUMPIFNOT                        R19 ; [+2]
      249 LOADK                            R18 K68 ["FlexFill LeftItems compact"]
      250 JUMP                             ; [+1]
      251 LOADK                            R18 K69 ["LeftItems compact"]
      252 SETTABLE                         R18 R16 R17
      253 GETTABLEKS                       R17 R0 K70 ["tableCallbacks"]
      255 CALL                             R15 2 -1
      256 CALL                             R13 -1 1
      257 SETTABLEKS                       R13 R12 K18 ["LeftItems"]
      259 GETUPVAL                         R14 4
      260 JUMPIFNOT                        R14 ; [+10]
      261 GETUPVAL                         R13 8
      262 GETTABLEKS                       R13 R13 K11 ["createElement"]
      264 GETUPVAL                         R14 17
      265 DUPTABLE                         R15 K71 [{"LayoutOrder"}]
      266 LOADN                            R16 3
      267 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      269 CALL                             R13 2 1
      270 JUMP                             ; [+1]
      271 LOADNIL                          R13
      272 SETTABLEKS                       R13 R12 K19 ["Source"]
      274 CALL                             R9 3 1
      275 LOADNIL                          R10
      276 JUMPIFNOT                        R4 ; [+156]
      277 GETTABLEKS                       R11 R4 K72 ["Instance"]
      279 JUMPIFNOT                        R11 ; [+24]
      280 LOADK                            R14 K73 ["StyleRule"]
      281 NAMECALL                         R12 R11 K74 ["IsA"]
      283 CALL                             R12 2 1
      284 JUMPIFNOT                        R12 ; [+19]
      285 GETUPVAL                         R12 8
      286 GETTABLEKS                       R12 R12 K11 ["createElement"]
      288 GETUPVAL                         R13 18
      289 DUPTABLE                         R14 K75 [{"key", "StyleRule"}]
      290 GETUPVAL                         R16 10
      291 JUMPIFNOT                        R16 ; [+2]
      292 LOADK                            R15 K76 ["Right"]
      293 JUMP                             ; [+1]
      294 LOADNIL                          R15
      295 SETTABLEKS                       R15 R14 K13 ["key"]
      297 GETTABLEKS                       R15 R4 K72 ["Instance"]
      299 SETTABLEKS                       R15 R14 K73 ["StyleRule"]
      301 CALL                             R12 2 1
      302 MOVE                             R10 R12
      303 JUMP                             ; [+129]
      304 GETUPVAL                         R12 19
      305 JUMPIFNOT                        R12 ; [+37]
      306 JUMPIFNOT                        R11 ; [+36]
      307 LOADK                            R14 K77 ["Folder"]
      308 NAMECALL                         R12 R11 K74 ["IsA"]
      310 CALL                             R12 2 1
      311 JUMPIFNOT                        R12 ; [+31]
      312 GETUPVAL                         R12 20
      313 JUMPIFNOT                        R12 ; [+12]
      314 GETUPVAL                         R12 21
      315 GETTABLEKS                       R12 R12 K78 ["isUnderPath"]
      317 GETTABLEKS                       R13 R4 K79 ["Path"]
      319 GETUPVAL                         R14 21
      320 GETTABLEKS                       R14 R14 K80 ["PATHS"]
      322 GETTABLEKS                       R14 R14 K81 ["THEMES"]
      324 CALL                             R12 2 1
      325 JUMPIF                           R12 ; [+17]
      326 GETUPVAL                         R12 8
      327 GETTABLEKS                       R12 R12 K11 ["createElement"]
      329 GETUPVAL                         R13 22
      330 DUPTABLE                         R14 K82 [{"key", "Folder"}]
      331 GETUPVAL                         R16 10
      332 JUMPIFNOT                        R16 ; [+2]
      333 LOADK                            R15 K76 ["Right"]
      334 JUMP                             ; [+1]
      335 LOADNIL                          R15
      336 SETTABLEKS                       R15 R14 K13 ["key"]
      338 SETTABLEKS                       R11 R14 K77 ["Folder"]
      340 CALL                             R12 2 1
      341 MOVE                             R10 R12
      342 JUMP                             ; [+90]
      343 JUMPIFNOT                        R11 ; [+24]
      344 LOADK                            R14 K83 ["StyleSheet"]
      345 NAMECALL                         R12 R11 K74 ["IsA"]
      347 CALL                             R12 2 1
      348 JUMPIFNOT                        R12 ; [+19]
      349 GETUPVAL                         R12 8
      350 GETTABLEKS                       R12 R12 K11 ["createElement"]
      352 GETUPVAL                         R13 23
      353 DUPTABLE                         R14 K84 [{"key", "StyleSheet"}]
      354 GETUPVAL                         R16 10
      355 JUMPIFNOT                        R16 ; [+2]
      356 LOADK                            R15 K76 ["Right"]
      357 JUMP                             ; [+1]
      358 LOADNIL                          R15
      359 SETTABLEKS                       R15 R14 K13 ["key"]
      361 GETTABLEKS                       R15 R4 K72 ["Instance"]
      363 SETTABLEKS                       R15 R14 K83 ["StyleSheet"]
      365 CALL                             R12 2 1
      366 MOVE                             R10 R12
      367 JUMP                             ; [+65]
      368 GETTABLEKS                       R12 R4 K85 ["Name"]
      370 GETTABLEKS                       R12 R12 K86 ["Value"]
      372 JUMPIFEQKS                       R12 K87 ["Themes"] ; [+60]
      374 GETUPVAL                         R12 21
      375 GETTABLEKS                       R12 R12 K78 ["isUnderPath"]
      377 GETTABLEKS                       R13 R4 K79 ["Path"]
      379 GETUPVAL                         R14 21
      380 GETTABLEKS                       R14 R14 K80 ["PATHS"]
      382 GETTABLEKS                       R14 R14 K81 ["THEMES"]
      384 CALL                             R12 2 1
      385 JUMPIFNOT                        R12 ; [+47]
      386 GETUPVAL                         R12 24
      387 JUMPIFNOT                        R12 ; [+29]
      388 JUMPIFNOT                        R4 ; [+44]
      389 GETUPVAL                         R12 25
      390 GETTABLEKS                       R13 R4 K88 ["Children"]
      392 DUPCLOSURE                       R14 K89 [PROTO_24]
      393 CALL                             R12 2 1
      394 GETUPVAL                         R13 8
      395 GETTABLEKS                       R13 R13 K11 ["createElement"]
      397 GETUPVAL                         R14 26
      398 DUPTABLE                         R15 K92 [{"key", "ThemeSheets", "Title"}]
      399 GETUPVAL                         R17 10
      400 JUMPIFNOT                        R17 ; [+2]
      401 LOADK                            R16 K76 ["Right"]
      402 JUMP                             ; [+1]
      403 LOADNIL                          R16
      404 SETTABLEKS                       R16 R15 K13 ["key"]
      406 SETTABLEKS                       R12 R15 K90 ["ThemeSheets"]
      408 GETTABLEKS                       R16 R4 K85 ["Name"]
      410 GETTABLEKS                       R16 R16 K86 ["Value"]
      412 SETTABLEKS                       R16 R15 K91 ["Title"]
      414 CALL                             R13 2 1
      415 MOVE                             R10 R13
      416 JUMP                             ; [+16]
      417 GETUPVAL                         R12 8
      418 GETTABLEKS                       R12 R12 K11 ["createElement"]
      420 GETUPVAL                         R13 26
      421 DUPTABLE                         R14 K94 [{"key", "RootItem_DEPRECATED"}]
      422 GETUPVAL                         R16 10
      423 JUMPIFNOT                        R16 ; [+2]
      424 LOADK                            R15 K76 ["Right"]
      425 JUMP                             ; [+1]
      426 LOADNIL                          R15
      427 SETTABLEKS                       R15 R14 K13 ["key"]
      429 SETTABLEKS                       R4 R14 K93 ["RootItem_DEPRECATED"]
      431 CALL                             R12 2 1
      432 MOVE                             R10 R12
      433 GETUPVAL                         R11 8
      434 GETTABLEKS                       R11 R11 K11 ["createElement"]
      436 GETUPVAL                         R12 9
      437 NEWTABLE                         R13 0 0
      439 DUPTABLE                         R14 K96 [{"Divider"}]
      440 GETUPVAL                         R15 8
      441 GETTABLEKS                       R15 R15 K11 ["createElement"]
      443 GETUPVAL                         R16 27
      444 DUPTABLE                         R17 K101 [{"ClampSize", "UseDeficit", "MinSizes", "OnSizesChange", "Sizes"}]
      445 LOADB                            R18 1
      446 SETTABLEKS                       R18 R17 K34 ["ClampSize"]
      448 LOADB                            R18 1
      449 SETTABLEKS                       R18 R17 K97 ["UseDeficit"]
      451 GETUPVAL                         R19 1
      452 JUMPIFNOT                        R19 ; [+2]
      453 GETUPVAL                         R18 28
      454 JUMP                             ; [+14]
      455 NEWTABLE                         R18 0 2
      457 GETIMPORT                        R19 K103 [UDim.new]
      459 LOADN                            R20 0
      460 LOADN                            R21 10
      461 CALL                             R19 2 1
      462 GETIMPORT                        R20 K103 [UDim.new]
      464 LOADN                            R21 0
      465 LOADN                            R22 100
      466 CALL                             R20 2 -1
      467 SETLIST                          R18 R19 -1 [1]
      469 SETTABLEKS                       R18 R17 K98 ["MinSizes"]
      471 GETTABLEKS                       R18 R0 K104 ["onPaneSizesChanged"]
      473 SETTABLEKS                       R18 R17 K99 ["OnSizesChange"]
      475 GETTABLEKS                       R18 R2 K31 ["PaneSizes"]
      477 SETTABLEKS                       R18 R17 K100 ["Sizes"]
      479 NEWTABLE                         R18 0 2
      481 MOVE                             R19 R9
      482 MOVE                             R20 R10
      483 SETLIST                          R18 R19 2 [1]
      485 CALL                             R15 3 1
      486 SETTABLEKS                       R15 R14 K95 ["Divider"]
      488 CALL                             R11 3 -1
      489 RETURN                           R11 -1

PROTO_26:
        0 DUPTABLE                         R1 K5 [{"IsDirty", "Source", "SearchTerm", "SelectedItemId", "ExpandedItems"}]
        1 GETTABLEKS                       R2 R0 K6 ["Window"]
        3 GETTABLEKS                       R2 R2 K0 ["IsDirty"]
        5 SETTABLEKS                       R2 R1 K0 ["IsDirty"]
        7 GETUPVAL                         R3 0
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETTABLEKS                       R2 R0 K6 ["Window"]
       11 GETTABLEKS                       R2 R2 K1 ["Source"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K1 ["Source"]
       17 GETTABLEKS                       R2 R0 K6 ["Window"]
       19 GETTABLEKS                       R2 R2 K2 ["SearchTerm"]
       21 SETTABLEKS                       R2 R1 K2 ["SearchTerm"]
       23 GETTABLEKS                       R2 R0 K6 ["Window"]
       25 GETTABLEKS                       R2 R2 K3 ["SelectedItemId"]
       27 SETTABLEKS                       R2 R1 K3 ["SelectedItemId"]
       29 GETTABLEKS                       R2 R0 K6 ["Window"]
       31 GETTABLEKS                       R2 R2 K4 ["ExpandedItems"]
       33 SETTABLEKS                       R2 R1 K4 ["ExpandedItems"]
       35 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETIMPORT                        R3 K5 [script]
       19 GETTABLEKS                       R3 R3 K6 ["Parent"]
       21 GETTABLEKS                       R3 R3 K6 ["Parent"]
       23 GETTABLEKS                       R3 R3 K9 ["Thunks"]
       25 GETTABLEKS                       R3 R3 K10 ["ContextMenu"]
       27 GETTABLEKS                       R3 R3 K11 ["DEPRECATED_ShowThemeFolderMenu"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K8 [require]
       32 GETTABLEKS                       R4 R1 K12 ["Packages"]
       34 GETTABLEKS                       R4 R4 K13 ["React"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K8 [require]
       39 GETTABLEKS                       R5 R1 K12 ["Packages"]
       41 GETTABLEKS                       R5 R5 K14 ["RoactRodux"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K8 [require]
       46 GETTABLEKS                       R6 R1 K12 ["Packages"]
       48 GETTABLEKS                       R6 R6 K15 ["Framework"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R6 R5 K16 ["ContextServices"]
       53 GETTABLEKS                       R7 R6 K17 ["withContext"]
       55 GETTABLEKS                       R8 R1 K18 ["Src"]
       57 GETTABLEKS                       R8 R8 K19 ["Actions"]
       59 GETIMPORT                        R9 K8 [require]
       61 GETTABLEKS                       R10 R8 K20 ["Window"]
       63 GETTABLEKS                       R10 R10 K21 ["SelectItem"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K8 [require]
       68 GETTABLEKS                       R11 R8 K20 ["Window"]
       70 GETTABLEKS                       R11 R11 K22 ["SetItemsExpanded"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K8 [require]
       75 GETTABLEKS                       R12 R8 K20 ["Window"]
       77 GETTABLEKS                       R12 R12 K23 ["SetSearch"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R12 R1 K18 ["Src"]
       82 GETTABLEKS                       R12 R12 K9 ["Thunks"]
       84 GETIMPORT                        R13 K8 [require]
       86 GETTABLEKS                       R14 R12 K10 ["ContextMenu"]
       88 GETTABLEKS                       R14 R14 K24 ["ShowFolderMenu"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K8 [require]
       93 GETTABLEKS                       R15 R12 K10 ["ContextMenu"]
       95 GETTABLEKS                       R15 R15 K25 ["ShowStyleSheetCategoryMenu"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K8 [require]
      100 GETTABLEKS                       R16 R12 K10 ["ContextMenu"]
      102 GETTABLEKS                       R16 R16 K26 ["ShowNewStyleRuleMenu"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K8 [require]
      107 GETTABLEKS                       R17 R12 K10 ["ContextMenu"]
      109 GETTABLEKS                       R17 R17 K27 ["ShowStyleRuleMenu"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K8 [require]
      114 GETTABLEKS                       R18 R12 K10 ["ContextMenu"]
      116 GETTABLEKS                       R18 R18 K28 ["ShowStyleSheetMenu"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K8 [require]
      121 GETTABLEKS                       R19 R12 K10 ["ContextMenu"]
      123 GETTABLEKS                       R19 R19 K29 ["ShowThemeCategoryMenu"]
      125 CALL                             R18 1 1
      126 GETIMPORT                        R19 K8 [require]
      128 GETTABLEKS                       R20 R12 K10 ["ContextMenu"]
      130 GETTABLEKS                       R20 R20 K30 ["ShowThemeOtherMenu"]
      132 CALL                             R19 1 1
      133 GETIMPORT                        R20 K8 [require]
      135 GETTABLEKS                       R21 R12 K10 ["ContextMenu"]
      137 GETTABLEKS                       R21 R21 K31 ["ShowTokenCategoryMenu"]
      139 CALL                             R20 1 1
      140 GETIMPORT                        R21 K8 [require]
      142 GETTABLEKS                       R22 R12 K10 ["ContextMenu"]
      144 GETTABLEKS                       R22 R22 K32 ["ShowUiElementsMenu"]
      146 CALL                             R21 1 1
      147 GETTABLEKS                       R22 R5 K33 ["UI"]
      149 GETTABLEKS                       R23 R22 K34 ["Pane"]
      151 GETTABLEKS                       R24 R22 K35 ["SearchBar"]
      153 GETTABLEKS                       R25 R22 K36 ["SplitPane"]
      155 GETTABLEKS                       R26 R22 K37 ["TreeTable"]
      157 GETIMPORT                        R27 K8 [require]
      159 GETTABLEKS                       R28 R1 K18 ["Src"]
      161 GETTABLEKS                       R28 R28 K38 ["Util"]
      163 GETTABLEKS                       R28 R28 K39 ["DesignHelpers"]
      165 CALL                             R27 1 1
      166 GETIMPORT                        R28 K8 [require]
      168 GETTABLEKS                       R29 R1 K18 ["Src"]
      170 GETTABLEKS                       R29 R29 K38 ["Util"]
      172 GETTABLEKS                       R29 R29 K40 ["StyleQueryHelpers"]
      174 CALL                             R28 1 1
      175 GETIMPORT                        R29 K8 [require]
      177 GETTABLEKS                       R30 R1 K18 ["Src"]
      179 GETTABLEKS                       R30 R30 K38 ["Util"]
      181 GETTABLEKS                       R30 R30 K41 ["TreeTableHelpers"]
      183 CALL                             R29 1 1
      184 GETIMPORT                        R30 K8 [require]
      186 GETTABLEKS                       R31 R1 K18 ["Src"]
      188 GETTABLEKS                       R31 R31 K38 ["Util"]
      190 GETTABLEKS                       R31 R31 K42 ["mapDispatchToProps"]
      192 CALL                             R30 1 1
      193 GETIMPORT                        R31 K8 [require]
      195 GETTABLEKS                       R32 R1 K18 ["Src"]
      197 GETTABLEKS                       R32 R32 K43 ["Components"]
      199 GETTABLEKS                       R32 R32 K44 ["SourceSelect"]
      201 CALL                             R31 1 1
      202 GETIMPORT                        R32 K8 [require]
      204 GETTABLEKS                       R33 R1 K18 ["Src"]
      206 GETTABLEKS                       R33 R33 K43 ["Components"]
      208 GETTABLEKS                       R33 R33 K45 ["StyleRuleView"]
      210 CALL                             R32 1 1
      211 GETIMPORT                        R33 K8 [require]
      213 GETTABLEKS                       R34 R1 K18 ["Src"]
      215 GETTABLEKS                       R34 R34 K43 ["Components"]
      217 GETTABLEKS                       R34 R34 K46 ["StyleSheetView"]
      219 CALL                             R33 1 1
      220 GETIMPORT                        R34 K8 [require]
      222 GETTABLEKS                       R35 R1 K18 ["Src"]
      224 GETTABLEKS                       R35 R35 K43 ["Components"]
      226 GETTABLEKS                       R35 R35 K47 ["ThemesView"]
      228 CALL                             R34 1 1
      229 GETIMPORT                        R35 K8 [require]
      231 GETTABLEKS                       R36 R1 K18 ["Src"]
      233 GETTABLEKS                       R36 R36 K43 ["Components"]
      235 GETTABLEKS                       R36 R36 K48 ["FolderView"]
      237 CALL                             R35 1 1
      238 GETIMPORT                        R36 K8 [require]
      240 GETTABLEKS                       R37 R1 K18 ["Src"]
      242 GETTABLEKS                       R37 R37 K38 ["Util"]
      244 GETTABLEKS                       R37 R37 K49 ["isEmptyTable"]
      246 CALL                             R36 1 1
      247 GETIMPORT                        R37 K8 [require]
      249 GETTABLEKS                       R38 R1 K18 ["Src"]
      251 GETTABLEKS                       R38 R38 K50 ["Flags"]
      253 GETTABLEKS                       R38 R38 K51 ["getFFlagStyleEditorThemesCrash"]
      255 CALL                             R37 1 1
      256 CALL                             R37 0 1
      257 GETIMPORT                        R38 K8 [require]
      259 GETTABLEKS                       R39 R1 K18 ["Src"]
      261 GETTABLEKS                       R39 R39 K50 ["Flags"]
      263 GETTABLEKS                       R39 R39 K52 ["getFFlagStyleEditorFixWarnings"]
      265 CALL                             R38 1 1
      266 CALL                             R38 0 1
      267 GETIMPORT                        R39 K8 [require]
      269 GETTABLEKS                       R40 R1 K18 ["Src"]
      271 GETTABLEKS                       R40 R40 K50 ["Flags"]
      273 GETTABLEKS                       R40 R40 K53 ["getFFlagStyleEditorFixSearch"]
      275 CALL                             R39 1 1
      276 CALL                             R39 0 1
      277 GETIMPORT                        R40 K8 [require]
      279 GETTABLEKS                       R41 R1 K18 ["Src"]
      281 GETTABLEKS                       R41 R41 K50 ["Flags"]
      283 GETTABLEKS                       R41 R41 K54 ["getFFlagStyleEditorNewRuleRenameFix"]
      285 CALL                             R40 1 1
      286 CALL                             R40 0 1
      287 GETIMPORT                        R41 K8 [require]
      289 GETTABLEKS                       R42 R1 K18 ["Src"]
      291 GETTABLEKS                       R42 R42 K50 ["Flags"]
      293 GETTABLEKS                       R42 R42 K55 ["getFFlagStyleEditorPluginStyleSheets"]
      295 CALL                             R41 1 1
      296 CALL                             R41 0 1
      297 GETIMPORT                        R42 K8 [require]
      299 GETTABLEKS                       R43 R1 K18 ["Src"]
      301 GETTABLEKS                       R43 R43 K50 ["Flags"]
      303 GETTABLEKS                       R43 R43 K56 ["getFFlagStyleQuery"]
      305 CALL                             R42 1 1
      306 CALL                             R42 0 1
      307 GETIMPORT                        R43 K8 [require]
      309 GETTABLEKS                       R44 R1 K18 ["Src"]
      311 GETTABLEKS                       R44 R44 K50 ["Flags"]
      313 GETTABLEKS                       R44 R44 K57 ["getFFlagStyleEditorFixThemeFolderView"]
      315 CALL                             R43 1 1
      316 CALL                             R43 0 1
      317 GETIMPORT                        R44 K8 [require]
      319 GETTABLEKS                       R45 R1 K18 ["Src"]
      321 GETTABLEKS                       R45 R45 K58 ["Types"]
      323 CALL                             R44 1 1
      324 GETIMPORT                        R45 K8 [require]
      326 GETTABLEKS                       R46 R1 K18 ["Src"]
      328 GETTABLEKS                       R46 R46 K59 ["Reducers"]
      330 GETTABLEKS                       R46 R46 K60 ["RootReducer"]
      332 CALL                             R45 1 1
      333 GETIMPORT                        R46 K8 [require]
      335 GETTABLEKS                       R47 R1 K12 ["Packages"]
      337 GETTABLEKS                       R47 R47 K61 ["Dash"]
      339 CALL                             R46 1 1
      340 GETTABLEKS                       R47 R46 K62 ["copy"]
      342 GETTABLEKS                       R48 R46 K63 ["collectArray"]
      344 GETTABLEKS                       R49 R46 K64 ["join"]
      346 GETTABLEKS                       R50 R46 K65 ["mapOne"]
      348 GETIMPORT                        R51 K8 [require]
      350 GETTABLEKS                       R52 R1 K18 ["Src"]
      352 GETTABLEKS                       R52 R52 K66 ["Resources"]
      354 GETTABLEKS                       R52 R52 K67 ["PluginStyles"]
      356 CALL                             R51 1 1
      357 LOADK                            R54 K68 ["BorderSize"]
      358 NAMECALL                         R52 R51 K69 ["GetAttribute"]
      360 CALL                             R52 2 1
      361 LOADK                            R55 K70 ["PaddingSm"]
      362 NAMECALL                         R53 R51 K69 ["GetAttribute"]
      364 CALL                             R53 2 1
      365 LOADK                            R56 K71 ["RowHeight"]
      366 NAMECALL                         R54 R51 K69 ["GetAttribute"]
      368 CALL                             R54 2 1
      369 LOADK                            R57 K72 ["SearchBarHeight"]
      370 NAMECALL                         R55 R51 K69 ["GetAttribute"]
      372 CALL                             R55 2 1
      373 GETIMPORT                        R56 K8 [require]
      375 GETIMPORT                        R57 K5 [script]
      377 GETTABLEKS                       R57 R57 K73 ["Tree"]
      379 CALL                             R56 1 1
      380 GETIMPORT                        R57 K8 [require]
      382 GETIMPORT                        R58 K5 [script]
      384 GETTABLEKS                       R58 R58 K74 ["onEdited"]
      386 CALL                             R57 1 1
      387 NEWTABLE                         R58 0 1
      389 DUPTABLE                         R59 K78 [{"Name", "Key", "Width"}]
      390 LOADK                            R60 K75 ["Name"]
      391 SETTABLEKS                       R60 R59 K75 ["Name"]
      393 LOADK                            R60 K75 ["Name"]
      394 SETTABLEKS                       R60 R59 K76 ["Key"]
      396 GETIMPORT                        R60 K81 [UDim.new]
      398 LOADN                            R61 1
      399 LOADN                            R62 0
      400 CALL                             R60 2 1
      401 SETTABLEKS                       R60 R59 K77 ["Width"]
      403 SETLIST                          R58 R59 1 [1]
      405 NEWTABLE                         R59 0 2
      407 GETIMPORT                        R60 K81 [UDim.new]
      409 LOADN                            R61 0
      410 LOADN                            R62 10
      411 CALL                             R60 2 1
      412 GETIMPORT                        R61 K81 [UDim.new]
      414 LOADN                            R62 0
      415 LOADN                            R63 100
      416 CALL                             R61 2 -1
      417 SETLIST                          R59 R60 -1 [1]
      419 GETTABLEKS                       R60 R56 K82 ["EditTree"]
      421 GETTABLEKS                       R61 R3 K83 ["PureComponent"]
      423 LOADK                            R63 K84 ["MainPage"]
      424 NAMECALL                         R61 R61 K85 ["extend"]
      426 CALL                             R61 2 1
      427 DUPCLOSURE                       R62 K86 [PROTO_17]
      428 CAPTURE                          VAL R40
      429 CAPTURE                          VAL R47
      430 CAPTURE                          VAL R58
      431 CAPTURE                          VAL R60
      432 CAPTURE                          VAL R16
      433 CAPTURE                          VAL R17
      434 CAPTURE                          VAL R42
      435 CAPTURE                          VAL R13
      436 CAPTURE                          VAL R2
      437 CAPTURE                          VAL R21
      438 CAPTURE                          VAL R14
      439 CAPTURE                          VAL R18
      440 CAPTURE                          VAL R20
      441 CAPTURE                          VAL R15
      442 CAPTURE                          VAL R19
      443 CAPTURE                          VAL R11
      444 CAPTURE                          VAL R9
      445 CAPTURE                          VAL R28
      446 CAPTURE                          VAL R49
      447 CAPTURE                          VAL R10
      448 CAPTURE                          VAL R50
      449 CAPTURE                          VAL R41
      450 CAPTURE                          VAL R56
      451 CAPTURE                          VAL R0
      452 SETTABLEKS                       R62 R61 K87 ["init"]
      454 NEWCLOSURE                       R62 P1
      455 CAPTURE                          VAL R48
      456 CAPTURE                          VAL R47
      457 CAPTURE                          REF R61
      458 CAPTURE                          VAL R39
      459 CAPTURE                          VAL R60
      460 SETTABLEKS                       R62 R61 K88 ["applySearch"]
      462 DUPCLOSURE                       R62 K89 [PROTO_21]
      463 CAPTURE                          VAL R40
      464 CAPTURE                          VAL R36
      465 CAPTURE                          VAL R41
      466 CAPTURE                          VAL R56
      467 CAPTURE                          VAL R0
      468 CAPTURE                          VAL R60
      469 CAPTURE                          VAL R49
      470 SETTABLEKS                       R62 R61 K90 ["getDerivedStateFromProps"]
      472 DUPCLOSURE                       R62 K91 [PROTO_22]
      473 CAPTURE                          VAL R40
      474 CAPTURE                          VAL R41
      475 CAPTURE                          VAL R46
      476 CAPTURE                          VAL R60
      477 CAPTURE                          VAL R49
      478 CAPTURE                          VAL R10
      479 SETTABLEKS                       R62 R61 K92 ["didUpdate"]
      481 NEWCLOSURE                       R62 P4
      482 CAPTURE                          VAL R60
      483 CAPTURE                          VAL R40
      484 CAPTURE                          REF R61
      485 CAPTURE                          VAL R47
      486 CAPTURE                          VAL R41
      487 CAPTURE                          VAL R55
      488 CAPTURE                          VAL R53
      489 CAPTURE                          VAL R52
      490 CAPTURE                          VAL R3
      491 CAPTURE                          VAL R23
      492 CAPTURE                          VAL R38
      493 CAPTURE                          VAL R24
      494 CAPTURE                          VAL R26
      495 CAPTURE                          VAL R49
      496 CAPTURE                          VAL R29
      497 CAPTURE                          VAL R57
      498 CAPTURE                          VAL R54
      499 CAPTURE                          VAL R31
      500 CAPTURE                          VAL R32
      501 CAPTURE                          VAL R42
      502 CAPTURE                          VAL R43
      503 CAPTURE                          VAL R27
      504 CAPTURE                          VAL R35
      505 CAPTURE                          VAL R33
      506 CAPTURE                          VAL R37
      507 CAPTURE                          VAL R48
      508 CAPTURE                          VAL R34
      509 CAPTURE                          VAL R25
      510 CAPTURE                          VAL R59
      511 SETTABLEKS                       R62 R61 K93 ["render"]
      513 MOVE                             R62 R7
      514 DUPTABLE                         R63 K96 [{"Localization", "Plugin"}]
      515 GETTABLEKS                       R64 R6 K94 ["Localization"]
      517 SETTABLEKS                       R64 R63 K94 ["Localization"]
      519 GETTABLEKS                       R64 R6 K95 ["Plugin"]
      521 SETTABLEKS                       R64 R63 K95 ["Plugin"]
      523 CALL                             R62 1 1
      524 MOVE                             R63 R61
      525 CALL                             R62 1 1
      526 MOVE                             R61 R62
      527 GETTABLEKS                       R62 R4 K97 ["connect"]
      529 DUPCLOSURE                       R63 K98 [PROTO_26]
      530 CAPTURE                          VAL R41
      531 MOVE                             R64 R30
      532 CALL                             R62 2 1
      533 MOVE                             R63 R61
      534 CALL                             R62 1 -1
      535 CLOSEUPVALS                      R61
      536 RETURN                           R62 -1
