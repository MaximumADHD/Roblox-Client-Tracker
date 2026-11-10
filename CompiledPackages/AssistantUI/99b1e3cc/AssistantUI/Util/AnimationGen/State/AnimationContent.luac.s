PROTO_0:
        0 DUPTABLE                         R1 K2 [{"keyframeSequence", "isUpscale"}]
        1 GETTABLEKS                       R3 R0 K0 ["keyframeSequence"]
        3 JUMPIFEQKNIL                     R3 ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["keyframeSequence"]
        7 NAMECALL                         R2 R2 K3 ["Clone"]
        9 CALL                             R2 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K0 ["keyframeSequence"]
       14 GETTABLEKS                       R2 R0 K1 ["isUpscale"]
       16 SETTABLEKS                       R2 R1 K1 ["isUpscale"]
       18 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["keyframeSequence"]
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 GETTABLEKS                       R1 R0 K0 ["keyframeSequence"]
        6 NAMECALL                         R1 R1 K1 ["Destroy"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["clone"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["destroy"]
        9 RETURN                           R0 1
