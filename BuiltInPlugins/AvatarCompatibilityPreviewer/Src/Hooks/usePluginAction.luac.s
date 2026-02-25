PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Enabled"]
        3 NOT                              R1 R2
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["Plugin action already registered to something"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 LOADB                            R1 1
       12 SETTABLEKS                       R1 R0 K0 ["Enabled"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K4 ["Triggered"]
       17 GETUPVAL                         R2 1
       18 NAMECALL                         R0 R0 K5 ["Connect"]
       20 CALL                             R0 2 1
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["use"]
        3 CALL                             R2 1 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K1 ["get"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["useEffect"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R5 0 2
       16 MOVE                             R6 R2
       17 MOVE                             R7 R1
       18 SETLIST                          R5 R6 2 [1]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["PluginActions"]
       25 DUPCLOSURE                       R5 K11 [PROTO_2]
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R1
       28 RETURN                           R5 1
