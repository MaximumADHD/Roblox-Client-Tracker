PROTO_0:
        0 LOADK                            R4 K0 ["Actions"]
        1 NAMECALL                         R2 R0 K1 ["GetPluginComponent"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 NEWTABLE                         R6 0 1
        9 GETUPVAL                         R7 0
       10 SETLIST                          R6 R7 1 [1]
       12 NAMECALL                         R4 R2 K2 ["GetAsync"]
       14 CALL                             R4 2 1
       15 GETTABLEN                        R3 R4 1
       16 GETTABLEKS                       R4 R3 K3 ["Checked"]
       18 JUMPIFEQ                         R4 R1 ; [+5]
       20 GETUPVAL                         R6 0
       21 NAMECALL                         R4 R2 K4 ["ActivateAsync"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["ActionUris"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ADD_ANNOTATION_ACTION_URI"]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
