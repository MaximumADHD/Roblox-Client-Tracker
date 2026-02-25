PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["new"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 CALL                             R5 3 1
        7 SETTABLEKS                       R4 R5 K1 ["roact"]
        9 SETTABLEKS                       R3 R5 K2 ["tree"]
       11 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["showChildren"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 0
        3 NAMECALL                         R1 R1 K0 ["showFields"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["pickInstance"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 GETTABLEKS                       R2 R0 K1 ["debugInterface"]
        5 GETTABLEKS                       R3 R0 K2 ["tree"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CALL                             R1 3 1
       10 SETTABLEKS                       R1 R0 K3 ["treeWatcher"]
       12 GETTABLEKS                       R1 R0 K3 ["treeWatcher"]
       14 NAMECALL                         R1 R1 K4 ["monitor"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K0 ["new"]
       20 NEWCLOSURE                       R2 P1
       21 CAPTURE                          VAL R0
       22 CALL                             R1 1 1
       23 SETTABLEKS                       R1 R0 K5 ["fieldWatcher"]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K0 ["new"]
       28 GETTABLEKS                       R2 R0 K1 ["debugInterface"]
       30 NEWCLOSURE                       R3 P2
       31 CAPTURE                          VAL R0
       32 CALL                             R1 2 1
       33 SETTABLEKS                       R1 R0 K6 ["picker"]
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R1 R2 K0 ["new"]
       38 GETTABLEKS                       R2 R0 K1 ["debugInterface"]
       40 GETTABLEKS                       R3 R0 K3 ["treeWatcher"]
       42 GETTABLEKS                       R4 R0 K2 ["tree"]
       44 GETTABLEKS                       R5 R0 K7 ["roact"]
       46 CALL                             R1 4 1
       47 SETTABLEKS                       R1 R0 K8 ["profiler"]
       49 NAMECALL                         R1 R0 K9 ["connectEvents"]
       51 CALL                             R1 1 0
       52 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["path"]
        3 NAMECALL                         R1 R1 K1 ["showChildren"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["path"]
        3 NAMECALL                         R1 R1 K1 ["showBranch"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["path"]
        3 SETTABLEKS                       R2 R1 K1 ["currentPath"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K2 ["nodeIndex"]
        8 SETTABLEKS                       R2 R1 K3 ["currentNodeIndex"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R3 R0 K4 ["fieldPath"]
       13 JUMPIF                           R3 ; [+2]
       14 NEWTABLE                         R3 0 0
       16 NAMECALL                         R1 R1 K5 ["showFields"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["treeWatcher"]
        3 GETTABLEKS                       R3 R0 K1 ["path"]
        5 NAMECALL                         R1 R1 K2 ["getNode"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["treeWatcher"]
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K3 ["getHostNode"]
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+12]
       18 GETTABLEKS                       R3 R2 K4 ["hostObject"]
       20 JUMPIFNOT                        R3 ; [+9]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K5 ["picker"]
       24 GETTABLEKS                       R5 R2 K4 ["hostObject"]
       26 NAMECALL                         R3 R3 K6 ["highlight"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K5 ["picker"]
       33 NAMECALL                         R3 R3 K7 ["dehighlight"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["picker"]
        3 NAMECALL                         R0 R0 K1 ["dehighlight"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["picker"]
        3 GETTABLEKS                       R3 R0 K1 ["isPicking"]
        5 NAMECALL                         R1 R1 K2 ["setActive"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["path"]
        3 NAMECALL                         R1 R1 K1 ["openPath"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["profiler"]
        3 GETTABLEKS                       R3 R0 K1 ["isProfiling"]
        5 NAMECALL                         R1 R1 K2 ["setActive"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["profiler"]
        3 GETTABLEKS                       R3 R0 K1 ["componentSliceStart"]
        5 GETTABLEKS                       R4 R0 K2 ["componentSliceEnd"]
        7 GETTABLEKS                       R5 R0 K3 ["eventSliceStart"]
        9 GETTABLEKS                       R6 R0 K4 ["eventSliceEnd"]
       11 NAMECALL                         R1 R1 K5 ["getData"]
       13 CALL                             R1 5 1
       14 GETUPVAL                         R2 0
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K6 ["showProfileData"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["profiler"]
        3 NAMECALL                         R0 R0 K1 ["clearData"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["profiler"]
        3 GETTABLEKS                       R3 R0 K1 ["tableName"]
        5 GETTABLEKS                       R4 R0 K2 ["index"]
        7 GETTABLEKS                       R5 R0 K3 ["order"]
        9 NAMECALL                         R1 R1 K4 ["sortData"]
       11 CALL                             R1 4 0
       12 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["profiler"]
        3 GETTABLEKS                       R3 R0 K1 ["instanceId"]
        5 NAMECALL                         R1 R1 K2 ["selectInstance"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["profiler"]
        3 GETTABLEKS                       R3 R0 K1 ["filter"]
        5 NAMECALL                         R1 R1 K2 ["setFilter"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["profiler"]
        3 GETTABLEKS                       R3 R0 K1 ["searchTerm"]
        5 NAMECALL                         R1 R1 K2 ["setSearchTerm"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["connectEvents"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
        9 GETTABLEKS                       R4 R5 K5 ["GetChildren"]
       11 SETTABLEKS                       R4 R3 K1 ["eventName"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R4 R3 K2 ["onEvent"]
       17 NAMECALL                         R1 R0 K6 ["connect"]
       19 CALL                             R1 2 0
       20 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
       24 GETTABLEKS                       R4 R5 K7 ["GetBranch"]
       26 SETTABLEKS                       R4 R3 K1 ["eventName"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R4 R3 K2 ["onEvent"]
       32 NAMECALL                         R1 R0 K6 ["connect"]
       34 CALL                             R1 2 0
       35 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
       39 GETTABLEKS                       R4 R5 K8 ["GetFields"]
       41 SETTABLEKS                       R4 R3 K1 ["eventName"]
       43 NEWCLOSURE                       R4 P2
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R4 R3 K2 ["onEvent"]
       47 NAMECALL                         R1 R0 K6 ["connect"]
       49 CALL                             R1 2 0
       50 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
       54 GETTABLEKS                       R4 R5 K9 ["Highlight"]
       56 SETTABLEKS                       R4 R3 K1 ["eventName"]
       58 NEWCLOSURE                       R4 P3
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R4 R3 K2 ["onEvent"]
       62 NAMECALL                         R1 R0 K6 ["connect"]
       64 CALL                             R1 2 0
       65 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
       69 GETTABLEKS                       R4 R5 K10 ["Dehighlight"]
       71 SETTABLEKS                       R4 R3 K1 ["eventName"]
       73 NEWCLOSURE                       R4 P4
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R4 R3 K2 ["onEvent"]
       77 NAMECALL                         R1 R0 K6 ["connect"]
       79 CALL                             R1 2 0
       80 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
       81 GETUPVAL                         R6 1
       82 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
       84 GETTABLEKS                       R4 R5 K11 ["SetPicking"]
       86 SETTABLEKS                       R4 R3 K1 ["eventName"]
       88 NEWCLOSURE                       R4 P5
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R4 R3 K2 ["onEvent"]
       92 NAMECALL                         R1 R0 K6 ["connect"]
       94 CALL                             R1 2 0
       95 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
       99 GETTABLEKS                       R4 R5 K12 ["OpenPath"]
      101 SETTABLEKS                       R4 R3 K1 ["eventName"]
      103 NEWCLOSURE                       R4 P6
      104 CAPTURE                          VAL R0
      105 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      107 NAMECALL                         R1 R0 K6 ["connect"]
      109 CALL                             R1 2 0
      110 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      111 GETUPVAL                         R6 1
      112 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
      114 GETTABLEKS                       R4 R5 K13 ["SetProfiling"]
      116 SETTABLEKS                       R4 R3 K1 ["eventName"]
      118 NEWCLOSURE                       R4 P7
      119 CAPTURE                          VAL R0
      120 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      122 NAMECALL                         R1 R0 K6 ["connect"]
      124 CALL                             R1 2 0
      125 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      126 GETUPVAL                         R6 1
      127 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
      129 GETTABLEKS                       R4 R5 K14 ["GetProfileData"]
      131 SETTABLEKS                       R4 R3 K1 ["eventName"]
      133 NEWCLOSURE                       R4 P8
      134 CAPTURE                          VAL R0
      135 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      137 NAMECALL                         R1 R0 K6 ["connect"]
      139 CALL                             R1 2 0
      140 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      141 GETUPVAL                         R6 1
      142 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
      144 GETTABLEKS                       R4 R5 K15 ["ClearProfileData"]
      146 SETTABLEKS                       R4 R3 K1 ["eventName"]
      148 NEWCLOSURE                       R4 P9
      149 CAPTURE                          VAL R0
      150 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      152 NAMECALL                         R1 R0 K6 ["connect"]
      154 CALL                             R1 2 0
      155 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      156 GETUPVAL                         R6 1
      157 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
      159 GETTABLEKS                       R4 R5 K16 ["SortProfileData"]
      161 SETTABLEKS                       R4 R3 K1 ["eventName"]
      163 NEWCLOSURE                       R4 P10
      164 CAPTURE                          VAL R0
      165 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      167 NAMECALL                         R1 R0 K6 ["connect"]
      169 CALL                             R1 2 0
      170 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      171 GETUPVAL                         R6 1
      172 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
      174 GETTABLEKS                       R4 R5 K17 ["SelectProfileInstance"]
      176 SETTABLEKS                       R4 R3 K1 ["eventName"]
      178 NEWCLOSURE                       R4 P11
      179 CAPTURE                          VAL R0
      180 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      182 NAMECALL                         R1 R0 K6 ["connect"]
      184 CALL                             R1 2 0
      185 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      186 GETUPVAL                         R6 1
      187 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
      189 GETTABLEKS                       R4 R5 K18 ["SetProfileFilter"]
      191 SETTABLEKS                       R4 R3 K1 ["eventName"]
      193 NEWCLOSURE                       R4 P12
      194 CAPTURE                          VAL R0
      195 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      197 NAMECALL                         R1 R0 K6 ["connect"]
      199 CALL                             R1 2 0
      200 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      201 GETUPVAL                         R6 1
      202 GETTABLEKS                       R5 R6 K4 ["RoactInspector"]
      204 GETTABLEKS                       R4 R5 K19 ["SetProfileSearchTerm"]
      206 SETTABLEKS                       R4 R3 K1 ["eventName"]
      208 NEWCLOSURE                       R4 P13
      209 CAPTURE                          VAL R0
      210 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      212 NAMECALL                         R1 R0 K6 ["connect"]
      214 CALL                             R1 2 0
      215 RETURN                           R0 0

PROTO_20:
        0 LOADK                            R2 K0 [""]
        1 LOADK                            R3 K0 [""]
        2 GETTABLEKS                       R5 R1 K1 ["currentElement"]
        4 GETTABLEKS                       R4 R5 K2 ["source"]
        6 JUMPIFNOT                        R4 ; [+20]
        7 GETTABLEKS                       R5 R1 K1 ["currentElement"]
        9 GETTABLEKS                       R4 R5 K2 ["source"]
       11 LOADK                            R6 K3 ["\n"]
       12 NAMECALL                         R4 R4 K4 ["find"]
       14 CALL                             R4 2 1
       15 JUMPIFNOT                        R4 ; [+11]
       16 LOADN                            R7 1
       17 SUBK                             R8 R4 K5 [1]
       18 NAMECALL                         R5 R2 K6 ["sub"]
       20 CALL                             R5 3 1
       21 MOVE                             R2 R5
       22 LOADK                            R7 K7 ["[A-Za-z0-9_]+%.[A-Za-z0-9_]+:[0-9]+"]
       23 NAMECALL                         R5 R2 K8 ["match"]
       25 CALL                             R5 2 1
       26 ORK                              R3 R5 K0 [""]
       27 DUPTABLE                         R4 K13 [{"Name", "Source", "Link", "Icon"}]
       28 GETTABLEKS                       R5 R0 K14 ["treeWatcher"]
       30 MOVE                             R7 R1
       31 NAMECALL                         R5 R5 K15 ["getNodeName"]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K9 ["Name"]
       36 SETTABLEKS                       R2 R4 K10 ["Source"]
       38 SETTABLEKS                       R3 R4 K11 ["Link"]
       40 GETTABLEKS                       R5 R0 K14 ["treeWatcher"]
       42 MOVE                             R7 R1
       43 NAMECALL                         R5 R5 K16 ["getNodeIcon"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K12 ["Icon"]
       48 RETURN                           R4 1

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["picker"]
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["setActive"]
        5 CALL                             R2 2 0
        6 GETTABLEKS                       R2 R0 K2 ["treeWatcher"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K3 ["getPath"]
       11 CALL                             R2 2 1
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R0 K4 ["openPath"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 0
        8 NAMECALL                         R1 R1 K0 ["showChildren"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_23:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CALL                             R3 2 0
        9 DUPTABLE                         R5 K2 [{"eventName", "path"}]
       10 GETUPVAL                         R8 2
       11 GETTABLEKS                       R7 R8 K3 ["RoactInspector"]
       13 GETTABLEKS                       R6 R7 K4 ["PickInstance"]
       15 SETTABLEKS                       R6 R5 K0 ["eventName"]
       17 SETTABLEKS                       R1 R5 K1 ["path"]
       19 NAMECALL                         R3 R0 K5 ["send"]
       21 CALL                             R3 2 0
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R0 K6 ["showBranch"]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["treeWatcher"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["getNode"]
        5 CALL                             R3 2 1
        6 JUMPIF                           R3 ; [+9]
        7 GETIMPORT                        R4 K3 [warn]
        9 LOADK                            R6 K4 ["[DeveloperInspector - Roact] Missing path "]
       10 GETUPVAL                         R7 0
       11 MOVE                             R8 R1
       12 CALL                             R7 1 1
       13 CONCAT                           R5 R6 R7
       14 CALL                             R4 1 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R4 R0 K0 ["treeWatcher"]
       18 MOVE                             R6 R1
       19 NAMECALL                         R4 R4 K5 ["watchPath"]
       21 CALL                             R4 2 0
       22 GETTABLEKS                       R4 R0 K0 ["treeWatcher"]
       24 MOVE                             R6 R1
       25 MOVE                             R7 R3
       26 LOADN                            R8 2
       27 NAMECALL                         R4 R4 K6 ["getChildren"]
       29 CALL                             R4 4 1
       30 DUPTABLE                         R7 K11 [{"eventName", "path", "children", "updatedIndexes"}]
       31 GETUPVAL                         R10 1
       32 GETTABLEKS                       R9 R10 K12 ["RoactInspector"]
       34 GETTABLEKS                       R8 R9 K13 ["ShowChildren"]
       36 SETTABLEKS                       R8 R7 K7 ["eventName"]
       38 SETTABLEKS                       R1 R7 K8 ["path"]
       40 SETTABLEKS                       R4 R7 K9 ["children"]
       42 SETTABLEKS                       R2 R7 K10 ["updatedIndexes"]
       44 NAMECALL                         R5 R0 K14 ["send"]
       46 CALL                             R5 2 0
       47 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getNodeInfo"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["treeWatcher"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["getNodes"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 JUMPIFNOT                        R3 ; [+13]
       12 GETTABLEKS                       R4 R3 K2 ["hostObject"]
       14 JUMPIFNOT                        R4 ; [+10]
       15 GETUPVAL                         R4 1
       16 NEWTABLE                         R6 0 1
       18 GETTABLEKS                       R7 R3 K2 ["hostObject"]
       20 SETLIST                          R6 R7 1 [1]
       22 NAMECALL                         R4 R4 K3 ["Set"]
       24 CALL                             R4 2 0
       25 GETUPVAL                         R4 2
       26 MOVE                             R5 R2
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R0
       29 CALL                             R4 2 1
       30 DUPTABLE                         R7 K7 [{"eventName", "path", "branch"}]
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R9 R10 K8 ["RoactInspector"]
       34 GETTABLEKS                       R8 R9 K9 ["ShowBranch"]
       36 SETTABLEKS                       R8 R7 K4 ["eventName"]
       38 SETTABLEKS                       R1 R7 K5 ["path"]
       40 SETTABLEKS                       R4 R7 K6 ["branch"]
       42 NAMECALL                         R5 R0 K10 ["send"]
       44 CALL                             R5 2 0
       45 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_28:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 2
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R3 1
        9 LOADNIL                          R4
       10 RETURN                           R4 1

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["treeWatcher"]
        2 GETTABLEKS                       R4 R0 K1 ["currentPath"]
        4 NAMECALL                         R2 R2 K2 ["getNodes"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R0 K3 ["currentNodeIndex"]
       11 GETTABLE                         R3 R2 R4
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R4 R3 K4 ["instance"]
       16 JUMPIF                           R4 ; [+2]
       17 GETTABLEKS                       R4 R3 K5 ["currentElement"]
       19 GETTABLEKS                       R5 R0 K6 ["fieldWatcher"]
       21 NAMECALL                         R5 R5 K7 ["clear"]
       23 CALL                             R5 1 0
       24 GETTABLEKS                       R5 R0 K6 ["fieldWatcher"]
       26 MOVE                             R7 R4
       27 NAMECALL                         R5 R5 K8 ["setRoot"]
       29 CALL                             R5 2 0
       30 GETTABLEKS                       R5 R0 K6 ["fieldWatcher"]
       32 MOVE                             R7 R1
       33 NAMECALL                         R5 R5 K9 ["addPath"]
       35 CALL                             R5 2 0
       36 GETUPVAL                         R5 0
       37 MOVE                             R6 R1
       38 DUPCLOSURE                       R7 K10 [PROTO_28]
       39 CAPTURE                          UPVAL U1
       40 MOVE                             R8 R4
       41 CALL                             R5 3 1
       42 JUMPIFNOTEQKNIL                  R5 ; [+2]
       44 RETURN                           R0 0
       45 DUPTABLE                         R8 K16 [{"eventName", "path", "nodeIndex", "fieldPath", "fields"}]
       46 GETUPVAL                         R11 2
       47 GETTABLEKS                       R10 R11 K17 ["RoactInspector"]
       49 GETTABLEKS                       R9 R10 K18 ["ShowFields"]
       51 SETTABLEKS                       R9 R8 K11 ["eventName"]
       53 GETTABLEKS                       R9 R0 K1 ["currentPath"]
       55 SETTABLEKS                       R9 R8 K12 ["path"]
       57 GETTABLEKS                       R9 R0 K3 ["currentNodeIndex"]
       59 SETTABLEKS                       R9 R8 K13 ["nodeIndex"]
       61 SETTABLEKS                       R1 R8 K14 ["fieldPath"]
       63 GETTABLEKS                       R9 R0 K6 ["fieldWatcher"]
       65 MOVE                             R11 R5
       66 LOADN                            R12 2
       67 MOVE                             R13 R1
       68 NAMECALL                         R9 R9 K19 ["collect"]
       70 CALL                             R9 4 1
       71 SETTABLEKS                       R9 R8 K15 ["fields"]
       73 NAMECALL                         R6 R0 K20 ["send"]
       75 CALL                             R6 2 0
       76 RETURN                           R0 0

PROTO_30:
        0 DUPTABLE                         R4 K2 [{"eventName", "data"}]
        1 GETUPVAL                         R7 0
        2 GETTABLEKS                       R6 R7 K3 ["RoactInspector"]
        4 GETTABLEKS                       R5 R6 K4 ["ShowProfileData"]
        6 SETTABLEKS                       R5 R4 K0 ["eventName"]
        8 SETTABLEKS                       R1 R4 K1 ["data"]
       10 NAMECALL                         R2 R0 K5 ["send"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["destroy"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["profiler"]
        7 NAMECALL                         R1 R1 K0 ["destroy"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K2 ["picker"]
       12 NAMECALL                         R1 R1 K0 ["destroy"]
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K3 ["treeWatcher"]
       17 NAMECALL                         R1 R1 K0 ["destroy"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K4 ["fieldWatcher"]
       22 NAMECALL                         R1 R1 K0 ["destroy"]
       24 CALL                             R1 1 0
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K3 ["treeWatcher"]
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["RoactInspector"]
       15 GETTABLEKS                       R4 R5 K6 ["Utils"]
       17 GETTABLEKS                       R3 R4 K7 ["getChildAtKey"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K8 ["EventName"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R7 R0 K5 ["RoactInspector"]
       29 GETTABLEKS                       R6 R7 K9 ["Classes"]
       31 GETTABLEKS                       R5 R6 K10 ["FieldWatcher"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R8 R0 K5 ["RoactInspector"]
       38 GETTABLEKS                       R7 R8 K9 ["Classes"]
       40 GETTABLEKS                       R6 R7 K11 ["InstancePicker"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R9 R0 K5 ["RoactInspector"]
       47 GETTABLEKS                       R8 R9 K9 ["Classes"]
       49 GETTABLEKS                       R7 R8 K12 ["RoactProfiler"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K4 [require]
       54 GETTABLEKS                       R9 R0 K9 ["Classes"]
       56 GETTABLEKS                       R8 R9 K13 ["TargetWorker"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K4 [require]
       61 GETTABLEKS                       R11 R0 K5 ["RoactInspector"]
       63 GETTABLEKS                       R10 R11 K9 ["Classes"]
       65 GETTABLEKS                       R9 R10 K14 ["RoactTreeWatcher"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K16 [game]
       70 LOADK                            R11 K17 ["Selection"]
       71 NAMECALL                         R9 R9 K18 ["GetService"]
       73 CALL                             R9 2 1
       74 GETIMPORT                        R10 K4 [require]
       76 GETTABLEKS                       R11 R1 K19 ["Dash"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R10 K20 ["map"]
       81 GETTABLEKS                       R12 R10 K21 ["forEach"]
       83 GETTABLEKS                       R13 R10 K22 ["last"]
       85 GETTABLEKS                       R14 R10 K23 ["pretty"]
       87 GETTABLEKS                       R15 R10 K24 ["reduce"]
       89 GETIMPORT                        R16 K4 [require]
       91 GETTABLEKS                       R17 R0 K25 ["Types"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K28 [table.insert]
       96 LOADK                            R20 K29 ["RoactInspectorWorker"]
       97 DUPCLOSURE                       R21 K30 [PROTO_0]
       98 CAPTURE                          VAL R7
       99 NAMECALL                         R18 R7 K31 ["extend"]
      101 CALL                             R18 3 1
      102 DUPCLOSURE                       R19 K32 [PROTO_4]
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R6
      107 SETTABLEKS                       R19 R18 K33 ["_init"]
      109 DUPCLOSURE                       R19 K34 [PROTO_19]
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R3
      112 SETTABLEKS                       R19 R18 K35 ["connectEvents"]
      114 DUPCLOSURE                       R19 K36 [PROTO_20]
      115 SETTABLEKS                       R19 R18 K37 ["getNodeInfo"]
      117 DUPCLOSURE                       R19 K38 [PROTO_21]
      118 SETTABLEKS                       R19 R18 K39 ["pickInstance"]
      120 DUPCLOSURE                       R19 K40 [PROTO_23]
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R3
      124 SETTABLEKS                       R19 R18 K41 ["openPath"]
      126 DUPCLOSURE                       R19 K42 [PROTO_24]
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R3
      129 SETTABLEKS                       R19 R18 K43 ["showChildren"]
      131 DUPCLOSURE                       R19 K44 [PROTO_26]
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R3
      136 SETTABLEKS                       R19 R18 K45 ["showBranch"]
      138 DUPCLOSURE                       R19 K46 [PROTO_29]
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R3
      142 SETTABLEKS                       R19 R18 K47 ["showFields"]
      144 DUPCLOSURE                       R19 K48 [PROTO_30]
      145 CAPTURE                          VAL R3
      146 SETTABLEKS                       R19 R18 K49 ["showProfileData"]
      148 DUPCLOSURE                       R19 K50 [PROTO_31]
      149 CAPTURE                          VAL R7
      150 SETTABLEKS                       R19 R18 K51 ["destroy"]
      152 RETURN                           R18 1
