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
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K4 ["Types"]
       51 GETTABLEKS                       R4 R4 K8 ["Standalone"]
       53 JUMPIFNOTEQ                      R0 R4 ; [+15]
       55 GETUPVAL                         R4 1
       56 GETTABLEKS                       R4 R4 K9 ["get"]
       58 CALL                             R4 0 1
       59 GETTABLEKS                       R4 R4 K10 ["hasInternalPermission"]
       61 CALL                             R4 0 1
       62 JUMPIF                           R4 ; [+5]
       63 GETIMPORT                        R4 K2 [error]
       65 LOADK                            R5 K11 ["Standalone datamodel is only available for internal users"]
       66 LOADN                            R6 0
       67 CALL                             R4 2 0
       68 RETURN                           R0 1
       69 GETUPVAL                         R4 1
       70 GETTABLEKS                       R4 R4 K9 ["get"]
       72 CALL                             R4 0 1
       73 GETTABLEKS                       R4 R4 K12 ["getStudioPlayState"]
       75 CALL                             R4 0 1
       76 JUMPIFNOT                        R4 ; [+24]
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K4 ["Types"]
       80 GETTABLEKS                       R5 R5 K13 ["Client"]
       82 JUMPIFEQ                         R0 R5 ; [+34]
       84 GETUPVAL                         R5 0
       85 GETTABLEKS                       R5 R5 K4 ["Types"]
       87 GETTABLEKS                       R5 R5 K14 ["Server"]
       89 JUMPIFEQ                         R0 R5 ; [+27]
       91 GETIMPORT                        R5 K2 [error]
       93 LOADK                            R6 K15 ["%* datamodel is not available in Play mode"]
       94 MOVE                             R8 R0
       95 NAMECALL                         R6 R6 K6 ["format"]
       97 CALL                             R6 2 1
       98 LOADN                            R7 0
       99 CALL                             R5 2 0
      100 RETURN                           R0 1
      101 GETUPVAL                         R5 0
      102 GETTABLEKS                       R5 R5 K4 ["Types"]
      104 GETTABLEKS                       R5 R5 K16 ["Edit"]
      106 JUMPIFEQ                         R0 R5 ; [+10]
      108 GETIMPORT                        R5 K2 [error]
      110 LOADK                            R6 K17 ["%* datamodel is not available in Edit mode"]
      111 MOVE                             R8 R0
      112 NAMECALL                         R6 R6 K6 ["format"]
      114 CALL                             R6 2 1
      115 LOADN                            R7 0
      116 CALL                             R5 2 0
      117 RETURN                           R0 1

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
       23 GETTABLEKS                       R4 R0 K10 ["Tools"]
       25 GETTABLEKS                       R4 R4 K11 ["ToolTypes"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K12 [PROTO_0]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 DUPTABLE                         R5 K14 [{"checkAndGetTargetDataModel"}]
       32 SETTABLEKS                       R4 R5 K13 ["checkAndGetTargetDataModel"]
       34 RETURN                           R5 1
