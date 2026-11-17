PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["meshTextureApisAllowed"]
        2 JUMPIFEQKNIL                     R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+1]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R3 R0 K1 ["idVerified"]
       12 NOT                              R2 R3
       13 JUMPIF                           R2 ; [+5]
       14 GETTABLEKS                       R3 R0 K2 ["isOwner"]
       16 NOT                              R2 R3
       17 JUMPIF                           R2 ; [+1]
       18 MOVE                             R2 R1
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagGameSettingsEditableApiRemoveIdVerification"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
