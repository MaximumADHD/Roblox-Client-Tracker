PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onDoubleClick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Menu"] ; [+187]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R7 R8 K2 ["state"]
        9 GETTABLEKS                       R6 R7 K3 ["table"]
       11 GETTABLEKS                       R5 R6 K4 ["Items"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R3 K5 ["getChild"]
       16 CALL                             R3 3 1
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R5 R3 K6 ["Name"]
       21 GETTABLEKS                       R4 R5 K7 ["Value"]
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
       76 MOVE                             R9 R5
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
       90 GETUPVAL                         R11 0
       91 GETTABLEKS                       R10 R11 K2 ["state"]
       93 GETTABLEKS                       R9 R10 K3 ["table"]
       95 GETTABLEKS                       R8 R9 K4 ["Items"]
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
      145 GETTABLEKS                       R8 R3 K6 ["Name"]
      147 GETTABLEKS                       R7 R8 K7 ["Value"]
      149 JUMPIFNOTEQKS                    R7 K19 ["Tags"] ; [+10]
      151 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      153 GETUPVAL                         R8 11
      154 GETTABLEKS                       R9 R6 K8 ["Instance"]
      156 LOADK                            R10 K20 [".Tag"]
      157 CALL                             R8 2 -1
      158 CALL                             R7 -1 0
      159 RETURN                           R0 0
      160 GETTABLEKS                       R8 R3 K6 ["Name"]
      162 GETTABLEKS                       R7 R8 K7 ["Value"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["dispatch"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 CALL                             R3 1 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R5 R1 K1 ["table"]
        6 GETTABLEKS                       R4 R5 K2 ["Items"]
        8 MOVE                             R5 R0
        9 NAMECALL                         R2 R2 K3 ["getChild"]
       11 CALL                             R2 3 1
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K4 ["selectItem"]
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
       13 DUPTABLE                         R2 K5 [{"Schema", "Value"}]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R5 R1 K6 ["Name"]
       17 GETTABLEKS                       R4 R5 K3 ["Schema"]
       19 DUPTABLE                         R5 K8 [{"Editing"}]
       20 LOADB                            R6 1
       21 SETTABLEKS                       R6 R5 K7 ["Editing"]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R2 K3 ["Schema"]
       26 GETTABLEKS                       R4 R1 K2 ["Instance"]
       28 LOADK                            R6 K9 ["StyleRule"]
       29 NAMECALL                         R4 R4 K10 ["IsA"]
       31 CALL                             R4 2 1
       32 JUMPIFNOT                        R4 ; [+5]
       33 GETTABLEKS                       R4 R1 K2 ["Instance"]
       35 GETTABLEKS                       R3 R4 K11 ["Selector"]
       37 JUMP                             ; [+4]
       38 GETTABLEKS                       R4 R1 K2 ["Instance"]
       40 GETTABLEKS                       R3 R4 K6 ["Name"]
       42 SETTABLEKS                       R3 R2 K4 ["Value"]
       44 GETUPVAL                         R3 0
       45 MOVE                             R5 R0
       46 MOVE                             R6 R2
       47 GETUPVAL                         R7 1
       48 LOADN                            R8 1
       49 NAMECALL                         R3 R3 K12 ["updateCell"]
       51 CALL                             R3 5 1
       52 MOVE                             R0 R3
       53 GETUPVAL                         R3 3
       54 GETTABLEKS                       R4 R0 K0 ["Items"]
       56 CALL                             R3 1 1
       57 SETTABLEKS                       R3 R0 K0 ["Items"]
       59 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["adaptor"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K1 [{"table"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["table"]
        4 DUPTABLE                         R4 K3 [{"Expansion"}]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R7 R0 K0 ["table"]
        8 GETTABLEKS                       R6 R7 K2 ["Expansion"]
       10 GETUPVAL                         R7 1
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K2 ["Expansion"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K0 ["table"]
       17 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["selectItem"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["table"]
        2 GETTABLEKS                       R1 R2 K1 ["Expansion"]
        4 GETTABLEKS                       R3 R0 K0 ["table"]
        6 GETTABLEKS                       R2 R3 K2 ["Items"]
        8 GETUPVAL                         R3 0
        9 JUMPIFNOT                        R3 ; [+39]
       10 GETUPVAL                         R3 1
       11 JUMPIFNOT                        R3 ; [+12]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K3 ["buildTree"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K4 ["Source"]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R5 R6 K5 ["Localization"]
       21 CALL                             R3 2 1
       22 MOVE                             R2 R3
       23 JUMP                             ; [+13]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R3 R4 K6 ["DEPRECATED_buildTree"]
       27 NEWTABLE                         R4 0 1
       29 GETUPVAL                         R5 4
       30 SETLIST                          R4 R5 1 [1]
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R5 R6 K5 ["Localization"]
       35 CALL                             R3 2 1
       36 MOVE                             R2 R3
       37 GETUPVAL                         R3 5
       38 MOVE                             R5 R2
       39 NAMECALL                         R3 R3 K7 ["updatePaths"]
       41 CALL                             R3 2 1
       42 MOVE                             R2 R3
       43 GETUPVAL                         R3 6
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R4 R5 K8 ["IsDirty"]
       47 SETTABLEKS                       R4 R3 K9 ["lastUpdate"]
       49 GETUPVAL                         R3 7
       50 JUMPIF                           R3 ; [+2]
       51 GETUPVAL                         R3 0
       52 JUMPIFNOT                        R3 ; [+21]
       53 GETUPVAL                         R3 5
       54 MOVE                             R5 R2
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R6 R7 K10 ["SelectedItemId"]
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
       74 GETTABLEKS                       R4 R0 K0 ["table"]
       76 GETTABLEKS                       R3 R4 K2 ["Items"]
       78 JUMPIFNOTEQ                      R2 R3 ; [+7]
       80 GETTABLEKS                       R4 R0 K0 ["table"]
       82 GETTABLEKS                       R3 R4 K1 ["Expansion"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["state"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["buildTree"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["props"]
       11 GETTABLEKS                       R2 R3 K3 ["Source"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K2 ["props"]
       16 GETTABLEKS                       R3 R4 K4 ["Localization"]
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K5 ["items"]
       21 JUMP                             ; [+19]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R0 R1 K0 ["state"]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K6 ["DEPRECATED_buildTree"]
       28 NEWTABLE                         R2 0 1
       30 GETUPVAL                         R3 3
       31 SETLIST                          R2 R3 1 [1]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R4 R5 K2 ["props"]
       36 GETTABLEKS                       R3 R4 K4 ["Localization"]
       38 CALL                             R1 2 1
       39 SETTABLEKS                       R1 R0 K5 ["items"]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R0 R1 K0 ["state"]
       44 GETUPVAL                         R1 4
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R4 R5 K0 ["state"]
       48 GETTABLEKS                       R3 R4 K5 ["items"]
       50 NAMECALL                         R1 R1 K7 ["updatePaths"]
       52 CALL                             R1 2 1
       53 SETTABLEKS                       R1 R0 K5 ["items"]
       55 NEWTABLE                         R0 0 0
       57 GETUPVAL                         R5 1
       58 GETTABLEKS                       R4 R5 K0 ["state"]
       60 GETTABLEKS                       R1 R4 K5 ["items"]
       62 LOADNIL                          R2
       63 LOADNIL                          R3
       64 FORGPREP                         R1
       65 GETTABLEKS                       R6 R5 K8 ["Id"]
       67 LOADB                            R7 1
       68 SETTABLE                         R7 R0 R6
       69 FORGLOOP                         R1 2 ; [-5]
       71 GETUPVAL                         R3 1
       72 GETTABLEKS                       R2 R3 K2 ["props"]
       74 GETTABLEKS                       R1 R2 K9 ["dispatch"]
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
      130 CAPTURE                          UPVAL U17
      131 CAPTURE                          UPVAL U1
      132 SETTABLEKS                       R1 R0 K30 ["onDoubleClick"]
      134 GETTABLEKS                       R1 R0 K27 ["tableCallbacks"]
      136 NEWCLOSURE                       R2 P7
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U0
      139 CAPTURE                          UPVAL U17
      140 CAPTURE                          UPVAL U18
      141 SETTABLEKS                       R2 R1 K31 ["OnExpansionChange"]
      143 GETTABLEKS                       R1 R0 K27 ["tableCallbacks"]
      145 NEWCLOSURE                       R2 P8
      146 CAPTURE                          UPVAL U19
      147 CAPTURE                          VAL R0
      148 SETTABLEKS                       R2 R1 K32 ["OnSelectionChange"]
      150 GETUPVAL                         R1 0
      151 JUMPIFNOT                        R1 ; [+15]
      152 NEWCLOSURE                       R1 P9
      153 CAPTURE                          VAL R0
      154 CAPTURE                          UPVAL U20
      155 CAPTURE                          UPVAL U21
      156 CAPTURE                          UPVAL U22
      157 CAPTURE                          UPVAL U3
      158 CAPTURE                          UPVAL U17
      159 SETTABLEKS                       R1 R0 K33 ["updateItems"]
      161 GETTABLEKS                       R1 R0 K33 ["updateItems"]
      163 LOADB                            R2 1
      164 LOADB                            R3 1
      165 CALL                             R1 2 0
      166 RETURN                           R0 0
      167 NEWCLOSURE                       R1 P10
      168 CAPTURE                          UPVAL U20
      169 CAPTURE                          VAL R0
      170 CAPTURE                          UPVAL U21
      171 CAPTURE                          UPVAL U22
      172 CAPTURE                          UPVAL U3
      173 CAPTURE                          UPVAL U18
      174 SETTABLEKS                       R1 R0 K34 ["setInitialExpansionState"]
      176 GETTABLEKS                       R1 R0 K34 ["setInitialExpansionState"]
      178 CALL                             R1 0 0
      179 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R0 1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["Children"]
        4 LENGTH                           R1 R2
        5 LOADN                            R2 0
        6 JUMPIFLT                         R2 R1 ; [+16]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K1 ["Name"]
       11 GETTABLEKS                       R0 R1 K2 ["Value"]
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
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["applySearch"]
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
        7 GETUPVAL                         R3 3
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K0 ["updatePaths"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R3 R1 K0 ["table"]
        6 GETTABLEKS                       R2 R3 K1 ["Expansion"]
        8 GETTABLEKS                       R4 R1 K0 ["table"]
       10 GETTABLEKS                       R3 R4 K2 ["Items"]
       12 GETTABLEKS                       R5 R1 K0 ["table"]
       14 GETTABLEKS                       R4 R5 K3 ["Selection"]
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
       40 GETTABLEKS                       R8 R1 K0 ["table"]
       42 GETTABLEKS                       R7 R8 K2 ["Items"]
       44 CALL                             R6 1 1
       45 JUMPIFNOT                        R6 ; [+30]
       46 GETUPVAL                         R6 2
       47 JUMPIFNOT                        R6 ; [+10]
       48 GETUPVAL                         R7 3
       49 GETTABLEKS                       R6 R7 K8 ["buildTree"]
       51 GETTABLEKS                       R7 R0 K9 ["Source"]
       53 GETTABLEKS                       R8 R0 K10 ["Localization"]
       55 CALL                             R6 2 1
       56 MOVE                             R3 R6
       57 JUMP                             ; [+12]
       58 GETUPVAL                         R7 3
       59 GETTABLEKS                       R6 R7 K11 ["DEPRECATED_buildTree"]
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
        2 GETTABLEKS                       R6 R0 K1 ["state"]
        4 GETTABLEKS                       R5 R6 K2 ["table"]
        6 GETTABLEKS                       R4 R5 K3 ["Items"]
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
       50 GETTABLEKS                       R6 R0 K0 ["props"]
       52 GETTABLEKS                       R5 R6 K7 ["SelectedItemId"]
       54 JUMPIFNOT                        R5 ; [+40]
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R6 R7 K9 ["None"]
       58 JUMPIFEQ                         R5 R6 ; [+36]
       60 GETTABLEKS                       R6 R1 K7 ["SelectedItemId"]
       62 JUMPIFEQ                         R5 R6 ; [+32]
       64 GETUPVAL                         R6 3
       65 MOVE                             R8 R4
       66 MOVE                             R9 R5
       67 NAMECALL                         R6 R6 K10 ["findItemById"]
       69 CALL                             R6 3 1
       70 JUMPIFNOT                        R6 ; [+24]
       71 GETTABLEKS                       R8 R0 K0 ["props"]
       73 GETTABLEKS                       R7 R8 K11 ["ExpandedItems"]
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
       87 GETTABLEKS                       R10 R0 K0 ["props"]
       89 GETTABLEKS                       R9 R10 K14 ["dispatch"]
       91 GETUPVAL                         R10 5
       92 MOVE                             R11 R7
       93 CALL                             R10 1 -1
       94 CALL                             R9 -1 0
       95 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K5 [{"tableItems", "dispatch", "setState", "newValue", "path"}]
        2 GETUPVAL                         R7 1
        3 GETTABLEKS                       R6 R7 K6 ["table"]
        5 GETTABLEKS                       R5 R6 K7 ["Items"]
        7 SETTABLEKS                       R5 R4 K0 ["tableItems"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K1 ["dispatch"]
       12 SETTABLEKS                       R5 R4 K1 ["dispatch"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R5 R6 K8 ["adaptor"]
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
        4 GETTABLEKS                       R4 R2 K2 ["table"]
        6 GETTABLEKS                       R3 R4 K3 ["Items"]
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
       22 GETTABLEKS                       R6 R2 K2 ["table"]
       24 GETTABLEKS                       R5 R6 K6 ["Expansion"]
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
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R7 R8 K9 ["applySearch"]
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
       84 GETUPVAL                         R10 8
       85 GETTABLEKS                       R9 R10 K11 ["createElement"]
       87 GETUPVAL                         R10 9
       88 NEWTABLE                         R11 2 0
       90 GETUPVAL                         R13 10
       91 JUMPIFNOT                        R13 ; [+2]
       92 LOADK                            R12 K12 ["Left"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R12
       95 SETTABLEKS                       R12 R11 K13 ["key"]
       97 GETUPVAL                         R13 8
       98 GETTABLEKS                       R12 R13 K14 ["Tag"]
      100 GETUPVAL                         R14 4
      101 JUMPIFNOT                        R14 ; [+2]
      102 LOADK                            R13 K15 ["X-Column"]
      103 JUMP                             ; [+1]
      104 LOADK                            R13 K16 ["X-ColumnS"]
      105 SETTABLE                         R13 R11 R12
      106 DUPTABLE                         R12 K20 [{"SearchInput", "LeftItems", "Source"}]
      107 GETUPVAL                         R14 8
      108 GETTABLEKS                       R13 R14 K11 ["createElement"]
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
      140 GETUPVAL                         R17 8
      141 GETTABLEKS                       R16 R17 K14 ["Tag"]
      143 LOADK                            R17 K17 ["SearchInput"]
      144 SETTABLE                         R17 R15 R16
      145 CALL                             R13 2 1
      146 SETTABLEKS                       R13 R12 K17 ["SearchInput"]
      148 GETUPVAL                         R14 8
      149 GETTABLEKS                       R13 R14 K11 ["createElement"]
      151 GETUPVAL                         R14 12
      152 GETUPVAL                         R15 13
      153 NEWTABLE                         R16 32 0
      155 GETTABLEKS                       R18 R2 K2 ["table"]
      157 GETTABLEKS                       R17 R18 K33 ["Columns"]
      159 SETTABLEKS                       R17 R16 K33 ["Columns"]
      161 LOADB                            R17 1
      162 SETTABLEKS                       R17 R16 K34 ["ClampSize"]
      164 SETTABLEKS                       R5 R16 K6 ["Expansion"]
      166 LOADB                            R17 1
      167 SETTABLEKS                       R17 R16 K35 ["FullSpanEmphasis"]
      169 GETUPVAL                         R18 14
      170 GETTABLEKS                       R17 R18 K36 ["getTableRowId"]
      172 SETTABLEKS                       R17 R16 K37 ["GetItemId"]
      174 GETUPVAL                         R18 14
      175 GETTABLEKS                       R17 R18 K38 ["getRowChildren"]
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
      244 GETUPVAL                         R18 8
      245 GETTABLEKS                       R17 R18 K14 ["Tag"]
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
      261 GETUPVAL                         R14 8
      262 GETTABLEKS                       R13 R14 K11 ["createElement"]
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
      276 JUMPIFNOT                        R4 ; [+142]
      277 GETTABLEKS                       R11 R4 K72 ["Instance"]
      279 JUMPIFNOT                        R11 ; [+24]
      280 LOADK                            R14 K73 ["StyleRule"]
      281 NAMECALL                         R12 R11 K74 ["IsA"]
      283 CALL                             R12 2 1
      284 JUMPIFNOT                        R12 ; [+19]
      285 GETUPVAL                         R13 8
      286 GETTABLEKS                       R12 R13 K11 ["createElement"]
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
      303 JUMP                             ; [+115]
      304 GETUPVAL                         R12 19
      305 JUMPIFNOT                        R12 ; [+23]
      306 JUMPIFNOT                        R11 ; [+22]
      307 LOADK                            R14 K77 ["Folder"]
      308 NAMECALL                         R12 R11 K74 ["IsA"]
      310 CALL                             R12 2 1
      311 JUMPIFNOT                        R12 ; [+17]
      312 GETUPVAL                         R13 8
      313 GETTABLEKS                       R12 R13 K11 ["createElement"]
      315 GETUPVAL                         R13 20
      316 DUPTABLE                         R14 K78 [{"key", "Folder"}]
      317 GETUPVAL                         R16 10
      318 JUMPIFNOT                        R16 ; [+2]
      319 LOADK                            R15 K76 ["Right"]
      320 JUMP                             ; [+1]
      321 LOADNIL                          R15
      322 SETTABLEKS                       R15 R14 K13 ["key"]
      324 SETTABLEKS                       R11 R14 K77 ["Folder"]
      326 CALL                             R12 2 1
      327 MOVE                             R10 R12
      328 JUMP                             ; [+90]
      329 JUMPIFNOT                        R11 ; [+24]
      330 LOADK                            R14 K79 ["StyleSheet"]
      331 NAMECALL                         R12 R11 K74 ["IsA"]
      333 CALL                             R12 2 1
      334 JUMPIFNOT                        R12 ; [+19]
      335 GETUPVAL                         R13 8
      336 GETTABLEKS                       R12 R13 K11 ["createElement"]
      338 GETUPVAL                         R13 21
      339 DUPTABLE                         R14 K80 [{"key", "StyleSheet"}]
      340 GETUPVAL                         R16 10
      341 JUMPIFNOT                        R16 ; [+2]
      342 LOADK                            R15 K76 ["Right"]
      343 JUMP                             ; [+1]
      344 LOADNIL                          R15
      345 SETTABLEKS                       R15 R14 K13 ["key"]
      347 GETTABLEKS                       R15 R4 K72 ["Instance"]
      349 SETTABLEKS                       R15 R14 K79 ["StyleSheet"]
      351 CALL                             R12 2 1
      352 MOVE                             R10 R12
      353 JUMP                             ; [+65]
      354 GETTABLEKS                       R13 R4 K81 ["Name"]
      356 GETTABLEKS                       R12 R13 K82 ["Value"]
      358 JUMPIFEQKS                       R12 K83 ["Themes"] ; [+60]
      360 GETUPVAL                         R13 22
      361 GETTABLEKS                       R12 R13 K84 ["isUnderPath"]
      363 GETTABLEKS                       R13 R4 K85 ["Path"]
      365 GETUPVAL                         R16 22
      366 GETTABLEKS                       R15 R16 K86 ["PATHS"]
      368 GETTABLEKS                       R14 R15 K87 ["THEMES"]
      370 CALL                             R12 2 1
      371 JUMPIFNOT                        R12 ; [+47]
      372 GETUPVAL                         R12 23
      373 JUMPIFNOT                        R12 ; [+29]
      374 JUMPIFNOT                        R4 ; [+44]
      375 GETUPVAL                         R12 24
      376 GETTABLEKS                       R13 R4 K88 ["Children"]
      378 DUPCLOSURE                       R14 K89 [PROTO_24]
      379 CALL                             R12 2 1
      380 GETUPVAL                         R14 8
      381 GETTABLEKS                       R13 R14 K11 ["createElement"]
      383 GETUPVAL                         R14 25
      384 DUPTABLE                         R15 K92 [{"key", "ThemeSheets", "Title"}]
      385 GETUPVAL                         R17 10
      386 JUMPIFNOT                        R17 ; [+2]
      387 LOADK                            R16 K76 ["Right"]
      388 JUMP                             ; [+1]
      389 LOADNIL                          R16
      390 SETTABLEKS                       R16 R15 K13 ["key"]
      392 SETTABLEKS                       R12 R15 K90 ["ThemeSheets"]
      394 GETTABLEKS                       R17 R4 K81 ["Name"]
      396 GETTABLEKS                       R16 R17 K82 ["Value"]
      398 SETTABLEKS                       R16 R15 K91 ["Title"]
      400 CALL                             R13 2 1
      401 MOVE                             R10 R13
      402 JUMP                             ; [+16]
      403 GETUPVAL                         R13 8
      404 GETTABLEKS                       R12 R13 K11 ["createElement"]
      406 GETUPVAL                         R13 25
      407 DUPTABLE                         R14 K94 [{"key", "RootItem_DEPRECATED"}]
      408 GETUPVAL                         R16 10
      409 JUMPIFNOT                        R16 ; [+2]
      410 LOADK                            R15 K76 ["Right"]
      411 JUMP                             ; [+1]
      412 LOADNIL                          R15
      413 SETTABLEKS                       R15 R14 K13 ["key"]
      415 SETTABLEKS                       R4 R14 K93 ["RootItem_DEPRECATED"]
      417 CALL                             R12 2 1
      418 MOVE                             R10 R12
      419 GETUPVAL                         R12 8
      420 GETTABLEKS                       R11 R12 K11 ["createElement"]
      422 GETUPVAL                         R12 9
      423 NEWTABLE                         R13 0 0
      425 DUPTABLE                         R14 K96 [{"Divider"}]
      426 GETUPVAL                         R16 8
      427 GETTABLEKS                       R15 R16 K11 ["createElement"]
      429 GETUPVAL                         R16 26
      430 DUPTABLE                         R17 K101 [{"ClampSize", "UseDeficit", "MinSizes", "OnSizesChange", "Sizes"}]
      431 LOADB                            R18 1
      432 SETTABLEKS                       R18 R17 K34 ["ClampSize"]
      434 LOADB                            R18 1
      435 SETTABLEKS                       R18 R17 K97 ["UseDeficit"]
      437 GETUPVAL                         R19 1
      438 JUMPIFNOT                        R19 ; [+2]
      439 GETUPVAL                         R18 27
      440 JUMP                             ; [+14]
      441 NEWTABLE                         R18 0 2
      443 GETIMPORT                        R19 K103 [UDim.new]
      445 LOADN                            R20 0
      446 LOADN                            R21 10
      447 CALL                             R19 2 1
      448 GETIMPORT                        R20 K103 [UDim.new]
      450 LOADN                            R21 0
      451 LOADN                            R22 100
      452 CALL                             R20 2 -1
      453 SETLIST                          R18 R19 -1 [1]
      455 SETTABLEKS                       R18 R17 K98 ["MinSizes"]
      457 GETTABLEKS                       R18 R0 K104 ["onPaneSizesChanged"]
      459 SETTABLEKS                       R18 R17 K99 ["OnSizesChange"]
      461 GETTABLEKS                       R18 R2 K31 ["PaneSizes"]
      463 SETTABLEKS                       R18 R17 K100 ["Sizes"]
      465 NEWTABLE                         R18 0 2
      467 MOVE                             R19 R9
      468 MOVE                             R20 R10
      469 SETLIST                          R18 R19 2 [1]
      471 CALL                             R15 3 1
      472 SETTABLEKS                       R15 R14 K95 ["Divider"]
      474 CALL                             R11 3 -1
      475 RETURN                           R11 -1

PROTO_26:
        0 DUPTABLE                         R1 K5 [{"IsDirty", "Source", "SearchTerm", "SelectedItemId", "ExpandedItems"}]
        1 GETTABLEKS                       R3 R0 K6 ["Window"]
        3 GETTABLEKS                       R2 R3 K0 ["IsDirty"]
        5 SETTABLEKS                       R2 R1 K0 ["IsDirty"]
        7 GETUPVAL                         R3 0
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETTABLEKS                       R3 R0 K6 ["Window"]
       11 GETTABLEKS                       R2 R3 K1 ["Source"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K1 ["Source"]
       17 GETTABLEKS                       R3 R0 K6 ["Window"]
       19 GETTABLEKS                       R2 R3 K2 ["SearchTerm"]
       21 SETTABLEKS                       R2 R1 K2 ["SearchTerm"]
       23 GETTABLEKS                       R3 R0 K6 ["Window"]
       25 GETTABLEKS                       R2 R3 K3 ["SelectedItemId"]
       27 SETTABLEKS                       R2 R1 K3 ["SelectedItemId"]
       29 GETTABLEKS                       R3 R0 K6 ["Window"]
       31 GETTABLEKS                       R2 R3 K4 ["ExpandedItems"]
       33 SETTABLEKS                       R2 R1 K4 ["ExpandedItems"]
       35 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETIMPORT                        R8 K5 [script]
       19 GETTABLEKS                       R7 R8 K6 ["Parent"]
       21 GETTABLEKS                       R6 R7 K6 ["Parent"]
       23 GETTABLEKS                       R5 R6 K9 ["Thunks"]
       25 GETTABLEKS                       R4 R5 K10 ["ContextMenu"]
       27 GETTABLEKS                       R3 R4 K11 ["DEPRECATED_ShowThemeFolderMenu"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K8 [require]
       32 GETTABLEKS                       R5 R1 K12 ["Packages"]
       34 GETTABLEKS                       R4 R5 K13 ["React"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K8 [require]
       39 GETTABLEKS                       R6 R1 K12 ["Packages"]
       41 GETTABLEKS                       R5 R6 K14 ["RoactRodux"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K8 [require]
       46 GETTABLEKS                       R7 R1 K12 ["Packages"]
       48 GETTABLEKS                       R6 R7 K15 ["Framework"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R6 R5 K16 ["ContextServices"]
       53 GETTABLEKS                       R7 R6 K17 ["withContext"]
       55 GETTABLEKS                       R9 R1 K18 ["Src"]
       57 GETTABLEKS                       R8 R9 K19 ["Actions"]
       59 GETIMPORT                        R9 K8 [require]
       61 GETTABLEKS                       R11 R8 K20 ["Window"]
       63 GETTABLEKS                       R10 R11 K21 ["SelectItem"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K8 [require]
       68 GETTABLEKS                       R12 R8 K20 ["Window"]
       70 GETTABLEKS                       R11 R12 K22 ["SetItemsExpanded"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K8 [require]
       75 GETTABLEKS                       R13 R8 K20 ["Window"]
       77 GETTABLEKS                       R12 R13 K23 ["SetSearch"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R13 R1 K18 ["Src"]
       82 GETTABLEKS                       R12 R13 K9 ["Thunks"]
       84 GETIMPORT                        R13 K8 [require]
       86 GETTABLEKS                       R15 R12 K10 ["ContextMenu"]
       88 GETTABLEKS                       R14 R15 K24 ["ShowStyleSheetCategoryMenu"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K8 [require]
       93 GETTABLEKS                       R16 R12 K10 ["ContextMenu"]
       95 GETTABLEKS                       R15 R16 K25 ["ShowNewStyleRuleMenu"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K8 [require]
      100 GETTABLEKS                       R17 R12 K10 ["ContextMenu"]
      102 GETTABLEKS                       R16 R17 K26 ["ShowStyleRuleMenu"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K8 [require]
      107 GETTABLEKS                       R18 R12 K10 ["ContextMenu"]
      109 GETTABLEKS                       R17 R18 K27 ["ShowStyleSheetMenu"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K8 [require]
      114 GETTABLEKS                       R19 R12 K10 ["ContextMenu"]
      116 GETTABLEKS                       R18 R19 K28 ["ShowThemeCategoryMenu"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K8 [require]
      121 GETTABLEKS                       R20 R12 K10 ["ContextMenu"]
      123 GETTABLEKS                       R19 R20 K11 ["DEPRECATED_ShowThemeFolderMenu"]
      125 CALL                             R18 1 1
      126 GETIMPORT                        R19 K8 [require]
      128 GETTABLEKS                       R21 R12 K10 ["ContextMenu"]
      130 GETTABLEKS                       R20 R21 K29 ["ShowThemeOtherMenu"]
      132 CALL                             R19 1 1
      133 GETIMPORT                        R20 K8 [require]
      135 GETTABLEKS                       R22 R12 K10 ["ContextMenu"]
      137 GETTABLEKS                       R21 R22 K30 ["ShowTokenCategoryMenu"]
      139 CALL                             R20 1 1
      140 GETIMPORT                        R21 K8 [require]
      142 GETTABLEKS                       R23 R12 K10 ["ContextMenu"]
      144 GETTABLEKS                       R22 R23 K31 ["ShowUiElementsMenu"]
      146 CALL                             R21 1 1
      147 GETTABLEKS                       R22 R5 K32 ["UI"]
      149 GETTABLEKS                       R23 R22 K33 ["Pane"]
      151 GETTABLEKS                       R24 R22 K34 ["SearchBar"]
      153 GETTABLEKS                       R25 R22 K35 ["SplitPane"]
      155 GETTABLEKS                       R26 R22 K36 ["TreeTable"]
      157 GETIMPORT                        R27 K8 [require]
      159 GETTABLEKS                       R30 R1 K18 ["Src"]
      161 GETTABLEKS                       R29 R30 K37 ["Util"]
      163 GETTABLEKS                       R28 R29 K38 ["DesignHelpers"]
      165 CALL                             R27 1 1
      166 GETIMPORT                        R28 K8 [require]
      168 GETTABLEKS                       R31 R1 K18 ["Src"]
      170 GETTABLEKS                       R30 R31 K37 ["Util"]
      172 GETTABLEKS                       R29 R30 K39 ["TreeTableHelpers"]
      174 CALL                             R28 1 1
      175 GETIMPORT                        R29 K8 [require]
      177 GETTABLEKS                       R32 R1 K18 ["Src"]
      179 GETTABLEKS                       R31 R32 K37 ["Util"]
      181 GETTABLEKS                       R30 R31 K40 ["mapDispatchToProps"]
      183 CALL                             R29 1 1
      184 GETIMPORT                        R30 K8 [require]
      186 GETTABLEKS                       R33 R1 K18 ["Src"]
      188 GETTABLEKS                       R32 R33 K41 ["Components"]
      190 GETTABLEKS                       R31 R32 K42 ["SourceSelect"]
      192 CALL                             R30 1 1
      193 GETIMPORT                        R31 K8 [require]
      195 GETTABLEKS                       R34 R1 K18 ["Src"]
      197 GETTABLEKS                       R33 R34 K41 ["Components"]
      199 GETTABLEKS                       R32 R33 K43 ["StyleRuleView"]
      201 CALL                             R31 1 1
      202 GETIMPORT                        R32 K8 [require]
      204 GETTABLEKS                       R35 R1 K18 ["Src"]
      206 GETTABLEKS                       R34 R35 K41 ["Components"]
      208 GETTABLEKS                       R33 R34 K44 ["StyleSheetView"]
      210 CALL                             R32 1 1
      211 GETIMPORT                        R33 K8 [require]
      213 GETTABLEKS                       R36 R1 K18 ["Src"]
      215 GETTABLEKS                       R35 R36 K41 ["Components"]
      217 GETTABLEKS                       R34 R35 K45 ["ThemesView"]
      219 CALL                             R33 1 1
      220 GETIMPORT                        R34 K8 [require]
      222 GETTABLEKS                       R37 R1 K18 ["Src"]
      224 GETTABLEKS                       R36 R37 K41 ["Components"]
      226 GETTABLEKS                       R35 R36 K46 ["FolderView"]
      228 CALL                             R34 1 1
      229 GETIMPORT                        R35 K8 [require]
      231 GETTABLEKS                       R38 R1 K18 ["Src"]
      233 GETTABLEKS                       R37 R38 K37 ["Util"]
      235 GETTABLEKS                       R36 R37 K47 ["isEmptyTable"]
      237 CALL                             R35 1 1
      238 GETIMPORT                        R36 K8 [require]
      240 GETTABLEKS                       R39 R1 K18 ["Src"]
      242 GETTABLEKS                       R38 R39 K48 ["Flags"]
      244 GETTABLEKS                       R37 R38 K49 ["getFFlagStyleEditorThemesCrash"]
      246 CALL                             R36 1 1
      247 CALL                             R36 0 1
      248 GETIMPORT                        R37 K8 [require]
      250 GETTABLEKS                       R40 R1 K18 ["Src"]
      252 GETTABLEKS                       R39 R40 K48 ["Flags"]
      254 GETTABLEKS                       R38 R39 K50 ["getFFlagStyleEditorFixWarnings"]
      256 CALL                             R37 1 1
      257 CALL                             R37 0 1
      258 GETIMPORT                        R38 K8 [require]
      260 GETTABLEKS                       R41 R1 K18 ["Src"]
      262 GETTABLEKS                       R40 R41 K48 ["Flags"]
      264 GETTABLEKS                       R39 R40 K51 ["getFFlagStyleEditorNewRuleRenameFix"]
      266 CALL                             R38 1 1
      267 CALL                             R38 0 1
      268 GETIMPORT                        R39 K8 [require]
      270 GETTABLEKS                       R42 R1 K18 ["Src"]
      272 GETTABLEKS                       R41 R42 K48 ["Flags"]
      274 GETTABLEKS                       R40 R41 K52 ["getFFlagStyleEditorPluginStyleSheets"]
      276 CALL                             R39 1 1
      277 CALL                             R39 0 1
      278 GETIMPORT                        R40 K8 [require]
      280 GETTABLEKS                       R43 R1 K18 ["Src"]
      282 GETTABLEKS                       R42 R43 K48 ["Flags"]
      284 GETTABLEKS                       R41 R42 K53 ["getFFlagStyleQuery"]
      286 CALL                             R40 1 1
      287 CALL                             R40 0 1
      288 JUMPIFNOT                        R40 ; [+8]
      289 GETIMPORT                        R41 K8 [require]
      291 GETTABLEKS                       R43 R12 K10 ["ContextMenu"]
      293 GETTABLEKS                       R42 R43 K54 ["ShowFolderMenu"]
      295 CALL                             R41 1 1
      296 MOVE                             R18 R41
      297 GETIMPORT                        R41 K8 [require]
      299 GETTABLEKS                       R43 R1 K18 ["Src"]
      301 GETTABLEKS                       R42 R43 K55 ["Types"]
      303 CALL                             R41 1 1
      304 GETIMPORT                        R42 K8 [require]
      306 GETTABLEKS                       R45 R1 K18 ["Src"]
      308 GETTABLEKS                       R44 R45 K56 ["Reducers"]
      310 GETTABLEKS                       R43 R44 K57 ["RootReducer"]
      312 CALL                             R42 1 1
      313 GETIMPORT                        R43 K8 [require]
      315 GETTABLEKS                       R45 R1 K12 ["Packages"]
      317 GETTABLEKS                       R44 R45 K58 ["Dash"]
      319 CALL                             R43 1 1
      320 GETTABLEKS                       R44 R43 K59 ["copy"]
      322 GETTABLEKS                       R45 R43 K60 ["collectArray"]
      324 GETTABLEKS                       R46 R43 K61 ["join"]
      326 GETTABLEKS                       R47 R43 K62 ["mapOne"]
      328 GETIMPORT                        R48 K8 [require]
      330 GETTABLEKS                       R51 R1 K18 ["Src"]
      332 GETTABLEKS                       R50 R51 K63 ["Resources"]
      334 GETTABLEKS                       R49 R50 K64 ["PluginStyles"]
      336 CALL                             R48 1 1
      337 LOADK                            R51 K65 ["BorderSize"]
      338 NAMECALL                         R49 R48 K66 ["GetAttribute"]
      340 CALL                             R49 2 1
      341 LOADK                            R52 K67 ["PaddingSm"]
      342 NAMECALL                         R50 R48 K66 ["GetAttribute"]
      344 CALL                             R50 2 1
      345 LOADK                            R53 K68 ["RowHeight"]
      346 NAMECALL                         R51 R48 K66 ["GetAttribute"]
      348 CALL                             R51 2 1
      349 LOADK                            R54 K69 ["SearchBarHeight"]
      350 NAMECALL                         R52 R48 K66 ["GetAttribute"]
      352 CALL                             R52 2 1
      353 GETIMPORT                        R53 K8 [require]
      355 GETIMPORT                        R55 K5 [script]
      357 GETTABLEKS                       R54 R55 K70 ["Tree"]
      359 CALL                             R53 1 1
      360 GETIMPORT                        R54 K8 [require]
      362 GETIMPORT                        R56 K5 [script]
      364 GETTABLEKS                       R55 R56 K71 ["onEdited"]
      366 CALL                             R54 1 1
      367 NEWTABLE                         R55 0 1
      369 DUPTABLE                         R56 K75 [{"Name", "Key", "Width"}]
      370 LOADK                            R57 K72 ["Name"]
      371 SETTABLEKS                       R57 R56 K72 ["Name"]
      373 LOADK                            R57 K72 ["Name"]
      374 SETTABLEKS                       R57 R56 K73 ["Key"]
      376 GETIMPORT                        R57 K78 [UDim.new]
      378 LOADN                            R58 1
      379 LOADN                            R59 0
      380 CALL                             R57 2 1
      381 SETTABLEKS                       R57 R56 K74 ["Width"]
      383 SETLIST                          R55 R56 1 [1]
      385 NEWTABLE                         R56 0 2
      387 GETIMPORT                        R57 K78 [UDim.new]
      389 LOADN                            R58 0
      390 LOADN                            R59 10
      391 CALL                             R57 2 1
      392 GETIMPORT                        R58 K78 [UDim.new]
      394 LOADN                            R59 0
      395 LOADN                            R60 100
      396 CALL                             R58 2 -1
      397 SETLIST                          R56 R57 -1 [1]
      399 GETTABLEKS                       R57 R53 K79 ["EditTree"]
      401 GETTABLEKS                       R58 R3 K80 ["PureComponent"]
      403 LOADK                            R60 K81 ["MainPage"]
      404 NAMECALL                         R58 R58 K82 ["extend"]
      406 CALL                             R58 2 1
      407 NEWCLOSURE                       R59 P0
      408 CAPTURE                          VAL R38
      409 CAPTURE                          VAL R44
      410 CAPTURE                          VAL R55
      411 CAPTURE                          VAL R57
      412 CAPTURE                          VAL R15
      413 CAPTURE                          VAL R16
      414 CAPTURE                          VAL R40
      415 CAPTURE                          REF R18
      416 CAPTURE                          VAL R2
      417 CAPTURE                          VAL R21
      418 CAPTURE                          VAL R13
      419 CAPTURE                          VAL R17
      420 CAPTURE                          VAL R20
      421 CAPTURE                          VAL R14
      422 CAPTURE                          VAL R19
      423 CAPTURE                          VAL R11
      424 CAPTURE                          VAL R9
      425 CAPTURE                          VAL R46
      426 CAPTURE                          VAL R10
      427 CAPTURE                          VAL R47
      428 CAPTURE                          VAL R39
      429 CAPTURE                          VAL R53
      430 CAPTURE                          VAL R0
      431 SETTABLEKS                       R59 R58 K83 ["init"]
      433 NEWCLOSURE                       R59 P1
      434 CAPTURE                          VAL R45
      435 CAPTURE                          VAL R44
      436 CAPTURE                          REF R58
      437 CAPTURE                          VAL R57
      438 SETTABLEKS                       R59 R58 K84 ["applySearch"]
      440 DUPCLOSURE                       R59 K85 [PROTO_21]
      441 CAPTURE                          VAL R38
      442 CAPTURE                          VAL R35
      443 CAPTURE                          VAL R39
      444 CAPTURE                          VAL R53
      445 CAPTURE                          VAL R0
      446 CAPTURE                          VAL R57
      447 CAPTURE                          VAL R46
      448 SETTABLEKS                       R59 R58 K86 ["getDerivedStateFromProps"]
      450 DUPCLOSURE                       R59 K87 [PROTO_22]
      451 CAPTURE                          VAL R38
      452 CAPTURE                          VAL R39
      453 CAPTURE                          VAL R43
      454 CAPTURE                          VAL R57
      455 CAPTURE                          VAL R46
      456 CAPTURE                          VAL R10
      457 SETTABLEKS                       R59 R58 K88 ["didUpdate"]
      459 NEWCLOSURE                       R59 P4
      460 CAPTURE                          VAL R57
      461 CAPTURE                          VAL R38
      462 CAPTURE                          REF R58
      463 CAPTURE                          VAL R44
      464 CAPTURE                          VAL R39
      465 CAPTURE                          VAL R52
      466 CAPTURE                          VAL R50
      467 CAPTURE                          VAL R49
      468 CAPTURE                          VAL R3
      469 CAPTURE                          VAL R23
      470 CAPTURE                          VAL R37
      471 CAPTURE                          VAL R24
      472 CAPTURE                          VAL R26
      473 CAPTURE                          VAL R46
      474 CAPTURE                          VAL R28
      475 CAPTURE                          VAL R54
      476 CAPTURE                          VAL R51
      477 CAPTURE                          VAL R30
      478 CAPTURE                          VAL R31
      479 CAPTURE                          VAL R40
      480 CAPTURE                          VAL R34
      481 CAPTURE                          VAL R32
      482 CAPTURE                          VAL R27
      483 CAPTURE                          VAL R36
      484 CAPTURE                          VAL R45
      485 CAPTURE                          VAL R33
      486 CAPTURE                          VAL R25
      487 CAPTURE                          VAL R56
      488 SETTABLEKS                       R59 R58 K89 ["render"]
      490 MOVE                             R59 R7
      491 DUPTABLE                         R60 K92 [{"Localization", "Plugin"}]
      492 GETTABLEKS                       R61 R6 K90 ["Localization"]
      494 SETTABLEKS                       R61 R60 K90 ["Localization"]
      496 GETTABLEKS                       R61 R6 K91 ["Plugin"]
      498 SETTABLEKS                       R61 R60 K91 ["Plugin"]
      500 CALL                             R59 1 1
      501 MOVE                             R60 R58
      502 CALL                             R59 1 1
      503 MOVE                             R58 R59
      504 GETTABLEKS                       R59 R4 K93 ["connect"]
      506 DUPCLOSURE                       R60 K94 [PROTO_26]
      507 CAPTURE                          VAL R39
      508 MOVE                             R61 R29
      509 CALL                             R59 2 1
      510 MOVE                             R60 R58
      511 CALL                             R59 1 -1
      512 CLOSEUPVALS                      R18
      513 RETURN                           R59 -1
