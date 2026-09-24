PROTO_0:
        0 JUMPIFNOT                        R1 ; [+3]
        1 LENGTH                           R3 R1
        2 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 JUMPIF                           R0 ; [+5]
        7 GETIMPORT                        R3 K2 [error]
        9 LOADK                            R4 K3 ["datamodel_type is required"]
       10 LOADN                            R5 0
       11 CALL                             R3 2 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["Types"]
       15 GETTABLE                         R3 R4 R0
       16 JUMPIFNOTEQKNIL                  R3 ; [+10]
       18 GETIMPORT                        R3 K2 [error]
       20 LOADK                            R4 K5 ["Invalid datamodel_type: %*"]
       21 MOVE                             R6 R0
       22 NAMECALL                         R4 R4 K6 ["format"]
       24 CALL                             R4 2 1
       25 LOADN                            R5 0
       26 CALL                             R3 2 0
       27 LOADB                            R3 0
       28 MOVE                             R4 R1
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 FORGPREP                         R4
       32 JUMPIFNOTEQ                      R0 R8 ; [+3]
       34 LOADB                            R3 1
       35 JUMP                             ; [+2]
       36 FORGLOOP                         R4 2 ; [-5]
       38 JUMPIF                           R3 ; [+9]
       39 GETIMPORT                        R4 K2 [error]
       41 LOADK                            R5 K7 ["This tool is not available in the %* datamodel."]
       42 MOVE                             R7 R0
       43 NAMECALL                         R5 R5 K6 ["format"]
       45 CALL                             R5 2 1
       46 LOADN                            R6 0
       47 CALL                             R4 2 0
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K8 ["FFlagAssistantStandaloneDataModel"]
       51 JUMPIFNOT                        R4 ; [+21]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K4 ["Types"]
       55 GETTABLEKS                       R4 R4 K9 ["Standalone"]
       57 JUMPIFNOTEQ                      R0 R4 ; [+15]
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R4 R4 K10 ["get"]
       62 CALL                             R4 0 1
       63 GETTABLEKS                       R4 R4 K11 ["hasInternalPermission"]
       65 CALL                             R4 0 1
       66 JUMPIF                           R4 ; [+5]
       67 GETIMPORT                        R4 K2 [error]
       69 LOADK                            R5 K12 ["Standalone datamodel is only available for internal users"]
       70 LOADN                            R6 0
       71 CALL                             R4 2 0
       72 RETURN                           R0 1
       73 GETUPVAL                         R4 2
       74 GETTABLEKS                       R4 R4 K10 ["get"]
       76 CALL                             R4 0 1
       77 GETTABLEKS                       R4 R4 K13 ["getStudioPlayState"]
       79 CALL                             R4 0 1
       80 JUMPIFNOT                        R4 ; [+24]
       81 GETUPVAL                         R5 0
       82 GETTABLEKS                       R5 R5 K4 ["Types"]
       84 GETTABLEKS                       R5 R5 K14 ["Client"]
       86 JUMPIFEQ                         R0 R5 ; [+34]
       88 GETUPVAL                         R5 0
       89 GETTABLEKS                       R5 R5 K4 ["Types"]
       91 GETTABLEKS                       R5 R5 K15 ["Server"]
       93 JUMPIFEQ                         R0 R5 ; [+27]
       95 GETIMPORT                        R5 K2 [error]
       97 LOADK                            R6 K16 ["%* datamodel is not available in Play mode"]
       98 MOVE                             R8 R0
       99 NAMECALL                         R6 R6 K6 ["format"]
      101 CALL                             R6 2 1
      102 LOADN                            R7 0
      103 CALL                             R5 2 0
      104 RETURN                           R0 1
      105 GETUPVAL                         R5 0
      106 GETTABLEKS                       R5 R5 K4 ["Types"]
      108 GETTABLEKS                       R5 R5 K17 ["Edit"]
      110 JUMPIFEQ                         R0 R5 ; [+10]
      112 GETIMPORT                        R5 K2 [error]
      114 LOADK                            R6 K18 ["%* datamodel is not available in Edit mode"]
      115 MOVE                             R8 R0
      116 NAMECALL                         R6 R6 K6 ["format"]
      118 CALL                             R6 2 1
      119 LOADN                            R7 0
      120 CALL                             R5 2 0
      121 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["DataModelType"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Tools"]
       30 GETTABLEKS                       R5 R5 K12 ["ToolTypes"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K13 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 DUPTABLE                         R6 K15 [{"checkAndGetTargetDataModel"}]
       38 SETTABLEKS                       R5 R6 K14 ["checkAndGetTargetDataModel"]
       40 RETURN                           R6 1
