PROTO_0:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R4 0 1
        3 MOVE                             R5 R0
        4 SETLIST                          R4 R5 1 [1]
        6 NAMECALL                         R2 R2 K0 ["GetAsync"]
        8 CALL                             R2 2 1
        9 LENGTH                           R3 R2
       10 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEN                        R3 R2 1
       14 GETTABLEKS                       R4 R3 K2 ["Shortcuts"]
       16 JUMPIFEQKNIL                     R4 ; [+6]
       18 GETTABLEKS                       R5 R3 K2 ["Shortcuts"]
       20 LENGTH                           R4 R5
       21 JUMPIFNOTEQKN                    R4 K1 [0] ; [+9]
       23 SETTABLEKS                       R1 R3 K2 ["Shortcuts"]
       25 GETUPVAL                         R4 0
       26 MOVE                             R6 R3
       27 LOADB                            R7 1
       28 NAMECALL                         R4 R4 K3 ["CreateAsync"]
       30 CALL                             R4 3 0
       31 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 NEWTABLE                         R0 4 0
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
       22 GETUPVAL                         R2 4
       23 CALL                             R2 0 1
       24 JUMPIF                           R2 ; [+8]
       25 GETUPVAL                         R2 5
       26 MOVE                             R3 R1
       27 NEWTABLE                         R4 0 1
       29 LOADK                            R5 K5 ["Shift+Alt+R"]
       30 SETLIST                          R4 R5 1 [1]
       32 CALL                             R2 2 0
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K0 ["actionUri"]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K6 ["REIMPORT_RELATIVE_TO_THIS"]
       39 CALL                             R2 1 1
       40 GETUPVAL                         R3 2
       41 MOVE                             R5 R2
       42 NAMECALL                         R3 R3 K2 ["BindToActivatedAsync"]
       44 CALL                             R3 2 1
       45 GETUPVAL                         R5 3
       46 GETTABLEKS                       R5 R5 K7 ["reimportRelative"]
       48 NAMECALL                         R3 R3 K4 ["Connect"]
       50 CALL                             R3 2 1
       51 SETTABLEKS                       R3 R0 K8 ["reimport_rel"]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K0 ["actionUri"]
       56 GETUPVAL                         R4 1
       57 GETTABLEKS                       R4 R4 K9 ["CONFIGURE"]
       59 CALL                             R3 1 1
       60 GETUPVAL                         R4 2
       61 MOVE                             R6 R3
       62 NAMECALL                         R4 R4 K2 ["BindToActivatedAsync"]
       64 CALL                             R4 2 1
       65 GETUPVAL                         R6 3
       66 GETTABLEKS                       R6 R6 K10 ["configure"]
       68 NAMECALL                         R4 R4 K4 ["Connect"]
       70 CALL                             R4 2 1
       71 SETTABLEKS                       R4 R0 K10 ["configure"]
       73 GETUPVAL                         R4 6
       74 CALL                             R4 0 1
       75 JUMPIFNOT                        R4 ; [+20]
       76 GETUPVAL                         R4 0
       77 GETTABLEKS                       R4 R4 K0 ["actionUri"]
       79 GETUPVAL                         R5 1
       80 GETTABLEKS                       R5 R5 K11 ["CLEAR_REIMPORT_CONFIG"]
       82 CALL                             R4 1 1
       83 GETUPVAL                         R5 2
       84 MOVE                             R7 R4
       85 NAMECALL                         R5 R5 K2 ["BindToActivatedAsync"]
       87 CALL                             R5 2 1
       88 GETUPVAL                         R7 3
       89 GETTABLEKS                       R7 R7 K12 ["clearConfig"]
       91 NAMECALL                         R5 R5 K4 ["Connect"]
       93 CALL                             R5 2 1
       94 SETTABLEKS                       R5 R0 K13 ["clear_config"]
       96 GETUPVAL                         R4 7
       97 GETTABLEKS                       R4 R4 K14 ["Unloading"]
       99 NEWCLOSURE                       R6 P0
      100 CAPTURE                          VAL R0
      101 NAMECALL                         R4 R4 K4 ["Connect"]
      103 CALL                             R4 2 0
      104 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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
       84 GETTABLEKS                       R12 R12 K26 ["GetFFlagReimportDuplicateAction"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K7 [require]
       89 GETTABLEKS                       R13 R0 K24 ["Flags"]
       91 GETTABLEKS                       R13 R13 K27 ["GetFFlagReimportClearAction"]
       93 CALL                             R12 1 1
       94 NEWTABLE                         R13 2 0
       96 DUPCLOSURE                       R14 K28 [PROTO_0]
       97 CAPTURE                          VAL R4
       98 DUPCLOSURE                       R15 K29 [PROTO_2]
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R15 R13 K30 ["registerActions"]
      109 DUPCLOSURE                       R15 K31 [PROTO_3]
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R2
      112 SETGLOBAL                        R15 K32 ["_configureId"]
      114 DUPCLOSURE                       R15 K33 [PROTO_5]
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R15 R13 K34 ["registerCrossPluginListeners"]
      121 RETURN                           R13 1
