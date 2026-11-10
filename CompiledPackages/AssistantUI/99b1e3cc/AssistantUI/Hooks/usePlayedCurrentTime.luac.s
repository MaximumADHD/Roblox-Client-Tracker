PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["currentTime"]
        4 GETIMPORT                        R5 K3 [os.clock]
        6 CALL                             R5 0 1
        7 ADD                              R3 R4 R5
        8 GETUPVAL                         R4 2
        9 SUB                              R2 R3 R4
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["duration"]
       13 MOD                              R1 R2 R3
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADN                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["currentTime"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K1 ["isPlaying"]
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K2 ["duration"]
       19 LOADN                            R1 0
       20 JUMPIFNOTLE                      R0 R1 ; [+2]
       22 RETURN                           R0 0
       23 GETIMPORT                        R0 K5 [os.clock]
       25 CALL                             R0 0 1
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R1 R1 K6 ["RenderStepped"]
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R0
       33 NAMECALL                         R1 R1 K7 ["Connect"]
       35 CALL                             R1 2 1
       36 NEWCLOSURE                       R2 P1
       37 CAPTURE                          VAL R1
       38 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U1
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R0
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 0
       18 JUMPIFNOTEQKNIL                  R0 ; [+3]
       20 LOADN                            R3 0
       21 RETURN                           R3 1
       22 GETTABLEKS                       R4 R0 K2 ["isPlaying"]
       24 JUMPIF                           R4 ; [+3]
       25 GETTABLEKS                       R3 R0 K3 ["currentTime"]
       27 RETURN                           R3 1
       28 MOVE                             R3 R1
       29 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["AnimationGen"]
       19 GETTABLEKS                       R3 R3 K12 ["HostTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["Parent"]
       26 GETTABLEKS                       R4 R4 K14 ["React"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K15 [PROTO_3]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 RETURN                           R4 1
