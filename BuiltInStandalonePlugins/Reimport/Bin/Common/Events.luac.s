PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 JUMPIFNOT                        R4 ; [+6]
        5 GETTABLEKS                       R5 R4 K0 ["Connected"]
        7 JUMPIFNOT                        R5 ; [+3]
        8 NAMECALL                         R5 R4 K1 ["Disconnect"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-8]
       13 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 8 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["actionUri"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["REIMPORT"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R2 K2 ["BindToActivatedAsync"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["reimport"]
       17 NAMECALL                         R2 R2 K4 ["Connect"]
       19 CALL                             R2 2 1
       20 SETTABLEKS                       R2 R0 K3 ["reimport"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K0 ["actionUri"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K5 ["REIMPORT_RELATIVE_TO_THIS"]
       28 CALL                             R2 1 1
       29 GETUPVAL                         R3 2
       30 MOVE                             R5 R2
       31 NAMECALL                         R3 R3 K2 ["BindToActivatedAsync"]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K6 ["reimportRelative"]
       37 NAMECALL                         R3 R3 K4 ["Connect"]
       39 CALL                             R3 2 1
       40 SETTABLEKS                       R3 R0 K7 ["reimport_rel"]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K0 ["actionUri"]
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R4 R4 K8 ["CONFIGURE"]
       48 CALL                             R3 1 1
       49 GETUPVAL                         R4 2
       50 MOVE                             R6 R3
       51 NAMECALL                         R4 R4 K2 ["BindToActivatedAsync"]
       53 CALL                             R4 2 1
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R6 R6 K9 ["configure"]
       57 NAMECALL                         R4 R4 K4 ["Connect"]
       59 CALL                             R4 2 1
       60 SETTABLEKS                       R4 R0 K9 ["configure"]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K0 ["actionUri"]
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K10 ["CLEAR_REIMPORT_CONFIG"]
       68 CALL                             R4 1 1
       69 GETUPVAL                         R5 2
       70 MOVE                             R7 R4
       71 NAMECALL                         R5 R5 K2 ["BindToActivatedAsync"]
       73 CALL                             R5 2 1
       74 GETUPVAL                         R7 3
       75 GETTABLEKS                       R7 R7 K11 ["clearConfig"]
       77 NAMECALL                         R5 R5 K4 ["Connect"]
       79 CALL                             R5 2 1
       80 SETTABLEKS                       R5 R0 K12 ["clear_config"]
       82 GETUPVAL                         R5 4
       83 CALL                             R5 0 1
       84 JUMPIFNOT                        R5 ; [+20]
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K0 ["actionUri"]
       88 GETUPVAL                         R6 1
       89 GETTABLEKS                       R6 R6 K13 ["WATCH_INSTANCE_FILE"]
       91 CALL                             R5 1 1
       92 GETUPVAL                         R6 2
       93 MOVE                             R8 R5
       94 NAMECALL                         R6 R6 K2 ["BindToActivatedAsync"]
       96 CALL                             R6 2 1
       97 GETUPVAL                         R8 3
       98 GETTABLEKS                       R8 R8 K14 ["watchInstanceFile"]
      100 NAMECALL                         R6 R6 K4 ["Connect"]
      102 CALL                             R6 2 1
      103 SETTABLEKS                       R6 R0 K15 ["watch_instance_file"]
      105 GETUPVAL                         R5 5
      106 GETTABLEKS                       R5 R5 K16 ["Unloading"]
      108 NEWCLOSURE                       R7 P0
      109 CAPTURE                          VAL R0
      110 NAMECALL                         R5 R5 K4 ["Connect"]
      112 CALL                             R5 2 0
      113 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["newConfig"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["REIMPORT"]
        8 GETTABLEKS                       R5 R5 K2 ["ATTRIBUTE_KEY"]
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R1 K3 ["SetAttribute"]
       13 CALL                             R3 3 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 JUMPIFNOT                        R4 ; [+6]
        5 GETTABLEKS                       R5 R4 K0 ["Connected"]
        7 JUMPIFNOT                        R5 ; [+3]
        8 NAMECALL                         R5 R4 K1 ["Disconnect"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-8]
       13 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 1 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+15]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["REIMPORT"]
        9 GETTABLEKS                       R3 R3 K1 ["CPC_EVENTS"]
       11 GETTABLEKS                       R3 R3 K2 ["IMPORT_SUCCEEDED"]
       13 GETGLOBAL                        R4 K3 ["_configureId"]
       15 NAMECALL                         R1 R1 K4 ["Connect"]
       17 CALL                             R1 3 1
       18 SETTABLEKS                       R1 R0 K5 ["cpc_import_succeeded"]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K6 ["Unloading"]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R1 R1 K4 ["Connect"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Plugin"]
       10 NAMECALL                         R1 R1 K5 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K7 [require]
       15 GETTABLEKS                       R3 R0 K8 ["Packages"]
       17 GETTABLEKS                       R3 R3 K9 ["SharedPluginConstants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Lib"]
       24 GETTABLEKS                       R4 R4 K11 ["Actions"]
       26 GETTABLEKS                       R4 R4 K12 ["ActionRouter"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R0 K13 ["Parent"]
       31 LOADK                            R6 K11 ["Actions"]
       32 NAMECALL                         R4 R4 K14 ["GetPluginComponent"]
       34 CALL                             R4 2 1
       35 GETIMPORT                        R5 K7 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Lib"]
       39 GETTABLEKS                       R6 R6 K11 ["Actions"]
       41 GETTABLEKS                       R6 R6 K15 ["ActionUtils"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K16 ["REIMPORT"]
       46 GETTABLEKS                       R6 R6 K17 ["ACTION_EVENTS"]
       48 GETIMPORT                        R7 K7 [require]
       50 GETTABLEKS                       R8 R0 K10 ["Lib"]
       52 GETTABLEKS                       R8 R8 K18 ["External"]
       54 GETTABLEKS                       R8 R8 K19 ["CrossPluginCommunication"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R7 K20 ["new"]
       59 GETTABLEKS                       R9 R2 K16 ["REIMPORT"]
       61 GETTABLEKS                       R9 R9 K21 ["CPC_ID"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K7 [require]
       66 GETTABLEKS                       R10 R0 K10 ["Lib"]
       68 GETTABLEKS                       R10 R10 K22 ["Reimport"]
       70 GETTABLEKS                       R10 R10 K23 ["ReimportConfigs"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K7 [require]
       75 GETTABLEKS                       R11 R0 K24 ["Flags"]
       77 GETTABLEKS                       R11 R11 K25 ["GetFFlagReimportSendReimportConfigOnUpload"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K7 [require]
       82 GETTABLEKS                       R12 R0 K24 ["Flags"]
       84 GETTABLEKS                       R12 R12 K26 ["GetFFlagReimportFileWatcher"]
       86 CALL                             R11 1 1
       87 NEWTABLE                         R12 2 0
       89 DUPCLOSURE                       R13 K27 [PROTO_1]
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R1
       96 SETTABLEKS                       R13 R12 K28 ["registerActions"]
       98 DUPCLOSURE                       R13 K29 [PROTO_2]
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R2
      101 SETGLOBAL                        R13 K30 ["_configureId"]
      103 DUPCLOSURE                       R13 K31 [PROTO_4]
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R1
      108 SETTABLEKS                       R13 R12 K32 ["registerCrossPluginListeners"]
      110 RETURN                           R12 1
