PROTO_0:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["CreatePluginMenu"]
        3 CALL                             R3 2 1
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETTABLEKS                       R11 R8 K1 ["Text"]
       10 GETTABLEKS                       R12 R8 K1 ["Text"]
       12 NAMECALL                         R9 R3 K2 ["AddNewAction"]
       14 CALL                             R9 3 1
       15 GETTABLEKS                       R9 R9 K3 ["Triggered"]
       17 GETTABLEKS                       R11 R8 K4 ["OnClick"]
       19 NAMECALL                         R9 R9 K5 ["connect"]
       21 CALL                             R9 2 0
       22 FORGLOOP                         R4 2 ; [-15]
       24 NAMECALL                         R4 R3 K6 ["ShowAsync"]
       26 CALL                             R4 1 0
       27 NAMECALL                         R4 R3 K7 ["Destroy"]
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
