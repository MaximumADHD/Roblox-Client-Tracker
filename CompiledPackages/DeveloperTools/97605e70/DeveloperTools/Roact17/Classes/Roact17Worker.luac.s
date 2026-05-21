PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["new"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 CALL                             R5 3 1
        7 SETTABLEKS                       R3 R5 K1 ["devtools"]
        9 SETTABLEKS                       R4 R5 K2 ["root"]
       11 NEWTABLE                         R6 0 0
       13 SETTABLEKS                       R6 R5 K3 ["pendingFields"]
       15 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["pickInstance"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["root"]
        4 NAMECALL                         R0 R0 K1 ["getHostInstance"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["fieldWatcher"]
        4 GETTABLEKS                       R3 R3 K1 ["root"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["reduceAndSendFields"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fieldWatcher"]
        3 GETTABLEKS                       R0 R0 K1 ["polling"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["currentPath"]
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R2 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["currentPath"]
       17 CALL                             R2 1 -1
       18 NAMECALL                         R0 R0 K3 ["getNodes"]
       20 CALL                             R0 -1 1
       21 JUMPIF                           R0 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K4 ["currentNodeIndex"]
       26 GETTABLE                         R1 R0 R2
       27 JUMPIF                           R1 ; [+1]
       28 RETURN                           R0 0
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K5 ["devtools"]
       32 GETTABLEKS                       R2 R2 K6 ["agent"]
       34 DUPTABLE                         R4 K10 [{"id", "rendererID", "path"}]
       35 GETTABLEKS                       R5 R1 K7 ["id"]
       37 SETTABLEKS                       R5 R4 K7 ["id"]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K5 ["devtools"]
       42 GETTABLEKS                       R5 R5 K11 ["store"]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K12 ["root"]
       47 NAMECALL                         R5 R5 K13 ["getRendererIDForElement"]
       49 CALL                             R5 2 1
       50 SETTABLEKS                       R5 R4 K8 ["rendererID"]
       52 NEWTABLE                         R5 0 0
       54 SETTABLEKS                       R5 R4 K9 ["path"]
       56 NAMECALL                         R2 R2 K14 ["inspectElement"]
       58 CALL                             R2 2 0
       59 GETIMPORT                        R2 K16 [delay]
       61 LOADK                            R3 K17 [0.5]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K0 ["fieldWatcher"]
       65 GETTABLEKS                       R4 R4 K18 ["onPoll"]
       67 CALL                             R2 2 0
       68 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETTABLEKS                       R2 R0 K1 ["debugInterface"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["picker"]
       10 GETTABLEKS                       R1 R0 K2 ["picker"]
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K3 ["getRoot"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K0 ["new"]
       19 NEWCLOSURE                       R2 P2
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R0
       22 LOADK                            R3 K4 ["data"]
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K5 ["fieldWatcher"]
       26 GETTABLEKS                       R1 R0 K5 ["fieldWatcher"]
       28 NEWCLOSURE                       R2 P3
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U3
       31 SETTABLEKS                       R2 R1 K6 ["onPoll"]
       33 GETUPVAL                         R1 4
       34 GETTABLEKS                       R1 R1 K0 ["new"]
       36 MOVE                             R2 R0
       37 CALL                             R1 1 1
       38 SETTABLEKS                       R1 R0 K7 ["profiler"]
       40 NAMECALL                         R1 R0 K8 ["connectEvents"]
       42 CALL                             R1 1 0
       43 NAMECALL                         R1 R0 K9 ["connectDevtools"]
       45 CALL                             R1 1 0
       46 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["path"]
        3 NAMECALL                         R1 R1 K1 ["showChildren"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["path"]
        3 NAMECALL                         R1 R1 K1 ["showBranch"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fieldWatcher"]
        3 NAMECALL                         R1 R1 K1 ["clear"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R2 R0 K2 ["path"]
        9 SETTABLEKS                       R2 R1 K3 ["currentPath"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R2 R0 K4 ["nodeIndex"]
       14 SETTABLEKS                       R2 R1 K5 ["currentNodeIndex"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R3 R0 K6 ["fieldPath"]
       19 JUMPIF                           R3 ; [+2]
       20 NEWTABLE                         R3 0 0
       22 NAMECALL                         R1 R1 K7 ["showFields"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["path"]
        2 LENGTH                           R1 R2
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R4 R0 K0 ["path"]
       10 CALL                             R3 1 1
       11 LOADK                            R5 K2 ["."]
       12 NAMECALL                         R3 R3 K3 ["split"]
       14 CALL                             R3 2 -1
       15 CALL                             R2 -1 -1
       16 FASTCALL                         TONUMBER ; [+2]
       17 GETIMPORT                        R1 K5 [tonumber]
       19 CALL                             R1 -1 1
       20 GETUPVAL                         R2 1
       21 MOVE                             R4 R1
       22 NAMECALL                         R2 R2 K6 ["getHostNode"]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 1
       26 MOVE                             R5 R1
       27 NAMECALL                         R3 R3 K7 ["getHostInstance"]
       29 CALL                             R3 2 1
       30 JUMPIFNOT                        R2 ; [+9]
       31 JUMPIFNOT                        R3 ; [+8]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K8 ["picker"]
       35 MOVE                             R6 R3
       36 NAMECALL                         R4 R4 K9 ["highlight"]
       38 CALL                             R4 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K8 ["picker"]
       43 NAMECALL                         R4 R4 K10 ["dehighlight"]
       45 CALL                             R4 1 0
       46 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["picker"]
        3 NAMECALL                         R0 R0 K1 ["dehighlight"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["picker"]
        3 GETTABLEKS                       R3 R0 K1 ["isPicking"]
        5 NAMECALL                         R1 R1 K2 ["setActive"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["path"]
        3 NAMECALL                         R1 R1 K1 ["openPath"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["profiler"]
        3 GETTABLEKS                       R3 R0 K1 ["isProfiling"]
        5 NAMECALL                         R1 R1 K2 ["setActive"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["showProfileData"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["profiler"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R1 R1 K1 ["getData"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["profiler"]
        3 NAMECALL                         R0 R0 K1 ["clearData"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["profiler"]
        3 GETTABLEKS                       R3 R0 K1 ["tableName"]
        5 GETTABLEKS                       R4 R0 K2 ["index"]
        7 GETTABLEKS                       R5 R0 K3 ["order"]
        9 NAMECALL                         R1 R1 K4 ["sortData"]
       11 CALL                             R1 4 0
       12 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["profiler"]
        3 GETTABLEKS                       R3 R0 K1 ["instanceId"]
        5 NAMECALL                         R1 R1 K2 ["selectInstance"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["profiler"]
        3 GETTABLEKS                       R3 R0 K1 ["filter"]
        5 NAMECALL                         R1 R1 K2 ["setFilter"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["profiler"]
        3 GETTABLEKS                       R3 R0 K1 ["searchTerm"]
        5 NAMECALL                         R1 R1 K2 ["setSearchTerm"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["connectEvents"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
        9 GETTABLEKS                       R4 R4 K5 ["GetChildren"]
       11 SETTABLEKS                       R4 R3 K1 ["eventName"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R4 R3 K2 ["onEvent"]
       17 NAMECALL                         R1 R0 K6 ["connect"]
       19 CALL                             R1 2 0
       20 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
       24 GETTABLEKS                       R4 R4 K7 ["GetBranch"]
       26 SETTABLEKS                       R4 R3 K1 ["eventName"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R4 R3 K2 ["onEvent"]
       32 NAMECALL                         R1 R0 K6 ["connect"]
       34 CALL                             R1 2 0
       35 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
       39 GETTABLEKS                       R4 R4 K8 ["GetFields"]
       41 SETTABLEKS                       R4 R3 K1 ["eventName"]
       43 NEWCLOSURE                       R4 P2
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R4 R3 K2 ["onEvent"]
       47 NAMECALL                         R1 R0 K6 ["connect"]
       49 CALL                             R1 2 0
       50 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
       54 GETTABLEKS                       R4 R4 K9 ["Highlight"]
       56 SETTABLEKS                       R4 R3 K1 ["eventName"]
       58 NEWCLOSURE                       R4 P3
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R4 R3 K2 ["onEvent"]
       63 NAMECALL                         R1 R0 K6 ["connect"]
       65 CALL                             R1 2 0
       66 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
       67 GETUPVAL                         R4 1
       68 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
       70 GETTABLEKS                       R4 R4 K10 ["Dehighlight"]
       72 SETTABLEKS                       R4 R3 K1 ["eventName"]
       74 NEWCLOSURE                       R4 P4
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R4 R3 K2 ["onEvent"]
       78 NAMECALL                         R1 R0 K6 ["connect"]
       80 CALL                             R1 2 0
       81 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
       82 GETUPVAL                         R4 1
       83 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
       85 GETTABLEKS                       R4 R4 K11 ["SetPicking"]
       87 SETTABLEKS                       R4 R3 K1 ["eventName"]
       89 NEWCLOSURE                       R4 P5
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R4 R3 K2 ["onEvent"]
       93 NAMECALL                         R1 R0 K6 ["connect"]
       95 CALL                             R1 2 0
       96 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
       97 GETUPVAL                         R4 1
       98 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
      100 GETTABLEKS                       R4 R4 K12 ["OpenPath"]
      102 SETTABLEKS                       R4 R3 K1 ["eventName"]
      104 NEWCLOSURE                       R4 P6
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      108 NAMECALL                         R1 R0 K6 ["connect"]
      110 CALL                             R1 2 0
      111 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      112 GETUPVAL                         R4 1
      113 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
      115 GETTABLEKS                       R4 R4 K13 ["SetProfiling"]
      117 SETTABLEKS                       R4 R3 K1 ["eventName"]
      119 NEWCLOSURE                       R4 P7
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      123 NAMECALL                         R1 R0 K6 ["connect"]
      125 CALL                             R1 2 0
      126 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      127 GETUPVAL                         R4 1
      128 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
      130 GETTABLEKS                       R4 R4 K14 ["GetProfileData"]
      132 SETTABLEKS                       R4 R3 K1 ["eventName"]
      134 NEWCLOSURE                       R4 P8
      135 CAPTURE                          VAL R0
      136 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      138 NAMECALL                         R1 R0 K6 ["connect"]
      140 CALL                             R1 2 0
      141 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      142 GETUPVAL                         R4 1
      143 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
      145 GETTABLEKS                       R4 R4 K15 ["ClearProfileData"]
      147 SETTABLEKS                       R4 R3 K1 ["eventName"]
      149 NEWCLOSURE                       R4 P9
      150 CAPTURE                          VAL R0
      151 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      153 NAMECALL                         R1 R0 K6 ["connect"]
      155 CALL                             R1 2 0
      156 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      157 GETUPVAL                         R4 1
      158 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
      160 GETTABLEKS                       R4 R4 K16 ["SortProfileData"]
      162 SETTABLEKS                       R4 R3 K1 ["eventName"]
      164 NEWCLOSURE                       R4 P10
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      168 NAMECALL                         R1 R0 K6 ["connect"]
      170 CALL                             R1 2 0
      171 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      172 GETUPVAL                         R4 1
      173 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
      175 GETTABLEKS                       R4 R4 K17 ["SelectProfileInstance"]
      177 SETTABLEKS                       R4 R3 K1 ["eventName"]
      179 NEWCLOSURE                       R4 P11
      180 CAPTURE                          VAL R0
      181 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      183 NAMECALL                         R1 R0 K6 ["connect"]
      185 CALL                             R1 2 0
      186 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      187 GETUPVAL                         R4 1
      188 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
      190 GETTABLEKS                       R4 R4 K18 ["SetProfileFilter"]
      192 SETTABLEKS                       R4 R3 K1 ["eventName"]
      194 NEWCLOSURE                       R4 P12
      195 CAPTURE                          VAL R0
      196 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      198 NAMECALL                         R1 R0 K6 ["connect"]
      200 CALL                             R1 2 0
      201 DUPTABLE                         R3 K3 [{"eventName", "onEvent"}]
      202 GETUPVAL                         R4 1
      203 GETTABLEKS                       R4 R4 K4 ["RoactInspector"]
      205 GETTABLEKS                       R4 R4 K19 ["SetProfileSearchTerm"]
      207 SETTABLEKS                       R4 R3 K1 ["eventName"]
      209 NEWCLOSURE                       R4 P13
      210 CAPTURE                          VAL R0
      211 SETTABLEKS                       R4 R3 K2 ["onEvent"]
      213 NAMECALL                         R1 R0 K6 ["connect"]
      215 CALL                             R1 2 0
      216 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["ElementType"]
        5 GETTABLEKS                       R3 R3 K2 ["Root"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+15]
        9 DUPTABLE                         R2 K7 [{"Name", "Source", "Link", "Icon"}]
       10 LOADK                            R3 K2 ["Root"]
       11 SETTABLEKS                       R3 R2 K3 ["Name"]
       13 LOADK                            R3 K8 [""]
       14 SETTABLEKS                       R3 R2 K4 ["Source"]
       16 LOADK                            R3 K8 [""]
       17 SETTABLEKS                       R3 R2 K5 ["Link"]
       19 LOADK                            R3 K9 ["Branch"]
       20 SETTABLEKS                       R3 R2 K6 ["Icon"]
       22 RETURN                           R2 1
       23 LOADK                            R2 K9 ["Branch"]
       24 GETTABLEKS                       R3 R1 K0 ["type"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K1 ["ElementType"]
       29 GETTABLEKS                       R4 R4 K10 ["HostComponent"]
       31 JUMPIFNOTEQ                      R3 R4 ; [+9]
       33 GETTABLEKS                       R5 R1 K11 ["id"]
       35 NAMECALL                         R3 R0 K12 ["getHostInstance"]
       37 CALL                             R3 2 1
       38 JUMPIFNOT                        R3 ; [+2]
       39 GETTABLEKS                       R2 R3 K13 ["ClassName"]
       41 GETTABLEKS                       R3 R1 K14 ["displayName"]
       43 GETTABLEKS                       R5 R1 K15 ["key"]
       45 LENGTH                           R4 R5
       46 LOADN                            R5 0
       47 JUMPIFNOTLT                      R5 R4 ; [+13]
       49 GETTABLEKS                       R4 R1 K14 ["displayName"]
       51 GETTABLEKS                       R5 R1 K15 ["key"]
       53 JUMPIFEQ                         R4 R5 ; [+7]
       55 GETTABLEKS                       R4 R1 K15 ["key"]
       57 LOADK                            R5 K16 [": "]
       58 GETTABLEKS                       R6 R1 K14 ["displayName"]
       60 CONCAT                           R3 R4 R6
       61 DUPTABLE                         R4 K7 [{"Name", "Source", "Link", "Icon"}]
       62 SETTABLEKS                       R3 R4 K3 ["Name"]
       64 LOADK                            R5 K8 [""]
       65 SETTABLEKS                       R5 R4 K4 ["Source"]
       67 LOADK                            R5 K8 [""]
       68 SETTABLEKS                       R5 R4 K5 ["Link"]
       70 SETTABLEKS                       R2 R4 K6 ["Icon"]
       72 RETURN                           R4 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fieldWatcher"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["addPath"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["value"]
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["reduceAndSendFields"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 [","]
        3 CALL                             R1 2 1
        4 LOADB                            R2 1
        5 GETUPVAL                         R3 1
        6 JUMPIFEQ                         R1 R3 ; [+7]
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 GETUPVAL                         R5 1
       11 LOADK                            R6 K0 [","]
       12 CONCAT                           R4 R5 R6
       13 CALL                             R2 2 1
       14 RETURN                           R2 1

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 JUMPIFEQKS                       R2 K1 ["full-data"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 JUMPIFNOT                        R1 ; [+28]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["fieldWatcher"]
       10 GETTABLEKS                       R4 R0 K3 ["value"]
       12 NAMECALL                         R2 R2 K4 ["setRoot"]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K2 ["fieldWatcher"]
       18 NAMECALL                         R2 R2 K5 ["checkFields"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K6 ["pendingFields"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R0
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 0
       30 NEWTABLE                         R3 0 0
       32 SETTABLEKS                       R3 R2 K6 ["pendingFields"]
       34 RETURN                           R0 0
       35 GETTABLEKS                       R2 R0 K3 ["value"]
       37 JUMPIFEQKNIL                     R2 ; [+91]
       39 GETTABLEKS                       R3 R0 K7 ["path"]
       41 LENGTH                           R2 R3
       42 LOADN                            R3 0
       43 JUMPIFNOTLT                      R3 R2 ; [+85]
       45 GETTABLEKS                       R3 R0 K7 ["path"]
       47 LENGTH                           R2 R3
       48 LOADN                            R3 0
       49 JUMPIFNOTLT                      R3 R2 ; [+10]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K2 ["fieldWatcher"]
       54 GETTABLEKS                       R4 R0 K7 ["path"]
       56 NAMECALL                         R2 R2 K8 ["addPath"]
       58 CALL                             R2 2 0
       59 JUMP                             ; [+11]
       60 GETUPVAL                         R2 0
       61 GETTABLEKS                       R2 R2 K2 ["fieldWatcher"]
       63 GETTABLEKS                       R4 R0 K3 ["value"]
       65 GETTABLEKS                       R4 R4 K9 ["data"]
       67 NAMECALL                         R2 R2 K4 ["setRoot"]
       69 CALL                             R2 2 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R2 2
       72 GETTABLEKS                       R3 R0 K7 ["path"]
       74 LOADK                            R4 K10 [","]
       75 CALL                             R2 2 1
       76 GETUPVAL                         R3 0
       77 GETUPVAL                         R4 3
       78 GETUPVAL                         R5 0
       79 GETTABLEKS                       R5 R5 K6 ["pendingFields"]
       81 NEWCLOSURE                       R6 P1
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          VAL R2
       84 CAPTURE                          UPVAL U4
       85 CALL                             R4 2 1
       86 SETTABLEKS                       R4 R3 K6 ["pendingFields"]
       88 GETUPVAL                         R3 0
       89 DUPTABLE                         R5 K15 [{"eventName", "path", "nodeIndex", "fieldPath", "fields"}]
       90 GETUPVAL                         R6 5
       91 GETTABLEKS                       R6 R6 K16 ["RoactInspector"]
       93 GETTABLEKS                       R6 R6 K17 ["ShowFields"]
       95 SETTABLEKS                       R6 R5 K11 ["eventName"]
       97 GETUPVAL                         R6 0
       98 GETTABLEKS                       R6 R6 K18 ["currentPath"]
      100 SETTABLEKS                       R6 R5 K7 ["path"]
      102 GETUPVAL                         R6 0
      103 GETTABLEKS                       R6 R6 K19 ["currentNodeIndex"]
      105 SETTABLEKS                       R6 R5 K12 ["nodeIndex"]
      107 GETTABLEKS                       R6 R0 K7 ["path"]
      109 SETTABLEKS                       R6 R5 K13 ["fieldPath"]
      111 GETUPVAL                         R6 0
      112 GETTABLEKS                       R6 R6 K2 ["fieldWatcher"]
      114 GETTABLEKS                       R8 R0 K3 ["value"]
      116 GETTABLEKS                       R8 R8 K9 ["data"]
      118 LOADN                            R9 2
      119 GETTABLEKS                       R10 R0 K7 ["path"]
      121 NAMECALL                         R6 R6 K20 ["collect"]
      123 CALL                             R6 4 1
      124 SETTABLEKS                       R6 R5 K14 ["fields"]
      126 NAMECALL                         R3 R3 K21 ["send"]
      128 CALL                             R3 2 0
      129 RETURN                           R0 0

PROTO_27:
        0 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"eventName"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K2 ["CloseTarget"]
        5 SETTABLEKS                       R4 R3 K0 ["eventName"]
        7 NAMECALL                         R1 R1 K3 ["send"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["debugInterface"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K5 ["targetId"]
       16 NAMECALL                         R1 R1 K6 ["removeWorker"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 0
       20 NAMECALL                         R1 R1 K7 ["destroy"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["devtools"]
        2 GETTABLEKS                       R1 R1 K1 ["bridge"]
        4 LOADK                            R3 K2 ["inspectedElement"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 NAMECALL                         R1 R1 K3 ["addListener"]
       14 CALL                             R1 3 0
       15 GETTABLEKS                       R1 R0 K0 ["devtools"]
       17 GETTABLEKS                       R1 R1 K1 ["bridge"]
       19 LOADK                            R3 K4 ["operations"]
       20 DUPCLOSURE                       R4 K5 [PROTO_27]
       21 NAMECALL                         R1 R1 K3 ["addListener"]
       23 CALL                             R1 3 0
       24 GETTABLEKS                       R1 R0 K0 ["devtools"]
       26 GETTABLEKS                       R1 R1 K1 ["bridge"]
       28 LOADK                            R3 K6 ["shutdown"]
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U4
       32 NAMECALL                         R1 R1 K3 ["addListener"]
       34 CALL                             R1 3 0
       35 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_31:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R3 1 2
        7 JUMPIFNOT                        R3 ; [+8]
        8 JUMPIFEQKNIL                     R4 ; [+7]
       10 JUMPIFNOTEQKN                    R2 K2 [1] ; [+4]
       12 GETTABLEKS                       R5 R4 K3 ["data"]
       14 RETURN                           R5 1
       15 RETURN                           R4 1
       16 LOADNIL                          R5
       17 RETURN                           R5 1

PROTO_32:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 DUPCLOSURE                       R5 K0 [PROTO_31]
        3 CAPTURE                          UPVAL U1
        4 MOVE                             R6 R1
        5 CALL                             R3 3 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R0 K1 ["fieldWatcher"]
       11 MOVE                             R6 R3
       12 LOADN                            R7 2
       13 MOVE                             R8 R2
       14 NAMECALL                         R4 R4 K2 ["collect"]
       16 CALL                             R4 4 1
       17 DUPTABLE                         R7 K8 [{"eventName", "path", "nodeIndex", "fieldPath", "fields"}]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K9 ["RoactInspector"]
       21 GETTABLEKS                       R8 R8 K10 ["ShowFields"]
       23 SETTABLEKS                       R8 R7 K3 ["eventName"]
       25 GETTABLEKS                       R8 R0 K11 ["currentPath"]
       27 SETTABLEKS                       R8 R7 K4 ["path"]
       29 GETTABLEKS                       R8 R0 K12 ["currentNodeIndex"]
       31 SETTABLEKS                       R8 R7 K5 ["nodeIndex"]
       33 SETTABLEKS                       R2 R7 K6 ["fieldPath"]
       35 SETTABLEKS                       R4 R7 K7 ["fields"]
       37 NAMECALL                         R5 R0 K13 ["send"]
       39 CALL                             R5 2 0
       40 RETURN                           R0 0

PROTO_33:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getPath"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R0 K1 ["picker"]
        6 LOADB                            R5 0
        7 NAMECALL                         R3 R3 K2 ["setActive"]
        9 CALL                             R3 2 0
       10 MOVE                             R5 R2
       11 NAMECALL                         R3 R0 K3 ["openPath"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R4 R0 K0 ["root"]
        2 NAMECALL                         R2 R0 K1 ["getHostInstance"]
        4 CALL                             R2 2 1
        5 NEWTABLE                         R3 0 0
        7 JUMPIFEQ                         R2 R1 ; [+28]
        9 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       11 MOVE                             R5 R3
       12 MOVE                             R6 R1
       13 GETUPVAL                         R4 0
       14 CALL                             R4 2 0
       15 MOVE                             R4 R1
       16 JUMPIFNOT                        R4 ; [+14]
       17 GETTABLEKS                       R5 R4 K2 ["Parent"]
       19 JUMPIFEQ                         R5 R2 ; [+11]
       21 GETTABLEKS                       R7 R4 K2 ["Parent"]
       23 FASTCALL2                        TABLE_INSERT R3 R7 ; [+3]
       25 MOVE                             R6 R3
       26 GETUPVAL                         R5 0
       27 CALL                             R5 2 0
       28 GETTABLEKS                       R4 R4 K2 ["Parent"]
       30 JUMPBACK                         ; [-15]
       31 GETTABLEKS                       R5 R4 K2 ["Parent"]
       33 JUMPIFEQ                         R5 R2 ; [+2]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R6 R0 K0 ["root"]
       38 NAMECALL                         R4 R0 K3 ["getHostNode"]
       40 CALL                             R4 2 2
       41 GETTABLEKS                       R6 R4 K4 ["id"]
       43 NEWTABLE                         R7 0 1
       45 MOVE                             R8 R5
       46 SETLIST                          R7 R8 1 [1]
       48 LENGTH                           R10 R3
       49 LOADN                            R8 1
       50 LOADN                            R9 255
       51 FORNPREP                         R8
       52 GETTABLEKS                       R11 R0 K5 ["devtools"]
       54 GETTABLEKS                       R11 R11 K6 ["store"]
       56 MOVE                             R13 R6
       57 NAMECALL                         R11 R11 K7 ["getElementByID"]
       59 CALL                             R11 2 1
       60 JUMPIF                           R11 ; [+2]
       61 LOADNIL                          R12
       62 RETURN                           R12 1
       63 MOVE                             R14 R11
       64 NEWTABLE                         R15 0 0
       66 GETTABLE                         R16 R3 R10
       67 NAMECALL                         R12 R0 K8 ["_findChildKeyForInstance"]
       69 CALL                             R12 4 1
       70 MOVE                             R14 R7
       71 GETUPVAL                         R15 1
       72 MOVE                             R16 R12
       73 LOADK                            R17 K9 ["."]
       74 CALL                             R15 2 -1
       75 FASTCALL                         TABLE_INSERT ; [+1]
       76 GETUPVAL                         R13 0
       77 CALL                             R13 -1 0
       78 GETUPVAL                         R13 2
       79 MOVE                             R14 R12
       80 CALL                             R13 1 1
       81 MOVE                             R6 R13
       82 FORNLOOP                         R8
       83 MOVE                             R10 R6
       84 NAMECALL                         R8 R0 K3 ["getHostNode"]
       86 CALL                             R8 2 2
       87 SETGLOBAL                        R8 K10 ["_"]
       89 MOVE                             R5 R9
       90 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       92 MOVE                             R9 R7
       93 MOVE                             R10 R5
       94 GETUPVAL                         R8 0
       95 CALL                             R8 2 0
       96 RETURN                           R7 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["devtools"]
        3 GETTABLEKS                       R1 R1 K1 ["store"]
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["getElementByID"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 1
       10 NEWTABLE                         R3 0 0
       12 GETUPVAL                         R4 2
       13 NEWTABLE                         R5 0 1
       15 MOVE                             R6 R0
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R2 3 1
       19 GETTABLEKS                       R3 R1 K3 ["type"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K4 ["ElementType"]
       24 GETTABLEKS                       R4 R4 K5 ["HostComponent"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+12]
       28 GETUPVAL                         R3 0
       29 MOVE                             R5 R0
       30 NAMECALL                         R3 R3 K6 ["getHostInstance"]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 4
       34 JUMPIFNOTEQ                      R3 R4 ; [+2]
       36 RETURN                           R2 1
       37 LOADNIL                          R4
       38 RETURN                           R4 1
       39 GETUPVAL                         R3 0
       40 MOVE                             R5 R1
       41 MOVE                             R6 R2
       42 GETUPVAL                         R7 4
       43 NAMECALL                         R3 R3 K7 ["_findChildKeyForInstance"]
       45 CALL                             R3 4 -1
       46 RETURN                           R3 -1

PROTO_36:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R1 K0 ["children"]
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R3
        9 CALL                             R4 2 -1
       10 RETURN                           R4 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R1 1
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 3
        8 NEWTABLE                         R4 0 0
       10 GETUPVAL                         R5 0
       11 CALL                             R3 2 -1
       12 NAMECALL                         R1 R1 K0 ["showChildren"]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_38:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CALL                             R3 2 0
       10 DUPTABLE                         R5 K2 [{"eventName", "path"}]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K3 ["RoactInspector"]
       14 GETTABLEKS                       R6 R6 K4 ["PickInstance"]
       16 SETTABLEKS                       R6 R5 K0 ["eventName"]
       18 SETTABLEKS                       R1 R5 K1 ["path"]
       20 NAMECALL                         R3 R0 K5 ["send"]
       22 CALL                             R3 2 0
       23 MOVE                             R5 R1
       24 NAMECALL                         R3 R0 K6 ["showBranch"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_39:
        0 LENGTH                           R3 R1
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+60]
        3 GETTABLEKS                       R5 R0 K1 ["root"]
        5 NAMECALL                         R3 R0 K2 ["getHostNode"]
        7 CALL                             R3 2 2
        8 GETTABLEKS                       R7 R3 K3 ["id"]
       10 NAMECALL                         R5 R0 K4 ["getHostInstance"]
       12 CALL                             R5 2 1
       13 NEWTABLE                         R6 0 1
       15 MOVE                             R7 R4
       16 SETLIST                          R6 R7 1 [1]
       18 MOVE                             R9 R6
       19 GETTABLEKS                       R10 R0 K1 ["root"]
       21 LOADN                            R11 1
       22 NAMECALL                         R7 R0 K5 ["getChildren"]
       24 CALL                             R7 4 1
       25 DUPTABLE                         R10 K10 [{"eventName", "path", "children", "updatedIndexes"}]
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R11 R11 K11 ["RoactInspector"]
       29 GETTABLEKS                       R11 R11 K12 ["ShowChildren"]
       31 SETTABLEKS                       R11 R10 K6 ["eventName"]
       33 SETTABLEKS                       R1 R10 K7 ["path"]
       35 NEWTABLE                         R11 1 0
       37 DUPTABLE                         R12 K17 [{"Name", "Icon", "Children", "Path"}]
       38 JUMPIFNOT                        R5 ; [+3]
       39 GETTABLEKS                       R13 R5 K13 ["Name"]
       41 JUMPIF                           R13 ; [+2]
       42 GETTABLEKS                       R13 R3 K18 ["displayName"]
       44 SETTABLEKS                       R13 R12 K13 ["Name"]
       46 LOADK                            R13 K19 ["Branch"]
       47 SETTABLEKS                       R13 R12 K14 ["Icon"]
       49 SETTABLEKS                       R7 R12 K15 ["Children"]
       51 SETTABLEKS                       R6 R12 K16 ["Path"]
       53 SETTABLE                         R12 R11 R4
       54 SETTABLEKS                       R11 R10 K8 ["children"]
       56 SETTABLEKS                       R2 R10 K9 ["updatedIndexes"]
       58 NAMECALL                         R8 R0 K20 ["send"]
       60 CALL                             R8 2 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R4 1
       63 GETUPVAL                         R5 1
       64 MOVE                             R6 R1
       65 CALL                             R5 1 1
       66 LOADK                            R7 K21 ["."]
       67 NAMECALL                         R5 R5 K22 ["split"]
       69 CALL                             R5 2 -1
       70 CALL                             R4 -1 -1
       71 FASTCALL                         TONUMBER ; [+2]
       72 GETIMPORT                        R3 K24 [tonumber]
       74 CALL                             R3 -1 1
       75 MOVE                             R6 R1
       76 MOVE                             R7 R3
       77 LOADN                            R8 2
       78 NAMECALL                         R4 R0 K5 ["getChildren"]
       80 CALL                             R4 4 1
       81 DUPTABLE                         R7 K10 [{"eventName", "path", "children", "updatedIndexes"}]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K11 ["RoactInspector"]
       85 GETTABLEKS                       R8 R8 K12 ["ShowChildren"]
       87 SETTABLEKS                       R8 R7 K6 ["eventName"]
       89 SETTABLEKS                       R1 R7 K7 ["path"]
       91 SETTABLEKS                       R4 R7 K8 ["children"]
       93 SETTABLEKS                       R2 R7 K9 ["updatedIndexes"]
       95 NAMECALL                         R5 R0 K20 ["send"]
       97 CALL                             R5 2 0
       98 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 LOADK                            R5 K0 [""]
        4 GETUPVAL                         R6 2
        5 GETUPVAL                         R7 3
        6 NAMECALL                         R1 R1 K1 ["_collectChildren"]
        8 CALL                             R1 6 0
        9 RETURN                           R0 0

PROTO_41:
        0 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        2 LOADNIL                          R4
        3 RETURN                           R4 1
        4 MOVE                             R6 R2
        5 NAMECALL                         R4 R0 K1 ["getHostNode"]
        7 CALL                             R4 2 1
        8 JUMPIF                           R4 ; [+2]
        9 LOADNIL                          R5
       10 RETURN                           R5 1
       11 NEWTABLE                         R5 0 0
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R7 R4 K2 ["children"]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R5
       21 CALL                             R6 2 0
       22 RETURN                           R5 1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 GETUPVAL                         R6 3
        5 GETUPVAL                         R7 4
        6 NAMECALL                         R1 R1 K0 ["_collectChildren"]
        8 CALL                             R1 6 0
        9 RETURN                           R0 0

PROTO_43:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R7 R1
        2 GETIMPORT                        R6 K1 [tostring]
        4 CALL                             R6 1 1
        5 LENGTH                           R8 R3
        6 JUMPIFNOTEQKN                    R8 K2 [0] ; [+3]
        8 MOVE                             R7 R6
        9 JUMPIF                           R7 ; [+6]
       10 LOADK                            R7 K3 ["%s.%s"]
       11 MOVE                             R9 R3
       12 MOVE                             R10 R6
       13 NAMECALL                         R7 R7 K4 ["format"]
       15 CALL                             R7 3 1
       16 GETTABLEKS                       R8 R0 K5 ["devtools"]
       18 GETTABLEKS                       R8 R8 K6 ["store"]
       20 MOVE                             R10 R1
       21 NAMECALL                         R8 R8 K7 ["getElementByID"]
       23 CALL                             R8 2 1
       24 GETTABLEKS                       R9 R8 K8 ["type"]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R10 R10 K9 ["ElementType"]
       29 GETTABLEKS                       R10 R10 K10 ["HostComponent"]
       31 JUMPIFNOTEQ                      R9 R10 ; [+61]
       33 MOVE                             R11 R1
       34 NAMECALL                         R9 R0 K11 ["getHostInstance"]
       36 CALL                             R9 2 1
       37 JUMPIFNOT                        R9 ; [+3]
       38 GETTABLEKS                       R10 R9 K12 ["Name"]
       40 JUMPIF                           R10 ; [+2]
       41 GETTABLEKS                       R10 R8 K13 ["displayName"]
       43 GETTABLEKS                       R12 R8 K14 ["key"]
       45 LENGTH                           R11 R12
       46 LOADN                            R12 0
       47 JUMPIFNOTLT                      R12 R11 ; [+13]
       49 GETTABLEKS                       R11 R8 K14 ["key"]
       51 JUMPIFEQ                         R10 R11 ; [+9]
       53 LOADK                            R11 K15 ["%s: %s"]
       54 GETTABLEKS                       R13 R8 K14 ["key"]
       56 MOVE                             R14 R10
       57 NAMECALL                         R11 R11 K4 ["format"]
       59 CALL                             R11 3 1
       60 MOVE                             R10 R11
       61 GETUPVAL                         R11 1
       62 NEWTABLE                         R12 0 0
       64 MOVE                             R13 R2
       65 NEWTABLE                         R14 0 1
       67 MOVE                             R15 R7
       68 SETLIST                          R14 R15 1 [1]
       70 CALL                             R11 3 1
       71 DUPTABLE                         R12 K19 [{"Name", "Icon", "Children", "Path"}]
       72 SETTABLEKS                       R10 R12 K12 ["Name"]
       74 JUMPIFNOT                        R9 ; [+3]
       75 GETTABLEKS                       R13 R9 K20 ["ClassName"]
       77 JUMPIF                           R13 ; [+1]
       78 LOADK                            R13 K21 ["Branch"]
       79 SETTABLEKS                       R13 R12 K16 ["Icon"]
       81 MOVE                             R15 R11
       82 MOVE                             R16 R1
       83 SUBK                             R17 R4 K22 [1]
       84 NAMECALL                         R13 R0 K23 ["getChildren"]
       86 CALL                             R13 4 1
       87 SETTABLEKS                       R13 R12 K17 ["Children"]
       89 SETTABLEKS                       R11 R12 K18 ["Path"]
       91 SETTABLE                         R12 R5 R7
       92 RETURN                           R0 0
       93 GETUPVAL                         R9 2
       94 GETTABLEKS                       R10 R8 K24 ["children"]
       96 NEWCLOSURE                       R11 P0
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R5
      102 CALL                             R9 2 0
      103 RETURN                           R0 0

PROTO_44:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 LOADNIL                          R4
        6 JUMPIFNOT                        R1 ; [+43]
        7 GETTABLEKS                       R5 R0 K2 ["devtools"]
        9 GETTABLEKS                       R5 R5 K3 ["store"]
       11 MOVE                             R7 R1
       12 NAMECALL                         R5 R5 K4 ["getElementByID"]
       14 CALL                             R5 2 1
       15 MOVE                             R4 R5
       16 JUMPIF                           R4 ; [+2]
       17 LOADNIL                          R5
       18 RETURN                           R5 1
       19 GETTABLEKS                       R5 R4 K5 ["type"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K6 ["ElementType"]
       24 GETTABLEKS                       R6 R6 K7 ["HostComponent"]
       26 JUMPIFNOTEQ                      R5 R6 ; [+4]
       28 MOVE                             R5 R4
       29 MOVE                             R6 R3
       30 RETURN                           R5 2
       31 GETTABLEKS                       R6 R4 K8 ["children"]
       33 LENGTH                           R5 R6
       34 JUMPIFNOTEQKN                    R5 K9 [0] ; [+3]
       36 LOADNIL                          R5
       37 RETURN                           R5 1
       38 GETTABLEKS                       R5 R4 K8 ["children"]
       40 GETTABLEN                        R1 R5 1
       41 MOVE                             R5 R3
       42 LOADK                            R6 K10 ["."]
       43 FASTCALL1                        TOSTRING R1 ; [+3]
       44 MOVE                             R8 R1
       45 GETIMPORT                        R7 K1 [tostring]
       47 CALL                             R7 1 1
       48 CONCAT                           R3 R5 R7
       49 JUMPBACK                         ; [-44]
       50 LOADNIL                          R5
       51 RETURN                           R5 1

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["devtools"]
        2 GETTABLEKS                       R1 R1 K1 ["store"]
        4 GETTABLEKS                       R3 R0 K2 ["root"]
        6 NAMECALL                         R1 R1 K3 ["getRendererIDForElement"]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R3 R0 K0 ["devtools"]
       11 GETTABLEKS                       R3 R3 K4 ["hook"]
       13 GETTABLEKS                       R3 R3 K5 ["rendererInterfaces"]
       15 GETTABLE                         R2 R3 R1
       16 RETURN                           R2 1

PROTO_46:
        0 NAMECALL                         R2 R0 K0 ["getRenderer"]
        2 CALL                             R2 1 1
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R0 K1 ["getHostNode"]
        6 CALL                             R3 2 1
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R2 K2 ["findNativeNodesForFiberID"]
       11 GETTABLEKS                       R5 R3 K3 ["id"]
       13 CALL                             R4 1 1
       14 JUMPIFNOT                        R4 ; [+2]
       15 GETTABLEN                        R5 R4 1
       16 JUMPIF                           R5 ; [+1]
       17 LOADNIL                          R5
       18 RETURN                           R5 1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getNodeInfo"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_48:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 CALL                             R4 1 -1
        3 NAMECALL                         R2 R0 K0 ["getNodes"]
        5 CALL                             R2 -1 1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 LOADNIL                          R3
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 CALL                             R4 1 1
       12 JUMPIFNOT                        R4 ; [+6]
       13 GETTABLEKS                       R7 R4 K1 ["id"]
       15 NAMECALL                         R5 R0 K2 ["getHostInstance"]
       17 CALL                             R5 2 1
       18 MOVE                             R3 R5
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R2
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R0
       23 CALL                             R5 2 1
       24 DUPTABLE                         R8 K7 [{"eventName", "path", "branch", "instance"}]
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R9 R9 K8 ["RoactInspector"]
       28 GETTABLEKS                       R9 R9 K9 ["ShowBranch"]
       30 SETTABLEKS                       R9 R8 K3 ["eventName"]
       32 SETTABLEKS                       R1 R8 K4 ["path"]
       34 SETTABLEKS                       R5 R8 K5 ["branch"]
       36 SETTABLEKS                       R3 R8 K6 ["instance"]
       38 NAMECALL                         R6 R0 K10 ["send"]
       40 CALL                             R6 2 0
       41 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["currentPath"]
        3 CALL                             R4 1 -1
        4 NAMECALL                         R2 R0 K1 ["getNodes"]
        6 CALL                             R2 -1 1
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R0 K2 ["currentNodeIndex"]
       11 GETTABLE                         R3 R2 R4
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEN                        R4 R1 1
       15 JUMPIFNOTEQKS                    R4 K3 ["_context"] ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R5 R0 K4 ["pendingFields"]
       20 FASTCALL2                        TABLE_INSERT R5 R1 ; [+3]
       22 MOVE                             R6 R1
       23 GETUPVAL                         R4 1
       24 CALL                             R4 2 0
       25 GETTABLEKS                       R4 R0 K5 ["devtools"]
       27 GETTABLEKS                       R4 R4 K6 ["agent"]
       29 DUPTABLE                         R6 K10 [{"id", "rendererID", "path"}]
       30 GETTABLEKS                       R7 R3 K7 ["id"]
       32 SETTABLEKS                       R7 R6 K7 ["id"]
       34 GETTABLEKS                       R7 R0 K5 ["devtools"]
       36 GETTABLEKS                       R7 R7 K11 ["store"]
       38 GETTABLEKS                       R9 R0 K12 ["root"]
       40 NAMECALL                         R7 R7 K13 ["getRendererIDForElement"]
       42 CALL                             R7 2 1
       43 SETTABLEKS                       R7 R6 K8 ["rendererID"]
       45 SETTABLEKS                       R1 R6 K9 ["path"]
       47 NAMECALL                         R4 R4 K14 ["inspectElement"]
       49 CALL                             R4 2 0
       50 RETURN                           R0 0

PROTO_50:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["devtools"]
        8 GETTABLEKS                       R2 R2 K3 ["store"]
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R2 K4 ["getElementByID"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_51:
        0 LOADK                            R4 K0 ["."]
        1 NAMECALL                         R2 R1 K1 ["split"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R3 2 -1
        9 RETURN                           R3 -1

PROTO_52:
        0 DUPTABLE                         R4 K2 [{"eventName", "data"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K3 ["RoactInspector"]
        4 GETTABLEKS                       R5 R5 K4 ["ShowProfileData"]
        6 SETTABLEKS                       R5 R4 K0 ["eventName"]
        8 SETTABLEKS                       R1 R4 K1 ["data"]
       10 NAMECALL                         R2 R0 K5 ["send"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["destroy"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["picker"]
        7 NAMECALL                         R1 R1 K0 ["destroy"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K2 ["profiler"]
       12 NAMECALL                         R1 R1 K0 ["destroy"]
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K3 ["fieldWatcher"]
       17 NAMECALL                         R1 R1 K0 ["destroy"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["RoactInspector"]
       15 GETTABLEKS                       R3 R3 K6 ["Utils"]
       17 GETTABLEKS                       R3 R3 K7 ["getChildAtKey"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K8 ["Roact17"]
       24 GETTABLEKS                       R4 R4 K9 ["types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K10 ["EventName"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K5 ["RoactInspector"]
       36 GETTABLEKS                       R6 R6 K11 ["Classes"]
       38 GETTABLEKS                       R6 R6 K12 ["InstancePicker"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R0 K8 ["Roact17"]
       45 GETTABLEKS                       R7 R7 K11 ["Classes"]
       47 GETTABLEKS                       R7 R7 K13 ["Roact17Profiler"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R8 R0 K5 ["RoactInspector"]
       54 GETTABLEKS                       R8 R8 K11 ["Classes"]
       56 GETTABLEKS                       R8 R8 K14 ["FieldWatcher"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K4 [require]
       61 GETTABLEKS                       R9 R0 K11 ["Classes"]
       63 GETTABLEKS                       R9 R9 K15 ["TargetWorker"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K4 [require]
       68 GETTABLEKS                       R10 R1 K16 ["Dash"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R10 R9 K17 ["append"]
       73 GETTABLEKS                       R11 R9 K18 ["map"]
       75 GETTABLEKS                       R12 R9 K19 ["mapOne"]
       77 GETTABLEKS                       R13 R9 K20 ["forEach"]
       79 GETTABLEKS                       R14 R9 K21 ["filter"]
       81 GETTABLEKS                       R15 R9 K22 ["last"]
       83 GETTABLEKS                       R16 R9 K23 ["reduce"]
       85 GETTABLEKS                       R17 R9 K24 ["startsWith"]
       87 GETIMPORT                        R18 K4 [require]
       89 GETTABLEKS                       R19 R0 K25 ["Types"]
       91 CALL                             R18 1 1
       92 GETIMPORT                        R19 K28 [table.concat]
       94 GETIMPORT                        R20 K30 [table.insert]
       96 LOADK                            R23 K31 ["Roact17Worker"]
       97 DUPCLOSURE                       R24 K32 [PROTO_0]
       98 CAPTURE                          VAL R8
       99 NAMECALL                         R21 R8 K33 ["extend"]
      101 CALL                             R21 3 1
      102 DUPCLOSURE                       R22 K34 [PROTO_6]
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R6
      108 SETTABLEKS                       R22 R21 K35 ["_init"]
      110 DUPCLOSURE                       R22 K36 [PROTO_22]
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R15
      114 SETTABLEKS                       R22 R21 K37 ["connectEvents"]
      116 DUPCLOSURE                       R22 K38 [PROTO_23]
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R22 R21 K39 ["getNodeInfo"]
      120 DUPCLOSURE                       R22 K40 [PROTO_29]
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R4
      126 SETTABLEKS                       R22 R21 K41 ["connectDevtools"]
      128 DUPCLOSURE                       R22 K42 [PROTO_32]
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R4
      132 SETTABLEKS                       R22 R21 K43 ["reduceAndSendFields"]
      134 DUPCLOSURE                       R22 K44 [PROTO_33]
      135 SETTABLEKS                       R22 R21 K45 ["pickInstance"]
      137 DUPCLOSURE                       R22 K46 [PROTO_34]
      138 CAPTURE                          VAL R20
      139 CAPTURE                          VAL R19
      140 CAPTURE                          VAL R15
      141 SETTABLEKS                       R22 R21 K47 ["getPath"]
      143 DUPCLOSURE                       R22 K48 [PROTO_36]
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R3
      147 SETTABLEKS                       R22 R21 K49 ["_findChildKeyForInstance"]
      149 DUPCLOSURE                       R22 K50 [PROTO_38]
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R4
      154 SETTABLEKS                       R22 R21 K51 ["openPath"]
      156 DUPCLOSURE                       R22 K52 [PROTO_39]
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R15
      159 SETTABLEKS                       R22 R21 K53 ["showChildren"]
      161 DUPCLOSURE                       R22 K54 [PROTO_41]
      162 CAPTURE                          VAL R13
      163 SETTABLEKS                       R22 R21 K55 ["getChildren"]
      165 DUPCLOSURE                       R22 K56 [PROTO_43]
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R13
      169 SETTABLEKS                       R22 R21 K57 ["_collectChildren"]
      171 DUPCLOSURE                       R22 K58 [PROTO_44]
      172 CAPTURE                          VAL R3
      173 SETTABLEKS                       R22 R21 K59 ["getHostNode"]
      175 DUPCLOSURE                       R22 K60 [PROTO_45]
      176 SETTABLEKS                       R22 R21 K61 ["getRenderer"]
      178 DUPCLOSURE                       R22 K62 [PROTO_46]
      179 SETTABLEKS                       R22 R21 K63 ["getHostInstance"]
      181 DUPCLOSURE                       R22 K64 [PROTO_48]
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R4
      185 SETTABLEKS                       R22 R21 K65 ["showBranch"]
      187 DUPCLOSURE                       R22 K66 [PROTO_49]
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R20
      190 SETTABLEKS                       R22 R21 K67 ["showFields"]
      192 DUPCLOSURE                       R22 K68 [PROTO_51]
      193 CAPTURE                          VAL R11
      194 SETTABLEKS                       R22 R21 K69 ["getNodes"]
      196 DUPCLOSURE                       R22 K70 [PROTO_52]
      197 CAPTURE                          VAL R4
      198 SETTABLEKS                       R22 R21 K71 ["showProfileData"]
      200 DUPCLOSURE                       R22 K72 [PROTO_53]
      201 CAPTURE                          VAL R8
      202 SETTABLEKS                       R22 R21 K73 ["destroy"]
      204 RETURN                           R21 1
