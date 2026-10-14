PROTO_0:
        0 LOADN                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADN                            R0 0
        3 SETUPVAL                         R0 1
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 2
        6 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R2 ; [+4]
        1 GETUPVAL                         R4 0
        2 JUMPIFNOTLT                      R2 R4 ; [+2]
        4 RETURN                           R0 0
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETUPVAL                         R4 0
        7 JUMPIFNOTLT                      R4 R2 ; [+15]
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 CALL                             R4 2 0
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K0 ["captureCurrentSettings"]
       16 MOVE                             R5 R0
       17 CALL                             R4 1 1
       18 SETUPVAL                         R4 2
       19 MOVE                             R4 R2
       20 JUMPIF                           R4 ; [+1]
       21 GETUPVAL                         R4 0
       22 SETUPVAL                         R4 0
       23 JUMPIFNOT                        R3 ; [+17]
       24 JUMPIFNOT                        R2 ; [+3]
       25 GETUPVAL                         R4 4
       26 JUMPIFNOTLT                      R4 R2 ; [+14]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K1 ["setPublishedSnapshot"]
       31 GETUPVAL                         R6 2
       32 FASTCALL1                        ASSERT R6 ; [+2]
       33 GETIMPORT                        R5 K3 [assert]
       35 CALL                             R5 1 -1
       36 CALL                             R4 -1 0
       37 MOVE                             R4 R2
       38 JUMPIF                           R4 ; [+1]
       39 GETUPVAL                         R4 4
       40 SETUPVAL                         R4 4
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Util"]
       24 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsSyncTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Components"]
       33 GETTABLEKS                       R4 R4 K8 ["Contexts"]
       35 GETTABLEKS                       R4 R4 K12 ["PublishProvider"]
       37 GETTABLEKS                       R4 R4 K13 ["PublishedSettingsTypes"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K6 ["Src"]
       44 GETTABLEKS                       R5 R5 K7 ["Components"]
       46 GETTABLEKS                       R5 R5 K8 ["Contexts"]
       48 GETTABLEKS                       R5 R5 K12 ["PublishProvider"]
       50 GETTABLEKS                       R5 R5 K14 ["publishedSettingsManager"]
       52 CALL                             R4 1 1
       53 GETIMPORT                        R5 K5 [require]
       55 GETTABLEKS                       R6 R0 K6 ["Src"]
       57 GETTABLEKS                       R6 R6 K10 ["Util"]
       59 GETTABLEKS                       R6 R6 K15 ["BridgingFiles"]
       61 GETTABLEKS                       R6 R6 K16 ["StandaloneFiles"]
       63 GETTABLEKS                       R6 R6 K17 ["syncPropertiesFromAssetDm"]
       65 CALL                             R5 1 1
       66 LOADN                            R6 0
       67 LOADN                            R7 0
       68 LOADNIL                          R8
       69 NEWTABLE                         R9 2 0
       71 NEWCLOSURE                       R10 P0
       72 CAPTURE                          REF R6
       73 CAPTURE                          REF R7
       74 CAPTURE                          REF R8
       75 SETTABLEKS                       R10 R9 K18 ["reset"]
       77 NEWCLOSURE                       R10 P1
       78 CAPTURE                          REF R6
       79 CAPTURE                          VAL R5
       80 CAPTURE                          REF R8
       81 CAPTURE                          VAL R4
       82 CAPTURE                          REF R7
       83 SETTABLEKS                       R10 R9 K19 ["apply"]
       85 CLOSEUPVALS                      R6
       86 RETURN                           R9 1
