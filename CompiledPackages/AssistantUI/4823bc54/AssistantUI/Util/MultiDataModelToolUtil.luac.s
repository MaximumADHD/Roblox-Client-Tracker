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
       16 JUMPIFNOTEQKNIL                  R3 ; [+11]
       18 GETIMPORT                        R3 K2 [error]
       20 LOADK                            R5 K5 ["Invalid datamodel_type: %*"]
       21 MOVE                             R7 R0
       22 NAMECALL                         R5 R5 K6 ["format"]
       24 CALL                             R5 2 1
       25 MOVE                             R4 R5
       26 LOADN                            R5 0
       27 CALL                             R3 2 0
       28 LOADB                            R3 0
       29 MOVE                             R4 R1
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 JUMPIFNOTEQ                      R0 R8 ; [+3]
       35 LOADB                            R3 1
       36 JUMP                             ; [+2]
       37 FORGLOOP                         R4 2 ; [-5]
       39 JUMPIF                           R3 ; [+10]
       40 GETIMPORT                        R4 K2 [error]
       42 LOADK                            R6 K7 ["This tool is not available in the %* datamodel."]
       43 MOVE                             R8 R0
       44 NAMECALL                         R6 R6 K6 ["format"]
       46 CALL                             R6 2 1
       47 MOVE                             R5 R6
       48 LOADN                            R6 0
       49 CALL                             R4 2 0
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K8 ["get"]
       53 CALL                             R4 0 1
       54 GETTABLEKS                       R4 R4 K9 ["getStudioPlayState"]
       56 CALL                             R4 0 1
       57 JUMPIFNOT                        R4 ; [+25]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K4 ["Types"]
       61 GETTABLEKS                       R5 R5 K10 ["Client"]
       63 JUMPIFEQ                         R0 R5 ; [+36]
       65 GETUPVAL                         R5 0
       66 GETTABLEKS                       R5 R5 K4 ["Types"]
       68 GETTABLEKS                       R5 R5 K11 ["Server"]
       70 JUMPIFEQ                         R0 R5 ; [+29]
       72 GETIMPORT                        R5 K2 [error]
       74 LOADK                            R7 K12 ["%* datamodel is not available in Play mode"]
       75 MOVE                             R9 R0
       76 NAMECALL                         R7 R7 K6 ["format"]
       78 CALL                             R7 2 1
       79 MOVE                             R6 R7
       80 LOADN                            R7 0
       81 CALL                             R5 2 0
       82 RETURN                           R0 1
       83 GETUPVAL                         R5 0
       84 GETTABLEKS                       R5 R5 K4 ["Types"]
       86 GETTABLEKS                       R5 R5 K13 ["Edit"]
       88 JUMPIFEQ                         R0 R5 ; [+11]
       90 GETIMPORT                        R5 K2 [error]
       92 LOADK                            R7 K14 ["%* datamodel is not available in Edit mode"]
       93 MOVE                             R9 R0
       94 NAMECALL                         R7 R7 K6 ["format"]
       96 CALL                             R7 2 1
       97 MOVE                             R6 R7
       98 LOADN                            R7 0
       99 CALL                             R5 2 0
      100 RETURN                           R0 1

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
