PROTO_0:
        0 LOADN                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["profileComponentsPageIndex"]
        3 LOADN                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["profileComponentsPageSize"]
        6 LOADN                            R1 1
        7 SETTABLEKS                       R1 R0 K2 ["profileEventsPageIndex"]
        9 LOADN                            R1 1
       10 SETTABLEKS                       R1 R0 K3 ["profileEventsPageSize"]
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["handlers"]
        3 GETTABLEKS                       R1 R2 K1 ["onUpdateInstances"]
        5 GETTABLEKS                       R2 R0 K2 ["path"]
        7 GETTABLEKS                       R3 R0 K3 ["children"]
        9 GETTABLEKS                       R4 R0 K4 ["updatedIndexes"]
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["handlers"]
        3 GETTABLEKS                       R1 R2 K1 ["onUpdateBranch"]
        5 GETTABLEKS                       R2 R0 K2 ["path"]
        7 GETTABLEKS                       R3 R0 K3 ["branch"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["handlers"]
        3 GETTABLEKS                       R1 R2 K1 ["onUpdateFields"]
        5 GETTABLEKS                       R2 R0 K2 ["path"]
        7 GETTABLEKS                       R3 R0 K3 ["nodeIndex"]
        9 GETTABLEKS                       R4 R0 K4 ["fieldPath"]
       11 GETTABLEKS                       R5 R0 K5 ["fields"]
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["handlers"]
        3 GETTABLEKS                       R1 R2 K1 ["onPickInstance"]
        5 GETTABLEKS                       R2 R0 K2 ["path"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["handlers"]
        3 GETTABLEKS                       R1 R2 K1 ["onUpdateProfileData"]
        5 GETTABLEKS                       R2 R0 K2 ["data"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 SETTABLEKS                       R1 R0 K0 ["handlers"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["attach"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 DUPTABLE                         R4 K4 [{"eventName", "onEvent"}]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K5 ["RoactInspector"]
       11 GETTABLEKS                       R5 R6 K6 ["ShowChildren"]
       13 SETTABLEKS                       R5 R4 K2 ["eventName"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R5 R4 K3 ["onEvent"]
       19 NAMECALL                         R2 R0 K7 ["_connect"]
       21 CALL                             R2 2 0
       22 DUPTABLE                         R4 K4 [{"eventName", "onEvent"}]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K5 ["RoactInspector"]
       26 GETTABLEKS                       R5 R6 K8 ["ShowBranch"]
       28 SETTABLEKS                       R5 R4 K2 ["eventName"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R5 R4 K3 ["onEvent"]
       34 NAMECALL                         R2 R0 K7 ["_connect"]
       36 CALL                             R2 2 0
       37 DUPTABLE                         R4 K4 [{"eventName", "onEvent"}]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R6 R7 K5 ["RoactInspector"]
       41 GETTABLEKS                       R5 R6 K9 ["ShowFields"]
       43 SETTABLEKS                       R5 R4 K2 ["eventName"]
       45 NEWCLOSURE                       R5 P2
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R5 R4 K3 ["onEvent"]
       49 NAMECALL                         R2 R0 K7 ["_connect"]
       51 CALL                             R2 2 0
       52 DUPTABLE                         R4 K4 [{"eventName", "onEvent"}]
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R6 R7 K5 ["RoactInspector"]
       56 GETTABLEKS                       R5 R6 K10 ["PickInstance"]
       58 SETTABLEKS                       R5 R4 K2 ["eventName"]
       60 NEWCLOSURE                       R5 P3
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R5 R4 K3 ["onEvent"]
       64 NAMECALL                         R2 R0 K7 ["_connect"]
       66 CALL                             R2 2 0
       67 DUPTABLE                         R4 K4 [{"eventName", "onEvent"}]
       68 GETUPVAL                         R7 1
       69 GETTABLEKS                       R6 R7 K5 ["RoactInspector"]
       71 GETTABLEKS                       R5 R6 K11 ["ShowProfileData"]
       73 SETTABLEKS                       R5 R4 K2 ["eventName"]
       75 NEWCLOSURE                       R5 P4
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R5 R4 K3 ["onEvent"]
       79 NAMECALL                         R2 R0 K7 ["_connect"]
       81 CALL                             R2 2 0
       82 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R4 K2 [{"eventName", "path"}]
        1 GETUPVAL                         R7 0
        2 GETTABLEKS                       R6 R7 K3 ["RoactInspector"]
        4 GETTABLEKS                       R5 R6 K4 ["GetChildren"]
        6 SETTABLEKS                       R5 R4 K0 ["eventName"]
        8 SETTABLEKS                       R1 R4 K1 ["path"]
       10 NAMECALL                         R2 R0 K5 ["_send"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R3 0 0
        2 NAMECALL                         R1 R0 K0 ["getChildren"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R4 K2 [{"eventName", "path"}]
        1 GETUPVAL                         R7 0
        2 GETTABLEKS                       R6 R7 K3 ["RoactInspector"]
        4 GETTABLEKS                       R5 R6 K4 ["GetBranch"]
        6 SETTABLEKS                       R5 R4 K0 ["eventName"]
        8 SETTABLEKS                       R1 R4 K1 ["path"]
       10 NAMECALL                         R2 R0 K5 ["_send"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R6 K4 [{"eventName", "path", "nodeIndex", "fieldPath"}]
        1 GETUPVAL                         R9 0
        2 GETTABLEKS                       R8 R9 K5 ["RoactInspector"]
        4 GETTABLEKS                       R7 R8 K6 ["GetFields"]
        6 SETTABLEKS                       R7 R6 K0 ["eventName"]
        8 SETTABLEKS                       R1 R6 K1 ["path"]
       10 SETTABLEKS                       R2 R6 K2 ["nodeIndex"]
       12 SETTABLEKS                       R3 R6 K3 ["fieldPath"]
       14 NAMECALL                         R4 R0 K7 ["_send"]
       16 CALL                             R4 2 0
       17 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R4 K2 [{"eventName", "isPicking"}]
        1 GETUPVAL                         R7 0
        2 GETTABLEKS                       R6 R7 K3 ["RoactInspector"]
        4 GETTABLEKS                       R5 R6 K4 ["SetPicking"]
        6 SETTABLEKS                       R5 R4 K0 ["eventName"]
        8 SETTABLEKS                       R1 R4 K1 ["isPicking"]
       10 NAMECALL                         R2 R0 K5 ["_send"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R4 K2 [{"eventName", "path"}]
        1 GETUPVAL                         R7 0
        2 GETTABLEKS                       R6 R7 K3 ["RoactInspector"]
        4 GETTABLEKS                       R5 R6 K4 ["OpenPath"]
        6 SETTABLEKS                       R5 R4 K0 ["eventName"]
        8 SETTABLEKS                       R1 R4 K1 ["path"]
       10 NAMECALL                         R2 R0 K5 ["_send"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["profileThread"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+10]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K1 ["getProfileData"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [wait]
       12 LOADK                            R1 K4 [0.5]
       13 CALL                             R0 1 0
       14 JUMPBACK                         ; [-15]
       15 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOT                        R1 ; [+14]
        1 LOADNIL                          R2
        2 GETIMPORT                        R3 K2 [coroutine.wrap]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R0
        7 CALL                             R3 1 1
        8 MOVE                             R2 R3
        9 SETTABLEKS                       R2 R0 K3 ["profileThread"]
       11 MOVE                             R3 R2
       12 CALL                             R3 0 0
       13 CLOSEUPVALS                      R2
       14 JUMP                             ; [+3]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R0 K3 ["profileThread"]
       18 DUPTABLE                         R4 K6 [{"eventName", "isProfiling"}]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K7 ["RoactInspector"]
       22 GETTABLEKS                       R5 R6 K8 ["SetProfiling"]
       24 SETTABLEKS                       R5 R4 K4 ["eventName"]
       26 SETTABLEKS                       R1 R4 K5 ["isProfiling"]
       28 NAMECALL                         R2 R0 K9 ["_send"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R3 K1 [{"eventName"}]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K2 ["RoactInspector"]
        4 GETTABLEKS                       R4 R5 K3 ["ClearProfileData"]
        6 SETTABLEKS                       R4 R3 K0 ["eventName"]
        8 NAMECALL                         R1 R0 K4 ["_send"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R6 K4 [{"eventName", "tableName", "index", "order"}]
        1 GETUPVAL                         R9 0
        2 GETTABLEKS                       R8 R9 K5 ["RoactInspector"]
        4 GETTABLEKS                       R7 R8 K6 ["SortProfileData"]
        6 SETTABLEKS                       R7 R6 K0 ["eventName"]
        8 SETTABLEKS                       R1 R6 K1 ["tableName"]
       10 SETTABLEKS                       R2 R6 K2 ["index"]
       12 SETTABLEKS                       R3 R6 K3 ["order"]
       14 NAMECALL                         R4 R0 K7 ["_send"]
       16 CALL                             R4 2 0
       17 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R4 K2 [{"eventName", "instanceId"}]
        1 GETUPVAL                         R7 0
        2 GETTABLEKS                       R6 R7 K3 ["RoactInspector"]
        4 GETTABLEKS                       R5 R6 K4 ["SelectProfileInstance"]
        6 SETTABLEKS                       R5 R4 K0 ["eventName"]
        8 SETTABLEKS                       R1 R4 K1 ["instanceId"]
       10 NAMECALL                         R2 R0 K5 ["_send"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R4 K2 [{"eventName", "filter"}]
        1 GETUPVAL                         R7 0
        2 GETTABLEKS                       R6 R7 K3 ["RoactInspector"]
        4 GETTABLEKS                       R5 R6 K4 ["SetProfileFilter"]
        6 SETTABLEKS                       R5 R4 K0 ["eventName"]
        8 SETTABLEKS                       R1 R4 K1 ["filter"]
       10 NAMECALL                         R2 R0 K5 ["_send"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R4 K2 [{"eventName", "searchTerm"}]
        1 GETUPVAL                         R7 0
        2 GETTABLEKS                       R6 R7 K3 ["RoactInspector"]
        4 GETTABLEKS                       R5 R6 K4 ["SetProfileSearchTerm"]
        6 SETTABLEKS                       R5 R4 K0 ["eventName"]
        8 SETTABLEKS                       R1 R4 K1 ["searchTerm"]
       10 NAMECALL                         R2 R0 K5 ["_send"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_20:
        0 SETTABLEKS                       R1 R0 K0 ["profileComponentsPageIndex"]
        2 RETURN                           R0 0

PROTO_21:
        0 SETTABLEKS                       R1 R0 K0 ["profileComponentsPageSize"]
        2 RETURN                           R0 0

PROTO_22:
        0 SETTABLEKS                       R1 R0 K0 ["profileEventsPageIndex"]
        2 RETURN                           R0 0

PROTO_23:
        0 SETTABLEKS                       R1 R0 K0 ["profileEventsPageSize"]
        2 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R4 R0 K1 ["profileComponentsPageIndex"]
        2 SUBK                             R3 R4 K0 [1]
        3 GETTABLEKS                       R4 R0 K2 ["profileComponentsPageSize"]
        5 MUL                              R2 R3 R4
        6 ADDK                             R1 R2 K0 [1]
        7 GETTABLEKS                       R4 R0 K2 ["profileComponentsPageSize"]
        9 ADD                              R3 R1 R4
       10 SUBK                             R2 R3 K0 [1]
       11 GETTABLEKS                       R6 R0 K3 ["profileEventsPageIndex"]
       13 SUBK                             R5 R6 K0 [1]
       14 GETTABLEKS                       R6 R0 K4 ["profileEventsPageSize"]
       16 MUL                              R4 R5 R6
       17 ADDK                             R3 R4 K0 [1]
       18 GETTABLEKS                       R6 R0 K4 ["profileEventsPageSize"]
       20 ADD                              R5 R3 R6
       21 SUBK                             R4 R5 K0 [1]
       22 DUPTABLE                         R7 K10 [{"eventName", "componentSliceStart", "componentSliceEnd", "eventSliceStart", "eventSliceEnd"}]
       23 GETUPVAL                         R10 0
       24 GETTABLEKS                       R9 R10 K11 ["RoactInspector"]
       26 GETTABLEKS                       R8 R9 K12 ["GetProfileData"]
       28 SETTABLEKS                       R8 R7 K5 ["eventName"]
       30 SETTABLEKS                       R1 R7 K6 ["componentSliceStart"]
       32 SETTABLEKS                       R2 R7 K7 ["componentSliceEnd"]
       34 SETTABLEKS                       R3 R7 K8 ["eventSliceStart"]
       36 SETTABLEKS                       R4 R7 K9 ["eventSliceEnd"]
       38 NAMECALL                         R5 R0 K13 ["_send"]
       40 CALL                             R5 2 0
       41 RETURN                           R0 0

PROTO_25:
        0 DUPTABLE                         R4 K2 [{"eventName", "path"}]
        1 GETUPVAL                         R7 0
        2 GETTABLEKS                       R6 R7 K3 ["RoactInspector"]
        4 GETTABLEKS                       R5 R6 K4 ["Highlight"]
        6 SETTABLEKS                       R5 R4 K0 ["eventName"]
        8 SETTABLEKS                       R1 R4 K1 ["path"]
       10 NAMECALL                         R2 R0 K5 ["_send"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_26:
        0 DUPTABLE                         R3 K1 [{"eventName"}]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K2 ["RoactInspector"]
        4 GETTABLEKS                       R4 R5 K3 ["Dehighlight"]
        6 SETTABLEKS                       R4 R3 K0 ["eventName"]
        8 NAMECALL                         R1 R0 K4 ["_send"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["EventName"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Classes"]
       18 GETTABLEKS                       R3 R4 K7 ["TargetApi"]
       20 CALL                             R2 1 1
       21 LOADK                            R5 K8 ["RoactInspectorApi"]
       22 NAMECALL                         R3 R2 K9 ["extend"]
       24 CALL                             R3 2 1
       25 DUPCLOSURE                       R4 K10 [PROTO_0]
       26 SETTABLEKS                       R4 R3 K11 ["_init"]
       28 DUPCLOSURE                       R4 K12 [PROTO_6]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K13 ["attach"]
       33 DUPCLOSURE                       R4 K14 [PROTO_7]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R4 R3 K15 ["getChildren"]
       37 DUPCLOSURE                       R4 K16 [PROTO_8]
       38 SETTABLEKS                       R4 R3 K17 ["getRoot"]
       40 DUPCLOSURE                       R4 K18 [PROTO_9]
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R4 R3 K19 ["getBranch"]
       44 DUPCLOSURE                       R4 K20 [PROTO_10]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R4 R3 K21 ["getFields"]
       48 DUPCLOSURE                       R4 K22 [PROTO_11]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R4 R3 K23 ["setPicking"]
       52 DUPCLOSURE                       R4 K24 [PROTO_12]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R4 R3 K25 ["openPath"]
       56 DUPCLOSURE                       R4 K26 [PROTO_14]
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R4 R3 K27 ["setProfiling"]
       60 DUPCLOSURE                       R4 K28 [PROTO_15]
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R4 R3 K29 ["clearProfileData"]
       64 DUPCLOSURE                       R4 K30 [PROTO_16]
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R4 R3 K31 ["sortProfileData"]
       68 DUPCLOSURE                       R4 K32 [PROTO_17]
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R4 R3 K33 ["selectProfileInstance"]
       72 DUPCLOSURE                       R4 K34 [PROTO_18]
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R4 R3 K35 ["setProfileFilter"]
       76 DUPCLOSURE                       R4 K36 [PROTO_19]
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R4 R3 K37 ["setProfileSearchTerm"]
       80 DUPCLOSURE                       R4 K38 [PROTO_20]
       81 SETTABLEKS                       R4 R3 K39 ["setProfileComponentsPageIndex"]
       83 DUPCLOSURE                       R4 K40 [PROTO_21]
       84 SETTABLEKS                       R4 R3 K41 ["setProfileComponentsPageSize"]
       86 DUPCLOSURE                       R4 K42 [PROTO_22]
       87 SETTABLEKS                       R4 R3 K43 ["setProfileEventsPageIndex"]
       89 DUPCLOSURE                       R4 K44 [PROTO_23]
       90 SETTABLEKS                       R4 R3 K45 ["setProfileEventsPageSize"]
       92 DUPCLOSURE                       R4 K46 [PROTO_24]
       93 CAPTURE                          VAL R1
       94 SETTABLEKS                       R4 R3 K47 ["getProfileData"]
       96 DUPCLOSURE                       R4 K48 [PROTO_25]
       97 CAPTURE                          VAL R1
       98 SETTABLEKS                       R4 R3 K49 ["highlight"]
      100 DUPCLOSURE                       R4 K50 [PROTO_26]
      101 CAPTURE                          VAL R1
      102 SETTABLEKS                       R4 R3 K51 ["dehighlight"]
      104 RETURN                           R3 1
