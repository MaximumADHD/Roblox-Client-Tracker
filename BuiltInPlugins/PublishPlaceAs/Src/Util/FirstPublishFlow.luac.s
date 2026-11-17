PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+4]
        2 JUMPIFEQKN                       R1 K0 [0] ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["reportFirstPublishFlow"]
        3 LOADK                            R3 K1 ["FirstPublishDialogOpened"]
        4 DUPTABLE                         R4 K6 [{"funnelId", "showGameSelect", "originPlaceId", "originUniverseId"}]
        5 SETTABLEKS                       R0 R4 K2 ["funnelId"]
        7 SETTABLEKS                       R1 R4 K3 ["showGameSelect"]
        9 GETIMPORT                        R5 K8 [game]
       11 GETTABLEKS                       R5 R5 K9 ["PlaceId"]
       13 SETTABLEKS                       R5 R4 K4 ["originPlaceId"]
       15 GETIMPORT                        R5 K8 [game]
       17 GETTABLEKS                       R5 R5 K10 ["GameId"]
       19 SETTABLEKS                       R5 R4 K5 ["originUniverseId"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["reportFirstPublishFlow"]
        3 LOADK                            R5 K1 ["FirstPublishFinished"]
        4 DUPTABLE                         R6 K7 [{"funnelId", "success", "outcome", "destinationPlaceId", "destinationUniverseId"}]
        5 SETTABLEKS                       R0 R6 K2 ["funnelId"]
        7 SETTABLEKS                       R1 R6 K3 ["success"]
        9 MOVE                             R7 R3
       10 JUMPIF                           R7 ; [+4]
       11 JUMPIFNOT                        R1 ; [+2]
       12 LOADK                            R7 K3 ["success"]
       13 JUMP                             ; [+1]
       14 LOADK                            R7 K8 ["failure"]
       15 SETTABLEKS                       R7 R6 K4 ["outcome"]
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETIMPORT                        R7 K10 [game]
       20 GETTABLEKS                       R7 R7 K11 ["PlaceId"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R7
       24 SETTABLEKS                       R7 R6 K5 ["destinationPlaceId"]
       26 SETTABLEKS                       R2 R6 K6 ["destinationUniverseId"]
       28 CALL                             R4 2 0
       29 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["publishStatusPanel"]
        2 DUPTABLE                         R3 K3 [{"universeId", "onClose"}]
        3 GETTABLEKS                       R4 R0 K1 ["universeId"]
        5 SETTABLEKS                       R4 R3 K1 ["universeId"]
        7 GETTABLEKS                       R4 R0 K2 ["onClose"]
        9 SETTABLEKS                       R4 R3 K2 ["onClose"]
       11 NAMECALL                         R1 R1 K4 ["open"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K5 ["reportFirstPublishFlow"]
       17 LOADK                            R3 K6 ["PublishStatusOpenResult"]
       18 DUPTABLE                         R4 K11 [{"funnelId", "source", "opened", "requestedUniverseId"}]
       19 GETTABLEKS                       R5 R0 K7 ["funnelId"]
       21 SETTABLEKS                       R5 R4 K7 ["funnelId"]
       23 GETTABLEKS                       R5 R0 K8 ["source"]
       25 SETTABLEKS                       R5 R4 K8 ["source"]
       27 SETTABLEKS                       R1 R4 K9 ["opened"]
       29 GETTABLEKS                       R5 R0 K1 ["universeId"]
       31 JUMPIF                           R5 ; [+4]
       32 GETIMPORT                        R5 K13 [game]
       34 GETTABLEKS                       R5 R5 K14 ["GameId"]
       36 SETTABLEKS                       R5 R4 K10 ["requestedUniverseId"]
       38 CALL                             R2 2 0
       39 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["studioPublishService"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["closeMode"]
       11 NAMECALL                         R0 R0 K2 ["CloseAfterPublish"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K3 ["teamCreateEnabled"]
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K0 ["studioPublishService"]
       21 NAMECALL                         R0 R0 K4 ["PublishThenTurnOnTeamCreate"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          VAL R0
        4 GETTABLEKS                       R3 R0 K0 ["closeSaveDialog"]
        6 CALL                             R3 0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["openPublishStatus"]
       10 DUPTABLE                         R4 K8 [{["publishStatusPanel"], ["universeId"], ["onClose"], ["funnelId"], ["source"] = "autoAfterFirstPublish"}]
       11 GETTABLEKS                       R5 R0 K2 ["publishStatusPanel"]
       13 SETTABLEKS                       R5 R4 K2 ["publishStatusPanel"]
       15 GETTABLEKS                       R5 R0 K3 ["universeId"]
       17 SETTABLEKS                       R5 R4 K3 ["universeId"]
       19 SETTABLEKS                       R2 R4 K4 ["onClose"]
       21 GETTABLEKS                       R5 R0 K5 ["funnelId"]
       23 SETTABLEKS                       R5 R4 K5 ["funnelId"]
       25 CALL                             R3 1 1
       26 JUMPIF                           R3 ; [+18]
       27 JUMPIFNOT                        R1 ; [+1]
       28 JUMP                             ; [+16]
       29 LOADB                            R1 1
       30 GETTABLEKS                       R4 R0 K9 ["studioPublishService"]
       32 GETTABLEKS                       R6 R0 K10 ["closeMode"]
       34 NAMECALL                         R4 R4 K11 ["CloseAfterPublish"]
       36 CALL                             R4 2 0
       37 GETTABLEKS                       R4 R0 K12 ["teamCreateEnabled"]
       39 JUMPIFNOT                        R4 ; [+5]
       40 GETTABLEKS                       R4 R0 K9 ["studioPublishService"]
       42 NAMECALL                         R4 R4 K13 ["PublishThenTurnOnTeamCreate"]
       44 CALL                             R4 1 0
       45 CLOSEUPVALS                      R1
       46 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Util"]
       21 GETTABLEKS                       R3 R3 K11 ["Analytics"]
       23 CALL                             R2 1 1
       24 NEWTABLE                         R3 8 0
       26 DUPCLOSURE                       R4 K12 [PROTO_0]
       27 SETTABLEKS                       R4 R3 K13 ["isFirstPublish"]
       29 DUPCLOSURE                       R4 K14 [PROTO_1]
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R4 R3 K15 ["createFunnelId"]
       33 DUPCLOSURE                       R4 K16 [PROTO_2]
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R4 R3 K17 ["reportDialogOpened"]
       37 DUPCLOSURE                       R4 K18 [PROTO_3]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R4 R3 K19 ["reportFinished"]
       41 DUPCLOSURE                       R4 K20 [PROTO_4]
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R4 R3 K21 ["openPublishStatus"]
       45 DUPCLOSURE                       R4 K22 [PROTO_6]
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R4 R3 K23 ["showPublishStatus"]
       49 RETURN                           R3 1
