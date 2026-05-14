PROTO_0:
        0 JUMPIFNOT                        R2 ; [+9]
        1 GETTABLEKS                       R3 R2 K0 ["assistantMode"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["AssistantMode"]
        6 GETTABLEKS                       R4 R4 K2 ["Test"]
        8 JUMPIFEQ                         R3 R4 ; [+3]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 LENGTH                           R3 R1
       14 JUMPIFNOTEQKN                    R3 K3 [0] ; [+3]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 JUMPIF                           R0 ; [+5]
       19 GETIMPORT                        R3 K5 [error]
       21 LOADK                            R4 K6 ["datamodel_type is required"]
       22 LOADN                            R5 0
       23 CALL                             R3 2 0
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K7 ["Types"]
       27 GETTABLE                         R3 R4 R0
       28 JUMPIFNOTEQKNIL                  R3 ; [+11]
       30 GETIMPORT                        R3 K5 [error]
       32 LOADK                            R5 K8 ["Invalid datamodel_type: %*"]
       33 MOVE                             R7 R0
       34 NAMECALL                         R5 R5 K9 ["format"]
       36 CALL                             R5 2 1
       37 MOVE                             R4 R5
       38 LOADN                            R5 0
       39 CALL                             R3 2 0
       40 LOADB                            R3 0
       41 MOVE                             R4 R1
       42 LOADNIL                          R5
       43 LOADNIL                          R6
       44 FORGPREP                         R4
       45 JUMPIFNOTEQ                      R0 R8 ; [+3]
       47 LOADB                            R3 1
       48 JUMP                             ; [+2]
       49 FORGLOOP                         R4 2 ; [-5]
       51 JUMPIF                           R3 ; [+10]
       52 GETIMPORT                        R4 K5 [error]
       54 LOADK                            R6 K10 ["This tool is not available in the %* datamodel."]
       55 MOVE                             R8 R0
       56 NAMECALL                         R6 R6 K9 ["format"]
       58 CALL                             R6 2 1
       59 MOVE                             R5 R6
       60 LOADN                            R6 0
       61 CALL                             R4 2 0
       62 GETUPVAL                         R4 2
       63 GETTABLEKS                       R4 R4 K11 ["get"]
       65 CALL                             R4 0 1
       66 GETTABLEKS                       R4 R4 K12 ["getStudioPlayState"]
       68 CALL                             R4 0 1
       69 JUMPIFNOT                        R4 ; [+25]
       70 GETUPVAL                         R5 1
       71 GETTABLEKS                       R5 R5 K7 ["Types"]
       73 GETTABLEKS                       R5 R5 K13 ["Client"]
       75 JUMPIFEQ                         R0 R5 ; [+36]
       77 GETUPVAL                         R5 1
       78 GETTABLEKS                       R5 R5 K7 ["Types"]
       80 GETTABLEKS                       R5 R5 K14 ["Server"]
       82 JUMPIFEQ                         R0 R5 ; [+29]
       84 GETIMPORT                        R5 K5 [error]
       86 LOADK                            R7 K15 ["%* datamodel is not available in Play mode"]
       87 MOVE                             R9 R0
       88 NAMECALL                         R7 R7 K9 ["format"]
       90 CALL                             R7 2 1
       91 MOVE                             R6 R7
       92 LOADN                            R7 0
       93 CALL                             R5 2 0
       94 RETURN                           R0 1
       95 GETUPVAL                         R5 1
       96 GETTABLEKS                       R5 R5 K7 ["Types"]
       98 GETTABLEKS                       R5 R5 K16 ["Edit"]
      100 JUMPIFEQ                         R0 R5 ; [+11]
      102 GETIMPORT                        R5 K5 [error]
      104 LOADK                            R7 K17 ["%* datamodel is not available in Edit mode"]
      105 MOVE                             R9 R0
      106 NAMECALL                         R7 R7 K9 ["format"]
      108 CALL                             R7 2 1
      109 MOVE                             R6 R7
      110 LOADN                            R7 0
      111 CALL                             R5 2 0
      112 RETURN                           R0 1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Types"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K13 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 DUPTABLE                         R6 K15 [{"checkAndGetTargetDataModel"}]
       38 SETTABLEKS                       R5 R6 K14 ["checkAndGetTargetDataModel"]
       40 RETURN                           R6 1
