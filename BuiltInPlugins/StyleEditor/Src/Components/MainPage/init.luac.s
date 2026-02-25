PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onDoubleClick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Menu"] ; [+178]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R7 R8 K2 ["state"]
        9 GETTABLEKS                       R6 R7 K3 ["table"]
       11 GETTABLEKS                       R5 R6 K4 ["Items"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R3 K5 ["getChild"]
       16 CALL                             R3 3 1
       17 GETUPVAL                         R4 2
       18 JUMPIFNOT                        R4 ; [+2]
       19 JUMPIF                           R3 ; [+1]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R5 R3 K6 ["Name"]
       23 GETTABLEKS                       R4 R5 K7 ["Value"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R1
       28 GETTABLEKS                       R6 R3 K8 ["Instance"]
       30 JUMPIFNOT                        R6 ; [+49]
       31 GETTABLEKS                       R6 R3 K8 ["Instance"]
       33 LOADK                            R8 K9 ["StyleRule"]
       34 NAMECALL                         R6 R6 K10 ["IsA"]
       36 CALL                             R6 2 1
       37 JUMPIFNOT                        R6 ; [+10]
       38 GETTABLEKS                       R6 R2 K11 ["dispatch"]
       40 GETUPVAL                         R7 3
       41 GETTABLEKS                       R8 R3 K8 ["Instance"]
       43 MOVE                             R9 R5
       44 LOADB                            R10 1
       45 CALL                             R7 3 -1
       46 CALL                             R6 -1 0
       47 RETURN                           R0 0
       48 GETTABLEKS                       R6 R3 K8 ["Instance"]
       50 LOADK                            R8 K12 ["StyleSheet"]
       51 NAMECALL                         R6 R6 K10 ["IsA"]
       53 CALL                             R6 2 1
       54 JUMPIFNOT                        R6 ; [+9]
       55 GETTABLEKS                       R6 R2 K11 ["dispatch"]
       57 GETUPVAL                         R7 4
       58 GETTABLEKS                       R8 R3 K8 ["Instance"]
       60 MOVE                             R9 R5
       61 CALL                             R7 2 -1
       62 CALL                             R6 -1 0
       63 RETURN                           R0 0
       64 GETTABLEKS                       R6 R3 K8 ["Instance"]
       66 LOADK                            R8 K13 ["Folder"]
       67 NAMECALL                         R6 R6 K10 ["IsA"]
       69 CALL                             R6 2 1
       70 JUMPIFNOT                        R6 ; [+111]
       71 GETTABLEKS                       R6 R2 K11 ["dispatch"]
       73 GETUPVAL                         R7 5
       74 GETTABLEKS                       R8 R3 K8 ["Instance"]
       76 MOVE                             R9 R5
       77 CALL                             R7 2 -1
       78 CALL                             R6 -1 0
       79 RETURN                           R0 0
       80 GETUPVAL                         R6 1
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R10 R11 K2 ["state"]
       84 GETTABLEKS                       R9 R10 K3 ["table"]
       86 GETTABLEKS                       R8 R9 K4 ["Items"]
       88 MOVE                             R9 R3
       89 NAMECALL                         R6 R6 K14 ["getParent"]
       91 CALL                             R6 3 1
       92 JUMPIFNOTEQKS                    R4 K15 ["UI Elements"] ; [+9]
       94 GETTABLEKS                       R7 R2 K11 ["dispatch"]
       96 GETUPVAL                         R8 6
       97 GETTABLEKS                       R9 R6 K8 ["Instance"]
       99 CALL                             R8 1 -1
      100 CALL                             R7 -1 0
      101 RETURN                           R0 0
      102 JUMPIFNOTEQKS                    R4 K16 ["StyleSheets"] ; [+7]
      104 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      106 GETUPVAL                         R8 7
      107 CALL                             R8 0 -1
      108 CALL                             R7 -1 0
      109 RETURN                           R0 0
      110 JUMPIFNOTEQKS                    R4 K17 ["Themes"] ; [+7]
      112 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      114 GETUPVAL                         R8 8
      115 CALL                             R8 0 -1
      116 CALL                             R7 -1 0
      117 RETURN                           R0 0
      118 JUMPIFNOTEQKS                    R4 K18 ["Tokens"] ; [+7]
      120 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      122 GETUPVAL                         R8 9
      123 CALL                             R8 0 -1
      124 CALL                             R7 -1 0
      125 RETURN                           R0 0
      126 GETTABLEKS                       R7 R6 K8 ["Instance"]
      128 JUMPIFNOT                        R7 ; [+48]
      129 GETTABLEKS                       R7 R6 K8 ["Instance"]
      131 LOADK                            R9 K12 ["StyleSheet"]
      132 NAMECALL                         R7 R7 K10 ["IsA"]
      134 CALL                             R7 2 1
      135 JUMPIFNOT                        R7 ; [+41]
      136 GETTABLEKS                       R8 R3 K6 ["Name"]
      138 GETTABLEKS                       R7 R8 K7 ["Value"]
      140 JUMPIFNOTEQKS                    R7 K19 ["Tags"] ; [+10]
      142 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      144 GETUPVAL                         R8 10
      145 GETTABLEKS                       R9 R6 K8 ["Instance"]
      147 LOADK                            R10 K20 [".Tag"]
      148 CALL                             R8 2 -1
      149 CALL                             R7 -1 0
      150 RETURN                           R0 0
      151 GETTABLEKS                       R8 R3 K6 ["Name"]
      153 GETTABLEKS                       R7 R8 K7 ["Value"]
      155 JUMPIFNOTEQKS                    R7 K21 ["Queries"] ; [+12]
      157 GETUPVAL                         R7 11
      158 JUMPIFNOT                        R7 ; [+9]
      159 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      161 GETUPVAL                         R8 10
      162 GETTABLEKS                       R9 R6 K8 ["Instance"]
      164 LOADK                            R10 K22 ["@Query"]
      165 CALL                             R8 2 -1
      166 CALL                             R7 -1 0
      167 RETURN                           R0 0
      168 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      170 GETUPVAL                         R8 10
      171 GETTABLEKS                       R9 R6 K8 ["Instance"]
      173 LOADK                            R10 K23 ["#Name"]
      174 CALL                             R8 2 -1
      175 CALL                             R7 -1 0
      176 RETURN                           R0 0
      177 GETTABLEKS                       R7 R2 K11 ["dispatch"]
      179 GETUPVAL                         R8 12
      180 CALL                             R8 0 -1
      181 CALL                             R7 -1 0
      182 RETURN                           R0 0

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
       12 GETUPVAL                         R3 2
       13 JUMPIFNOT                        R3 ; [+2]
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K4 ["selectItem"]
       19 GETTABLEKS                       R4 R2 K5 ["Id"]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

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
      125 CAPTURE                          UPVAL U4
      126 SETTABLEKS                       R1 R0 K29 ["onCellPressed"]
      128 NEWCLOSURE                       R1 P6
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U3
      131 CAPTURE                          UPVAL U17
      132 CAPTURE                          UPVAL U1
      133 SETTABLEKS                       R1 R0 K30 ["onDoubleClick"]
      135 GETTABLEKS                       R1 R0 K27 ["tableCallbacks"]
      137 NEWCLOSURE                       R2 P7
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U0
      140 CAPTURE                          UPVAL U17
      141 CAPTURE                          UPVAL U18
      142 SETTABLEKS                       R2 R1 K31 ["OnExpansionChange"]
      144 GETTABLEKS                       R1 R0 K27 ["tableCallbacks"]
      146 NEWCLOSURE                       R2 P8
      147 CAPTURE                          UPVAL U19
      148 CAPTURE                          VAL R0
      149 SETTABLEKS                       R2 R1 K32 ["OnSelectionChange"]
      151 GETUPVAL                         R1 0
      152 JUMPIFNOT                        R1 ; [+15]
      153 NEWCLOSURE                       R1 P9
      154 CAPTURE                          VAL R0
      155 CAPTURE                          UPVAL U20
      156 CAPTURE                          UPVAL U21
      157 CAPTURE                          UPVAL U22
      158 CAPTURE                          UPVAL U3
      159 CAPTURE                          UPVAL U17
      160 SETTABLEKS                       R1 R0 K33 ["updateItems"]
      162 GETTABLEKS                       R1 R0 K33 ["updateItems"]
      164 LOADB                            R2 1
      165 LOADB                            R3 1
      166 CALL                             R1 2 0
      167 RETURN                           R0 0
      168 NEWCLOSURE                       R1 P10
      169 CAPTURE                          UPVAL U20
      170 CAPTURE                          VAL R0
      171 CAPTURE                          UPVAL U21
      172 CAPTURE                          UPVAL U22
      173 CAPTURE                          UPVAL U3
      174 CAPTURE                          UPVAL U18
      175 SETTABLEKS                       R1 R0 K34 ["setInitialExpansionState"]
      177 GETTABLEKS                       R1 R0 K34 ["setInitialExpansionState"]
      179 CALL                             R1 0 0
      180 RETURN                           R0 0

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
      276 JUMPIFNOT                        R4 ; [+117]
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
      303 JUMP                             ; [+90]
      304 JUMPIFNOT                        R11 ; [+24]
      305 LOADK                            R14 K77 ["StyleSheet"]
      306 NAMECALL                         R12 R11 K74 ["IsA"]
      308 CALL                             R12 2 1
      309 JUMPIFNOT                        R12 ; [+19]
      310 GETUPVAL                         R13 8
      311 GETTABLEKS                       R12 R13 K11 ["createElement"]
      313 GETUPVAL                         R13 19
      314 DUPTABLE                         R14 K78 [{"key", "StyleSheet"}]
      315 GETUPVAL                         R16 10
      316 JUMPIFNOT                        R16 ; [+2]
      317 LOADK                            R15 K76 ["Right"]
      318 JUMP                             ; [+1]
      319 LOADNIL                          R15
      320 SETTABLEKS                       R15 R14 K13 ["key"]
      322 GETTABLEKS                       R15 R4 K72 ["Instance"]
      324 SETTABLEKS                       R15 R14 K77 ["StyleSheet"]
      326 CALL                             R12 2 1
      327 MOVE                             R10 R12
      328 JUMP                             ; [+65]
      329 GETTABLEKS                       R13 R4 K79 ["Name"]
      331 GETTABLEKS                       R12 R13 K80 ["Value"]
      333 JUMPIFEQKS                       R12 K81 ["Themes"] ; [+60]
      335 GETUPVAL                         R13 20
      336 GETTABLEKS                       R12 R13 K82 ["isUnderPath"]
      338 GETTABLEKS                       R13 R4 K83 ["Path"]
      340 GETUPVAL                         R16 20
      341 GETTABLEKS                       R15 R16 K84 ["PATHS"]
      343 GETTABLEKS                       R14 R15 K85 ["THEMES"]
      345 CALL                             R12 2 1
      346 JUMPIFNOT                        R12 ; [+47]
      347 GETUPVAL                         R12 21
      348 JUMPIFNOT                        R12 ; [+29]
      349 JUMPIFNOT                        R4 ; [+44]
      350 GETUPVAL                         R12 22
      351 GETTABLEKS                       R13 R4 K86 ["Children"]
      353 DUPCLOSURE                       R14 K87 [PROTO_24]
      354 CALL                             R12 2 1
      355 GETUPVAL                         R14 8
      356 GETTABLEKS                       R13 R14 K11 ["createElement"]
      358 GETUPVAL                         R14 23
      359 DUPTABLE                         R15 K90 [{"key", "ThemeSheets", "Title"}]
      360 GETUPVAL                         R17 10
      361 JUMPIFNOT                        R17 ; [+2]
      362 LOADK                            R16 K76 ["Right"]
      363 JUMP                             ; [+1]
      364 LOADNIL                          R16
      365 SETTABLEKS                       R16 R15 K13 ["key"]
      367 SETTABLEKS                       R12 R15 K88 ["ThemeSheets"]
      369 GETTABLEKS                       R17 R4 K79 ["Name"]
      371 GETTABLEKS                       R16 R17 K80 ["Value"]
      373 SETTABLEKS                       R16 R15 K89 ["Title"]
      375 CALL                             R13 2 1
      376 MOVE                             R10 R13
      377 JUMP                             ; [+16]
      378 GETUPVAL                         R13 8
      379 GETTABLEKS                       R12 R13 K11 ["createElement"]
      381 GETUPVAL                         R13 23
      382 DUPTABLE                         R14 K92 [{"key", "RootItem_DEPRECATED"}]
      383 GETUPVAL                         R16 10
      384 JUMPIFNOT                        R16 ; [+2]
      385 LOADK                            R15 K76 ["Right"]
      386 JUMP                             ; [+1]
      387 LOADNIL                          R15
      388 SETTABLEKS                       R15 R14 K13 ["key"]
      390 SETTABLEKS                       R4 R14 K91 ["RootItem_DEPRECATED"]
      392 CALL                             R12 2 1
      393 MOVE                             R10 R12
      394 GETUPVAL                         R12 8
      395 GETTABLEKS                       R11 R12 K11 ["createElement"]
      397 GETUPVAL                         R12 9
      398 NEWTABLE                         R13 0 0
      400 DUPTABLE                         R14 K94 [{"Divider"}]
      401 GETUPVAL                         R16 8
      402 GETTABLEKS                       R15 R16 K11 ["createElement"]
      404 GETUPVAL                         R16 24
      405 DUPTABLE                         R17 K99 [{"ClampSize", "UseDeficit", "MinSizes", "OnSizesChange", "Sizes"}]
      406 LOADB                            R18 1
      407 SETTABLEKS                       R18 R17 K34 ["ClampSize"]
      409 LOADB                            R18 1
      410 SETTABLEKS                       R18 R17 K95 ["UseDeficit"]
      412 GETUPVAL                         R19 1
      413 JUMPIFNOT                        R19 ; [+2]
      414 GETUPVAL                         R18 25
      415 JUMP                             ; [+14]
      416 NEWTABLE                         R18 0 2
      418 GETIMPORT                        R19 K101 [UDim.new]
      420 LOADN                            R20 0
      421 LOADN                            R21 10
      422 CALL                             R19 2 1
      423 GETIMPORT                        R20 K101 [UDim.new]
      425 LOADN                            R21 0
      426 LOADN                            R22 100
      427 CALL                             R20 2 -1
      428 SETLIST                          R18 R19 -1 [1]
      430 SETTABLEKS                       R18 R17 K96 ["MinSizes"]
      432 GETTABLEKS                       R18 R0 K102 ["onPaneSizesChanged"]
      434 SETTABLEKS                       R18 R17 K97 ["OnSizesChange"]
      436 GETTABLEKS                       R18 R2 K31 ["PaneSizes"]
      438 SETTABLEKS                       R18 R17 K98 ["Sizes"]
      440 NEWTABLE                         R18 0 2
      442 MOVE                             R19 R9
      443 MOVE                             R20 R10
      444 SETLIST                          R18 R19 2 [1]
      446 CALL                             R15 3 1
      447 SETTABLEKS                       R15 R14 K93 ["Divider"]
      449 CALL                             R11 3 -1
      450 RETURN                           R11 -1

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
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R6 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R6 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       38 GETTABLEKS                       R6 R5 K14 ["withContext"]
       40 GETTABLEKS                       R8 R1 K15 ["Src"]
       42 GETTABLEKS                       R7 R8 K16 ["Actions"]
       44 GETIMPORT                        R8 K8 [require]
       46 GETTABLEKS                       R10 R7 K17 ["Window"]
       48 GETTABLEKS                       R9 R10 K18 ["SelectItem"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K8 [require]
       53 GETTABLEKS                       R11 R7 K17 ["Window"]
       55 GETTABLEKS                       R10 R11 K19 ["SetItemsExpanded"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K8 [require]
       60 GETTABLEKS                       R12 R7 K17 ["Window"]
       62 GETTABLEKS                       R11 R12 K20 ["SetSearch"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R12 R1 K15 ["Src"]
       67 GETTABLEKS                       R11 R12 K21 ["Thunks"]
       69 GETIMPORT                        R12 K8 [require]
       71 GETTABLEKS                       R14 R11 K22 ["ContextMenu"]
       73 GETTABLEKS                       R13 R14 K23 ["ShowStyleSheetCategoryMenu"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K8 [require]
       78 GETTABLEKS                       R15 R11 K22 ["ContextMenu"]
       80 GETTABLEKS                       R14 R15 K24 ["ShowNewStyleRuleMenu"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K8 [require]
       85 GETTABLEKS                       R16 R11 K22 ["ContextMenu"]
       87 GETTABLEKS                       R15 R16 K25 ["ShowStyleRuleMenu"]
       89 CALL                             R14 1 1
       90 GETIMPORT                        R15 K8 [require]
       92 GETTABLEKS                       R17 R11 K22 ["ContextMenu"]
       94 GETTABLEKS                       R16 R17 K26 ["ShowStyleSheetMenu"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K8 [require]
       99 GETTABLEKS                       R18 R11 K22 ["ContextMenu"]
      101 GETTABLEKS                       R17 R18 K27 ["ShowThemeCategoryMenu"]
      103 CALL                             R16 1 1
      104 GETIMPORT                        R17 K8 [require]
      106 GETTABLEKS                       R19 R11 K22 ["ContextMenu"]
      108 GETTABLEKS                       R18 R19 K28 ["ShowThemeFolderMenu"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K8 [require]
      113 GETTABLEKS                       R20 R11 K22 ["ContextMenu"]
      115 GETTABLEKS                       R19 R20 K29 ["ShowThemeOtherMenu"]
      117 CALL                             R18 1 1
      118 GETIMPORT                        R19 K8 [require]
      120 GETTABLEKS                       R21 R11 K22 ["ContextMenu"]
      122 GETTABLEKS                       R20 R21 K30 ["ShowTokenCategoryMenu"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K8 [require]
      127 GETTABLEKS                       R22 R11 K22 ["ContextMenu"]
      129 GETTABLEKS                       R21 R22 K31 ["ShowUiElementsMenu"]
      131 CALL                             R20 1 1
      132 GETTABLEKS                       R21 R4 K32 ["UI"]
      134 GETTABLEKS                       R22 R21 K33 ["Pane"]
      136 GETTABLEKS                       R23 R21 K34 ["SearchBar"]
      138 GETTABLEKS                       R24 R21 K35 ["SplitPane"]
      140 GETTABLEKS                       R25 R21 K36 ["TreeTable"]
      142 GETIMPORT                        R26 K8 [require]
      144 GETTABLEKS                       R29 R1 K15 ["Src"]
      146 GETTABLEKS                       R28 R29 K37 ["Util"]
      148 GETTABLEKS                       R27 R28 K38 ["DesignHelpers"]
      150 CALL                             R26 1 1
      151 GETIMPORT                        R27 K8 [require]
      153 GETTABLEKS                       R30 R1 K15 ["Src"]
      155 GETTABLEKS                       R29 R30 K37 ["Util"]
      157 GETTABLEKS                       R28 R29 K39 ["TreeTableHelpers"]
      159 CALL                             R27 1 1
      160 GETIMPORT                        R28 K8 [require]
      162 GETTABLEKS                       R31 R1 K15 ["Src"]
      164 GETTABLEKS                       R30 R31 K37 ["Util"]
      166 GETTABLEKS                       R29 R30 K40 ["mapDispatchToProps"]
      168 CALL                             R28 1 1
      169 GETIMPORT                        R29 K8 [require]
      171 GETTABLEKS                       R32 R1 K15 ["Src"]
      173 GETTABLEKS                       R31 R32 K41 ["Components"]
      175 GETTABLEKS                       R30 R31 K42 ["SourceSelect"]
      177 CALL                             R29 1 1
      178 GETIMPORT                        R30 K8 [require]
      180 GETTABLEKS                       R33 R1 K15 ["Src"]
      182 GETTABLEKS                       R32 R33 K41 ["Components"]
      184 GETTABLEKS                       R31 R32 K43 ["StyleRuleView"]
      186 CALL                             R30 1 1
      187 GETIMPORT                        R31 K8 [require]
      189 GETTABLEKS                       R34 R1 K15 ["Src"]
      191 GETTABLEKS                       R33 R34 K41 ["Components"]
      193 GETTABLEKS                       R32 R33 K44 ["StyleSheetView"]
      195 CALL                             R31 1 1
      196 GETIMPORT                        R32 K8 [require]
      198 GETTABLEKS                       R35 R1 K15 ["Src"]
      200 GETTABLEKS                       R34 R35 K41 ["Components"]
      202 GETTABLEKS                       R33 R34 K45 ["ThemesView"]
      204 CALL                             R32 1 1
      205 GETIMPORT                        R33 K8 [require]
      207 GETTABLEKS                       R36 R1 K15 ["Src"]
      209 GETTABLEKS                       R35 R36 K37 ["Util"]
      211 GETTABLEKS                       R34 R35 K46 ["isEmptyTable"]
      213 CALL                             R33 1 1
      214 GETIMPORT                        R34 K8 [require]
      216 GETTABLEKS                       R37 R1 K15 ["Src"]
      218 GETTABLEKS                       R36 R37 K47 ["Flags"]
      220 GETTABLEKS                       R35 R36 K48 ["getFFlagStyleEditorThemesCrash"]
      222 CALL                             R34 1 1
      223 CALL                             R34 0 1
      224 GETIMPORT                        R35 K8 [require]
      226 GETTABLEKS                       R38 R1 K15 ["Src"]
      228 GETTABLEKS                       R37 R38 K47 ["Flags"]
      230 GETTABLEKS                       R36 R37 K49 ["getFFlagStyleEditorFixWarnings"]
      232 CALL                             R35 1 1
      233 CALL                             R35 0 1
      234 GETIMPORT                        R36 K8 [require]
      236 GETTABLEKS                       R39 R1 K15 ["Src"]
      238 GETTABLEKS                       R38 R39 K47 ["Flags"]
      240 GETTABLEKS                       R37 R38 K50 ["getFFlagStyleEditorNewRuleRenameFix"]
      242 CALL                             R36 1 1
      243 CALL                             R36 0 1
      244 GETIMPORT                        R37 K1 [game]
      246 LOADK                            R39 K51 ["StyleEditorMainPageNilItem"]
      247 LOADB                            R40 0
      248 NAMECALL                         R37 R37 K52 ["DefineFastFlag"]
      250 CALL                             R37 3 1
      251 GETIMPORT                        R38 K8 [require]
      253 GETTABLEKS                       R41 R1 K15 ["Src"]
      255 GETTABLEKS                       R40 R41 K47 ["Flags"]
      257 GETTABLEKS                       R39 R40 K53 ["getFFlagStyleEditorPluginStyleSheets"]
      259 CALL                             R38 1 1
      260 CALL                             R38 0 1
      261 GETIMPORT                        R39 K8 [require]
      263 GETTABLEKS                       R41 R1 K15 ["Src"]
      265 GETTABLEKS                       R40 R41 K54 ["Types"]
      267 CALL                             R39 1 1
      268 GETIMPORT                        R40 K8 [require]
      270 GETTABLEKS                       R43 R1 K15 ["Src"]
      272 GETTABLEKS                       R42 R43 K55 ["Reducers"]
      274 GETTABLEKS                       R41 R42 K56 ["RootReducer"]
      276 CALL                             R40 1 1
      277 GETIMPORT                        R41 K8 [require]
      279 GETTABLEKS                       R43 R1 K9 ["Packages"]
      281 GETTABLEKS                       R42 R43 K57 ["Dash"]
      283 CALL                             R41 1 1
      284 GETTABLEKS                       R42 R41 K58 ["copy"]
      286 GETTABLEKS                       R43 R41 K59 ["collectArray"]
      288 GETTABLEKS                       R44 R41 K60 ["join"]
      290 GETTABLEKS                       R45 R41 K61 ["mapOne"]
      292 GETIMPORT                        R46 K8 [require]
      294 GETTABLEKS                       R49 R1 K15 ["Src"]
      296 GETTABLEKS                       R48 R49 K62 ["Resources"]
      298 GETTABLEKS                       R47 R48 K63 ["PluginStyles"]
      300 CALL                             R46 1 1
      301 LOADK                            R49 K64 ["BorderSize"]
      302 NAMECALL                         R47 R46 K65 ["GetAttribute"]
      304 CALL                             R47 2 1
      305 LOADK                            R50 K66 ["PaddingSm"]
      306 NAMECALL                         R48 R46 K65 ["GetAttribute"]
      308 CALL                             R48 2 1
      309 LOADK                            R51 K67 ["RowHeight"]
      310 NAMECALL                         R49 R46 K65 ["GetAttribute"]
      312 CALL                             R49 2 1
      313 LOADK                            R52 K68 ["SearchBarHeight"]
      314 NAMECALL                         R50 R46 K65 ["GetAttribute"]
      316 CALL                             R50 2 1
      317 GETIMPORT                        R51 K8 [require]
      319 GETIMPORT                        R53 K5 [script]
      321 GETTABLEKS                       R52 R53 K69 ["Tree"]
      323 CALL                             R51 1 1
      324 GETIMPORT                        R52 K8 [require]
      326 GETIMPORT                        R54 K5 [script]
      328 GETTABLEKS                       R53 R54 K70 ["onEdited"]
      330 CALL                             R52 1 1
      331 GETIMPORT                        R53 K8 [require]
      333 GETTABLEKS                       R56 R1 K15 ["Src"]
      335 GETTABLEKS                       R55 R56 K47 ["Flags"]
      337 GETTABLEKS                       R54 R55 K71 ["getFFlagStyleEditorQueries"]
      339 CALL                             R53 1 1
      340 CALL                             R53 0 1
      341 NEWTABLE                         R54 0 1
      343 DUPTABLE                         R55 K75 [{"Name", "Key", "Width"}]
      344 LOADK                            R56 K72 ["Name"]
      345 SETTABLEKS                       R56 R55 K72 ["Name"]
      347 LOADK                            R56 K72 ["Name"]
      348 SETTABLEKS                       R56 R55 K73 ["Key"]
      350 GETIMPORT                        R56 K78 [UDim.new]
      352 LOADN                            R57 1
      353 LOADN                            R58 0
      354 CALL                             R56 2 1
      355 SETTABLEKS                       R56 R55 K74 ["Width"]
      357 SETLIST                          R54 R55 1 [1]
      359 NEWTABLE                         R55 0 2
      361 GETIMPORT                        R56 K78 [UDim.new]
      363 LOADN                            R57 0
      364 LOADN                            R58 10
      365 CALL                             R56 2 1
      366 GETIMPORT                        R57 K78 [UDim.new]
      368 LOADN                            R58 0
      369 LOADN                            R59 100
      370 CALL                             R57 2 -1
      371 SETLIST                          R55 R56 -1 [1]
      373 GETTABLEKS                       R56 R51 K79 ["EditTree"]
      375 GETTABLEKS                       R57 R2 K80 ["PureComponent"]
      377 LOADK                            R59 K81 ["MainPage"]
      378 NAMECALL                         R57 R57 K82 ["extend"]
      380 CALL                             R57 2 1
      381 DUPCLOSURE                       R58 K83 [PROTO_17]
      382 CAPTURE                          VAL R36
      383 CAPTURE                          VAL R42
      384 CAPTURE                          VAL R54
      385 CAPTURE                          VAL R56
      386 CAPTURE                          VAL R37
      387 CAPTURE                          VAL R14
      388 CAPTURE                          VAL R15
      389 CAPTURE                          VAL R17
      390 CAPTURE                          VAL R20
      391 CAPTURE                          VAL R12
      392 CAPTURE                          VAL R16
      393 CAPTURE                          VAL R19
      394 CAPTURE                          VAL R13
      395 CAPTURE                          VAL R53
      396 CAPTURE                          VAL R18
      397 CAPTURE                          VAL R10
      398 CAPTURE                          VAL R8
      399 CAPTURE                          VAL R44
      400 CAPTURE                          VAL R9
      401 CAPTURE                          VAL R45
      402 CAPTURE                          VAL R38
      403 CAPTURE                          VAL R51
      404 CAPTURE                          VAL R0
      405 SETTABLEKS                       R58 R57 K84 ["init"]
      407 NEWCLOSURE                       R58 P1
      408 CAPTURE                          VAL R43
      409 CAPTURE                          VAL R42
      410 CAPTURE                          REF R57
      411 CAPTURE                          VAL R56
      412 SETTABLEKS                       R58 R57 K85 ["applySearch"]
      414 DUPCLOSURE                       R58 K86 [PROTO_21]
      415 CAPTURE                          VAL R36
      416 CAPTURE                          VAL R33
      417 CAPTURE                          VAL R38
      418 CAPTURE                          VAL R51
      419 CAPTURE                          VAL R0
      420 CAPTURE                          VAL R56
      421 CAPTURE                          VAL R44
      422 SETTABLEKS                       R58 R57 K87 ["getDerivedStateFromProps"]
      424 DUPCLOSURE                       R58 K88 [PROTO_22]
      425 CAPTURE                          VAL R36
      426 CAPTURE                          VAL R38
      427 CAPTURE                          VAL R41
      428 CAPTURE                          VAL R56
      429 CAPTURE                          VAL R44
      430 CAPTURE                          VAL R9
      431 SETTABLEKS                       R58 R57 K89 ["didUpdate"]
      433 NEWCLOSURE                       R58 P4
      434 CAPTURE                          VAL R56
      435 CAPTURE                          VAL R36
      436 CAPTURE                          REF R57
      437 CAPTURE                          VAL R42
      438 CAPTURE                          VAL R38
      439 CAPTURE                          VAL R50
      440 CAPTURE                          VAL R48
      441 CAPTURE                          VAL R47
      442 CAPTURE                          VAL R2
      443 CAPTURE                          VAL R22
      444 CAPTURE                          VAL R35
      445 CAPTURE                          VAL R23
      446 CAPTURE                          VAL R25
      447 CAPTURE                          VAL R44
      448 CAPTURE                          VAL R27
      449 CAPTURE                          VAL R52
      450 CAPTURE                          VAL R49
      451 CAPTURE                          VAL R29
      452 CAPTURE                          VAL R30
      453 CAPTURE                          VAL R31
      454 CAPTURE                          VAL R26
      455 CAPTURE                          VAL R34
      456 CAPTURE                          VAL R43
      457 CAPTURE                          VAL R32
      458 CAPTURE                          VAL R24
      459 CAPTURE                          VAL R55
      460 SETTABLEKS                       R58 R57 K90 ["render"]
      462 MOVE                             R58 R6
      463 DUPTABLE                         R59 K93 [{"Localization", "Plugin"}]
      464 GETTABLEKS                       R60 R5 K91 ["Localization"]
      466 SETTABLEKS                       R60 R59 K91 ["Localization"]
      468 GETTABLEKS                       R60 R5 K92 ["Plugin"]
      470 SETTABLEKS                       R60 R59 K92 ["Plugin"]
      472 CALL                             R58 1 1
      473 MOVE                             R59 R57
      474 CALL                             R58 1 1
      475 MOVE                             R57 R58
      476 GETTABLEKS                       R58 R3 K94 ["connect"]
      478 DUPCLOSURE                       R59 K95 [PROTO_26]
      479 CAPTURE                          VAL R38
      480 MOVE                             R60 R28
      481 CALL                             R58 2 1
      482 MOVE                             R59 R57
      483 CALL                             R58 1 -1
      484 CLOSEUPVALS                      R57
      485 RETURN                           R58 -1
